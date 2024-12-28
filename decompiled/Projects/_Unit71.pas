//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit71;

interface

uses
  SysUtils, Classes;

    //function sub_004CB1C0(?:?; ?:?; ?:?; ?:?):?;//004CB1C0
    //function sub_004CB1F4:?;//004CB1F4
    //function sub_004CB214:?;//004CB214
    //function sub_004CB234:?;//004CB234
    //function sub_004CB254:?;//004CB254
    //function sub_004CB420:?;//004CB420
    //function sub_004CB554:?;//004CB554
    //function sub_004CB780:?;//004CB780

implementation

//004CB1C0
{*function sub_004CB1C0(?:?; ?:?; ?:?; ?:?):?;
begin
 004CB1C0    push        ebp
 004CB1C1    mov         ebp,esp
 004CB1C3    add         esp,0FFFFFFF0
 004CB1C6    mov         dword ptr [ebp-0C],ecx
 004CB1C9    mov         dword ptr [ebp-8],edx
 004CB1CC    mov         dword ptr [ebp-4],eax
 004CB1CF    mov         eax,dword ptr [ebp-4]
 004CB1D2    shl         eax,10
 004CB1D5    mov         edx,dword ptr [ebp+8]
 004CB1D8    shl         edx,0E
 004CB1DB    or          eax,edx
 004CB1DD    mov         edx,dword ptr [ebp-8]
 004CB1E0    shl         edx,2
 004CB1E3    or          eax,edx
 004CB1E5    or          eax,dword ptr [ebp-0C]
 004CB1E8    mov         dword ptr [ebp-10],eax
 004CB1EB    mov         eax,dword ptr [ebp-10]
 004CB1EE    mov         esp,ebp
 004CB1F0    pop         ebp
 004CB1F1    ret         4
end;*}

//004CB1F4
{*function sub_004CB1F4:?;
begin
 004CB1F4    push        ebp
 004CB1F5    mov         ebp,esp
 004CB1F7    push        ecx
 004CB1F8    push        0
 004CB1FA    xor         ecx,ecx
 004CB1FC    mov         edx,900
 004CB201    mov         eax,[0056CB9C];0x9C40 gvar_0056CB9C
 004CB206    call        004CB1C0
 004CB20B    mov         dword ptr [ebp-4],eax
 004CB20E    mov         eax,dword ptr [ebp-4]
 004CB211    pop         ecx
 004CB212    pop         ebp
 004CB213    ret
end;*}

//004CB214
{*function sub_004CB214:?;
begin
 004CB214    push        ebp
 004CB215    mov         ebp,esp
 004CB217    push        ecx
 004CB218    push        0
 004CB21A    xor         ecx,ecx
 004CB21C    mov         edx,901
 004CB221    mov         eax,[0056CB9C];0x9C40 gvar_0056CB9C
 004CB226    call        004CB1C0
 004CB22B    mov         dword ptr [ebp-4],eax
 004CB22E    mov         eax,dword ptr [ebp-4]
 004CB231    pop         ecx
 004CB232    pop         ebp
 004CB233    ret
end;*}

//004CB234
{*function sub_004CB234:?;
begin
 004CB234    push        ebp
 004CB235    mov         ebp,esp
 004CB237    push        ecx
 004CB238    push        0
 004CB23A    xor         ecx,ecx
 004CB23C    mov         edx,903
 004CB241    mov         eax,[0056CB9C];0x9C40 gvar_0056CB9C
 004CB246    call        004CB1C0
 004CB24B    mov         dword ptr [ebp-4],eax
 004CB24E    mov         eax,dword ptr [ebp-4]
 004CB251    pop         ecx
 004CB252    pop         ebp
 004CB253    ret
end;*}

