//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit60;

interface

uses
  SysUtils, Classes;

    //procedure sub_004AD068(?:Longint; ?:?; ?:?; ?:?);//004AD068
    //function sub_004AD394(?:?; ?:?; ?:?; ?:?; ?:?):?;//004AD394
    //function sub_004AD484(?:?):?;//004AD484
    //function sub_004AD4B8(?:?; ?:?; ?:?):?;//004AD4B8
    //function sub_004AD6B4(?:Longint; ?:?; ?:?):?;//004AD6B4
    //function sub_004AD754(?:TColor; ?:?):?;//004AD754
    //function sub_004AD82C(?:TColor; ?:?):?;//004AD82C
    //procedure sub_004AD904(?:TCanvas; ?:?; ?:?; ?:?);//004AD904
    //procedure sub_004AD9FC(?:?);//004AD9FC
    //procedure sub_004ADAF4(?:TCanvas; ?:?; ?:?; ?:?);//004ADAF4
    //procedure sub_004ADBB0(?:TCanvas; ?:?; ?:?; ?:?);//004ADBB0

implementation

//004AD068
{*procedure sub_004AD068(?:Longint; ?:?; ?:?; ?:?);
begin
 004AD068    push        ebp
 004AD069    mov         ebp,esp
 004AD06B    add         esp,0FFFFFF8C
 004AD06E    mov         dword ptr [ebp-0C],ecx
 004AD071    mov         dword ptr [ebp-8],edx
 004AD074    mov         dword ptr [ebp-4],eax
 004AD077    call        @GetTls
 004AD07C    mov         eax,dword ptr [eax+10];{threadvar_16}
 004AD082    cmp         eax,dword ptr [ebp-4]
>004AD085    jne         004AD0C2
 004AD087    call        @GetTls
 004AD08C    mov         ax,word ptr [eax+14];{threadvar_20}
 004AD093    mov         edx,dword ptr [ebp-8]
 004AD096    mov         word ptr [edx],ax
 004AD099    call        @GetTls
 004AD09E    mov         ax,word ptr [eax+16];{threadvar_22}
 004AD0A5    mov         edx,dword ptr [ebp-0C]
 004AD0A8    mov         word ptr [edx],ax
 004AD0AB    call        @GetTls
 004AD0B0    mov         ax,word ptr [eax+18];{threadvar_24}
 004AD0B7    mov         edx,dword ptr [ebp+8]
 004AD0BA    mov         word ptr [edx],ax
>004AD0BD    jmp         004AD36A
 004AD0C2    mov         eax,dword ptr [ebp-4]
 004AD0C5    call        004085F0
 004AD0CA    and         eax,0FF
 004AD0CF    mov         word ptr [ebp-2A],ax
 004AD0D3    mov         eax,dword ptr [ebp-4]
 004AD0D6    call        00408608
 004AD0DB    and         eax,0FF
 004AD0E0    mov         word ptr [ebp-2C],ax
 004AD0E4    mov         eax,dword ptr [ebp-4]
 004AD0E7    call        00408624
 004AD0EC    and         eax,0FF
 004AD0F1    mov         word ptr [ebp-2E],ax
 004AD0F5    movzx       edx,word ptr [ebp-2C]
 004AD0F9    movzx       eax,word ptr [ebp-2A]
 004AD0FD    call        00437470
 004AD102    movzx       edx,word ptr [ebp-2E]
 004AD106    call        00437470
 004AD10B    mov         dword ptr [ebp-74],eax
 004AD10E    fild        dword ptr [ebp-74]
 004AD111    fstp        qword ptr [ebp-38]
 004AD114    wait
 004AD115    movzx       edx,word ptr [ebp-2C]
 004AD119    movzx       eax,word ptr [ebp-2A]
 004AD11D    call        004373CC
 004AD122    movzx       edx,word ptr [ebp-2E]
 004AD126    call        004373CC
 004AD12B    mov         dword ptr [ebp-74],eax
 004AD12E    fild        dword ptr [ebp-74]
 004AD131    fstp        qword ptr [ebp-40]
 004AD134    wait
 004AD135    fld         qword ptr [ebp-38]
 004AD138    fadd        qword ptr [ebp-40]
 004AD13B    fmul        dword ptr ds:[4AD370];240:Single
 004AD141    fadd        dword ptr ds:[4AD374];255:Single
 004AD147    fdiv        dword ptr ds:[4AD378];510:Single
 004AD14D    fstp        qword ptr [ebp-20]
 004AD150    wait
 004AD151    fld         qword ptr [ebp-38]
 004AD154    fcomp       qword ptr [ebp-40]
 004AD157    fnstsw      al
 004AD159    sahf
>004AD15A    jne         004AD17F
 004AD15C    mov         eax,dword ptr [ebp-8]
 004AD15F    mov         word ptr [eax],0A0
 004AD164    fld         qword ptr [ebp-20]
 004AD167    call        @ROUND
 004AD16C    mov         edx,dword ptr [ebp-0C]
 004AD16F    mov         word ptr [edx],ax
 004AD172    mov         eax,dword ptr [ebp+8]
 004AD175    mov         word ptr [eax],0
>004AD17A    jmp         004AD326
 004AD17F    fld         qword ptr [ebp-20]
 004AD182    fcomp       dword ptr ds:[4AD37C];120:Single
 004AD188    fnstsw      al
 004AD18A    sahf
>004AD18B    ja          004AD1B5
 004AD18D    fld         qword ptr [ebp-38]
 004AD190    fsub        qword ptr [ebp-40]
 004AD193    fmul        dword ptr ds:[4AD370];240:Single
 004AD199    fld         qword ptr [ebp-38]
 004AD19C    fadd        qword ptr [ebp-40]
 004AD19F    fdiv        dword ptr ds:[4AD380];2:Single
 004AD1A5    faddp       st(1),st
 004AD1A7    fld         qword ptr [ebp-38]
 004AD1AA    fadd        qword ptr [ebp-40]
 004AD1AD    fdivp       st(1),st
 004AD1AF    fstp        qword ptr [ebp-28]
 004AD1B2    wait
>004AD1B3    jmp         004AD1E7
 004AD1B5    fld         qword ptr [ebp-38]
 004AD1B8    fsub        qword ptr [ebp-40]
 004AD1BB    fmul        dword ptr ds:[4AD370];240:Single
 004AD1C1    fld         dword ptr ds:[4AD378];510:Single
 004AD1C7    fsub        qword ptr [ebp-38]
 004AD1CA    fsub        qword ptr [ebp-40]
 004AD1CD    fdiv        dword ptr ds:[4AD380];2:Single
 004AD1D3    faddp       st(1),st
 004AD1D5    fld         dword ptr ds:[4AD378];510:Single
 004AD1DB    fsub        qword ptr [ebp-38]
 004AD1DE    fsub        qword ptr [ebp-40]
 004AD1E1    fdivp       st(1),st
 004AD1E3    fstp        qword ptr [ebp-28]
 004AD1E6    wait
 004AD1E7    movzx       eax,word ptr [ebp-2A]
 004AD1EB    mov         dword ptr [ebp-74],eax
 004AD1EE    fild        dword ptr [ebp-74]
 004AD1F1    fsubr       qword ptr [ebp-38]
 004AD1F4    fmul        dword ptr ds:[4AD384];40:Single
 004AD1FA    fld         qword ptr [ebp-38]
 004AD1FD    fsub        qword ptr [ebp-40]
 004AD200    fdiv        dword ptr ds:[4AD380];2:Single
 004AD206    faddp       st(1),st
 004AD208    fld         qword ptr [ebp-38]
 004AD20B    fsub        qword ptr [ebp-40]
 004AD20E    fdivp       st(1),st
 004AD210    fstp        tbyte ptr [ebp-50]
 004AD213    wait
 004AD214    movzx       eax,word ptr [ebp-2C]
 004AD218    mov         dword ptr [ebp-74],eax
 004AD21B    fild        dword ptr [ebp-74]
 004AD21E    fsubr       qword ptr [ebp-38]
 004AD221    fmul        dword ptr ds:[4AD384];40:Single
 004AD227    fld         qword ptr [ebp-38]
 004AD22A    fsub        qword ptr [ebp-40]
 004AD22D    fdiv        dword ptr ds:[4AD380];2:Single
 004AD233    faddp       st(1),st
 004AD235    fld         qword ptr [ebp-38]
 004AD238    fsub        qword ptr [ebp-40]
 004AD23B    fdivp       st(1),st
 004AD23D    fstp        tbyte ptr [ebp-60]
 004AD240    wait
 004AD241    movzx       eax,word ptr [ebp-2E]
 004AD245    mov         dword ptr [ebp-74],eax
 004AD248    fild        dword ptr [ebp-74]
 004AD24B    fsubr       qword ptr [ebp-38]
 004AD24E    fmul        dword ptr ds:[4AD384];40:Single
 004AD254    fld         qword ptr [ebp-38]
 004AD257    fsub        qword ptr [ebp-40]
 004AD25A    fdiv        dword ptr ds:[4AD380];2:Single
 004AD260    faddp       st(1),st
 004AD262    fld         qword ptr [ebp-38]
 004AD265    fsub        qword ptr [ebp-40]
 004AD268    fdivp       st(1),st
 004AD26A    fstp        tbyte ptr [ebp-70]
 004AD26D    wait
 004AD26E    movzx       eax,word ptr [ebp-2A]
 004AD272    mov         dword ptr [ebp-74],eax
 004AD275    fild        dword ptr [ebp-74]
 004AD278    fcomp       qword ptr [ebp-38]
 004AD27B    fnstsw      al
 004AD27D    sahf
>004AD27E    jne         004AD28E
 004AD280    fld         tbyte ptr [ebp-70]
 004AD283    fld         tbyte ptr [ebp-60]
 004AD286    fsubp       st(1),st
 004AD288    fstp        qword ptr [ebp-18]
 004AD28B    wait
>004AD28C    jmp         004AD2C6
 004AD28E    movzx       eax,word ptr [ebp-2C]
 004AD292    mov         dword ptr [ebp-74],eax
 004AD295    fild        dword ptr [ebp-74]
 004AD298    fcomp       qword ptr [ebp-38]
 004AD29B    fnstsw      al
 004AD29D    sahf
>004AD29E    jne         004AD2B4
 004AD2A0    fld         tbyte ptr [ebp-50]
 004AD2A3    fadd        dword ptr ds:[4AD388];80:Single
 004AD2A9    fld         tbyte ptr [ebp-70]
 004AD2AC    fsubp       st(1),st
 004AD2AE    fstp        qword ptr [ebp-18]
 004AD2B1    wait
>004AD2B2    jmp         004AD2C6
 004AD2B4    fld         tbyte ptr [ebp-60]
 004AD2B7    fadd        dword ptr ds:[4AD38C];160:Single
 004AD2BD    fld         tbyte ptr [ebp-50]
 004AD2C0    fsubp       st(1),st
 004AD2C2    fstp        qword ptr [ebp-18]
 004AD2C5    wait
 004AD2C6    fld         qword ptr [ebp-18]
 004AD2C9    fcomp       dword ptr ds:[4AD390];0:Single
 004AD2CF    fnstsw      al
 004AD2D1    sahf
>004AD2D2    jae         004AD2E1
 004AD2D4    fld         qword ptr [ebp-18]
 004AD2D7    fadd        dword ptr ds:[4AD370];240:Single
 004AD2DD    fstp        qword ptr [ebp-18]
 004AD2E0    wait
 004AD2E1    fld         qword ptr [ebp-18]
 004AD2E4    fcomp       dword ptr ds:[4AD370];240:Single
 004AD2EA    fnstsw      al
 004AD2EC    sahf
>004AD2ED    jbe         004AD2FC
 004AD2EF    fld         qword ptr [ebp-18]
 004AD2F2    fsub        dword ptr ds:[4AD370];240:Single
 004AD2F8    fstp        qword ptr [ebp-18]
 004AD2FB    wait
 004AD2FC    fld         qword ptr [ebp-18]
 004AD2FF    call        @ROUND
 004AD304    mov         edx,dword ptr [ebp-8]
 004AD307    mov         word ptr [edx],ax
 004AD30A    fld         qword ptr [ebp-20]
 004AD30D    call        @ROUND
 004AD312    mov         edx,dword ptr [ebp-0C]
 004AD315    mov         word ptr [edx],ax
 004AD318    fld         qword ptr [ebp-28]
 004AD31B    call        @ROUND
 004AD320    mov         edx,dword ptr [ebp+8]
 004AD323    mov         word ptr [edx],ax
 004AD326    call        @GetTls
 004AD32B    mov         edx,dword ptr [ebp-4]
 004AD32E    mov         dword ptr [eax+10],edx
 004AD334    call        @GetTls
 004AD339    mov         edx,dword ptr [ebp-8]
 004AD33C    mov         dx,word ptr [edx]
 004AD33F    mov         word ptr [eax+14],dx
 004AD346    call        @GetTls
 004AD34B    mov         edx,dword ptr [ebp-0C]
 004AD34E    mov         dx,word ptr [edx]
 004AD351    mov         word ptr [eax+16],dx
 004AD358    call        @GetTls
 004AD35D    mov         edx,dword ptr [ebp+8]
 004AD360    mov         dx,word ptr [edx]
 004AD363    mov         word ptr [eax+18],dx
 004AD36A    mov         esp,ebp
 004AD36C    pop         ebp
 004AD36D    ret         4
end;*}

