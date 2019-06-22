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
title 카지노 로얄
color 46
cls
echo -----------------------------------------------------------------------------------
echo 제작자:홍성민, 블로그 주소:http://blog.naver.com/awidesky
echo 배포 가능하나 출처를 꼭 밝혀 주시기 바랍니다
echo 선택하실 때는 숫자를 적어주세요
echo -----------------------------------------------------------------------------------
pause
set mymoney=1000

:시작
cls
echo 카지노 로얄에 들어왔습니다.
echo 무엇을 하시겠습니까?
echo 1.슬롯머신 2.내돈확인 3.나가기 
set /p where=무엇을 할까? 
if %where%==1 goto 슬롯머신
if %where%==2 goto 내돈
if %where%==3 goto 나가기
goto 시작

:내돈
cls
echo 현재 소지금 : %mymoney% 달러!
pause
goto 시작

:슬롯머신
cls
if %mymoney%==0 goto 돈없음
echo 당신은 슬롯머신 앞에 앉았습니다.
set /p 판돈=몇 달러를 걸겠습니까? 
if %판돈% gtr %mymoney% goto 과다배팅
cls
echo %판돈%달러를 걸었습니다.
echo 실행하여 나온 세 숫자가 모두 같거나,
echo "123","789"처럼 연이어 반복돠는 숫자가 있으면 상금에 %판돈%배 한 돈을 얻습니다!
echo 아무 키나 누르면 시작합니다
pause>nul
set /a mymoney-=%판돈%
set /a a=%RANDOM% %% 7 + 1
set /a b=%RANDOM% %% 7 + 1
set /a c=%RANDOM% %% 7 + 1
set /a sec=1%time:~6,2%-100

:무한루프a
cls
echo.
echo  %a%
set /a now=1%time:~6,2%-100
set /a gap=%now%-%sec%
if %gap% == 2 goto 무한루프b
set /a a=%RANDOM% %% 7 + 1
goto 무한루프a

:무한루프b
cls
echo.
echo  %a%  %b%
set /a now=1%time:~6,2%-100
set /a gap=%now%-%sec%
if %gap% == 4 goto 무한루프c
set /a b=%RANDOM% %% 7 + 1
goto 무한루프b

:무한루프c
cls
echo.
echo  %a%  %b%  %c%
set /a now=1%time:~6,2%-100
set /a gap=%now%-%sec%
if %gap% == 6 goto 루프끝
set /a c=%RANDOM% %% 7 + 1
goto 무한루프c

:루프끝
pause>nul
if %a%==%b% (

	if %b%==%c% (

		goto 승리

	)

)
set /a x=%a%+1
set /a y=%c%-1
if %x%==%y% (

	if %x%==%b% (

		goto 스트레이트

	)

)
goto 실패

:실패
cls
echo 실패!
pause>nul
goto 슬롯머신끝

:과다배팅
echo 소지금보다 더 많은 돈을 배팅할 순 없습니다!
pause
goto 슬롯머신

:승리
cls
if %a%==7 goto jackpot
echo ---------------------------------------------------------------------------------------
echo 승리!
set /a win=100*%a%*%판돈%
echo 상금은 %win%달러 입니다!
echo ---------------------------------------------------------------------------------------
set /a mymoney+=%win%
pause>nul
goto 슬롯머신끝

:스트레이트
cls
echo 스트레이트!
set /a win=%c%*200
set /a win=%win%*%판돈%
echo 상금은 %win%달러입니다!
pause>nul
goto 슬롯머신끝

:jackpot
cls

:잭팟무한루프
echo 제에엑파아앗!!!!!!!!
set /a x+=1
if %x%==50 goto 루프끝
goto 잭팟무한루프

:루프끝
pause>nul
cls
set win=7777777*%판돈%
echo 잭팟입니다! 상금은 %win%달러입니다!
goto 슬롯머신끝

:슬롯머신끝
cls
echo 계속하시겠습니까?
set /p re=1.처음으로 2.슬롯머신 다시시작 
if %re%==1 goto 시작
if %re%==2 goto 슬롯머신
goto 슬롯머신끝

:돈없음
cls
echo 돈이 없습니다! 당신은 이제 빈털터리입니다!
pause>nul
goto 나가기

:나가기
cls
echo 안녕히 가십시오!
pause>nul
start http://blog.naver.com/awidesky
