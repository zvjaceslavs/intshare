#!/usr/bin/python3   
# For any bag of question , ask me at iulian-boss@mail.ru or iulix991@gmail.com
from tkinter import *
from datetime import datetime
import requests
import json
import calendar
from win32api import GetSystemMetrics
from tkinter import ttk
from tkinter import messagebox
import time
from time import gmtime, strftime
from pathlib import Path
import os
import xlsxwriter
import webbrowser
import threading
import sys, getopt

try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk



class MyDatePicker(tk.Toplevel):
    """
    Description:
        A tkinter GUI date picker.
    """

    def __init__(self, bt, entry, x=0, y=0, parent=None):
        """
        Description:
            When instantiating in parent module/widget/Gui, pass in 'self' as argument.
            Ex:
                a = MyDatePicker(self)

        :param parent: parent instance.
        """

        super().__init__()
        self.bt = bt                                                             #
        self.entry = entry                                                       #
        self.entry.delete(0, len(self.entry.get()))                              #
        #self.entry.config(state='disabled')
        self.parent = parent
        self.title("Date Picker")
        self.resizable(0, 0)
        if x>0 and y>0:
            self.geometry("+{}+{}".format(x, y))
        self.init_frames()
        self.init_needed_vars()
        self.init_month_year_labels()
        self.init_buttons()
        self.space_between_widgets()
        self.fill_days()
        self.make_calendar()

    def destroy_f(self):
        self.destroy()

    def init_frames(self):
        self.frame1 = tk.Frame(self)
        self.frame1.pack()

        self.frame_days = tk.Frame(self)
        self.frame_days.pack()

    def init_needed_vars(self):
        self.month_names = tuple(calendar.month_name)
        self.day_names = tuple(calendar.day_abbr)
        self.year = time.strftime("%Y")
        self.month = time.strftime("%B")

    def init_month_year_labels(self):
        self.year_str_var = tk.StringVar()
        self.month_str_var = tk.StringVar()

        self.year_str_var.set(self.year)
        self.year_lbl = tk.Label(self.frame1, textvariable=self.year_str_var, width=3)
        self.year_lbl.grid(row=0, column=5)

        self.month_str_var.set(self.month)
        self.month_lbl = tk.Label(self.frame1, textvariable=self.month_str_var, width=8)
        self.month_lbl.grid(row=0, column=1)

    def init_buttons(self):
        self.left_yr = ttk.Button(self.frame1, text="←", width=5, command=self.prev_year)
        self.left_yr.grid(row=0, column=4)

        self.right_yr = ttk.Button(self.frame1, text="→", width=5, command=self.next_year)
        self.right_yr.grid(row=0, column=6)

        self.left_mon = ttk.Button(self.frame1, text="←", width=5, command=self.prev_month)
        self.left_mon.grid(row=0, column=0)

        self.right_mon = ttk.Button(self.frame1, text="→", width=5, command=self.next_month)
        self.right_mon.grid(row=0, column=2)

    def space_between_widgets(self):
        self.frame1.grid_columnconfigure(3, minsize=40)

    def prev_year(self):
        self.prev_yr = int(self.year_str_var.get()) - 1
        self.year_str_var.set(self.prev_yr)

        self.make_calendar()

    def next_year(self):
        self.next_yr = int(self.year_str_var.get()) + 1
        self.year_str_var.set(self.next_yr)

        self.make_calendar()

    def prev_month(self):
        index_current_month = int(self.month_names.index(self.month_str_var.get()))
        index_prev_month = index_current_month - 1

        #  index 0 is empty string, use index 12 instead, which is index of December.
        if index_prev_month == 0:
            self.month_str_var.set(self.month_names[12])
        else:
            self.month_str_var.set(self.month_names[index_current_month - 1])

        self.make_calendar()

    def next_month(self):
        index_current_month = int(self.month_names.index(self.month_str_var.get()))

        #  index 13 does not exist, use index 1 instead, which is January.
        try:
            self.month_str_var.set(self.month_names[index_current_month + 1])
        except IndexError:
            self.month_str_var.set(self.month_names[1])

        self.make_calendar()

    def fill_days(self):
        col = 0
        #  Creates days label
        for day in self.day_names:
            self.lbl_day = tk.Label(self.frame_days, text=day)
            self.lbl_day.grid(row=0, column=col)
            col += 1

    def make_calendar(self):
        #  Delete date buttons if already present.
        #  Each button must have its own instance attribute for this to work.
        try:
            for dates in self.m_cal:
                for date in dates:
                    if date == 0:
                        continue

                    self.delete_buttons(date)

        except AttributeError:
            pass

        year = int(self.year_str_var.get())
        month = self.month_names.index(self.month_str_var.get())
        self.m_cal = calendar.monthcalendar(year, month)

        #  build date buttons.
        for dates in self.m_cal:
            row = self.m_cal.index(dates) + 1
            for date in dates:
                col = dates.index(date)

                if date == 0:
                    continue

                self.make_button(str(date), str(row), str(col))

    def make_button(self, date, row, column):
        exec(
            "self.btn_" + date + "= ttk.Button(self.frame_days, text=" + date + ", width=5)\n"
            "self.btn_" + date + ".grid(row=" + row + " , column=" + column + ")\n"
            "self.btn_" + date + ".bind(\"<Button-1>\", self.get_date)"
        )

    def delete_buttons(self, date):
        exec(
            "self.btn_" + str(date) + ".destroy()"
        )

    def get_date(self, clicked=None):
        global DATA_OPERAZIONE
        self.bt.config(state='normal')
        clicked_button = clicked.widget
        year = self.year_str_var.get()
        month = self.month_names.index(self.month_str_var.get())
        date = clicked_button['text']

        #  Change string format for different date formats.
        self.full_date = '%s-%02d-%02d' % (year, month, date)
        #print(self.full_date)
        
        self.entry.insert(0, self.full_date)
        if len(self.entry.get()) > 8:
            self.destroy()

        #  insert date in parent widget like these:
        #  in parent: 
        #   self.a = tk.StringVar()
        #   self.parent.a.set(self.full_date)
        #
        #  if a is tk.Entry:
        #   self.parent.a.insert(0, self.full_date)
        #DATA_OPERAZIONE = self.full_date
        #print('data mia',  DATA_OPERAZIONE

#==================================================================================================================             
###################################################################################################################
#==================================================================================================================             
class Placeholder_State(object):
     __slots__ = 'normal_color', 'normal_font', 'placeholder_text', 'placeholder_color', 'placeholder_font', 'with_placeholder'

def add_placeholder_to(entry, placeholder, color="grey", font=None):
    normal_color = entry.cget("fg")
    normal_font = entry.cget("font")
    
    if font is None:
        font = normal_font

    state = Placeholder_State()
    state.normal_color=normal_color
    state.normal_font=normal_font
    state.placeholder_color=color
    state.placeholder_font=font
    state.placeholder_text = placeholder
    state.with_placeholder=True

    def on_focusin(event, entry=entry, state=state):
        if state.with_placeholder:
            entry.delete(0, "end")
            entry.config(fg = state.normal_color, font=state.normal_font)
        
            state.with_placeholder = False

    def on_focusout(event, entry=entry, state=state):
        if entry.get() == '':
            entry.insert(0, state.placeholder_text)
            entry.config(fg = state.placeholder_color, font=state.placeholder_font)
            
            state.with_placeholder = True

    entry.insert(0, placeholder)
    entry.config(fg = color, font=font)

    entry.bind('<FocusIn>', on_focusin, add="+")
    entry.bind('<FocusOut>', on_focusout, add="+")
    
    entry.placeholder_state = state

    return state

#=================================================================================================================================
##################################################################################################################################
#=================================================================================================================================
userprofile = os.environ['USERPROFILE']
userprofile += "\\AppData\\Roaming\\zabbixexporter.credentials"
file = Path(userprofile)
h = 0
#-------------------------------------------------------------------------------------------------------------------------------
def CheckCredentials():
    if file.is_file():
        with open(file) as f:
            content = f.readlines()
        if content[0].find("URL") == 0:
            content[0] = content[0][6:len(content[0])-1]
            entry_url.insert(0, content[0])
        if content[1].find("USER") == 0:
            entry_user.insert(0, content[1][6:])
    else:
        add_placeholder_to(entry_url, "EX: http://yourdomain/zabbix")