//004CB254
{*function sub_004CB254:?;
begin
 004CB254    push        ebp
 004CB255    mov         ebp,esp
 004CB257    add         esp,0FFFFFFF4
 004CB25A    mov         byte ptr [ebp-1],0
 004CB25E    push        0
 004CB260    push        80
 004CB265    push        3
 004CB267    push        0
 004CB269    push        0
 004CB26B    push        80000000
 004CB270    push        4CB3B4;'\\.\PortTalk'
 004CB275    call        kernel32.CreateFileA
 004CB27A    mov         [00571EA4],eax;gvar_00571EA4:Integer
 004CB27F    cmp         dword ptr ds:[571EA4],0FFFFFFFF;gvar_00571EA4:Integer
>004CB286    jne         004CB2C1
 004CB288    call        004CB420
 004CB28D    push        0
 004CB28F    push        80
 004CB294    push        3
 004CB296    push        0
 004CB298    push        0
 004CB29A    push        80000000
 004CB29F    push        4CB3B4;'\\.\PortTalk'
 004CB2A4    call        kernel32.CreateFileA
 004CB2A9    mov         [00571EA4],eax;gvar_00571EA4:Integer
 004CB2AE    cmp         dword ptr ds:[571EA4],0FFFFFFFF;gvar_00571EA4:Integer
>004CB2B5    jne         004CB2C1
 004CB2B7    call        004CB420
>004CB2BC    jmp         004CB3AC
 004CB2C1    push        0
 004CB2C3    lea         eax,[ebp-8]
 004CB2C6    push        eax
 004CB2C7    push        0
 004CB2C9    push        0
 004CB2CB    push        0
 004CB2CD    push        0
 004CB2CF    call        004CB1F4
 004CB2D4    push        eax
 004CB2D5    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB2DA    push        eax
 004CB2DB    call        kernel32.DeviceIoControl
 004CB2E0    cmp         eax,1
 004CB2E3    sbb         eax,eax
 004CB2E5    inc         eax
 004CB2E6    mov         byte ptr [ebp-2],al
 004CB2E9    cmp         byte ptr [ebp-2],0
>004CB2ED    jne         004CB309
 004CB2EF    mov         eax,4CB3CC;'Can`t restrict access'
 004CB2F4    call        0043F8B4
 004CB2F9    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB2FE    push        eax
 004CB2FF    call        kernel32.CloseHandle
>004CB304    jmp         004CB3AC
 004CB309    push        0
 004CB30B    lea         eax,[ebp-8]
 004CB30E    push        eax
 004CB30F    push        0
 004CB311    push        0
 004CB313    push        0
 004CB315    push        0
 004CB317    call        004CB214
 004CB31C    push        eax
 004CB31D    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB322    push        eax
 004CB323    call        kernel32.DeviceIoControl
 004CB328    cmp         eax,1
 004CB32B    sbb         eax,eax
 004CB32D    inc         eax
 004CB32E    mov         byte ptr [ebp-2],al
 004CB331    cmp         byte ptr [ebp-2],0
>004CB335    jne         004CB34E
 004CB337    mov         eax,4CB3EC;'Can`t allow access'
 004CB33C    call        0043F8B4
 004CB341    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB346    push        eax
 004CB347    call        kernel32.CloseHandle
>004CB34C    jmp         004CB3AC
 004CB34E    call        kernel32.GetCurrentProcessId
 004CB353    mov         dword ptr [ebp-0C],eax
 004CB356    push        0
 004CB358    lea         eax,[ebp-8]
 004CB35B    push        eax
 004CB35C    push        0
 004CB35E    push        0
 004CB360    push        4
 004CB362    lea         eax,[ebp-0C]
 004CB365    push        eax
 004CB366    call        004CB234
 004CB36B    push        eax
 004CB36C    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB371    push        eax
 004CB372    call        kernel32.DeviceIoControl
 004CB377    cmp         eax,1
 004CB37A    sbb         eax,eax
 004CB37C    inc         eax
 004CB37D    mov         byte ptr [ebp-2],al
 004CB380    cmp         byte ptr [ebp-2],0
>004CB384    jne         004CB39D
 004CB386    mov         eax,4CB408;'Can`t IOMP on Process'
 004CB38B    call        0043F8B4
 004CB390    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB395    push        eax
 004CB396    call        kernel32.CloseHandle
>004CB39B    jmp         004CB3AC
 004CB39D    mov         eax,[00571EA4];0x0 gvar_00571EA4:Integer
 004CB3A2    push        eax
 004CB3A3    call        kernel32.CloseHandle
 004CB3A8    mov         byte ptr [ebp-1],1
 004CB3AC    mov         al,byte ptr [ebp-1]
 004CB3AF    mov         esp,ebp
 004CB3B1    pop         ebp
 004CB3B2    ret
end;*}

