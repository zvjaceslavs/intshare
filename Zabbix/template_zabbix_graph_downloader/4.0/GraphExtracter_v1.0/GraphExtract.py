#!/usr/bin/python3
from tkinter import *
from pathlib import Path
import json
import os
import wget
import requests
import urllib
from datetime import datetime
import time
from time import gmtime, strftime
#------------------------------------------------------------------//
try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

#=======FUNCTIONS====================================================
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

#--------------------------------------------------------------------
def center_window(w=300, h=200):
    # get screen width and height
    ws = root.winfo_screenwidth()
    hs = root.winfo_screenheight()
    # calculate position x, y
    x = (ws/2) - (w/2)    
    y = (hs/2) - (h/2)
    root.geometry('%dx%d+%d+%d' % (w, h, x, y))
#--------------------------------------------------------------------
def CheckCredentials():
    if params_file.is_file():
        with open(params_file) as f:
            content = f.readlines()
        if content[0].find("URL") == 0:
            content[0] = content[0][6:len(content[0])-1]
            entry_url.insert(0, content[0])
        if content[1].find("USER") == 0:
            entry_user.insert(0, content[1][6:])
#--------------------------------------------------------------------
def SetCredentials():
    f = open(params_file, "w", encoding='utf8')
    s = "URL  |" + entry_url.get() + "\n"
    f.write(s)
    s = "USER |" + entry_user.get()
    f.write(s)
    f.close()
    return
#--------------------------------------------------------------------
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
        	url.set(test_url)
        	token = login_result['result']
        	zabbix_url = test_url
        	lab_conn_status.config(text="connected",fg='green')
        	global_token.set(token)
        	return token
    except:
        lab_conn_status.config(text="failed",fg='red')
        return 0

#--------------------------------------------------------------------
def Replace_dollar(name, key):
	count = name.count('$')
	args = key[key.find("[")+1:]
	args = args[:args.find("]")]
	if count > 0:
		args = args.split(',')
	for i in range(count):
		if name.find("$1") != (-1):
			name = name.replace("$1", args[0])
		if name.find("$2") != (-1):
			name = name.replace("$2", args[1])
		if name.find("$3") != (-1):
			name = name.replace("$3", args[2])
		if name.find("$4") != (-1):
			name = name.replace("$4", args[3])
		if name.find("$5") != (-1):
			name = name.replace("$5", args[4])
	return name

#--------------------------------------------------------------------
def Check_groups():
	hlist.set([])
	bt_host.config(bg='SkyBlue3')
	bt_group.config(bg='SkyBlue4')
	group_select.set(True)
	if len(groups_bck) > 0:
		l = list(groups_bck.keys())
		for i in range(len(l)):
			lb_host.insert(END, l[i])
		return
	token = Test_connection()
	if not token:
		bt_group.config(bg='SkyBlue3')
		return
	query = {
		"jsonrpc": "2.0",
		"method": "hostgroup.get",
		"params": {
			"output": ['name']
		},
		"auth": token,
		"id": 1
	}
	result = requests.post(url.get(), data=json.dumps(query), headers={'content-type': 'application/json'})
	result = result.json()
	if result['result']:
		for i in range(len(result['result'])):
			lb_host.insert(END, result['result'][i]['name'])
			groups_bck[result['result'][i]['name']] = result['result'][i]['groupid']
#--------------------------------------------------------------------
def Check_hosts():
	hlist.set([])
	bt_host.config(bg='SkyBlue4')
	bt_group.config(bg='SkyBlue3')
	group_select.set(False)
	if len(hosts_bck) > 0 and hflag.get() == 1:
		l = list(hosts_bck.keys())
		for i in range(len(l)):
			lb_host.insert(END, l[i])
		return
	token = Test_connection()
	if not token:
		bt_host.config(bg='SkyBlue3')
		return
	query = {
		"jsonrpc": "2.0",
		"method": "host.get",
		"params": {
			"output": ['name']
		},
		"auth": token,
		"id": 1
	}
	result = requests.post(url.get(), data=json.dumps(query), headers={'content-type': 'application/json'})
	result = result.json()
	if result['result']:
		hflag.set(1)
		for i in range(len(result['result'])):
			lb_host.insert(END, result['result'][i]['name'])
			hosts_bck[result['result'][i]['name']] = result['result'][i]['hostid']

