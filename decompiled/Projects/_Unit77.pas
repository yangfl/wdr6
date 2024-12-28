//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit77;

interface

uses
  SysUtils, Classes;

    //function sub_004D36E4(?:TEditMask; ?:Integer):?;//004D36E4
    //function sub_004D3884(?:TEditMask; ?:?):?;//004D3884
    //function sub_004D3930(?:?):?;//004D3930
    //procedure sub_004D3964(?:?; ?:AnsiString; ?:?; ?:?);//004D3964
    //function sub_004D3BC4(?:?):?;//004D3BC4
    //function sub_004D3C80(?:?):?;//004D3C80
    //procedure sub_004D3D00(?:?; ?:?; ?:?);//004D3D00
    //function sub_004D3DA4(?:TEditMask; ?:Integer):?;//004D3DA4
    //function sub_004D3E00(?:TEditMask; ?:?):?;//004D3E00
    //function sub_004D3E80(?:TEditMask; ?:?):?;//004D3E80
    //procedure sub_004D3EC8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D3EC8
    //procedure sub_004D4088(?:?; ?:AnsiString; ?:?; ?:?);//004D4088

implementation

//004D36E4
{*function sub_004D36E4(?:TEditMask; ?:Integer):?;
begin
 004D36E4    push        ebp
 004D36E5    mov         ebp,esp
 004D36E7    add         esp,0FFFFFFF4
 004D36EA    mov         dword ptr [ebp-8],edx
 004D36ED    mov         dword ptr [ebp-4],eax
 004D36F0    mov         byte ptr [ebp-9],1
 004D36F4    mov         byte ptr [ebp-0A],0
 004D36F8    mov         eax,dword ptr [ebp-4]
 004D36FB    call        @LStrLen
 004D3700    cmp         eax,dword ptr [ebp-8]
>004D3703    jl          004D3712
 004D3705    mov         eax,dword ptr [ebp-8]
 004D3708    mov         edx,dword ptr [ebp-4]
 004D370B    mov         al,byte ptr [edx+eax-1]
 004D370F    mov         byte ptr [ebp-0A],al
 004D3712    mov         eax,dword ptr [ebp-4]
 004D3715    call        @LStrLen
 004D371A    cmp         eax,dword ptr [ebp-8]
>004D371D    jge         004D3728
 004D371F    mov         byte ptr [ebp-9],0
>004D3723    jmp         004D387A
 004D3728    mov         edx,dword ptr [ebp-8]
 004D372B    mov         eax,dword ptr [ebp-4]
 004D372E    call        00411160
 004D3733    test        al,al
>004D3735    je          004D3740
 004D3737    mov         byte ptr [ebp-9],1
>004D373B    jmp         004D387A
 004D3740    cmp         dword ptr [ebp-8],1
>004D3744    jle         004D3791
 004D3746    mov         eax,dword ptr [ebp-8]
 004D3749    mov         edx,dword ptr [ebp-4]
 004D374C    cmp         byte ptr [edx+eax-2],5C
>004D3751    jne         004D3791
 004D3753    mov         edx,dword ptr [ebp-8]
 004D3756    dec         edx
 004D3757    mov         eax,dword ptr [ebp-4]
 004D375A    call        00411160
 004D375F    test        al,al
>004D3761    jne         004D3791
 004D3763    cmp         dword ptr [ebp-8],2
>004D3767    jle         004D3788
 004D3769    mov         eax,dword ptr [ebp-8]
 004D376C    mov         edx,dword ptr [ebp-4]
 004D376F    cmp         byte ptr [edx+eax-3],5C
>004D3774    jne         004D3788
 004D3776    mov         edx,dword ptr [ebp-8]
 004D3779    sub         edx,2
 004D377C    mov         eax,dword ptr [ebp-4]
 004D377F    call        00411160
 004D3784    test        al,al
>004D3786    je          004D3791
 004D3788    mov         byte ptr [ebp-9],1
>004D378C    jmp         004D387A
 004D3791    mov         al,byte ptr [ebp-0A]
 004D3794    cmp         al,byte ptr ds:[56CC48];0x3B gvar_0056CC48
>004D379A    jne         004D37C2
 004D379C    mov         eax,dword ptr [ebp-4]
 004D379F    call        @LStrLen
 004D37A4    cmp         eax,4
>004D37A7    jl          004D37C2
 004D37A9    mov         eax,dword ptr [ebp-4]
 004D37AC    call        @LStrLen
 004D37B1    sub         eax,4
 004D37B4    cmp         eax,dword ptr [ebp-8]
>004D37B7    jge         004D37C2
 004D37B9    mov         byte ptr [ebp-9],6
>004D37BD    jmp         004D387A
 004D37C2    mov         eax,dword ptr [ebp-4]
 004D37C5    call        @LStrLen
 004D37CA    cmp         eax,4
>004D37CD    jl          004D381C
 004D37CF    mov         eax,dword ptr [ebp-4]
 004D37D2    call        @LStrLen
 004D37D7    sub         eax,4
 004D37DA    cmp         eax,dword ptr [ebp-8]
>004D37DD    jge         004D381C
 004D37DF    mov         eax,dword ptr [ebp-8]
 004D37E2    mov         edx,dword ptr [ebp-4]
 004D37E5    mov         al,byte ptr [edx+eax-2]
 004D37E9    cmp         al,byte ptr ds:[56CC48];0x3B gvar_0056CC48
>004D37EF    jne         004D381C
 004D37F1    cmp         dword ptr [ebp-8],2
>004D37F5    jle         004D3816
 004D37F7    mov         eax,dword ptr [ebp-8]
 004D37FA    mov         edx,dword ptr [ebp-4]
 004D37FD    cmp         byte ptr [edx+eax-3],5C
>004D3802    jne         004D3816
 004D3804    mov         edx,dword ptr [ebp-8]
 004D3807    sub         edx,2
 004D380A    mov         eax,dword ptr [ebp-4]
 004D380D    call        00411160
 004D3812    cmp         al,2
>004D3814    jne         004D381C
 004D3816    mov         byte ptr [ebp-9],7
>004D381A    jmp         004D387A
 004D381C    mov         al,byte ptr [ebp-0A]
 004D381F    sub         al,2F
>004D3821    je          004D3827
 004D3823    sub         al,0B
>004D3825    jne         004D382D
 004D3827    mov         byte ptr [ebp-9],2
>004D382B    jmp         004D387A
 004D382D    mov         al,byte ptr [ebp-0A]
 004D3830    sub         al,21
>004D3832    je          004D3840
 004D3834    sub         al,1B
>004D3836    je          004D3840
 004D3838    sub         al,2
>004D383A    je          004D3840
 004D383C    sub         al,1E
>004D383E    jne         004D3846
 004D3840    mov         byte ptr [ebp-9],3
>004D3844    jmp         004D387A
 004D3846    mov         al,byte ptr [ebp-0A]
 004D3849    sub         al,23
>004D384B    je          004D385D
 004D384D    sub         al,16
>004D384F    je          004D385D
 004D3851    sub         al,28
>004D3853    je          004D385D
 004D3855    sub         al,2
>004D3857    je          004D385D
 004D3859    sub         al,9
>004D385B    jne         004D3863
 004D385D    mov         byte ptr [ebp-9],5
>004D3861    jmp         004D387A
 004D3863    mov         al,byte ptr [ebp-0A]
 004D3866    sub         al,30
>004D3868    je          004D3876
 004D386A    sub         al,11
>004D386C    je          004D3876
 004D386E    sub         al,2
>004D3870    je          004D3876
 004D3872    sub         al,9
>004D3874    jne         004D387A
 004D3876    mov         byte ptr [ebp-9],4
 004D387A    mov         al,byte ptr [ebp-9]
 004D387D    mov         esp,ebp
 004D387F    pop         ebp
 004D3880    ret
end;*}

