//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit109;

interface

uses
  SysUtils, Classes;

    //function sub_0051D164(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0051D164

implementation

//0051D164
{*function sub_0051D164(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0051D164    push        ebp
 0051D165    mov         ebp,esp
 0051D167    add         esp,0FFFFFFE4
 0051D16A    push        ebx
 0051D16B    mov         dword ptr [ebp-0C],ecx
 0051D16E    mov         dword ptr [ebp-8],edx
 0051D171    mov         dword ptr [ebp-4],eax
 0051D174    mov         eax,dword ptr [ebp-4]
 0051D177    mov         eax,dword ptr [eax]
 0051D179    cmp         eax,dword ptr [ebp+14]
 0051D17C    setl        al
 0051D17F    and         eax,7F
 0051D182    mov         edx,dword ptr [ebp-4]
 0051D185    mov         edx,dword ptr [edx]
 0051D187    cmp         edx,dword ptr [ebp+0C]
 0051D18A    setg        dl
 0051D18D    and         edx,7F
 0051D190    add         edx,edx
 0051D192    add         eax,edx
 0051D194    mov         edx,dword ptr [ebp-8]
 0051D197    mov         edx,dword ptr [edx]
 0051D199    cmp         edx,dword ptr [ebp+10]
 0051D19C    setl        dl
 0051D19F    and         edx,7F
 0051D1A2    shl         edx,2
 0051D1A5    add         eax,edx
 0051D1A7    mov         edx,dword ptr [ebp-8]
 0051D1AA    mov         edx,dword ptr [edx]
 0051D1AC    cmp         edx,dword ptr [ebp+8]
 0051D1AF    setg        dl
 0051D1B2    and         edx,7F
 0051D1B5    shl         edx,3
 0051D1B8    add         eax,edx
 0051D1BA    mov         dword ptr [ebp-14],eax
 0051D1BD    mov         eax,dword ptr [ebp-0C]
 0051D1C0    mov         eax,dword ptr [eax]
 0051D1C2    cmp         eax,dword ptr [ebp+14]
 0051D1C5    setl        al
 0051D1C8    and         eax,7F
 0051D1CB    mov         edx,dword ptr [ebp-0C]
 0051D1CE    mov         edx,dword ptr [edx]
 0051D1D0    cmp         edx,dword ptr [ebp+0C]
 0051D1D3    setg        dl
 0051D1D6    and         edx,7F
 0051D1D9    add         edx,edx
 0051D1DB    add         eax,edx
 0051D1DD    mov         edx,dword ptr [ebp+18]
 0051D1E0    mov         edx,dword ptr [edx]
 0051D1E2    cmp         edx,dword ptr [ebp+10]
 0051D1E5    setl        dl
 0051D1E8    and         edx,7F
 0051D1EB    shl         edx,2
 0051D1EE    add         eax,edx
 0051D1F0    mov         edx,dword ptr [ebp+18]
 0051D1F3    mov         edx,dword ptr [edx]
 0051D1F5    cmp         edx,dword ptr [ebp+8]
 0051D1F8    setg        dl
 0051D1FB    and         edx,7F
 0051D1FE    shl         edx,3
 0051D201    add         eax,edx
 0051D203    mov         dword ptr [ebp-18],eax
 0051D206    mov         eax,dword ptr [ebp-14]
 0051D209    and         eax,dword ptr [ebp-18]
>0051D20C    jne         0051D3B2
 0051D212    mov         eax,dword ptr [ebp-14]
 0051D215    or          eax,dword ptr [ebp-18]
>0051D218    je          0051D3B2
 0051D21E    test        byte ptr [ebp-14],0C
>0051D222    je          0051D28C
 0051D224    cmp         dword ptr [ebp-14],8
>0051D228    jge         0051D232
 0051D22A    mov         eax,dword ptr [ebp+10]
 0051D22D    mov         dword ptr [ebp-1C],eax
>0051D230    jmp         0051D238
 0051D232    mov         eax,dword ptr [ebp+8]
 0051D235    mov         dword ptr [ebp-1C],eax
 0051D238    mov         ecx,dword ptr [ebp+18]
 0051D23B    mov         ecx,dword ptr [ecx]
 0051D23D    mov         eax,dword ptr [ebp-8]
 0051D240    sub         ecx,dword ptr [eax]
 0051D242    mov         edx,dword ptr [ebp-0C]
 0051D245    mov         edx,dword ptr [edx]
 0051D247    mov         eax,dword ptr [ebp-4]
 0051D24A    sub         edx,dword ptr [eax]
 0051D24C    mov         eax,dword ptr [ebp-8]
 0051D24F    push        dword ptr [eax]
 0051D251    mov         eax,dword ptr [ebp-1C]
 0051D254    pop         ebx
 0051D255    sub         eax,ebx
 0051D257    call        005132A4
 0051D25C    mov         edx,dword ptr [ebp-4]
 0051D25F    add         dword ptr [edx],eax
 0051D261    mov         eax,dword ptr [ebp-8]
 0051D264    mov         edx,dword ptr [ebp-1C]
 0051D267    mov         dword ptr [eax],edx
 0051D269    mov         eax,dword ptr [ebp-4]
 0051D26C    mov         eax,dword ptr [eax]
 0051D26E    cmp         eax,dword ptr [ebp+14]
 0051D271    setl        al
 0051D274    and         eax,7F
 0051D277    mov         edx,dword ptr [ebp-4]
 0051D27A    mov         edx,dword ptr [edx]
 0051D27C    cmp         edx,dword ptr [ebp+0C]
 0051D27F    setg        dl
 0051D282    and         edx,7F
 0051D285    add         edx,edx
 0051D287    add         eax,edx
 0051D289    mov         dword ptr [ebp-14],eax
 0051D28C    test        byte ptr [ebp-18],0C
>0051D290    je          0051D2FA
 0051D292    cmp         dword ptr [ebp-18],8
>0051D296    jge         0051D2A0
 0051D298    mov         eax,dword ptr [ebp+10]
 0051D29B    mov         dword ptr [ebp-1C],eax
>0051D29E    jmp         0051D2A6
 0051D2A0    mov         eax,dword ptr [ebp+8]
 0051D2A3    mov         dword ptr [ebp-1C],eax
 0051D2A6    mov         ecx,dword ptr [ebp+18]
 0051D2A9    mov         ecx,dword ptr [ecx]
 0051D2AB    mov         eax,dword ptr [ebp-8]
 0051D2AE    sub         ecx,dword ptr [eax]
 0051D2B0    mov         edx,dword ptr [ebp-0C]
 0051D2B3    mov         edx,dword ptr [edx]
 0051D2B5    mov         eax,dword ptr [ebp-4]
 0051D2B8    sub         edx,dword ptr [eax]
 0051D2BA    mov         eax,dword ptr [ebp+18]
 0051D2BD    push        dword ptr [eax]
 0051D2BF    mov         eax,dword ptr [ebp-1C]
 0051D2C2    pop         ebx
 0051D2C3    sub         eax,ebx
 0051D2C5    call        005132A4
 0051D2CA    mov         edx,dword ptr [ebp-0C]
 0051D2CD    add         dword ptr [edx],eax
 0051D2CF    mov         eax,dword ptr [ebp+18]
 0051D2D2    mov         edx,dword ptr [ebp-1C]
 0051D2D5    mov         dword ptr [eax],edx
 0051D2D7    mov         eax,dword ptr [ebp-0C]
 0051D2DA    mov         eax,dword ptr [eax]
 0051D2DC    cmp         eax,dword ptr [ebp+14]
 0051D2DF    setl        al
 0051D2E2    and         eax,7F
 0051D2E5    mov         edx,dword ptr [ebp-0C]
 0051D2E8    mov         edx,dword ptr [edx]
 0051D2EA    cmp         edx,dword ptr [ebp+0C]
 0051D2ED    setg        dl
 0051D2F0    and         edx,7F
 0051D2F3    add         edx,edx
 0051D2F5    add         eax,edx
 0051D2F7    mov         dword ptr [ebp-18],eax
 0051D2FA    mov         eax,dword ptr [ebp-14]
 0051D2FD    and         eax,dword ptr [ebp-18]
>0051D300    jne         0051D3B2
 0051D306    mov         eax,dword ptr [ebp-14]
 0051D309    or          eax,dword ptr [ebp-18]
>0051D30C    je          0051D3B2
 0051D312    cmp         dword ptr [ebp-14],0
>0051D316    je          0051D362
 0051D318    cmp         dword ptr [ebp-14],1
>0051D31C    jne         0051D326
 0051D31E    mov         eax,dword ptr [ebp+14]
 0051D321    mov         dword ptr [ebp-1C],eax
>0051D324    jmp         0051D32C
 0051D326    mov         eax,dword ptr [ebp+0C]
 0051D329    mov         dword ptr [ebp-1C],eax
 0051D32C    mov         ecx,dword ptr [ebp-0C]
 0051D32F    mov         ecx,dword ptr [ecx]
 0051D331    mov         eax,dword ptr [ebp-4]
 0051D334    sub         ecx,dword ptr [eax]
 0051D336    mov         edx,dword ptr [ebp+18]
 0051D339    mov         edx,dword ptr [edx]
 0051D33B    mov         eax,dword ptr [ebp-8]
 0051D33E    sub         edx,dword ptr [eax]
 0051D340    mov         eax,dword ptr [ebp-4]
 0051D343    push        dword ptr [eax]
 0051D345    mov         eax,dword ptr [ebp-1C]
 0051D348    pop         ebx
 0051D349    sub         eax,ebx
 0051D34B    call        005132A4
 0051D350    mov         edx,dword ptr [ebp-8]
 0051D353    add         dword ptr [edx],eax
 0051D355    mov         eax,dword ptr [ebp-4]
 0051D358    mov         edx,dword ptr [ebp-1C]
 0051D35B    mov         dword ptr [eax],edx
 0051D35D    xor         eax,eax
 0051D35F    mov         dword ptr [ebp-14],eax
 0051D362    cmp         dword ptr [ebp-18],0
>0051D366    je          0051D3B2
 0051D368    cmp         dword ptr [ebp-18],1
>0051D36C    jne         0051D376
 0051D36E    mov         eax,dword ptr [ebp+14]
 0051D371    mov         dword ptr [ebp-1C],eax
>0051D374    jmp         0051D37C
 0051D376    mov         eax,dword ptr [ebp+0C]
 0051D379    mov         dword ptr [ebp-1C],eax
 0051D37C    mov         ecx,dword ptr [ebp-0C]
 0051D37F    mov         ecx,dword ptr [ecx]
 0051D381    mov         eax,dword ptr [ebp-4]
 0051D384    sub         ecx,dword ptr [eax]
 0051D386    mov         edx,dword ptr [ebp+18]
 0051D389    mov         edx,dword ptr [edx]
 0051D38B    mov         eax,dword ptr [ebp-8]
 0051D38E    sub         edx,dword ptr [eax]
 0051D390    mov         eax,dword ptr [ebp-0C]
 0051D393    push        dword ptr [eax]
 0051D395    mov         eax,dword ptr [ebp-1C]
 0051D398    pop         ebx
 0051D399    sub         eax,ebx
 0051D39B    call        005132A4
 0051D3A0    mov         edx,dword ptr [ebp+18]
 0051D3A3    add         dword ptr [edx],eax
 0051D3A5    mov         eax,dword ptr [ebp-0C]
 0051D3A8    mov         edx,dword ptr [ebp-1C]
 0051D3AB    mov         dword ptr [eax],edx
 0051D3AD    xor         eax,eax
 0051D3AF    mov         dword ptr [ebp-18],eax
 0051D3B2    mov         eax,dword ptr [ebp-14]
 0051D3B5    or          eax,dword ptr [ebp-18]
 0051D3B8    sete        byte ptr [ebp-0D]
 0051D3BC    mov         al,byte ptr [ebp-0D]
 0051D3BF    pop         ebx
 0051D3C0    mov         esp,ebp
 0051D3C2    pop         ebp
 0051D3C3    ret         14
end;*}

end.