#--------------------------------------------------------------------
def Check_graphs(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
        if value == "* [ back ]":
        	Check_groups()
        	return
    except:
        return
    hosgroup_param = {}
    if group_select.get():
    	hosgroup_param['groupids'] = groups_bck[value]
    	iradio.config(state='disabled')
    else:
    	hosgroup_param['hostids'] = hosts_bck[value]
    	iradio.config(state='normal')
    param = list(hosgroup_param.keys())   
    pvalue = hosgroup_param[param[0]]
    lab_tit0.config(text="[ " + value + " ]")
    query = {
    	"jsonrpc": "2.0",
    	"method": "graph.get",
    	"params": {
    		param[0]: pvalue,
    		"output": ["name"]
    	},
    	"auth": global_token.get(),
    	"id": 5
    }
    response = requests.post(url.get(), data=json.dumps(query), headers={'content-type': 'application/json'})
    response = response.json()
    ilist.set([])
    radiovar.set(1)
    elements_backup.clear()
    graph_bck.clear()
    if response['result']:
    	for i in range(len(response['result'])):
    		lb_item.insert(END, response['result'][i]['name'])
    		graph_bck[response['result'][i]['name']] = response['result'][i]['graphid']
    		elements_backup[response['result'][i]['name']] = response['result'][i]['graphid']

#--------------------------------------------------------------------
def Show_group_hosts(evt):
    w = evt.widget
    try:
        index = int(w.curselection()[0])
        value = w.get(index)
        query = {
			"jsonrpc": "2.0",
			"method": "host.get",
			"params": {
				"groupids": [groups_bck[value]],
				"output": ['name']
			},
			"auth": global_token.get(),
			"id": 6        	
        	}
        response = requests.post(url.get(), data=json.dumps(query), headers={'content-type': 'application/json'})
        response = response.json()
        if response['result']:
        	hlist.set([])
        	group_select.set(False)
        	bt_group.config(bg='SkyBlue3')
        	for i in range(len(response['result'])):
        		lb_host.insert(END, response['result'][i]['name'])
        		hosts_bck[response['result'][i]['name']] = response['result'][i]['hostid']
        	lb_host.insert(END, "* [ back ]")
    except:
        return

#--------------------------------------------------------------------
def Radio_item():
	lb_item.delete(0, END)
	name = lab_tit0.cget('text')
	name = name[2:len(name)-2]
	query = {
		"jsonrpc": "2.0",
		"method": "item.get",
		"params": {
			"hostids": [hosts_bck[name]],
			"output": ["name", "key_"]
		},
		"auth": global_token.get(),
		"id": 7
	}
	response = requests.post(url.get(), data=json.dumps(query), headers={'content-type': 'application/json'})
	response = response.json()
	if response['result']:
		for i in range(len(response['result'])):
			item_name = response['result'][i]['name']
			if item_name.find("$") != (-1):
				item_name = Replace_dollar(response['result'][i]['name'], response['result'][i]['key_'])
				lb_item.insert(END, item_name)
			else:
				lb_item.insert(END, response['result'][i]['name'])
			items_bck[item_name] = response['result'][i]['itemid']
			elements_backup[item_name] = response['result'][i]['itemid']

#--------------------------------------------------------------------
def Radio_graph():
	lb_item.delete(0, END)
	for i in graph_bck:
		lb_item.insert(END, i)
#--------------------------------------------------------------------
def update_list(event):
    search_term = filtvar.get()
    lbox_list = list(items_bck.keys())
    lb_item.delete(0, END)
    for item in lbox_list:
        if search_term.lower() in item.lower():
            lb_item.insert(END, item)
#--------------------------------------------------------------------
def Set_item(evt):
	item = ""
	w = evt.widget
	try:
		index = int(w.curselection()[0])
		value = w.get(index)
	except:
		return
	if radiovar.get() == 1:
		item = "[G]"
	else:
		if checkvar.get() == 1:
			item = "[*I]"
		else:
			item = "[I]"
	name = lab_tit0.cget('text')
	name = name[2:len(name)-2]
	item += "[" + value +"]"
	item += "[" + name + "]"
	item += "["+ elements_backup[value] + "]"
	if item not in res_list.get():
		lb_result.insert(END, item)
		if item[0:3] == "[G]":
			lb_result.itemconfig(END, fg='RoyalBlue4')
		else:
			if checkvar.get() == 1:
				lb_result.itemconfig(END, fg='saddle brown', bg='wheat1')
			else:
				lb_result.itemconfig(END, fg='saddle brown')

#--------------------------------------------------------------------
def Delete_item(evt):
	w = evt.widget
	try:
		index = int(w.curselection()[0])
		value = w.get(index)
		lb_result.delete(index)
	except:
		return
#--------------------------------------------------------------------
def UrlConstruct(baseurl, item_name):
	item = item_name.split("][")
	myurl = baseurl
	if item[0] == "[G":
		myurl += "chart2.php?"
		myurl += "graphid="
		myurl += item[3][:-1]
		myurl += "&from="
		myurl += entry_from.get()
		myurl += "&profileIdx=web.graphs.filter&to="
		myurl += entry_till.get()
		print(myurl)
		return myurl
	if item[0] == "[I":
		myurl += "chart.php?"
		myurl += "&itemids%5B"
		myurl += item[3][:-1]
		myurl += "%5D="
		myurl += item[3][:-1]
		myurl += "&amp&type=0&batch=1&from="
		myurl += entry_from.get()
		myurl += "&profileIdx=web.graphs.filter&to="
		myurl += entry_till.get()
		print(myurl)
		return myurl


#--------------------------------------------------------------------
def Concatenate():
	if checkvar.get() == 1:
		index = 0
		for item in res_list.get():
			if item[0:3] == "[I]":
				item = item.replace("[I]", "[*I]")
				lb_result.delete(index)
				lb_result.insert(index, item)
				lb_result.itemconfig(index, bg='wheat1', fg='saddle brown')
			index += 1
	if checkvar.get() == 0:
		index = 0
		for item in res_list.get():
			if item[0:4] == "[*I]":
				item = item.replace("[*I]", "[I]")
				lb_result.delete(index)
				lb_result.insert(index, item)
				lb_result.itemconfig(index, bg='white smoke', fg='saddle brown')
			index +=1
#--------------------------------------------------------------------
def Item_concatenate(evt):
	w = evt.widget
	try:
		index = int(w.curselection()[0])
		value = w.get(index)
		if value[0] == "[" and value[1] == "I" and value[2] == "]":
			value = value.replace("[I]", "[*I]")
			lb_result.delete(index)
			lb_result.insert(index, value)
			lb_result.itemconfig(index, bg='wheat1', fg='saddle brown')
		else:
			if value.find("[*I]") != (-1):
				value = value.replace("[*I]", "[I]")
				lb_result.delete(index)
				lb_result.insert(index,value)
				lb_result.itemconfig(index, bg='white smoke', fg='saddle brown')
	except:
		return
#--------------------------------------------------------------------
def filename_control(name):
	name = name.replace(":", " ")
	name = name.replace("/", " ")
	name = name.replace("\\", " ")
	name = name.replace("*", " ")
	name = name.replace("?", " ")
	name = name.replace("<", " ")
	name = name.replace(">", " ")
	name = name.replace("|", " ")
	name = name.replace("\"", "'")
	return name
#--------------------------------------------------------------------
def Single_download(baseurl, name, cookie):
	name = filename_control(name)
	req_url = UrlConstruct(baseurl, name)
	namesplit = name.split("][")
	actual_time = time.mktime(datetime.now().timetuple())
	gtb = strftime("%z", gmtime())
	gtb = int(gtb[1:3]) * 3600      #timezone +2
	pathname = "Graphs__"
	pathname += datetime.utcfromtimestamp(actual_time).strftime('%d_%m_%Y')

	img_file = pathname + "/" + datetime.utcfromtimestamp(actual_time + gtb).strftime('[%H_%M]')
	img_file += " " + namesplit[2] + " [" + namesplit[1] + "]"
	img_file += ".png"

	path = Path(pathname)
	if not os.path.isdir(path):
		os.mkdir(path)
	res = requests.get(req_url, cookies=cookie)
	res_code = res.status_code
	res_img = res.content
	with open(img_file, 'wb') as fp:
		fp.write(res_img)
#--------------------------------------------------------------------
def Multi_download(baseurl, item_list, cookie):
	hostnames = " "
	myurl = baseurl
	myurl += "chart.php?"
	for item in item_list:
		item = filename_control(item)
		ipart = item.split("][")
		if ipart[2] not in hostnames:
			hostnames += "[" + str(ipart[2]) + "]"
		myurl += "&itemids%5B"
		myurl += ipart[3][:-1]
		myurl += "%5D="
		myurl += ipart[3][:-1]
	myurl += "&amp&type=0&batch=1&from="
	myurl += entry_from.get()
	myurl += "&profileIdx=web.graphs.filter&to="
	myurl += entry_till.get()
	print(myurl)
	actual_time = time.mktime(datetime.now().timetuple())
	gtb = strftime("%z", gmtime())
	gtb = int(gtb[1:3]) * 3600      #timezone +2
	pathname = "Graphs__"
	pathname += datetime.utcfromtimestamp(actual_time).strftime('%d_%m_%Y')
	img_file = pathname + "/" + datetime.utcfromtimestamp(actual_time + gtb).strftime('[%H_%M]')
	img_file += hostnames
	img_file += " [Multi items].png"
	path = Path(pathname)
	if not os.path.isdir(path):
		os.mkdir(path)
	res = requests.get(myurl, cookies=cookie)
	res_code = res.status_code
	res_img = res.content
	with open(img_file, 'wb') as fp:
		fp.write(res_img)
#--------------------------------------------------------------------
def Extract():
	baseurl = url.get()
	if not baseurl:
		return
	baseurl = baseurl[:-15]
	if len(res_list.get()) == 0:
		return
	data_api = {"name": entry_user.get(), "password": entry_pass.get(), "enter": "Sign in"}
	req_cookie = requests.post(baseurl+"index.php?login=1/", data=data_api)
	cookie = req_cookie.cookies
	multi_item = []
	for item in res_list.get():
		if item[0:3] == "[G]" or item[0:3] == "[I]":
			Single_download(baseurl, item, cookie)
		if item[0:4] == "[*I]":
			multi_item.append(item)
	if len(multi_item) > 0:
		Multi_download(baseurl, multi_item, cookie)
	SetCredentials()
#--------------------------------------------------------------------
def Clear_field_from(object):
	entry_from.select_range(0,END)
#--------------------------------------------------------------------
def Clear_field_till(object):
	entry_till.select_range(0,END)
#========================================================END-FUNC===#

root = tk.Tk()
root.title("Zabbix Graphs Extractor    [ iulian-boss@mail.ru / iulix991@gmail.com ]");
center_window(1000, 600)
root.resizable(False,False)
root.config(bg='azure4')
#=====GLOBAL====================
params_file = Path(str(os.environ['USERPROFILE'])+ "\\AppData\\Roaming\\ZabbixGraphExporter.credentials")
groups_bck = {}
hosts_bck = {}
graph_bck = {}
items_bck = {}
elements_backup = {}
#================END GLOBAL=====
#----Local Variables----------------------------------------
hlist = tk.Variable()
ilist = tk.Variable()
graph_list = tk.Variable()
res_list = tk.Variable()
radiovar = tk.IntVar()
checkvar = tk.IntVar()
url = tk.StringVar()
global_token = StringVar()
filtvar = tk.StringVar()
group_select = tk.BooleanVar(False)
hflag = tk.IntVar(0)
fromvar = tk.StringVar()
tillvar = tk.StringVar()
#------------------------------------------------end local--

login_frame = tk.LabelFrame(root, text="Login setings",bg='azure4', padx=10, pady=10)
login_frame.place(x=10, y=10)
    
lab_url = tk.Label(login_frame, text="Url: ", bg='azure4')
lab_url.grid(row=0, column=0, sticky=tk.E)
entry_url = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1)
entry_url.grid(row=0, column=1, ipady=1, ipadx=30)