//004D3884
{*function sub_004D3884(?:TEditMask; ?:?):?;
begin
 004D3884    push        ebp
 004D3885    mov         ebp,esp
 004D3887    add         esp,0FFFFFFE8
 004D388A    mov         dword ptr [ebp-8],edx
 004D388D    mov         dword ptr [ebp-4],eax
 004D3890    mov         al,[004D392C];0x0 gvar_004D392C
 004D3895    mov         byte ptr [ebp-9],al
 004D3898    mov         eax,dword ptr [ebp-4]
 004D389B    call        @LStrLen
 004D38A0    test        eax,eax
>004D38A2    jle         004D3910
 004D38A4    mov         dword ptr [ebp-18],eax
 004D38A7    mov         dword ptr [ebp-10],1
 004D38AE    mov         eax,dword ptr [ebp-4]
 004D38B1    mov         edx,dword ptr [ebp-10]
 004D38B4    mov         al,byte ptr [eax+edx-1]
 004D38B8    mov         byte ptr [ebp-11],al
 004D38BB    cmp         byte ptr [ebp-11],21
>004D38BF    jne         004D38C7
 004D38C1    or          byte ptr [ebp-9],1
>004D38C5    jmp         004D3908
 004D38C7    cmp         byte ptr [ebp-11],3E
>004D38CB    jne         004D38F2
 004D38CD    mov         eax,dword ptr [ebp-10]
 004D38D0    cmp         eax,dword ptr [ebp-8]
>004D38D3    jge         004D38F2
 004D38D5    and         byte ptr [ebp-9],0FB
 004D38D9    cmp         dword ptr [ebp-10],1
>004D38DD    jle         004D38EC
 004D38DF    mov         eax,dword ptr [ebp-4]
 004D38E2    mov         edx,dword ptr [ebp-10]
 004D38E5    cmp         byte ptr [eax+edx-2],3C
>004D38EA    je          004D3908
 004D38EC    or          byte ptr [ebp-9],2
>004D38F0    jmp         004D3908
 004D38F2    cmp         byte ptr [ebp-11],3C
>004D38F6    jne         004D3908
 004D38F8    mov         eax,dword ptr [ebp-10]
 004D38FB    cmp         eax,dword ptr [ebp-8]
>004D38FE    jge         004D3908
 004D3900    and         byte ptr [ebp-9],0FD
 004D3904    or          byte ptr [ebp-9],4
 004D3908    inc         dword ptr [ebp-10]
 004D390B    dec         dword ptr [ebp-18]
>004D390E    jne         004D38AE
 004D3910    mov         edx,dword ptr [ebp-8]
 004D3913    mov         eax,dword ptr [ebp-4]
 004D3916    call        004D36E4
 004D391B    cmp         al,1
>004D391D    jne         004D3923
 004D391F    or          byte ptr [ebp-9],8
 004D3923    mov         al,byte ptr [ebp-9]
 004D3926    mov         esp,ebp
 004D3928    pop         ebp
 004D3929    ret
end;*}

//004D3930
{*function sub_004D3930(?:?):?;
begin
 004D3930    push        ebp
 004D3931    mov         ebp,esp
 004D3933    push        ecx
 004D3934    mov         byte ptr [ebp-1],al
 004D3937    mov         al,byte ptr [ebp-1]
 004D393A    mov         byte ptr [ebp-2],al
 004D393D    mov         al,byte ptr [ebp-1]
 004D3940    sub         al,2F
>004D3942    je          004D3954
 004D3944    sub         al,0B
>004D3946    jne         004D395E
 004D3948    mov         eax,[0056DFC8];^gvar_005718C0
 004D394D    mov         al,byte ptr [eax]
 004D394F    mov         byte ptr [ebp-2],al
>004D3952    jmp         004D395E
 004D3954    mov         eax,[0056E0F8];^gvar_005718B5
 004D3959    mov         al,byte ptr [eax]
 004D395B    mov         byte ptr [ebp-2],al
 004D395E    mov         al,byte ptr [ebp-2]
 004D3961    pop         ecx
 004D3962    pop         ebp
 004D3963    ret
end;*}

