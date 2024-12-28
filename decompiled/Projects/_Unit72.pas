//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit72;

interface

uses
  SysUtils, Classes;

    //function sub_004CB948(?:Integer):?;//004CB948
    //function sub_004CB9F8(?:?; ?:?; ?:?):?;//004CB9F8
    //function sub_004CBB8C(?:?; ?:?; ?:?; ?:?):?;//004CBB8C
    //function sub_004CBCD4(?:?):?;//004CBCD4
    //function sub_004CBD38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CBD38
    //function sub_004CBFE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CBFE0
    //function sub_004CC058(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CC058
    //function sub_004CC0B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CC0B8
    //function sub_004CC128(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CC128
    //function sub_004CC194(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CC194
    //function sub_004CC2E0(?:?; ?:?; ?:?):?;//004CC2E0
    //function sub_004CC360(?:?; ?:?):?;//004CC360

implementation

//004CB948
{*function sub_004CB948(?:Integer):?;
begin
 004CB948    push        ebp
 004CB949    mov         ebp,esp
 004CB94B    add         esp,0FFFFFFF8
 004CB94E    mov         dword ptr [ebp-4],eax
 004CB951    mov         byte ptr [ebp-5],0A
 004CB955    mov         eax,dword ptr [ebp-4]
 004CB958    cmp         eax,0C0
>004CB95D    jg          004CB985
>004CB95F    je          004CB9CE
 004CB961    cmp         eax,52
>004CB964    jg          004CB979
>004CB966    je          004CB9B6
 004CB968    sub         eax,2
>004CB96B    jb          004CB9AA
 004CB96D    sub         eax,2
>004CB970    jb          004CB9B0
 004CB972    sub         eax,4B
>004CB975    je          004CB9BC
>004CB977    jmp         004CB9F0
 004CB979    sub         eax,57
>004CB97C    je          004CB9C2
 004CB97E    sub         eax,22
>004CB981    je          004CB9C8
>004CB983    jmp         004CB9F0
 004CB985    cmp         eax,0D6
>004CB98A    jg          004CB99A
>004CB98C    je          004CB9E0
 004CB98E    sub         eax,0D0
>004CB993    je          004CB9D4
 004CB995    dec         eax
>004CB996    je          004CB9DA
>004CB998    jmp         004CB9F0
 004CB99A    sub         eax,0DE
>004CB99F    je          004CB9E6
 004CB9A1    sub         eax,37F
>004CB9A6    je          004CB9EC
>004CB9A8    jmp         004CB9F0
 004CB9AA    mov         byte ptr [ebp-5],0
>004CB9AE    jmp         004CB9F0
 004CB9B0    mov         byte ptr [ebp-5],1
>004CB9B4    jmp         004CB9F0
 004CB9B6    mov         byte ptr [ebp-5],32
>004CB9BA    jmp         004CB9F0
 004CB9BC    mov         byte ptr [ebp-5],33
>004CB9C0    jmp         004CB9F0
 004CB9C2    mov         byte ptr [ebp-5],34
>004CB9C6    jmp         004CB9F0
 004CB9C8    mov         byte ptr [ebp-5],33
>004CB9CC    jmp         004CB9F0
 004CB9CE    mov         byte ptr [ebp-5],35
>004CB9D2    jmp         004CB9F0
 004CB9D4    mov         byte ptr [ebp-5],34
>004CB9D8    jmp         004CB9F0
 004CB9DA    mov         byte ptr [ebp-5],37
>004CB9DE    jmp         004CB9F0
 004CB9E0    mov         byte ptr [ebp-5],37
>004CB9E4    jmp         004CB9F0
 004CB9E6    mov         byte ptr [ebp-5],38
>004CB9EA    jmp         004CB9F0
 004CB9EC    mov         byte ptr [ebp-5],38
 004CB9F0    mov         al,byte ptr [ebp-5]
 004CB9F3    pop         ecx
 004CB9F4    pop         ecx
 004CB9F5    pop         ebp
 004CB9F6    ret
end;*}

