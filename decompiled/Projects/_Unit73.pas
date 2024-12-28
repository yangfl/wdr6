//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit73;

interface

uses
  SysUtils, Classes;

    //function sub_004CC40C(?:?; ?:?; ?:?):?;//004CC40C
    //function sub_004CC440(?:AnsiString; ?:?; ?:AnsiString):?;//004CC440
    //function sub_004CC62C(?:?):?;//004CC62C
    //function sub_004CC648(?:AnsiString):?;//004CC648

implementation

//004CC40C
{*function sub_004CC40C(?:?; ?:?; ?:?):?;
begin
 004CC40C    push        ebp
 004CC40D    mov         ebp,esp
 004CC40F    push        ecx
 004CC410    cmp         dword ptr [ebp+0C],1
>004CC414    jne         004CC430
 004CC416    cmp         dword ptr [ebp+14],0
>004CC41A    je          004CC430
 004CC41C    mov         eax,dword ptr [ebp+14]
 004CC41F    push        eax
 004CC420    push        1
 004CC422    push        466
 004CC427    mov         eax,dword ptr [ebp+8]
 004CC42A    push        eax
 004CC42B    call        user32.SendMessageA
 004CC430    xor         eax,eax
 004CC432    mov         dword ptr [ebp-4],eax
 004CC435    mov         eax,dword ptr [ebp-4]
 004CC438    pop         ecx
 004CC439    pop         ebp
 004CC43A    ret         10
end;*}