#-------------------------------------------------------------------------------------------------------------------------------
def SetCredentials():
    f = open(file, "w", encoding='utf8')
    s = "URL  |" + entry_url.get() + "\n"
    f.write(s)
    s = "USER |" + entry_user.get()
    f.write(s)
    f.close()
    return
#-------------------------------------------------------------------------------------------------------------------------------
def GetGroupId(hostgroup, token):
    grequest = {
            "jsonrpc": "2.0",
            "method": "hostgroup.get",
            "params": {
                'output': ['name'],
                'filter': {
                    'name': hostgroup
                }
            },
            "auth": token,
            "id": 4
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res  = requests.post(url, data=json.dumps(grequest), headers={'content-type': 'application/json'})
        res = res.json()
        return res['result'][0]['groupid']
    except:
        return ''
#-------------------------------------------------------------------------------------------<|
def GetGroupHosts(gid, hostids, token):
    req = {
            "jsonrpc": "2.0",
            "method": "host.get",
            "params": {
                'output': ['name'],
                'groupids': gid,
            },
            "auth": token,
            "id": 4
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res  = requests.post(url, data=json.dumps(req), headers={'content-type': 'application/json'})
        res = res.json()
        for h in res['result']:
            hostids.append(h['hostid'])
    except:
        return ''    
#-------------------------------------------------------------------------------------------<|
def GetGroupHostlist(gid, hosts, token):
    req = {
            "jsonrpc": "2.0",
            "method": "host.get",
            "params": {
                'output': ['name'],
                'groupids': gid,
            },
            "auth": token,
            "id": 4
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res  = requests.post(url, data=json.dumps(req), headers={'content-type': 'application/json'})
        res = res.json()
        for h in res['result']:
            hosts.append(h['name'])
    except:
        return ''    
#-------------------------------------------------------------------------------------------<|
def GetHostId(host, token):
    hrequest = {
            "jsonrpc": "2.0",
            "method": "host.get",
            "params": {
                'output': ['name'],
                'filter': {
                    'name': host
                }
            },
            "auth": token,
            "id": 4
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res  = requests.post(url, data=json.dumps(hrequest), headers={'content-type': 'application/json'})
        res = res.json()
        return res['result'][0]['hostid']
    except:
        return ''
#-------------------------------------------------------------------------------------------<|
def Test_connection():
    entry_url.config(highlightcolor='#bebebe')
    entry_user.config(highlightcolor='#bebebe')
    entry_pass.config(highlightcolor='#bebebe')
    test_url = entry_url.get()
    if not test_url or test_url == 'EX: http://yourdomain/zabbix':
        entry_url.config(highlightcolor='red')
        entry_url.focus()
        return 0
    if not entry_user.get():
        entry_user.config(highlightcolor='red')
        entry_user.focus()
        return 0
    if not entry_pass.get():
        entry_pass.config(highlightcolor='red')
        entry_pass.focus()
        return 0
    if test_url[len(test_url)-1:] == '/':
        test_url = test_url[0:len(test_url)-1]
    test_url += "/api_jsonrpc.php"
    try:
        login = {
            "jsonrpc" : "2.0",
            "method" : "user.login",
            "params": {
                'user': entry_user.get(),
                'password': entry_pass.get(),
                    },
            "auth" : None,
            "id" : 0,
        }
        login_result  = requests.post(test_url, data=json.dumps(login), headers={'content-type': 'application/json'})
        login_result = login_result.json()
        if login_result['result']:
            token = login_result['result']
            zabbix_url = test_url
            lab_conn_status.config(text="connected",fg='green')
            return token
        #zapi = ZabbixAPI(test_url)
        #zapi.login(entry_user.get(), entry_pass.get())
        #print("Connected to Zabbix API Version %s" % zapi.api_version())
    except:
        lab_conn_status.config(text="failed",fg='red')
        return 0
#-------------------------------------------------------------------------------------------------------------------------------
def SetUTCFilter(event):
    i = 0
    for item in res_list.get():
        if item.find("UTC: ") != (-1):
            lb_result.delete(i)
        i += 1
    text = entry_utc.get()
    if text[0] == "+" or text[0] == "-":
        i=0        
    else:
        lab_utc_log.config(text="incorrect UTC format", fg='red')
        return
    try:
        i = int(text[1])
    except:
        lab_utc_log.config(text="incorrect UTC format", fg='red')
        return
    lab_utc_log.config(text="")
    lb_result.insert(END, "UTC: " + entry_utc.get())
    entry_utc.delete(0,END)
#-------------------------------------------------------------------------------------------------------------------------------
def SetUTC():
    if utcvar.get() == 1:
        i = 0
        for item in res_list.get():
            if item.find("UTC: ") != (-1):
                lb_result.delete(i)
            i += 1
        lab_utc.config(state='disabled')
        entry_utc.delete(0,len(entry_utc.get()))
        entry_utc.config(state='disabled')
        lab_utc_log.config(text='')
        return
    if utcvar.get() == 0:
        lab_utc.config(state='normal')
        entry_utc.config(state='normal')
        lab_utc_log.config(text='press Enter to set', fg='darkblue')
        entry_utc.focus()
        return
#-------------------------------------------------------------------------------------------------------------------------------
def date_pick(bt,entry,bt_num = 0):
    bt_x=0
    bt_y=0
    if bt_num == 1:
        bt_from.config(state='disabled')
        bt_x = root.winfo_x()
        bt_y = root.winfo_y()
        app = MyDatePicker(bt, entry, bt_x+600,bt_y+120)
    if bt_num == 2:
        bt_till.config(state='disabled')
        bt_x = root.winfo_x()
        bt_y = root.winfo_y()
        app = MyDatePicker(bt, entry, bt_x+600,bt_y+145)
    #return DATA_OPERAZIONE
#------MAIN PART--->-->-->-------------------------------------------------------------------------------------------------------------
root = tk.Tk()
root.title("Zabbix Exporter [ iulian-boss@mail.ru / iulix991@gmail.com ]");
med_width =  int((GetSystemMetrics(0) - 1000) /2)
med_height =  int((GetSystemMetrics(1) - 600) /2)
root.geometry("1000x600+"+str(med_width)+"+"+str(med_height))
root.resizable(False,False)

zabbix_url = StringVar()
quit_flag = IntVar()
qvar = IntVar()
utcvar = IntVar()
check_vardoc = IntVar()
utcvar.set(1)
myutc = IntVar()
hosts_bck = []
groups_bck = []
gfilt = tk.StringVar()
hfilt = tk.StringVar()
myzone = strftime("%z", gmtime())
try:
    if myzone[0] == "+":
        myutc.set(int(myzone[1:3]) * 3600)      #timezone +2
    else:
        var = (int(myzone[1:3]) * 3600 ) * (-1)
        myutc.set(var)
except:
    myutc.set(0)
#-------login prame part---->-->-->------------------------------------------------------------<|
login_frame = tk.LabelFrame(root, text="Zabbix setings", padx=10, pady=10)
login_frame.place(x=10, y=10)
    
lab_url = tk.Label(login_frame, text="Url: ")
lab_url.grid(row=0, column=0, sticky=tk.E)
entry_url = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1)
entry_url.grid(row=0, column=1, ipady=1, ipadx=30)

lab_user = tk.Label(login_frame, text="User: ")
lab_user.grid(row=1, column=0, sticky=tk.E)
entry_user = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1)
entry_user.grid(row=1, column=1, ipady=1, ipadx=30)

lab_pass = tk.Label(login_frame, text="Password: ")
lab_pass.grid(row=2, column=0, sticky=tk.E)
entry_pass = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1, show="*")
entry_pass.grid(row=2, column=1, ipady=1, ipadx=30)

bt_test_conn = tk.Button(login_frame, text="test connection",command=Test_connection, relief=GROOVE, cursor="hand2")
bt_test_conn.grid(row=3,column=1,sticky=tk.E, pady=5)

lab_conn_status = tk.Label(login_frame)
lab_conn_status.place(x=70,y=90)
# Every row has a minimum size
login_frame.grid_rowconfigure(0, minsize=28)
login_frame.grid_rowconfigure(1, minsize=28)
login_frame.grid_rowconfigure(2, minsize=28)

CheckCredentials()
#-----filter frame part-->-->-->---------------------------------------------------------------<|
filter_result_frame = tk.LabelFrame(root, text="Active filters", padx=10, pady=10)
filter_result_frame.place(x=10, y=180)
res_list = tk.Variable()
hlist = tk.Variable()
gflag = tk.IntVar()
lb_result = Listbox(filter_result_frame, width=41, height=20, listvariable=res_list)
lb_result.grid(row=0, column=0, sticky=tk.E)

def removeItemList(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
    except:
        return
    if value.find("STATE:") != (-1):
        R1.deselect()
    if value.find("Disaster") != (-1):
        check_disaster.deselect()
    if value.find("SEVERITY: High") != (-1):
        check_high.deselect()
    if value.find("SEVERITY: Average") != (-1):
        check_average.deselect()
    if value.find("SEVERITY: Warning") != (-1):
        check_warning.deselect()
    if value.find("SEVERITY: Information") != (-1):
        check_info.deselect()
    if value.find("SEVERITY: Not Classified") != (-1):
        check_not_class.deselect()
    if value.find("HOSTGROUP:") != (-1):
        lb_group.insert(0, value[11:])
    if value.find("HOST: ") != (-1):
        hostname = value[6:]
        if hostname not in hlist.get():
            lb_host.insert(0, hostname)
    if value.find("FROM: ") != (-1):
        if "TILL:" not in str(res_list.get()):
            for widget in dframe.winfo_children():
                widget.config(state='normal')
    if value.find("TILL: ") != (-1):
        if "FROM:" not in str(res_list.get()):
            for widget in dframe.winfo_children():
                widget.config(state='normal')
    if value.find("UTC: ") != (-1):
        utcvar.set(1)
        SetUTC()
    lb_result.delete(index)


lb_result.bind('<Double-Button-1>', removeItemList)
#--------------------------------------------------------------------------<|
filter_frame = tk.LabelFrame(root, text="Filter setings", padx=10, pady=10)
filter_frame.place(x=300, y=10)
#--------severity frame part-->-->-->----------------------------------------------------------<|
severity_frame = tk.LabelFrame(filter_frame, text="Severity", padx=5, pady=5)
severity_frame.grid(row=1,column=0, sticky=tk.NW)
def DisSel(var, text):
    if var.get() == 1:
        lb_result.insert(END, text)
    if var.get() == 0:
        i = 0
        for item in res_list.get():
            if item == text:
                lb_result.delete(i)
            i += 1


check_var0 = IntVar()
check_var1 = IntVar()
check_var2 = IntVar()
check_var3 = IntVar()
check_var4 = IntVar()
check_var5 = IntVar()
check_disaster = tk.Checkbutton(severity_frame, text="Disaster", variable=check_var5, command=lambda:DisSel(check_var5, "SEVERITY: Disaster"))
check_disaster.grid(row=0, column=0, sticky=tk.W)
check_high = tk.Checkbutton(severity_frame, text="High", variable=check_var4, command=lambda:DisSel(check_var4, "SEVERITY: High"))
check_high.grid(row=1, column=0, sticky=tk.W)
check_average = tk.Checkbutton(severity_frame, text="Average", variable=check_var3, command=lambda:DisSel(check_var3, "SEVERITY: Average"))
check_average.grid(row=2, column=0, sticky=tk.W)
check_warning = tk.Checkbutton(severity_frame, text="Warning", variable=check_var2, command=lambda:DisSel(check_var2, "SEVERITY: Warning"))
check_warning.grid(row=3, column=0, sticky=tk.W)
check_info = tk.Checkbutton(severity_frame, text="Information", variable=check_var1, command=lambda:DisSel(check_var1, "SEVERITY: Information"))
check_info.grid(row=4, column=0, sticky=tk.W)
check_not_class = tk.Checkbutton(severity_frame, text="Not Classified", variable=check_var0, command=lambda:DisSel(check_var0, "SEVERITY: Not Classified"))
check_not_class.grid(row=5, column=0, sticky=tk.W)
#-------period frame part-->-->-->-------------------------------------------------------------<|
date_frame = tk.LabelFrame(filter_frame, text="Period", padx=10, pady=10)
date_frame.grid(row=0,column=2, sticky=tk.N)
def on_focusin_from(object):
    lab_err.config(text='')
    bt_x = root.winfo_x()
    bt_y = root.winfo_y()
    app = MyDatePicker(bt_from, entry_time_from, bt_x+700,bt_y+120)
    entry_time_f.focus()

def on_focusin_till(object):
    lab_err.config(text='')
    bt_x = root.winfo_x()
    bt_y = root.winfo_y()
    app = MyDatePicker(bt_till, entry_time_till, bt_x+700,bt_y+170)
    entry_time_t.focus()

lab_time_from = tk.Label(date_frame, text="Date from: ").grid(row=0,column=0, sticky=tk.W, pady=2)
lab_time_till = tk.Label(date_frame, text="Date till: ").grid(row=2,column=0, sticky=tk.SW)
entry_time_from = tk.Entry(date_frame, text="from1")
entry_time_from.grid(row=0,column=1, pady=2)
entry_time_till = tk.Entry(date_frame, text="till1")
entry_time_till.grid(row=2,column=1, sticky=tk.SW)
bt_from = tk.Button(date_frame, text="Choose", height=1, relief=FLAT, cursor="hand2", command=lambda: date_pick(bt_from,entry_time_from,1))
bt_from.grid(row=0,column=2)
bt_till = tk.Button(date_frame, text="Choose", height=1, relief=FLAT, cursor="hand2", command=lambda: date_pick(bt_till,entry_time_till,2))
bt_till.grid(row=2,column=2, sticky=tk.SW)
lab_time_f = tk.Label(date_frame, text="time from: ")
lab_time_f.grid(row=1,column=1, sticky=tk.W)
entry_time_f = tk.Entry(date_frame, width=10)
entry_time_f.grid(row=1,column=1, sticky=tk.E) 
lab_time_t = tk.Label(date_frame, text="time till: ")
lab_time_t.grid(row=3, column=1, sticky=tk.SW)
entry_time_t = tk.Entry(date_frame, width=10)
entry_time_t.grid(row=3, column=1, sticky=tk.SE)
entry_time_from.bind('<FocusIn>', on_focusin_from)
entry_time_till.bind('<FocusIn>', on_focusin_till)

def key1(event):
    if event.keysym == 'BackSpace':
        return
    if(len(entry_time_t.get()) == 2):
        entry_time_t.insert(2,":")
    if len(entry_time_t.get()) > 4:
        entry_time_t.delete(4,5)
def key2(event):
    if event.keysym == 'BackSpace':
        return
    if(len(entry_time_f.get()) == 2):
        entry_time_f.insert(2,":")
    if len(entry_time_f.get()) > 4:
        entry_time_f.delete(4,5)

def RadDeselect():
    for widget in dframe.winfo_children():
        widget.config(state='disabled')


def Period_set():
    lab_err.config(text='', fg='red')
    if entry_time_from.get() == '' and entry_time_till.get() == '':
        lab_err.config(text='Period fields is empty!', fg='red')
        return
    if len(entry_time_from.get()) > 0:
        timef = "FROM: "
        timef += entry_time_from.get()
        timef += " "
        if len(entry_time_f.get()) > 0:
            try:
                hh = int(entry_time_f.get()[0:2])
                mm = int(entry_time_f.get()[3:5])
                if hh > 23 or mm > 59:
                    lab_err.config(text='incorrect time format!')
                    return
            except:
                lab_err.config(text='insert integer value! (HH:mm)')
                entry_time_f.focus()
                return
            if len(entry_time_f.get()) == 5:
                timef += entry_time_f.get()
            else:
                lab_err.config(text='set correct format (HH:mm)')
                entry_time_f.focus()
                return
        else:
            timef += "00:00"
        i = 0
        for item in res_list.get():
            if item.find("FROM: ") != (-1):
                lb_result.delete(i)
            i += 1
        lb_result.insert(END, timef)
        entry_time_from.delete(0, END)
        entry_time_f.delete(0, END)
        RadDeselect()
    if len(entry_time_till.get()) > 0:
        timet = "TILL: "
        timet += entry_time_till.get()
        timet += " "
        if len(entry_time_t.get()) > 0:
            try:
                hh = int(entry_time_t.get()[0:2])
                mm = int(entry_time_t.get()[3:5])
                if hh > 23 or mm > 59:
                    lab_err.config(text='incorrect time format!')
                    return
            except:
                lab_err.config(text='insert integer value! (HH:mm)')
                entry_time_t.focus()
                return
            if len(entry_time_t.get()) == 5:
                timet += entry_time_t.get()
            else:
                lab_err.config(text='set correct format (HH:mm)')
                entry_time_t.focus()
                return
        else:
            timet += "00:00"
        i = 0
        for item in res_list.get():
            if item.find("TILL: ") != (-1):
                lb_result.delete(i)
            i += 1
        lb_result.insert(END, timet)
        entry_time_t.delete(0, END)
        entry_time_till.delete(0, END)
        RadDeselect()

entry_time_t.bind("<Key>", key1)
entry_time_f.bind("<Key>", key2)
lab_err = tk.Label(date_frame)
lab_err.grid(row=4,columnspan=3)
bt_set = tk.Button(date_frame, text="Set", width=30, relief=GROOVE, command=Period_set, cursor='hand2')
bt_set.grid(row=5,columnspan=3)
#---------GROUP list box-->-->-->---------------------------------------------------<|
group_frame = tk.LabelFrame(filter_frame, text="Host Group",width=30, padx=2, pady=5)
group_frame.grid(row=0,column=0, sticky=tk.N)

def Check_groups():
    token = Test_connection()
    bt_group.config(fg='black')
    if token == 0:
        bt_group.config(fg='red')
        return
    hostgroup_request = {
        "jsonrpc": "2.0",
        "method": "hostgroup.get",
        "params": {
            'output': ['name'],
        },
        "auth": token,
        "id": 2,
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res_group = requests.post( url, data=json.dumps(hostgroup_request), headers={ 'content-type': 'application/json' })
        res_group = res_group.json()
        if len(res_group['result']) > 0:
            bt_group.config(state='disabled')
            for group in res_group['result']:
                lb_group.insert(END, group['name'])
                groups_bck.append(group['name'])
    except:
        return

def Add_group_item(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
    except:
        return
    fgroup = "HOSTGROUP: " + value
    lb_group.delete(index)
    lb_result.insert(END, fgroup)
    if gflag.get() == 1:
        for host in hlist.get():
            lb_host.delete(0)

def ShowGroupHosts(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
    except:
        return
    token = Test_connection()
    if not token:
        return
    gid = GetGroupId(value, token)    
    if not gid:
        return
    h = []
    GetGroupHostlist(gid, h, token)
    if len(h) > 0:
        gflag.set(1)
        bt_host.config(state='normal')
        lb_host.delete(0, END)
        hosts_bck.clear()
        for h1 in h:
            lb_host.insert(END, h1)
            hosts_bck.append(h1)

def Gfilter(event):
    lb_group.delete(0, END)
    for item in groups_bck:
        if gfilt.get().lower() in item.lower():
            lb_group.insert(END, item)


bt_group = tk.Button(group_frame, text="Check groups", width=25, relief=GROOVE, command=Check_groups, cursor='hand2')
bt_group.grid(row=0,column=0)
#
entry_gfilt = tk.Entry(group_frame, width=30, bg='snow2', justify=CENTER, textvariable=gfilt)
entry_gfilt.grid(row=1, column=0)
entry_gfilt.bind('<Return>', Gfilter)
#
lb_group = tk.Listbox(group_frame, width=30, height=14, relief=GROOVE)
lb_group.grid(row=2,column=0)
lb_group.bind('<Double-Button-1>', Add_group_item)
lb_group.bind('<Button-3>', ShowGroupHosts)
#-----------HOSTS list box-->-->-->--------------------------------------------------<|
host_frame = tk.LabelFrame(filter_frame, text="Hosts",width=30, padx=2, pady=5)
host_frame.grid(row=0,column=1, sticky=tk.N)

def Check_hosts():
    for h in hlist.get():
        lb_host.delete(0)
    token = Test_connection()
    bt_host.config(fg='black')
    if token == 0:
        bt_host.config(fg='red')
        return
    host_request = {
        "jsonrpc": "2.0",
        "method": "host.get",
        "params": {
            'output': ['hostid', 'name'],
        },
        "auth": token,
        "id": 1,
    }
    try:
        url = entry_url.get() + "/api_jsonrpc.php"
        res_host = requests.post( url, data=json.dumps(host_request), headers={ 'content-type': 'application/json' })
        res_host = res_host.json()
        if len(res_host['result']) > 0:
            bt_host.config(state='disabled')
            for host in res_host['result']:
                lb_host.insert(END, host['name'])
                hosts_bck.append(host['name'])
    except:
        return

def Add_host_item(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
    except:
        return
    fhost = "HOST: " + value
    lb_host.delete(index)
    if fhost not in res_list.get():
        lb_result.insert(END, fhost)

def Hfilter(event):
    lb_host.delete(0, END)
    for item in hosts_bck:
        if hfilt.get().lower() in item.lower():
            lb_host.insert(END, item)

bt_host = tk.Button(host_frame, text="Check hosts", width=25, relief=GROOVE, command=Check_hosts, cursor='hand2')
bt_host.grid(row=0,column=0)

entry_hfilt = tk.Entry(host_frame, width=30, bg='snow2', justify=CENTER, textvariable=hfilt)
entry_hfilt.grid(row=1, column=0)
entry_hfilt.bind('<Return>', Hfilter)

lb_host = tk.Listbox(host_frame, width=30, height=14, relief=GROOVE, listvariable=hlist)
lb_host.grid(row=2,column=0)
lb_host.bind('<Double-Button-1>', Add_host_item)
#--------------------------------------------------------------------------<|
sframe = tk.LabelFrame(filter_frame, text="Trigger state",width=100,height=100, padx=2, pady=5,)
sframe.grid(row=0,column=2, sticky=S)
#sframe.place(x=698,y=175)

def Radio_sel():
    if var.get() == 1:
        lb_result.insert(END, "STATE: Only active")
    if var.get() == 0:
        i = 0
        for item in res_list.get():
            if item == "STATE: Only active":
                lb_result.delete(i)
            i += 1

var = IntVar()
R1 = Checkbutton(sframe, text="Only active triggers                                           ", variable=var, command=Radio_sel)
R1.grid()
#--------------------------------------------------------------------------<|
keyframe = tk.LabelFrame(root, text="Trigger name filter", width=0, height=100, padx=2, pady=5)
keyframe.place(x=698,y=218)
lab_key = tk.Label(keyframe, text="                      keyword: ")
lab_key.grid(row=0,column=0)
entry_key = tk.Entry(keyframe)
entry_key.grid(row=0, column=1, padx=5, sticky=tk.E)

def enter_keyw(event):
    if len(entry_key.get()) > 0:
        i = 0
        for item in res_list.get():
            if item.find("KEYWORD: ") != (-1):
                lb_result.delete(i)
            i += 1
        keyword = "KEYWORD: " + str(entry_key.get())
        lb_result.insert(END, keyword)
        entry_key.delete(0, len(entry_key.get()))

entry_key.bind('<Return>', enter_keyw)
#--------Radio buttons------------------------------------------------------<|
dframe = tk.LabelFrame(filter_frame, text="from last:",width=100, height=100, padx=5, pady=5)
dframe.grid(row=1, column=1, sticky=W)

vrad1 = IntVar()
RAD1 = tk.Radiobutton(dframe, text="1 hour  ", variable=vrad1, value=1)
RAD1.grid(row=0,column=0, sticky=W)
RAD2 = tk.Radiobutton(dframe, text="2 hours ", variable=vrad1, value=2)
RAD2.grid(row=1,column=0, sticky=W)
RAD3 = tk.Radiobutton(dframe, text="4 hours ", variable=vrad1, value=3)
RAD3.grid(row=2,column=0, sticky=W)
RAD4 = tk.Radiobutton(dframe, text="6 hours ", variable=vrad1, value=4)
RAD4.grid(row=3,column=0, sticky=W)
RAD5 = tk.Radiobutton(dframe, text="12 hours", variable=vrad1, value=5)
RAD5.grid(row=4,column=0, sticky=W)
RAD6 = tk.Radiobutton(dframe, text="24 hours", variable=vrad1, value=6)
RAD6.grid(row=5,column=0, sticky=W)

RAD7 = tk.Radiobutton(dframe, text="3 days ", variable=vrad1, value=7)
RAD7.grid(row=0,column=1, sticky=W)
RAD8 = tk.Radiobutton(dframe, text="7 days ", variable=vrad1, value=8)
RAD8.grid(row=1,column=1, sticky=W)
RAD9 = tk.Radiobutton(dframe, text="14 days", variable=vrad1, value=9)
RAD9.grid(row=2,column=1, sticky=W)
RAD10 = tk.Radiobutton(dframe, text="30 days", variable=vrad1, value=10)
RAD10.grid(row=3,column=1, sticky=W)
RAD11 = tk.Radiobutton(dframe, text="90 days", variable=vrad1, value=11)
RAD11.grid(row=4,column=1, sticky=W)
RAD1.select()
#--------Export Options----------------------------------------------------<|
export_frame = tk.LabelFrame(filter_frame, text="Export options:", padx=5, pady=1)
export_frame.grid(row=1, column=2, sticky=NW)



def key3(event):
    if len(entry_utc.get()) > 2:
        entry_utc.delete(2,END)

check_utc = tk.Checkbutton(export_frame, text="Use my UTC server location                          ", variable=utcvar, command=SetUTC)
check_utc.grid(row=0,column=0, sticky=W)
lab_utc = tk.Label(export_frame, text="Set UTC offset:", state='disabled')
lab_utc.grid(row=1, column=0)
lab_utc_log = tk.Label(export_frame, text="", fg='red')
lab_utc_log.grid(row=2, column=0, sticky=E)
entry_utc = tk.Entry(export_frame, width=10, state='disabled')
entry_utc.grid(row=1, column=0, sticky=E)
add_placeholder_to(entry_utc, "+2")
entry_utc.bind("<Key>", key3)
entry_utc.bind("<Return>", SetUTCFilter)

lab_empty1 = tk.Label(export_frame, text='')
lab_empty1.grid(row=2, column=0)
lab_empty2 = tk.Label(export_frame, text='')
lab_empty2.grid(row=3, column=0)
lab_empty3 = tk.Label(export_frame, text='')
lab_empty3.grid(row=4, column=0)
check_open = tk.Checkbutton(export_frame, text="Open document", variable=check_vardoc, cursor='hand2')
check_open.grid(row=5, column=0, sticky=W)

check_close = tk.Checkbutton(export_frame, text="Close program after finish", variable=qvar, cursor='hand2')
check_close.grid(row=6, column=0, sticky=W)
#--------------------------------------------------------------------------<|

log_label  = tk.Label(root, font=("Arial", 12))
log_label.place(x=440, y=540)
logw_label  = tk.Label(root, font=("Arial", 8), fg='darkred')
logw_label.place(x=440, y=575)
check_disaster = tk.Checkbutton(severity_frame, text="Disaster", variable=check_var5, command=lambda:DisSel(check_var5, "SEVERITY: Disaster"))

load_flag = IntVar()
load_flag.set(0)
########################################################################################################################################
def duration_calc(duration):
    calc_day = int(duration / 60 /60 / 24)
    calc_hour = int((duration / 60 / 60) % 24)
    calc_min = int((duration / 60) % 60)    
    calc_sec = int(duration % 60)       
    calc_result = ""
    if calc_day > 0:
        calc_result = str(calc_day)
        calc_result += "d "
    if calc_hour > 0:
        calc_result += str(calc_hour)
        calc_result += "h "
    if calc_min > 0:
        calc_result += str(calc_min)
        calc_result += "m "
    if calc_sec > 0:
        calc_result += str(calc_sec)
        calc_result += "sec"
    return calc_result
#-----------------------------------------------------------------------------------------------------------
def switch_priority(argument):
    if argument == "0":
        return "Not classified"   
    if argument == "1":
        return "Information" 
    if argument == "2":
        return "Warning"
    if argument == "3":
        return "Average"
    if argument == "4":
        return "High"
    if argument == "5":
        return "Disaster"
    return "Not classified"   
#-----------------------------------------------------------------------------------------------------------    
def switch_priority_format(priority, workbook):
    if priority == "0":
        wformat = workbook.add_format({'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#C0C0C0'})
        return wformat
    if priority == "1":
        wformat = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#00CCFF'})
        return wformat
    if priority == "2":
        wformat = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#FFCC00'})
        return wformat
    if priority == "3":
        wformat = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#FF9900'})
        return wformat
    if priority == "4":
        wformat = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#FF6600'})
        return wformat
    if priority == "5":
        wformat = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#FF0000'})
        return wformat 
    return workbook.add_format({'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#C0C0C0'})
#-----------------------------------------------------------------------------------------------------------    
def switch_state(value):
    if value == "0":
        return "Resolved"
    if value == "1":
        return "Problem"
    return "Unknown"
#-----------------------------------------------------------------------------------------------------------    
def switch_state_format(value, workbook):
    if value == "0":
        return workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#D7E4BC', 'color': '#339966'})
    if value == "1":
        return workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#D7E4BC', 'color': '#800000'})
    return workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#D7E4BC', 'color': '#800000'})
#-----------------------------------------------------------------------------------------------------------    
def ParseSeverity(severity):
    if check_var0.get():
        if severity == "0":
            return True
    if check_var1.get():
        if severity == "1":
            return True
    if check_var2.get():
        if severity == "2":
            return True
    if check_var3.get():
        if severity == "3":
            return True
    if check_var4.get():
        if severity == "4":
            return True
    if check_var5.get():
        if severity == "5":
            return True
    return False
#-----------------------------------------------------------------------------------------------------------    
def getEventTag(eventid, token):
    event_request = {
        "jsonrpc": "2.0",
        "method": "event.get",
        "params": {
            "output": "extend",
            "eventids": eventid,
            "selectTags": "extend"
        },
        "auth": token,
        "id": 8
    }
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(event_request), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']    
    except:
        logw_label.config(text='Warning: getEventTag Exception!, eventid:' + eventid, fg='darkred')
        print('Warning: getEventTag Exception!, eventid: ', eventid)
        try:
            response  = requests.post(url, data=json.dumps(event_request), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            logw_label.config(text='OK: getEventTag Exception passed!, eventid: ' + eventid, fg='SpringGreen4')
            print("OK: getEventTag Exception!, eventid: ", eventid)
            return response['result']  
        except:
            print("getEventTag, return Error!")
            return ""
#-----------------------------------------------------------------------------------------------------------    
def getHostInfo(host, token):
    hrequest = {
        "jsonrpc": "2.0",
        "method": "host.get",
        "params": {
            "output": ["hostid", "name"],
            "selectInterfaces": ['ip', 'port'],
            "filter": {
                "name": host
                    },
            },
        "auth": token,
        "id": 7
    }
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(hrequest), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']    
    except:
        logw_label.config(text='Warning: HostInfo Exception!, host: ' + host, fg='darkred')
        print('Warning: HostInfo Exception!, host: ', host)
        try:
            response  = requests.post(url, data=json.dumps(hrequest), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            logw_label.config(text='OK: HostInfo Exception passed!, host: ' + host, fg='SpringGreen4')
            print("OK: HostInfo Exception passed!, host:", host)
            return response['result']
        except:
            print("getHostInfo, return Error!")
            return "Hostname"
#-----------------------------------------------------------------------------------------------------------    
def getAlert(eventid, token):
    arequest = {
        "jsonrpc": "2.0",
        "method": "alert.get",
        "params": {
            "output": ["alertid", "subject", "message"],
            "eventids": [eventid],
        },
        "auth": token,
        "id": 6
    }
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(arequest), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']
    except:
        logw_label.config(text='Warning: getAlert Exception!, eventid: ' + eventid, fg='darkred')
        print('Warning: getAlert Exception!, eventid: ', eventid)
        try:
            response  = requests.post(url, data=json.dumps(arequest), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            logw_label.config(text='OK: getAlert Exception passed!, eventid: ' + eventid, fg='SpringGreen4')
            print("OK: getAlert Exception passed!, eventid:", eventid)
            return response['result']
        except:
            print("getAlert, return Error!")
            return "0"
#-----------------------------------------------------------------------------------------------------------    
def get_r_event(eventid, token):
    myrequest = {
        "jsonrpc": "2.0",
        "method": "event.get",
        "params": {
            "eventids": eventid,
            "output": "extend",
            "selectTags": "extend"
            },
            "auth": token,
            "id": 11
        }
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']         
    except:
        logw_label.config(text="Warning: get_r_event exception!, eventid: " + eventid, fg='darkred')
        print("Warning: get_r_event exception!, eventid: ", eventid)
        try:
            response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            logw_label.config(text="OK: get_r_event exception passed!, eventid: " + eventid, fg='SpringGreen4')
            print("OK: get_r_event exception passed!, eventid: ", eventid)
            return response['result']         
        except:
            print("get_r_event, return Error!")
            return ""
#-----------------------------------------------------------------------------------------------------------    
def getEvent(eventid, token):
    myrequest = {
        "jsonrpc": "2.0",
        "method": "event.get",
        "params": {
            "eventids": eventid,
            "output": "extend",
            "selectTags": "extend"
            },
            "auth": token,
            "id": 11
        }
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']         
    except:
        logw_label.config(text="Warning: getEvent exception!, eventid: " + str(eventid), fg='darkred')
        print("Warning: getEvent exception!, eventid: ", eventid)
        try:
            response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            logw_label.config(text="OK: getEvent exception passed!, event: " + str(eventid), fg='SpringGreen4')
            print("OK: getEvent exception passed!, eventid: ", eventid)
            return response['result']         
        except:
            print("getEvent, return Error!")
            return ""
#-----------------------------------------------------------------------------------------------------------    
def getTriggerEvents(objectid, token, timefrom, timetill):
    if timetill == 0:
        myrequest = {
            "jsonrpc": "2.0",
            "method": "event.get",
            "params": {
                "objectids": objectid,
                "output": ["eventid", "clock", "value", "r_eventid"],
                "selectTags": "extend",
                "time_from": timefrom,
                "sortfield": ["clock"],
                "sortorder": "DESC"
            },
            "auth": token,
            "id": 11
        }
    else:
         myrequest = {
            "jsonrpc": "2.0",
            "method": "event.get",
            "params": {
                "objectids": objectid,
                "output": ["eventid", "clock", "value", "r_eventid"],
                "selectTags": "extend",
                "time_from": timefrom,
                "time_till": timetill,
                "sortfield": ["clock"],
                "sortorder": "DESC"
            },
            "auth": token,
            "id": 12
        }       
    url = entry_url.get() + "/api_jsonrpc.php"
    try:
        response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
        response = response.json()
        return response['result']    
    except:
        logw_label.config(text="Warning: getTriggerEvents Exception!, objectid: "+ objectid, fg='darkred')
        print("Warning: getTriggerEvents Exception!, objectid: ", objectid)
        try:
            response  = requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'}, timeout=30)
            response = response.json()
            print("OK: getTriggerEvents Exception passed!, objectid:", objectid)
            logw_label.config(text="OK: getTriggerEvents Exception passed!, objectid:" + objectid, fg='SpringGreen4')
            return response['result']    
        except:
            print("getTriggerEvents, return Error!")
            return ""
#-----------------------------------------------------------------------------------------------------------    
def token_logout(token):
	myrequest = {
            "jsonrpc": "2.0",
            "method": "user.logout",
            "params": { },
            "auth": token,
            "id": 99
        }
	url = entry_url.get() + "/api_jsonrpc.php"
	requests.post(url, data=json.dumps(myrequest), headers={'content-type': 'application/json'})       
#-----------------------------------------------------------------------------------------------------------    

def WriteData(triggers, token, timefrom, timetill=0):
    logw_label.config(text="")
    print("Starting export...")
    actual_time = time.mktime(datetime.now().timetuple())
    i = 0
    sflag = 0
    writeflag = 0
    err_count = 0
    word = ""
    plist = []
    row = 2
    col = 0
    tot_count=0
    pr_count=0
    rs_count=0
    disaster_count = 0
    high_count = 0
    average_count = 0
    warning_count = 0
    info_count = 0
    not_classified_count = 0
    totrows = len(triggers)
    totrows += 20
    totrows = str(totrows)
    r_eventids = {}
    buff = ""
    gtb = strftime("%z", gmtime())
    gtb = int(gtb[1:3]) * 3600      #timezone +2
    filename = datetime.utcfromtimestamp(actual_time + gtb).strftime('[%H_%M]')
    filename += datetime.utcfromtimestamp(actual_time).strftime('%d_%m_%Y')
    filename += ".xlsx"
    #--------------------------------------------------------
    for item in res_list.get():
        if item.find("KEYWORD:") != (-1):
            word = item[9:]
            word = word.strip()
    if check_var5.get() or check_var4.get() or check_var3.get() or check_var2.get() or check_var1.get() or check_var0.get():
        sflag = 1
    #-------------------------------------------------------
    workbook = xlsxwriter.Workbook(filename)
    worksheet = workbook.add_worksheet()
    merge_format = workbook.add_format({
                        'align': 'center',
                        'valign': 'vcenter',
                        'border': 2,
                        'bold': 1
                                    })
    titlebar_format = workbook.add_format({'align': 'center','valign': 'vcenter','border': 2,'color': 'red','text_wrap': 1})
    row_format = workbook.add_format({'align': 'center','valign': 'vcenter','border': 2,'text_wrap': 1,'fg_color': '#D7E4BC'})
    event_format = workbook.add_format({'align': 'center','valign': 'vcenter','border': 2,'text_wrap': 1,'fg_color': '#EBF1DE'})
    stat_format = workbook.add_format({'align': 'right','valign': 'vcenter','border': 1,'text_wrap': 1,})
    stat_format2 = workbook.add_format({'align': 'center','valign': 'vcenter','border': 1, 'text_wrap': 1,})
    resolved_format = workbook.add_format({ 'align': 'center', 'valign': 'vcenter', 'border': 2, 'text_wrap': 1, 'fg_color': '#D7E4BC', 'color': '#339966'})

    worksheet.merge_range('A1:I1', "Zabbix Monitoring Problems", merge_format)
    worksheet.set_row(0,60)  # title zabbix monitoring problems
    worksheet.set_row(1,20)  # title bar
    worksheet.set_column(0,0,30) #host
    worksheet.set_column(1,1,15) #ip
    worksheet.set_column(2,2,40) #problem
    worksheet.set_column(3,3,80) #description
    worksheet.set_column(4,4,20) #date
    worksheet.set_column(5,5,15) #duration
    worksheet.set_column(6,6,25) #tag
    worksheet.set_column(7,7,15) #severity
    worksheet.set_column(8,8,10) #status

    worksheet.write(1,0, "HOST", titlebar_format)
    worksheet.write(1,1, "IP", titlebar_format)
    worksheet.write(1,2, "PROBLEM", titlebar_format)
    worksheet.write(1,3, "DESCRIPTION", titlebar_format)
    worksheet.write(1,4, "DATE", titlebar_format)
    worksheet.write(1,5, "DURATION", titlebar_format)
    worksheet.write(1,6, "TAG", titlebar_format)
    worksheet.write(1,7, "SEVERITY", titlebar_format)
    worksheet.write(1,8, "STATUS", titlebar_format)
    #-------------------------------------------------------
    while i < len(triggers):
        log_label.config(text="loading .." + str(i) + " /"+ str(len(triggers)))
        #--------------------------------------------------
        if sflag == 1:
            if ParseSeverity(triggers[i]['priority']) == False:
                i +=1
                continue
        #--------------------------------------------------
        if len(word) > 0:
            if triggers[i]['description'].lower().find(word.lower()) == (-1):
                i +=1
                continue
        #--------------------------------------------------
        try:
            host = getHostInfo(triggers[i]['hostname'], token)
            event = getEventTag(triggers[i]['lastEvent']['eventid'], token)
            if not event[0]['tags']:
                buff = ""
            else:
                buff = event[0]['tags'][0]['tag'] + ": " + event[0]['tags'][0]['value']
            #----WRITE DATA IN FILE---------------------------------------------------------------------------------------------------------------------------------------------->
            worksheet.write(row,col, triggers[i]['hostname'], row_format)
            writeflag = 1
            col+=1
            worksheet.write(row,col, host[0]['interfaces'][0]['ip'], row_format)
            col+=1
            worksheet.write(row,col, triggers[i]['description'], row_format)
            col+=1
            worksheet.write(row,col, triggers[i]['comments'], row_format)
            col+=1
            if triggers[i]['value'] == "1":
                worksheet.write(row,col, datetime.utcfromtimestamp(int(triggers[i]['lastchange'])+myutc.get()).strftime('%Y-%m-%d %H:%M:%S'), row_format)
                col+=1
                worksheet.write(row,col, duration_calc((int(actual_time) - int(triggers[i]['lastchange']))), row_format)
                col+=1
                worksheet.write(row,col, buff, row_format)
                col+=1
                worksheet.write(row,col, switch_priority(triggers[i]['priority']), switch_priority_format(triggers[i]['priority'], workbook))
                col+=1
                worksheet.write(row,col, switch_state(triggers[i]['value']), switch_state_format(triggers[i]['value'], workbook))
                row += 1
            else:
                worksheet.write(row,col, datetime.utcfromtimestamp(int(event[0]['clock'])+myutc.get()).strftime('%Y-%m-%d %H:%M:%S'), row_format)
                col+=1
                worksheet.write(row,col, duration_calc((int(triggers[i]['lastchange']) - int(event[0]['clock']))), row_format)
                col+=1
                worksheet.write(row,col, buff, row_format)
                col+=1
                worksheet.write(row,col, switch_priority(triggers[i]['priority']), switch_priority_format(triggers[i]['priority'], workbook))
                col+=1
                worksheet.write(row,col, switch_state(triggers[i]['value']), switch_state_format(triggers[i]['value'], workbook))
                row += 1
        except:
            print("Something Wrong!")
            logw_label.config(text="Something Wrong!", fg='darkred')
        #---EVENT PROCESSING-------------------------------------------------------------
        try:
            eventids = getTriggerEvents(triggers[i]['triggerid'], token, timefrom, timetill)
        except:
            logw_label.config(text='Warning: cant get events from trigger! Hostname: ' + triggers[i]['hostname'] + ' trigger: ' + triggers[i]['description'][:30] + "..", fg='darkred')
            err_count += len(getTriggerEvents(triggers[i]['triggerid'], token, timefrom, timetill))
            eventids = []
        col = 0
        r_eventids = {}
        for j in range(len(eventids)):
                try:
                    log_label.config(text="loading .." + str(i) + " /"+ str(len(triggers)) + ",  processing: " + str(j) + "/" + str(len(eventids)))
                    #event = getEvent(eventids[j]['eventid'], token)
                    if eventids[j]['value'] == "1":
                        if eventids[j]['clock'] == triggers[i]['lastchange'] and triggers[i]['value'] == '1':
                            continue
                        if int(eventids[j]['r_eventid']) > 0:
                            revent = get_r_event(eventids[j]['r_eventid'], token)
                            worksheet.write(row,col+5, duration_calc((int(revent[0]['clock']) - int(eventids[j]['clock']))), event_format) 
                        else:
                            worksheet.write(row,col+5, "", event_format)    
                        worksheet.write(row,col+4, datetime.utcfromtimestamp(int(eventids[j]['clock'])+myutc.get()).strftime('%Y-%m-%d %H:%M:%S'), event_format)  
                        if len(eventids[j]['tags']) > 0:
                            worksheet.write(row,col+6, eventids[j]['tags'][0]['tag'] + ": " + eventids[j]['tags'][0]['value'], event_format)  
                        else:
                            worksheet.write(row,col+6, "", event_format)            
                        worksheet.write(row,col+7, switch_priority(triggers[i]['priority']), switch_priority_format(triggers[i]['priority'], workbook))            
                        worksheet.write(row,col+8, "Resolved", resolved_format)            
                        row+=1
                        col=0
                except:
                    print("Warning: Exception!, host: ", host[0]['name'], " ,row: ", str(row), " lost: ", str(j), "th")
                    err_count +=1
                    logw_label.config(text='Warning: Event Exception! event ' + str(eventids[j]['eventid']) + ' is lost! ' + host[0]['name'] + ", row: " + str(row), fg='darkred')
        row+=1
        #print(eventids)
        #---STATISTIC--------------------------------------------------------------------
        if triggers[i]['priority'] == "0":
            not_classified_count +=1
        if triggers[i]['priority'] == "1":
            info_count +=1
        if triggers[i]['priority'] == "2":
            warning_count +=1
        if triggers[i]['priority'] == "3":
            average_count +=1
        if triggers[i]['priority'] == "4":
            high_count +=1
        if triggers[i]['priority'] == "5":
            disaster_count +=1
        if triggers[i]['value'] == "0":
            rs_count+=1
        if triggers[i]['value'] == "1":
            pr_count+=1            
        tot_count+=1
        i += 1

    if writeflag == 0:
        load_flag.set(1)
        log_label.config(text="No Results")
        bt_export.config(state='normal')
        token_logout(token)
        return
    row +=1
    worksheet.write(row,col, "Total numbers of problem:", stat_format)
    col = 1
    worksheet.write(row,col, str(tot_count), stat_format2)
    row += 1
    col = 0
    worksheet.write(row,col, "Resolved:", stat_format)
    col = 1
    worksheet.write(row,col, str(rs_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "Active:", stat_format)
    col = 1
    worksheet.write(row,col, str(pr_count), stat_format2)
    row += 2
    col = 0
    worksheet. write(row,col, "Disaster:", stat_format)
    col = 1
    worksheet.write(row,col, str(disaster_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "High:", stat_format)
    col = 1
    worksheet.write(row,col, str(high_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "Average:", stat_format)
    col = 1
    worksheet.write(row,col, str(average_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "Warning:", stat_format)
    col = 1
    worksheet.write(row,col, str(warning_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "Information:", stat_format)
    col = 1
    worksheet.write(row,col, str(info_count), stat_format2)
    row += 1
    col = 0
    worksheet. write(row,col, "Not classified:", stat_format)
    col = 1
    worksheet.write(row,col, str(not_classified_count), stat_format2)
    workbook.close()
    print("SUCCESS")
    log_label.config(text="DONE, lost: "+ str(err_count))
    load_flag.set(1)
    bt_export.config(state='normal')
    token_logout(token)
    if check_vardoc.get() > 0:
        webbrowser.open(filename)
    if quit_flag.get() > 0:
        pid = os.getpid()
        command = "taskkill /PID " + str(pid)
        os.system(command)
#-------------------------------------------------------------------------------------------<|
def LoadingLabel():
    for i in range(10000):
        if load_flag.get() == 0:
            text = 'loading... ' + str(i)
            log_label.config(text=text)
            time.sleep(1)
        else:
            if quit_flag.get() > 0:
                pid = os.getpid()
                command = "taskkill /PID " + str(pid)
                os.system(command)
            break
    return
#-------------------------------------------------------------------------------------------<|

def GetDurationTime(actual_time):
    if vrad1.get() == 99:
        return int(actual_time) - (3600 * h)
    if vrad1.get() == 2:
        return int(actual_time) - (3600 * 2)
    if vrad1.get() == 3:
        return int(actual_time) - (3600 * 4)
    if vrad1.get() == 4:
        return int(actual_time) - (3600 * 6)
    if vrad1.get() == 5:
        return int(actual_time) - (3600 * 12)
    if vrad1.get() == 6:
        return int(actual_time) - (3600 * 24)
    if vrad1.get() == 7:
        return int(actual_time) - (3600 * 24 * 3)
    if vrad1.get() == 8:
        return int(actual_time) - (3600 * 24 * 7)
    if vrad1.get() == 9:
        return int(actual_time) - (3600 * 24 * 14)
    if vrad1.get() == 10:
        return int(actual_time) - (3600 * 24 * 30)
    if vrad1.get() == 11:
        return int(actual_time) - (3600 * 24 * 90)        
    return int(actual_time) - 3600
#-------------------------------------------------------------------------------------------<|
def getCurrentUTC():
    gtb = strftime("%z", gmtime())
    result = 0
    try:
        if gtb[0] == "+":
            result = int(gtb[1:3]) * 3600
        else:
            result = (int(gtb[1:3]) * 3600 ) * (-1)
    except:
        return 0
    return result
#-------------------------------------------------------------------------------------------<|
def ItemParse(item, dict1, token, groupids, hostids):
    if item.find("FROM: ") != (-1):
        ifrom = item[6:]
        Y = int(ifrom[0:4])
        M = int(ifrom[5:7])
        D = int(ifrom[8:10])
        H = int(ifrom[11:13])
        m = int(ifrom[14:16])
        atom = calendar.timegm(datetime(Y, M, D, H, m).timetuple())
        gtb = getCurrentUTC()
        atom = atom - gtb
        dict1['lastChangeSince'] = str(atom)
        return dict1
    if item.find("TILL: ") != (-1):
        ifrom = item[6:]
        Y = int(ifrom[0:4])
        M = int(ifrom[5:7])
        D = int(ifrom[8:10])
        H = int(ifrom[11:13])
        m = int(ifrom[14:16])
        atom = calendar.timegm(datetime(Y, M, D, H, m).timetuple())
        gtb = getCurrentUTC()
        atom = atom - gtb
        dict1['lastChangeTill'] = str(atom)
        return dict1
    if item.find("HOSTGROUP: ") != (-1):
        hostgroup = item[11:]
        gid = GetGroupId(hostgroup, token)
        if len(gid) > 0:
            hid = GetGroupHosts(gid, hostids, token)
            dict1['hostids'] = hostids
            return dict1
        else:
            i = 0
            for item in res_list.get():
                if item.find(item) != (-1):
                    lb_result.delete(i)
            i += 1
    if item.find("HOST: ") != (-1):
        host = item[6:]
        hid = GetHostId(host, token)
        if len(hid) > 0:
            hostids.append(hid)
            dict1['hostids'] = hostids
            return dict1
        else:
            i = 0
            for item in res_list.get():
                if item.find(item) != (-1):
                    lb_result.delete(i)
            i += 1
    if item.find("STATE: ") != (-1):
        dict1['filter'] = { 'value': '1' }
        return dict1
    if item.find("UTC: ") != (-1):
        t = item[5:]
        try:
            if t[0] == "-":
                t = int(t)
            else:
                t = int(t[1:])
            t = 3600 *int(t)
            myutc.set(t)
        except:
            myutc.set(0)
    return dict1
#-------------------------------------------------------------------------------------------<|

def StartExport():
    mytoken = Test_connection()
    if mytoken == 0:
        return
    if qvar.get() > 0:
        quit_flag.set(1)
    else:
        quit_flag.set(0)
    bt_export.config(state='disabled')
    log_label.config(text='', fg="DeepSkyBlue4")
    load_flag.set(0)
    url = entry_url.get() + "/api_jsonrpc.php"
    gtb = strftime("%z", gmtime())
    gtb = int(gtb[1:3]) * 3600
    actual_time = time.mktime(datetime.now().timetuple())
    timefrom = GetDurationTime(actual_time)
    if len(res_list.get()) == 0:
        trigger_request = {
            "jsonrpc": "2.0",
            "method": "trigger.get",
            "params": {
                'output': [ 'triggerid', 'name', 'description', 'priority', 'lastchange', 'hostname', 'value', 'comments' ],
                'selectLastEvent': ['value', 'acknowledged'],
                'lastChangeSince': timefrom,
                'sortfield': ['priority', 'hostname'],
                'sortorder': 'DESC',
                'expandDescription': 1,
                'expandComment': 1,
                'expandExpression': 1,
                'monitored': 1
            },
            "auth": mytoken,
            "id": 3
        }
        res  = requests.post(url, data=json.dumps(trigger_request), headers={'content-type': 'application/json'})
        res = res.json()
        if len(res['result']) == 0:
            log_label.config(text="No results")
            bt_export.config(state='normal')
            token_logout(token)
            return
        #th = threading.Thread(name='loading', target=LoadingLabel).start()
        threading.Thread(name='writedata', target=WriteData, args=(res['result'], mytoken, timefrom,)).start()
        #WriteData(res['result'], mytoken, timefrom)
        SetCredentials()
        #bt_export.config(state='normal')
    else:
        param_dict = {}
        groupids = []
        hostids = []
        param_dict['output'] = [ 'triggerid', 'name', 'description', 'priority', 'lastchange', 'hostname', 'value', 'comments' ]
        param_dict['selectLastEvent'] = ['value', 'acknowledged']
        param_dict['sortfield'] = ['priority', 'hostname']
        param_dict['sortorder'] = 'DESC'
        param_dict['lastChangeSince'] = timefrom
        for item in res_list.get():
            param_dict = ItemParse(item, param_dict, mytoken, groupids, hostids)
        timefrom = int(param_dict['lastChangeSince'])
        if 'lastChangeTill' in param_dict and timefrom == param_dict['lastChangeSince']:
            param_dict['lastChangeSince'] = 1514764800
            timefrom = 1514764800
        param_dict['expandDescription'] = 1
        param_dict['expandComment'] = 1
        param_dict['expandExpression'] = 1
        param_dict['monitored'] = 1
        main_dict = {
            "jsonrpc": "2.0",
            "method": "trigger.get",
            "params": param_dict,
            "auth": mytoken,
            "id": 5
        }
        #print("REQUEST: ", main_dict)
        res = requests.post(url, data=json.dumps(main_dict), headers={'content-type': 'application/json'})
        res = res.json()
        if len(res['result']) == 0:
            log_label.config(text="No results")
            bt_export.config(state='normal')
            token_logout(token)
            return
        if 'lastChangeTill' in param_dict:
            #threading.Thread(name='loading', target=LoadingLabel).start()
            threading.Thread(name='writedata', target=WriteData, args=(res['result'], mytoken, timefrom, param_dict['lastChangeTill'],)).start()
            #WriteData(res['result'], mytoken, timefrom, param_dict['lastChangeTill'])
        else:
            #threading.Thread(name='loading', target=LoadingLabel).start()
            threading.Thread(name='writedata', target=WriteData, args=(res['result'], mytoken, timefrom,)).start()
            #WriteData(res['result'], mytoken, timefrom)
        SetCredentials()
#-------------------------------------------------------------------------------------------<|
#########################################################################################################################################################




bt_export = tk.Button(root, text="Export",width=10, font=('Arial', 14), relief=GROOVE, cursor='hand2', bg='darkgrey', fg='darkred', command=StartExport)
bt_export.place(x=855, y=540)

try:
    myurl = ""
    myuser = ""
    mypass = ""
    run = 0
    opts, args = getopt.getopt(sys.argv[1:],"u:p:h:q:g:",["url=", "user=", "pass=", "hour=", "quit=", "autorun=", "utc=", "opendoc=", "host=", "group=", "onlyactive="])
    for opt, arg in opts:
        if opt in ("--url"):
            myurl = arg
        if opt in ("-u", "--user"):
            myuser = arg
        if opt in ("-p", "--pass"):
            mypass = arg
        if opt in ("-h", "--hour"):
            try:
                h = int(arg)
                vrad1.set(99)
            except:
                h = 0
        if opt in ("-q", "--quit"):
            quit_flag.set(1)
            qvar.set(1)
        if opt in ("--autorun"):
            run = 1
        if opt in ("--opendoc"):
            check_vardoc.set(1)
        if opt in ("--onlyactive"):
            var.set(1)
            Radio_sel()
        if opt in ("--utc"):
            try:
                value = arg
                if value[0] == "+" or value[0] == "-":
                    intval = int(value[1:])
                    utcvar.set(0)
                    lb_result.insert(END, "UTC: " + value)
                else:
                    print("UTC incorect format <example: +2>")
                    lab_utc_log.config(text="Incorect UTC format", fg='red')
            except:
                    print("UTC incorect format <example: +2>")
                    lab_utc_log.config(text="Incorect UTC format", fg='red')
        if opt in ("--host"):
            lb_result.insert(END, "HOST: " + arg)
        if opt in ("-g","--group"):
            lb_result.insert(END, "HOSTGROUP: " + arg)
    if len(myurl) > 0:
        entry_url.delete(0,len(entry_url.get()))
        entry_url.insert(0,myurl)
    if len(myuser) > 0:
        entry_user.delete(0,len(entry_user.get()))
        entry_user.insert(0,myuser)
    if len(mypass) > 0:
        entry_pass.delete(0,len(entry_pass.get()))
        entry_pass.insert(0,mypass)
    if run > 0:
        StartExport()
        root.iconify()
except getopt.GetoptError:
    run = 0





root.mainloop()