//004CB9F8
{*function sub_004CB9F8(?:?; ?:?; ?:?):?;
begin
 004CB9F8    push        ebp
 004CB9F9    mov         ebp,esp
 004CB9FB    push        ecx
 004CB9FC    mov         byte ptr [ebp-3],cl
 004CB9FF    mov         byte ptr [ebp-2],dl
 004CBA02    mov         byte ptr [ebp-1],al
 004CBA05    mov         byte ptr [ebp-4],0A
 004CBA09    xor         eax,eax
 004CBA0B    mov         al,byte ptr [ebp-1]
 004CBA0E    cmp         eax,82
>004CBA13    jg          004CBA40
>004CBA15    je          004CBA7B
 004CBA17    cmp         eax,4
>004CBA1A    jg          004CBA31
>004CBA1C    je          004CBAA8
 004CBA22    sub         eax,2
>004CBA25    jb          004CBA57
 004CBA27    sub         eax,2
>004CBA2A    jb          004CBA60
>004CBA2C    jmp         004CBB85
 004CBA31    sub         eax,80
>004CBA36    je          004CBA69
 004CBA38    dec         eax
>004CBA39    je          004CBA72
>004CBA3B    jmp         004CBB85
 004CBA40    sub         eax,0E0
>004CBA45    je          004CBA84
 004CBA47    dec         eax
>004CBA48    je          004CBA8D
 004CBA4A    sub         eax,4
>004CBA4D    je          004CBA96
 004CBA4F    dec         eax
>004CBA50    je          004CBA9F
>004CBA52    jmp         004CBB85
 004CBA57    mov         byte ptr [ebp-4],0
>004CBA5B    jmp         004CBB85
 004CBA60    mov         byte ptr [ebp-4],1
>004CBA64    jmp         004CBB85
 004CBA69    mov         byte ptr [ebp-4],2
>004CBA6D    jmp         004CBB85
 004CBA72    mov         byte ptr [ebp-4],4
>004CBA76    jmp         004CBB85
 004CBA7B    mov         byte ptr [ebp-4],5
>004CBA7F    jmp         004CBB85
 004CBA84    mov         byte ptr [ebp-4],6
>004CBA88    jmp         004CBB85
 004CBA8D    mov         byte ptr [ebp-4],7
>004CBA91    jmp         004CBB85
 004CBA96    mov         byte ptr [ebp-4],8
>004CBA9A    jmp         004CBB85
 004CBA9F    mov         byte ptr [ebp-4],9
>004CBAA3    jmp         004CBB85
 004CBAA8    xor         eax,eax
 004CBAAA    mov         al,byte ptr [ebp-2]
 004CBAAD    cmp         eax,14
>004CBAB0    ja          004CBB85
 004CBAB6    jmp         dword ptr [eax*4+4CBABD]
 004CBAB6    dd          004CBB4D
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB11
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB17
 004CBAB6    dd          004CBB85
 004CBAB6    dd          004CBB1D
 004CBAB6    dd          004CBB23
 004CBAB6    dd          004CBB29
 004CBAB6    dd          004CBB2F
 004CBAB6    dd          004CBB35
 004CBAB6    dd          004CBB3B
 004CBAB6    dd          004CBB41
 004CBAB6    dd          004CBB47
 004CBB11    mov         byte ptr [ebp-4],0B
>004CBB15    jmp         004CBB85
 004CBB17    mov         byte ptr [ebp-4],0C
>004CBB1B    jmp         004CBB85
 004CBB1D    mov         byte ptr [ebp-4],0D
>004CBB21    jmp         004CBB85
 004CBB23    mov         byte ptr [ebp-4],0E
>004CBB27    jmp         004CBB85
 004CBB29    mov         byte ptr [ebp-4],0F
>004CBB2D    jmp         004CBB85
 004CBB2F    mov         byte ptr [ebp-4],10
>004CBB33    jmp         004CBB85
 004CBB35    mov         byte ptr [ebp-4],11
>004CBB39    jmp         004CBB85
 004CBB3B    mov         byte ptr [ebp-4],12
>004CBB3F    jmp         004CBB85
 004CBB41    mov         byte ptr [ebp-4],13
>004CBB45    jmp         004CBB85
 004CBB47    mov         byte ptr [ebp-4],14
>004CBB4B    jmp         004CBB85
 004CBB4D    xor         eax,eax
 004CBB4F    mov         al,byte ptr [ebp-3]
 004CBB52    cmp         eax,8
>004CBB55    jg          004CBB63
>004CBB57    je          004CBB75
 004CBB59    sub         eax,1
>004CBB5C    jb          004CBB6F
 004CBB5E    dec         eax
>004CBB5F    je          004CBB6F
>004CBB61    jmp         004CBB85
 004CBB63    sub         eax,18
>004CBB66    je          004CBB7B
 004CBB68    sub         eax,10
>004CBB6B    je          004CBB81
>004CBB6D    jmp         004CBB85
 004CBB6F    mov         byte ptr [ebp-4],15
>004CBB73    jmp         004CBB85
 004CBB75    mov         byte ptr [ebp-4],16
>004CBB79    jmp         004CBB85
 004CBB7B    mov         byte ptr [ebp-4],17
>004CBB7F    jmp         004CBB85
 004CBB81    mov         byte ptr [ebp-4],18
 004CBB85    mov         al,byte ptr [ebp-4]
 004CBB88    pop         ecx
 004CBB89    pop         ebp
 004CBB8A    ret
end;*}

