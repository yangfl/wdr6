//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit34;

interface

uses
  SysUtils, Classes;

    function ClosePrinter:BOOL; stdcall;//00439DCC
    function DocumentPropertiesA(hPrinter:THandle; pDeviceName:PAnsiChar; const pDevModeOutput:TDeviceModeA; var pDevModeInput:TDeviceModeA; fMode:DWORD):Longint; stdcall;//00439DD4
    function EnumPrintersA(Name:PAnsiChar; Level:DWORD; pPrinterEnum:Pointer; cbBuf:DWORD; var pcbNeeded:DWORD; var pcReturned:DWORD):BOOL; stdcall;//00439DDC
    function OpenPrinterA(var phPrinter:THandle; pDefault:PPrinterDefaultsA):BOOL; stdcall;//00439DE4

implementation

//00439DCC
function winspool.ClosePrinter:BOOL; stdcall;
begin
{*
 00439DCC    jmp         dword ptr ds:[61C7F0]
*}
end;

//00439DD4
function winspool.DocumentPropertiesA(hPrinter:THandle; pDeviceName:PAnsiChar; const pDevModeOutput:TDeviceModeA; var pDevModeInput:TDeviceModeA; fMode:DWORD):Longint; stdcall;
begin
{*
 00439DD4    jmp         dword ptr ds:[61C7EC]
*}
end;

//00439DDC
function winspool.EnumPrintersA(Name:PAnsiChar; Level:DWORD; pPrinterEnum:Pointer; cbBuf:DWORD; var pcbNeeded:DWORD; var pcReturned:DWORD):BOOL; stdcall;
begin
{*
 00439DDC    jmp         dword ptr ds:[61C7E8]
*}
end;

//00439DE4
function winspool.OpenPrinterA(var phPrinter:THandle; pDefault:PPrinterDefaultsA):BOOL; stdcall;
begin
{*
 00439DE4    jmp         dword ptr ds:[61C7E4]
*}
end;

end.