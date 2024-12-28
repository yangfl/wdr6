//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit137;

interface

uses
  SysUtils, Classes;

type
  TST_PhysicalDrive = TST_PhysicalDrive = record//size=1F
f4:String;//f4
f8:String;//f8
fC:String;//fC
end;;
    //procedure sub_00560E8C(?:?);//00560E8C
    //procedure sub_00560F08(?:?; ?:?);//00560F08

implementation

//00560E8C
{*procedure sub_00560E8C(?:?);
begin
 00560E8C    push        ebp
 00560E8D    mov         ebp,esp
 00560E8F    add         esp,0FFFFFFF4
 00560E92    mov         dword ptr [ebp-4],eax
 00560E95    xor         eax,eax
 00560E97    mov         dword ptr [ebp-8],eax
 00560E9A    mov         eax,dword ptr [ebp-8]
 00560E9D    mov         edx,eax
 00560E9F    shl         eax,5
 00560EA2    sub         eax,edx
 00560EA4    mov         edx,dword ptr [ebp-4]
 00560EA7    lea         eax,[edx+eax]
 00560EAA    mov         dword ptr [ebp-0C],eax
 00560EAD    mov         eax,dword ptr [ebp-0C]
 00560EB0    xor         edx,edx
 00560EB2    mov         dword ptr [eax],edx
 00560EB4    mov         eax,dword ptr [ebp-0C]
 00560EB7    add         eax,4
 00560EBA    call        @LStrClr
 00560EBF    mov         eax,dword ptr [ebp-0C]
 00560EC2    add         eax,8
 00560EC5    call        @LStrClr
 00560ECA    mov         eax,dword ptr [ebp-0C]
 00560ECD    add         eax,0C
 00560ED0    call        @LStrClr
 00560ED5    mov         eax,dword ptr [ebp-0C]
 00560ED8    mov         byte ptr [eax+10],0
 00560EDC    mov         eax,dword ptr [ebp-0C]
 00560EDF    xor         edx,edx
 00560EE1    mov         dword ptr [eax+11],edx
 00560EE4    mov         eax,dword ptr [ebp-0C]
 00560EE7    xor         edx,edx
 00560EE9    mov         dword ptr [eax+19],edx
 00560EEC    mov         eax,dword ptr [ebp-0C]
 00560EEF    mov         byte ptr [eax+1D],0
 00560EF3    mov         eax,dword ptr [ebp-0C]
 00560EF6    mov         byte ptr [eax+1E],0
 00560EFA    inc         dword ptr [ebp-8]
 00560EFD    cmp         dword ptr [ebp-8],29
>00560F01    jne         00560E9A
 00560F03    mov         esp,ebp
 00560F05    pop         ebp
 00560F06    ret
end;*}