//004CBB8C
{*function sub_004CBB8C(?:?; ?:?; ?:?; ?:?):?;
begin
 004CBB8C    push        ebp
 004CBB8D    mov         ebp,esp
 004CBB8F    push        ecx
 004CBB90    mov         byte ptr [ebp-3],cl
 004CBB93    mov         byte ptr [ebp-2],dl
 004CBB96    mov         byte ptr [ebp-1],al
 004CBB99    mov         cl,byte ptr [ebp-3]
 004CBB9C    mov         dl,byte ptr [ebp-2]
 004CBB9F    mov         al,byte ptr [ebp-1]
 004CBBA2    call        004CB9F8
 004CBBA7    mov         byte ptr [ebp-4],al
 004CBBAA    mov         eax,dword ptr [ebp+8]
 004CBBAD    cmp         byte ptr [eax],0
>004CBBB0    jne         004CBBBB
 004CBBB2    mov         byte ptr [ebp-4],0
>004CBBB6    jmp         004CBCC9
 004CBBBB    mov         eax,dword ptr [ebp+8]
 004CBBBE    mov         al,byte ptr [eax]
 004CBBC0    and         al,7E
 004CBBC2    cmp         al,70
>004CBBC4    je          004CBBCF
 004CBBC6    mov         byte ptr [ebp-4],1D
>004CBBCA    jmp         004CBCC9
 004CBBCF    mov         eax,dword ptr [ebp+8]
 004CBBD2    mov         al,byte ptr [eax+2]
 004CBBD5    and         al,0F
 004CBBD7    and         eax,0FF
 004CBBDC    cmp         eax,0F
>004CBBDF    ja          004CBCC9
 004CBBE5    jmp         dword ptr [eax*4+4CBBEC]
 004CBBE5    dd          004CBC2C
 004CBBE5    dd          004CBC71
 004CBBE5    dd          004CBC77
 004CBBE5    dd          004CBC7D
 004CBBE5    dd          004CBC83
 004CBBE5    dd          004CBC89
 004CBBE5    dd          004CBC8F
 004CBBE5    dd          004CBC95
 004CBBE5    dd          004CBC9B
 004CBBE5    dd          004CBCA1
 004CBBE5    dd          004CBCA7
 004CBBE5    dd          004CBCAD
 004CBBE5    dd          004CBCB3
 004CBBE5    dd          004CBCB9
 004CBBE5    dd          004CBCBF
 004CBBE5    dd          004CBCC5
 004CBC2C    mov         eax,dword ptr [ebp+8]
 004CBC2F    test        byte ptr [eax+2],80
>004CBC33    je          004CBC3E
 004CBC35    mov         byte ptr [ebp-4],1E
>004CBC39    jmp         004CBCC9
 004CBC3E    mov         eax,dword ptr [ebp+8]
 004CBC41    test        byte ptr [eax+2],40
>004CBC45    je          004CBC4D
 004CBC47    mov         byte ptr [ebp-4],1F
>004CBC4B    jmp         004CBCC9
 004CBC4D    mov         eax,dword ptr [ebp+8]
 004CBC50    test        byte ptr [eax+2],20
>004CBC54    je          004CBC5C
 004CBC56    mov         byte ptr [ebp-4],20
>004CBC5A    jmp         004CBCC9
 004CBC5C    mov         eax,dword ptr [ebp+8]
 004CBC5F    test        byte ptr [eax+3],80
>004CBC63    je          004CBC6B
 004CBC65    mov         byte ptr [ebp-4],21
>004CBC69    jmp         004CBCC9
 004CBC6B    mov         byte ptr [ebp-4],22
>004CBC6F    jmp         004CBCC9
 004CBC71    mov         byte ptr [ebp-4],23
>004CBC75    jmp         004CBCC9
 004CBC77    mov         byte ptr [ebp-4],24
>004CBC7B    jmp         004CBCC9
 004CBC7D    mov         byte ptr [ebp-4],25
>004CBC81    jmp         004CBCC9
 004CBC83    mov         byte ptr [ebp-4],26
>004CBC87    jmp         004CBCC9
 004CBC89    mov         byte ptr [ebp-4],27
>004CBC8D    jmp         004CBCC9
 004CBC8F    mov         byte ptr [ebp-4],28
>004CBC93    jmp         004CBCC9
 004CBC95    mov         byte ptr [ebp-4],29
>004CBC99    jmp         004CBCC9
 004CBC9B    mov         byte ptr [ebp-4],2A
>004CBC9F    jmp         004CBCC9
 004CBCA1    mov         byte ptr [ebp-4],2B
>004CBCA5    jmp         004CBCC9
 004CBCA7    mov         byte ptr [ebp-4],2C
>004CBCAB    jmp         004CBCC9
 004CBCAD    mov         byte ptr [ebp-4],2D
>004CBCB1    jmp         004CBCC9
 004CBCB3    mov         byte ptr [ebp-4],2E
>004CBCB7    jmp         004CBCC9
 004CBCB9    mov         byte ptr [ebp-4],2F
>004CBCBD    jmp         004CBCC9
 004CBCBF    mov         byte ptr [ebp-4],30
>004CBCC3    jmp         004CBCC9
 004CBCC5    mov         byte ptr [ebp-4],31
 004CBCC9    mov         al,byte ptr [ebp-4]
 004CBCCC    pop         ecx
 004CBCCD    pop         ebp
 004CBCCE    ret         4
end;*}

//004CBCD4
{*function sub_004CBCD4(?:?):?;
begin
 004CBCD4    push        ebp
 004CBCD5    mov         ebp,esp
 004CBCD7    add         esp,0FFFFFFF8
 004CBCDA    mov         dword ptr [ebp-4],eax
 004CBCDD    mov         eax,dword ptr [ebp-4]
 004CBCE0    call        @LStrAddRef
 004CBCE5    xor         eax,eax
 004CBCE7    push        ebp
 004CBCE8    push        4CBD29
 004CBCED    push        dword ptr fs:[eax]
 004CBCF0    mov         dword ptr fs:[eax],esp
 004CBCF3    push        0
 004CBCF5    push        0
 004CBCF7    push        3
 004CBCF9    push        0
 004CBCFB    push        3
 004CBCFD    push        0C0000000
 004CBD02    mov         eax,dword ptr [ebp-4]
 004CBD05    call        @LStrToPChar
 004CBD0A    push        eax
 004CBD0B    call        kernel32.CreateFileA
 004CBD10    mov         dword ptr [ebp-8],eax
 004CBD13    xor         eax,eax
 004CBD15    pop         edx
 004CBD16    pop         ecx
 004CBD17    pop         ecx
 004CBD18    mov         dword ptr fs:[eax],edx
 004CBD1B    push        4CBD30
 004CBD20    lea         eax,[ebp-4]
 004CBD23    call        @LStrClr
 004CBD28    ret
>004CBD29    jmp         @HandleFinally
>004CBD2E    jmp         004CBD20
 004CBD30    mov         eax,dword ptr [ebp-8]
 004CBD33    pop         ecx
 004CBD34    pop         ecx
 004CBD35    pop         ebp
 004CBD36    ret
end;*}