//004D3964
{*procedure sub_004D3964(?:?; ?:AnsiString; ?:?; ?:?);
begin
 004D3964    push        ebp
 004D3965    mov         ebp,esp
 004D3967    add         esp,0FFFFFFC0
 004D396A    push        ebx
 004D396B    xor         ebx,ebx
 004D396D    mov         dword ptr [ebp-40],ebx
 004D3970    mov         dword ptr [ebp-34],ebx
 004D3973    mov         dword ptr [ebp-38],ebx
 004D3976    mov         dword ptr [ebp-3C],ebx
 004D3979    mov         dword ptr [ebp-30],ebx
 004D397C    mov         dword ptr [ebp-24],ebx
 004D397F    mov         dword ptr [ebp-28],ebx
 004D3982    mov         dword ptr [ebp-2C],ebx
 004D3985    mov         byte ptr [ebp-9],cl
 004D3988    mov         dword ptr [ebp-8],edx
 004D398B    mov         dword ptr [ebp-4],eax
 004D398E    xor         eax,eax
 004D3990    push        ebp
 004D3991    push        4D3BB4
 004D3996    push        dword ptr fs:[eax]
 004D3999    mov         dword ptr fs:[eax],esp
 004D399C    mov         eax,dword ptr [ebp+8]
 004D399F    mov         edx,dword ptr [ebp-8]
 004D39A2    call        @LStrAsg
 004D39A7    mov         edx,1
 004D39AC    mov         eax,dword ptr [ebp-4]
 004D39AF    call        004D3884
 004D39B4    mov         byte ptr [ebp-1A],al
 004D39B7    test        byte ptr [ebp-1A],1
>004D39BB    jne         004D3AA9
 004D39C1    mov         dword ptr [ebp-14],1
 004D39C8    mov         eax,dword ptr [ebp-4]
 004D39CB    call        @LStrLen
 004D39D0    test        eax,eax
>004D39D2    jle         004D3B99
 004D39D8    mov         dword ptr [ebp-20],eax
 004D39DB    mov         dword ptr [ebp-18],1
 004D39E2    mov         edx,dword ptr [ebp-18]
 004D39E5    mov         eax,dword ptr [ebp-4]
 004D39E8    call        004D36E4
 004D39ED    mov         byte ptr [ebp-19],al
 004D39F0    mov         al,byte ptr [ebp-19]
 004D39F3    dec         eax
 004D39F4    sub         al,2
>004D39F6    jae         004D3A64
 004D39F8    lea         eax,[ebp-24]
 004D39FB    push        eax
 004D39FC    mov         ecx,dword ptr [ebp-14]
 004D39FF    dec         ecx
 004D3A00    mov         eax,dword ptr [ebp+8]
 004D3A03    mov         eax,dword ptr [eax]
 004D3A05    mov         edx,1
 004D3A0A    call        @LStrCopy
 004D3A0F    push        dword ptr [ebp-24]
 004D3A12    mov         eax,dword ptr [ebp-4]
 004D3A15    mov         edx,dword ptr [ebp-18]
 004D3A18    mov         al,byte ptr [eax+edx-1]
 004D3A1C    call        004D3930
 004D3A21    mov         edx,eax
 004D3A23    lea         eax,[ebp-28]
 004D3A26    call        @LStrFromChar
 004D3A2B    push        dword ptr [ebp-28]
 004D3A2E    lea         eax,[ebp-2C]
 004D3A31    push        eax
 004D3A32    mov         eax,dword ptr [ebp+8]
 004D3A35    mov         eax,dword ptr [eax]
 004D3A37    call        @LStrLen
 004D3A3C    mov         ecx,eax
 004D3A3E    sub         ecx,dword ptr [ebp-14]
 004D3A41    inc         ecx
 004D3A42    mov         eax,dword ptr [ebp+8]
 004D3A45    mov         eax,dword ptr [eax]
 004D3A47    mov         edx,dword ptr [ebp-14]
 004D3A4A    call        @LStrCopy
 004D3A4F    push        dword ptr [ebp-2C]
 004D3A52    mov         eax,dword ptr [ebp+8]
 004D3A55    mov         edx,3
 004D3A5A    call        @LStrCatN
 004D3A5F    inc         dword ptr [ebp-14]
>004D3A62    jmp         004D3A98
 004D3A64    mov         al,byte ptr [ebp-19]
 004D3A67    add         al,0FC
 004D3A69    sub         al,2
>004D3A6B    jae         004D3A98
 004D3A6D    mov         eax,dword ptr [ebp+8]
 004D3A70    mov         eax,dword ptr [eax]
 004D3A72    call        @LStrLen
 004D3A77    cmp         eax,dword ptr [ebp-14]
>004D3A7A    jge         004D3A95
 004D3A7C    lea         eax,[ebp-30]
 004D3A7F    mov         dl,byte ptr [ebp-9]
 004D3A82    call        @LStrFromChar
 004D3A87    mov         edx,dword ptr [ebp-30]
 004D3A8A    mov         eax,dword ptr [ebp+8]
 004D3A8D    call        @LStrCat
 004D3A92    mov         eax,dword ptr [ebp+8]
 004D3A95    inc         dword ptr [ebp-14]
 004D3A98    inc         dword ptr [ebp-18]
 004D3A9B    dec         dword ptr [ebp-20]
>004D3A9E    jne         004D39E2
>004D3AA4    jmp         004D3B99
 004D3AA9    mov         eax,dword ptr [ebp+8]
 004D3AAC    mov         eax,dword ptr [eax]
 004D3AAE    call        @LStrLen
 004D3AB3    mov         dword ptr [ebp-14],eax
 004D3AB6    mov         eax,dword ptr [ebp-4]
 004D3AB9    call        @LStrLen
 004D3ABE    dec         eax
 004D3ABF    test        eax,eax
>004D3AC1    jl          004D3B99
 004D3AC7    inc         eax
 004D3AC8    mov         dword ptr [ebp-20],eax
 004D3ACB    mov         dword ptr [ebp-10],0
 004D3AD2    mov         eax,dword ptr [ebp-4]
 004D3AD5    call        @LStrLen
 004D3ADA    sub         eax,dword ptr [ebp-10]
 004D3ADD    mov         dword ptr [ebp-18],eax
 004D3AE0    mov         edx,dword ptr [ebp-18]
 004D3AE3    mov         eax,dword ptr [ebp-4]
 004D3AE6    call        004D36E4
 004D3AEB    mov         byte ptr [ebp-19],al
 004D3AEE    mov         al,byte ptr [ebp-19]
 004D3AF1    dec         eax
 004D3AF2    sub         al,2
>004D3AF4    jae         004D3B5E
 004D3AF6    lea         eax,[ebp-34]
 004D3AF9    push        eax
 004D3AFA    mov         eax,dword ptr [ebp+8]
 004D3AFD    mov         eax,dword ptr [eax]
 004D3AFF    mov         ecx,dword ptr [ebp-14]
 004D3B02    mov         edx,1
 004D3B07    call        @LStrCopy
 004D3B0C    push        dword ptr [ebp-34]
 004D3B0F    mov         eax,dword ptr [ebp-4]
 004D3B12    mov         edx,dword ptr [ebp-18]
 004D3B15    mov         al,byte ptr [eax+edx-1]
 004D3B19    call        004D3930
 004D3B1E    mov         edx,eax
 004D3B20    lea         eax,[ebp-38]
 004D3B23    call        @LStrFromChar
 004D3B28    push        dword ptr [ebp-38]
 004D3B2B    lea         eax,[ebp-3C]
 004D3B2E    push        eax
 004D3B2F    mov         eax,dword ptr [ebp+8]
 004D3B32    mov         eax,dword ptr [eax]
 004D3B34    call        @LStrLen
 004D3B39    mov         ecx,eax
 004D3B3B    sub         ecx,dword ptr [ebp-14]
 004D3B3E    mov         edx,dword ptr [ebp-14]
 004D3B41    inc         edx
 004D3B42    mov         eax,dword ptr [ebp+8]
 004D3B45    mov         eax,dword ptr [eax]
 004D3B47    call        @LStrCopy
 004D3B4C    push        dword ptr [ebp-3C]
 004D3B4F    mov         eax,dword ptr [ebp+8]
 004D3B52    mov         edx,3
 004D3B57    call        @LStrCatN
>004D3B5C    jmp         004D3B8D
 004D3B5E    mov         al,byte ptr [ebp-19]
 004D3B61    add         al,0FC
 004D3B63    sub         al,2
>004D3B65    jae         004D3B8D
 004D3B67    cmp         dword ptr [ebp-14],1
>004D3B6B    jge         004D3B8A
 004D3B6D    lea         eax,[ebp-40]
 004D3B70    mov         dl,byte ptr [ebp-9]
 004D3B73    call        @LStrFromChar
 004D3B78    mov         edx,dword ptr [ebp-40]
 004D3B7B    mov         ecx,dword ptr [ebp+8]
 004D3B7E    mov         ecx,dword ptr [ecx]
 004D3B80    mov         eax,dword ptr [ebp+8]
 004D3B83    call        @LStrCat3
>004D3B88    jmp         004D3B8D
 004D3B8A    dec         dword ptr [ebp-14]
 004D3B8D    inc         dword ptr [ebp-10]
 004D3B90    dec         dword ptr [ebp-20]
>004D3B93    jne         004D3AD2
 004D3B99    xor         eax,eax
 004D3B9B    pop         edx
 004D3B9C    pop         ecx
 004D3B9D    pop         ecx
 004D3B9E    mov         dword ptr fs:[eax],edx
 004D3BA1    push        4D3BBB
 004D3BA6    lea         eax,[ebp-40]
 004D3BA9    mov         edx,8
 004D3BAE    call        @LStrArrayClr
 004D3BB3    ret
>004D3BB4    jmp         @HandleFinally
>004D3BB9    jmp         004D3BA6
 004D3BBB    pop         ebx
 004D3BBC    mov         esp,ebp
 004D3BBE    pop         ebp
 004D3BBF    ret         4
end;*}

