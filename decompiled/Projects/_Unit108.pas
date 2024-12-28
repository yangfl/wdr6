//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit108;

interface

uses
  SysUtils, Classes;

    //procedure sub_0051CB30(?:?; ?:?; ?:?; ?:?);//0051CB30
    //procedure sub_0051CB54(?:?; ?:?; ?:?; ?:?);//0051CB54
    //procedure sub_0051CB78(?:?; ?:?; ?:?; ?:?);//0051CB78
    //procedure sub_0051CB9C(?:?; ?:?; ?:?; ?:?);//0051CB9C
    //procedure sub_0051CC70(?:?; ?:?; ?:?; ?:?);//0051CC70
    //procedure sub_0051CD44(?:?; ?:?; ?:?; ?:?);//0051CD44
    procedure sub_0051D094;//0051D094

implementation

//0051CB30
{*procedure sub_0051CB30(?:?; ?:?; ?:?; ?:?);
begin
 0051CB30    push        ebp
 0051CB31    mov         ebp,esp
 0051CB33    push        ebx
 0051CB34    push        edi
 0051CB35    lea         eax,[eax+ecx*4]
 0051CB38    lea         edx,[edx+ecx*4]
 0051CB3B    neg         ecx
 0051CB3D    mov         edi,dword ptr [ebp+8]
 0051CB40    mov         ebx,dword ptr [eax+ecx*4]
 0051CB43    xor         ebx,edi
 0051CB45    mov         dword ptr [edx+ecx*4],ebx
 0051CB48    inc         ecx
>0051CB49    jne         0051CB40
 0051CB4B    pop         edi
 0051CB4C    pop         ebx
 0051CB4D    pop         ebp
 0051CB4E    ret         4
end;*}

//0051CB54
{*procedure sub_0051CB54(?:?; ?:?; ?:?; ?:?);
begin
 0051CB54    push        ebp
 0051CB55    mov         ebp,esp
 0051CB57    push        ebx
 0051CB58    push        edi
 0051CB59    lea         eax,[eax+ecx*4]
 0051CB5C    lea         edx,[edx+ecx*4]
 0051CB5F    neg         ecx
 0051CB61    mov         edi,dword ptr [ebp+8]
 0051CB64    mov         ebx,dword ptr [eax+ecx*4]
 0051CB67    or          ebx,edi
 0051CB69    mov         dword ptr [edx+ecx*4],ebx
 0051CB6C    inc         ecx
>0051CB6D    jne         0051CB64
 0051CB6F    pop         edi
 0051CB70    pop         ebx
 0051CB71    pop         ebp
 0051CB72    ret         4
end;*}

//0051CB78
{*procedure sub_0051CB78(?:?; ?:?; ?:?; ?:?);
begin
 0051CB78    push        ebp
 0051CB79    mov         ebp,esp
 0051CB7B    push        ebx
 0051CB7C    push        edi
 0051CB7D    lea         eax,[eax+ecx*4]
 0051CB80    lea         edx,[edx+ecx*4]
 0051CB83    neg         ecx
 0051CB85    mov         edi,dword ptr [ebp+8]
 0051CB88    mov         ebx,dword ptr [eax+ecx*4]
 0051CB8B    and         ebx,edi
 0051CB8D    mov         dword ptr [edx+ecx*4],ebx
 0051CB90    inc         ecx
>0051CB91    jne         0051CB88
 0051CB93    pop         edi
 0051CB94    pop         ebx
 0051CB95    pop         ebp
 0051CB96    ret         4
end;*}