//004CBD38
{*function sub_004CBD38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CBD38    push        ebp
 004CBD39    mov         ebp,esp
 004CBD3B    add         esp,0FFFFFFD4
 004CBD3E    mov         dword ptr [ebp-0C],ecx
 004CBD41    mov         dword ptr [ebp-8],edx
 004CBD44    mov         dword ptr [ebp-4],eax
 004CBD47    cmp         dword ptr [ebp-4],0FFFFFFFF
>004CBD4B    jne         004CBD56
 004CBD4D    mov         byte ptr [ebp-0D],5
>004CBD51    jmp         004CBFD5
 004CBD56    xor         eax,eax
 004CBD58    mov         dword ptr [ebp-20],eax
 004CBD5B    xor         eax,eax
 004CBD5D    mov         dword ptr [ebp-24],eax
 004CBD60    mov         eax,dword ptr [ebp+10]
 004CBD63    add         eax,50
 004CBD66    call        @GetMem
 004CBD6B    mov         dword ptr [ebp-14],eax
 004CBD6E    xor         eax,eax
 004CBD70    push        ebp
 004CBD71    push        4CBFCE
 004CBD76    push        dword ptr fs:[eax]
 004CBD79    mov         dword ptr fs:[eax],esp
 004CBD7C    mov         edx,dword ptr [ebp+10]
 004CBD7F    add         edx,50
 004CBD82    mov         eax,dword ptr [ebp-14]
 004CBD85    xor         ecx,ecx
 004CBD87    call        @FillChar
 004CBD8C    mov         eax,dword ptr [ebp-14]
 004CBD8F    mov         dword ptr [ebp-18],eax
 004CBD92    add         dword ptr [ebp-18],50
 004CBD96    mov         eax,dword ptr [ebp+8]
 004CBD99    xor         edx,edx
 004CBD9B    mov         dword ptr [eax+8C],edx
 004CBDA1    mov         byte ptr [ebp-0D],0
 004CBDA5    mov         eax,dword ptr [ebp-14]
 004CBDA8    mov         dword ptr [ebp-2C],eax
 004CBDAB    mov         eax,dword ptr [ebp-2C]
 004CBDAE    mov         word ptr [eax],2C
 004CBDB3    mov         eax,dword ptr [ebp-2C]
 004CBDB6    mov         byte ptr [eax+3],0
 004CBDBA    mov         eax,dword ptr [ebp-2C]
 004CBDBD    mov         byte ptr [eax+4],1
 004CBDC1    mov         eax,dword ptr [ebp-2C]
 004CBDC4    mov         byte ptr [eax+5],0
 004CBDC8    mov         al,byte ptr [ebp-0C]
 004CBDCB    mov         edx,dword ptr [ebp-2C]
 004CBDCE    mov         byte ptr [edx+6],al
 004CBDD1    mov         eax,dword ptr [ebp-2C]
 004CBDD4    mov         byte ptr [eax+7],18
 004CBDD8    mov         eax,dword ptr [ebp-2C]
 004CBDDB    mov         edx,dword ptr [ebp+10]
 004CBDDE    mov         dword ptr [eax+0C],edx
 004CBDE1    mov         eax,dword ptr [ebp+8]
 004CBDE4    mov         eax,dword ptr [eax]
 004CBDE6    mov         edx,dword ptr [ebp-2C]
 004CBDE9    mov         dword ptr [edx+10],eax
 004CBDEC    mov         eax,dword ptr [ebp-2C]
 004CBDEF    mov         dword ptr [eax+14],50
 004CBDF6    mov         eax,dword ptr [ebp-2C]
 004CBDF9    mov         dword ptr [eax+18],30
 004CBE00    mov         eax,dword ptr [ebp-2C]
 004CBE03    lea         edx,[eax+1C]
 004CBE06    mov         eax,dword ptr [ebp-8]
 004CBE09    mov         ecx,dword ptr [ebp-0C]
 004CBE0C    call        Move
 004CBE11    mov         eax,dword ptr [ebp+0C]
 004CBE14    sub         eax,1
>004CBE17    jb          004CBE25
 004CBE19    sub         eax,7
>004CBE1C    je          004CBE3C
 004CBE1E    sub         eax,8
>004CBE21    je          004CBE62
>004CBE23    jmp         004CBE89
 004CBE25    mov         eax,dword ptr [ebp-14]
 004CBE28    mov         byte ptr [eax+8],2
 004CBE2C    mov         dword ptr [ebp-20],50
 004CBE33    mov         dword ptr [ebp-24],2C
>004CBE3A    jmp         004CBE90
 004CBE3C    mov         eax,dword ptr [ebp-14]
 004CBE3F    mov         byte ptr [eax+8],1
 004CBE43    mov         eax,dword ptr [ebp+10]
 004CBE46    add         eax,50
 004CBE49    mov         dword ptr [ebp-20],eax
 004CBE4C    mov         dword ptr [ebp-24],50
 004CBE53    mov         eax,dword ptr [ebp-18]
 004CBE56    xor         ecx,ecx
 004CBE58    mov         edx,dword ptr [ebp+10]
 004CBE5B    call        @FillChar
>004CBE60    jmp         004CBE90
 004CBE62    mov         eax,dword ptr [ebp-14]
 004CBE65    mov         byte ptr [eax+8],0
 004CBE69    mov         dword ptr [ebp-20],50
 004CBE70    mov         eax,dword ptr [ebp+10]
 004CBE73    add         eax,50
 004CBE76    mov         dword ptr [ebp-24],eax
 004CBE79    mov         edx,dword ptr [ebp-18]
 004CBE7C    mov         eax,dword ptr [ebp+14]
 004CBE7F    mov         ecx,dword ptr [ebp+10]
 004CBE82    call        Move
>004CBE87    jmp         004CBE90
 004CBE89    mov         eax,dword ptr [ebp-14]
 004CBE8C    mov         byte ptr [eax+8],1
 004CBE90    push        0
 004CBE92    call        kernel32.SetLastError
 004CBE97    mov         eax,dword ptr [ebp+8]
 004CBE9A    xor         edx,edx
 004CBE9C    mov         dword ptr [eax+88],edx
 004CBEA2    mov         eax,dword ptr [ebp+8]
 004CBEA5    mov         byte ptr [eax+84],0
 004CBEAC    push        0
 004CBEAE    lea         eax,[ebp-1C]
 004CBEB1    push        eax
 004CBEB2    mov         eax,dword ptr [ebp-20]
 004CBEB5    push        eax
 004CBEB6    mov         eax,dword ptr [ebp-14]
 004CBEB9    push        eax
 004CBEBA    mov         eax,dword ptr [ebp-24]
 004CBEBD    push        eax
 004CBEBE    mov         eax,dword ptr [ebp-14]
 004CBEC1    push        eax
 004CBEC2    push        4D004
 004CBEC7    mov         eax,dword ptr [ebp-4]
 004CBECA    push        eax
 004CBECB    call        kernel32.DeviceIoControl
 004CBED0    test        eax,eax
>004CBED2    je          004CBF86
 004CBED8    mov         eax,dword ptr [ebp-14]
 004CBEDB    mov         al,byte ptr [eax+2]
 004CBEDE    mov         edx,dword ptr [ebp+8]
 004CBEE1    mov         byte ptr [edx+84],al
 004CBEE7    mov         eax,dword ptr [ebp-14]
 004CBEEA    cmp         byte ptr [eax+2],0
>004CBEEE    jne         004CBF32
 004CBEF0    mov         edx,dword ptr [ebp+8]
 004CBEF3    add         edx,4
 004CBEF6    mov         eax,dword ptr [ebp-14]
 004CBEF9    add         eax,30
 004CBEFC    mov         ecx,80
 004CBF01    call        Move
 004CBF06    mov         edx,dword ptr [ebp+14]
 004CBF09    mov         eax,dword ptr [ebp-18]
 004CBF0C    mov         ecx,dword ptr [ebp+10]
 004CBF0F    call        Move
 004CBF14    cmp         dword ptr [ebp-1C],50
>004CBF18    jb          004CBFB8
 004CBF1E    mov         eax,dword ptr [ebp-1C]
 004CBF21    sub         eax,50
 004CBF24    mov         edx,dword ptr [ebp+8]
 004CBF27    mov         dword ptr [edx+8C],eax
>004CBF2D    jmp         004CBFB8
 004CBF32    mov         edx,dword ptr [ebp+14]
 004CBF35    mov         eax,dword ptr [ebp-18]
 004CBF38    mov         ecx,dword ptr [ebp+10]
 004CBF3B    call        Move
 004CBF40    cmp         dword ptr [ebp-1C],50
>004CBF44    jb          004CBF55
 004CBF46    mov         eax,dword ptr [ebp-1C]
 004CBF49    sub         eax,50
 004CBF4C    mov         edx,dword ptr [ebp+8]
 004CBF4F    mov         dword ptr [edx+8C],eax
 004CBF55    mov         edx,dword ptr [ebp+8]
 004CBF58    add         edx,4
 004CBF5B    mov         eax,dword ptr [ebp-14]
 004CBF5E    add         eax,30
 004CBF61    mov         ecx,80
 004CBF66    call        Move
 004CBF6B    mov         eax,dword ptr [ebp+8]
 004CBF6E    add         eax,4
 004CBF71    push        eax
 004CBF72    mov         eax,dword ptr [ebp-14]
 004CBF75    mov         al,byte ptr [eax+2]
 004CBF78    xor         ecx,ecx
 004CBF7A    xor         edx,edx
 004CBF7C    call        004CBB8C
 004CBF81    mov         byte ptr [ebp-0D],al
>004CBF84    jmp         004CBFB8
 004CBF86    call        kernel32.GetLastError
 004CBF8B    mov         dword ptr [ebp-28],eax
 004CBF8E    mov         eax,dword ptr [ebp+8]
 004CBF91    mov         edx,dword ptr [ebp-28]
 004CBF94    mov         dword ptr [eax+88],edx
 004CBF9A    mov         eax,dword ptr [ebp-28]
 004CBF9D    call        004CB948
 004CBFA2    mov         byte ptr [ebp-0D],al
 004CBFA5    mov         edx,dword ptr [ebp+8]
 004CBFA8    add         edx,4
 004CBFAB    lea         eax,[ebp-28]
 004CBFAE    mov         ecx,4
 004CBFB3    call        Move
 004CBFB8    xor         eax,eax
 004CBFBA    pop         edx
 004CBFBB    pop         ecx
 004CBFBC    pop         ecx
 004CBFBD    mov         dword ptr fs:[eax],edx
 004CBFC0    push        4CBFD5
 004CBFC5    mov         eax,dword ptr [ebp-14]
 004CBFC8    call        @FreeMem
 004CBFCD    ret
>004CBFCE    jmp         @HandleFinally
>004CBFD3    jmp         004CBFC5
 004CBFD5    mov         al,byte ptr [ebp-0D]
 004CBFD8    mov         esp,ebp
 004CBFDA    pop         ebp
 004CBFDB    ret         10
end;*}

