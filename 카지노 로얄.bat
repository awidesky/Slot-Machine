@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM  Companyname: 
REM  Productname: 
REM  Filedescription: 
REM  Copyrights: 
REM  Trademarks: 
REM  Originalname: 
REM  Comments: 
REM  Productversion:  0. 0. 0. 0
REM  Fileversion:  1. 0. 0. 0
REM  Internalname: 
REM  Appicon: fgjgfrj.ico
REM  AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off
title ī���� �ξ�
color 46
cls
echo -----------------------------------------------------------------------------------
echo ������:ȫ����, ��α� �ּ�:http://blog.naver.com/awidesky
echo ���� �����ϳ� ��ó�� �� ���� �ֽñ� �ٶ��ϴ�
echo �����Ͻ� ���� ���ڸ� �����ּ���
echo -----------------------------------------------------------------------------------
pause
set mymoney=1000

:����
cls
echo ī���� �ξ⿡ ���Խ��ϴ�.
echo ������ �Ͻðڽ��ϱ�?
echo 1.���Ըӽ� 2.����Ȯ�� 3.������ 
set /p where=������ �ұ�? 
if %where%==1 goto ���Ըӽ�
if %where%==2 goto ����
if %where%==3 goto ������
goto ����

:����
cls
echo ���� ������ : %mymoney% �޷�!
pause
goto ����

:���Ըӽ�
cls
if %mymoney%==0 goto ������
echo ���Ըӽ� �Դϴ�.
set /p �ǵ�=�� �޷��� �ɰڽ��ϱ�? 
if %�ǵ�% gtr %mymoney% goto ���ٹ���
cls
echo �ǵ��� %�ǵ�%�޷�.
echo �����Ͽ� ���� �� ���ڰ� ��� ���ų�,
echo "123","789"ó�� ���̾� �ݺ��´� ���ڰ� ������ ��ݿ� %�ǵ�%�� �� ���� ����ϴ�!
echo �ƹ� Ű�� ������ �����մϴ�
pause>nul
set /a mymoney-=%�ǵ�%
set /a a=%RANDOM% %% 7 + 1
set /a b=%RANDOM% %% 7 + 1
set /a c=%RANDOM% %% 7 + 1
set x = 0

:���ѷ���a
cls
echo.
echo  %a%
set /a x+=1
if %x%==17 goto ������a
set /a a=%RANDOM% %% 7 + 1
goto ���ѷ���a

:������a
set x=0

:���ѷ���b
cls
echo.
echo  %a%  %b%
set /a x+=1
if %x%==17 goto ������b
set /a b=%RANDOM% %% 7 + 1
goto ���ѷ���b

:������b
set x=0

:���ѷ���c
cls
echo.
echo  %a%  %b%  %c%
set /a x+=1
if %x%==17 goto ������c
set /a c=%RANDOM% %% 7 + 1
goto ���ѷ���c

:������c
set x=
pause>nul
if %a%==%b% (

	if %b%==%c% (

		goto �¸�

	)

)
set /a x=%a%+1
set /a y=%c%-1
if %x%==%y% (

	if %x%==%b% (

		goto ��Ʈ����Ʈ

	)

)
goto ����

:����
cls
echo ����!
pause>nul
goto ����

:���ٹ���
echo �����ݺ��� �� ���� ���� ������ �� �����ϴ�!
pause
goto ���Ըӽ�

:�¸�
cls
if %a%==7 goto jackpot
echo ---------------------------------------------------------------------------------------
echo �¸�!
set /a win=%a%*100
set /a win=%win%*%�ǵ�%
echo ����� %win%�޷� �Դϴ�!
echo ---------------------------------------------------------------------------------------
set /a mymoney+=%win%
pause>nul
goto ���Ըӽų�

:��Ʈ����Ʈ
cls
echo ��Ʈ����Ʈ!
set /a win=%c%*200
set /a win=%win%*%�ǵ�%
echo ����� %win%�޷��Դϴ�!
pause>nul
goto ���Ըӽų�

:jackpot
cls

:���̹��ѷ���
echo �������ľƾ�!!!!!!!!
set /a x+=1
if %x%==50 goto ������
goto ���̹��ѷ���

:������
pause>nul
cls
set win=7777777*%�ǵ�%
echo �����Դϴ�! ����� %win%�޷��Դϴ�!
goto ���Ըӽų�

:���Ըӽų�
cls
echo ����Ͻðڽ��ϱ�?
set /p re=1.ó������ 2.���Ըӽ� �ٽý��� 
if %re%==1 goto ����
if %re%==2 goto ���Ըӽ�
goto ���Ըӽų�

:������
cls
echo ���� �����ϴ�! ����� ���� �����͸��Դϴ�!
pause>nul
goto ������

:������
cls
echo �ȳ��� ���ʽÿ�!
pause>nul
start http://blog.naver.com/awidesky