//004D3BC4
{*function sub_004D3BC4(?:?):?;
begin
 004D3BC4    push        ebp
 004D3BC5    mov         ebp,esp
 004D3BC7    add         esp,0FFFFFFEC
 004D3BCA    mov         dword ptr [ebp-4],eax
 004D3BCD    mov         byte ptr [ebp-5],1
 004D3BD1    mov         eax,dword ptr [ebp-4]
 004D3BD4    call        @LStrLen
 004D3BD9    cmp         eax,4
>004D3BDC    jl          004D3C79
 004D3BE2    mov         dword ptr [ebp-10],0FFFFFFFF
 004D3BE9    mov         dword ptr [ebp-14],0FFFFFFFF
 004D3BF0    mov         eax,dword ptr [ebp-4]
 004D3BF3    call        @LStrLen
 004D3BF8    mov         dword ptr [ebp-0C],eax
 004D3BFB    cmp         dword ptr [ebp-14],0
>004D3BFF    jge         004D3C43
 004D3C01    mov         edx,dword ptr [ebp-0C]
 004D3C04    mov         eax,dword ptr [ebp-4]
 004D3C07    call        004D36E4
 004D3C0C    cmp         al,6
>004D3C0E    jne         004D3C24
 004D3C10    cmp         dword ptr [ebp-10],0
>004D3C14    jge         004D3C1E
 004D3C16    mov         eax,dword ptr [ebp-0C]
 004D3C19    mov         dword ptr [ebp-10],eax
>004D3C1C    jmp         004D3C24
 004D3C1E    mov         eax,dword ptr [ebp-0C]
 004D3C21    mov         dword ptr [ebp-14],eax
 004D3C24    dec         dword ptr [ebp-0C]
 004D3C27    cmp         dword ptr [ebp-0C],0
>004D3C2B    jle         004D3C43
 004D3C2D    mov         eax,dword ptr [ebp-4]
 004D3C30    call        @LStrLen
 004D3C35    sub         eax,4
 004D3C38    cmp         eax,dword ptr [ebp-0C]
>004D3C3B    jg          004D3C43
 004D3C3D    cmp         dword ptr [ebp-14],0
>004D3C41    jl          004D3C01
 004D3C43    cmp         dword ptr [ebp-14],0
>004D3C47    jge         004D3C4F
 004D3C49    mov         eax,dword ptr [ebp-10]
 004D3C4C    mov         dword ptr [ebp-14],eax
 004D3C4F    cmp         dword ptr [ebp-14],0
>004D3C53    jle         004D3C79
 004D3C55    mov         eax,dword ptr [ebp-4]
 004D3C58    call        @LStrLen
 004D3C5D    cmp         eax,dword ptr [ebp-14]
>004D3C60    je          004D3C79
 004D3C62    mov         eax,dword ptr [ebp-14]
 004D3C65    mov         edx,dword ptr [ebp-4]
 004D3C68    mov         al,byte ptr [edx+eax]
 004D3C6B    cmp         al,byte ptr ds:[56CC4C];0x30 gvar_0056CC4C
 004D3C71    sete        al
 004D3C74    xor         al,1
 004D3C76    mov         byte ptr [ebp-5],al
 004D3C79    mov         al,byte ptr [ebp-5]
 004D3C7C    mov         esp,ebp
 004D3C7E    pop         ebp
 004D3C7F    ret
end;*}

//004D3C80
{*function sub_004D3C80(?:?):?;
begin
 004D3C80    push        ebp
 004D3C81    mov         ebp,esp
 004D3C83    add         esp,0FFFFFFF8
 004D3C86    mov         dword ptr [ebp-4],eax
 004D3C89    mov         al,[0056CC44];0x5F gvar_0056CC44
 004D3C8E    mov         byte ptr [ebp-5],al
 004D3C91    mov         eax,dword ptr [ebp-4]
 004D3C94    call        @LStrLen
 004D3C99    cmp         eax,4
>004D3C9C    jl          004D3CF9
 004D3C9E    mov         eax,dword ptr [ebp-4]
 004D3CA1    call        @LStrLen
 004D3CA6    mov         edx,eax
 004D3CA8    dec         edx
 004D3CA9    mov         eax,dword ptr [ebp-4]
 004D3CAC    call        004D36E4
 004D3CB1    cmp         al,6
>004D3CB3    jne         004D3CF9
 004D3CB5    mov         eax,dword ptr [ebp-4]
 004D3CB8    call        @LStrLen
 004D3CBD    mov         edx,eax
 004D3CBF    sub         edx,2
 004D3CC2    mov         eax,dword ptr [ebp-4]
 004D3CC5    call        004D36E4
 004D3CCA    cmp         al,6
>004D3CCC    je          004D3CE7
 004D3CCE    mov         eax,dword ptr [ebp-4]
 004D3CD1    call        @LStrLen
 004D3CD6    mov         edx,eax
 004D3CD8    sub         edx,3
 004D3CDB    mov         eax,dword ptr [ebp-4]
 004D3CDE    call        004D36E4
 004D3CE3    cmp         al,6
>004D3CE5    jne         004D3CF9
 004D3CE7    mov         eax,dword ptr [ebp-4]
 004D3CEA    call        @LStrLen
 004D3CEF    mov         edx,dword ptr [ebp-4]
 004D3CF2    mov         al,byte ptr [edx+eax-1]
 004D3CF6    mov         byte ptr [ebp-5],al
 004D3CF9    mov         al,byte ptr [ebp-5]
 004D3CFC    pop         ecx
 004D3CFD    pop         ecx
 004D3CFE    pop         ebp
 004D3CFF    ret
end;*}