//004CBFE0
{*function sub_004CBFE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CBFE0    push        ebp
 004CBFE1    mov         ebp,esp
 004CBFE3    add         esp,0FFFFFFEC
 004CBFE6    mov         byte ptr [ebp-6],cl
 004CBFE9    mov         byte ptr [ebp-5],dl
 004CBFEC    mov         dword ptr [ebp-4],eax
 004CBFEF    mov         al,byte ptr [ebp+18]
 004CBFF2    mov         byte ptr [ebp-8],al
 004CBFF5    mov         al,byte ptr [ebp+1C]
 004CBFF8    mov         byte ptr [ebp-9],al
 004CBFFB    mov         al,byte ptr [ebp+20]
 004CBFFE    mov         byte ptr [ebp-0A],al
 004CC001    mov         al,byte ptr [ebp+24]
 004CC004    mov         byte ptr [ebp-0B],al
 004CC007    mov         al,byte ptr [ebp+28]
 004CC00A    mov         byte ptr [ebp-0C],al
 004CC00D    mov         al,byte ptr [ebp+2C]
 004CC010    mov         byte ptr [ebp-0D],al
 004CC013    mov         al,byte ptr [ebp+30]
 004CC016    mov         byte ptr [ebp-0E],al
 004CC019    mov         al,byte ptr [ebp+34]
 004CC01C    mov         byte ptr [ebp-0F],al
 004CC01F    mov         al,byte ptr [ebp-6]
 004CC022    mov         byte ptr [ebp-10],al
 004CC025    mov         al,byte ptr [ebp-5]
 004CC028    mov         byte ptr [ebp-11],al
 004CC02B    mov         eax,dword ptr [ebp+14]
 004CC02E    push        eax
 004CC02F    mov         eax,dword ptr [ebp+10]
 004CC032    push        eax
 004CC033    mov         eax,dword ptr [ebp+0C]
 004CC036    push        eax
 004CC037    mov         eax,dword ptr [ebp+8]
 004CC03A    push        eax
 004CC03B    lea         edx,[ebp-11]
 004CC03E    mov         ecx,0A
 004CC043    mov         eax,dword ptr [ebp-4]
 004CC046    call        004CBD38
 004CC04B    mov         byte ptr [ebp-7],al
 004CC04E    mov         al,byte ptr [ebp-7]
 004CC051    mov         esp,ebp
 004CC053    pop         ebp
 004CC054    ret         30
end;*}