lab_user = tk.Label(login_frame, text="User: ", bg='azure4')
lab_user.grid(row=1, column=0, sticky=tk.E)
entry_user = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1)
entry_user.grid(row=1, column=1, ipady=1, ipadx=30)

lab_pass = tk.Label(login_frame, text="Password: ", bg='azure4')
lab_pass.grid(row=2, column=0, sticky=tk.E)
entry_pass = tk.Entry(login_frame, bd=1, bg="white", highlightbackground="#bebebe", highlightthickness=1, show="#")
entry_pass.grid(row=2, column=1, ipady=1, ipadx=30)

bt_test_conn = tk.Button(login_frame, text="test connection",command=Test_connection, relief=GROOVE, cursor="hand2", bg='SkyBlue3')
bt_test_conn.grid(row=3,column=1,sticky=tk.E, pady=5)

lab_conn_status = tk.Label(login_frame, bg='azure4')
lab_conn_status.place(x=70,y=90)
# Every row has a minimum size
login_frame.grid_rowconfigure(0, minsize=28)
login_frame.grid_rowconfigure(1, minsize=28)
login_frame.grid_rowconfigure(2, minsize=28)
#-------------------------------------------------------------end login frame--

bt_host = tk.Button(root, text='Check hosts', relief=GROOVE, cursor='hand2', width=16, bg='SkyBlue3', command=Check_hosts)
bt_host.place(x=160, y=180)