//004CB420
{*function sub_004CB420:?;
begin
 004CB420    push        ebp
 004CB421    mov         ebp,esp
 004CB423    add         esp,0FFFFFFEC
 004CB426    mov         byte ptr [ebp-1],0
 004CB42A    push        0F003F
 004CB42F    push        0
 004CB431    push        0
 004CB433    call        advapi32.OpenSCManagerA
 004CB438    mov         dword ptr [ebp-8],eax
 004CB43B    cmp         dword ptr [ebp-8],0
>004CB43F    jne         004CB45A
 004CB441    call        kernel32.GetLastError
 004CB446    cmp         eax,5
>004CB449    jne         004CB45A
 004CB44B    mov         eax,4CB504;'You must have administrator rights'
 004CB450    call        0043F8B4
>004CB455    jmp         004CB4F3
 004CB45A    push        0F01FF
 004CB45F    push        4CB528;'PortTalk'
 004CB464    mov         eax,dword ptr [ebp-8]
 004CB467    push        eax
 004CB468    call        advapi32.OpenServiceA
 004CB46D    mov         dword ptr [ebp-0C],eax
 004CB470    cmp         dword ptr [ebp-0C],0
>004CB474    jne         004CB4B5
 004CB476    call        kernel32.GetLastError
 004CB47B    sub         eax,5
>004CB47E    je          004CB48E
 004CB480    sub         eax,76
>004CB483    je          004CB49F
 004CB485    sub         eax,3A9
>004CB48A    je          004CB4B0
>004CB48C    jmp         004CB4B5
 004CB48E    mov         eax,4CB504;'You must have administrator rights'
 004CB493    call        0043F8B4
 004CB498    call        @Halt0
>004CB49D    jmp         004CB4B5
 004CB49F    mov         eax,4CB53C;'Invalid service name'
 004CB4A4    call        0043F8B4
 004CB4A9    call        @Halt0
>004CB4AE    jmp         004CB4B5
 004CB4B0    call        004CB554
 004CB4B5    lea         eax,[ebp-14]
 004CB4B8    push        eax
 004CB4B9    push        0
 004CB4BB    mov         eax,dword ptr [ebp-0C]
 004CB4BE    push        eax
 004CB4BF    call        advapi32.StartServiceA
 004CB4C4    test        eax,eax
>004CB4C6    je          004CB4CE
 004CB4C8    mov         byte ptr [ebp-1],1
>004CB4CC    jmp         004CB4F3
 004CB4CE    call        kernel32.GetLastError
 004CB4D3    mov         dword ptr [ebp-10],eax
 004CB4D6    cmp         dword ptr [ebp-10],420
>004CB4DD    je          004CB4F3
 004CB4DF    call        004CB554
>004CB4E4    jmp         004CB4F3
 004CB4E6    mov         eax,dword ptr [ebp-0C]
 004CB4E9    push        eax
 004CB4EA    call        advapi32.CloseServiceHandle
 004CB4EF    mov         byte ptr [ebp-1],1
 004CB4F3    mov         al,byte ptr [ebp-1]
 004CB4F6    mov         esp,ebp
 004CB4F8    pop         ebp
 004CB4F9    ret
end;*}