//0051CB9C
{*procedure sub_0051CB9C(?:?; ?:?; ?:?; ?:?);
begin
 0051CB9C    push        ebp
 0051CB9D    mov         ebp,esp
 0051CB9F    add         esp,0FFFFFFF8
 0051CBA2    push        ebx
 0051CBA3    push        edi
 0051CBA4    test        ecx,ecx
>0051CBA6    je          0051CC68
 0051CBAC    mov         ebx,ecx
 0051CBAE    shr         ecx,4
 0051CBB1    shl         ecx,4
>0051CBB4    je          0051CC46
 0051CBBA    sar         ecx,1
 0051CBBC    lea         eax,[eax+ecx*8]
 0051CBBF    lea         edx,[edx+ecx*8]
 0051CBC2    neg         ecx
 0051CBC4    movd        mm7,dword ptr [ebp+8]
 0051CBC8    punpcklbq   mm7,mm7
 0051CBCB    movq        mmword ptr [ebp-8],mm7
 0051CBCF    emms
 0051CBD1    movq        mm0,mmword ptr [eax+ecx*8]
 0051CBD5    movq        mm1,mmword ptr [eax+ecx*8+8]
 0051CBDA    movq        mm2,mmword ptr [eax+ecx*8+10]
 0051CBDF    movq        mm3,mmword ptr [eax+ecx*8+18]
 0051CBE4    movq        mm4,mmword ptr [eax+ecx*8+20]
 0051CBE9    movq        mm5,mmword ptr [eax+ecx*8+28]
 0051CBEE    movq        mm6,mmword ptr [eax+ecx*8+30]
 0051CBF3    movq        mm7,mmword ptr [eax+ecx*8+38]
 0051CBF8    pxor        mm0,mmword ptr [ebp-8]
 0051CBFC    pxor        mm1,mmword ptr [ebp-8]
 0051CC00    pxor        mm2,mmword ptr [ebp-8]
 0051CC04    pxor        mm3,mmword ptr [ebp-8]
 0051CC08    pxor        mm4,mmword ptr [ebp-8]
 0051CC0C    pxor        mm5,mmword ptr [ebp-8]
 0051CC10    pxor        mm6,mmword ptr [ebp-8]
 0051CC14    pxor        mm7,mmword ptr [ebp-8]
 0051CC18    movq        mmword ptr [edx+ecx*8],mm0
 0051CC1C    movq        mmword ptr [edx+ecx*8+8],mm1
 0051CC21    movq        mmword ptr [edx+ecx*8+10],mm2
 0051CC26    movq        mmword ptr [edx+ecx*8+18],mm3
 0051CC2B    movq        mmword ptr [edx+ecx*8+20],mm4
 0051CC30    movq        mmword ptr [edx+ecx*8+28],mm5
 0051CC35    movq        mmword ptr [edx+ecx*8+30],mm6
 0051CC3A    movq        mmword ptr [edx+ecx*8+38],mm7
 0051CC3F    add         ecx,8
>0051CC42    js          0051CBD1
 0051CC44    emms
 0051CC46    mov         ecx,ebx
 0051CC48    shr         ebx,4
 0051CC4B    shl         ebx,4
 0051CC4E    sub         ecx,ebx
>0051CC50    je          0051CC68
 0051CC52    lea         eax,[eax+ecx*4]
 0051CC55    lea         edx,[edx+ecx*4]
 0051CC58    neg         ecx
 0051CC5A    mov         edi,dword ptr [ebp+8]
 0051CC5D    mov         ebx,dword ptr [eax+ecx*4]
 0051CC60    xor         ebx,edi
 0051CC62    mov         dword ptr [edx+ecx*4],ebx
 0051CC65    inc         ecx
>0051CC66    jne         0051CC5D
 0051CC68    pop         edi
 0051CC69    pop         ebx
 0051CC6A    pop         ecx
 0051CC6B    pop         ecx
 0051CC6C    pop         ebp
 0051CC6D    ret         4
end;*}

