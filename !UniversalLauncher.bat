@echo off
::Universal Launcher

:::::::::�������ÿ�ʼ:::::::::
::Ŀ��ĳ�������
set target=Default
::Ŀ���ȫ��
set full_name=Default
::���ڱ��빤�ߣ���=1����=0
set necessary=0
::���빤�߳�����
set necessary_name=Default
::���ڿ�ѡ���ߣ���=1����=0
set tool=1
::��ѡ���߳�����
set tool_name=Trainer.exe
:::::::::�������ý���:::::::::
goto welcome
:::::::::˵�����ÿ�ʼ:::::::::
:necessary_describe
::���빤�ߵ�˵����ʼ::
::���빤�ߵ�˵������::
goto main_launch_2
:tool_describe
::��ѡ���ߵ�˵����ʼ::
echo          ��ѡ����Ϊ Trainer ���ʵ�ʹ�ñ�����
echo      ����ǿ��Ϸ����. ��ϸ������ο�����˵��.
::��ѡ���ߵ�˵������::
:::::::::˵�����ý���:::::::::
goto tool_check


:::::::::::������
:welcome
title %full_name% Launcher - Welcome
echo.
echo ׼������ %full_name% ...
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
echo            �Ƿ���Ҫ������ѡ���ߣ�
echo.
echo      [1]. �ǣ�����.
echo      [2]. ����ֻ����������.
echo.
echo      �����������ݻ�����ʱ�����������ߣ�

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
echo �������У�
echo         %full_name%
echo.
echo     �벻Ҫ�رձ�����̨���������н��������̨����
echo ��������.
echo.
echo.
if %tool%==True (start %tool_name%)
if %necessary%==0 (
                   if %tool%==0 (
                                 echo �����ڱ����򣬿���̨�ƺ�����Ҫ��ɶ��������.
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
echo �������н����������������...
echo.
echo ����̨����������ɺ��Զ��˳�.
echo.
if %necessary%==1 (taskkill /f /im %necessary_name%)
if %tool%==True (taskkill /f /im %tool_name%)

cls
echo ����
if %tool%==True (
    echo.
    echo ע�⣺��ѡ���߿�����Ҫ�ֶ��رգ�
    )
    
ping>nul -n 5 127.0.0.1
exit