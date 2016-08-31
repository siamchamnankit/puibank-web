*** Settings ***
Library    Selenium2Library

*** Variables ***

*** TestCases ***
ทดสอบ คุณสมเกียรติโอนเงินให้คุณประธาน 20000 บาท สำเร็จ
  เปิดหน้าเวบสมเกียรติแบงค์
  กดปุ่ม transfer เพื่อโอนเงิน
  ยืนยันการโอนเงิน
  โอนเงินสำเร็จ

*** Keywords ***
เปิดหน้าเวบสมเกียรติแบงค์
  Open Browser    http://128.199.136.90/root/    gc

กดปุ่ม transfer เพื่อโอนเงิน
  Click Element    id = transfer

ยืนยันการโอนเงิน
  Textfield Value Should Be    id = txtName    ประธาน ด่านสกุลเจริญกิจ
  Textfield Value Should Be    id = txtAmount    20000
  Textfield Value Should Be    id = txtAcc     8472124235
  Click Element    id = btnConfirm

โอนเงินสำเร็จ
  Textfield Value Should Be    id = txtAvailable     80000