//0051CC70
{*procedure sub_0051CC70(?:?; ?:?; ?:?; ?:?);
begin
 0051CC70    push        ebp
 0051CC71    mov         ebp,esp
 0051CC73    add         esp,0FFFFFFF8
 0051CC76    push        ebx
 0051CC77    push        edi
 0051CC78    test        ecx,ecx
>0051CC7A    je          0051CD3C
 0051CC80    mov         ebx,ecx
 0051CC82    shr         ecx,4
 0051CC85    shl         ecx,4
>0051CC88    je          0051CD1A
 0051CC8E    sar         ecx,1
 0051CC90    lea         eax,[eax+ecx*8]
 0051CC93    lea         edx,[edx+ecx*8]
 0051CC96    neg         ecx
 0051CC98    movd        mm7,dword ptr [ebp+8]
 0051CC9C    punpcklbq   mm7,mm7
 0051CC9F    movq        mmword ptr [ebp-8],mm7
 0051CCA3    emms
 0051CCA5    movq        mm0,mmword ptr [eax+ecx*8]
 0051CCA9    movq        mm1,mmword ptr [eax+ecx*8+8]
 0051CCAE    movq        mm2,mmword ptr [eax+ecx*8+10]
 0051CCB3    movq        mm3,mmword ptr [eax+ecx*8+18]
 0051CCB8    movq        mm4,mmword ptr [eax+ecx*8+20]
 0051CCBD    movq        mm5,mmword ptr [eax+ecx*8+28]
 0051CCC2    movq        mm6,mmword ptr [eax+ecx*8+30]
 0051CCC7    movq        mm7,mmword ptr [eax+ecx*8+38]
 0051CCCC    por         mm0,mmword ptr [ebp-8]
 0051CCD0    por         mm1,mmword ptr [ebp-8]
 0051CCD4    por         mm2,mmword ptr [ebp-8]
 0051CCD8    por         mm3,mmword ptr [ebp-8]
 0051CCDC    por         mm4,mmword ptr [ebp-8]
 0051CCE0    por         mm5,mmword ptr [ebp-8]
 0051CCE4    por         mm6,mmword ptr [ebp-8]
 0051CCE8    por         mm7,mmword ptr [ebp-8]
 0051CCEC    movq        mmword ptr [edx+ecx*8],mm0
 0051CCF0    movq        mmword ptr [edx+ecx*8+8],mm1
 0051CCF5    movq        mmword ptr [edx+ecx*8+10],mm2
 0051CCFA    movq        mmword ptr [edx+ecx*8+18],mm3
 0051CCFF    movq        mmword ptr [edx+ecx*8+20],mm4
 0051CD04    movq        mmword ptr [edx+ecx*8+28],mm5
 0051CD09    movq        mmword ptr [edx+ecx*8+30],mm6
 0051CD0E    movq        mmword ptr [edx+ecx*8+38],mm7
 0051CD13    add         ecx,8
>0051CD16    js          0051CCA5
 0051CD18    emms
 0051CD1A    mov         ecx,ebx
 0051CD1C    shr         ebx,4
 0051CD1F    shl         ebx,4
 0051CD22    sub         ecx,ebx
>0051CD24    je          0051CD3C
 0051CD26    lea         eax,[eax+ecx*4]
 0051CD29    lea         edx,[edx+ecx*4]
 0051CD2C    neg         ecx
 0051CD2E    mov         edi,dword ptr [ebp+8]
 0051CD31    mov         ebx,dword ptr [eax+ecx*4]
 0051CD34    or          ebx,edi
 0051CD36    mov         dword ptr [edx+ecx*4],ebx
 0051CD39    inc         ecx
>0051CD3A    jne         0051CD31
 0051CD3C    pop         edi
 0051CD3D    pop         ebx
 0051CD3E    pop         ecx
 0051CD3F    pop         ecx
 0051CD40    pop         ebp
 0051CD41    ret         4
end;*}