bt_group = tk.Button(root, text='Check groups', relief=GROOVE, cursor='hand2', width=16, bg='SkyBlue3', command=Check_groups)
bt_group.place(x=10, y=180)

lb_host = tk.Listbox(root, width=45, height=23, listvariable=hlist, bg='seashell2')
lb_host.place(x=10, y=210)


lb_host.bind('<Double-Button-1>', Check_graphs)
lb_host.bind('<Button-3>', Show_group_hosts)

gradio = tk.Radiobutton(root, text="Graphs", variable=radiovar, value=1, bg='azure4', fg='navy', command=Radio_graph)
gradio.place(x=300, y=30)
iradio = tk.Radiobutton(root, text="Items", variable=radiovar, value=2, bg='azure4', fg='navy', command=Radio_item)
iradio.place(x=380, y=30)

lb_item = tk.Listbox(root, width=56, height=32, listvariable=ilist, relief=GROOVE, bg='white smoke')
lb_item.place(x=300, y=63)
lb_item.bind('<Double-Button-1>', Set_item)

entry_filt = tk.Entry(root, relief=GROOVE, cursor='pencil', width=56, textvariable=filtvar, justify=CENTER, bg='azure3', highlightbackground='#bebebe')
entry_filt.place(x=300, y=10)
entry_filt.bind("<Key>", update_list)
add_placeholder_to(entry_filt, "filer...")