//004D3D00
{*procedure sub_004D3D00(?:?; ?:?; ?:?);
begin
 004D3D00    push        ebp
 004D3D01    mov         ebp,esp
 004D3D03    add         esp,0FFFFFFE4
 004D3D06    push        ebx
 004D3D07    xor         ebx,ebx
 004D3D09    mov         dword ptr [ebp-1C],ebx
 004D3D0C    mov         dword ptr [ebp-0C],ecx
 004D3D0F    mov         dword ptr [ebp-8],edx
 004D3D12    mov         dword ptr [ebp-4],eax
 004D3D15    xor         eax,eax
 004D3D17    push        ebp
 004D3D18    push        4D3D95
 004D3D1D    push        dword ptr fs:[eax]
 004D3D20    mov         dword ptr fs:[eax],esp
 004D3D23    mov         eax,dword ptr [ebp-0C]
 004D3D26    call        @LStrClr
 004D3D2B    mov         eax,dword ptr [ebp-8]
 004D3D2E    test        eax,eax
>004D3D30    jle         004D3D7F
 004D3D32    mov         dword ptr [ebp-18],eax
 004D3D35    mov         dword ptr [ebp-10],1
 004D3D3C    mov         edx,dword ptr [ebp-10]
 004D3D3F    mov         eax,dword ptr [ebp-4]
 004D3D42    call        004D36E4
 004D3D47    mov         byte ptr [ebp-11],al
 004D3D4A    mov         al,byte ptr [ebp-11]
 004D3D4D    sub         al,3
>004D3D4F    je          004D3D77
 004D3D51    add         al,0FD
 004D3D53    sub         al,2
>004D3D55    jb          004D3D77
 004D3D57    lea         eax,[ebp-1C]
 004D3D5A    mov         edx,dword ptr [ebp-4]
 004D3D5D    mov         ecx,dword ptr [ebp-10]
 004D3D60    mov         dl,byte ptr [edx+ecx-1]
 004D3D64    call        @LStrFromChar
 004D3D69    mov         edx,dword ptr [ebp-1C]
 004D3D6C    mov         eax,dword ptr [ebp-0C]
 004D3D6F    call        @LStrCat
 004D3D74    mov         eax,dword ptr [ebp-0C]
 004D3D77    inc         dword ptr [ebp-10]
 004D3D7A    dec         dword ptr [ebp-18]
>004D3D7D    jne         004D3D3C
 004D3D7F    xor         eax,eax
 004D3D81    pop         edx
 004D3D82    pop         ecx
 004D3D83    pop         ecx
 004D3D84    mov         dword ptr fs:[eax],edx
 004D3D87    push        4D3D9C
 004D3D8C    lea         eax,[ebp-1C]
 004D3D8F    call        @LStrClr
 004D3D94    ret
>004D3D95    jmp         @HandleFinally
>004D3D9A    jmp         004D3D8C
 004D3D9C    pop         ebx
 004D3D9D    mov         esp,ebp
 004D3D9F    pop         ebp
 004D3DA0    ret
end;*}

//004D3DA4
{*function sub_004D3DA4(?:TEditMask; ?:Integer):?;
begin
 004D3DA4    push        ebp
 004D3DA5    mov         ebp,esp
 004D3DA7    add         esp,0FFFFFFF0
 004D3DAA    xor         ecx,ecx
 004D3DAC    mov         dword ptr [ebp-10],ecx
 004D3DAF    mov         dword ptr [ebp-8],edx
 004D3DB2    mov         dword ptr [ebp-4],eax
 004D3DB5    xor         eax,eax
 004D3DB7    push        ebp
 004D3DB8    push        4D3DF2
 004D3DBD    push        dword ptr fs:[eax]
 004D3DC0    mov         dword ptr fs:[eax],esp
 004D3DC3    lea         ecx,[ebp-10]
 004D3DC6    mov         edx,dword ptr [ebp-8]
 004D3DC9    mov         eax,dword ptr [ebp-4]
 004D3DCC    call        004D3D00
 004D3DD1    mov         eax,dword ptr [ebp-10]
 004D3DD4    call        @LStrLen
 004D3DD9    mov         dword ptr [ebp-0C],eax
 004D3DDC    xor         eax,eax
 004D3DDE    pop         edx
 004D3DDF    pop         ecx
 004D3DE0    pop         ecx
 004D3DE1    mov         dword ptr fs:[eax],edx
 004D3DE4    push        4D3DF9
 004D3DE9    lea         eax,[ebp-10]
 004D3DEC    call        @LStrClr
 004D3DF1    ret
>004D3DF2    jmp         @HandleFinally
>004D3DF7    jmp         004D3DE9
 004D3DF9    mov         eax,dword ptr [ebp-0C]
 004D3DFC    mov         esp,ebp
 004D3DFE    pop         ebp
 004D3DFF    ret
end;*}

