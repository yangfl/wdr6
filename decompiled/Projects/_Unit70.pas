//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit70;

interface

uses
  SysUtils, Classes;

    function CloseServiceHandle:BOOL; stdcall;//004CB150
    function ControlService(dwControl:DWORD; var lpServiceStatus:_SERVICE_STATUS):BOOL; stdcall;//004CB158
    function CreateServiceA(lpServiceName:PAnsiChar; lpDisplayName:PAnsiChar; dwDesiredAccess:DWORD; dwServiceType:DWORD; dwStartType:DWORD; dwErrorControl:DWORD; lpBinaryPathName:PAnsiChar; lpLoadOrderGroup:PAnsiChar; lpdwTagId:LPDWORD; lpDependencies:PAnsiChar; lpServiceStartName:PAnsiChar; lpPassword:PAnsiChar):THandle; stdcall;//004CB160
    function DeleteService:BOOL; stdcall;//004CB168
    function OpenSCManagerA(lpDatabaseName:PAnsiChar; dwDesiredAccess:DWORD):THandle; stdcall;//004CB170
    function OpenServiceA(lpServiceName:PAnsiChar; dwDesiredAccess:DWORD):THandle; stdcall;//004CB178
    function StartServiceA(dwNumServiceArgs:DWORD; var lpServiceArgVectors:PAnsiChar):BOOL; stdcall;//004CB180

implementation

//004CB150
function advapi32.CloseServiceHandle:BOOL; stdcall;
begin
{*
 004CB150    jmp         dword ptr ds:[61C844]
*}
end;

//004CB158
function advapi32.ControlService(dwControl:DWORD; var lpServiceStatus:_SERVICE_STATUS):BOOL; stdcall;
begin
{*
 004CB158    jmp         dword ptr ds:[61C840]
*}
end;

//004CB160
function advapi32.CreateServiceA(lpServiceName:PAnsiChar; lpDisplayName:PAnsiChar; dwDesiredAccess:DWORD; dwServiceType:DWORD; dwStartType:DWORD; dwErrorControl:DWORD; lpBinaryPathName:PAnsiChar; lpLoadOrderGroup:PAnsiChar; lpdwTagId:LPDWORD; lpDependencies:PAnsiChar; lpServiceStartName:PAnsiChar; lpPassword:PAnsiChar):THandle; stdcall;
begin
{*
 004CB160    jmp         dword ptr ds:[61C83C]
*}
end;

//004CB168
function advapi32.DeleteService:BOOL; stdcall;
begin
{*
 004CB168    jmp         dword ptr ds:[61C838]
*}
end;

//004CB170
function advapi32.OpenSCManagerA(lpDatabaseName:PAnsiChar; dwDesiredAccess:DWORD):THandle; stdcall;
begin
{*
 004CB170    jmp         dword ptr ds:[61C834]
*}
end;

//004CB178
function advapi32.OpenServiceA(lpServiceName:PAnsiChar; dwDesiredAccess:DWORD):THandle; stdcall;
begin
{*
 004CB178    jmp         dword ptr ds:[61C830]
*}
end;

//004CB180
function advapi32.StartServiceA(dwNumServiceArgs:DWORD; var lpServiceArgVectors:PAnsiChar):BOOL; stdcall;
begin
{*
 004CB180    jmp         dword ptr ds:[61C82C]
*}
end;

end.