//004AD394
{*function sub_004AD394(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004AD394    push        ebp
 004AD395    mov         ebp,esp
 004AD397    add         esp,0FFFFFFF0
 004AD39A    fld         qword ptr [ebp+8]
 004AD39D    fcomp       dword ptr ds:[4AD46C];0:Single
 004AD3A3    fnstsw      al
 004AD3A5    sahf
>004AD3A6    jae         004AD3B5
 004AD3A8    fld         qword ptr [ebp+8]
 004AD3AB    fadd        dword ptr ds:[4AD470];240:Single
 004AD3B1    fstp        qword ptr [ebp+8]
 004AD3B4    wait
 004AD3B5    fld         qword ptr [ebp+8]
 004AD3B8    fcomp       dword ptr ds:[4AD470];240:Single
 004AD3BE    fnstsw      al
 004AD3C0    sahf
>004AD3C1    jbe         004AD3D0
 004AD3C3    fld         qword ptr [ebp+8]
 004AD3C6    fsub        dword ptr ds:[4AD470];240:Single
 004AD3CC    fstp        qword ptr [ebp+8]
 004AD3CF    wait
 004AD3D0    fld         qword ptr [ebp+8]
 004AD3D3    fcomp       dword ptr ds:[4AD474];40:Single
 004AD3D9    fnstsw      al
 004AD3DB    sahf
>004AD3DC    jae         004AD3FC
 004AD3DE    fld         qword ptr [ebp+10]
 004AD3E1    fsub        qword ptr [ebp+18]
 004AD3E4    fmul        qword ptr [ebp+8]
 004AD3E7    fadd        dword ptr ds:[4AD478];20:Single
 004AD3ED    fdiv        dword ptr ds:[4AD474];40:Single
 004AD3F3    fadd        qword ptr [ebp+18]
 004AD3F6    fstp        qword ptr [ebp-10]
 004AD3F9    wait
>004AD3FA    jmp         004AD458
 004AD3FC    fld         qword ptr [ebp+8]
 004AD3FF    fcomp       dword ptr ds:[4AD47C];120:Single
 004AD405    fnstsw      al
 004AD407    sahf
>004AD408    jae         004AD418
 004AD40A    mov         eax,dword ptr [ebp+10]
 004AD40D    mov         dword ptr [ebp-10],eax
 004AD410    mov         eax,dword ptr [ebp+14]
 004AD413    mov         dword ptr [ebp-0C],eax
>004AD416    jmp         004AD458
 004AD418    fld         qword ptr [ebp+8]
 004AD41B    fcomp       dword ptr ds:[4AD480];160:Single
 004AD421    fnstsw      al
 004AD423    sahf
>004AD424    jae         004AD44C
 004AD426    fld         qword ptr [ebp+10]
 004AD429    fsub        qword ptr [ebp+18]
 004AD42C    fld         dword ptr ds:[4AD480];160:Single
 004AD432    fsub        qword ptr [ebp+8]
 004AD435    fmulp       st(1),st
 004AD437    fadd        dword ptr ds:[4AD478];20:Single
 004AD43D    fdiv        dword ptr ds:[4AD474];40:Single
 004AD443    fadd        qword ptr [ebp+18]
 004AD446    fstp        qword ptr [ebp-10]
 004AD449    wait
>004AD44A    jmp         004AD458
 004AD44C    mov         eax,dword ptr [ebp+18]
 004AD44F    mov         dword ptr [ebp-10],eax
 004AD452    mov         eax,dword ptr [ebp+1C]
 004AD455    mov         dword ptr [ebp-0C],eax
 004AD458    fld         qword ptr [ebp-10]
 004AD45B    call        @ROUND
 004AD460    mov         dword ptr [ebp-4],eax
 004AD463    mov         eax,dword ptr [ebp-4]
 004AD466    mov         esp,ebp
 004AD468    pop         ebp
 004AD469    ret         18
end;*}

//004AD484
{*function sub_004AD484(?:?):?;
begin
 004AD484    push        ebp
 004AD485    mov         ebp,esp
 004AD487    push        ecx
 004AD488    fld         qword ptr [ebp+8]
 004AD48B    fcomp       dword ptr ds:[4AD4B4];255:Single
 004AD491    fnstsw      al
 004AD493    sahf
>004AD494    jbe         004AD49F
 004AD496    mov         dword ptr [ebp-4],0FF
>004AD49D    jmp         004AD4AA
 004AD49F    fld         qword ptr [ebp+8]
 004AD4A2    call        @ROUND
 004AD4A7    mov         dword ptr [ebp-4],eax
 004AD4AA    mov         eax,dword ptr [ebp-4]
 004AD4AD    pop         ecx
 004AD4AE    pop         ebp
 004AD4AF    ret         8
end;*}

//004AD4B8
{*function sub_004AD4B8(?:?; ?:?; ?:?):?;
begin
 004AD4B8    push        ebp
 004AD4B9    mov         ebp,esp
 004AD4BB    add         esp,0FFFFFFC0
 004AD4BE    mov         word ptr [ebp-6],cx
 004AD4C2    mov         word ptr [ebp-4],dx
 004AD4C6    mov         word ptr [ebp-2],ax
 004AD4CA    cmp         word ptr [ebp-6],0
>004AD4CF    jne         004AD51C
 004AD4D1    movzx       eax,word ptr [ebp-4]
 004AD4D5    mov         edx,eax
 004AD4D7    shl         eax,8
 004AD4DA    sub         eax,edx
 004AD4DC    mov         dword ptr [ebp-3C],eax
 004AD4DF    fild        dword ptr [ebp-3C]
 004AD4E2    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD4E8    fstp        qword ptr [ebp-18]
 004AD4EB    wait
 004AD4EC    mov         eax,dword ptr [ebp-18]
 004AD4EF    mov         dword ptr [ebp-20],eax
 004AD4F2    mov         eax,dword ptr [ebp-14]
 004AD4F5    mov         dword ptr [ebp-1C],eax
 004AD4F8    mov         eax,dword ptr [ebp-18]
 004AD4FB    mov         dword ptr [ebp-28],eax
 004AD4FE    mov         eax,dword ptr [ebp-14]
 004AD501    mov         dword ptr [ebp-24],eax
 004AD504    movzx       eax,word ptr [ebp-2]
 004AD508    mov         dword ptr [ebp-3C],eax
 004AD50B    fild        dword ptr [ebp-3C]
 004AD50E    fcomp       dword ptr ds:[4AD6A8];160:Single
 004AD514    fnstsw      al
 004AD516    sahf
>004AD517    jmp         004AD667
 004AD51C    movzx       eax,word ptr [ebp-4]
 004AD520    mov         dword ptr [ebp-3C],eax
 004AD523    fild        dword ptr [ebp-3C]
 004AD526    fcomp       dword ptr ds:[4AD6AC];120:Single
 004AD52C    fnstsw      al
 004AD52E    sahf
>004AD52F    ja          004AD559
 004AD531    movzx       eax,word ptr [ebp-4]
 004AD535    movzx       edx,word ptr [ebp-6]
 004AD539    add         edx,0F0
 004AD53F    imul        edx
 004AD541    mov         dword ptr [ebp-3C],eax
 004AD544    fild        dword ptr [ebp-3C]
 004AD547    fadd        dword ptr ds:[4AD6AC];120:Single
 004AD54D    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD553    fstp        qword ptr [ebp-38]
 004AD556    wait
>004AD557    jmp         004AD58B
 004AD559    movzx       eax,word ptr [ebp-4]
 004AD55D    movzx       edx,word ptr [ebp-6]
 004AD561    add         eax,edx
 004AD563    mov         dword ptr [ebp-3C],eax
 004AD566    fild        dword ptr [ebp-3C]
 004AD569    movzx       eax,word ptr [ebp-4]
 004AD56D    movzx       edx,word ptr [ebp-6]
 004AD571    imul        edx
 004AD573    mov         dword ptr [ebp-40],eax
 004AD576    fild        dword ptr [ebp-40]
 004AD579    fadd        dword ptr ds:[4AD6AC];120:Single
 004AD57F    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD585    fsubp       st(1),st
 004AD587    fstp        qword ptr [ebp-38]
 004AD58A    wait
 004AD58B    movzx       eax,word ptr [ebp-4]
 004AD58F    add         eax,eax
 004AD591    mov         dword ptr [ebp-3C],eax
 004AD594    fild        dword ptr [ebp-3C]
 004AD597    fsub        qword ptr [ebp-38]
 004AD59A    fstp        qword ptr [ebp-30]
 004AD59D    wait
 004AD59E    push        dword ptr [ebp-2C]
 004AD5A1    push        dword ptr [ebp-30]
 004AD5A4    push        dword ptr [ebp-34]
 004AD5A7    push        dword ptr [ebp-38]
 004AD5AA    movzx       eax,word ptr [ebp-2]
 004AD5AE    mov         dword ptr [ebp-3C],eax
 004AD5B1    fild        dword ptr [ebp-3C]
 004AD5B4    fadd        dword ptr ds:[4AD6B0];80:Single
 004AD5BA    add         esp,0FFFFFFF8
 004AD5BD    fstp        qword ptr [esp]
 004AD5C0    wait
 004AD5C1    call        004AD394
 004AD5C6    mov         edx,eax
 004AD5C8    shl         eax,8
 004AD5CB    sub         eax,edx
 004AD5CD    mov         dword ptr [ebp-3C],eax
 004AD5D0    fild        dword ptr [ebp-3C]
 004AD5D3    fadd        dword ptr ds:[4AD6AC];120:Single
 004AD5D9    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD5DF    fstp        qword ptr [ebp-18]
 004AD5E2    wait
 004AD5E3    push        dword ptr [ebp-2C]
 004AD5E6    push        dword ptr [ebp-30]
 004AD5E9    push        dword ptr [ebp-34]
 004AD5EC    push        dword ptr [ebp-38]
 004AD5EF    movzx       eax,word ptr [ebp-2]
 004AD5F3    mov         dword ptr [ebp-3C],eax
 004AD5F6    fild        dword ptr [ebp-3C]
 004AD5F9    add         esp,0FFFFFFF8
 004AD5FC    fstp        qword ptr [esp]
 004AD5FF    wait
 004AD600    call        004AD394
 004AD605    mov         edx,eax
 004AD607    shl         eax,8
 004AD60A    sub         eax,edx
 004AD60C    mov         dword ptr [ebp-3C],eax
 004AD60F    fild        dword ptr [ebp-3C]
 004AD612    fadd        dword ptr ds:[4AD6AC];120:Single
 004AD618    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD61E    fstp        qword ptr [ebp-20]
 004AD621    wait
 004AD622    push        dword ptr [ebp-2C]
 004AD625    push        dword ptr [ebp-30]
 004AD628    push        dword ptr [ebp-34]
 004AD62B    push        dword ptr [ebp-38]
 004AD62E    movzx       eax,word ptr [ebp-2]
 004AD632    mov         dword ptr [ebp-3C],eax
 004AD635    fild        dword ptr [ebp-3C]
 004AD638    fsub        dword ptr ds:[4AD6B0];80:Single
 004AD63E    add         esp,0FFFFFFF8
 004AD641    fstp        qword ptr [esp]
 004AD644    wait
 004AD645    call        004AD394
 004AD64A    mov         edx,eax
 004AD64C    shl         eax,8
 004AD64F    sub         eax,edx
 004AD651    mov         dword ptr [ebp-3C],eax
 004AD654    fild        dword ptr [ebp-3C]
 004AD657    fadd        dword ptr ds:[4AD6AC];120:Single
 004AD65D    fdiv        dword ptr ds:[4AD6A4];240:Single
 004AD663    fstp        qword ptr [ebp-28]
 004AD666    wait
 004AD667    push        ebp
 004AD668    push        dword ptr [ebp-24]
 004AD66B    push        dword ptr [ebp-28]
 004AD66E    call        004AD484
 004AD673    pop         ecx
 004AD674    push        eax
 004AD675    push        ebp
 004AD676    push        dword ptr [ebp-1C]
 004AD679    push        dword ptr [ebp-20]
 004AD67C    call        004AD484
 004AD681    pop         ecx
 004AD682    push        eax
 004AD683    push        ebp
 004AD684    push        dword ptr [ebp-14]
 004AD687    push        dword ptr [ebp-18]
 004AD68A    call        004AD484
 004AD68F    pop         ecx
 004AD690    pop         edx
 004AD691    pop         ecx
 004AD692    call        00408590
 004AD697    mov         dword ptr [ebp-0C],eax
 004AD69A    mov         eax,dword ptr [ebp-0C]
 004AD69D    mov         esp,ebp
 004AD69F    pop         ebp
 004AD6A0    ret
end;*}

//004AD6B4
{*function sub_004AD6B4(?:Longint; ?:?; ?:?):?;
begin
 004AD6B4    push        ebp
 004AD6B5    mov         ebp,esp
 004AD6B7    add         esp,0FFFFFFE8
 004AD6BA    mov         dword ptr [ebp-18],ecx
 004AD6BD    mov         dword ptr [ebp-8],edx
 004AD6C0    mov         dword ptr [ebp-4],eax
 004AD6C3    call        @GetTls
 004AD6C8    mov         eax,dword ptr [eax+34];{threadvar_52}
 004AD6CE    cmp         eax,dword ptr [ebp-4]
>004AD6D1    jne         004AD6F3
 004AD6D3    call        @GetTls
 004AD6D8    mov         eax,dword ptr [eax+38];{threadvar_56}
 004AD6DE    cmp         eax,dword ptr [ebp-8]
>004AD6E1    jne         004AD6F3
 004AD6E3    call        @GetTls
 004AD6E8    mov         eax,dword ptr [eax+3C];{threadvar_60}
 004AD6EE    mov         dword ptr [ebp-0C],eax
>004AD6F1    jmp         004AD74C
 004AD6F3    lea         eax,[ebp-12]
 004AD6F6    push        eax
 004AD6F7    mov         eax,dword ptr [ebp-4]
 004AD6FA    call        ColorToRGB
 004AD6FF    lea         ecx,[ebp-10]
 004AD702    lea         edx,[ebp-0E]
 004AD705    call        004AD068
 004AD70A    mov         dx,word ptr [ebp-10]
 004AD70E    add         dx,word ptr [ebp-8]
 004AD712    mov         cx,word ptr [ebp-12]
 004AD716    mov         ax,word ptr [ebp-0E]
 004AD71A    call        004AD4B8
 004AD71F    mov         dword ptr [ebp-0C],eax
 004AD722    call        @GetTls
 004AD727    mov         edx,dword ptr [ebp-4]
 004AD72A    mov         dword ptr [eax+34],edx
 004AD730    call        @GetTls
 004AD735    mov         edx,dword ptr [ebp-8]
 004AD738    mov         dword ptr [eax+38],edx
 004AD73E    call        @GetTls
 004AD743    mov         edx,dword ptr [ebp-0C]
 004AD746    mov         dword ptr [eax+3C],edx
 004AD74C    mov         eax,dword ptr [ebp-0C]
 004AD74F    mov         esp,ebp
 004AD751    pop         ebp
 004AD752    ret
end;*}

//004AD754
{*function sub_004AD754(?:TColor; ?:?):?;
begin
 004AD754    push        ebp
 004AD755    mov         ebp,esp
 004AD757    add         esp,0FFFFFFE8
 004AD75A    mov         dword ptr [ebp-8],edx
 004AD75D    mov         dword ptr [ebp-4],eax
 004AD760    call        @GetTls
 004AD765    mov         eax,dword ptr [eax+20];{threadvar_32}
 004AD76B    cmp         eax,dword ptr [ebp-4]
>004AD76E    jne         004AD793
 004AD770    call        @GetTls
 004AD775    mov         eax,dword ptr [eax+1C];{threadvar_28}
 004AD77B    cmp         eax,dword ptr [ebp-8]
>004AD77E    jne         004AD793
 004AD780    call        @GetTls
 004AD785    mov         eax,dword ptr [eax+24];{threadvar_36}
 004AD78B    mov         dword ptr [ebp-0C],eax
>004AD78E    jmp         004AD824
 004AD793    cmp         dword ptr [ebp-4],0FF00000F
>004AD79A    jne         004AD7AB
 004AD79C    cmp         dword ptr [ebp-8],13
>004AD7A0    jne         004AD7AB
 004AD7A2    mov         dword ptr [ebp-0C],0FF000014
>004AD7A9    jmp         004AD824
 004AD7AB    mov         eax,dword ptr [ebp-4]
 004AD7AE    call        ColorToRGB
 004AD7B3    mov         dword ptr [ebp-18],eax
 004AD7B6    lea         eax,[ebp-12]
 004AD7B9    push        eax
 004AD7BA    lea         ecx,[ebp-10]
 004AD7BD    lea         edx,[ebp-0E]
 004AD7C0    mov         eax,dword ptr [ebp-18]
 004AD7C3    call        004AD068
 004AD7C8    cmp         word ptr [ebp-12],0DC
>004AD7CE    jbe         004AD7EA
 004AD7D0    mov         dx,word ptr [ebp-10]
 004AD7D4    sub         dx,word ptr [ebp-8]
 004AD7D8    mov         cx,word ptr [ebp-12]
 004AD7DC    mov         ax,word ptr [ebp-0E]
 004AD7E0    call        004AD4B8
 004AD7E5    mov         dword ptr [ebp-0C],eax
>004AD7E8    jmp         004AD7FA
 004AD7EA    xor         ecx,ecx
 004AD7EC    mov         edx,dword ptr [ebp-8]
 004AD7EF    mov         eax,dword ptr [ebp-18]
 004AD7F2    call        004AD6B4
 004AD7F7    mov         dword ptr [ebp-0C],eax
 004AD7FA    call        @GetTls
 004AD7FF    mov         edx,dword ptr [ebp-8]
 004AD802    mov         dword ptr [eax+1C],edx
 004AD808    call        @GetTls
 004AD80D    mov         edx,dword ptr [ebp-4]
 004AD810    mov         dword ptr [eax+20],edx
 004AD816    call        @GetTls
 004AD81B    mov         edx,dword ptr [ebp-0C]
 004AD81E    mov         dword ptr [eax+24],edx
 004AD824    mov         eax,dword ptr [ebp-0C]
 004AD827    mov         esp,ebp
 004AD829    pop         ebp
 004AD82A    ret
end;*}

//004AD82C
{*function sub_004AD82C(?:TColor; ?:?):?;
begin
 004AD82C    push        ebp
 004AD82D    mov         ebp,esp
 004AD82F    add         esp,0FFFFFFE8
 004AD832    mov         dword ptr [ebp-8],edx
 004AD835    mov         dword ptr [ebp-4],eax
 004AD838    call        @GetTls
 004AD83D    mov         eax,dword ptr [eax+2C];{threadvar_44}
 004AD843    cmp         eax,dword ptr [ebp-4]
>004AD846    jne         004AD86B
 004AD848    call        @GetTls
 004AD84D    mov         eax,dword ptr [eax+28];{threadvar_40}
 004AD853    cmp         eax,dword ptr [ebp-8]
>004AD856    jne         004AD86B
 004AD858    call        @GetTls
 004AD85D    mov         eax,dword ptr [eax+30];{threadvar_48}
 004AD863    mov         dword ptr [ebp-0C],eax
>004AD866    jmp         004AD8FC
 004AD86B    cmp         dword ptr [ebp-4],0FF00000F
>004AD872    jne         004AD883
 004AD874    cmp         dword ptr [ebp-8],0FFFFFFCE
>004AD878    jne         004AD883
 004AD87A    mov         dword ptr [ebp-0C],0FF000010
>004AD881    jmp         004AD8D2
 004AD883    mov         eax,dword ptr [ebp-4]
 004AD886    call        ColorToRGB
 004AD88B    mov         dword ptr [ebp-18],eax
 004AD88E    lea         eax,[ebp-12]
 004AD891    push        eax
 004AD892    lea         ecx,[ebp-10]
 004AD895    lea         edx,[ebp-0E]
 004AD898    mov         eax,dword ptr [ebp-18]
 004AD89B    call        004AD068
 004AD8A0    cmp         word ptr [ebp-12],0A0
>004AD8A6    jb          004AD8C2
 004AD8A8    mov         dx,word ptr [ebp-10]
 004AD8AC    add         dx,word ptr [ebp-8]
 004AD8B0    mov         cx,word ptr [ebp-12]
 004AD8B4    mov         ax,word ptr [ebp-0E]
 004AD8B8    call        004AD4B8
 004AD8BD    mov         dword ptr [ebp-0C],eax
>004AD8C0    jmp         004AD8D2
 004AD8C2    xor         ecx,ecx
 004AD8C4    mov         edx,dword ptr [ebp-8]
 004AD8C7    mov         eax,dword ptr [ebp-18]
 004AD8CA    call        004AD6B4
 004AD8CF    mov         dword ptr [ebp-0C],eax
 004AD8D2    call        @GetTls
 004AD8D7    mov         edx,dword ptr [ebp-8]
 004AD8DA    mov         dword ptr [eax+28],edx
 004AD8E0    call        @GetTls
 004AD8E5    mov         edx,dword ptr [ebp-4]
 004AD8E8    mov         dword ptr [eax+2C],edx
 004AD8EE    call        @GetTls
 004AD8F3    mov         edx,dword ptr [ebp-0C]
 004AD8F6    mov         dword ptr [eax+30],edx
 004AD8FC    mov         eax,dword ptr [ebp-0C]
 004AD8FF    mov         esp,ebp
 004AD901    pop         ebp
 004AD902    ret
end;*}

//004AD904
{*procedure sub_004AD904(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004AD904    push        ebp
 004AD905    mov         ebp,esp
 004AD907    add         esp,0FFFFFFC4
 004AD90A    push        esi
 004AD90B    push        edi
 004AD90C    mov         esi,ecx
 004AD90E    lea         edi,[ebp-0D]
 004AD911    movs        dword ptr [edi],dword ptr [esi]
 004AD912    movs        dword ptr [edi],dword ptr [esi]
 004AD913    mov         byte ptr [ebp-5],dl
 004AD916    mov         dword ptr [ebp-4],eax
 004AD919    cmp         dword ptr [ebp-4],0
>004AD91D    je          004AD9F2
 004AD923    mov         eax,dword ptr [ebp-4]
 004AD926    mov         eax,dword ptr [eax+14]
 004AD929    call        TBrush.GetColor
 004AD92E    mov         dword ptr [ebp-1C],eax
 004AD931    mov         eax,dword ptr [ebp-4]
 004AD934    mov         eax,dword ptr [eax+10]
 004AD937    call        TPen.GetColor
 004AD93C    mov         edx,eax
 004AD93E    mov         eax,dword ptr [ebp-4]
 004AD941    mov         eax,dword ptr [eax+14]
 004AD944    call        TBrush.SetColor
 004AD949    lea         edx,[ebp-34]
 004AD94C    xor         eax,eax
 004AD94E    mov         al,byte ptr [ebp-5]
 004AD951    lea         eax,[eax+eax*2]
 004AD954    lea         eax,[eax*8+56CAE0]
 004AD95B    mov         ecx,18
 004AD960    call        Move
 004AD965    xor         eax,eax
 004AD967    mov         dword ptr [ebp-14],eax
 004AD96A    lea         ecx,[ebp-3C]
 004AD96D    mov         eax,dword ptr [ebp-14]
 004AD970    mov         edx,dword ptr [ebp+eax*8-30]
 004AD974    imul        edx,dword ptr [ebp+8]
 004AD978    add         edx,dword ptr [ebp-9]
 004AD97B    mov         eax,dword ptr [ebp-14]
 004AD97E    mov         eax,dword ptr [ebp+eax*8-34]
 004AD982    imul        eax,dword ptr [ebp+8]
 004AD986    add         eax,dword ptr [ebp-0D]
 004AD989    call        Point
 004AD98E    mov         eax,dword ptr [ebp-14]
 004AD991    mov         edx,dword ptr [ebp-3C]
 004AD994    mov         dword ptr [ebp+eax*8-34],edx
 004AD998    mov         edx,dword ptr [ebp-38]
 004AD99B    mov         dword ptr [ebp+eax*8-30],edx
 004AD99F    inc         dword ptr [ebp-14]
 004AD9A2    cmp         dword ptr [ebp-14],3
>004AD9A6    jne         004AD96A
 004AD9A8    mov         eax,dword ptr [ebp-4]
 004AD9AB    mov         eax,dword ptr [eax+10]
 004AD9AE    call        TPen.GetWidth
 004AD9B3    mov         dword ptr [ebp-18],eax
 004AD9B6    mov         edx,1
 004AD9BB    mov         eax,dword ptr [ebp-4]
 004AD9BE    mov         eax,dword ptr [eax+10]
 004AD9C1    call        TPen.SetWidth
 004AD9C6    lea         edx,[ebp-34]
 004AD9C9    mov         ecx,2
 004AD9CE    mov         eax,dword ptr [ebp-4]
 004AD9D1    call        0042F188
 004AD9D6    mov         edx,dword ptr [ebp-18]
 004AD9D9    mov         eax,dword ptr [ebp-4]
 004AD9DC    mov         eax,dword ptr [eax+10]
 004AD9DF    call        TPen.SetWidth
 004AD9E4    mov         edx,dword ptr [ebp-1C]
 004AD9E7    mov         eax,dword ptr [ebp-4]
 004AD9EA    mov         eax,dword ptr [eax+14]
 004AD9ED    call        TBrush.SetColor
 004AD9F2    pop         edi
 004AD9F3    pop         esi
 004AD9F4    mov         esp,ebp
 004AD9F6    pop         ebp
 004AD9F7    ret         4
end;*}

//004AD9FC
{*procedure sub_004AD9FC(?:?);
begin
 004AD9FC    push        ebp
 004AD9FD    mov         ebp,esp
 004AD9FF    add         esp,0FFFFFFDC
 004ADA02    lea         edx,[ebp-1C]
 004ADA05    mov         eax,dword ptr [ebp+8]
 004ADA08    movzx       eax,byte ptr [eax-1]
 004ADA0C    lea         eax,[eax+eax*2]
 004ADA0F    lea         eax,[eax*8+56CAE0]
 004ADA16    mov         ecx,18
 004ADA1B    call        Move
 004ADA20    xor         eax,eax
 004ADA22    mov         dword ptr [ebp-4],eax
 004ADA25    mov         eax,dword ptr [ebp-4]
 004ADA28    mov         edx,dword ptr [ebp+eax*8-18]
 004ADA2C    mov         eax,dword ptr [ebp+8]
 004ADA2F    imul        edx,dword ptr [eax+8]
 004ADA33    mov         eax,dword ptr [ebp+8]
 004ADA36    add         edx,dword ptr [eax-5]
 004ADA39    mov         eax,dword ptr [ebp-4]
 004ADA3C    mov         eax,dword ptr [ebp+eax*8-1C]
 004ADA40    mov         ecx,dword ptr [ebp+8]
 004ADA43    imul        eax,dword ptr [ecx+8]
 004ADA47    mov         ecx,dword ptr [ebp+8]
 004ADA4A    add         eax,dword ptr [ecx-9]
 004ADA4D    lea         ecx,[ebp-24]
 004ADA50    call        Point
 004ADA55    mov         eax,dword ptr [ebp-4]
 004ADA58    mov         edx,dword ptr [ebp-24]
 004ADA5B    mov         dword ptr [ebp+eax*8-1C],edx
 004ADA5F    mov         edx,dword ptr [ebp-20]
 004ADA62    mov         dword ptr [ebp+eax*8-18],edx
 004ADA66    inc         dword ptr [ebp-4]
 004ADA69    cmp         dword ptr [ebp-4],3
>004ADA6D    jne         004ADA25
 004ADA6F    mov         eax,dword ptr [ebp+8]
 004ADA72    mov         al,byte ptr [eax-1]
 004ADA75    sub         al,1
>004ADA77    jb          004ADABF
>004ADA79    je          004ADAA1
 004ADA7B    dec         al
>004ADA7D    je          004ADABF
 004ADA7F    dec         al
>004ADA81    jne         004ADADB
 004ADA83    lea         ecx,[ebp-24]
 004ADA86    mov         edx,dword ptr [ebp-8]
 004ADA89    dec         edx
 004ADA8A    mov         eax,dword ptr [ebp-0C]
 004ADA8D    inc         eax
 004ADA8E    call        Point
 004ADA93    mov         eax,dword ptr [ebp-24]
 004ADA96    mov         dword ptr [ebp-0C],eax
 004ADA99    mov         eax,dword ptr [ebp-20]
 004ADA9C    mov         dword ptr [ebp-8],eax
>004ADA9F    jmp         004ADADB
 004ADAA1    lea         ecx,[ebp-24]
 004ADAA4    mov         edx,dword ptr [ebp-8]
 004ADAA7    inc         edx
 004ADAA8    mov         eax,dword ptr [ebp-0C]
 004ADAAB    dec         eax
 004ADAAC    call        Point
 004ADAB1    mov         eax,dword ptr [ebp-24]
 004ADAB4    mov         dword ptr [ebp-0C],eax
 004ADAB7    mov         eax,dword ptr [ebp-20]
 004ADABA    mov         dword ptr [ebp-8],eax
>004ADABD    jmp         004ADADB
 004ADABF    lea         ecx,[ebp-24]
 004ADAC2    mov         edx,dword ptr [ebp-8]
 004ADAC5    inc         edx
 004ADAC6    mov         eax,dword ptr [ebp-0C]
 004ADAC9    inc         eax
 004ADACA    call        Point
 004ADACF    mov         eax,dword ptr [ebp-24]
 004ADAD2    mov         dword ptr [ebp-0C],eax
 004ADAD5    mov         eax,dword ptr [ebp-20]
 004ADAD8    mov         dword ptr [ebp-8],eax
 004ADADB    lea         edx,[ebp-1C]
 004ADADE    mov         eax,dword ptr [ebp+8]
 004ADAE1    mov         eax,dword ptr [eax-10]
 004ADAE4    mov         ecx,2
 004ADAE9    call        0042F1D4
 004ADAEE    mov         esp,ebp
 004ADAF0    pop         ebp
 004ADAF1    ret
end;*}

//004ADAF4
{*procedure sub_004ADAF4(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004ADAF4    push        ebp
 004ADAF5    mov         ebp,esp
 004ADAF7    add         esp,0FFFFFFEC
 004ADAFA    push        esi
 004ADAFB    push        edi
 004ADAFC    mov         esi,ecx
 004ADAFE    lea         edi,[ebp-9]
 004ADB01    movs        dword ptr [edi],dword ptr [esi]
 004ADB02    movs        dword ptr [edi],dword ptr [esi]
 004ADB03    mov         byte ptr [ebp-1],dl
 004ADB06    mov         dword ptr [ebp-10],eax
 004ADB09    cmp         dword ptr [ebp-10],0
>004ADB0D    je          004ADBA6
 004ADB13    mov         eax,dword ptr [ebp-10]
 004ADB16    mov         eax,dword ptr [eax+10]
 004ADB19    call        TPen.GetWidth
 004ADB1E    mov         dword ptr [ebp-14],eax
 004ADB21    mov         eax,dword ptr [ebp-10]
 004ADB24    mov         eax,dword ptr [eax+10]
 004ADB27    mov         edx,1
 004ADB2C    call        TPen.SetWidth
 004ADB31    mov         al,byte ptr [ebp-1]
 004ADB34    sub         al,2
>004ADB36    jb          004ADB3E
 004ADB38    sub         al,2
>004ADB3A    jb          004ADB6C
>004ADB3C    jmp         004ADB98
 004ADB3E    mov         eax,dword ptr [ebp+8]
 004ADB41    sub         dword ptr [ebp-9],eax
 004ADB44    push        ebp
 004ADB45    call        004AD9FC
 004ADB4A    pop         ecx
 004ADB4B    inc         dword ptr [ebp-9]
 004ADB4E    push        ebp
 004ADB4F    call        004AD9FC
 004ADB54    pop         ecx
 004ADB55    add         dword ptr [ebp-9],3
 004ADB59    push        ebp
 004ADB5A    call        004AD9FC
 004ADB5F    pop         ecx
 004ADB60    inc         dword ptr [ebp-9]
 004ADB63    push        ebp
 004ADB64    call        004AD9FC
 004ADB69    pop         ecx
>004ADB6A    jmp         004ADB98
 004ADB6C    mov         eax,dword ptr [ebp+8]
 004ADB6F    sub         dword ptr [ebp-5],eax
 004ADB72    push        ebp
 004ADB73    call        004AD9FC
 004ADB78    pop         ecx
 004ADB79    inc         dword ptr [ebp-5]
 004ADB7C    push        ebp
 004ADB7D    call        004AD9FC
 004ADB82    pop         ecx
 004ADB83    add         dword ptr [ebp-5],3
 004ADB87    push        ebp
 004ADB88    call        004AD9FC
 004ADB8D    pop         ecx
 004ADB8E    inc         dword ptr [ebp-5]
 004ADB91    push        ebp
 004ADB92    call        004AD9FC
 004ADB97    pop         ecx
 004ADB98    mov         eax,dword ptr [ebp-10]
 004ADB9B    mov         eax,dword ptr [eax+10]
 004ADB9E    mov         edx,dword ptr [ebp-14]
 004ADBA1    call        TPen.SetWidth
 004ADBA6    pop         edi
 004ADBA7    pop         esi
 004ADBA8    mov         esp,ebp
 004ADBAA    pop         ebp
 004ADBAB    ret         4
end;*}

//004ADBB0
{*procedure sub_004ADBB0(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004ADBB0    push        ebp
 004ADBB1    mov         ebp,esp
 004ADBB3    add         esp,0FFFFFF4C
 004ADBB9    push        esi
 004ADBBA    push        edi
 004ADBBB    mov         esi,edx
 004ADBBD    lea         edi,[ebp-0C]
 004ADBC0    movs        dword ptr [edi],dword ptr [esi]
 004ADBC1    movs        dword ptr [edi],dword ptr [esi]
 004ADBC2    mov         dword ptr [ebp-10],ecx
 004ADBC5    mov         dword ptr [ebp-4],eax
 004ADBC8    cmp         dword ptr [ebp-4],0
>004ADBCC    je          004ADE36
 004ADBD2    mov         eax,dword ptr [ebp-4]
 004ADBD5    mov         ecx,dword ptr [eax+10]
 004ADBD8    mov         dl,1
 004ADBDA    mov         eax,[0042C838];TPenRecall
 004ADBDF    call        TPenRecall.Create;TPenRecall.Create
 004ADBE4    mov         dword ptr [ebp-14],eax
 004ADBE7    xor         eax,eax
 004ADBE9    push        ebp
 004ADBEA    push        4ADE2F
 004ADBEF    push        dword ptr fs:[eax]
 004ADBF2    mov         dword ptr fs:[eax],esp
 004ADBF5    mov         eax,dword ptr [ebp-4]
 004ADBF8    mov         eax,dword ptr [eax+10]
 004ADBFB    mov         edx,1
 004ADC00    call        TPen.SetWidth
 004ADC05    lea         ecx,[ebp-4C]
 004ADC08    mov         edx,dword ptr [ebp-8]
 004ADC0B    mov         eax,dword ptr [ebp-0C]
 004ADC0E    call        Point
 004ADC13    mov         eax,dword ptr [ebp-4C]
 004ADC16    mov         dword ptr [ebp-44],eax
 004ADC19    mov         eax,dword ptr [ebp-48]
 004ADC1C    mov         dword ptr [ebp-40],eax
 004ADC1F    lea         ecx,[ebp-54]
 004ADC22    mov         edx,dword ptr [ebp-8]
 004ADC25    add         edx,dword ptr [ebp-10]
 004ADC28    mov         eax,dword ptr [ebp-0C]
 004ADC2B    add         eax,dword ptr [ebp-10]
 004ADC2E    call        Point
 004ADC33    mov         eax,dword ptr [ebp-54]
 004ADC36    mov         dword ptr [ebp-3C],eax
 004ADC39    mov         eax,dword ptr [ebp-50]
 004ADC3C    mov         dword ptr [ebp-38],eax
 004ADC3F    lea         ecx,[ebp-5C]
 004ADC42    mov         edx,dword ptr [ebp-8]
 004ADC45    sub         edx,dword ptr [ebp-10]
 004ADC48    mov         eax,dword ptr [ebp-10]
 004ADC4B    add         eax,eax
 004ADC4D    add         eax,dword ptr [ebp-0C]
 004ADC50    add         eax,dword ptr [ebp-10]
 004ADC53    call        Point
 004ADC58    mov         eax,dword ptr [ebp-5C]
 004ADC5B    mov         dword ptr [ebp-34],eax
 004ADC5E    mov         eax,dword ptr [ebp-58]
 004ADC61    mov         dword ptr [ebp-30],eax
 004ADC64    lea         ecx,[ebp-64]
 004ADC67    mov         edx,dword ptr [ebp-8]
 004ADC6A    sub         edx,dword ptr [ebp-10]
 004ADC6D    dec         edx
 004ADC6E    mov         eax,dword ptr [ebp-10]
 004ADC71    add         eax,eax
 004ADC73    add         eax,dword ptr [ebp-0C]
 004ADC76    add         eax,dword ptr [ebp-10]
 004ADC79    call        Point
 004ADC7E    mov         eax,dword ptr [ebp-64]
 004ADC81    mov         dword ptr [ebp-2C],eax
 004ADC84    mov         eax,dword ptr [ebp-60]
 004ADC87    mov         dword ptr [ebp-28],eax
 004ADC8A    lea         ecx,[ebp-6C]
 004ADC8D    mov         edx,dword ptr [ebp-8]
 004ADC90    add         edx,dword ptr [ebp-10]
 004ADC93    dec         edx
 004ADC94    mov         eax,dword ptr [ebp-0C]
 004ADC97    add         eax,dword ptr [ebp-10]
 004ADC9A    call        Point
 004ADC9F    mov         eax,dword ptr [ebp-6C]
 004ADCA2    mov         dword ptr [ebp-24],eax
 004ADCA5    mov         eax,dword ptr [ebp-68]
 004ADCA8    mov         dword ptr [ebp-20],eax
 004ADCAB    lea         ecx,[ebp-74]
 004ADCAE    mov         edx,dword ptr [ebp-8]
 004ADCB1    sub         edx,2
 004ADCB4    mov         eax,dword ptr [ebp-0C]
 004ADCB7    dec         eax
 004ADCB8    call        Point
 004ADCBD    mov         eax,dword ptr [ebp-74]
 004ADCC0    mov         dword ptr [ebp-1C],eax
 004ADCC3    mov         eax,dword ptr [ebp-70]
 004ADCC6    mov         dword ptr [ebp-18],eax
 004ADCC9    lea         edx,[ebp-44]
 004ADCCC    mov         ecx,5
 004ADCD1    mov         eax,dword ptr [ebp-4]
 004ADCD4    call        0042F1D4
 004ADCD9    cmp         byte ptr [ebp+8],0
>004ADCDD    je          004ADE19
 004ADCE3    mov         eax,dword ptr [ebp-4]
 004ADCE6    mov         eax,dword ptr [eax+10]
 004ADCE9    mov         edx,0FFFFFF
 004ADCEE    call        TPen.SetColor
 004ADCF3    lea         ecx,[ebp-4C]
 004ADCF6    mov         edx,dword ptr [ebp-8]
 004ADCF9    dec         edx
 004ADCFA    mov         eax,dword ptr [ebp-0C]
 004ADCFD    dec         eax
 004ADCFE    call        Point
 004ADD03    mov         eax,dword ptr [ebp-4C]
 004ADD06    mov         dword ptr [ebp-0AC],eax
 004ADD0C    mov         eax,dword ptr [ebp-48]
 004ADD0F    mov         dword ptr [ebp-0A8],eax
 004ADD15    lea         ecx,[ebp-54]
 004ADD18    mov         eax,dword ptr [ebp-0C]
 004ADD1B    dec         eax
 004ADD1C    mov         edx,dword ptr [ebp-8]
 004ADD1F    call        Point
 004ADD24    mov         eax,dword ptr [ebp-54]
 004ADD27    mov         dword ptr [ebp-0A4],eax
 004ADD2D    mov         eax,dword ptr [ebp-50]
 004ADD30    mov         dword ptr [ebp-0A0],eax
 004ADD36    lea         ecx,[ebp-5C]
 004ADD39    mov         edx,dword ptr [ebp-8]
 004ADD3C    inc         edx
 004ADD3D    mov         eax,dword ptr [ebp-0C]
 004ADD40    call        Point
 004ADD45    mov         eax,dword ptr [ebp-5C]
 004ADD48    mov         dword ptr [ebp-9C],eax
 004ADD4E    mov         eax,dword ptr [ebp-58]
 004ADD51    mov         dword ptr [ebp-98],eax
 004ADD57    lea         ecx,[ebp-64]
 004ADD5A    mov         edx,dword ptr [ebp-8]
 004ADD5D    add         edx,dword ptr [ebp-10]
 004ADD60    inc         edx
 004ADD61    mov         eax,dword ptr [ebp-0C]
 004ADD64    add         eax,dword ptr [ebp-10]
 004ADD67    call        Point
 004ADD6C    mov         eax,dword ptr [ebp-64]
 004ADD6F    mov         dword ptr [ebp-94],eax
 004ADD75    mov         eax,dword ptr [ebp-60]
 004ADD78    mov         dword ptr [ebp-90],eax
 004ADD7E    lea         ecx,[ebp-6C]
 004ADD81    mov         edx,dword ptr [ebp-8]
 004ADD84    sub         edx,dword ptr [ebp-10]
 004ADD87    mov         eax,dword ptr [ebp-10]
 004ADD8A    add         eax,eax
 004ADD8C    add         eax,dword ptr [ebp-0C]
 004ADD8F    add         eax,dword ptr [ebp-10]
 004ADD92    inc         eax
 004ADD93    call        Point
 004ADD98    mov         eax,dword ptr [ebp-6C]
 004ADD9B    mov         dword ptr [ebp-8C],eax
 004ADDA1    mov         eax,dword ptr [ebp-68]
 004ADDA4    mov         dword ptr [ebp-88],eax
 004ADDAA    lea         ecx,[ebp-74]
 004ADDAD    mov         edx,dword ptr [ebp-8]
 004ADDB0    sub         edx,dword ptr [ebp-10]
 004ADDB3    dec         edx
 004ADDB4    mov         eax,dword ptr [ebp-10]
 004ADDB7    add         eax,eax
 004ADDB9    add         eax,dword ptr [ebp-0C]
 004ADDBC    add         eax,dword ptr [ebp-10]
 004ADDBF    inc         eax
 004ADDC0    call        Point
 004ADDC5    mov         eax,dword ptr [ebp-74]
 004ADDC8    mov         dword ptr [ebp-84],eax
 004ADDCE    mov         eax,dword ptr [ebp-70]
 004ADDD1    mov         dword ptr [ebp-80],eax
 004ADDD4    lea         ecx,[ebp-0B4]
 004ADDDA    mov         edx,dword ptr [ebp-8]
 004ADDDD    sub         edx,dword ptr [ebp-10]
 004ADDE0    sub         edx,2
 004ADDE3    mov         eax,dword ptr [ebp-10]
 004ADDE6    add         eax,eax
 004ADDE8    add         eax,dword ptr [ebp-0C]
 004ADDEB    add         eax,dword ptr [ebp-10]
 004ADDEE    inc         eax
 004ADDEF    call        Point
 004ADDF4    mov         eax,dword ptr [ebp-0B4]
 004ADDFA    mov         dword ptr [ebp-7C],eax
 004ADDFD    mov         eax,dword ptr [ebp-0B0]
 004ADE03    mov         dword ptr [ebp-78],eax
 004ADE06    lea         edx,[ebp-0AC]
 004ADE0C    mov         ecx,6
 004ADE11    mov         eax,dword ptr [ebp-4]
 004ADE14    call        0042F1D4
 004ADE19    xor         eax,eax
 004ADE1B    pop         edx
 004ADE1C    pop         ecx
 004ADE1D    pop         ecx
 004ADE1E    mov         dword ptr fs:[eax],edx
 004ADE21    push        4ADE36
 004ADE26    mov         eax,dword ptr [ebp-14]
 004ADE29    call        TObject.Free
 004ADE2E    ret
>004ADE2F    jmp         @HandleFinally
>004ADE34    jmp         004ADE26
 004ADE36    pop         edi
 004ADE37    pop         esi
 004ADE38    mov         esp,ebp
 004ADE3A    pop         ebp
 004ADE3B    ret         4
end;*}

Initialization
//004ADE70
{*
 004ADE70    push        ebp
 004ADE71    mov         ebp,esp
 004ADE73    sub         dword ptr ds:[571E5C],1
>004ADE7A    jae         004ADEF1
 004ADE7C    call        @GetTls
 004ADE81    xor         edx,edx
 004ADE83    mov         dword ptr [eax+1C],edx
 004ADE89    call        @GetTls
 004ADE8E    xor         edx,edx
 004ADE90    mov         dword ptr [eax+20],edx
 004ADE96    call        @GetTls
 004ADE9B    xor         edx,edx
 004ADE9D    mov         dword ptr [eax+24],edx
 004ADEA3    call        @GetTls
 004ADEA8    xor         edx,edx
 004ADEAA    mov         dword ptr [eax+28],edx
 004ADEB0    call        @GetTls
 004ADEB5    xor         edx,edx
 004ADEB7    mov         dword ptr [eax+2C],edx
 004ADEBD    call        @GetTls
 004ADEC2    xor         edx,edx
 004ADEC4    mov         dword ptr [eax+30],edx
 004ADECA    call        @GetTls
 004ADECF    xor         edx,edx
 004ADED1    mov         dword ptr [eax+34],edx
 004ADED7    call        @GetTls
 004ADEDC    xor         edx,edx
 004ADEDE    mov         dword ptr [eax+38],edx
 004ADEE4    call        @GetTls
 004ADEE9    xor         edx,edx
 004ADEEB    mov         dword ptr [eax+3C],edx
 004ADEF1    pop         ebp
 004ADEF2    ret
*}
Finalization
end.