//00560F08
{*procedure sub_00560F08(?:?; ?:?);
begin
 00560F08    push        ebp
 00560F09    mov         ebp,esp
 00560F0B    add         esp,0FFFFFFE0
 00560F0E    xor         ecx,ecx
 00560F10    mov         dword ptr [ebp-20],ecx
 00560F13    mov         dword ptr [ebp-1C],ecx
 00560F16    mov         dword ptr [ebp-8],edx
 00560F19    mov         dword ptr [ebp-4],eax
 00560F1C    xor         eax,eax
 00560F1E    push        ebp
 00560F1F    push        561422
 00560F24    push        dword ptr fs:[eax]
 00560F27    mov         dword ptr fs:[eax],esp
 00560F2A    mov         eax,dword ptr [ebp-4]
 00560F2D    call        00560E8C
 00560F32    mov         eax,[0056E510];^gvar_0059F0BC
 00560F37    cmp         byte ptr [eax],0
>00560F3A    je          00561407
 00560F40    push        12
 00560F42    push        0
 00560F44    push        0
 00560F46    mov         eax,[0056E2F8];^gvar_0056DF20
 00560F4B    push        eax
 00560F4C    mov         eax,[0056E23C];^gvar_0059F0C0:Pointer
 00560F51    mov         eax,dword ptr [eax]
 00560F53    call        eax
 00560F55    mov         dword ptr [ebp-0C],eax
 00560F58    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00560F5C    je          00561407
 00560F62    xor         eax,eax
 00560F64    push        ebp
 00560F65    push        561400
 00560F6A    push        dword ptr fs:[eax]
 00560F6D    mov         dword ptr fs:[eax],esp
 00560F70    mov         eax,dword ptr [ebp-8]
 00560F73    xor         edx,edx
 00560F75    mov         dword ptr [eax],edx
 00560F77    mov         eax,59F0E4;gvar_0059F0E4:Pointer
 00560F7C    xor         ecx,ecx
 00560F7E    mov         edx,1C
 00560F83    call        @FillChar
 00560F88    mov         dword ptr ds:[59F0E4],1C;gvar_0059F0E4:Pointer
 00560F92    push        59F0E4;gvar_0059F0E4:Pointer
 00560F97    mov         eax,dword ptr [ebp-8]
 00560F9A    mov         eax,dword ptr [eax]
 00560F9C    push        eax
 00560F9D    mov         eax,[0056E2F8];^gvar_0056DF20
 00560FA2    push        eax
 00560FA3    push        0
 00560FA5    mov         eax,dword ptr [ebp-0C]
 00560FA8    push        eax
 00560FA9    mov         eax,[0056E468];^gvar_0059F0CC:Pointer
 00560FAE    mov         eax,dword ptr [eax]
 00560FB0    call        eax
 00560FB2    test        eax,eax
>00560FB4    je          005613C8
 00560FBA    push        0
 00560FBC    push        59F11C;gvar_0059F11C
 00560FC1    push        0
 00560FC3    push        0
 00560FC5    push        59F0E4;gvar_0059F0E4:Pointer
 00560FCA    mov         eax,dword ptr [ebp-0C]
 00560FCD    push        eax
 00560FCE    mov         eax,[0056E3F0];^gvar_0059F0D0:Pointer
 00560FD3    mov         eax,dword ptr [eax]
 00560FD5    call        eax
 00560FD7    test        eax,eax
>00560FD9    jne         005613D4
 00560FDF    call        kernel32.GetLastError
 00560FE4    cmp         eax,7A
>00560FE7    jne         005613D4
 00560FED    mov         eax,[0059F11C];0x0 gvar_0059F11C
 00560FF2    call        @GetMem
 00560FF7    mov         [0059F120],eax;gvar_0059F120:Pointer
 00560FFC    xor         eax,eax
 00560FFE    push        ebp
 00560FFF    push        5613C1
 00561004    push        dword ptr fs:[eax]
 00561007    mov         dword ptr fs:[eax],esp
 0056100A    mov         eax,[0059F120];0x0 gvar_0059F120:Pointer
 0056100F    xor         ecx,ecx
 00561011    mov         edx,dword ptr ds:[59F11C];0x0 gvar_0059F11C
 00561017    call        @FillChar
 0056101C    mov         eax,[0059F120];0x0 gvar_0059F120:Pointer
 00561021    mov         dword ptr [eax],5
 00561027    push        0
 00561029    push        0
 0056102B    mov         eax,[0059F11C];0x0 gvar_0059F11C
 00561030    push        eax
 00561031    mov         eax,[0059F120];0x0 gvar_0059F120:Pointer
 00561036    push        eax
 00561037    push        59F0E4;gvar_0059F0E4:Pointer
 0056103C    mov         eax,dword ptr [ebp-0C]
 0056103F    push        eax
 00561040    mov         eax,[0056E3F0];^gvar_0059F0D0:Pointer
 00561045    mov         eax,dword ptr [eax]
 00561047    call        eax
 00561049    test        eax,eax
>0056104B    je          005613A9
 00561051    add         dword ptr ds:[59F120],4;gvar_0059F120:Pointer
 00561058    xor         eax,eax
 0056105A    push        ebp
 0056105B    push        5613A2
 00561060    push        dword ptr fs:[eax]
 00561063    mov         dword ptr fs:[eax],esp
 00561066    push        0
 00561068    push        0
 0056106A    push        3
 0056106C    push        0
 0056106E    push        3
 00561070    push        0C0000000
 00561075    mov         eax,[0059F120];0x0 gvar_0059F120:Pointer
 0056107A    push        eax
 0056107B    call        kernel32.CreateFileA
 00561080    mov         dword ptr [ebp-10],eax
 00561083    cmp         dword ptr [ebp-10],0FFFFFFFF
>00561087    je          0056138D
 0056108D    xor         eax,eax
 0056108F    push        ebp
 00561090    push        561386
 00561095    push        dword ptr fs:[eax]
 00561098    mov         dword ptr fs:[eax],esp
 0056109B    mov         eax,dword ptr [ebp-8]
 0056109E    mov         eax,dword ptr [eax]
 005610A0    mov         edx,eax
 005610A2    shl         eax,5
 005610A5    sub         eax,edx
 005610A7    mov         edx,dword ptr [ebp-4]
 005610AA    lea         eax,[edx+eax+4]
 005610AE    mov         edx,dword ptr ds:[59F120];0x0 gvar_0059F120:Pointer
 005610B4    call        @LStrFromPChar
 005610B9    mov         eax,59F100;gvar_0059F100:Pointer
 005610BE    xor         ecx,ecx
 005610C0    mov         edx,1C
 005610C5    call        @FillChar
 005610CA    mov         dword ptr ds:[59F100],1C;gvar_0059F100:Pointer
 005610D4    push        561438;'Disk '
 005610D9    lea         edx,[ebp-1C]
 005610DC    mov         eax,dword ptr [ebp-8]
 005610DF    mov         eax,dword ptr [eax]
 005610E1    call        IntToStr
 005610E6    push        dword ptr [ebp-1C]
 005610E9    push        561448;#0
 005610EE    mov         eax,59F12C;gvar_0059F12C
 005610F3    mov         edx,3
 005610F8    call        @LStrCatN
 005610FD    push        59F100;gvar_0059F100:Pointer
 00561102    mov         eax,dword ptr [ebp-8]
 00561105    mov         eax,dword ptr [eax]
 00561107    push        eax
 00561108    mov         eax,dword ptr [ebp-0C]
 0056110B    push        eax
 0056110C    mov         eax,[0056E2B4];^gvar_0059F0C8:Pointer
 00561111    mov         eax,dword ptr [eax]
 00561113    call        eax
 00561115    test        eax,eax
>00561117    je          005611BC
 0056111D    mov         dword ptr ds:[59F124],1;gvar_0059F124
 00561127    push        59F128;gvar_0059F128
 0056112C    push        0
 0056112E    push        0
 00561130    push        59F124;gvar_0059F124
 00561135    push        0C
 00561137    push        59F100;gvar_0059F100:Pointer
 0056113C    mov         eax,dword ptr [ebp-0C]
 0056113F    push        eax
 00561140    mov         eax,[0056E254];^gvar_0059F0D4:Pointer
 00561145    mov         eax,dword ptr [eax]
 00561147    call        eax
 00561149    test        eax,eax
>0056114B    jne         005611BC
 0056114D    call        kernel32.GetLastError
 00561152    cmp         eax,7A
>00561155    jne         005611BC
 00561157    mov         edx,dword ptr ds:[59F128];0x0 gvar_0059F128
 0056115D    add         edx,8
 00561160    mov         eax,59F12C;gvar_0059F12C
 00561165    call        @LStrSetLength
 0056116A    mov         dword ptr ds:[59F124],1;gvar_0059F124
 00561174    push        59F128;gvar_0059F128
 00561179    mov         eax,[0059F12C];0x0 gvar_0059F12C
 0056117E    call        @LStrLen
 00561183    push        eax
 00561184    mov         eax,[0059F12C];0x0 gvar_0059F12C
 00561189    call        @LStrToPChar
 0056118E    push        eax
 0056118F    push        59F124;gvar_0059F124
 00561194    push        0C
 00561196    push        59F100;gvar_0059F100:Pointer
 0056119B    mov         eax,dword ptr [ebp-0C]
 0056119E    push        eax
 0056119F    mov         eax,[0056E254];^gvar_0059F0D4:Pointer
 005611A4    mov         eax,dword ptr [eax]
 005611A6    call        eax
 005611A8    test        eax,eax
>005611AA    je          005611BC
 005611AC    mov         eax,59F12C;gvar_0059F12C
 005611B1    mov         edx,dword ptr ds:[59F128];0x0 gvar_0059F128
 005611B7    call        @LStrSetLength
 005611BC    mov         eax,dword ptr [ebp-8]
 005611BF    mov         eax,dword ptr [eax]
 005611C1    mov         edx,eax
 005611C3    shl         eax,5
 005611C6    sub         eax,edx
 005611C8    mov         edx,dword ptr [ebp-4]
 005611CB    lea         eax,[edx+eax+0C]
 005611CF    mov         edx,dword ptr ds:[59F12C];0x0 gvar_0059F12C
 005611D5    call        @LStrAsg
 005611DA    push        0
 005611DC    push        59F124;gvar_0059F124
 005611E1    push        0C
 005611E3    push        59F130;gvar_0059F130
 005611E8    push        0
 005611EA    push        0
 005611EC    push        2D1080
 005611F1    mov         eax,dword ptr [ebp-10]
 005611F4    push        eax
 005611F5    call        kernel32.DeviceIoControl
 005611FA    test        eax,eax
>005611FC    je          00561252
 005611FE    cmp         dword ptr ds:[59F130],7;gvar_0059F130
>00561205    jne         00561252
 00561207    mov         eax,dword ptr [ebp-8]
 0056120A    mov         eax,dword ptr [eax]
 0056120C    mov         edx,eax
 0056120E    shl         eax,5
 00561211    sub         eax,edx
 00561213    mov         edx,dword ptr [ebp-4]
 00561216    mov         ecx,dword ptr ds:[59F134];0x0 gvar_0059F134
 0056121C    mov         dword ptr [edx+eax],ecx
 0056121F    mov         eax,[0059F134];0x0 gvar_0059F134
 00561224    xor         edx,edx
 00561226    push        edx
 00561227    push        eax
 00561228    lea         eax,[ebp-20]
 0056122B    call        IntToStr
 00561230    mov         ecx,dword ptr [ebp-20]
 00561233    mov         eax,dword ptr [ebp-8]
 00561236    mov         eax,dword ptr [eax]
 00561238    mov         edx,eax
 0056123A    shl         eax,5
 0056123D    sub         eax,edx
 0056123F    mov         edx,dword ptr [ebp-4]
 00561242    lea         eax,[edx+eax+8]
 00561246    mov         edx,561454;'\\.\PhysicalDrive'
 0056124B    call        @LStrCat3
>00561250    jmp         00561268
 00561252    mov         eax,dword ptr [ebp-8]
 00561255    mov         eax,dword ptr [eax]
 00561257    mov         edx,eax
 00561259    shl         eax,5
 0056125C    sub         eax,edx
 0056125E    mov         edx,dword ptr [ebp-4]
 00561261    mov         dword ptr [edx+eax],0FFFFFFFF
 00561268    mov         eax,2000
 0056126D    call        @GetMem
 00561272    mov         [0059F148],eax;gvar_0059F148:Pointer
 00561277    xor         eax,eax
 00561279    push        ebp
 0056127A    push        561368
 0056127F    push        dword ptr fs:[eax]
 00561282    mov         dword ptr fs:[eax],esp
 00561285    mov         dword ptr ds:[59F13C],1;gvar_0059F13C
 0056128F    xor         eax,eax
 00561291    mov         [0059F140],eax;gvar_0059F140
 00561296    xor         eax,eax
 00561298    mov         [0059F144],eax;gvar_0059F144
 0056129D    push        0
 0056129F    push        59F14C
 005612A4    push        2000
 005612A9    mov         eax,[0059F148];0x0 gvar_0059F148:Pointer
 005612AE    push        eax
 005612AF    push        0C
 005612B1    push        59F13C;gvar_0059F13C
 005612B6    push        2D1400
 005612BB    mov         eax,dword ptr [ebp-10]
 005612BE    push        eax
 005612BF    call        kernel32.DeviceIoControl
 005612C4    cmp         eax,1
 005612C7    sbb         eax,eax
 005612C9    inc         eax
 005612CA    mov         edx,dword ptr [ebp-8]
 005612CD    mov         edx,dword ptr [edx]
 005612CF    mov         ecx,edx
 005612D1    shl         edx,5
 005612D4    sub         edx,ecx
 005612D6    mov         ecx,dword ptr [ebp-4]
 005612D9    mov         byte ptr [ecx+edx+10],al
 005612DD    mov         eax,dword ptr [ebp-8]
 005612E0    mov         eax,dword ptr [eax]
 005612E2    mov         edx,eax
 005612E4    shl         eax,5
 005612E7    sub         eax,edx
 005612E9    mov         edx,dword ptr [ebp-4]
 005612EC    cmp         byte ptr [edx+eax+10],0
>005612F1    je          00561350
 005612F3    mov         eax,dword ptr [ebp-8]
 005612F6    mov         eax,dword ptr [eax]
 005612F8    mov         edx,eax
 005612FA    shl         eax,5
 005612FD    sub         eax,edx
 005612FF    mov         edx,dword ptr [ebp-4]
 00561302    lea         eax,[edx+eax]
 00561305    mov         dword ptr [ebp-14],eax
 00561308    mov         eax,[0059F148];0x0 gvar_0059F148:Pointer
 0056130D    mov         dword ptr [ebp-18],eax
 00561310    mov         eax,dword ptr [ebp-18]
 00561313    mov         eax,dword ptr [eax+8]
 00561316    mov         edx,dword ptr [ebp-14]
 00561319    mov         dword ptr [edx+11],eax
 0056131C    mov         eax,dword ptr [ebp-18]
 0056131F    mov         eax,dword ptr [eax+0C]
 00561322    mov         edx,dword ptr [ebp-14]
 00561325    mov         dword ptr [edx+15],eax
 00561328    mov         eax,dword ptr [ebp-18]
 0056132B    mov         eax,dword ptr [eax+10]
 0056132E    mov         edx,dword ptr [ebp-14]
 00561331    mov         dword ptr [edx+19],eax
 00561334    mov         eax,dword ptr [ebp-18]
 00561337    cmp         byte ptr [eax+14],1
 0056133B    sbb         eax,eax
 0056133D    inc         eax
 0056133E    mov         edx,dword ptr [ebp-14]
 00561341    mov         byte ptr [edx+1D],al
 00561344    mov         eax,dword ptr [ebp-18]
 00561347    mov         al,byte ptr [eax+18]
 0056134A    mov         edx,dword ptr [ebp-14]
 0056134D    mov         byte ptr [edx+1E],al
 00561350    xor         eax,eax
 00561352    pop         edx
 00561353    pop         ecx
 00561354    pop         ecx
 00561355    mov         dword ptr fs:[eax],edx
 00561358    push        56136F
 0056135D    mov         eax,[0059F148];0x0 gvar_0059F148:Pointer
 00561362    call        @FreeMem
 00561367    ret
>00561368    jmp         @HandleFinally
>0056136D    jmp         0056135D
 0056136F    xor         eax,eax
 00561371    pop         edx
 00561372    pop         ecx
 00561373    pop         ecx
 00561374    mov         dword ptr fs:[eax],edx
 00561377    push        56138D
 0056137C    mov         eax,dword ptr [ebp-10]
 0056137F    push        eax
 00561380    call        kernel32.CloseHandle
 00561385    ret
>00561386    jmp         @HandleFinally
>0056138B    jmp         0056137C
 0056138D    xor         eax,eax
 0056138F    pop         edx
 00561390    pop         ecx
 00561391    pop         ecx
 00561392    mov         dword ptr fs:[eax],edx
 00561395    push        5613A9
 0056139A    sub         dword ptr ds:[59F120],4;gvar_0059F120:Pointer
 005613A1    ret
>005613A2    jmp         @HandleFinally
>005613A7    jmp         0056139A
 005613A9    xor         eax,eax
 005613AB    pop         edx
 005613AC    pop         ecx
 005613AD    pop         ecx
 005613AE    mov         dword ptr fs:[eax],edx
 005613B1    push        5613D4
 005613B6    mov         eax,[0059F120];0x0 gvar_0059F120:Pointer
 005613BB    call        @FreeMem
 005613C0    ret
>005613C1    jmp         @HandleFinally
>005613C6    jmp         005613B6
 005613C8    call        kernel32.GetLastError
 005613CD    cmp         eax,103
>005613D2    je          005613E5
 005613D4    mov         eax,dword ptr [ebp-8]
 005613D7    inc         dword ptr [eax]
 005613D9    mov         eax,dword ptr [ebp-8]
 005613DC    cmp         dword ptr [eax],28
>005613DF    jle         00560F77
 005613E5    xor         eax,eax
 005613E7    pop         edx
 005613E8    pop         ecx
 005613E9    pop         ecx
 005613EA    mov         dword ptr fs:[eax],edx
 005613ED    push        561407
 005613F2    mov         eax,dword ptr [ebp-0C]
 005613F5    push        eax
 005613F6    mov         eax,[0056E644];^gvar_0059F0C4:Pointer
 005613FB    mov         eax,dword ptr [eax]
 005613FD    call        eax
 005613FF    ret
>00561400    jmp         @HandleFinally
>00561405    jmp         005613F2
 00561407    xor         eax,eax
 00561409    pop         edx
 0056140A    pop         ecx
 0056140B    pop         ecx
 0056140C    mov         dword ptr fs:[eax],edx
 0056140F    push        561429
 00561414    lea         eax,[ebp-20]
 00561417    mov         edx,2
 0056141C    call        @LStrArrayClr
 00561421    ret
>00561422    jmp         @HandleFinally
>00561427    jmp         00561414
 00561429    mov         esp,ebp
 0056142B    pop         ebp
 0056142C    ret
end;*}

Initialization
Finalization
//00561468
{*
 00561468    push        ebp
 00561469    mov         ebp,esp
 0056146B    xor         eax,eax
 0056146D    push        ebp
 0056146E    push        561499
 00561473    push        dword ptr fs:[eax]
 00561476    mov         dword ptr fs:[eax],esp
 00561479    inc         dword ptr ds:[59F0E0]
>0056147F    jne         0056148B
 00561481    mov         eax,59F12C;gvar_0059F12C
 00561486    call        @LStrClr
 0056148B    xor         eax,eax
 0056148D    pop         edx
 0056148E    pop         ecx
 0056148F    pop         ecx
 00561490    mov         dword ptr fs:[eax],edx
 00561493    push        5614A0
 00561498    ret
>00561499    jmp         @HandleFinally
>0056149E    jmp         00561498
 005614A0    pop         ebp
 005614A1    ret
*}
end.