//0051CD44
{*procedure sub_0051CD44(?:?; ?:?; ?:?; ?:?);
begin
 0051CD44    push        ebp
 0051CD45    mov         ebp,esp
 0051CD47    add         esp,0FFFFFFF8
 0051CD4A    push        ebx
 0051CD4B    push        edi
 0051CD4C    test        ecx,ecx
>0051CD4E    je          0051CE10
 0051CD54    mov         ebx,ecx
 0051CD56    shr         ecx,4
 0051CD59    shl         ecx,4
>0051CD5C    je          0051CDEE
 0051CD62    sar         ecx,1
 0051CD64    lea         eax,[eax+ecx*8]
 0051CD67    lea         edx,[edx+ecx*8]
 0051CD6A    neg         ecx
 0051CD6C    movd        mm7,dword ptr [ebp+8]
 0051CD70    punpcklbq   mm7,mm7
 0051CD73    movq        mmword ptr [ebp-8],mm7
 0051CD77    emms
 0051CD79    movq        mm0,mmword ptr [eax+ecx*8]
 0051CD7D    movq        mm1,mmword ptr [eax+ecx*8+8]
 0051CD82    movq        mm2,mmword ptr [eax+ecx*8+10]
 0051CD87    movq        mm3,mmword ptr [eax+ecx*8+18]
 0051CD8C    movq        mm4,mmword ptr [eax+ecx*8+20]
 0051CD91    movq        mm5,mmword ptr [eax+ecx*8+28]
 0051CD96    movq        mm6,mmword ptr [eax+ecx*8+30]
 0051CD9B    movq        mm7,mmword ptr [eax+ecx*8+38]
 0051CDA0    pand        mm0,mmword ptr [ebp-8]
 0051CDA4    pand        mm1,mmword ptr [ebp-8]
 0051CDA8    pand        mm2,mmword ptr [ebp-8]
 0051CDAC    pand        mm3,mmword ptr [ebp-8]
 0051CDB0    pand        mm4,mmword ptr [ebp-8]
 0051CDB4    pand        mm5,mmword ptr [ebp-8]
 0051CDB8    pand        mm6,mmword ptr [ebp-8]
 0051CDBC    pand        mm7,mmword ptr [ebp-8]
 0051CDC0    movq        mmword ptr [edx+ecx*8],mm0
 0051CDC4    movq        mmword ptr [edx+ecx*8+8],mm1
 0051CDC9    movq        mmword ptr [edx+ecx*8+10],mm2
 0051CDCE    movq        mmword ptr [edx+ecx*8+18],mm3
 0051CDD3    movq        mmword ptr [edx+ecx*8+20],mm4
 0051CDD8    movq        mmword ptr [edx+ecx*8+28],mm5
 0051CDDD    movq        mmword ptr [edx+ecx*8+30],mm6
 0051CDE2    movq        mmword ptr [edx+ecx*8+38],mm7
 0051CDE7    add         ecx,8
>0051CDEA    js          0051CD79
 0051CDEC    emms
 0051CDEE    mov         ecx,ebx
 0051CDF0    shr         ebx,4
 0051CDF3    shl         ebx,4
 0051CDF6    sub         ecx,ebx
>0051CDF8    je          0051CE10
 0051CDFA    lea         eax,[eax+ecx*4]
 0051CDFD    lea         edx,[edx+ecx*4]
 0051CE00    neg         ecx
 0051CE02    mov         edi,dword ptr [ebp+8]
 0051CE05    mov         ebx,dword ptr [eax+ecx*4]
 0051CE08    and         ebx,edi
 0051CE0A    mov         dword ptr [edx+ecx*4],ebx
 0051CE0D    inc         ecx
>0051CE0E    jne         0051CE05
 0051CE10    pop         edi
 0051CE11    pop         ebx
 0051CE12    pop         ecx
 0051CE13    pop         ecx
 0051CE14    pop         ebp
 0051CE15    ret         4
end;*}

//0051D094
procedure sub_0051D094;
begin
{*
 0051D094    mov         dword ptr ds:[597A8C],51C9D4
 0051D09E    mov         dword ptr ds:[597A94],51CA48
 0051D0A8    mov         dword ptr ds:[597A90],51CABC
 0051D0B2    call        00512A68
 0051D0B7    test        al,al
>0051D0B9    je          0051D0DA
 0051D0BB    mov         dword ptr ds:[597A98],51CE18
 0051D0C5    mov         dword ptr ds:[597AA0],51CEEC
 0051D0CF    mov         dword ptr ds:[597A9C],51CFC0
 0051D0D9    ret
 0051D0DA    call        00512A54
 0051D0DF    test        al,al
>0051D0E1    je          0051D103
 0051D0E3    mov         dword ptr ds:[597A98],51CB9C
 0051D0ED    mov         dword ptr ds:[597AA0],51CC70
 0051D0F7    mov         dword ptr ds:[597A9C],51CD44
>0051D101    jmp         0051D121
 0051D103    mov         dword ptr ds:[597A98],51CB30
 0051D10D    mov         dword ptr ds:[597AA0],51CB54
 0051D117    mov         dword ptr ds:[597A9C],51CB78
 0051D121    ret
*}
end;

Initialization
//0051D154
{*
 0051D154    sub         dword ptr ds:[597A88],1
>0051D15B    jae         0051D162
 0051D15D    call        0051D094
 0051D162    ret
*}
Finalization
end.