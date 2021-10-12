#!/usr/bin/expect

set host_ip [lindex $argv 0]
set host_usr [lindex $argv 1]
set host_pwd [lindex $argv 2]
set host_port [lindex $argv 3]

spawn ssh $host_usr@$host_ip -p $host_port
set timeout 60
expect {
	-re "yes/no" {
		send "yes\n"
		exp_continue
	}
	-re "password" {
		send "$host_pwd\n"
	} 
}

# 设置保存的文件名及打开文件
set ofile "/root/HW_S3900/controllerinfo"
set output [open $ofile "w"]
set running 1
expect -re ">" { 
	send "showcontroller\r"
}

while { $running  > 0 } {
	expect {
		"\n" { 
			puts -nonewline $output "$expect_out(buffer)" 
		}
		-re "--More--" { 
			send " " 
		}
		-re ">" {
			send "exit\r"
			expect -re "y/n"
			send "y\r"
			expect eof
			#关闭文件
			close $output
			set running 0
		}
	}
}