//004CC440
{*function sub_004CC440(?:AnsiString; ?:?; ?:AnsiString):?;
begin
 004CC440    push        ebp
 004CC441    mov         ebp,esp
 004CC443    add         esp,0FFFFFFAC
 004CC446    push        ebx
 004CC447    xor         ebx,ebx
 004CC449    mov         dword ptr [ebp-28],ebx
 004CC44C    mov         dword ptr [ebp-2C],ebx
 004CC44F    mov         dword ptr [ebp-0C],ecx
 004CC452    mov         dword ptr [ebp-8],edx
 004CC455    mov         dword ptr [ebp-4],eax
 004CC458    xor         eax,eax
 004CC45A    push        ebp
 004CC45B    push        4CC61C
 004CC460    push        dword ptr fs:[eax]
 004CC463    mov         dword ptr fs:[eax],esp
 004CC466    mov         byte ptr [ebp-0D],0
 004CC46A    mov         eax,dword ptr [ebp-0C]
 004CC46D    mov         eax,dword ptr [eax]
 004CC46F    call        004CC62C
 004CC474    test        al,al
>004CC476    jne         004CC480
 004CC478    mov         eax,dword ptr [ebp-0C]
 004CC47B    call        @LStrClr
 004CC480    lea         eax,[ebp-54]
 004CC483    xor         ecx,ecx
 004CC485    mov         edx,20
 004CC48A    call        @FillChar
 004CC48F    lea         eax,[ebp-28]
 004CC492    push        eax
 004CC493    call        shell32.SHGetMalloc
 004CC498    test        eax,eax
>004CC49A    jne         004CC5FE
 004CC4A0    cmp         dword ptr [ebp-28],0
>004CC4A4    je          004CC5FE
 004CC4AA    push        104
 004CC4AF    mov         eax,dword ptr [ebp-28]
 004CC4B2    push        eax
 004CC4B3    mov         eax,dword ptr [eax]
 004CC4B5    call        dword ptr [eax+0C]
 004CC4B8    mov         dword ptr [ebp-18],eax
 004CC4BB    xor         eax,eax
 004CC4BD    push        ebp
 004CC4BE    push        4CC5F7
 004CC4C3    push        dword ptr fs:[eax]
 004CC4C6    mov         dword ptr fs:[eax],esp
 004CC4C9    xor         eax,eax
 004CC4CB    mov         dword ptr [ebp-20],eax
 004CC4CE    mov         eax,dword ptr [ebp-8]
 004CC4D1    xor         edx,edx
 004CC4D3    call        @WStrCmp
>004CC4D8    je          004CC50E
 004CC4DA    lea         eax,[ebp-2C]
 004CC4DD    push        eax
 004CC4DE    call        shell32.SHGetDesktopFolder
 004CC4E3    lea         eax,[ebp-34]
 004CC4E6    push        eax
 004CC4E7    lea         eax,[ebp-20]
 004CC4EA    push        eax
 004CC4EB    lea         eax,[ebp-30]
 004CC4EE    push        eax
 004CC4EF    mov         eax,dword ptr [ebp-8]
 004CC4F2    call        @WStrToPWChar
 004CC4F7    push        eax
 004CC4F8    push        0
 004CC4FA    mov         eax,[0056E3C0];^Application:TApplication
 004CC4FF    mov         eax,dword ptr [eax]
 004CC501    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004CC504    push        eax
 004CC505    mov         eax,dword ptr [ebp-2C]
 004CC508    push        eax
 004CC509    mov         eax,dword ptr [eax]
 004CC50B    call        dword ptr [eax+0C]
 004CC50E    mov         eax,[0056E3C0];^Application:TApplication
 004CC513    mov         eax,dword ptr [eax]
 004CC515    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004CC518    mov         dword ptr [ebp-54],eax
 004CC51B    mov         eax,dword ptr [ebp-20]
 004CC51E    mov         dword ptr [ebp-50],eax
 004CC521    mov         eax,dword ptr [ebp-18]
 004CC524    mov         dword ptr [ebp-4C],eax
 004CC527    mov         eax,dword ptr [ebp-4]
 004CC52A    call        @LStrToPChar
 004CC52F    mov         dword ptr [ebp-48],eax
 004CC532    mov         dword ptr [ebp-44],1
 004CC539    mov         eax,dword ptr [ebp-0C]
 004CC53C    cmp         dword ptr [eax],0
>004CC53F    je          004CC555
 004CC541    mov         dword ptr [ebp-40],4CC40C;sub_004CC40C
 004CC548    mov         eax,dword ptr [ebp-0C]
 004CC54B    mov         eax,dword ptr [eax]
 004CC54D    call        @LStrToPChar
 004CC552    mov         dword ptr [ebp-3C],eax
 004CC555    xor         eax,eax
 004CC557    call        004A0240
 004CC55C    mov         dword ptr [ebp-14],eax
 004CC55F    push        1
 004CC561    call        kernel32.SetErrorMode
 004CC566    mov         dword ptr [ebp-1C],eax
 004CC569    xor         eax,eax
 004CC56B    push        ebp
 004CC56C    push        4CC5A2
 004CC571    push        dword ptr fs:[eax]
 004CC574    mov         dword ptr fs:[eax],esp
 004CC577    lea         eax,[ebp-54]
 004CC57A    push        eax
 004CC57B    call        shell32.SHBrowseForFolder
 004CC580    mov         dword ptr [ebp-24],eax
 004CC583    xor         eax,eax
 004CC585    pop         edx
 004CC586    pop         ecx
 004CC587    pop         ecx
 004CC588    mov         dword ptr fs:[eax],edx
 004CC58B    push        4CC5A9
 004CC590    mov         eax,dword ptr [ebp-1C]
 004CC593    push        eax
 004CC594    call        kernel32.SetErrorMode
 004CC599    mov         eax,dword ptr [ebp-14]
 004CC59C    call        004A02F8
 004CC5A1    ret
>004CC5A2    jmp         @HandleFinally
>004CC5A7    jmp         004CC590
 004CC5A9    cmp         dword ptr [ebp-24],0
 004CC5AD    setne       byte ptr [ebp-0D]
 004CC5B1    cmp         byte ptr [ebp-0D],0
>004CC5B5    je          004CC5DC
 004CC5B7    mov         eax,dword ptr [ebp-18]
 004CC5BA    push        eax
 004CC5BB    mov         eax,dword ptr [ebp-24]
 004CC5BE    push        eax
 004CC5BF    call        shell32.SHGetPathFromIDList
 004CC5C4    mov         eax,dword ptr [ebp-24]
 004CC5C7    push        eax
 004CC5C8    mov         eax,dword ptr [ebp-28]
 004CC5CB    push        eax
 004CC5CC    mov         eax,dword ptr [eax]
 004CC5CE    call        dword ptr [eax+14]
 004CC5D1    mov         eax,dword ptr [ebp-0C]
 004CC5D4    mov         edx,dword ptr [ebp-18]
 004CC5D7    call        @LStrFromPChar
 004CC5DC    xor         eax,eax
 004CC5DE    pop         edx
 004CC5DF    pop         ecx
 004CC5E0    pop         ecx
 004CC5E1    mov         dword ptr fs:[eax],edx
 004CC5E4    push        4CC5FE
 004CC5E9    mov         eax,dword ptr [ebp-18]
 004CC5EC    push        eax
 004CC5ED    mov         eax,dword ptr [ebp-28]
 004CC5F0    push        eax
 004CC5F1    mov         eax,dword ptr [eax]
 004CC5F3    call        dword ptr [eax+14]
 004CC5F6    ret
>004CC5F7    jmp         @HandleFinally
>004CC5FC    jmp         004CC5E9
 004CC5FE    xor         eax,eax
 004CC600    pop         edx
 004CC601    pop         ecx
 004CC602    pop         ecx
 004CC603    mov         dword ptr fs:[eax],edx
 004CC606    push        4CC623
 004CC60B    lea         eax,[ebp-2C]
 004CC60E    call        @IntfClear
 004CC613    lea         eax,[ebp-28]
 004CC616    call        @IntfClear
 004CC61B    ret
>004CC61C    jmp         @HandleFinally
>004CC621    jmp         004CC60B
 004CC623    mov         al,byte ptr [ebp-0D]
 004CC626    pop         ebx
 004CC627    mov         esp,ebp
 004CC629    pop         ebp
 004CC62A    ret
end;*}

//004CC62C
{*function sub_004CC62C(?:?):?;
begin
 004CC62C    push        ebp
 004CC62D    mov         ebp,esp
 004CC62F    add         esp,0FFFFFFF8
 004CC632    mov         dword ptr [ebp-4],eax
 004CC635    mov         eax,dword ptr [ebp-4]
 004CC638    call        0040C96C
 004CC63D    mov         byte ptr [ebp-5],al
 004CC640    mov         al,byte ptr [ebp-5]
 004CC643    pop         ecx
 004CC644    pop         ecx
 004CC645    pop         ebp
 004CC646    ret
end;*}

//004CC648
{*function sub_004CC648(?:AnsiString):?;
begin
 004CC648    push        ebp
 004CC649    mov         ebp,esp
 004CC64B    add         esp,0FFFFFFF8
 004CC64E    mov         dword ptr [ebp-4],eax
 004CC651    mov         eax,dword ptr [ebp-4]
 004CC654    call        0040C9A4
 004CC659    mov         byte ptr [ebp-5],al
 004CC65C    mov         al,byte ptr [ebp-5]
 004CC65F    pop         ecx
 004CC660    pop         ecx
 004CC661    pop         ebp
 004CC662    ret
end;*}

end.