//004D3E00
{*function sub_004D3E00(?:TEditMask; ?:?):?;
begin
 004D3E00    push        ebp
 004D3E01    mov         ebp,esp
 004D3E03    add         esp,0FFFFFFE4
 004D3E06    mov         dword ptr [ebp-8],edx
 004D3E09    mov         dword ptr [ebp-4],eax
 004D3E0C    mov         eax,dword ptr [ebp-4]
 004D3E0F    call        @LStrLen
 004D3E14    mov         edx,eax
 004D3E16    mov         eax,dword ptr [ebp-4]
 004D3E19    call        004D3DA4
 004D3E1E    mov         dword ptr [ebp-18],eax
 004D3E21    mov         eax,dword ptr [ebp-8]
 004D3E24    cmp         eax,dword ptr [ebp-18]
>004D3E27    jle         004D3E32
 004D3E29    mov         dword ptr [ebp-0C],0FFFFFFFF
>004D3E30    jmp         004D3E76
 004D3E32    xor         eax,eax
 004D3E34    mov         dword ptr [ebp-0C],eax
 004D3E37    mov         eax,dword ptr [ebp-8]
 004D3E3A    mov         dword ptr [ebp-14],eax
 004D3E3D    mov         eax,dword ptr [ebp-4]
 004D3E40    call        @LStrLen
 004D3E45    test        eax,eax
>004D3E47    jle         004D3E76
 004D3E49    mov         dword ptr [ebp-1C],eax
 004D3E4C    mov         dword ptr [ebp-10],1
 004D3E53    inc         dword ptr [ebp-0C]
 004D3E56    mov         edx,dword ptr [ebp-10]
 004D3E59    mov         eax,dword ptr [ebp-4]
 004D3E5C    call        004D36E4
 004D3E61    cmp         al,3
>004D3E63    je          004D3E6E
 004D3E65    dec         dword ptr [ebp-14]
 004D3E68    cmp         dword ptr [ebp-14],0
>004D3E6C    jl          004D3E76
 004D3E6E    inc         dword ptr [ebp-10]
 004D3E71    dec         dword ptr [ebp-1C]
>004D3E74    jne         004D3E53
 004D3E76    mov         eax,dword ptr [ebp-0C]
 004D3E79    mov         esp,ebp
 004D3E7B    pop         ebp
 004D3E7C    ret
end;*}

//004D3E80
{*function sub_004D3E80(?:TEditMask; ?:?):?;
begin
 004D3E80    push        ebp
 004D3E81    mov         ebp,esp
 004D3E83    add         esp,0FFFFFFEC
 004D3E86    mov         dword ptr [ebp-8],edx
 004D3E89    mov         dword ptr [ebp-4],eax
 004D3E8C    mov         byte ptr [ebp-9],0
 004D3E90    mov         edx,dword ptr [ebp-8]
 004D3E93    mov         eax,dword ptr [ebp-4]
 004D3E96    call        004D3E00
 004D3E9B    mov         dword ptr [ebp-10],eax
 004D3E9E    cmp         dword ptr [ebp-10],0
>004D3EA2    jl          004D3EBE
 004D3EA4    mov         edx,dword ptr [ebp-10]
 004D3EA7    mov         eax,dword ptr [ebp-4]
 004D3EAA    call        004D36E4
 004D3EAF    mov         byte ptr [ebp-11],al
 004D3EB2    mov         al,byte ptr [ebp-11]
 004D3EB5    dec         eax
 004D3EB6    sub         al,2
 004D3EB8    setb        al
 004D3EBB    mov         byte ptr [ebp-9],al
 004D3EBE    mov         al,byte ptr [ebp-9]
 004D3EC1    mov         esp,ebp
 004D3EC3    pop         ebp
 004D3EC4    ret
end;*}