lab_tit0 = tk.Label(root, bg='azure4')
lab_tit0.place(x=450, y=40)

lab_tit1 = tk.Label(root, text="[                                    Selected Graphs                                  ]", bg='azure4')
lab_tit1.place(x=650, y=10)

lab_from = tk.Label(root, text="[ FROM ]", bg='azure4')
lab_from.place(x=650, y=40)
lab_till = tk.Label(root, text="[ TILL ]", bg='azure4')
lab_till.place(x=820, y=40)

entry_from = tk.Entry(root, relief=GROOVE, width=15, textvariable=fromvar, justify=CENTER, bg='azure3', fg='navy')
entry_from.place(x=705, y=40)
entry_till = tk.Entry(root, relief=GROOVE, width=15, textvariable=tillvar, justify=CENTER, bg='azure3', fg='navy')
entry_till.place(x=860, y=40)
entry_from.bind('<FocusIn>', Clear_field_from)
entry_till.bind('<FocusIn>', Clear_field_till)

entry_from.insert(0, "now-1h")
entry_till.insert(0, "now")

lb_result = tk.Listbox(root, width=50, height=28, listvariable=res_list, relief=GROOVE, bg='white smoke')
lb_result.place(x=650, y=63)
lb_result.bind('<Double-Button-1>', Item_concatenate)
lb_result.bind('<Button-3>', Delete_item)
lb_result.bind('<Double-Button-3>', Delete_item)


bt_extract = tk.Button(root, text="Extract Graphs", relief=GROOVE, cursor='hand2', width=42, bg='SkyBlue3', command=Extract)
bt_extract.place(x=650, y=550)

check_unit = tk.Checkbutton(root, text="Concatenate all items in single graph", variable=checkvar, bg='azure4', fg='navy', command=Concatenate)
check_unit.place(x=650, y=520)

CheckCredentials()
root.mainloop()