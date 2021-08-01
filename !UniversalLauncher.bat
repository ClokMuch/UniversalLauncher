@echo off
::Universal Launcher

:::::::::参数设置开始:::::::::
::目标的程序名称
set target=Default
::目标的全名
set full_name=Default
::存在必须工具？是=1，否=0
set necessary=0
::必须工具程序名
set necessary_name=Default
::存在可选工具？是=1，否=0
set tool=1
::可选工具程序名
set tool_name=Trainer.exe
:::::::::参数设置结束:::::::::
goto welcome
:::::::::说明设置开始:::::::::
:necessary_describe
::必须工具的说明开始::
::必须工具的说明结束::
goto main_launch_2
:tool_describe
::可选工具的说明开始::
echo          可选工具为 Trainer ，适当使用本工具
echo      可增强游戏体验. 详细内容请参考工具说明.
::可选工具的说明结束::
:::::::::说明设置结束:::::::::
goto tool_check


:::::::::::更新区
:welcome
title %full_name% Launcher - Welcome
echo.
echo 准备启动 %full_name% ...
echo.
echo.
:welcome_1
if %tool%==1 (goto tool_describe)
:welcome_2
goto main_launch

:necessary
start %necessary_name%
goto welcome_2

:tool_check
title %full_name% Launcher - Ready
echo ___________________________________________________
echo.
echo            是否需要启动可选工具？
echo.
echo      [1]. 是，启动.
echo      [2]. 不，只启动主程序.
echo.
echo      输入其他内容或不输入时，不启动工具：

set choice=0
set /p choice=
if %choice%==1 (set tool=True) ELSE (set tool=0)
goto main_launch

:main_launch
cls
if %necessary%==1 (goto necessary_describe)
:main_launch_2
if %necessary%==1 (
                   start %necessary_name%
                   echo ___________________________________________________
                   )
if %tool%==0 (title %full_name% Launcher - Running...)
if %tool%==1 (title %full_name% Launcher - Without Tool - Running...)
if %tool%==True (title %full_name% Launcher -With Tool - Running...)
echo 正在运行：
echo         %full_name%
echo.
echo     请不要关闭本控制台，程序运行结束后控制台还有
echo 额外任务.
echo.
echo.
if %tool%==True (start %tool_name%)
if %necessary%==0 (
                   if %tool%==0 (
                                 echo 但对于本程序，控制台似乎不需要完成额外的任务.
                                 start %target%
                                 ping>nul -n 2 127.0.0.1
                                 exit
                                 )
                   )
start /WAIT %target%

:end
cls
title %full_name% Launcher
echo.
echo 程序运行结束，正在清理进程...
echo.
echo 控制台将在任务完成后自动退出.
echo.
if %necessary%==1 (taskkill /f /im %necessary_name%)
if %tool%==True (taskkill /f /im %tool_name%)

cls
echo 结束
if %tool%==True (
    echo.
    echo 注意：可选工具可能需要手动关闭！
    )
    
ping>nul -n 5 127.0.0.1
exit