//004D3EC8
{*procedure sub_004D3EC8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D3EC8    push        ebp
 004D3EC9    mov         ebp,esp
 004D3ECB    add         esp,0FFFFFFCC
 004D3ECE    push        ebx
 004D3ECF    xor         ebx,ebx
 004D3ED1    mov         dword ptr [ebp-30],ebx
 004D3ED4    mov         dword ptr [ebp-34],ebx
 004D3ED7    mov         dword ptr [ebp-28],ebx
 004D3EDA    mov         dword ptr [ebp-2C],ebx
 004D3EDD    mov         dword ptr [ebp-24],ebx
 004D3EE0    mov         dword ptr [ebp-20],ebx
 004D3EE3    mov         dword ptr [ebp-0C],ecx
 004D3EE6    mov         dword ptr [ebp-8],edx
 004D3EE9    mov         dword ptr [ebp-4],eax
 004D3EEC    xor         eax,eax
 004D3EEE    push        ebp
 004D3EEF    push        4D4079
 004D3EF4    push        dword ptr fs:[eax]
 004D3EF7    mov         dword ptr fs:[eax],esp
 004D3EFA    mov         eax,dword ptr [ebp+14]
 004D3EFD    sub         eax,dword ptr [ebp-0C]
 004D3F00    cmp         eax,dword ptr [ebp+10]
>004D3F03    jge         004D3FA8
 004D3F09    mov         edx,1
 004D3F0E    mov         eax,dword ptr [ebp-4]
 004D3F11    call        004D3884
 004D3F16    mov         byte ptr [ebp-0D],al
 004D3F19    mov         eax,dword ptr [ebp+14]
 004D3F1C    dec         eax
 004D3F1D    mov         dword ptr [ebp-14],eax
 004D3F20    test        byte ptr [ebp-0D],1
>004D3F24    je          004D3F2D
 004D3F26    mov         eax,dword ptr [ebp-0C]
 004D3F29    dec         eax
 004D3F2A    mov         dword ptr [ebp-14],eax
 004D3F2D    mov         eax,dword ptr [ebp+8]
 004D3F30    push        eax
 004D3F31    mov         ecx,dword ptr [ebp-14]
 004D3F34    mov         edx,1
 004D3F39    mov         eax,dword ptr [ebp-8]
 004D3F3C    call        @LStrCopy
 004D3F41    mov         eax,dword ptr [ebp+14]
 004D3F44    sub         eax,dword ptr [ebp-0C]
 004D3F47    mov         edx,dword ptr [ebp+10]
 004D3F4A    sub         edx,eax
 004D3F4C    test        edx,edx
>004D3F4E    jle         004D3F7B
 004D3F50    mov         dword ptr [ebp-1C],edx
 004D3F53    mov         dword ptr [ebp-18],1
 004D3F5A    lea         eax,[ebp-20]
 004D3F5D    mov         dl,byte ptr [ebp+0C]
 004D3F60    call        @LStrFromChar
 004D3F65    mov         edx,dword ptr [ebp-20]
 004D3F68    mov         eax,dword ptr [ebp+8]
 004D3F6B    call        @LStrCat
 004D3F70    mov         eax,dword ptr [ebp+8]
 004D3F73    inc         dword ptr [ebp-18]
 004D3F76    dec         dword ptr [ebp-1C]
>004D3F79    jne         004D3F5A
 004D3F7B    lea         eax,[ebp-24]
 004D3F7E    push        eax
 004D3F7F    mov         eax,dword ptr [ebp-8]
 004D3F82    call        @LStrLen
 004D3F87    mov         ecx,eax
 004D3F89    mov         edx,dword ptr [ebp-14]
 004D3F8C    inc         edx
 004D3F8D    mov         eax,dword ptr [ebp-8]
 004D3F90    call        @LStrCopy
 004D3F95    mov         edx,dword ptr [ebp-24]
 004D3F98    mov         eax,dword ptr [ebp+8]
 004D3F9B    call        @LStrCat
 004D3FA0    mov         eax,dword ptr [ebp+8]
>004D3FA3    jmp         004D405E
 004D3FA8    mov         eax,dword ptr [ebp+14]
 004D3FAB    sub         eax,dword ptr [ebp-0C]
 004D3FAE    cmp         eax,dword ptr [ebp+10]
>004D3FB1    jle         004D4053
 004D3FB7    mov         edx,1
 004D3FBC    mov         eax,dword ptr [ebp-4]
 004D3FBF    call        004D3884
 004D3FC4    mov         byte ptr [ebp-0D],al
 004D3FC7    test        byte ptr [ebp-0D],1
>004D3FCB    je          004D4010
 004D3FCD    lea         eax,[ebp-28]
 004D3FD0    push        eax
 004D3FD1    mov         eax,dword ptr [ebp-8]
 004D3FD4    call        @LStrLen
 004D3FD9    mov         ecx,eax
 004D3FDB    mov         edx,dword ptr [ebp+14]
 004D3FDE    sub         edx,dword ptr [ebp+10]
 004D3FE1    mov         eax,dword ptr [ebp-8]
 004D3FE4    call        @LStrCopy
 004D3FE9    mov         eax,dword ptr [ebp-28]
 004D3FEC    push        eax
 004D3FED    lea         eax,[ebp-2C]
 004D3FF0    push        eax
 004D3FF1    mov         ecx,dword ptr [ebp-0C]
 004D3FF4    dec         ecx
 004D3FF5    mov         edx,1
 004D3FFA    mov         eax,dword ptr [ebp-8]
 004D3FFD    call        @LStrCopy
 004D4002    mov         edx,dword ptr [ebp-2C]
 004D4005    mov         eax,dword ptr [ebp+8]
 004D4008    pop         ecx
 004D4009    call        @LStrCat3
>004D400E    jmp         004D405E
 004D4010    lea         eax,[ebp-30]
 004D4013    push        eax
 004D4014    mov         eax,dword ptr [ebp-8]
 004D4017    call        @LStrLen
 004D401C    mov         ecx,eax
 004D401E    mov         edx,dword ptr [ebp+14]
 004D4021    mov         eax,dword ptr [ebp-8]
 004D4024    call        @LStrCopy
 004D4029    mov         eax,dword ptr [ebp-30]
 004D402C    push        eax
 004D402D    lea         eax,[ebp-34]
 004D4030    push        eax
 004D4031    mov         ecx,dword ptr [ebp-0C]
 004D4034    add         ecx,dword ptr [ebp+10]
 004D4037    dec         ecx
 004D4038    mov         edx,1
 004D403D    mov         eax,dword ptr [ebp-8]
 004D4040    call        @LStrCopy
 004D4045    mov         edx,dword ptr [ebp-34]
 004D4048    mov         eax,dword ptr [ebp+8]
 004D404B    pop         ecx
 004D404C    call        @LStrCat3
>004D4051    jmp         004D405E
 004D4053    mov         eax,dword ptr [ebp+8]
 004D4056    mov         edx,dword ptr [ebp-8]
 004D4059    call        @LStrAsg
 004D405E    xor         eax,eax
 004D4060    pop         edx
 004D4061    pop         ecx
 004D4062    pop         ecx
 004D4063    mov         dword ptr fs:[eax],edx
 004D4066    push        4D4080
 004D406B    lea         eax,[ebp-34]
 004D406E    mov         edx,6
 004D4073    call        @LStrArrayClr
 004D4078    ret
>004D4079    jmp         @HandleFinally
>004D407E    jmp         004D406B
 004D4080    pop         ebx
 004D4081    mov         esp,ebp
 004D4083    pop         ebp
 004D4084    ret         10
end;*}

