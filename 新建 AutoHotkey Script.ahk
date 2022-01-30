tmp_path=f:\何でもないけど、何でもある\九工大留学的 各种资料手续    ;;; autohotkey 可以事先定义一些变量
idea_AUI=C:\Users\晏\Desktop\spare\AUI
!c::
	inputBox,command,enter command															
	if ErrorLevel																			 
    	return	
    else
		if (command=="tmp")			
			run %tmp_path%   ;;;打开指定文件夹 用两个百分号%%包围说明这是一个变量
		else if (command=="google")
			run http://www.google.com  ;;; 快速打开google
		else if (command=="c" || command=="d" || command=="e" || command=="f")
			run %command%:/   ;;快速打开这些盘
		else if (command=="aui")
			run %idea_AUI%     ;;快速打开AUI
return