//004CB554
{*function sub_004CB554:?;
begin
 004CB554    push        ebp
 004CB555    mov         ebp,esp
 004CB557    add         esp,0FFFFFDF4
 004CB55D    mov         byte ptr [ebp-1],0
 004CB561    push        37
 004CB563    lea         eax,[ebp-20C]
 004CB569    push        eax
 004CB56A    call        kernel32.GetSystemDirectoryA
 004CB56F    test        eax,eax
>004CB571    jne         004CB582
 004CB573    mov         eax,4CB634;'Failed to get System Directory. Please manually copy driver to your system32...
 004CB578    call        0043F8B4
>004CB57D    jmp         004CB622
 004CB582    push        4CB694;'\Drivers\PortTalk.sys'
 004CB587    lea         eax,[ebp-20C]
 004CB58D    push        eax
 004CB58E    call        kernel32.lstrcat
 004CB593    push        0
 004CB595    lea         eax,[ebp-20C]
 004CB59B    push        eax
 004CB59C    push        4CB6AC;'PortTalk.sys'
 004CB5A1    call        kernel32.CopyFileA
 004CB5A6    test        eax,eax
>004CB5A8    jne         004CB5B6
 004CB5AA    mov         eax,4CB6C4;'Driver file not found. Please manually copy driver to your system32/driver d...
 004CB5AF    call        0043F8B4
>004CB5B4    jmp         004CB622
 004CB5B6    push        0F003F
 004CB5BB    push        0
 004CB5BD    push        0
 004CB5BF    call        advapi32.OpenSCManagerA
 004CB5C4    mov         dword ptr [ebp-8],eax
 004CB5C7    push        0
 004CB5C9    push        0
 004CB5CB    push        0
 004CB5CD    push        0
 004CB5CF    push        0
 004CB5D1    push        4CB71C;'System32\Drivers\PortTalk.sys'
 004CB5D6    push        1
 004CB5D8    push        3
 004CB5DA    push        1
 004CB5DC    push        0F01FF
 004CB5E1    push        4CB73C;'PortTalk'
 004CB5E6    push        4CB73C;'PortTalk'
 004CB5EB    mov         eax,dword ptr [ebp-8]
 004CB5EE    push        eax
 004CB5EF    call        advapi32.CreateServiceA
 004CB5F4    mov         dword ptr [ebp-0C],eax
 004CB5F7    cmp         dword ptr [ebp-0C],0
>004CB5FB    jne         004CB615
 004CB5FD    call        kernel32.GetLastError
 004CB602    cmp         eax,431
>004CB607    je          004CB622
 004CB609    mov         eax,4CB750;'Unknown error while creating PortTalk Service'
 004CB60E    call        0043F8B4
>004CB613    jmp         004CB622
 004CB615    mov         eax,dword ptr [ebp-0C]
 004CB618    push        eax
 004CB619    call        advapi32.CloseServiceHandle
 004CB61E    mov         byte ptr [ebp-1],1
 004CB622    mov         al,byte ptr [ebp-1]
 004CB625    mov         esp,ebp
 004CB627    pop         ebp
 004CB628    ret
end;*}

//004CB780
{*function sub_004CB780:?;
begin
 004CB780    push        ebp
 004CB781    mov         ebp,esp
 004CB783    add         esp,0FFFFFFD8
 004CB786    mov         byte ptr [ebp-1],1
 004CB78A    push        0F003F
 004CB78F    push        0
 004CB791    push        0
 004CB793    call        advapi32.OpenSCManagerA
 004CB798    mov         dword ptr [ebp-8],eax
 004CB79B    push        0F01FF
 004CB7A0    push        4CB828;'PortTalk'
 004CB7A5    mov         eax,dword ptr [ebp-8]
 004CB7A8    push        eax
 004CB7A9    call        advapi32.OpenServiceA
 004CB7AE    mov         dword ptr [ebp-0C],eax
 004CB7B1    cmp         dword ptr [ebp-0C],0
>004CB7B5    jne         004CB7C5
 004CB7B7    mov         eax,4CB83C;'Error while opening PortTalk service, has PortTalk been installed?'
 004CB7BC    call        0043F8B4
 004CB7C1    mov         byte ptr [ebp-1],0
 004CB7C5    lea         eax,[ebp-28]
 004CB7C8    push        eax
 004CB7C9    push        1
 004CB7CB    mov         eax,dword ptr [ebp-0C]
 004CB7CE    push        eax
 004CB7CF    call        advapi32.ControlService
 004CB7D4    test        eax,eax
>004CB7D6    je          004CB7DE
 004CB7D8    mov         byte ptr [ebp-1],1
>004CB7DC    jmp         004CB7EC
 004CB7DE    mov         byte ptr [ebp-1],0
 004CB7E2    mov         eax,4CB888;'Unknown error while stopping PortTalk service.'
 004CB7E7    call        0043F8B4
 004CB7EC    mov         eax,dword ptr [ebp-0C]
 004CB7EF    push        eax
 004CB7F0    call        advapi32.DeleteService
 004CB7F5    test        eax,eax
>004CB7F7    je          004CB7FF
 004CB7F9    mov         byte ptr [ebp-1],1
>004CB7FD    jmp         004CB80D
 004CB7FF    mov         eax,4CB8C0;'Error removing PortTalk service - PortTalk has NOT been successfully removed...
 004CB804    call        0043F8B4
 004CB809    mov         byte ptr [ebp-1],0
 004CB80D    mov         eax,dword ptr [ebp-0C]
 004CB810    push        eax
 004CB811    call        advapi32.CloseServiceHandle
 004CB816    mov         eax,dword ptr [ebp-8]
 004CB819    push        eax
 004CB81A    call        advapi32.CloseServiceHandle
 004CB81F    mov         al,byte ptr [ebp-1]
 004CB822    mov         esp,ebp
 004CB824    pop         ebp
 004CB825    ret
end;*}

end.