//004D4088
{*procedure sub_004D4088(?:?; ?:AnsiString; ?:?; ?:?);
begin
 004D4088    push        ebp
 004D4089    mov         ebp,esp
 004D408B    add         esp,0FFFFFFC4
 004D408E    push        ebx
 004D408F    xor         ebx,ebx
 004D4091    mov         dword ptr [ebp-3C],ebx
 004D4094    mov         dword ptr [ebp-38],ebx
 004D4097    mov         dword ptr [ebp-34],ebx
 004D409A    mov         byte ptr [ebp-9],cl
 004D409D    mov         dword ptr [ebp-8],edx
 004D40A0    mov         dword ptr [ebp-4],eax
 004D40A3    xor         eax,eax
 004D40A5    push        ebp
 004D40A6    push        4D429A
 004D40AB    push        dword ptr fs:[eax]
 004D40AE    mov         dword ptr fs:[eax],esp
 004D40B1    xor         eax,eax
 004D40B3    mov         dword ptr [ebp-14],eax
 004D40B6    mov         eax,dword ptr [ebp+8]
 004D40B9    mov         edx,dword ptr [ebp-8]
 004D40BC    call        @LStrAsg
 004D40C1    mov         eax,dword ptr [ebp-4]
 004D40C4    call        @LStrLen
 004D40C9    test        eax,eax
>004D40CB    jle         004D41D3
 004D40D1    mov         dword ptr [ebp-2C],eax
 004D40D4    mov         dword ptr [ebp-20],1
 004D40DB    mov         edx,dword ptr [ebp-20]
 004D40DE    mov         eax,dword ptr [ebp-4]
 004D40E1    call        004D36E4
 004D40E6    mov         byte ptr [ebp-21],al
 004D40E9    mov         al,byte ptr [ebp-21]
 004D40EC    dec         eax
 004D40ED    sub         al,2
>004D40EF    jae         004D41C7
 004D40F5    mov         edx,dword ptr [ebp-20]
 004D40F8    mov         eax,dword ptr [ebp-4]
 004D40FB    call        004D3DA4
 004D4100    mov         dword ptr [ebp-1C],eax
 004D4103    mov         eax,dword ptr [ebp+8]
 004D4106    mov         eax,dword ptr [eax]
 004D4108    call        @LStrLen
 004D410D    inc         eax
 004D410E    mov         dword ptr [ebp-18],eax
 004D4111    mov         eax,dword ptr [ebp-14]
 004D4114    inc         eax
 004D4115    push        eax
 004D4116    mov         eax,dword ptr [ebp+8]
 004D4119    mov         eax,dword ptr [eax]
 004D411B    call        @LStrLen
 004D4120    pop         edx
 004D4121    sub         eax,edx
>004D4123    jl          004D4159
 004D4125    inc         eax
 004D4126    mov         dword ptr [ebp-30],eax
 004D4129    mov         dword ptr [ebp-10],edx
 004D412C    mov         eax,dword ptr [ebp-20]
 004D412F    mov         edx,dword ptr [ebp-4]
 004D4132    mov         al,byte ptr [edx+eax-1]
 004D4136    call        004D3930
 004D413B    mov         edx,dword ptr [ebp+8]
 004D413E    mov         edx,dword ptr [edx]
 004D4140    mov         ecx,dword ptr [ebp-10]
 004D4143    cmp         al,byte ptr [edx+ecx-1]
>004D4147    jne         004D4151
 004D4149    mov         eax,dword ptr [ebp-10]
 004D414C    mov         dword ptr [ebp-18],eax
>004D414F    jmp         004D4159
 004D4151    inc         dword ptr [ebp-10]
 004D4154    dec         dword ptr [ebp-30]
>004D4157    jne         004D412C
 004D4159    mov         eax,dword ptr [ebp+8]
 004D415C    mov         eax,dword ptr [eax]
 004D415E    call        @LStrLen
 004D4163    cmp         eax,dword ptr [ebp-18]
>004D4166    jge         004D418F
 004D4168    mov         eax,dword ptr [ebp-20]
 004D416B    mov         edx,dword ptr [ebp-4]
 004D416E    mov         al,byte ptr [edx+eax-1]
 004D4172    call        004D3930
 004D4177    mov         edx,eax
 004D4179    lea         eax,[ebp-34]
 004D417C    call        @LStrFromChar
 004D4181    mov         edx,dword ptr [ebp-34]
 004D4184    mov         eax,dword ptr [ebp+8]
 004D4187    call        @LStrCat
 004D418C    mov         eax,dword ptr [ebp+8]
 004D418F    mov         eax,dword ptr [ebp-18]
 004D4192    push        eax
 004D4193    mov         eax,dword ptr [ebp-14]
 004D4196    inc         eax
 004D4197    mov         edx,dword ptr [ebp-1C]
 004D419A    sub         edx,eax
 004D419C    push        edx
 004D419D    mov         al,byte ptr [ebp-9]
 004D41A0    push        eax
 004D41A1    lea         eax,[ebp-38]
 004D41A4    push        eax
 004D41A5    mov         ecx,dword ptr [ebp-14]
 004D41A8    inc         ecx
 004D41A9    mov         edx,dword ptr [ebp+8]
 004D41AC    mov         edx,dword ptr [edx]
 004D41AE    mov         eax,dword ptr [ebp-4]
 004D41B1    call        004D3EC8
 004D41B6    mov         edx,dword ptr [ebp-38]
 004D41B9    mov         eax,dword ptr [ebp+8]
 004D41BC    call        @LStrAsg
 004D41C1    mov         eax,dword ptr [ebp-1C]
 004D41C4    mov         dword ptr [ebp-14],eax
 004D41C7    inc         dword ptr [ebp-20]
 004D41CA    dec         dword ptr [ebp-2C]
>004D41CD    jne         004D40DB
 004D41D3    mov         eax,dword ptr [ebp-4]
 004D41D6    call        @LStrLen
 004D41DB    mov         edx,eax
 004D41DD    mov         eax,dword ptr [ebp-4]
 004D41E0    call        004D3DA4
 004D41E5    mov         dword ptr [ebp-28],eax
 004D41E8    mov         eax,dword ptr [ebp+8]
 004D41EB    mov         eax,dword ptr [eax]
 004D41ED    call        @LStrLen
 004D41F2    cmp         eax,dword ptr [ebp-28]
>004D41F5    je          004D422E
 004D41F7    mov         eax,dword ptr [ebp+8]
 004D41FA    mov         eax,dword ptr [eax]
 004D41FC    call        @LStrLen
 004D4201    inc         eax
 004D4202    push        eax
 004D4203    mov         eax,dword ptr [ebp-28]
 004D4206    sub         eax,dword ptr [ebp-14]
 004D4209    push        eax
 004D420A    mov         al,byte ptr [ebp-9]
 004D420D    push        eax
 004D420E    lea         eax,[ebp-3C]
 004D4211    push        eax
 004D4212    mov         ecx,dword ptr [ebp-14]
 004D4215    inc         ecx
 004D4216    mov         edx,dword ptr [ebp+8]
 004D4219    mov         edx,dword ptr [edx]
 004D421B    mov         eax,dword ptr [ebp-4]
 004D421E    call        004D3EC8
 004D4223    mov         edx,dword ptr [ebp-3C]
 004D4226    mov         eax,dword ptr [ebp+8]
 004D4229    call        @LStrAsg
 004D422E    mov         eax,dword ptr [ebp+8]
 004D4231    mov         eax,dword ptr [eax]
 004D4233    call        @LStrLen
 004D4238    test        eax,eax
>004D423A    jle         004D427F
 004D423C    mov         dword ptr [ebp-2C],eax
 004D423F    mov         dword ptr [ebp-1C],1
 004D4246    mov         eax,dword ptr [ebp+8]
 004D4249    mov         eax,dword ptr [eax]
 004D424B    mov         edx,dword ptr [ebp-1C]
 004D424E    cmp         byte ptr [eax+edx-1],20
>004D4253    jne         004D4277
 004D4255    mov         edx,dword ptr [ebp-1C]
 004D4258    dec         edx
 004D4259    mov         eax,dword ptr [ebp-4]
 004D425C    call        004D3E80
 004D4261    test        al,al
>004D4263    jne         004D4277
 004D4265    mov         eax,dword ptr [ebp+8]
 004D4268    call        00405598
 004D426D    mov         edx,dword ptr [ebp-1C]
 004D4270    mov         cl,byte ptr [ebp-9]
 004D4273    mov         byte ptr [eax+edx-1],cl
 004D4277    inc         dword ptr [ebp-1C]
 004D427A    dec         dword ptr [ebp-2C]
>004D427D    jne         004D4246
 004D427F    xor         eax,eax
 004D4281    pop         edx
 004D4282    pop         ecx
 004D4283    pop         ecx
 004D4284    mov         dword ptr fs:[eax],edx
 004D4287    push        4D42A1
 004D428C    lea         eax,[ebp-3C]
 004D428F    mov         edx,3
 004D4294    call        @LStrArrayClr
 004D4299    ret
>004D429A    jmp         @HandleFinally
>004D429F    jmp         004D428C
 004D42A1    pop         ebx
 004D42A2    mov         esp,ebp
 004D42A4    pop         ebp
 004D42A5    ret         4
end;*}

end.