//004CC058
{*function sub_004CC058(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CC058    push        ebp
 004CC059    mov         ebp,esp
 004CC05B    add         esp,0FFFFFFF8
 004CC05E    mov         byte ptr [ebp-3],cl
 004CC061    mov         byte ptr [ebp-2],dl
 004CC064    mov         byte ptr [ebp-1],al
 004CC067    mov         byte ptr [ebp-4],0
 004CC06B    push        0
 004CC06D    mov         al,byte ptr [ebp-1]
 004CC070    push        eax
 004CC071    mov         al,byte ptr [ebp-2]
 004CC074    push        eax
 004CC075    mov         al,byte ptr [ebp-3]
 004CC078    push        eax
 004CC079    mov         al,byte ptr [ebp+14]
 004CC07C    push        eax
 004CC07D    mov         al,byte ptr [ebp+10]
 004CC080    push        eax
 004CC081    mov         al,byte ptr [ebp+0C]
 004CC084    push        eax
 004CC085    mov         al,byte ptr [ebp+8]
 004CC088    push        eax
 004CC089    push        0
 004CC08B    push        0
 004CC08D    push        0
 004CC08F    push        56CBA0
 004CC094    mov         cl,6
 004CC096    mov         dl,0A1
 004CC098    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC09D    call        004CBFE0
 004CC0A2    mov         byte ptr [ebp-5],al
 004CC0A5    cmp         byte ptr [ebp-5],0
>004CC0A9    jne         004CC0AF
 004CC0AB    mov         byte ptr [ebp-4],1
 004CC0AF    mov         al,byte ptr [ebp-4]
 004CC0B2    pop         ecx
 004CC0B3    pop         ecx
 004CC0B4    pop         ebp
 004CC0B5    ret         10
end;*}

//004CC0B8
{*function sub_004CC0B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CC0B8    push        ebp
 004CC0B9    mov         ebp,esp
 004CC0BB    add         esp,0FFFFFFF0
 004CC0BE    mov         byte ptr [ebp-6],cl
 004CC0C1    mov         byte ptr [ebp-5],dl
 004CC0C4    mov         dword ptr [ebp-4],eax
 004CC0C7    mov         dword ptr [ebp-0C],200
 004CC0CE    push        0E
 004CC0D0    mov         al,byte ptr [ebp-5]
 004CC0D3    push        eax
 004CC0D4    mov         al,byte ptr [ebp-6]
 004CC0D7    push        eax
 004CC0D8    mov         al,byte ptr [ebp+18]
 004CC0DB    push        eax
 004CC0DC    mov         al,byte ptr [ebp+14]
 004CC0DF    push        eax
 004CC0E0    mov         al,byte ptr [ebp+10]
 004CC0E3    push        eax
 004CC0E4    mov         al,byte ptr [ebp+0C]
 004CC0E7    push        eax
 004CC0E8    mov         al,byte ptr [ebp+8]
 004CC0EB    push        eax
 004CC0EC    mov         eax,dword ptr [ebp-4]
 004CC0EF    push        eax
 004CC0F0    mov         eax,dword ptr [ebp-0C]
 004CC0F3    push        eax
 004CC0F4    push        8
 004CC0F6    push        56CBA0
 004CC0FB    mov         cl,8
 004CC0FD    mov         dl,0A1
 004CC0FF    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC104    call        004CBFE0
 004CC109    mov         byte ptr [ebp-0D],al
 004CC10C    cmp         byte ptr [ebp-0D],0
>004CC110    jne         004CC118
 004CC112    mov         byte ptr [ebp-7],1
>004CC116    jmp         004CC11C
 004CC118    mov         byte ptr [ebp-7],0
 004CC11C    mov         al,byte ptr [ebp-7]
 004CC11F    mov         esp,ebp
 004CC121    pop         ebp
 004CC122    ret         14
end;*}

//004CC128
{*function sub_004CC128(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CC128    push        ebp
 004CC129    mov         ebp,esp
 004CC12B    add         esp,0FFFFFFF0
 004CC12E    mov         byte ptr [ebp-6],cl
 004CC131    mov         byte ptr [ebp-5],dl
 004CC134    mov         dword ptr [ebp-4],eax
 004CC137    mov         byte ptr [ebp-7],0
 004CC13B    mov         dword ptr [ebp-0C],200
 004CC142    push        0
 004CC144    mov         al,byte ptr [ebp-5]
 004CC147    push        eax
 004CC148    mov         al,byte ptr [ebp-6]
 004CC14B    push        eax
 004CC14C    mov         al,byte ptr [ebp+18]
 004CC14F    push        eax
 004CC150    mov         al,byte ptr [ebp+14]
 004CC153    push        eax
 004CC154    mov         al,byte ptr [ebp+10]
 004CC157    push        eax
 004CC158    mov         al,byte ptr [ebp+0C]
 004CC15B    push        eax
 004CC15C    mov         al,byte ptr [ebp+8]
 004CC15F    push        eax
 004CC160    mov         eax,dword ptr [ebp-4]
 004CC163    push        eax
 004CC164    mov         eax,dword ptr [ebp-0C]
 004CC167    push        eax
 004CC168    push        10
 004CC16A    push        56CBA0
 004CC16F    mov         cl,0A
 004CC171    mov         dl,0A1
 004CC173    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC178    call        004CBFE0
 004CC17D    mov         byte ptr [ebp-0D],al
 004CC180    cmp         byte ptr [ebp-0D],0
>004CC184    jne         004CC18A
 004CC186    mov         byte ptr [ebp-7],1
 004CC18A    mov         al,byte ptr [ebp-7]
 004CC18D    mov         esp,ebp
 004CC18F    pop         ebp
 004CC190    ret         14
end;*}

//004CC194
{*function sub_004CC194(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CC194    push        ebp
 004CC195    mov         ebp,esp
 004CC197    add         esp,0FFFFFFE4
 004CC19A    mov         dword ptr [ebp-0C],ecx
 004CC19D    mov         dword ptr [ebp-8],edx
 004CC1A0    mov         dword ptr [ebp-4],eax
 004CC1A3    mov         byte ptr [ebp-0D],0
 004CC1A7    mov         dword ptr [ebp-18],16
 004CC1AE    mov         eax,dword ptr [ebp-18]
 004CC1B1    call        @GetMem
 004CC1B6    mov         dword ptr [ebp-14],eax
 004CC1B9    xor         eax,eax
 004CC1BB    push        ebp
 004CC1BC    push        4CC2CD
 004CC1C1    push        dword ptr fs:[eax]
 004CC1C4    mov         dword ptr fs:[eax],esp
 004CC1C7    mov         eax,dword ptr [ebp-14]
 004CC1CA    xor         ecx,ecx
 004CC1CC    mov         edx,dword ptr [ebp-18]
 004CC1CF    call        @FillChar
 004CC1D4    push        0
 004CC1D6    push        0
 004CC1D8    push        0
 004CC1DA    push        0
 004CC1DC    push        0
 004CC1DE    push        0
 004CC1E0    push        10
 004CC1E2    push        0
 004CC1E4    mov         eax,dword ptr [ebp-14]
 004CC1E7    push        eax
 004CC1E8    mov         eax,dword ptr [ebp-18]
 004CC1EB    push        eax
 004CC1EC    push        8
 004CC1EE    push        56CBA0
 004CC1F3    mov         cl,1E
 004CC1F5    mov         dl,0A1
 004CC1F7    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC1FC    call        004CBFE0
 004CC201    mov         byte ptr [ebp-19],al
 004CC204    cmp         byte ptr [ebp-19],0
>004CC208    jne         004CC2B7
 004CC20E    cmp         dword ptr ds:[56CC2C],16;gvar_0056CC2C
>004CC215    jne         004CC266
 004CC217    mov         eax,dword ptr [ebp-14]
 004CC21A    mov         al,byte ptr [eax+0B]
 004CC21D    mov         edx,dword ptr [ebp-4]
 004CC220    mov         byte ptr [edx],al
 004CC222    mov         eax,dword ptr [ebp-14]
 004CC225    mov         al,byte ptr [eax+0D]
 004CC228    mov         edx,dword ptr [ebp-8]
 004CC22B    mov         byte ptr [edx],al
 004CC22D    mov         eax,dword ptr [ebp-14]
 004CC230    mov         al,byte ptr [eax+0F]
 004CC233    mov         edx,dword ptr [ebp-0C]
 004CC236    mov         byte ptr [edx],al
 004CC238    mov         eax,dword ptr [ebp-14]
 004CC23B    mov         al,byte ptr [eax+11]
 004CC23E    mov         edx,dword ptr [ebp+14]
 004CC241    mov         byte ptr [edx],al
 004CC243    mov         eax,dword ptr [ebp-14]
 004CC246    mov         al,byte ptr [eax+13]
 004CC249    mov         edx,dword ptr [ebp+10]
 004CC24C    mov         byte ptr [edx],al
 004CC24E    mov         eax,dword ptr [ebp-14]
 004CC251    mov         al,byte ptr [eax+14]
 004CC254    mov         edx,dword ptr [ebp+0C]
 004CC257    mov         byte ptr [edx],al
 004CC259    mov         eax,dword ptr [ebp-14]
 004CC25C    mov         al,byte ptr [eax+15]
 004CC25F    mov         edx,dword ptr [ebp+8]
 004CC262    mov         byte ptr [edx],al
>004CC264    jmp         004CC2B3
 004CC266    mov         eax,dword ptr [ebp-14]
 004CC269    mov         al,byte ptr [eax+3]
 004CC26C    mov         edx,dword ptr [ebp-4]
 004CC26F    mov         byte ptr [edx],al
 004CC271    mov         eax,dword ptr [ebp-14]
 004CC274    mov         al,byte ptr [eax+5]
 004CC277    mov         edx,dword ptr [ebp-8]
 004CC27A    mov         byte ptr [edx],al
 004CC27C    mov         eax,dword ptr [ebp-14]
 004CC27F    mov         al,byte ptr [eax+7]
 004CC282    mov         edx,dword ptr [ebp-0C]
 004CC285    mov         byte ptr [edx],al
 004CC287    mov         eax,dword ptr [ebp-14]
 004CC28A    mov         al,byte ptr [eax+9]
 004CC28D    mov         edx,dword ptr [ebp+14]
 004CC290    mov         byte ptr [edx],al
 004CC292    mov         eax,dword ptr [ebp-14]
 004CC295    mov         al,byte ptr [eax+0B]
 004CC298    mov         edx,dword ptr [ebp+10]
 004CC29B    mov         byte ptr [edx],al
 004CC29D    mov         eax,dword ptr [ebp-14]
 004CC2A0    mov         al,byte ptr [eax+0C]
 004CC2A3    mov         edx,dword ptr [ebp+0C]
 004CC2A6    mov         byte ptr [edx],al
 004CC2A8    mov         eax,dword ptr [ebp-14]
 004CC2AB    mov         al,byte ptr [eax+0D]
 004CC2AE    mov         edx,dword ptr [ebp+8]
 004CC2B1    mov         byte ptr [edx],al
 004CC2B3    mov         byte ptr [ebp-0D],1
 004CC2B7    xor         eax,eax
 004CC2B9    pop         edx
 004CC2BA    pop         ecx
 004CC2BB    pop         ecx
 004CC2BC    mov         dword ptr fs:[eax],edx
 004CC2BF    push        4CC2D4
 004CC2C4    mov         eax,dword ptr [ebp-14]
 004CC2C7    call        @FreeMem
 004CC2CC    ret
>004CC2CD    jmp         @HandleFinally
>004CC2D2    jmp         004CC2C4
 004CC2D4    mov         al,byte ptr [ebp-0D]
 004CC2D7    mov         esp,ebp
 004CC2D9    pop         ebp
 004CC2DA    ret         10
end;*}

//004CC2E0
{*function sub_004CC2E0(?:?; ?:?; ?:?):?;
begin
 004CC2E0    push        ebp
 004CC2E1    mov         ebp,esp
 004CC2E3    add         esp,0FFFFFFEC
 004CC2E6    mov         dword ptr [ebp-0C],ecx
 004CC2E9    mov         word ptr [ebp-6],dx
 004CC2ED    mov         dword ptr [ebp-4],eax
 004CC2F0    mov         al,byte ptr [ebp-4]
 004CC2F3    mov         byte ptr [ebp-11],al
 004CC2F6    mov         eax,dword ptr [ebp-4]
 004CC2F9    shr         eax,8
 004CC2FC    mov         byte ptr [ebp-10],al
 004CC2FF    mov         eax,dword ptr [ebp-4]
 004CC302    shr         eax,10
 004CC305    mov         byte ptr [ebp-0F],al
 004CC308    mov         eax,dword ptr [ebp-4]
 004CC30B    shr         eax,18
 004CC30E    mov         byte ptr [ebp-0E],al
 004CC311    mov         al,byte ptr [ebp-0E]
 004CC314    push        eax
 004CC315    mov         al,byte ptr [ebp-0F]
 004CC318    push        eax
 004CC319    mov         al,byte ptr [ebp-10]
 004CC31C    push        eax
 004CC31D    mov         al,byte ptr [ebp-11]
 004CC320    push        eax
 004CC321    push        0
 004CC323    push        0
 004CC325    mov         al,byte ptr [ebp-6]
 004CC328    push        eax
 004CC329    push        0
 004CC32B    mov         eax,dword ptr [ebp-0C]
 004CC32E    push        eax
 004CC32F    movzx       eax,word ptr [ebp-6]
 004CC333    shl         eax,9
 004CC336    push        eax
 004CC337    push        10
 004CC339    push        56CBA0
 004CC33E    xor         ecx,ecx
 004CC340    mov         dl,2A
 004CC342    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC347    call        004CBFE0
 004CC34C    mov         byte ptr [ebp-12],al
 004CC34F    cmp         byte ptr [ebp-12],0
 004CC353    sete        byte ptr [ebp-0D]
 004CC357    mov         al,byte ptr [ebp-0D]
 004CC35A    mov         esp,ebp
 004CC35C    pop         ebp
 004CC35D    ret
end;*}

//004CC360
{*function sub_004CC360(?:?; ?:?):?;
begin
 004CC360    push        ebp
 004CC361    mov         ebp,esp
 004CC363    add         esp,0FFFFFFF4
 004CC366    mov         word ptr [ebp-6],dx
 004CC36A    mov         dword ptr [ebp-4],eax
 004CC36D    mov         al,byte ptr [ebp-4]
 004CC370    mov         byte ptr [ebp-0B],al
 004CC373    mov         eax,dword ptr [ebp-4]
 004CC376    shr         eax,8
 004CC379    mov         byte ptr [ebp-0A],al
 004CC37C    mov         eax,dword ptr [ebp-4]
 004CC37F    shr         eax,10
 004CC382    mov         byte ptr [ebp-9],al
 004CC385    mov         eax,dword ptr [ebp-4]
 004CC388    shr         eax,18
 004CC38B    mov         byte ptr [ebp-8],al
 004CC38E    mov         al,byte ptr [ebp-8]
 004CC391    push        eax
 004CC392    mov         al,byte ptr [ebp-9]
 004CC395    push        eax
 004CC396    mov         al,byte ptr [ebp-0A]
 004CC399    push        eax
 004CC39A    mov         al,byte ptr [ebp-0B]
 004CC39D    push        eax
 004CC39E    push        0
 004CC3A0    push        0
 004CC3A2    mov         al,byte ptr [ebp-6]
 004CC3A5    push        eax
 004CC3A6    push        0
 004CC3A8    push        0
 004CC3AA    push        0
 004CC3AC    push        0
 004CC3AE    push        56CBA0
 004CC3B3    xor         ecx,ecx
 004CC3B5    mov         dl,2F
 004CC3B7    mov         eax,[0056CC30];0xFFFFFFFF gvar_0056CC30
 004CC3BC    call        004CBFE0
 004CC3C1    mov         byte ptr [ebp-0C],al
 004CC3C4    cmp         byte ptr [ebp-0C],0
 004CC3C8    sete        byte ptr [ebp-7]
 004CC3CC    mov         al,byte ptr [ebp-7]
 004CC3CF    mov         esp,ebp
 004CC3D1    pop         ebp
 004CC3D2    ret
end;*}

end.