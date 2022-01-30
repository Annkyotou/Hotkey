tmp_path=f:\何でもないけど、何でもある\九工大留学的 各种资料手续    ;;; autohotkey 可以事先定义一些变量
idea_AUI=C:\Users\晏\Desktop\spare\AUI

!d::
IfWinNotExist ahk_class Chrome_WidgetWin_1
{
    Run GoogleChrome
    WinActivate
}
Else IfWinNotActive ahk_class Chrome_WidgetWin_1
{
    WinActivate
}
Else
{
    WinMinimize
}
Return


!c::
	inputBox,command,enter command															
	if ErrorLevel																			 
    	return	
    else
		if (command=="ff")			
			run %tmp_path%   ;;;打开指定文件夹 用两个百分号%%包围说明这是一个变量
		else if (command=="google")
			run http://www.google.com  ;;; 快速打开google
		else if (command=="c" || command=="d" || command=="e" || command=="f")
			run %command%:/   ;;快速打开这些盘
		else if (command=="aui")
			run %idea_AUI%     ;;快速打开AUI
		else if (command=="s")
			send 250114     ;;快速打开AUI
return

!w::Run C:\Users\晏\Desktop\spare\Wechat
!s:: send 250114
::/gm::annkyotou@gmail.com
::/bh::不好意思，刚才有点事。

!q::   ;; !->alt键  q->字母键k
Send {space}   ;;输入 空格键
Send {delete}	;输入delete键
Send {Up}   ;;输入 上 键
return


#IfWinActive ahk_class Chrome_WidgetWin_1
	;; 下面的语句块只在chrome中生效
{
!q::   ;; !->alt键  q->字母键k
Send {space}   ;;输入 空格键
Send {delete}	;输入delete键
Send {Up}   ;;输入 上 键
return
}


return

