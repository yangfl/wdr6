//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit75;

interface

uses
  SysUtils, Classes;

    //function sub_004CE528(?:TMemoryStream):?;//004CE528
    //function sub_004CE548(?:TMemoryStream):?;//004CE548
    //function sub_004CE56C(?:TMemoryStream):?;//004CE56C
    //function sub_004CE58C(?:TMemoryStream):?;//004CE58C
    procedure sub_004CE5B0;//004CE5B0
    procedure sub_004CE5C4;//004CE5C4
    //function sub_004CE5F4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CE5F4
    //function sub_004CE82C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004CE82C
    procedure sub_004CEAB4;//004CEAB4
    procedure sub_004CEB3C;//004CEB3C
    procedure sub_004CEB6C;//004CEB6C
    procedure sub_004CEC08;//004CEC08
    procedure sub_004CEC90;//004CEC90
    //procedure sub_004CED14(?:?);//004CED14
    procedure sub_004CED2C;//004CED2C
    procedure sub_004CED80;//004CED80
    //function sub_004CEDD4(?:?; ?:?):?;//004CEDD4
    //procedure sub_004CEE3C(?:?; ?:?; ?:?; ?:?);//004CEE3C
    //procedure sub_004CEEA4(?:?; ?:?; ?:?; ?:?);//004CEEA4
    //procedure sub_004CEF3C(?:?; ?:?; ?:?; ?:?);//004CEF3C
    //procedure sub_004CEFA4(?:?; ?:?; ?:?; ?:?);//004CEFA4
    //function sub_004CF00C(?:?; ?:?; ?:?):?;//004CF00C
    //procedure sub_004CF080(?:?; ?:?);//004CF080
    //procedure sub_004CF108(?:?; ?:?);//004CF108
    //function sub_004CF190(?:?; ?:?; ?:Integer):?;//004CF190
    //function sub_004CF2A0(?:?):?;//004CF2A0
    //procedure sub_004CF300(?:?; ?:?; ?:?);//004CF300
    //procedure sub_004CF350(?:?);//004CF350
    //procedure sub_004CF384(?:?);//004CF384
    procedure sub_004CF3B8;//004CF3B8
    procedure sub_004CF3E0;//004CF3E0
    //procedure sub_004CF408(?:?);//004CF408
    procedure sub_004CF444;//004CF444
    procedure sub_004CF474;//004CF474
    procedure sub_004CF4A4;//004CF4A4
    procedure sub_004CF4D4;//004CF4D4
    //procedure sub_004CF500(?:?);//004CF500
    //function sub_004CF538:?;//004CF538
    //procedure sub_004CF590(?:?);//004CF590
    //function sub_004CF5C8(?:?; ?:TMemoryStream):?;//004CF5C8
    //function sub_004CF728(?:?; ?:TMemoryStream):?;//004CF728
    //function sub_004CF874(?:?):?;//004CF874
    //function sub_004CF954(?:?):?;//004CF954
    //function sub_004CFA34(?:?):?;//004CFA34
    //function sub_004CFB3C(?:?):?;//004CFB3C
    //function sub_004CFC1C(?:?; ?:?; ?:?):?;//004CFC1C
    //function sub_004CFD10:?;//004CFD10
    //function sub_004CFDEC:?;//004CFDEC
    //function sub_004CFEC8(?:?; ?:?; ?:TMemoryStream):?;//004CFEC8
    //procedure sub_004D0048(?:?);//004D0048
    //function sub_004D007C(?:?; ?:?; ?:TMemoryStream):?;//004D007C
    //function sub_004D01EC:?;//004D01EC
    //function sub_004D02C8(?:?; ?:?; ?:TMemoryStream):?;//004D02C8
    //function sub_004D0438(?:?; ?:?; ?:?; ?:?):?;//004D0438
    //function sub_004D05AC(?:?; ?:?; ?:?; ?:?):?;//004D05AC
    //function sub_004D0728:?;//004D0728
    //function sub_004D07E8(?:?):?;//004D07E8
    //function sub_004D0858:?;//004D0858
    //function sub_004D09C0(?:?):?;//004D09C0
    //function sub_004D0A50(?:?; ?:?):?;//004D0A50
    //procedure sub_004D0AB4(?:?; ?:?; ?:?; ?:?);//004D0AB4
    //procedure sub_004D0C2C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D0C2C
    //procedure sub_004D0E1C(?:?; ?:?);//004D0E1C
    //function sub_004D108C(?:?; ?:?; ?:?; ?:?; ?:?):?;//004D108C
    //function sub_004D1204(?:?; ?:?; ?:TMemoryStream):?;//004D1204
    //function sub_004D13AC(?:dword; ?:?; ?:TMemoryStream):?;//004D13AC
    //function sub_004D1570(?:?; ?:?; ?:?; ?:?; ?:?):?;//004D1570
    //function sub_004D16E8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004D16E8
    //function sub_004D1860(?:?):?;//004D1860
    //function sub_004D18B8(?:?):?;//004D18B8
    //function sub_004D190C(?:?):?;//004D190C
    //function sub_004D1960(?:?):?;//004D1960
    //function sub_004D19B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004D19B4
    //function sub_004D1A3C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004D1A3C
    //function sub_004D1AC4(?:?):?;//004D1AC4

implementation

//004CE528
{*function sub_004CE528(?:TMemoryStream):?;
begin
 004CE528    push        ebp
 004CE529    mov         ebp,esp
 004CE52B    add         esp,0FFFFFFF8
 004CE52E    mov         dword ptr [ebp-4],eax
 004CE531    lea         edx,[ebp-5]
 004CE534    mov         ecx,1
 004CE539    mov         eax,dword ptr [ebp-4]
 004CE53C    call        TStream.ReadBuffer
 004CE541    mov         al,byte ptr [ebp-5]
 004CE544    pop         ecx
 004CE545    pop         ecx
 004CE546    pop         ebp
 004CE547    ret
end;*}

//004CE548
{*function sub_004CE548(?:TMemoryStream):?;
begin
 004CE548    push        ebp
 004CE549    mov         ebp,esp
 004CE54B    add         esp,0FFFFFFF8
 004CE54E    mov         dword ptr [ebp-4],eax
 004CE551    lea         edx,[ebp-6]
 004CE554    mov         ecx,2
 004CE559    mov         eax,dword ptr [ebp-4]
 004CE55C    call        TStream.ReadBuffer
 004CE561    mov         ax,word ptr [ebp-6]
 004CE565    pop         ecx
 004CE566    pop         ecx
 004CE567    pop         ebp
 004CE568    ret
end;*}

//004CE56C
{*function sub_004CE56C(?:TMemoryStream):?;
begin
 004CE56C    push        ebp
 004CE56D    mov         ebp,esp
 004CE56F    add         esp,0FFFFFFF8
 004CE572    mov         dword ptr [ebp-4],eax
 004CE575    lea         edx,[ebp-8]
 004CE578    mov         ecx,4
 004CE57D    mov         eax,dword ptr [ebp-4]
 004CE580    call        TStream.ReadBuffer
 004CE585    mov         eax,dword ptr [ebp-8]
 004CE588    pop         ecx
 004CE589    pop         ecx
 004CE58A    pop         ebp
 004CE58B    ret
end;*}

//004CE58C
{*function sub_004CE58C(?:TMemoryStream):?;
begin
 004CE58C    push        ebp
 004CE58D    mov         ebp,esp
 004CE58F    add         esp,0FFFFFFF0
 004CE592    mov         dword ptr [ebp-4],eax
 004CE595    lea         edx,[ebp-10]
 004CE598    mov         ecx,8
 004CE59D    mov         eax,dword ptr [ebp-4]
 004CE5A0    call        TStream.ReadBuffer
 004CE5A5    mov         eax,dword ptr [ebp-10]
 004CE5A8    mov         edx,dword ptr [ebp-0C]
 004CE5AB    mov         esp,ebp
 004CE5AD    pop         ebp
 004CE5AE    ret
end;*}

//004CE5B0
procedure sub_004CE5B0;
begin
{*
 004CE5B0    mov         eax,571EC0;gvar_00571EC0
 004CE5B5    xor         ecx,ecx
 004CE5B7    mov         edx,200
 004CE5BC    call        @FillChar
 004CE5C1    ret
*}
end;

//004CE5C4
procedure sub_004CE5C4;
begin
{*
 004CE5C4    push        esi
 004CE5C5    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 004CE5CC    mov         ecx,100
 004CE5D1    lea         esi,ds:[571EC0];0x0 gvar_00571EC0
 004CE5D7    rep outs    dl,word ptr [esi]
 004CE5DA    pop         esi
 004CE5DB    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CE5E0    cmp         byte ptr [eax],0
>004CE5E3    je          004CE5EB
 004CE5E5    call        005600F0
 004CE5EA    ret
 004CE5EB    call        00560080
 004CE5F0    ret
*}
end;

//004CE5F4
{*function sub_004CE5F4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CE5F4    push        ebp
 004CE5F5    mov         ebp,esp
 004CE5F7    add         esp,0FFFFFFEC
 004CE5FA    mov         word ptr [ebp-6],cx
 004CE5FE    mov         word ptr [ebp-4],dx
 004CE602    mov         word ptr [ebp-2],ax
 004CE606    call        004CE5B0
 004CE60B    mov         ax,word ptr [ebp-2]
 004CE60F    mov         [00571EC0],ax;gvar_00571EC0
 004CE615    mov         ax,word ptr [ebp-4]
 004CE619    mov         [00571EC2],ax;gvar_00571EC2
 004CE61F    mov         ax,word ptr [ebp-6]
 004CE623    mov         [00571EC4],ax;gvar_00571EC4
 004CE629    mov         ax,word ptr [ebp+18]
 004CE62D    mov         [00571EC6],ax;gvar_00571EC6
 004CE633    mov         ax,word ptr [ebp+14]
 004CE637    mov         [00571EC8],ax;gvar_00571EC8
 004CE63D    mov         ax,word ptr [ebp+10]
 004CE641    mov         [00571ECA],ax;gvar_00571ECA
 004CE647    mov         ax,word ptr [ebp+0C]
 004CE64B    mov         [00571ECC],ax;gvar_00571ECC
 004CE651    mov         ax,word ptr [ebp+8]
 004CE655    mov         [00571ECE],ax;gvar_00571ECE
 004CE65B    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CE660    cmp         byte ptr [eax],0
>004CE663    je          004CE7A7
 004CE669    push        0BE
 004CE66E    push        4F
 004CE670    push        0C2
 004CE675    push        0A0
 004CE67A    push        0B0
 004CE67F    mov         eax,571EC0;gvar_00571EC0
 004CE684    mov         cl,1
 004CE686    mov         dl,0D6
 004CE688    call        004CC128
 004CE68D    xor         al,1
 004CE68F    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 004CE695    mov         byte ptr [edx],al
 004CE697    lea         eax,[ebp-9]
 004CE69A    push        eax
 004CE69B    lea         eax,[ebp-0A]
 004CE69E    push        eax
 004CE69F    lea         eax,[ebp-10]
 004CE6A2    push        eax
 004CE6A3    lea         eax,[ebp-11]
 004CE6A6    push        eax
 004CE6A7    lea         ecx,[ebp-0F]
 004CE6AA    lea         edx,[ebp-0E]
 004CE6AD    lea         eax,[ebp-0D]
 004CE6B0    call        004CC194
 004CE6B5    mov         al,byte ptr [ebp-11]
 004CE6B8    and         al,1
 004CE6BA    cmp         al,1
 004CE6BC    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CE6C1    sete        byte ptr [eax]
 004CE6C4    mov         al,byte ptr [ebp-11]
 004CE6C7    and         al,2
 004CE6C9    cmp         al,2
 004CE6CB    mov         eax,[0056E140];^gvar_0059BF4D
 004CE6D0    sete        byte ptr [eax]
 004CE6D3    mov         al,byte ptr [ebp-11]
 004CE6D6    and         al,4
 004CE6D8    cmp         al,4
 004CE6DA    mov         eax,[0056E628];^gvar_0059BF4E
 004CE6DF    sete        byte ptr [eax]
 004CE6E2    mov         al,byte ptr [ebp-11]
 004CE6E5    and         al,8
 004CE6E7    cmp         al,8
 004CE6E9    mov         eax,[0056E2D8];^gvar_0059BF4F
 004CE6EE    sete        byte ptr [eax]
 004CE6F1    mov         al,byte ptr [ebp-11]
 004CE6F4    and         al,10
 004CE6F6    cmp         al,10
 004CE6F8    mov         eax,[0056E0E8];^gvar_0059BF50
 004CE6FD    sete        byte ptr [eax]
 004CE700    mov         al,byte ptr [ebp-11]
 004CE703    and         al,20
 004CE705    cmp         al,20
 004CE707    mov         eax,[0056E5F0];^gvar_0059BF51
 004CE70C    sete        byte ptr [eax]
 004CE70F    mov         al,byte ptr [ebp-11]
 004CE712    and         al,40
 004CE714    cmp         al,40
 004CE716    mov         eax,[0056E508];^gvar_0059BF52
 004CE71B    sete        byte ptr [eax]
 004CE71E    mov         al,byte ptr [ebp-11]
 004CE721    and         al,80
 004CE723    cmp         al,80
 004CE725    mov         eax,[0056E25C];^gvar_0059BF53
 004CE72A    sete        byte ptr [eax]
 004CE72D    mov         al,byte ptr [ebp-0D]
 004CE730    and         al,1
 004CE732    cmp         al,1
 004CE734    mov         eax,[0056E5EC];^gvar_0059BF5B
 004CE739    sete        byte ptr [eax]
 004CE73C    mov         al,byte ptr [ebp-0D]
 004CE73F    and         al,2
 004CE741    cmp         al,2
 004CE743    mov         eax,[0056E448];^gvar_0059BF5A
 004CE748    sete        byte ptr [eax]
 004CE74B    mov         al,byte ptr [ebp-0D]
 004CE74E    and         al,4
 004CE750    cmp         al,4
 004CE752    mov         eax,[0056E454];^gvar_0059BF59
 004CE757    sete        byte ptr [eax]
 004CE75A    mov         al,byte ptr [ebp-0D]
 004CE75D    and         al,8
 004CE75F    cmp         al,8
 004CE761    mov         eax,[0056E274];^gvar_0059BF58
 004CE766    sete        byte ptr [eax]
 004CE769    mov         al,byte ptr [ebp-0D]
 004CE76C    and         al,10
 004CE76E    cmp         al,10
 004CE770    mov         eax,[0056E060];^gvar_0059BF57
 004CE775    sete        byte ptr [eax]
 004CE778    mov         al,byte ptr [ebp-0D]
 004CE77B    and         al,20
 004CE77D    cmp         al,20
 004CE77F    mov         eax,[0056E08C];^gvar_0059BF56
 004CE784    sete        byte ptr [eax]
 004CE787    mov         al,byte ptr [ebp-0D]
 004CE78A    and         al,40
 004CE78C    cmp         al,40
 004CE78E    mov         eax,[0056E5B0];^gvar_0059BF55
 004CE793    sete        byte ptr [eax]
 004CE796    mov         al,byte ptr [ebp-0D]
 004CE799    and         al,80
 004CE79B    cmp         al,80
 004CE79D    mov         eax,[0056DFBC];^gvar_0059BF54
 004CE7A2    sete        byte ptr [eax]
>004CE7A5    jmp         004CE806
 004CE7A7    push        4F
 004CE7A9    push        0C2
 004CE7AE    push        0A0
 004CE7B3    push        0B0
 004CE7B8    mov         cl,0BE
 004CE7BA    mov         dl,1
 004CE7BC    mov         al,0D6
 004CE7BE    call        0055FFC4
 004CE7C3    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CE7C8    cmp         byte ptr [eax],0
>004CE7CB    je          004CE7D4
 004CE7CD    call        005600F0
>004CE7D2    jmp         004CE7D9
 004CE7D4    call        00560080
 004CE7D9    call        004CE5C4
 004CE7DE    mov         eax,[0056E1D4];^gvar_0056DF14
 004CE7E3    mov         ax,word ptr [eax]
 004CE7E6    add         ax,4
 004CE7EA    call        0055FE3C
 004CE7EF    mov         byte ptr [ebp-9],al
 004CE7F2    mov         eax,[0056E1D4];^gvar_0056DF14
 004CE7F7    mov         ax,word ptr [eax]
 004CE7FA    add         ax,5
 004CE7FE    call        0055FE3C
 004CE803    mov         byte ptr [ebp-0A],al
 004CE806    xor         eax,eax
 004CE808    mov         al,byte ptr [ebp-0A]
 004CE80B    shl         eax,8
 004CE80E    xor         edx,edx
 004CE810    mov         dl,byte ptr [ebp-9]
 004CE813    or          ax,dx
 004CE816    mov         word ptr [ebp-0C],ax
 004CE81A    mov         ax,word ptr [ebp-0C]
 004CE81E    mov         word ptr [ebp-8],ax
 004CE822    mov         ax,word ptr [ebp-8]
 004CE826    mov         esp,ebp
 004CE828    pop         ebp
 004CE829    ret         14
end;*}

//004CE82C
{*function sub_004CE82C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004CE82C    push        ebp
 004CE82D    mov         ebp,esp
 004CE82F    add         esp,0FFFFFFEC
 004CE832    mov         word ptr [ebp-6],cx
 004CE836    mov         word ptr [ebp-4],dx
 004CE83A    mov         word ptr [ebp-2],ax
 004CE83E    call        004CE5B0
 004CE843    mov         ax,word ptr [ebp-2]
 004CE847    mov         [00571EC0],ax;gvar_00571EC0
 004CE84D    mov         ax,word ptr [ebp-4]
 004CE851    mov         [00571EC2],ax;gvar_00571EC2
 004CE857    mov         ax,word ptr [ebp-6]
 004CE85B    mov         [00571EC4],ax;gvar_00571EC4
 004CE861    mov         ax,word ptr [ebp+38]
 004CE865    mov         [00571EC6],ax;gvar_00571EC6
 004CE86B    mov         ax,word ptr [ebp+34]
 004CE86F    mov         [00571EC8],ax;gvar_00571EC8
 004CE875    mov         ax,word ptr [ebp+30]
 004CE879    mov         [00571ECA],ax;gvar_00571ECA
 004CE87F    mov         ax,word ptr [ebp+2C]
 004CE883    mov         [00571ECC],ax;gvar_00571ECC
 004CE889    mov         ax,word ptr [ebp+28]
 004CE88D    mov         [00571ECE],ax;gvar_00571ECE
 004CE893    mov         ax,word ptr [ebp+24]
 004CE897    mov         [00571ED0],ax;gvar_00571ED0
 004CE89D    mov         ax,word ptr [ebp+20]
 004CE8A1    mov         [00571ED2],ax;gvar_00571ED2
 004CE8A7    mov         ax,word ptr [ebp+1C]
 004CE8AB    mov         [00571ED4],ax;gvar_00571ED4
 004CE8B1    mov         ax,word ptr [ebp+18]
 004CE8B5    mov         [00571ED6],ax;gvar_00571ED6
 004CE8BB    mov         ax,word ptr [ebp+14]
 004CE8BF    mov         [00571ED8],ax;gvar_00571ED8
 004CE8C5    mov         ax,word ptr [ebp+10]
 004CE8C9    mov         [00571EDA],ax;gvar_00571EDA
 004CE8CF    mov         ax,word ptr [ebp+0C]
 004CE8D3    mov         [00571EDC],ax;gvar_00571EDC
 004CE8D9    mov         ax,word ptr [ebp+8]
 004CE8DD    mov         [00571EDE],ax;gvar_00571EDE
 004CE8E3    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CE8E8    cmp         byte ptr [eax],0
>004CE8EB    je          004CEA2F
 004CE8F1    push        0BE
 004CE8F6    push        4F
 004CE8F8    push        0C2
 004CE8FD    push        0A0
 004CE902    push        0B0
 004CE907    mov         eax,571EC0;gvar_00571EC0
 004CE90C    mov         cl,1
 004CE90E    mov         dl,0D6
 004CE910    call        004CC128
 004CE915    xor         al,1
 004CE917    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 004CE91D    mov         byte ptr [edx],al
 004CE91F    lea         eax,[ebp-9]
 004CE922    push        eax
 004CE923    lea         eax,[ebp-0A]
 004CE926    push        eax
 004CE927    lea         eax,[ebp-10]
 004CE92A    push        eax
 004CE92B    lea         eax,[ebp-11]
 004CE92E    push        eax
 004CE92F    lea         ecx,[ebp-0F]
 004CE932    lea         edx,[ebp-0E]
 004CE935    lea         eax,[ebp-0D]
 004CE938    call        004CC194
 004CE93D    mov         al,byte ptr [ebp-11]
 004CE940    and         al,1
 004CE942    cmp         al,1
 004CE944    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CE949    sete        byte ptr [eax]
 004CE94C    mov         al,byte ptr [ebp-11]
 004CE94F    and         al,2
 004CE951    cmp         al,2
 004CE953    mov         eax,[0056E140];^gvar_0059BF4D
 004CE958    sete        byte ptr [eax]
 004CE95B    mov         al,byte ptr [ebp-11]
 004CE95E    and         al,4
 004CE960    cmp         al,4
 004CE962    mov         eax,[0056E628];^gvar_0059BF4E
 004CE967    sete        byte ptr [eax]
 004CE96A    mov         al,byte ptr [ebp-11]
 004CE96D    and         al,8
 004CE96F    cmp         al,8
 004CE971    mov         eax,[0056E2D8];^gvar_0059BF4F
 004CE976    sete        byte ptr [eax]
 004CE979    mov         al,byte ptr [ebp-11]
 004CE97C    and         al,10
 004CE97E    cmp         al,10
 004CE980    mov         eax,[0056E0E8];^gvar_0059BF50
 004CE985    sete        byte ptr [eax]
 004CE988    mov         al,byte ptr [ebp-11]
 004CE98B    and         al,20
 004CE98D    cmp         al,20
 004CE98F    mov         eax,[0056E5F0];^gvar_0059BF51
 004CE994    sete        byte ptr [eax]
 004CE997    mov         al,byte ptr [ebp-11]
 004CE99A    and         al,40
 004CE99C    cmp         al,40
 004CE99E    mov         eax,[0056E508];^gvar_0059BF52
 004CE9A3    sete        byte ptr [eax]
 004CE9A6    mov         al,byte ptr [ebp-11]
 004CE9A9    and         al,80
 004CE9AB    cmp         al,80
 004CE9AD    mov         eax,[0056E25C];^gvar_0059BF53
 004CE9B2    sete        byte ptr [eax]
 004CE9B5    mov         al,byte ptr [ebp-0D]
 004CE9B8    and         al,1
 004CE9BA    cmp         al,1
 004CE9BC    mov         eax,[0056E5EC];^gvar_0059BF5B
 004CE9C1    sete        byte ptr [eax]
 004CE9C4    mov         al,byte ptr [ebp-0D]
 004CE9C7    and         al,2
 004CE9C9    cmp         al,2
 004CE9CB    mov         eax,[0056E448];^gvar_0059BF5A
 004CE9D0    sete        byte ptr [eax]
 004CE9D3    mov         al,byte ptr [ebp-0D]
 004CE9D6    and         al,4
 004CE9D8    cmp         al,4
 004CE9DA    mov         eax,[0056E454];^gvar_0059BF59
 004CE9DF    sete        byte ptr [eax]
 004CE9E2    mov         al,byte ptr [ebp-0D]
 004CE9E5    and         al,8
 004CE9E7    cmp         al,8
 004CE9E9    mov         eax,[0056E274];^gvar_0059BF58
 004CE9EE    sete        byte ptr [eax]
 004CE9F1    mov         al,byte ptr [ebp-0D]
 004CE9F4    and         al,10
 004CE9F6    cmp         al,10
 004CE9F8    mov         eax,[0056E060];^gvar_0059BF57
 004CE9FD    sete        byte ptr [eax]
 004CEA00    mov         al,byte ptr [ebp-0D]
 004CEA03    and         al,20
 004CEA05    cmp         al,20
 004CEA07    mov         eax,[0056E08C];^gvar_0059BF56
 004CEA0C    sete        byte ptr [eax]
 004CEA0F    mov         al,byte ptr [ebp-0D]
 004CEA12    and         al,40
 004CEA14    cmp         al,40
 004CEA16    mov         eax,[0056E5B0];^gvar_0059BF55
 004CEA1B    sete        byte ptr [eax]
 004CEA1E    mov         al,byte ptr [ebp-0D]
 004CEA21    and         al,80
 004CEA23    cmp         al,80
 004CEA25    mov         eax,[0056DFBC];^gvar_0059BF54
 004CEA2A    sete        byte ptr [eax]
>004CEA2D    jmp         004CEA8E
 004CEA2F    push        4F
 004CEA31    push        0C2
 004CEA36    push        0A0
 004CEA3B    push        0B0
 004CEA40    mov         cl,0BE
 004CEA42    mov         dl,1
 004CEA44    mov         al,0D6
 004CEA46    call        0055FFC4
 004CEA4B    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEA50    cmp         byte ptr [eax],0
>004CEA53    je          004CEA5C
 004CEA55    call        005600F0
>004CEA5A    jmp         004CEA61
 004CEA5C    call        00560080
 004CEA61    call        004CE5C4
 004CEA66    mov         eax,[0056E1D4];^gvar_0056DF14
 004CEA6B    mov         ax,word ptr [eax]
 004CEA6E    add         ax,4
 004CEA72    call        0055FE3C
 004CEA77    mov         byte ptr [ebp-9],al
 004CEA7A    mov         eax,[0056E1D4];^gvar_0056DF14
 004CEA7F    mov         ax,word ptr [eax]
 004CEA82    add         ax,5
 004CEA86    call        0055FE3C
 004CEA8B    mov         byte ptr [ebp-0A],al
 004CEA8E    xor         eax,eax
 004CEA90    mov         al,byte ptr [ebp-0A]
 004CEA93    shl         eax,8
 004CEA96    xor         edx,edx
 004CEA98    mov         dl,byte ptr [ebp-9]
 004CEA9B    or          ax,dx
 004CEA9E    mov         word ptr [ebp-0C],ax
 004CEAA2    mov         ax,word ptr [ebp-0C]
 004CEAA6    mov         word ptr [ebp-8],ax
 004CEAAA    mov         ax,word ptr [ebp-8]
 004CEAAE    mov         esp,ebp
 004CEAB0    pop         ebp
 004CEAB1    ret         34
end;*}

//004CEAB4
procedure sub_004CEAB4;
begin
{*
 004CEAB4    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CEAB9    cmp         byte ptr [eax],0
>004CEABC    je          004CEAF9
 004CEABE    push        0BF
 004CEAC3    push        4F
 004CEAC5    push        0C2
 004CEACA    push        0A0
 004CEACF    push        0B0
 004CEAD4    mov         eax,[0056E344];^gvar_0059BF5C
 004CEAD9    mov         cl,1
 004CEADB    mov         dl,0D5
 004CEADD    call        004CC0B8
 004CEAE2    test        al,al
>004CEAE4    je          004CEAF0
 004CEAE6    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEAEB    mov         byte ptr [eax],0
>004CEAEE    jmp         004CEB3A
 004CEAF0    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEAF5    mov         byte ptr [eax],1
 004CEAF8    ret
 004CEAF9    push        4F
 004CEAFB    push        0C2
 004CEB00    push        0A0
 004CEB05    push        0B0
 004CEB0A    mov         cl,0BF
 004CEB0C    mov         dl,1
 004CEB0E    mov         al,0D5
 004CEB10    call        0055FFC4
 004CEB15    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEB1A    cmp         byte ptr [eax],0
>004CEB1D    je          004CEB26
 004CEB1F    call        005600F0
>004CEB24    jmp         004CEB2B
 004CEB26    call        00560080
 004CEB2B    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEB30    cmp         byte ptr [eax],0
>004CEB33    jne         004CEB3A
 004CEB35    call        00560214
 004CEB3A    ret
*}
end;

//004CEB3C
procedure sub_004CEB3C;
begin
{*
 004CEB3C    push        edi
 004CEB3D    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 004CEB44    mov         ecx,100
 004CEB49    lea         edi,ds:[571EC0];0x0 gvar_00571EC0
 004CEB4F    rep ins     word ptr [edi],dl
 004CEB52    pop         edi
 004CEB53    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEB58    cmp         byte ptr [eax],0
>004CEB5B    je          004CEB63
 004CEB5D    call        005600F0
 004CEB62    ret
 004CEB63    call        00560080
 004CEB68    ret
*}
end;

//004CEB6C
procedure sub_004CEB6C;
begin
{*
 004CEB6C    mov         eax,[0056E5A4];^gvar_0056DF04
 004CEB71    mov         byte ptr [eax],0
 004CEB74    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CEB79    cmp         byte ptr [eax],0
>004CEB7C    je          004CEBAF
 004CEB7E    push        0BE
 004CEB83    push        4F
 004CEB85    push        0C2
 004CEB8A    push        0A0
 004CEB8F    push        0B0
 004CEB94    mov         eax,571EC0;gvar_00571EC0
 004CEB99    mov         cl,1
 004CEB9B    mov         dl,0D5
 004CEB9D    call        004CC0B8
 004CEBA2    test        al,al
>004CEBA4    jne         004CEC06
 004CEBA6    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEBAB    mov         byte ptr [eax],1
 004CEBAE    ret
 004CEBAF    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEBB4    cmp         byte ptr [eax],0
>004CEBB7    je          004CEBC0
 004CEBB9    call        005600F0
>004CEBBE    jmp         004CEBC5
 004CEBC0    call        00560080
 004CEBC5    push        4F
 004CEBC7    push        0C2
 004CEBCC    push        0A0
 004CEBD1    push        0B0
 004CEBD6    mov         cl,0BE
 004CEBD8    mov         dl,1
 004CEBDA    mov         al,0D5
 004CEBDC    call        0055FFC4
 004CEBE1    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEBE6    cmp         byte ptr [eax],0
>004CEBE9    je          004CEBF2
 004CEBEB    call        005600F0
>004CEBF0    jmp         004CEBF7
 004CEBF2    call        00560080
 004CEBF7    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEBFC    cmp         byte ptr [eax],0
>004CEBFF    jne         004CEC06
 004CEC01    call        004CEB3C
 004CEC06    ret
*}
end;

//004CEC08
procedure sub_004CEC08;
begin
{*
 004CEC08    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CEC0D    cmp         byte ptr [eax],0
>004CEC10    je          004CEC4D
 004CEC12    push        0BF
 004CEC17    push        4F
 004CEC19    push        0C2
 004CEC1E    push        0A0
 004CEC23    push        0B0
 004CEC28    mov         eax,[0056E344];^gvar_0059BF5C
 004CEC2D    mov         cl,1
 004CEC2F    mov         dl,0D6
 004CEC31    call        004CC128
 004CEC36    test        al,al
>004CEC38    je          004CEC44
 004CEC3A    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEC3F    mov         byte ptr [eax],0
>004CEC42    jmp         004CEC8E
 004CEC44    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEC49    mov         byte ptr [eax],1
 004CEC4C    ret
 004CEC4D    push        4F
 004CEC4F    push        0C2
 004CEC54    push        0A0
 004CEC59    push        0B0
 004CEC5E    mov         cl,0BF
 004CEC60    mov         dl,1
 004CEC62    mov         al,0D6
 004CEC64    call        0055FFC4
 004CEC69    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEC6E    cmp         byte ptr [eax],0
>004CEC71    je          004CEC7A
 004CEC73    call        005600F0
>004CEC78    jmp         004CEC7F
 004CEC7A    call        00560080
 004CEC7F    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CEC84    cmp         byte ptr [eax],0
>004CEC87    jne         004CEC8E
 004CEC89    call        00560240
 004CEC8E    ret
*}
end;

//004CEC90
procedure sub_004CEC90;
begin
{*
 004CEC90    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CEC95    cmp         byte ptr [eax],0
>004CEC98    je          004CECD0
 004CEC9A    mov         eax,[0056E344];^gvar_0059BF5C
 004CEC9F    xor         ecx,ecx
 004CECA1    mov         edx,200
 004CECA6    call        @FillChar
 004CECAB    push        0BF
 004CECB0    push        4F
 004CECB2    push        0C2
 004CECB7    push        0A0
 004CECBC    push        0B0
 004CECC1    mov         eax,[0056E344];^gvar_0059BF5C
 004CECC6    mov         cl,1
 004CECC8    mov         dl,0D6
 004CECCA    call        004CC128
 004CECCF    ret
 004CECD0    push        4F
 004CECD2    push        0C2
 004CECD7    push        0A0
 004CECDC    push        0B0
 004CECE1    mov         cl,0BF
 004CECE3    mov         dl,1
 004CECE5    mov         al,0D6
 004CECE7    call        0055FFC4
 004CECEC    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CECF1    cmp         byte ptr [eax],0
>004CECF4    je          004CECFD
 004CECF6    call        005600F0
>004CECFB    jmp         004CED02
 004CECFD    call        00560080
 004CED02    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CED07    cmp         byte ptr [eax],0
>004CED0A    jne         004CED11
 004CED0C    call        0056032C
 004CED11    ret
*}
end;

//004CED14
{*procedure sub_004CED14(?:?);
begin
 004CED14    push        ebp
 004CED15    mov         ebp,esp
 004CED17    push        ecx
 004CED18    mov         byte ptr [ebp-1],al
 004CED1B    mov         dl,byte ptr [ebp-1]
 004CED1E    mov         eax,[004CC69C];TfmProgress
 004CED23    call        004CC980
 004CED28    pop         ecx
 004CED29    pop         ebp
 004CED2A    ret
end;*}

//004CED2C
procedure sub_004CED2C;
begin
{*
 004CED2C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CED31    cmp         byte ptr [eax],0
>004CED34    je          004CED50
 004CED36    push        44
 004CED38    push        57
 004CED3A    push        0A0
 004CED3F    push        80
 004CED44    xor         ecx,ecx
 004CED46    xor         edx,edx
 004CED48    mov         al,45
 004CED4A    call        004CC058
 004CED4F    ret
 004CED50    push        44
 004CED52    push        57
 004CED54    push        0A0
 004CED59    push        80
 004CED5E    xor         ecx,ecx
 004CED60    xor         edx,edx
 004CED62    mov         al,45
 004CED64    call        0055FFC4
 004CED69    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CED6E    cmp         byte ptr [eax],0
>004CED71    je          004CED7A
 004CED73    call        005600F0
>004CED78    jmp         004CED7F
 004CED7A    call        00560080
 004CED7F    ret
*}
end;

//004CED80
procedure sub_004CED80;
begin
{*
 004CED80    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CED85    cmp         byte ptr [eax],0
>004CED88    je          004CEDA4
 004CED8A    push        44
 004CED8C    push        57
 004CED8E    push        0A0
 004CED93    push        80
 004CED98    xor         ecx,ecx
 004CED9A    xor         edx,edx
 004CED9C    mov         al,44
 004CED9E    call        004CC058
 004CEDA3    ret
 004CEDA4    push        44
 004CEDA6    push        57
 004CEDA8    push        0A0
 004CEDAD    push        80
 004CEDB2    xor         ecx,ecx
 004CEDB4    xor         edx,edx
 004CEDB6    mov         al,44
 004CEDB8    call        0055FFC4
 004CEDBD    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004CEDC2    cmp         byte ptr [eax],0
>004CEDC5    je          004CEDCE
 004CEDC7    call        005600F0
>004CEDCC    jmp         004CEDD3
 004CEDCE    call        00560080
 004CEDD3    ret
*}
end;

//004CEDD4
{*function sub_004CEDD4(?:?; ?:?):?;
begin
 004CEDD4    push        ebp
 004CEDD5    mov         ebp,esp
 004CEDD7    add         esp,0FFFFFFF0
 004CEDDA    mov         byte ptr [ebp-5],dl
 004CEDDD    mov         dword ptr [ebp-4],eax
 004CEDE0    call        004CED2C
 004CEDE5    mov         ax,word ptr [ebp-4]
 004CEDE9    and         ax,0FFFF
 004CEDED    mov         word ptr [ebp-0A],ax
 004CEDF1    mov         eax,dword ptr [ebp-4]
 004CEDF4    shr         eax,10
 004CEDF7    and         ax,0FFFF
 004CEDFB    mov         word ptr [ebp-0C],ax
 004CEDFF    mov         al,byte ptr [ebp-5]
 004CEE02    and         al,0F
 004CEE04    and         eax,0FF
 004CEE09    mov         word ptr [ebp-0E],ax
 004CEE0D    mov         ax,word ptr [ebp-0C]
 004CEE11    push        eax
 004CEE12    mov         ax,word ptr [ebp-0E]
 004CEE16    push        eax
 004CEE17    push        1
 004CEE19    push        0
 004CEE1B    push        0
 004CEE1D    mov         cx,word ptr [ebp-0A]
 004CEE21    mov         dx,1
 004CEE25    mov         ax,0C
 004CEE29    call        004CE5F4
 004CEE2E    mov         word ptr [ebp-8],ax
 004CEE32    mov         ax,word ptr [ebp-8]
 004CEE36    mov         esp,ebp
 004CEE38    pop         ebp
 004CEE39    ret
end;*}

//004CEE3C
{*procedure sub_004CEE3C(?:?; ?:?; ?:?; ?:?);
begin
 004CEE3C    push        ebp
 004CEE3D    mov         ebp,esp
 004CEE3F    add         esp,0FFFFFFF0
 004CEE42    mov         dword ptr [ebp-8],ecx
 004CEE45    mov         word ptr [ebp-4],dx
 004CEE49    mov         word ptr [ebp-2],ax
 004CEE4D    mov         ax,word ptr [ebp-8]
 004CEE51    and         ax,0FFFF
 004CEE55    mov         word ptr [ebp-0A],ax
 004CEE59    mov         eax,dword ptr [ebp-8]
 004CEE5C    shr         eax,10
 004CEE5F    and         ax,0FFFF
 004CEE63    mov         word ptr [ebp-0C],ax
 004CEE67    mov         al,byte ptr [ebp+8]
 004CEE6A    and         al,0F
 004CEE6C    and         eax,0FF
 004CEE71    mov         word ptr [ebp-0E],ax
 004CEE75    mov         ax,word ptr [ebp-0C]
 004CEE79    push        eax
 004CEE7A    mov         ax,word ptr [ebp-0E]
 004CEE7E    push        eax
 004CEE7F    mov         ax,word ptr [ebp-4]
 004CEE83    push        eax
 004CEE84    mov         ax,word ptr [ebp-2]
 004CEE88    push        eax
 004CEE89    push        0
 004CEE8B    mov         cx,word ptr [ebp-0A]
 004CEE8F    mov         dx,1
 004CEE93    mov         ax,0C
 004CEE97    call        004CE5F4
 004CEE9C    mov         esp,ebp
 004CEE9E    pop         ebp
 004CEE9F    ret         4
end;*}

//004CEEA4
{*procedure sub_004CEEA4(?:?; ?:?; ?:?; ?:?);
begin
 004CEEA4    push        ebp
 004CEEA5    mov         ebp,esp
 004CEEA7    add         esp,0FFFFFFF0
 004CEEAA    mov         dword ptr [ebp-8],ecx
 004CEEAD    mov         word ptr [ebp-4],dx
 004CEEB1    mov         word ptr [ebp-2],ax
 004CEEB5    mov         ax,word ptr [ebp-8]
 004CEEB9    and         ax,0FFFF
 004CEEBD    mov         word ptr [ebp-0A],ax
 004CEEC1    mov         eax,dword ptr [ebp-8]
 004CEEC4    shr         eax,10
 004CEEC7    and         ax,0FFFF
 004CEECB    mov         word ptr [ebp-0C],ax
 004CEECF    mov         al,byte ptr [ebp+8]
 004CEED2    and         al,0F
 004CEED4    and         eax,0FF
 004CEED9    mov         word ptr [ebp-0E],ax
 004CEEDD    cmp         byte ptr ds:[56CC40],0;gvar_0056CC40:Boolean
>004CEEE4    je          004CEF0F
 004CEEE6    mov         ax,word ptr [ebp-0C]
 004CEEEA    push        eax
 004CEEEB    mov         ax,word ptr [ebp-0E]
 004CEEEF    push        eax
 004CEEF0    mov         ax,word ptr [ebp-4]
 004CEEF4    push        eax
 004CEEF5    mov         ax,word ptr [ebp-2]
 004CEEF9    push        eax
 004CEEFA    push        0
 004CEEFC    mov         cx,word ptr [ebp-0A]
 004CEF00    mov         dx,1
 004CEF04    mov         ax,31
 004CEF08    call        004CE5F4
>004CEF0D    jmp         004CEF36
 004CEF0F    mov         ax,word ptr [ebp-0C]
 004CEF13    push        eax
 004CEF14    mov         ax,word ptr [ebp-0E]
 004CEF18    push        eax
 004CEF19    mov         ax,word ptr [ebp-4]
 004CEF1D    push        eax
 004CEF1E    mov         ax,word ptr [ebp-2]
 004CEF22    push        eax
 004CEF23    push        0
 004CEF25    mov         cx,word ptr [ebp-0A]
 004CEF29    mov         dx,1
 004CEF2D    mov         ax,1A
 004CEF31    call        004CE5F4
 004CEF36    mov         esp,ebp
 004CEF38    pop         ebp
 004CEF39    ret         4
end;*}

//004CEF3C
{*procedure sub_004CEF3C(?:?; ?:?; ?:?; ?:?);
begin
 004CEF3C    push        ebp
 004CEF3D    mov         ebp,esp
 004CEF3F    add         esp,0FFFFFFF0
 004CEF42    mov         dword ptr [ebp-8],ecx
 004CEF45    mov         word ptr [ebp-4],dx
 004CEF49    mov         word ptr [ebp-2],ax
 004CEF4D    mov         ax,word ptr [ebp-8]
 004CEF51    and         ax,0FFFF
 004CEF55    mov         word ptr [ebp-0A],ax
 004CEF59    mov         eax,dword ptr [ebp-8]
 004CEF5C    shr         eax,10
 004CEF5F    and         ax,0FFFF
 004CEF63    mov         word ptr [ebp-0C],ax
 004CEF67    mov         al,byte ptr [ebp+8]
 004CEF6A    and         al,0F
 004CEF6C    and         eax,0FF
 004CEF71    mov         word ptr [ebp-0E],ax
 004CEF75    mov         ax,word ptr [ebp-0C]
 004CEF79    push        eax
 004CEF7A    mov         ax,word ptr [ebp-0E]
 004CEF7E    push        eax
 004CEF7F    mov         ax,word ptr [ebp-4]
 004CEF83    push        eax
 004CEF84    mov         ax,word ptr [ebp-2]
 004CEF88    push        eax
 004CEF89    push        0
 004CEF8B    mov         cx,word ptr [ebp-0A]
 004CEF8F    mov         dx,3
 004CEF93    mov         ax,0C
 004CEF97    call        004CE5F4
 004CEF9C    mov         esp,ebp
 004CEF9E    pop         ebp
 004CEF9F    ret         4
end;*}

//004CEFA4
{*procedure sub_004CEFA4(?:?; ?:?; ?:?; ?:?);
begin
 004CEFA4    push        ebp
 004CEFA5    mov         ebp,esp
 004CEFA7    add         esp,0FFFFFFF0
 004CEFAA    mov         dword ptr [ebp-8],ecx
 004CEFAD    mov         word ptr [ebp-4],dx
 004CEFB1    mov         word ptr [ebp-2],ax
 004CEFB5    mov         ax,word ptr [ebp-8]
 004CEFB9    and         ax,0FFFF
 004CEFBD    mov         word ptr [ebp-0A],ax
 004CEFC1    mov         eax,dword ptr [ebp-8]
 004CEFC4    shr         eax,10
 004CEFC7    and         ax,0FFFF
 004CEFCB    mov         word ptr [ebp-0C],ax
 004CEFCF    mov         al,byte ptr [ebp+8]
 004CEFD2    and         al,0F
 004CEFD4    and         eax,0FF
 004CEFD9    mov         word ptr [ebp-0E],ax
 004CEFDD    mov         ax,word ptr [ebp-0C]
 004CEFE1    push        eax
 004CEFE2    mov         ax,word ptr [ebp-0E]
 004CEFE6    push        eax
 004CEFE7    mov         ax,word ptr [ebp-4]
 004CEFEB    push        eax
 004CEFEC    mov         ax,word ptr [ebp-2]
 004CEFF0    push        eax
 004CEFF1    push        0
 004CEFF3    mov         cx,word ptr [ebp-0A]
 004CEFF7    mov         dx,2
 004CEFFB    mov         ax,0C
 004CEFFF    call        004CE5F4
 004CF004    mov         esp,ebp
 004CF006    pop         ebp
 004CF007    ret         4
end;*}

//004CF00C
{*function sub_004CF00C(?:?; ?:?; ?:?):?;
begin
 004CF00C    push        ebp
 004CF00D    mov         ebp,esp
 004CF00F    add         esp,0FFFFFFF0
 004CF012    mov         word ptr [ebp-8],cx
 004CF016    mov         word ptr [ebp-6],dx
 004CF01A    mov         dword ptr [ebp-4],eax
 004CF01D    call        004CED2C
 004CF022    mov         byte ptr [ebp-9],0
 004CF026    mov         ax,word ptr [ebp-4]
 004CF02A    and         ax,0FFFF
 004CF02E    mov         word ptr [ebp-0C],ax
 004CF032    mov         eax,dword ptr [ebp-4]
 004CF035    shr         eax,10
 004CF038    and         ax,0FFFF
 004CF03C    mov         word ptr [ebp-0E],ax
 004CF040    mov         ax,word ptr [ebp-6]
 004CF044    push        eax
 004CF045    mov         ax,word ptr [ebp-8]
 004CF049    push        eax
 004CF04A    push        0
 004CF04C    push        0
 004CF04E    push        0
 004CF050    mov         cx,word ptr [ebp-0E]
 004CF054    mov         dx,word ptr [ebp-0C]
 004CF058    mov         ax,12
 004CF05C    call        004CE5F4
 004CF061    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF066    cmp         byte ptr [eax],0
>004CF069    jne         004CF079
 004CF06B    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF070    cmp         byte ptr [eax],0
>004CF073    jne         004CF079
 004CF075    mov         byte ptr [ebp-9],1
 004CF079    mov         al,byte ptr [ebp-9]
 004CF07C    mov         esp,ebp
 004CF07E    pop         ebp
 004CF07F    ret
end;*}

//004CF080
{*procedure sub_004CF080(?:?; ?:?);
begin
 004CF080    push        ebp
 004CF081    mov         ebp,esp
 004CF083    add         esp,0FFFFFFF0
 004CF086    mov         dword ptr [ebp-8],edx
 004CF089    mov         dword ptr [ebp-4],eax
 004CF08C    mov         ax,word ptr [ebp-8]
 004CF090    and         ax,0FFFF
 004CF094    mov         word ptr [ebp-0A],ax
 004CF098    mov         eax,dword ptr [ebp-8]
 004CF09B    shr         eax,10
 004CF09E    mov         word ptr [ebp-0C],ax
 004CF0A2    mov         word ptr [ebp-0E],0
 004CF0A8    cmp         byte ptr ds:[5720C0],0;gvar_005720C0
>004CF0AF    je          004CF0DD
 004CF0B1    cmp         byte ptr ds:[56CC3C],0;gvar_0056CC3C:Boolean
>004CF0B8    jne         004CF0DD
 004CF0BA    mov         ax,word ptr [ebp-0C]
 004CF0BE    push        eax
 004CF0BF    mov         ax,word ptr [ebp-4]
 004CF0C3    push        eax
 004CF0C4    push        0
 004CF0C6    push        0
 004CF0C8    push        0
 004CF0CA    mov         cx,word ptr [ebp-0A]
 004CF0CE    mov         dx,1
 004CF0D2    mov         ax,32
 004CF0D6    call        004CE5F4
>004CF0DB    jmp         004CF101
 004CF0DD    mov         ax,word ptr [ebp-0C]
 004CF0E1    push        eax
 004CF0E2    mov         ax,word ptr [ebp-0E]
 004CF0E6    push        eax
 004CF0E7    mov         ax,word ptr [ebp-4]
 004CF0EB    push        eax
 004CF0EC    push        0
 004CF0EE    push        0
 004CF0F0    mov         cx,word ptr [ebp-0A]
 004CF0F4    mov         dx,1
 004CF0F8    mov         ax,32
 004CF0FC    call        004CE5F4
 004CF101    mov         esp,ebp
 004CF103    pop         ebp
 004CF104    ret
end;*}

//004CF108
{*procedure sub_004CF108(?:?; ?:?);
begin
 004CF108    push        ebp
 004CF109    mov         ebp,esp
 004CF10B    add         esp,0FFFFFFF0
 004CF10E    mov         dword ptr [ebp-8],edx
 004CF111    mov         dword ptr [ebp-4],eax
 004CF114    mov         ax,word ptr [ebp-8]
 004CF118    and         ax,0FFFF
 004CF11C    mov         word ptr [ebp-0A],ax
 004CF120    mov         eax,dword ptr [ebp-8]
 004CF123    shr         eax,10
 004CF126    mov         word ptr [ebp-0C],ax
 004CF12A    mov         word ptr [ebp-0E],0
 004CF130    cmp         byte ptr ds:[5720C0],0;gvar_005720C0
>004CF137    je          004CF165
 004CF139    cmp         byte ptr ds:[56CC3C],0;gvar_0056CC3C:Boolean
>004CF140    jne         004CF165
 004CF142    mov         ax,word ptr [ebp-0C]
 004CF146    push        eax
 004CF147    mov         ax,word ptr [ebp-4]
 004CF14B    push        eax
 004CF14C    push        0
 004CF14E    push        0
 004CF150    push        0
 004CF152    mov         cx,word ptr [ebp-0A]
 004CF156    mov         dx,2
 004CF15A    mov         ax,32
 004CF15E    call        004CE5F4
>004CF163    jmp         004CF189
 004CF165    mov         ax,word ptr [ebp-0C]
 004CF169    push        eax
 004CF16A    mov         ax,word ptr [ebp-0E]
 004CF16E    push        eax
 004CF16F    mov         ax,word ptr [ebp-4]
 004CF173    push        eax
 004CF174    push        0
 004CF176    push        0
 004CF178    mov         cx,word ptr [ebp-0A]
 004CF17C    mov         dx,2
 004CF180    mov         ax,32
 004CF184    call        004CE5F4
 004CF189    mov         esp,ebp
 004CF18B    pop         ebp
 004CF18C    ret
end;*}

//004CF190
{*function sub_004CF190(?:?; ?:?; ?:Integer):?;
begin
 004CF190    push        ebp
 004CF191    mov         ebp,esp
 004CF193    add         esp,0FFFFFFF0
 004CF196    mov         byte ptr [ebp-6],cl
 004CF199    mov         byte ptr [ebp-5],dl
 004CF19C    mov         dword ptr [ebp-4],eax
 004CF19F    mov         ax,word ptr [ebp-4]
 004CF1A3    and         ax,0FFFF
 004CF1A7    mov         word ptr [ebp-0A],ax
 004CF1AB    mov         eax,dword ptr [ebp-4]
 004CF1AE    shr         eax,10
 004CF1B1    and         ax,0FFFF
 004CF1B5    mov         word ptr [ebp-0C],ax
 004CF1B9    mov         al,byte ptr [ebp-5]
 004CF1BC    and         al,0F
 004CF1BE    and         eax,0FF
 004CF1C3    mov         word ptr [ebp-0E],ax
 004CF1C7    mov         al,byte ptr [ebp-6]
 004CF1CA    dec         al
>004CF1CC    je          004CF21E
 004CF1CE    dec         al
>004CF1D0    je          004CF1D8
 004CF1D2    dec         al
>004CF1D4    je          004CF1FB
>004CF1D6    jmp         004CF251
 004CF1D8    mov         ax,word ptr [ebp-0E]
 004CF1DC    push        eax
 004CF1DD    push        1
 004CF1DF    push        0
 004CF1E1    push        0
 004CF1E3    push        0
 004CF1E5    mov         cx,word ptr [ebp-0C]
 004CF1E9    mov         dx,word ptr [ebp-0A]
 004CF1ED    mov         ax,12
 004CF1F1    call        004CE5F4
>004CF1F6    jmp         004CF282
 004CF1FB    mov         ax,word ptr [ebp-0C]
 004CF1FF    push        eax
 004CF200    mov         ax,word ptr [ebp-0E]
 004CF204    push        eax
 004CF205    push        0
 004CF207    push        0
 004CF209    push        0
 004CF20B    mov         cx,word ptr [ebp-0A]
 004CF20F    mov         dx,1
 004CF213    mov         ax,25
 004CF217    call        004CE5F4
>004CF21C    jmp         004CF282
 004CF21E    mov         ax,word ptr [ebp-0C]
 004CF222    push        eax
 004CF223    mov         ax,word ptr [ebp-0E]
 004CF227    push        eax
 004CF228    push        1
 004CF22A    push        0
 004CF22C    push        0
 004CF22E    push        0
 004CF230    push        0
 004CF232    push        0
 004CF234    push        0
 004CF236    push        0
 004CF238    push        0
 004CF23A    push        0
 004CF23C    push        0
 004CF23E    mov         cx,word ptr [ebp-0A]
 004CF242    mov         dx,6
 004CF246    mov         ax,11
 004CF24A    call        004CE82C
>004CF24F    jmp         004CF282
 004CF251    mov         ax,word ptr [ebp-0C]
 004CF255    push        eax
 004CF256    mov         ax,word ptr [ebp-0E]
 004CF25A    push        eax
 004CF25B    push        1
 004CF25D    push        0
 004CF25F    push        0
 004CF261    push        0
 004CF263    push        0
 004CF265    push        0
 004CF267    push        0
 004CF269    push        0
 004CF26B    push        0
 004CF26D    push        0
 004CF26F    push        0
 004CF271    mov         cx,word ptr [ebp-0A]
 004CF275    mov         dx,3
 004CF279    mov         ax,11
 004CF27D    call        004CE82C
 004CF282    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF287    cmp         byte ptr [eax],0
>004CF28A    je          004CF292
 004CF28C    mov         byte ptr [ebp-7],0
>004CF290    jmp         004CF296
 004CF292    mov         byte ptr [ebp-7],1
 004CF296    mov         al,byte ptr [ebp-7]
 004CF299    mov         esp,ebp
 004CF29B    pop         ebp
 004CF29C    ret
end;*}

//004CF2A0
{*function sub_004CF2A0(?:?):?;
begin
 004CF2A0    push        ebp
 004CF2A1    mov         ebp,esp
 004CF2A3    add         esp,0FFFFFFF4
 004CF2A6    mov         dword ptr [ebp-4],eax
 004CF2A9    mov         ax,word ptr [ebp-4]
 004CF2AD    and         ax,0FFFF
 004CF2B1    mov         word ptr [ebp-8],ax
 004CF2B5    mov         eax,dword ptr [ebp-4]
 004CF2B8    shr         eax,10
 004CF2BB    and         ax,0FFFF
 004CF2BF    mov         word ptr [ebp-0A],ax
 004CF2C3    mov         word ptr [ebp-0C],0
 004CF2C9    mov         ax,word ptr [ebp-0A]
 004CF2CD    push        eax
 004CF2CE    mov         ax,word ptr [ebp-0C]
 004CF2D2    push        eax
 004CF2D3    push        0
 004CF2D5    push        0
 004CF2D7    push        0
 004CF2D9    mov         cx,word ptr [ebp-8]
 004CF2DD    mov         dx,2
 004CF2E1    mov         ax,1B
 004CF2E5    call        004CE5F4
 004CF2EA    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF2EF    mov         al,byte ptr [eax]
 004CF2F1    xor         al,1
 004CF2F3    mov         byte ptr [ebp-5],al
 004CF2F6    mov         al,byte ptr [ebp-5]
 004CF2F9    mov         esp,ebp
 004CF2FB    pop         ebp
 004CF2FC    ret
end;*}

//004CF300
{*procedure sub_004CF300(?:?; ?:?; ?:?);
begin
 004CF300    push        ebp
 004CF301    mov         ebp,esp
 004CF303    add         esp,0FFFFFFF0
 004CF306    mov         word ptr [ebp-0A],cx
 004CF30A    mov         dword ptr [ebp-8],edx
 004CF30D    mov         word ptr [ebp-2],ax
 004CF311    mov         ax,word ptr [ebp-8]
 004CF315    and         ax,0FFFF
 004CF319    mov         word ptr [ebp-0C],ax
 004CF31D    mov         eax,dword ptr [ebp-8]
 004CF320    shr         eax,10
 004CF323    and         ax,0FFFF
 004CF327    mov         word ptr [ebp-0E],ax
 004CF32B    mov         ax,word ptr [ebp-0E]
 004CF32F    push        eax
 004CF330    mov         ax,word ptr [ebp-0A]
 004CF334    push        eax
 004CF335    push        0
 004CF337    push        0
 004CF339    push        0
 004CF33B    mov         cx,word ptr [ebp-0C]
 004CF33F    mov         dx,word ptr [ebp-2]
 004CF343    mov         ax,14
 004CF347    call        004CE5F4
 004CF34C    mov         esp,ebp
 004CF34E    pop         ebp
 004CF34F    ret
end;*}

//004CF350
{*procedure sub_004CF350(?:?);
begin
 004CF350    push        ebp
 004CF351    mov         ebp,esp
 004CF353    push        ecx
 004CF354    mov         word ptr [ebp-2],ax
 004CF358    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF35D    mov         byte ptr [eax],0
 004CF360    call        004CED2C
 004CF365    push        0
 004CF367    push        0
 004CF369    push        0
 004CF36B    push        0
 004CF36D    push        0
 004CF36F    xor         ecx,ecx
 004CF371    mov         dx,word ptr [ebp-2]
 004CF375    mov         ax,1C
 004CF379    call        004CE5F4
 004CF37E    pop         ecx
 004CF37F    pop         ebp
 004CF380    ret
end;*}

//004CF384
{*procedure sub_004CF384(?:?);
begin
 004CF384    push        ebp
 004CF385    mov         ebp,esp
 004CF387    push        ecx
 004CF388    mov         word ptr [ebp-2],ax
 004CF38C    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF391    mov         byte ptr [eax],0
 004CF394    call        004CED2C
 004CF399    push        0
 004CF39B    push        0
 004CF39D    push        0
 004CF39F    push        0
 004CF3A1    push        0
 004CF3A3    xor         ecx,ecx
 004CF3A5    mov         dx,word ptr [ebp-2]
 004CF3A9    mov         ax,17
 004CF3AD    call        004CE5F4
 004CF3B2    pop         ecx
 004CF3B3    pop         ebp
 004CF3B4    ret
end;*}

//004CF3B8
procedure sub_004CF3B8;
begin
{*
 004CF3B8    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF3BD    mov         byte ptr [eax],0
 004CF3C0    call        004CED2C
 004CF3C5    push        0
 004CF3C7    push        0
 004CF3C9    push        0
 004CF3CB    push        0
 004CF3CD    push        0
 004CF3CF    xor         ecx,ecx
 004CF3D1    mov         dx,2
 004CF3D5    mov         ax,17
 004CF3D9    call        004CE5F4
 004CF3DE    ret
*}
end;

//004CF3E0
procedure sub_004CF3E0;
begin
{*
 004CF3E0    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF3E5    mov         byte ptr [eax],0
 004CF3E8    call        004CED2C
 004CF3ED    push        0
 004CF3EF    push        0
 004CF3F1    push        0
 004CF3F3    push        0
 004CF3F5    push        0
 004CF3F7    xor         ecx,ecx
 004CF3F9    mov         dx,1
 004CF3FD    mov         ax,17
 004CF401    call        004CE5F4
 004CF406    ret
*}
end;

//004CF408
{*procedure sub_004CF408(?:?);
begin
 004CF408    push        ebp
 004CF409    mov         ebp,esp
 004CF40B    push        ecx
 004CF40C    mov         word ptr [ebp-2],ax
 004CF410    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF415    mov         byte ptr [eax],0
 004CF418    call        004CED2C
 004CF41D    push        0
 004CF41F    push        0
 004CF421    push        0
 004CF423    push        0
 004CF425    push        0
 004CF427    mov         cx,word ptr [ebp-2]
 004CF42B    mov         dx,2
 004CF42F    mov         ax,18
 004CF433    call        004CE5F4
 004CF438    mov         al,1
 004CF43A    call        004CED14
 004CF43F    pop         ecx
 004CF440    pop         ebp
 004CF441    ret
end;*}

//004CF444
procedure sub_004CF444;
begin
{*
 004CF444    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF449    mov         byte ptr [eax],0
 004CF44C    call        004CED2C
 004CF451    push        0
 004CF453    push        0
 004CF455    push        0
 004CF457    push        0
 004CF459    push        0
 004CF45B    xor         ecx,ecx
 004CF45D    mov         dx,3
 004CF461    mov         ax,18
 004CF465    call        004CE5F4
 004CF46A    mov         al,1
 004CF46C    call        004CED14
 004CF471    ret
*}
end;

//004CF474
procedure sub_004CF474;
begin
{*
 004CF474    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF479    mov         byte ptr [eax],0
 004CF47C    call        004CED2C
 004CF481    push        0
 004CF483    push        0
 004CF485    push        0
 004CF487    push        0
 004CF489    push        0
 004CF48B    xor         ecx,ecx
 004CF48D    mov         dx,5
 004CF491    mov         ax,18
 004CF495    call        004CE5F4
 004CF49A    mov         al,1
 004CF49C    call        004CED14
 004CF4A1    ret
*}
end;

//004CF4A4
procedure sub_004CF4A4;
begin
{*
 004CF4A4    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF4A9    mov         byte ptr [eax],0
 004CF4AC    call        004CED2C
 004CF4B1    push        0
 004CF4B3    push        0
 004CF4B5    push        0
 004CF4B7    push        0
 004CF4B9    push        0
 004CF4BB    xor         ecx,ecx
 004CF4BD    mov         dx,4
 004CF4C1    mov         ax,18
 004CF4C5    call        004CE5F4
 004CF4CA    mov         al,1
 004CF4CC    call        004CED14
 004CF4D1    ret
*}
end;

//004CF4D4
procedure sub_004CF4D4;
begin
{*
 004CF4D4    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF4D9    mov         byte ptr [eax],0
 004CF4DC    call        004CED2C
 004CF4E1    push        1
 004CF4E3    push        0
 004CF4E5    push        0
 004CF4E7    push        0
 004CF4E9    push        0
 004CF4EB    mov         cx,1
 004CF4EF    mov         dx,1
 004CF4F3    mov         ax,0E
 004CF4F7    call        004CE5F4
 004CF4FC    ret
*}
end;

//004CF500
{*procedure sub_004CF500(?:?);
begin
 004CF500    push        ebp
 004CF501    mov         ebp,esp
 004CF503    push        ecx
 004CF504    mov         word ptr [ebp-2],ax
 004CF508    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF50D    mov         byte ptr [eax],0
 004CF510    call        004CED2C
 004CF515    mov         ax,word ptr [ebp-2]
 004CF519    push        eax
 004CF51A    push        0
 004CF51C    push        0
 004CF51E    push        0
 004CF520    push        0
 004CF522    mov         cx,17
 004CF526    mov         dx,1
 004CF52A    mov         ax,0E
 004CF52E    call        004CE5F4
 004CF533    pop         ecx
 004CF534    pop         ebp
 004CF535    ret
end;*}

//004CF538
{*function sub_004CF538:?;
begin
 004CF538    push        ebp
 004CF539    mov         ebp,esp
 004CF53B    push        ecx
 004CF53C    call        004CED2C
 004CF541    push        0
 004CF543    push        0
 004CF545    push        0
 004CF547    push        0
 004CF549    push        0
 004CF54B    mov         cx,17
 004CF54F    mov         dx,2
 004CF553    mov         ax,0E
 004CF557    call        004CE5F4
 004CF55C    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF561    cmp         byte ptr [eax],0
>004CF564    jne         004CF586
 004CF566    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF56B    cmp         byte ptr [eax],0
>004CF56E    jne         004CF586
 004CF570    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF575    mov         ax,word ptr [eax]
 004CF578    add         ax,2
 004CF57C    call        0055FE3C
 004CF581    mov         byte ptr [ebp-1],al
>004CF584    jmp         004CF58A
 004CF586    mov         byte ptr [ebp-1],0FF
 004CF58A    mov         al,byte ptr [ebp-1]
 004CF58D    pop         ecx
 004CF58E    pop         ebp
 004CF58F    ret
end;*}

//004CF590
{*procedure sub_004CF590(?:?);
begin
 004CF590    push        ebp
 004CF591    mov         ebp,esp
 004CF593    push        ecx
 004CF594    mov         word ptr [ebp-2],ax
 004CF598    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF59D    mov         byte ptr [eax],0
 004CF5A0    call        004CED2C
 004CF5A5    push        0
 004CF5A7    push        0
 004CF5A9    push        0
 004CF5AB    push        0
 004CF5AD    push        0
 004CF5AF    xor         ecx,ecx
 004CF5B1    mov         dx,word ptr [ebp-2]
 004CF5B5    mov         ax,1E
 004CF5B9    call        004CE5F4
 004CF5BE    mov         al,1
 004CF5C0    call        004CED14
 004CF5C5    pop         ecx
 004CF5C6    pop         ebp
 004CF5C7    ret
end;*}

//004CF5C8
{*function sub_004CF5C8(?:?; ?:TMemoryStream):?;
begin
 004CF5C8    push        ebp
 004CF5C9    mov         ebp,esp
 004CF5CB    add         esp,0FFFFFFE4
 004CF5CE    push        ebx
 004CF5CF    mov         dword ptr [ebp-8],edx
 004CF5D2    mov         word ptr [ebp-2],ax
 004CF5D6    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF5DB    mov         byte ptr [eax],0
 004CF5DE    mov         byte ptr [ebp-9],0
 004CF5E2    xor         ecx,ecx
 004CF5E4    xor         edx,edx
 004CF5E6    mov         eax,dword ptr [ebp-8]
 004CF5E9    mov         ebx,dword ptr [eax]
 004CF5EB    call        dword ptr [ebx+14]
 004CF5EE    call        004CED2C
 004CF5F3    push        0
 004CF5F5    push        0
 004CF5F7    push        0
 004CF5F9    push        0
 004CF5FB    push        0
 004CF5FD    mov         cx,word ptr [ebp-2]
 004CF601    mov         dx,1
 004CF605    mov         ax,8
 004CF609    call        004CE5F4
 004CF60E    mov         word ptr [ebp-12],ax
 004CF612    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CF617    cmp         byte ptr [eax],0
>004CF61A    je          004CF65B
 004CF61C    lea         eax,[ebp-16]
 004CF61F    push        eax
 004CF620    lea         eax,[ebp-17]
 004CF623    push        eax
 004CF624    lea         eax,[ebp-18]
 004CF627    push        eax
 004CF628    lea         eax,[ebp-19]
 004CF62B    push        eax
 004CF62C    lea         ecx,[ebp-15]
 004CF62F    lea         edx,[ebp-14]
 004CF632    lea         eax,[ebp-13]
 004CF635    call        004CC194
 004CF63A    xor         eax,eax
 004CF63C    mov         al,byte ptr [ebp-15]
 004CF63F    mov         [00571ED8],ax;gvar_00571ED8
 004CF645    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF64D    xor         eax,eax
 004CF64F    mov         al,byte ptr [ebp-14]
 004CF652    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CF659    jmp         004CF69C
 004CF65B    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF660    mov         ax,word ptr [eax]
 004CF663    add         ax,3
 004CF667    call        0055FE3C
 004CF66C    and         eax,0FF
 004CF671    mov         [00571ED8],ax;gvar_00571ED8
 004CF677    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF67F    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF684    mov         ax,word ptr [eax]
 004CF687    add         ax,2
 004CF68B    call        0055FE3C
 004CF690    and         eax,0FF
 004CF695    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CF69C    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF6A1    cmp         byte ptr [eax],0
>004CF6A4    jne         004CF720
 004CF6A6    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF6AB    cmp         byte ptr [eax],0
>004CF6AE    jne         004CF720
 004CF6B0    mov         dword ptr [ebp-10],1
>004CF6B7    jmp         004CF6E0
 004CF6B9    call        004CEAB4
 004CF6BE    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004CF6C4    mov         ecx,200
 004CF6C9    mov         eax,dword ptr [ebp-8]
 004CF6CC    mov         ebx,dword ptr [eax]
 004CF6CE    call        dword ptr [ebx+10]
 004CF6D1    inc         dword ptr [ebp-10]
 004CF6D4    mov         eax,[0056E3C0];^Application:TApplication
 004CF6D9    mov         eax,dword ptr [eax]
 004CF6DB    call        004AB51C
 004CF6E0    movzx       eax,word ptr [ebp-12]
 004CF6E4    cmp         eax,dword ptr [ebp-10]
>004CF6E7    jl          004CF6F3
 004CF6E9    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF6EE    cmp         byte ptr [eax],0
>004CF6F1    je          004CF6B9
 004CF6F3    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF6F8    cmp         byte ptr [eax],0
>004CF6FB    jne         004CF70B
 004CF6FD    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF702    cmp         byte ptr [eax],0
>004CF705    jne         004CF70B
 004CF707    mov         byte ptr [ebp-9],1
 004CF70B    mov         eax,dword ptr [ebp-8]
 004CF70E    mov         edx,dword ptr [eax]
 004CF710    call        dword ptr [edx]
 004CF712    cmp         edx,0
>004CF715    jne         004CF720
 004CF717    cmp         eax,0
>004CF71A    jne         004CF720
 004CF71C    mov         byte ptr [ebp-9],0
 004CF720    mov         al,byte ptr [ebp-9]
 004CF723    pop         ebx
 004CF724    mov         esp,ebp
 004CF726    pop         ebp
 004CF727    ret
end;*}

//004CF728
{*function sub_004CF728(?:?; ?:TMemoryStream):?;
begin
 004CF728    push        ebp
 004CF729    mov         ebp,esp
 004CF72B    add         esp,0FFFFFFE4
 004CF72E    push        ebx
 004CF72F    mov         dword ptr [ebp-8],edx
 004CF732    mov         word ptr [ebp-2],ax
 004CF736    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF73B    mov         byte ptr [eax],0
 004CF73E    mov         byte ptr [ebp-9],0
 004CF742    xor         ecx,ecx
 004CF744    xor         edx,edx
 004CF746    mov         eax,dword ptr [ebp-8]
 004CF749    mov         ebx,dword ptr [eax]
 004CF74B    call        dword ptr [ebx+14]
 004CF74E    call        004CED2C
 004CF753    push        0
 004CF755    push        0
 004CF757    push        0
 004CF759    push        0
 004CF75B    push        0
 004CF75D    mov         cx,word ptr [ebp-2]
 004CF761    mov         dx,2
 004CF765    mov         ax,8
 004CF769    call        004CE5F4
 004CF76E    mov         word ptr [ebp-12],ax
 004CF772    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CF777    cmp         byte ptr [eax],0
>004CF77A    je          004CF7BB
 004CF77C    lea         eax,[ebp-16]
 004CF77F    push        eax
 004CF780    lea         eax,[ebp-17]
 004CF783    push        eax
 004CF784    lea         eax,[ebp-18]
 004CF787    push        eax
 004CF788    lea         eax,[ebp-19]
 004CF78B    push        eax
 004CF78C    lea         ecx,[ebp-15]
 004CF78F    lea         edx,[ebp-14]
 004CF792    lea         eax,[ebp-13]
 004CF795    call        004CC194
 004CF79A    xor         eax,eax
 004CF79C    mov         al,byte ptr [ebp-15]
 004CF79F    mov         [00571ED8],ax;gvar_00571ED8
 004CF7A5    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF7AD    xor         eax,eax
 004CF7AF    mov         al,byte ptr [ebp-14]
 004CF7B2    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CF7B9    jmp         004CF7FC
 004CF7BB    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF7C0    mov         ax,word ptr [eax]
 004CF7C3    add         ax,3
 004CF7C7    call        0055FE3C
 004CF7CC    and         eax,0FF
 004CF7D1    mov         [00571ED8],ax;gvar_00571ED8
 004CF7D7    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF7DF    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF7E4    mov         ax,word ptr [eax]
 004CF7E7    add         ax,2
 004CF7EB    call        0055FE3C
 004CF7F0    and         eax,0FF
 004CF7F5    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CF7FC    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF801    cmp         byte ptr [eax],0
>004CF804    jne         004CF86B
 004CF806    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF80B    cmp         byte ptr [eax],0
>004CF80E    jne         004CF86B
 004CF810    mov         dword ptr [ebp-10],1
>004CF817    jmp         004CF840
 004CF819    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004CF81F    mov         ecx,200
 004CF824    mov         eax,dword ptr [ebp-8]
 004CF827    mov         ebx,dword ptr [eax]
 004CF829    call        dword ptr [ebx+0C]
 004CF82C    call        004CEC08
 004CF831    inc         dword ptr [ebp-10]
 004CF834    mov         eax,[0056E3C0];^Application:TApplication
 004CF839    mov         eax,dword ptr [eax]
 004CF83B    call        004AB51C
 004CF840    movzx       eax,word ptr [ebp-12]
 004CF844    cmp         eax,dword ptr [ebp-10]
>004CF847    jl          004CF853
 004CF849    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF84E    cmp         byte ptr [eax],0
>004CF851    je          004CF819
 004CF853    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF858    cmp         byte ptr [eax],0
>004CF85B    jne         004CF86B
 004CF85D    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF862    cmp         byte ptr [eax],0
>004CF865    jne         004CF86B
 004CF867    mov         byte ptr [ebp-9],1
 004CF86B    mov         al,byte ptr [ebp-9]
 004CF86E    pop         ebx
 004CF86F    mov         esp,ebp
 004CF871    pop         ebp
 004CF872    ret
end;*}

//004CF874
{*function sub_004CF874(?:?):?;
begin
 004CF874    push        ebp
 004CF875    mov         ebp,esp
 004CF877    add         esp,0FFFFFFF4
 004CF87A    mov         word ptr [ebp-2],ax
 004CF87E    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF883    mov         byte ptr [eax],0
 004CF886    mov         byte ptr [ebp-3],0
 004CF88A    call        004CED2C
 004CF88F    push        0
 004CF891    push        0
 004CF893    push        0
 004CF895    push        0
 004CF897    push        0
 004CF899    mov         cx,word ptr [ebp-2]
 004CF89D    mov         dx,1
 004CF8A1    mov         ax,8
 004CF8A5    call        004CE5F4
 004CF8AA    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CF8AF    cmp         byte ptr [eax],0
>004CF8B2    je          004CF8F3
 004CF8B4    lea         eax,[ebp-7]
 004CF8B7    push        eax
 004CF8B8    lea         eax,[ebp-8]
 004CF8BB    push        eax
 004CF8BC    lea         eax,[ebp-9]
 004CF8BF    push        eax
 004CF8C0    lea         eax,[ebp-0A]
 004CF8C3    push        eax
 004CF8C4    lea         ecx,[ebp-6]
 004CF8C7    lea         edx,[ebp-5]
 004CF8CA    lea         eax,[ebp-4]
 004CF8CD    call        004CC194
 004CF8D2    xor         eax,eax
 004CF8D4    mov         al,byte ptr [ebp-6]
 004CF8D7    mov         [00571ED8],ax;gvar_00571ED8
 004CF8DD    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF8E5    xor         eax,eax
 004CF8E7    mov         al,byte ptr [ebp-5]
 004CF8EA    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CF8F1    jmp         004CF934
 004CF8F3    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF8F8    mov         ax,word ptr [eax]
 004CF8FB    add         ax,3
 004CF8FF    call        0055FE3C
 004CF904    and         eax,0FF
 004CF909    mov         [00571ED8],ax;gvar_00571ED8
 004CF90F    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF917    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF91C    mov         ax,word ptr [eax]
 004CF91F    add         ax,2
 004CF923    call        0055FE3C
 004CF928    and         eax,0FF
 004CF92D    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CF934    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CF939    cmp         byte ptr [eax],0
>004CF93C    jne         004CF94C
 004CF93E    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF943    cmp         byte ptr [eax],0
>004CF946    jne         004CF94C
 004CF948    mov         byte ptr [ebp-3],1
 004CF94C    mov         al,byte ptr [ebp-3]
 004CF94F    mov         esp,ebp
 004CF951    pop         ebp
 004CF952    ret
end;*}

//004CF954
{*function sub_004CF954(?:?):?;
begin
 004CF954    push        ebp
 004CF955    mov         ebp,esp
 004CF957    add         esp,0FFFFFFF4
 004CF95A    mov         word ptr [ebp-2],ax
 004CF95E    mov         eax,[0056E5A4];^gvar_0056DF04
 004CF963    mov         byte ptr [eax],0
 004CF966    mov         byte ptr [ebp-3],0
 004CF96A    call        004CED2C
 004CF96F    push        0
 004CF971    push        0
 004CF973    push        0
 004CF975    push        0
 004CF977    push        0
 004CF979    xor         ecx,ecx
 004CF97B    mov         dx,word ptr [ebp-2]
 004CF97F    mov         ax,9
 004CF983    call        004CE5F4
 004CF988    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CF98D    cmp         byte ptr [eax],0
>004CF990    je          004CF9D1
 004CF992    lea         eax,[ebp-7]
 004CF995    push        eax
 004CF996    lea         eax,[ebp-8]
 004CF999    push        eax
 004CF99A    lea         eax,[ebp-9]
 004CF99D    push        eax
 004CF99E    lea         eax,[ebp-0A]
 004CF9A1    push        eax
 004CF9A2    lea         ecx,[ebp-6]
 004CF9A5    lea         edx,[ebp-5]
 004CF9A8    lea         eax,[ebp-4]
 004CF9AB    call        004CC194
 004CF9B0    xor         eax,eax
 004CF9B2    mov         al,byte ptr [ebp-6]
 004CF9B5    mov         [00571ED8],ax;gvar_00571ED8
 004CF9BB    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF9C3    xor         eax,eax
 004CF9C5    mov         al,byte ptr [ebp-5]
 004CF9C8    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CF9CF    jmp         004CFA12
 004CF9D1    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF9D6    mov         ax,word ptr [eax]
 004CF9D9    add         ax,3
 004CF9DD    call        0055FE3C
 004CF9E2    and         eax,0FF
 004CF9E7    mov         [00571ED8],ax;gvar_00571ED8
 004CF9ED    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CF9F5    mov         eax,[0056E1D4];^gvar_0056DF14
 004CF9FA    mov         ax,word ptr [eax]
 004CF9FD    add         ax,2
 004CFA01    call        0055FE3C
 004CFA06    and         eax,0FF
 004CFA0B    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFA12    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFA17    cmp         byte ptr [eax],0
>004CFA1A    jne         004CFA2A
 004CFA1C    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFA21    cmp         byte ptr [eax],0
>004CFA24    jne         004CFA2A
 004CFA26    mov         byte ptr [ebp-3],1
 004CFA2A    mov         al,byte ptr [ebp-3]
 004CFA2D    mov         esp,ebp
 004CFA2F    pop         ebp
 004CFA30    ret
end;*}

//004CFA34
{*function sub_004CFA34(?:?):?;
begin
 004CFA34    push        ebp
 004CFA35    mov         ebp,esp
 004CFA37    add         esp,0FFFFFFF4
 004CFA3A    mov         word ptr [ebp-2],ax
 004CFA3E    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFA43    mov         byte ptr [eax],0
 004CFA46    mov         byte ptr [ebp-3],0
 004CFA4A    call        004CED2C
 004CFA4F    push        10
 004CFA51    call        user32.GetKeyState
 004CFA56    test        ax,ax
>004CFA59    jge         004CFA78
 004CFA5B    push        0
 004CFA5D    push        0
 004CFA5F    push        0
 004CFA61    push        0
 004CFA63    push        0
 004CFA65    mov         cx,word ptr [ebp-2]
 004CFA69    mov         dx,4
 004CFA6D    mov         ax,8
 004CFA71    call        004CE5F4
>004CFA76    jmp         004CFA93
 004CFA78    push        0
 004CFA7A    push        0
 004CFA7C    push        0
 004CFA7E    push        0
 004CFA80    push        0
 004CFA82    mov         cx,word ptr [ebp-2]
 004CFA86    mov         dx,3
 004CFA8A    mov         ax,8
 004CFA8E    call        004CE5F4
 004CFA93    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFA98    cmp         byte ptr [eax],0
>004CFA9B    je          004CFADC
 004CFA9D    lea         eax,[ebp-7]
 004CFAA0    push        eax
 004CFAA1    lea         eax,[ebp-8]
 004CFAA4    push        eax
 004CFAA5    lea         eax,[ebp-9]
 004CFAA8    push        eax
 004CFAA9    lea         eax,[ebp-0A]
 004CFAAC    push        eax
 004CFAAD    lea         ecx,[ebp-6]
 004CFAB0    lea         edx,[ebp-5]
 004CFAB3    lea         eax,[ebp-4]
 004CFAB6    call        004CC194
 004CFABB    xor         eax,eax
 004CFABD    mov         al,byte ptr [ebp-6]
 004CFAC0    mov         [00571ED8],ax;gvar_00571ED8
 004CFAC6    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFACE    xor         eax,eax
 004CFAD0    mov         al,byte ptr [ebp-5]
 004CFAD3    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFADA    jmp         004CFB1D
 004CFADC    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFAE1    mov         ax,word ptr [eax]
 004CFAE4    add         ax,3
 004CFAE8    call        0055FE3C
 004CFAED    and         eax,0FF
 004CFAF2    mov         [00571ED8],ax;gvar_00571ED8
 004CFAF8    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFB00    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFB05    mov         ax,word ptr [eax]
 004CFB08    add         ax,2
 004CFB0C    call        0055FE3C
 004CFB11    and         eax,0FF
 004CFB16    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFB1D    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFB22    cmp         byte ptr [eax],0
>004CFB25    jne         004CFB35
 004CFB27    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFB2C    cmp         byte ptr [eax],0
>004CFB2F    jne         004CFB35
 004CFB31    mov         byte ptr [ebp-3],1
 004CFB35    mov         al,byte ptr [ebp-3]
 004CFB38    mov         esp,ebp
 004CFB3A    pop         ebp
 004CFB3B    ret
end;*}

//004CFB3C
{*function sub_004CFB3C(?:?):?;
begin
 004CFB3C    push        ebp
 004CFB3D    mov         ebp,esp
 004CFB3F    add         esp,0FFFFFFF4
 004CFB42    mov         word ptr [ebp-2],ax
 004CFB46    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFB4B    mov         byte ptr [eax],0
 004CFB4E    mov         byte ptr [ebp-3],0
 004CFB52    call        004CED2C
 004CFB57    push        0
 004CFB59    push        0
 004CFB5B    push        0
 004CFB5D    push        0
 004CFB5F    push        0
 004CFB61    mov         cx,word ptr [ebp-2]
 004CFB65    mov         dx,6
 004CFB69    mov         ax,8
 004CFB6D    call        004CE5F4
 004CFB72    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFB77    cmp         byte ptr [eax],0
>004CFB7A    je          004CFBBB
 004CFB7C    lea         eax,[ebp-7]
 004CFB7F    push        eax
 004CFB80    lea         eax,[ebp-8]
 004CFB83    push        eax
 004CFB84    lea         eax,[ebp-9]
 004CFB87    push        eax
 004CFB88    lea         eax,[ebp-0A]
 004CFB8B    push        eax
 004CFB8C    lea         ecx,[ebp-6]
 004CFB8F    lea         edx,[ebp-5]
 004CFB92    lea         eax,[ebp-4]
 004CFB95    call        004CC194
 004CFB9A    xor         eax,eax
 004CFB9C    mov         al,byte ptr [ebp-6]
 004CFB9F    mov         [00571ED8],ax;gvar_00571ED8
 004CFBA5    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFBAD    xor         eax,eax
 004CFBAF    mov         al,byte ptr [ebp-5]
 004CFBB2    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFBB9    jmp         004CFBFC
 004CFBBB    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFBC0    mov         ax,word ptr [eax]
 004CFBC3    add         ax,3
 004CFBC7    call        0055FE3C
 004CFBCC    and         eax,0FF
 004CFBD1    mov         [00571ED8],ax;gvar_00571ED8
 004CFBD7    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFBDF    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFBE4    mov         ax,word ptr [eax]
 004CFBE7    add         ax,2
 004CFBEB    call        0055FE3C
 004CFBF0    and         eax,0FF
 004CFBF5    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFBFC    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFC01    cmp         byte ptr [eax],0
>004CFC04    jne         004CFC14
 004CFC06    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFC0B    cmp         byte ptr [eax],0
>004CFC0E    jne         004CFC14
 004CFC10    mov         byte ptr [ebp-3],1
 004CFC14    mov         al,byte ptr [ebp-3]
 004CFC17    mov         esp,ebp
 004CFC19    pop         ebp
 004CFC1A    ret
end;*}

//004CFC1C
{*function sub_004CFC1C(?:?; ?:?; ?:?):?;
begin
 004CFC1C    push        ebp
 004CFC1D    mov         ebp,esp
 004CFC1F    add         esp,0FFFFFFEC
 004CFC22    mov         word ptr [ebp-0A],cx
 004CFC26    mov         dword ptr [ebp-8],edx
 004CFC29    mov         word ptr [ebp-2],ax
 004CFC2D    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFC32    mov         byte ptr [eax],0
 004CFC35    mov         byte ptr [ebp-0B],0
 004CFC39    call        004CED2C
 004CFC3E    push        0
 004CFC40    mov         ax,word ptr [ebp-8]
 004CFC44    push        eax
 004CFC45    mov         eax,dword ptr [ebp-8]
 004CFC48    shr         eax,10
 004CFC4B    push        eax
 004CFC4C    push        0
 004CFC4E    mov         ax,word ptr [ebp-0A]
 004CFC52    push        eax
 004CFC53    mov         cx,word ptr [ebp-2]
 004CFC57    mov         dx,5
 004CFC5B    mov         ax,8
 004CFC5F    call        004CE5F4
 004CFC64    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFC69    cmp         byte ptr [eax],0
>004CFC6C    je          004CFCAD
 004CFC6E    lea         eax,[ebp-0F]
 004CFC71    push        eax
 004CFC72    lea         eax,[ebp-10]
 004CFC75    push        eax
 004CFC76    lea         eax,[ebp-11]
 004CFC79    push        eax
 004CFC7A    lea         eax,[ebp-12]
 004CFC7D    push        eax
 004CFC7E    lea         ecx,[ebp-0E]
 004CFC81    lea         edx,[ebp-0D]
 004CFC84    lea         eax,[ebp-0C]
 004CFC87    call        004CC194
 004CFC8C    xor         eax,eax
 004CFC8E    mov         al,byte ptr [ebp-0E]
 004CFC91    mov         [00571ED8],ax;gvar_00571ED8
 004CFC97    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFC9F    xor         eax,eax
 004CFCA1    mov         al,byte ptr [ebp-0D]
 004CFCA4    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFCAB    jmp         004CFCEE
 004CFCAD    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFCB2    mov         ax,word ptr [eax]
 004CFCB5    add         ax,3
 004CFCB9    call        0055FE3C
 004CFCBE    and         eax,0FF
 004CFCC3    mov         [00571ED8],ax;gvar_00571ED8
 004CFCC9    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFCD1    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFCD6    mov         ax,word ptr [eax]
 004CFCD9    add         ax,2
 004CFCDD    call        0055FE3C
 004CFCE2    and         eax,0FF
 004CFCE7    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFCEE    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFCF3    cmp         byte ptr [eax],0
>004CFCF6    jne         004CFD06
 004CFCF8    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFCFD    cmp         byte ptr [eax],0
>004CFD00    jne         004CFD06
 004CFD02    mov         byte ptr [ebp-0B],1
 004CFD06    mov         al,byte ptr [ebp-0B]
 004CFD09    mov         esp,ebp
 004CFD0B    pop         ebp
 004CFD0C    ret
end;*}

//004CFD10
{*function sub_004CFD10:?;
begin
 004CFD10    push        ebp
 004CFD11    mov         ebp,esp
 004CFD13    add         esp,0FFFFFFF8
 004CFD16    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFD1B    mov         byte ptr [eax],0
 004CFD1E    mov         byte ptr [ebp-1],0
 004CFD22    call        004CED2C
 004CFD27    push        0
 004CFD29    push        0
 004CFD2B    push        0
 004CFD2D    push        0
 004CFD2F    push        0
 004CFD31    xor         ecx,ecx
 004CFD33    mov         dx,2
 004CFD37    mov         ax,28
 004CFD3B    call        004CE5F4
 004CFD40    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFD45    cmp         byte ptr [eax],0
>004CFD48    je          004CFD89
 004CFD4A    lea         eax,[ebp-5]
 004CFD4D    push        eax
 004CFD4E    lea         eax,[ebp-6]
 004CFD51    push        eax
 004CFD52    lea         eax,[ebp-7]
 004CFD55    push        eax
 004CFD56    lea         eax,[ebp-8]
 004CFD59    push        eax
 004CFD5A    lea         ecx,[ebp-4]
 004CFD5D    lea         edx,[ebp-3]
 004CFD60    lea         eax,[ebp-2]
 004CFD63    call        004CC194
 004CFD68    xor         eax,eax
 004CFD6A    mov         al,byte ptr [ebp-4]
 004CFD6D    mov         [00571ED8],ax;gvar_00571ED8
 004CFD73    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFD7B    xor         eax,eax
 004CFD7D    mov         al,byte ptr [ebp-3]
 004CFD80    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFD87    jmp         004CFDCA
 004CFD89    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFD8E    mov         ax,word ptr [eax]
 004CFD91    add         ax,3
 004CFD95    call        0055FE3C
 004CFD9A    and         eax,0FF
 004CFD9F    mov         [00571ED8],ax;gvar_00571ED8
 004CFDA5    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFDAD    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFDB2    mov         ax,word ptr [eax]
 004CFDB5    add         ax,2
 004CFDB9    call        0055FE3C
 004CFDBE    and         eax,0FF
 004CFDC3    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFDCA    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFDCF    cmp         byte ptr [eax],0
>004CFDD2    jne         004CFDE2
 004CFDD4    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFDD9    cmp         byte ptr [eax],0
>004CFDDC    jne         004CFDE2
 004CFDDE    mov         byte ptr [ebp-1],1
 004CFDE2    mov         al,byte ptr [ebp-1]
 004CFDE5    pop         ecx
 004CFDE6    pop         ecx
 004CFDE7    pop         ebp
 004CFDE8    ret
end;*}

//004CFDEC
{*function sub_004CFDEC:?;
begin
 004CFDEC    push        ebp
 004CFDED    mov         ebp,esp
 004CFDEF    add         esp,0FFFFFFF8
 004CFDF2    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFDF7    mov         byte ptr [eax],0
 004CFDFA    mov         byte ptr [ebp-1],0
 004CFDFE    call        004CED2C
 004CFE03    push        0
 004CFE05    push        0
 004CFE07    push        0
 004CFE09    push        0
 004CFE0B    push        0
 004CFE0D    xor         ecx,ecx
 004CFE0F    mov         dx,1
 004CFE13    mov         ax,28
 004CFE17    call        004CE5F4
 004CFE1C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFE21    cmp         byte ptr [eax],0
>004CFE24    je          004CFE65
 004CFE26    lea         eax,[ebp-5]
 004CFE29    push        eax
 004CFE2A    lea         eax,[ebp-6]
 004CFE2D    push        eax
 004CFE2E    lea         eax,[ebp-7]
 004CFE31    push        eax
 004CFE32    lea         eax,[ebp-8]
 004CFE35    push        eax
 004CFE36    lea         ecx,[ebp-4]
 004CFE39    lea         edx,[ebp-3]
 004CFE3C    lea         eax,[ebp-2]
 004CFE3F    call        004CC194
 004CFE44    xor         eax,eax
 004CFE46    mov         al,byte ptr [ebp-4]
 004CFE49    mov         [00571ED8],ax;gvar_00571ED8
 004CFE4F    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFE57    xor         eax,eax
 004CFE59    mov         al,byte ptr [ebp-3]
 004CFE5C    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFE63    jmp         004CFEA6
 004CFE65    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFE6A    mov         ax,word ptr [eax]
 004CFE6D    add         ax,3
 004CFE71    call        0055FE3C
 004CFE76    and         eax,0FF
 004CFE7B    mov         [00571ED8],ax;gvar_00571ED8
 004CFE81    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFE89    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFE8E    mov         ax,word ptr [eax]
 004CFE91    add         ax,2
 004CFE95    call        0055FE3C
 004CFE9A    and         eax,0FF
 004CFE9F    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFEA6    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFEAB    cmp         byte ptr [eax],0
>004CFEAE    jne         004CFEBE
 004CFEB0    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFEB5    cmp         byte ptr [eax],0
>004CFEB8    jne         004CFEBE
 004CFEBA    mov         byte ptr [ebp-1],1
 004CFEBE    mov         al,byte ptr [ebp-1]
 004CFEC1    pop         ecx
 004CFEC2    pop         ecx
 004CFEC3    pop         ebp
 004CFEC4    ret
end;*}

//004CFEC8
{*function sub_004CFEC8(?:?; ?:?; ?:TMemoryStream):?;
begin
 004CFEC8    push        ebp
 004CFEC9    mov         ebp,esp
 004CFECB    add         esp,0FFFFFFE4
 004CFECE    push        ebx
 004CFECF    mov         dword ptr [ebp-8],ecx
 004CFED2    mov         word ptr [ebp-4],dx
 004CFED6    mov         word ptr [ebp-2],ax
 004CFEDA    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFEDF    mov         byte ptr [eax],0
 004CFEE2    mov         byte ptr [ebp-9],0
 004CFEE6    xor         ecx,ecx
 004CFEE8    xor         edx,edx
 004CFEEA    mov         eax,dword ptr [ebp-8]
 004CFEED    mov         ebx,dword ptr [eax]
 004CFEEF    call        dword ptr [ebx+14]
 004CFEF2    call        004CED2C
 004CFEF7    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFEFC    cmp         byte ptr [eax],0
>004CFEFF    jne         004D003E
 004CFF05    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFF0A    cmp         byte ptr [eax],0
>004CFF0D    jne         004D003E
 004CFF13    push        0
 004CFF15    push        0
 004CFF17    push        0
 004CFF19    push        0
 004CFF1B    push        0
 004CFF1D    mov         cx,word ptr [ebp-4]
 004CFF21    mov         dx,word ptr [ebp-2]
 004CFF25    mov         ax,0D
 004CFF29    call        004CE5F4
 004CFF2E    mov         word ptr [ebp-12],ax
 004CFF32    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004CFF37    cmp         byte ptr [eax],0
>004CFF3A    je          004CFF7B
 004CFF3C    lea         eax,[ebp-16]
 004CFF3F    push        eax
 004CFF40    lea         eax,[ebp-17]
 004CFF43    push        eax
 004CFF44    lea         eax,[ebp-18]
 004CFF47    push        eax
 004CFF48    lea         eax,[ebp-19]
 004CFF4B    push        eax
 004CFF4C    lea         ecx,[ebp-15]
 004CFF4F    lea         edx,[ebp-14]
 004CFF52    lea         eax,[ebp-13]
 004CFF55    call        004CC194
 004CFF5A    xor         eax,eax
 004CFF5C    mov         al,byte ptr [ebp-15]
 004CFF5F    mov         [00571ED8],ax;gvar_00571ED8
 004CFF65    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFF6D    xor         eax,eax
 004CFF6F    mov         al,byte ptr [ebp-14]
 004CFF72    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004CFF79    jmp         004CFFBC
 004CFF7B    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFF80    mov         ax,word ptr [eax]
 004CFF83    add         ax,3
 004CFF87    call        0055FE3C
 004CFF8C    and         eax,0FF
 004CFF91    mov         [00571ED8],ax;gvar_00571ED8
 004CFF97    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004CFF9F    mov         eax,[0056E1D4];^gvar_0056DF14
 004CFFA4    mov         ax,word ptr [eax]
 004CFFA7    add         ax,2
 004CFFAB    call        0055FE3C
 004CFFB0    and         eax,0FF
 004CFFB5    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004CFFBC    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFFC1    cmp         byte ptr [eax],0
>004CFFC4    jne         004D0029
 004CFFC6    mov         eax,[0056E5A4];^gvar_0056DF04
 004CFFCB    cmp         byte ptr [eax],0
>004CFFCE    jne         004D0029
 004CFFD0    mov         dword ptr [ebp-10],1
>004CFFD7    jmp         004CFFF4
 004CFFD9    call        004CEAB4
 004CFFDE    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004CFFE4    mov         ecx,200
 004CFFE9    mov         eax,dword ptr [ebp-8]
 004CFFEC    mov         ebx,dword ptr [eax]
 004CFFEE    call        dword ptr [ebx+10]
 004CFFF1    inc         dword ptr [ebp-10]
 004CFFF4    mov         eax,[0056E3F8];^gvar_0059BF4C
 004CFFF9    cmp         byte ptr [eax],0
>004CFFFC    jne         004D0011
 004CFFFE    movzx       eax,word ptr [ebp-12]
 004D0002    cmp         eax,dword ptr [ebp-10]
>004D0005    jl          004D0011
 004D0007    mov         eax,[0056E5A4];^gvar_0056DF04
 004D000C    cmp         byte ptr [eax],0
>004D000F    je          004CFFD9
 004D0011    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0016    cmp         byte ptr [eax],0
>004D0019    jne         004D0029
 004D001B    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0020    cmp         byte ptr [eax],0
>004D0023    jne         004D0029
 004D0025    mov         byte ptr [ebp-9],1
 004D0029    mov         eax,dword ptr [ebp-8]
 004D002C    mov         edx,dword ptr [eax]
 004D002E    call        dword ptr [edx]
 004D0030    cmp         edx,0
>004D0033    jne         004D003E
 004D0035    cmp         eax,0
>004D0038    jne         004D003E
 004D003A    mov         byte ptr [ebp-9],0
 004D003E    mov         al,byte ptr [ebp-9]
 004D0041    pop         ebx
 004D0042    mov         esp,ebp
 004D0044    pop         ebp
 004D0045    ret
end;*}

//004D0048
{*procedure sub_004D0048(?:?);
begin
 004D0048    push        ebp
 004D0049    mov         ebp,esp
 004D004B    push        ecx
 004D004C    mov         byte ptr [ebp-1],al
 004D004F    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0054    mov         byte ptr [eax],0
 004D0057    call        004CED2C
 004D005C    push        0
 004D005E    push        0
 004D0060    push        0
 004D0062    push        0
 004D0064    push        0
 004D0066    xor         ecx,ecx
 004D0068    mov         cl,byte ptr [ebp-1]
 004D006B    mov         dx,1
 004D006F    mov         ax,27
 004D0073    call        004CE5F4
 004D0078    pop         ecx
 004D0079    pop         ebp
 004D007A    ret
end;*}

//004D007C
{*function sub_004D007C(?:?; ?:?; ?:TMemoryStream):?;
begin
 004D007C    push        ebp
 004D007D    mov         ebp,esp
 004D007F    add         esp,0FFFFFFD8
 004D0082    push        ebx
 004D0083    mov         dword ptr [ebp-0C],ecx
 004D0086    mov         dword ptr [ebp-8],edx
 004D0089    mov         dword ptr [ebp-4],eax
 004D008C    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0091    mov         byte ptr [eax],0
 004D0094    mov         byte ptr [ebp-0D],0
 004D0098    xor         ecx,ecx
 004D009A    xor         edx,edx
 004D009C    mov         eax,dword ptr [ebp-0C]
 004D009F    mov         ebx,dword ptr [eax]
 004D00A1    call        dword ptr [ebx+14]
 004D00A4    mov         ax,word ptr [ebp-4]
 004D00A8    mov         word ptr [ebp-18],ax
 004D00AC    mov         eax,dword ptr [ebp-4]
 004D00AF    shr         eax,10
 004D00B2    mov         word ptr [ebp-1A],ax
 004D00B6    mov         ax,word ptr [ebp-8]
 004D00BA    mov         word ptr [ebp-1C],ax
 004D00BE    mov         eax,dword ptr [ebp-8]
 004D00C1    shr         eax,10
 004D00C4    mov         word ptr [ebp-1E],ax
 004D00C8    call        004CED2C
 004D00CD    mov         ax,word ptr [ebp-1A]
 004D00D1    push        eax
 004D00D2    mov         ax,word ptr [ebp-1C]
 004D00D6    push        eax
 004D00D7    mov         ax,word ptr [ebp-1E]
 004D00DB    push        eax
 004D00DC    push        0
 004D00DE    push        0
 004D00E0    mov         cx,word ptr [ebp-18]
 004D00E4    mov         dx,1
 004D00E8    mov         ax,24
 004D00EC    call        004CE5F4
 004D00F1    mov         word ptr [ebp-16],ax
 004D00F5    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D00FA    cmp         byte ptr [eax],0
>004D00FD    je          004D013E
 004D00FF    lea         eax,[ebp-22]
 004D0102    push        eax
 004D0103    lea         eax,[ebp-23]
 004D0106    push        eax
 004D0107    lea         eax,[ebp-24]
 004D010A    push        eax
 004D010B    lea         eax,[ebp-25]
 004D010E    push        eax
 004D010F    lea         ecx,[ebp-21]
 004D0112    lea         edx,[ebp-20]
 004D0115    lea         eax,[ebp-1F]
 004D0118    call        004CC194
 004D011D    xor         eax,eax
 004D011F    mov         al,byte ptr [ebp-21]
 004D0122    mov         [00571ED8],ax;gvar_00571ED8
 004D0128    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0130    xor         eax,eax
 004D0132    mov         al,byte ptr [ebp-20]
 004D0135    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D013C    jmp         004D017F
 004D013E    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0143    mov         ax,word ptr [eax]
 004D0146    add         ax,3
 004D014A    call        0055FE3C
 004D014F    and         eax,0FF
 004D0154    mov         [00571ED8],ax;gvar_00571ED8
 004D015A    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0162    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0167    mov         ax,word ptr [eax]
 004D016A    add         ax,2
 004D016E    call        0055FE3C
 004D0173    and         eax,0FF
 004D0178    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D017F    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0184    cmp         byte ptr [eax],0
>004D0187    jne         004D01CA
 004D0189    mov         eax,[0056E5A4];^gvar_0056DF04
 004D018E    cmp         byte ptr [eax],0
>004D0191    jne         004D01CA
 004D0193    mov         dword ptr [ebp-14],1
>004D019A    jmp         004D01B7
 004D019C    call        004CEAB4
 004D01A1    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D01A7    mov         ecx,200
 004D01AC    mov         eax,dword ptr [ebp-0C]
 004D01AF    mov         ebx,dword ptr [eax]
 004D01B1    call        dword ptr [ebx+10]
 004D01B4    inc         dword ptr [ebp-14]
 004D01B7    movzx       eax,word ptr [ebp-16]
 004D01BB    cmp         eax,dword ptr [ebp-14]
>004D01BE    jl          004D01CA
 004D01C0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D01C5    cmp         byte ptr [eax],0
>004D01C8    je          004D019C
 004D01CA    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D01CF    cmp         byte ptr [eax],0
>004D01D2    jne         004D01E2
 004D01D4    mov         eax,[0056E5A4];^gvar_0056DF04
 004D01D9    cmp         byte ptr [eax],0
>004D01DC    jne         004D01E2
 004D01DE    mov         byte ptr [ebp-0D],1
 004D01E2    mov         al,byte ptr [ebp-0D]
 004D01E5    pop         ebx
 004D01E6    mov         esp,ebp
 004D01E8    pop         ebp
 004D01E9    ret
end;*}

//004D01EC
{*function sub_004D01EC:?;
begin
 004D01EC    push        ebp
 004D01ED    mov         ebp,esp
 004D01EF    add         esp,0FFFFFFF8
 004D01F2    mov         eax,[0056E5A4];^gvar_0056DF04
 004D01F7    mov         byte ptr [eax],0
 004D01FA    mov         byte ptr [ebp-1],0
 004D01FE    call        004CED2C
 004D0203    push        0
 004D0205    push        0
 004D0207    push        0
 004D0209    push        0
 004D020B    push        0
 004D020D    xor         ecx,ecx
 004D020F    mov         dx,3
 004D0213    mov         ax,24
 004D0217    call        004CE5F4
 004D021C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D0221    cmp         byte ptr [eax],0
>004D0224    je          004D0265
 004D0226    lea         eax,[ebp-5]
 004D0229    push        eax
 004D022A    lea         eax,[ebp-6]
 004D022D    push        eax
 004D022E    lea         eax,[ebp-7]
 004D0231    push        eax
 004D0232    lea         eax,[ebp-8]
 004D0235    push        eax
 004D0236    lea         ecx,[ebp-4]
 004D0239    lea         edx,[ebp-3]
 004D023C    lea         eax,[ebp-2]
 004D023F    call        004CC194
 004D0244    xor         eax,eax
 004D0246    mov         al,byte ptr [ebp-4]
 004D0249    mov         [00571ED8],ax;gvar_00571ED8
 004D024F    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0257    xor         eax,eax
 004D0259    mov         al,byte ptr [ebp-3]
 004D025C    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D0263    jmp         004D02A6
 004D0265    mov         eax,[0056E1D4];^gvar_0056DF14
 004D026A    mov         ax,word ptr [eax]
 004D026D    add         ax,3
 004D0271    call        0055FE3C
 004D0276    and         eax,0FF
 004D027B    mov         [00571ED8],ax;gvar_00571ED8
 004D0281    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0289    mov         eax,[0056E1D4];^gvar_0056DF14
 004D028E    mov         ax,word ptr [eax]
 004D0291    add         ax,2
 004D0295    call        0055FE3C
 004D029A    and         eax,0FF
 004D029F    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D02A6    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D02AB    cmp         byte ptr [eax],0
>004D02AE    jne         004D02BE
 004D02B0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D02B5    cmp         byte ptr [eax],0
>004D02B8    jne         004D02BE
 004D02BA    mov         byte ptr [ebp-1],1
 004D02BE    mov         al,byte ptr [ebp-1]
 004D02C1    pop         ecx
 004D02C2    pop         ecx
 004D02C3    pop         ebp
 004D02C4    ret
end;*}

//004D02C8
{*function sub_004D02C8(?:?; ?:?; ?:TMemoryStream):?;
begin
 004D02C8    push        ebp
 004D02C9    mov         ebp,esp
 004D02CB    add         esp,0FFFFFFD8
 004D02CE    push        ebx
 004D02CF    mov         dword ptr [ebp-0C],ecx
 004D02D2    mov         dword ptr [ebp-8],edx
 004D02D5    mov         dword ptr [ebp-4],eax
 004D02D8    xor         ecx,ecx
 004D02DA    xor         edx,edx
 004D02DC    mov         eax,dword ptr [ebp-0C]
 004D02DF    mov         ebx,dword ptr [eax]
 004D02E1    call        dword ptr [ebx+14]
 004D02E4    mov         eax,[0056E5A4];^gvar_0056DF04
 004D02E9    mov         byte ptr [eax],0
 004D02EC    mov         byte ptr [ebp-0D],0
 004D02F0    mov         ax,word ptr [ebp-4]
 004D02F4    mov         word ptr [ebp-18],ax
 004D02F8    mov         eax,dword ptr [ebp-4]
 004D02FB    shr         eax,10
 004D02FE    mov         word ptr [ebp-1A],ax
 004D0302    mov         ax,word ptr [ebp-8]
 004D0306    mov         word ptr [ebp-1C],ax
 004D030A    mov         eax,dword ptr [ebp-8]
 004D030D    shr         eax,10
 004D0310    mov         word ptr [ebp-1E],ax
 004D0314    call        004CED2C
 004D0319    mov         ax,word ptr [ebp-1A]
 004D031D    push        eax
 004D031E    mov         ax,word ptr [ebp-1C]
 004D0322    push        eax
 004D0323    mov         ax,word ptr [ebp-1E]
 004D0327    push        eax
 004D0328    push        0
 004D032A    push        0
 004D032C    mov         cx,word ptr [ebp-18]
 004D0330    mov         dx,2
 004D0334    mov         ax,24
 004D0338    call        004CE5F4
 004D033D    mov         word ptr [ebp-16],ax
 004D0341    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D0346    cmp         byte ptr [eax],0
>004D0349    je          004D038A
 004D034B    lea         eax,[ebp-22]
 004D034E    push        eax
 004D034F    lea         eax,[ebp-23]
 004D0352    push        eax
 004D0353    lea         eax,[ebp-24]
 004D0356    push        eax
 004D0357    lea         eax,[ebp-25]
 004D035A    push        eax
 004D035B    lea         ecx,[ebp-21]
 004D035E    lea         edx,[ebp-20]
 004D0361    lea         eax,[ebp-1F]
 004D0364    call        004CC194
 004D0369    xor         eax,eax
 004D036B    mov         al,byte ptr [ebp-21]
 004D036E    mov         [00571ED8],ax;gvar_00571ED8
 004D0374    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D037C    xor         eax,eax
 004D037E    mov         al,byte ptr [ebp-20]
 004D0381    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D0388    jmp         004D03CB
 004D038A    mov         eax,[0056E1D4];^gvar_0056DF14
 004D038F    mov         ax,word ptr [eax]
 004D0392    add         ax,3
 004D0396    call        0055FE3C
 004D039B    and         eax,0FF
 004D03A0    mov         [00571ED8],ax;gvar_00571ED8
 004D03A6    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D03AE    mov         eax,[0056E1D4];^gvar_0056DF14
 004D03B3    mov         ax,word ptr [eax]
 004D03B6    add         ax,2
 004D03BA    call        0055FE3C
 004D03BF    and         eax,0FF
 004D03C4    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D03CB    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D03D0    cmp         byte ptr [eax],0
>004D03D3    jne         004D042E
 004D03D5    mov         eax,[0056E5A4];^gvar_0056DF04
 004D03DA    cmp         byte ptr [eax],0
>004D03DD    jne         004D042E
 004D03DF    mov         dword ptr [ebp-14],1
>004D03E6    jmp         004D0403
 004D03E8    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D03EE    mov         ecx,200
 004D03F3    mov         eax,dword ptr [ebp-0C]
 004D03F6    mov         ebx,dword ptr [eax]
 004D03F8    call        dword ptr [ebx+0C]
 004D03FB    call        004CEC08
 004D0400    inc         dword ptr [ebp-14]
 004D0403    movzx       eax,word ptr [ebp-16]
 004D0407    cmp         eax,dword ptr [ebp-14]
>004D040A    jl          004D0416
 004D040C    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0411    cmp         byte ptr [eax],0
>004D0414    je          004D03E8
 004D0416    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D041B    cmp         byte ptr [eax],0
>004D041E    jne         004D042E
 004D0420    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0425    cmp         byte ptr [eax],0
>004D0428    jne         004D042E
 004D042A    mov         byte ptr [ebp-0D],1
 004D042E    mov         al,byte ptr [ebp-0D]
 004D0431    pop         ebx
 004D0432    mov         esp,ebp
 004D0434    pop         ebp
 004D0435    ret
end;*}

//004D0438
{*function sub_004D0438(?:?; ?:?; ?:?; ?:?):?;
begin
 004D0438    push        ebp
 004D0439    mov         ebp,esp
 004D043B    add         esp,0FFFFFFD8
 004D043E    push        ebx
 004D043F    mov         dword ptr [ebp-0C],ecx
 004D0442    mov         dword ptr [ebp-8],edx
 004D0445    mov         word ptr [ebp-2],ax
 004D0449    xor         ecx,ecx
 004D044B    xor         edx,edx
 004D044D    mov         eax,dword ptr [ebp+8]
 004D0450    mov         ebx,dword ptr [eax]
 004D0452    call        dword ptr [ebx+14]
 004D0455    mov         eax,[0056E5A4];^gvar_0056DF04
 004D045A    mov         byte ptr [eax],0
 004D045D    mov         byte ptr [ebp-0D],0
 004D0461    mov         ax,word ptr [ebp-8]
 004D0465    mov         word ptr [ebp-18],ax
 004D0469    mov         eax,dword ptr [ebp-8]
 004D046C    shr         eax,10
 004D046F    mov         word ptr [ebp-1A],ax
 004D0473    mov         ax,word ptr [ebp-0C]
 004D0477    mov         word ptr [ebp-1C],ax
 004D047B    mov         eax,dword ptr [ebp-0C]
 004D047E    shr         eax,10
 004D0481    mov         word ptr [ebp-1E],ax
 004D0485    call        004CED2C
 004D048A    mov         ax,word ptr [ebp-1A]
 004D048E    push        eax
 004D048F    mov         ax,word ptr [ebp-1C]
 004D0493    push        eax
 004D0494    mov         ax,word ptr [ebp-1E]
 004D0498    push        eax
 004D0499    push        0
 004D049B    push        0
 004D049D    mov         dx,word ptr [ebp-2]
 004D04A1    add         edx,edx
 004D04A3    inc         edx
 004D04A4    mov         cx,word ptr [ebp-18]
 004D04A8    mov         ax,14
 004D04AC    call        004CE5F4
 004D04B1    mov         word ptr [ebp-16],ax
 004D04B5    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D04BA    cmp         byte ptr [eax],0
>004D04BD    je          004D04FE
 004D04BF    lea         eax,[ebp-22]
 004D04C2    push        eax
 004D04C3    lea         eax,[ebp-23]
 004D04C6    push        eax
 004D04C7    lea         eax,[ebp-24]
 004D04CA    push        eax
 004D04CB    lea         eax,[ebp-25]
 004D04CE    push        eax
 004D04CF    lea         ecx,[ebp-21]
 004D04D2    lea         edx,[ebp-20]
 004D04D5    lea         eax,[ebp-1F]
 004D04D8    call        004CC194
 004D04DD    xor         eax,eax
 004D04DF    mov         al,byte ptr [ebp-21]
 004D04E2    mov         [00571ED8],ax;gvar_00571ED8
 004D04E8    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D04F0    xor         eax,eax
 004D04F2    mov         al,byte ptr [ebp-20]
 004D04F5    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D04FC    jmp         004D053F
 004D04FE    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0503    mov         ax,word ptr [eax]
 004D0506    add         ax,3
 004D050A    call        0055FE3C
 004D050F    and         eax,0FF
 004D0514    mov         [00571ED8],ax;gvar_00571ED8
 004D051A    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0522    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0527    mov         ax,word ptr [eax]
 004D052A    add         ax,2
 004D052E    call        0055FE3C
 004D0533    and         eax,0FF
 004D0538    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D053F    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0544    cmp         byte ptr [eax],0
>004D0547    jne         004D05A2
 004D0549    mov         eax,[0056E5A4];^gvar_0056DF04
 004D054E    cmp         byte ptr [eax],0
>004D0551    jne         004D05A2
 004D0553    mov         dword ptr [ebp-14],1
>004D055A    jmp         004D0577
 004D055C    call        004CEAB4
 004D0561    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D0567    mov         ecx,200
 004D056C    mov         eax,dword ptr [ebp+8]
 004D056F    mov         ebx,dword ptr [eax]
 004D0571    call        dword ptr [ebx+10]
 004D0574    inc         dword ptr [ebp-14]
 004D0577    movzx       eax,word ptr [ebp-16]
 004D057B    cmp         eax,dword ptr [ebp-14]
>004D057E    jl          004D058A
 004D0580    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0585    cmp         byte ptr [eax],0
>004D0588    je          004D055C
 004D058A    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D058F    cmp         byte ptr [eax],0
>004D0592    jne         004D05A2
 004D0594    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0599    cmp         byte ptr [eax],0
>004D059C    jne         004D05A2
 004D059E    mov         byte ptr [ebp-0D],1
 004D05A2    mov         al,byte ptr [ebp-0D]
 004D05A5    pop         ebx
 004D05A6    mov         esp,ebp
 004D05A8    pop         ebp
 004D05A9    ret         4
end;*}

//004D05AC
{*function sub_004D05AC(?:?; ?:?; ?:?; ?:?):?;
begin
 004D05AC    push        ebp
 004D05AD    mov         ebp,esp
 004D05AF    add         esp,0FFFFFFD8
 004D05B2    push        ebx
 004D05B3    mov         dword ptr [ebp-0C],ecx
 004D05B6    mov         dword ptr [ebp-8],edx
 004D05B9    mov         word ptr [ebp-2],ax
 004D05BD    mov         eax,[0056E5A4];^gvar_0056DF04
 004D05C2    mov         byte ptr [eax],0
 004D05C5    mov         byte ptr [ebp-0D],0
 004D05C9    xor         ecx,ecx
 004D05CB    xor         edx,edx
 004D05CD    mov         eax,dword ptr [ebp+8]
 004D05D0    mov         ebx,dword ptr [eax]
 004D05D2    call        dword ptr [ebx+14]
 004D05D5    mov         ax,word ptr [ebp-8]
 004D05D9    mov         word ptr [ebp-18],ax
 004D05DD    mov         eax,dword ptr [ebp-8]
 004D05E0    shr         eax,10
 004D05E3    mov         word ptr [ebp-1A],ax
 004D05E7    mov         ax,word ptr [ebp-0C]
 004D05EB    mov         word ptr [ebp-1C],ax
 004D05EF    mov         eax,dword ptr [ebp-0C]
 004D05F2    shr         eax,10
 004D05F5    mov         word ptr [ebp-1E],ax
 004D05F9    call        004CED2C
 004D05FE    mov         ax,word ptr [ebp-1A]
 004D0602    push        eax
 004D0603    mov         ax,word ptr [ebp-1C]
 004D0607    push        eax
 004D0608    mov         ax,word ptr [ebp-1E]
 004D060C    push        eax
 004D060D    push        0
 004D060F    push        0
 004D0611    mov         dx,word ptr [ebp-2]
 004D0615    add         edx,edx
 004D0617    add         dx,2
 004D061B    mov         cx,word ptr [ebp-18]
 004D061F    mov         ax,14
 004D0623    call        004CE5F4
 004D0628    mov         word ptr [ebp-16],ax
 004D062C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D0631    cmp         byte ptr [eax],0
>004D0634    je          004D0675
 004D0636    lea         eax,[ebp-22]
 004D0639    push        eax
 004D063A    lea         eax,[ebp-23]
 004D063D    push        eax
 004D063E    lea         eax,[ebp-24]
 004D0641    push        eax
 004D0642    lea         eax,[ebp-25]
 004D0645    push        eax
 004D0646    lea         ecx,[ebp-21]
 004D0649    lea         edx,[ebp-20]
 004D064C    lea         eax,[ebp-1F]
 004D064F    call        004CC194
 004D0654    xor         eax,eax
 004D0656    mov         al,byte ptr [ebp-21]
 004D0659    mov         [00571ED8],ax;gvar_00571ED8
 004D065F    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0667    xor         eax,eax
 004D0669    mov         al,byte ptr [ebp-20]
 004D066C    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D0673    jmp         004D06B6
 004D0675    mov         eax,[0056E1D4];^gvar_0056DF14
 004D067A    mov         ax,word ptr [eax]
 004D067D    add         ax,3
 004D0681    call        0055FE3C
 004D0686    and         eax,0FF
 004D068B    mov         [00571ED8],ax;gvar_00571ED8
 004D0691    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0699    mov         eax,[0056E1D4];^gvar_0056DF14
 004D069E    mov         ax,word ptr [eax]
 004D06A1    add         ax,2
 004D06A5    call        0055FE3C
 004D06AA    and         eax,0FF
 004D06AF    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D06B6    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D06BB    cmp         byte ptr [eax],0
>004D06BE    jne         004D071E
 004D06C0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D06C5    cmp         byte ptr [eax],0
>004D06C8    jne         004D071E
 004D06CA    mov         dword ptr [ebp-14],1
>004D06D1    jmp         004D06EE
 004D06D3    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D06D9    mov         ecx,200
 004D06DE    mov         eax,dword ptr [ebp+8]
 004D06E1    mov         ebx,dword ptr [eax]
 004D06E3    call        dword ptr [ebx+0C]
 004D06E6    call        004CEC08
 004D06EB    inc         dword ptr [ebp-14]
 004D06EE    movzx       eax,word ptr [ebp-16]
 004D06F2    cmp         eax,dword ptr [ebp-14]
>004D06F5    jl          004D0701
 004D06F7    mov         eax,[0056E5A4];^gvar_0056DF04
 004D06FC    cmp         byte ptr [eax],0
>004D06FF    je          004D06D3
 004D0701    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0706    cmp         byte ptr [eax],0
>004D0709    jne         004D0715
 004D070B    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0710    cmp         byte ptr [eax],0
>004D0713    je          004D0719
 004D0715    xor         eax,eax
>004D0717    jmp         004D071B
 004D0719    mov         al,1
 004D071B    mov         byte ptr [ebp-0D],al
 004D071E    mov         al,byte ptr [ebp-0D]
 004D0721    pop         ebx
 004D0722    mov         esp,ebp
 004D0724    pop         ebp
 004D0725    ret         4
end;*}

//004D0728
{*function sub_004D0728:?;
begin
 004D0728    push        ebp
 004D0729    mov         ebp,esp
 004D072B    push        ecx
 004D072C    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0731    mov         byte ptr [eax],0
 004D0734    mov         byte ptr [ebp-1],0
 004D0738    call        004CED2C
 004D073D    push        13
 004D073F    push        0
 004D0741    push        0
 004D0743    push        0
 004D0745    push        0
 004D0747    mov         cx,2
 004D074B    mov         dx,1
 004D074F    mov         ax,2A
 004D0753    call        004CE5F4
 004D0758    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D075D    cmp         byte ptr [eax],0
>004D0760    jne         004D07E1
 004D0762    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0767    cmp         byte ptr [eax],0
>004D076A    jne         004D07E1
 004D076C    call        004CEAB4
 004D0771    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0776    cmp         byte ptr [eax],0
>004D0779    jne         004D07E1
 004D077B    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0780    cmp         byte ptr [eax],0
>004D0783    jne         004D07E1
 004D0785    call        004CED2C
 004D078A    push        13
 004D078C    push        0
 004D078E    push        0
 004D0790    push        0
 004D0792    push        0
 004D0794    mov         cx,2
 004D0798    mov         dx,2
 004D079C    mov         ax,2A
 004D07A0    call        004CE5F4
 004D07A5    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D07AA    cmp         byte ptr [eax],0
>004D07AD    jne         004D07C9
 004D07AF    mov         eax,[0056E5A4];^gvar_0056DF04
 004D07B4    cmp         byte ptr [eax],0
>004D07B7    jne         004D07C9
 004D07B9    mov         eax,[0056E344];^gvar_0059BF5C
 004D07BE    mov         word ptr [eax+2],3
 004D07C4    call        004CEC08
 004D07C9    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D07CE    cmp         byte ptr [eax],0
>004D07D1    jne         004D07E1
 004D07D3    mov         eax,[0056E5A4];^gvar_0056DF04
 004D07D8    cmp         byte ptr [eax],0
>004D07DB    jne         004D07E1
 004D07DD    mov         byte ptr [ebp-1],1
 004D07E1    mov         al,byte ptr [ebp-1]
 004D07E4    pop         ecx
 004D07E5    pop         ebp
 004D07E6    ret
end;*}

//004D07E8
{*function sub_004D07E8(?:?):?;
begin
 004D07E8    push        ebp
 004D07E9    mov         ebp,esp
 004D07EB    add         esp,0FFFFFFF4
 004D07EE    mov         dword ptr [ebp-4],eax
 004D07F1    mov         eax,[0056E5A4];^gvar_0056DF04
 004D07F6    mov         byte ptr [eax],0
 004D07F9    mov         byte ptr [ebp-5],0
 004D07FD    call        004CED2C
 004D0802    mov         ax,word ptr [ebp-4]
 004D0806    and         ax,0FFFF
 004D080A    mov         word ptr [ebp-0A],ax
 004D080E    mov         eax,dword ptr [ebp-4]
 004D0811    shr         eax,10
 004D0814    mov         word ptr [ebp-8],ax
 004D0818    mov         ax,word ptr [ebp-0A]
 004D081C    push        eax
 004D081D    mov         ax,word ptr [ebp-8]
 004D0821    push        eax
 004D0822    push        0
 004D0824    push        0
 004D0826    push        0
 004D0828    mov         cx,16
 004D082C    mov         dx,1
 004D0830    mov         ax,0E
 004D0834    call        004CE5F4
 004D0839    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D083E    cmp         byte ptr [eax],0
>004D0841    jne         004D0851
 004D0843    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0848    cmp         byte ptr [eax],0
>004D084B    jne         004D0851
 004D084D    mov         byte ptr [ebp-5],1
 004D0851    mov         al,byte ptr [ebp-5]
 004D0854    mov         esp,ebp
 004D0856    pop         ebp
 004D0857    ret
end;*}

//004D0858
{*function sub_004D0858:?;
begin
 004D0858    push        ebp
 004D0859    mov         ebp,esp
 004D085B    add         esp,0FFFFFFF8
 004D085E    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0863    mov         byte ptr [eax],0
 004D0866    mov         byte ptr [ebp-1],0
 004D086A    call        004CED2C
 004D086F    call        004CE5B0
 004D0874    mov         word ptr ds:[571EC0],19;gvar_00571EC0
 004D087D    mov         word ptr ds:[571EC2],4;gvar_00571EC2
 004D0886    mov         word ptr ds:[571EC4],0D2;gvar_00571EC4
 004D088F    mov         word ptr ds:[571EC6],1;gvar_00571EC6
 004D0898    mov         word ptr ds:[571F0C],0FFFF;gvar_00571F0C
 004D08A1    mov         word ptr ds:[571F0E],0FFFF;gvar_00571F0E
 004D08AA    mov         word ptr ds:[571F10],0FFFF;gvar_00571F10
 004D08B3    mov         word ptr ds:[571F1E],4;gvar_00571F1E
 004D08BC    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D08C1    cmp         byte ptr [eax],0
>004D08C4    je          004D0929
 004D08C6    push        0BE
 004D08CB    push        4F
 004D08CD    push        0C2
 004D08D2    push        0A0
 004D08D7    push        0B0
 004D08DC    mov         eax,571EC0;gvar_00571EC0
 004D08E1    mov         cl,1
 004D08E3    mov         dl,0D6
 004D08E5    call        004CC128
 004D08EA    lea         eax,[ebp-5]
 004D08ED    push        eax
 004D08EE    lea         eax,[ebp-6]
 004D08F1    push        eax
 004D08F2    lea         eax,[ebp-7]
 004D08F5    push        eax
 004D08F6    lea         eax,[ebp-8]
 004D08F9    push        eax
 004D08FA    lea         ecx,[ebp-4]
 004D08FD    lea         edx,[ebp-3]
 004D0900    lea         eax,[ebp-2]
 004D0903    call        004CC194
 004D0908    xor         eax,eax
 004D090A    mov         al,byte ptr [ebp-4]
 004D090D    mov         [00571ED8],ax;gvar_00571ED8
 004D0913    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D091B    xor         eax,eax
 004D091D    mov         al,byte ptr [ebp-3]
 004D0920    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D0927    jmp         004D09A1
 004D0929    push        4F
 004D092B    push        0C2
 004D0930    push        0A0
 004D0935    push        0B0
 004D093A    mov         cl,0BE
 004D093C    mov         dl,1
 004D093E    mov         al,0D6
 004D0940    call        0055FFC4
 004D0945    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004D094A    cmp         byte ptr [eax],0
>004D094D    je          004D0956
 004D094F    call        005600F0
>004D0954    jmp         004D095B
 004D0956    call        00560080
 004D095B    call        004CE5C4
 004D0960    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0965    mov         ax,word ptr [eax]
 004D0968    add         ax,3
 004D096C    call        0055FE3C
 004D0971    and         eax,0FF
 004D0976    mov         [00571ED8],ax;gvar_00571ED8
 004D097C    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D0984    mov         eax,[0056E1D4];^gvar_0056DF14
 004D0989    mov         ax,word ptr [eax]
 004D098C    add         ax,2
 004D0990    call        0055FE3C
 004D0995    and         eax,0FF
 004D099A    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D09A1    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D09A6    cmp         byte ptr [eax],0
>004D09A9    jne         004D09B9
 004D09AB    mov         eax,[0056E5A4];^gvar_0056DF04
 004D09B0    cmp         byte ptr [eax],0
>004D09B3    jne         004D09B9
 004D09B5    mov         byte ptr [ebp-1],1
 004D09B9    mov         al,byte ptr [ebp-1]
 004D09BC    pop         ecx
 004D09BD    pop         ecx
 004D09BE    pop         ebp
 004D09BF    ret
end;*}

//004D09C0
{*function sub_004D09C0(?:?):?;
begin
 004D09C0    push        ebp
 004D09C1    mov         ebp,esp
 004D09C3    push        ecx
 004D09C4    mov         word ptr [ebp-2],ax
 004D09C8    mov         eax,[0056E5A4];^gvar_0056DF04
 004D09CD    mov         byte ptr [eax],0
 004D09D0    mov         byte ptr [ebp-3],0
 004D09D4    call        004CED2C
 004D09D9    push        1
 004D09DB    push        0
 004D09DD    push        0
 004D09DF    push        0
 004D09E1    push        0
 004D09E3    mov         cx,1
 004D09E7    mov         dx,1
 004D09EB    mov         ax,0E
 004D09EF    call        004CE5F4
 004D09F4    push        1
 004D09F6    push        0
 004D09F8    push        0
 004D09FA    push        0
 004D09FC    push        0
 004D09FE    mov         cx,0B
 004D0A02    mov         dx,1
 004D0A06    mov         ax,0E
 004D0A0A    call        004CE5F4
 004D0A0F    mov         ax,word ptr [ebp-2]
 004D0A13    push        eax
 004D0A14    push        0
 004D0A16    push        0
 004D0A18    push        0
 004D0A1A    push        0
 004D0A1C    mov         cx,12
 004D0A20    mov         dx,1
 004D0A24    mov         ax,0E
 004D0A28    call        004CE5F4
 004D0A2D    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0A32    cmp         byte ptr [eax],0
>004D0A35    jne         004D0A41
 004D0A37    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0A3C    cmp         byte ptr [eax],0
>004D0A3F    je          004D0A45
 004D0A41    xor         eax,eax
>004D0A43    jmp         004D0A47
 004D0A45    mov         al,1
 004D0A47    mov         byte ptr [ebp-3],al
 004D0A4A    mov         al,byte ptr [ebp-3]
 004D0A4D    pop         ecx
 004D0A4E    pop         ebp
 004D0A4F    ret
end;*}

//004D0A50
{*function sub_004D0A50(?:?; ?:?):?;
begin
 004D0A50    push        ebp
 004D0A51    mov         ebp,esp
 004D0A53    add         esp,0FFFFFFF8
 004D0A56    mov         word ptr [ebp-4],dx
 004D0A5A    mov         word ptr [ebp-2],ax
 004D0A5E    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0A63    mov         byte ptr [eax],0
 004D0A66    mov         byte ptr [ebp-5],0
 004D0A6A    call        004CED2C
 004D0A6F    mov         ax,word ptr [ebp-4]
 004D0A73    push        eax
 004D0A74    push        0
 004D0A76    push        0
 004D0A78    push        0
 004D0A7A    push        0
 004D0A7C    mov         cx,word ptr [ebp-2]
 004D0A80    mov         dx,1
 004D0A84    mov         ax,2D
 004D0A88    call        004CE5F4
 004D0A8D    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0A92    cmp         byte ptr [eax],0
>004D0A95    jne         004D0AA1
 004D0A97    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0A9C    cmp         byte ptr [eax],0
>004D0A9F    je          004D0AA5
 004D0AA1    xor         eax,eax
>004D0AA3    jmp         004D0AA7
 004D0AA5    mov         al,1
 004D0AA7    mov         byte ptr [ebp-5],al
 004D0AAA    mov         al,byte ptr [ebp-5]
 004D0AAD    pop         ecx
 004D0AAE    pop         ecx
 004D0AAF    pop         ebp
 004D0AB0    ret
end;*}

//004D0AB4
{*procedure sub_004D0AB4(?:?; ?:?; ?:?; ?:?);
begin
 004D0AB4    push        ebp
 004D0AB5    mov         ebp,esp
 004D0AB7    add         esp,0FFFFFDF0
 004D0ABD    mov         dword ptr [ebp-20C],ecx
 004D0AC3    mov         dword ptr [ebp-208],edx
 004D0AC9    mov         dword ptr [ebp-204],eax
 004D0ACF    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0AD4    mov         byte ptr [eax],0
 004D0AD7    mov         eax,dword ptr [ebp-208]
 004D0ADD    xor         edx,edx
 004D0ADF    mov         dword ptr [eax],edx
 004D0AE1    mov         eax,dword ptr [ebp-20C]
 004D0AE7    mov         word ptr [eax],0
 004D0AEC    mov         eax,dword ptr [ebp+8]
 004D0AEF    mov         word ptr [eax],0
 004D0AF4    call        004CED2C
 004D0AF9    mov         ax,word ptr [ebp-204]
 004D0B00    and         ax,0FFFF
 004D0B04    mov         word ptr [ebp-210],ax
 004D0B0B    mov         eax,dword ptr [ebp-204]
 004D0B11    shr         eax,10
 004D0B14    mov         word ptr [ebp-20E],ax
 004D0B1B    mov         ax,word ptr [ebp-20E]
 004D0B22    push        eax
 004D0B23    push        0
 004D0B25    push        0
 004D0B27    push        0
 004D0B29    push        0
 004D0B2B    mov         cx,word ptr [ebp-210]
 004D0B32    mov         dx,1
 004D0B36    mov         ax,33
 004D0B3A    call        004CE5F4
 004D0B3F    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0B44    cmp         byte ptr [eax],0
>004D0B47    jne         004D0C23
 004D0B4D    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0B52    cmp         byte ptr [eax],0
>004D0B55    jne         004D0C23
 004D0B5B    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D0B60    cmp         byte ptr [eax],0
>004D0B63    je          004D0B8F
 004D0B65    push        0BF
 004D0B6A    push        4F
 004D0B6C    push        0C2
 004D0B71    push        0A0
 004D0B76    push        0B0
 004D0B7B    lea         eax,[ebp-200]
 004D0B81    mov         cl,1
 004D0B83    mov         dl,0D5
 004D0B85    call        004CC0B8
>004D0B8A    jmp         004D0C23
 004D0B8F    push        4F
 004D0B91    push        0C2
 004D0B96    push        0A0
 004D0B9B    push        0B0
 004D0BA0    mov         cl,0BF
 004D0BA2    mov         dl,1
 004D0BA4    mov         al,0D5
 004D0BA6    call        0055FFC4
 004D0BAB    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004D0BB0    cmp         byte ptr [eax],0
>004D0BB3    je          004D0BBC
 004D0BB5    call        005600F0
>004D0BBA    jmp         004D0BC1
 004D0BBC    call        00560080
 004D0BC1    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0BC6    cmp         byte ptr [eax],0
>004D0BC9    jne         004D0BF8
 004D0BCB    push        edi
 004D0BCC    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 004D0BD3    mov         ecx,100
 004D0BD8    lea         edi,[ebp-200]
 004D0BDE    rep ins     word ptr [edi],dl
 004D0BE1    pop         edi
 004D0BE2    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004D0BE7    cmp         byte ptr [eax],0
>004D0BEA    je          004D0BF3
 004D0BEC    call        005600F0
>004D0BF1    jmp         004D0BF8
 004D0BF3    call        00560080
 004D0BF8    mov         eax,dword ptr [ebp-208]
 004D0BFE    mov         edx,dword ptr [ebp-1FC]
 004D0C04    mov         dword ptr [eax],edx
 004D0C06    mov         eax,dword ptr [ebp-20C]
 004D0C0C    mov         dx,word ptr [ebp-1F6]
 004D0C13    mov         word ptr [eax],dx
 004D0C16    mov         eax,dword ptr [ebp+8]
 004D0C19    mov         dx,word ptr [ebp-1F8]
 004D0C20    mov         word ptr [eax],dx
 004D0C23    mov         esp,ebp
 004D0C25    pop         ebp
 004D0C26    ret         4
end;*}

//004D0C2C
{*procedure sub_004D0C2C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D0C2C    push        ebp
 004D0C2D    mov         ebp,esp
 004D0C2F    add         esp,0FFFFFDEC
 004D0C35    mov         dword ptr [ebp-20C],ecx
 004D0C3B    mov         dword ptr [ebp-208],edx
 004D0C41    mov         dword ptr [ebp-204],eax
 004D0C47    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0C4C    mov         byte ptr [eax],0
 004D0C4F    mov         eax,dword ptr [ebp-204]
 004D0C55    xor         edx,edx
 004D0C57    mov         dword ptr [eax],edx
 004D0C59    mov         eax,dword ptr [ebp-208]
 004D0C5F    mov         word ptr [eax],0
 004D0C64    mov         eax,dword ptr [ebp-20C]
 004D0C6A    mov         word ptr [eax],0
 004D0C6F    mov         ax,word ptr [ebp+10]
 004D0C73    and         ax,0FFFF
 004D0C77    mov         word ptr [ebp-212],ax
 004D0C7E    mov         eax,dword ptr [ebp+10]
 004D0C81    mov         edx,dword ptr [ebp+14]
 004D0C84    shrd        eax,edx,10
 004D0C88    shr         edx,10
 004D0C8B    mov         word ptr [ebp-210],ax
 004D0C92    mov         eax,dword ptr [ebp+14]
 004D0C95    xor         edx,edx
 004D0C97    mov         word ptr [ebp-20E],ax
 004D0C9E    mov         ax,word ptr [ebp-20E]
 004D0CA5    push        eax
 004D0CA6    push        0
 004D0CA8    push        0
 004D0CAA    push        0
 004D0CAC    push        0
 004D0CAE    mov         cx,word ptr [ebp-210]
 004D0CB5    mov         dx,word ptr [ebp-212]
 004D0CBC    mov         ax,15
 004D0CC0    call        004CE5F4
 004D0CC5    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0CCA    cmp         byte ptr [eax],0
>004D0CCD    jne         004D0E16
 004D0CD3    mov         eax,[0056E5A4];^gvar_0056DF04
 004D0CD8    cmp         byte ptr [eax],0
>004D0CDB    jne         004D0E16
 004D0CE1    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D0CE6    cmp         byte ptr [eax],0
>004D0CE9    je          004D0D65
 004D0CEB    push        0BF
 004D0CF0    push        4F
 004D0CF2    push        0C2
 004D0CF7    push        0A0
 004D0CFC    push        0B0
 004D0D01    lea         eax,[ebp-200]
 004D0D07    mov         cl,1
 004D0D09    mov         dl,0D5
 004D0D0B    call        004CC0B8
 004D0D10    test        al,al
>004D0D12    je          004D0E16
 004D0D18    mov         eax,dword ptr [ebp-204]
 004D0D1E    mov         edx,dword ptr [ebp-1FC]
 004D0D24    mov         dword ptr [eax],edx
 004D0D26    mov         eax,dword ptr [ebp-208]
 004D0D2C    mov         dx,word ptr [ebp-1F6]
 004D0D33    mov         word ptr [eax],dx
 004D0D36    mov         eax,dword ptr [ebp-20C]
 004D0D3C    mov         dx,word ptr [ebp-1F8]
 004D0D43    mov         word ptr [eax],dx
 004D0D46    mov         eax,dword ptr [ebp+0C]
 004D0D49    mov         dx,word ptr [ebp-1FE]
 004D0D50    mov         word ptr [eax],dx
 004D0D53    mov         eax,dword ptr [ebp+8]
 004D0D56    mov         dx,word ptr [ebp-1F2]
 004D0D5D    mov         word ptr [eax],dx
>004D0D60    jmp         004D0E16
 004D0D65    push        4F
 004D0D67    push        0C2
 004D0D6C    push        0A0
 004D0D71    push        0B0
 004D0D76    mov         cl,0BF
 004D0D78    mov         dl,1
 004D0D7A    mov         al,0D5
 004D0D7C    call        0055FFC4
 004D0D81    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004D0D86    cmp         byte ptr [eax],0
>004D0D89    je          004D0D92
 004D0D8B    call        005600F0
>004D0D90    jmp         004D0D97
 004D0D92    call        00560080
 004D0D97    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D0D9C    cmp         byte ptr [eax],0
>004D0D9F    jne         004D0E16
 004D0DA1    push        edi
 004D0DA2    movzx       edx,word ptr ds:[56DF14];0xC08B0170 gvar_0056DF14
 004D0DA9    mov         ecx,100
 004D0DAE    lea         edi,[ebp-200]
 004D0DB4    rep ins     word ptr [edi],dl
 004D0DB7    pop         edi
 004D0DB8    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 004D0DBD    cmp         byte ptr [eax],0
>004D0DC0    je          004D0DC9
 004D0DC2    call        005600F0
>004D0DC7    jmp         004D0DCE
 004D0DC9    call        00560080
 004D0DCE    mov         eax,dword ptr [ebp-204]
 004D0DD4    mov         edx,dword ptr [ebp-1FC]
 004D0DDA    mov         dword ptr [eax],edx
 004D0DDC    mov         eax,dword ptr [ebp-208]
 004D0DE2    mov         dx,word ptr [ebp-1F6]
 004D0DE9    mov         word ptr [eax],dx
 004D0DEC    mov         eax,dword ptr [ebp-20C]
 004D0DF2    mov         dx,word ptr [ebp-1F8]
 004D0DF9    mov         word ptr [eax],dx
 004D0DFC    mov         eax,dword ptr [ebp+0C]
 004D0DFF    mov         dx,word ptr [ebp-1FE]
 004D0E06    mov         word ptr [eax],dx
 004D0E09    mov         eax,dword ptr [ebp+8]
 004D0E0C    mov         dx,word ptr [ebp-1F2]
 004D0E13    mov         word ptr [eax],dx
 004D0E16    mov         esp,ebp
 004D0E18    pop         ebp
 004D0E19    ret         10
end;*}

//004D0E1C
{*procedure sub_004D0E1C(?:?; ?:?);
begin
 004D0E1C    push        ebp
 004D0E1D    mov         ebp,esp
 004D0E1F    add         esp,0FFFFFFF4
 004D0E22    xor         ecx,ecx
 004D0E24    mov         dword ptr [ebp-0C],ecx
 004D0E27    mov         dword ptr [ebp-8],edx
 004D0E2A    mov         word ptr [ebp-2],ax
 004D0E2E    xor         eax,eax
 004D0E30    push        ebp
 004D0E31    push        4D0F7F
 004D0E36    push        dword ptr fs:[eax]
 004D0E39    mov         dword ptr fs:[eax],esp
 004D0E3C    lea         eax,[ebp-0C]
 004D0E3F    call        @LStrClr
 004D0E44    mov         ax,word ptr [ebp-2]
 004D0E48    and         ax,1
 004D0E4C    cmp         ax,1
>004D0E50    jne         004D0E61
 004D0E52    lea         eax,[ebp-0C]
 004D0E55    mov         edx,4D0F94;' Whole sector'
 004D0E5A    call        @LStrCat
>004D0E5F    jmp         004D0E6E
 004D0E61    lea         eax,[ebp-0C]
 004D0E64    mov         edx,4D0FAC;' Split sector'
 004D0E69    call        @LStrCat
 004D0E6E    mov         ax,word ptr [ebp-2]
 004D0E72    and         ax,2
 004D0E76    cmp         ax,2
>004D0E7A    jne         004D0E9C
 004D0E7C    mov         ax,word ptr [ebp-2]
 004D0E80    and         ax,4
 004D0E84    cmp         ax,4
>004D0E88    jne         004D0E9C
 004D0E8A    lea         eax,[ebp-0C]
 004D0E8D    mov         edx,4D0FC4;', Relocated Tare'
 004D0E92    call        @LStrCat
>004D0E97    jmp         004D0F28
 004D0E9C    mov         ax,word ptr [ebp-2]
 004D0EA0    and         ax,2
 004D0EA4    cmp         ax,2
>004D0EA8    jne         004D0EC7
 004D0EAA    mov         ax,word ptr [ebp-2]
 004D0EAE    and         ax,8
 004D0EB2    cmp         ax,8
>004D0EB6    jne         004D0EC7
 004D0EB8    lea         eax,[ebp-0C]
 004D0EBB    mov         edx,4D0FE0;', Relocated FTare'
 004D0EC0    call        @LStrCat
>004D0EC5    jmp         004D0F28
 004D0EC7    mov         ax,word ptr [ebp-2]
 004D0ECB    and         ax,2
 004D0ECF    cmp         ax,2
>004D0ED3    jne         004D0EE4
 004D0ED5    lea         eax,[ebp-0C]
 004D0ED8    mov         edx,4D0FFC;', Relocated Sector'
 004D0EDD    call        @LStrCat
>004D0EE2    jmp         004D0F28
 004D0EE4    mov         ax,word ptr [ebp-2]
 004D0EE8    and         ax,4
 004D0EEC    cmp         ax,4
>004D0EF0    jne         004D0F01
 004D0EF2    lea         eax,[ebp-0C]
 004D0EF5    mov         edx,4D1018;', Tare'
 004D0EFA    call        @LStrCat
>004D0EFF    jmp         004D0F28
 004D0F01    mov         ax,word ptr [ebp-2]
 004D0F05    and         ax,8
 004D0F09    cmp         ax,8
>004D0F0D    jne         004D0F1E
 004D0F0F    lea         eax,[ebp-0C]
 004D0F12    mov         edx,4D1028;', FTare'
 004D0F17    call        @LStrCat
>004D0F1C    jmp         004D0F28
 004D0F1E    lea         eax,[ebp-0C]
 004D0F21    xor         edx,edx
 004D0F23    call        @LStrCat
 004D0F28    mov         ax,word ptr [ebp-2]
 004D0F2C    and         ax,10
 004D0F30    cmp         ax,10
>004D0F34    jne         004D0F43
 004D0F36    lea         eax,[ebp-0C]
 004D0F39    mov         edx,4D1038;' - UNUSED. (is between Format LBA and first spare )'
 004D0F3E    call        @LStrCat
 004D0F43    mov         ax,word ptr [ebp-2]
 004D0F47    and         ax,20
 004D0F4B    cmp         ax,20
>004D0F4F    jne         004D0F5E
 004D0F51    lea         eax,[ebp-0C]
 004D0F54    mov         edx,4D1074;' - is in SPARE POOL.'
 004D0F59    call        @LStrCat
 004D0F5E    mov         eax,dword ptr [ebp-8]
 004D0F61    mov         edx,dword ptr [ebp-0C]
 004D0F64    call        @LStrAsg
 004D0F69    xor         eax,eax
 004D0F6B    pop         edx
 004D0F6C    pop         ecx
 004D0F6D    pop         ecx
 004D0F6E    mov         dword ptr fs:[eax],edx
 004D0F71    push        4D0F86
 004D0F76    lea         eax,[ebp-0C]
 004D0F79    call        @LStrClr
 004D0F7E    ret
>004D0F7F    jmp         @HandleFinally
>004D0F84    jmp         004D0F76
 004D0F86    mov         esp,ebp
 004D0F88    pop         ebp
 004D0F89    ret
end;*}

//004D108C
{*function sub_004D108C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D108C    push        ebp
 004D108D    mov         ebp,esp
 004D108F    add         esp,0FFFFFFE8
 004D1092    push        ebx
 004D1093    mov         word ptr [ebp-6],cx
 004D1097    mov         word ptr [ebp-4],dx
 004D109B    mov         word ptr [ebp-2],ax
 004D109F    mov         eax,[0056E5A4];^gvar_0056DF04
 004D10A4    mov         byte ptr [eax],0
 004D10A7    mov         byte ptr [ebp-7],0
 004D10AB    xor         ecx,ecx
 004D10AD    xor         edx,edx
 004D10AF    mov         eax,dword ptr [ebp+8]
 004D10B2    mov         ebx,dword ptr [eax]
 004D10B4    call        dword ptr [ebx+14]
 004D10B7    call        004CED2C
 004D10BC    mov         ax,word ptr [ebp-4]
 004D10C0    push        eax
 004D10C1    mov         ax,word ptr [ebp-6]
 004D10C5    push        eax
 004D10C6    push        0
 004D10C8    push        0
 004D10CA    push        0
 004D10CC    mov         cx,word ptr [ebp-2]
 004D10D0    mov         dx,word ptr [ebp+0C]
 004D10D4    mov         ax,0B
 004D10D8    call        004CE5F4
 004D10DD    mov         word ptr [ebp-0E],ax
 004D10E1    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D10E6    cmp         byte ptr [eax],0
>004D10E9    je          004D114E
 004D10EB    push        0BE
 004D10F0    push        4F
 004D10F2    push        0C2
 004D10F7    push        0A0
 004D10FC    push        0B0
 004D1101    mov         eax,571EC0;gvar_00571EC0
 004D1106    mov         cl,1
 004D1108    mov         dl,0D6
 004D110A    call        004CC128
 004D110F    lea         eax,[ebp-12]
 004D1112    push        eax
 004D1113    lea         eax,[ebp-13]
 004D1116    push        eax
 004D1117    lea         eax,[ebp-14]
 004D111A    push        eax
 004D111B    lea         eax,[ebp-15]
 004D111E    push        eax
 004D111F    lea         ecx,[ebp-11]
 004D1122    lea         edx,[ebp-10]
 004D1125    lea         eax,[ebp-0F]
 004D1128    call        004CC194
 004D112D    xor         eax,eax
 004D112F    mov         al,byte ptr [ebp-11]
 004D1132    mov         [00571ED8],ax;gvar_00571ED8
 004D1138    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D1140    xor         eax,eax
 004D1142    mov         al,byte ptr [ebp-10]
 004D1145    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D114C    jmp         004D118F
 004D114E    mov         eax,[0056E1D4];^gvar_0056DF14
 004D1153    mov         ax,word ptr [eax]
 004D1156    add         ax,3
 004D115A    call        0055FE3C
 004D115F    and         eax,0FF
 004D1164    mov         [00571ED8],ax;gvar_00571ED8
 004D116A    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D1172    mov         eax,[0056E1D4];^gvar_0056DF14
 004D1177    mov         ax,word ptr [eax]
 004D117A    add         ax,2
 004D117E    call        0055FE3C
 004D1183    and         eax,0FF
 004D1188    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D118F    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1194    cmp         byte ptr [eax],0
>004D1197    jne         004D11F7
 004D1199    mov         eax,[0056E5A4];^gvar_0056DF04
 004D119E    cmp         byte ptr [eax],0
>004D11A1    jne         004D11F7
 004D11A3    mov         dword ptr [ebp-0C],1
>004D11AA    jmp         004D11C7
 004D11AC    call        004CEAB4
 004D11B1    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D11B7    mov         ecx,200
 004D11BC    mov         eax,dword ptr [ebp+8]
 004D11BF    call        TStream.WriteBuffer
 004D11C4    inc         dword ptr [ebp-0C]
 004D11C7    movzx       eax,word ptr [ebp-0E]
 004D11CB    cmp         eax,dword ptr [ebp-0C]
>004D11CE    jl          004D11DA
 004D11D0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D11D5    cmp         byte ptr [eax],0
>004D11D8    je          004D11AC
 004D11DA    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D11DF    cmp         byte ptr [eax],0
>004D11E2    jne         004D11EE
 004D11E4    mov         eax,[0056E5A4];^gvar_0056DF04
 004D11E9    cmp         byte ptr [eax],0
>004D11EC    je          004D11F2
 004D11EE    xor         eax,eax
>004D11F0    jmp         004D11F4
 004D11F2    mov         al,1
 004D11F4    mov         byte ptr [ebp-7],al
 004D11F7    mov         al,byte ptr [ebp-7]
 004D11FA    pop         ebx
 004D11FB    mov         esp,ebp
 004D11FD    pop         ebp
 004D11FE    ret         8
end;*}

//004D1204
{*function sub_004D1204(?:?; ?:?; ?:TMemoryStream):?;
begin
 004D1204    push        ebp
 004D1205    mov         ebp,esp
 004D1207    add         esp,0FFFFFFD8
 004D120A    push        ebx
 004D120B    mov         dword ptr [ebp-0C],ecx
 004D120E    mov         dword ptr [ebp-8],edx
 004D1211    mov         dword ptr [ebp-4],eax
 004D1214    mov         eax,[0056E344];^gvar_0059BF5C
 004D1219    xor         ecx,ecx
 004D121B    mov         edx,3000
 004D1220    call        @FillChar
 004D1225    xor         ecx,ecx
 004D1227    xor         edx,edx
 004D1229    mov         eax,dword ptr [ebp-0C]
 004D122C    mov         ebx,dword ptr [eax]
 004D122E    call        dword ptr [ebx+14]
 004D1231    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1236    mov         byte ptr [eax],0
 004D1239    mov         byte ptr [ebp-0D],0
 004D123D    mov         ax,word ptr [ebp-4]
 004D1241    mov         word ptr [ebp-18],ax
 004D1245    mov         eax,dword ptr [ebp-4]
 004D1248    shr         eax,10
 004D124B    mov         word ptr [ebp-1A],ax
 004D124F    mov         ax,word ptr [ebp-8]
 004D1253    mov         word ptr [ebp-1C],ax
 004D1257    mov         eax,dword ptr [ebp-8]
 004D125A    shr         eax,10
 004D125D    mov         word ptr [ebp-1E],ax
 004D1261    call        004CED2C
 004D1266    mov         ax,word ptr [ebp-1A]
 004D126A    push        eax
 004D126B    mov         ax,word ptr [ebp-1C]
 004D126F    push        eax
 004D1270    mov         ax,word ptr [ebp-1E]
 004D1274    push        eax
 004D1275    push        0
 004D1277    push        0
 004D1279    mov         cx,word ptr [ebp-18]
 004D127D    mov         dx,1
 004D1281    mov         ax,13
 004D1285    call        004CE5F4
 004D128A    mov         word ptr [ebp-16],ax
 004D128E    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D1293    cmp         byte ptr [eax],0
>004D1296    je          004D12FB
 004D1298    push        0BE
 004D129D    push        4F
 004D129F    push        0C2
 004D12A4    push        0A0
 004D12A9    push        0B0
 004D12AE    mov         eax,571EC0;gvar_00571EC0
 004D12B3    mov         cl,1
 004D12B5    mov         dl,0D6
 004D12B7    call        004CC128
 004D12BC    lea         eax,[ebp-22]
 004D12BF    push        eax
 004D12C0    lea         eax,[ebp-23]
 004D12C3    push        eax
 004D12C4    lea         eax,[ebp-24]
 004D12C7    push        eax
 004D12C8    lea         eax,[ebp-25]
 004D12CB    push        eax
 004D12CC    lea         ecx,[ebp-21]
 004D12CF    lea         edx,[ebp-20]
 004D12D2    lea         eax,[ebp-1F]
 004D12D5    call        004CC194
 004D12DA    xor         eax,eax
 004D12DC    mov         al,byte ptr [ebp-21]
 004D12DF    mov         [00571ED8],ax;gvar_00571ED8
 004D12E5    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D12ED    xor         eax,eax
 004D12EF    mov         al,byte ptr [ebp-20]
 004D12F2    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D12F9    jmp         004D133C
 004D12FB    mov         eax,[0056E1D4];^gvar_0056DF14
 004D1300    mov         ax,word ptr [eax]
 004D1303    add         ax,3
 004D1307    call        0055FE3C
 004D130C    and         eax,0FF
 004D1311    mov         [00571ED8],ax;gvar_00571ED8
 004D1317    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D131F    mov         eax,[0056E1D4];^gvar_0056DF14
 004D1324    mov         ax,word ptr [eax]
 004D1327    add         ax,2
 004D132B    call        0055FE3C
 004D1330    and         eax,0FF
 004D1335    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D133C    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1341    cmp         byte ptr [eax],0
>004D1344    jne         004D13A4
 004D1346    mov         eax,[0056E5A4];^gvar_0056DF04
 004D134B    cmp         byte ptr [eax],0
>004D134E    jne         004D13A4
 004D1350    mov         dword ptr [ebp-14],1
>004D1357    jmp         004D1374
 004D1359    call        004CEAB4
 004D135E    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D1364    mov         ecx,200
 004D1369    mov         eax,dword ptr [ebp-0C]
 004D136C    call        TStream.WriteBuffer
 004D1371    inc         dword ptr [ebp-14]
 004D1374    movzx       eax,word ptr [ebp-16]
 004D1378    cmp         eax,dword ptr [ebp-14]
>004D137B    jl          004D1387
 004D137D    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1382    cmp         byte ptr [eax],0
>004D1385    je          004D1359
 004D1387    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D138C    cmp         byte ptr [eax],0
>004D138F    jne         004D139B
 004D1391    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1396    cmp         byte ptr [eax],0
>004D1399    je          004D139F
 004D139B    xor         eax,eax
>004D139D    jmp         004D13A1
 004D139F    mov         al,1
 004D13A1    mov         byte ptr [ebp-0D],al
 004D13A4    mov         al,byte ptr [ebp-0D]
 004D13A7    pop         ebx
 004D13A8    mov         esp,ebp
 004D13AA    pop         ebp
 004D13AB    ret
end;*}

//004D13AC
{*function sub_004D13AC(?:dword; ?:?; ?:TMemoryStream):?;
begin
 004D13AC    push        ebp
 004D13AD    mov         ebp,esp
 004D13AF    add         esp,0FFFFFFD4
 004D13B2    push        ebx
 004D13B3    mov         dword ptr [ebp-0C],ecx
 004D13B6    mov         dword ptr [ebp-8],edx
 004D13B9    mov         dword ptr [ebp-4],eax
 004D13BC    mov         eax,[0056E5A4];^gvar_0056DF04
 004D13C1    mov         byte ptr [eax],0
 004D13C4    mov         byte ptr [ebp-0D],0
 004D13C8    xor         ecx,ecx
 004D13CA    xor         edx,edx
 004D13CC    mov         eax,dword ptr [ebp-0C]
 004D13CF    mov         ebx,dword ptr [eax]
 004D13D1    call        dword ptr [ebx+14]
 004D13D4    mov         eax,dword ptr [ebp-4]
 004D13D7    mov         dword ptr [ebp-18],eax
 004D13DA    call        004CED2C
 004D13DF    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D13E4    cmp         byte ptr [eax],0
>004D13E7    jne         004D1568
 004D13ED    mov         eax,[0056E5A4];^gvar_0056DF04
 004D13F2    cmp         byte ptr [eax],0
>004D13F5    jne         004D1568
 004D13FB    mov         ax,word ptr [ebp-18]
 004D13FF    mov         word ptr [ebp-1A],ax
 004D1403    mov         eax,dword ptr [ebp-18]
 004D1406    shr         eax,10
 004D1409    mov         word ptr [ebp-1C],ax
 004D140D    mov         ax,word ptr [ebp-8]
 004D1411    mov         word ptr [ebp-1E],ax
 004D1415    mov         eax,dword ptr [ebp-8]
 004D1418    shr         eax,10
 004D141B    mov         word ptr [ebp-20],ax
 004D141F    mov         ax,word ptr [ebp-1C]
 004D1423    push        eax
 004D1424    mov         ax,word ptr [ebp-1E]
 004D1428    push        eax
 004D1429    mov         ax,word ptr [ebp-20]
 004D142D    push        eax
 004D142E    push        0
 004D1430    push        0
 004D1432    mov         cx,word ptr [ebp-1A]
 004D1436    mov         dx,2
 004D143A    mov         ax,13
 004D143E    call        004CE5F4
 004D1443    movzx       eax,ax
 004D1446    mov         dword ptr [ebp-14],eax
 004D1449    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D144E    cmp         byte ptr [eax],0
>004D1451    je          004D14B6
 004D1453    push        0BE
 004D1458    push        4F
 004D145A    push        0C2
 004D145F    push        0A0
 004D1464    push        0B0
 004D1469    mov         eax,571EC0;gvar_00571EC0
 004D146E    mov         cl,1
 004D1470    mov         dl,0D6
 004D1472    call        004CC128
 004D1477    lea         eax,[ebp-24]
 004D147A    push        eax
 004D147B    lea         eax,[ebp-25]
 004D147E    push        eax
 004D147F    lea         eax,[ebp-26]
 004D1482    push        eax
 004D1483    lea         eax,[ebp-27]
 004D1486    push        eax
 004D1487    lea         ecx,[ebp-23]
 004D148A    lea         edx,[ebp-22]
 004D148D    lea         eax,[ebp-21]
 004D1490    call        004CC194
 004D1495    xor         eax,eax
 004D1497    mov         al,byte ptr [ebp-23]
 004D149A    mov         [00571ED8],ax;gvar_00571ED8
 004D14A0    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D14A8    xor         eax,eax
 004D14AA    mov         al,byte ptr [ebp-22]
 004D14AD    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D14B4    jmp         004D14F7
 004D14B6    mov         eax,[0056E1D4];^gvar_0056DF14
 004D14BB    mov         ax,word ptr [eax]
 004D14BE    add         ax,3
 004D14C2    call        0055FE3C
 004D14C7    and         eax,0FF
 004D14CC    mov         [00571ED8],ax;gvar_00571ED8
 004D14D2    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D14DA    mov         eax,[0056E1D4];^gvar_0056DF14
 004D14DF    mov         ax,word ptr [eax]
 004D14E2    add         ax,2
 004D14E6    call        0055FE3C
 004D14EB    and         eax,0FF
 004D14F0    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D14F7    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D14FC    cmp         byte ptr [eax],0
>004D14FF    jne         004D154B
 004D1501    cmp         dword ptr [ebp-8],200
>004D1508    jb          004D151A
 004D150A    mov         dword ptr [ebp-14],200
 004D1511    sub         dword ptr [ebp-8],200
>004D1518    jmp         004D1525
 004D151A    mov         eax,dword ptr [ebp-8]
 004D151D    mov         dword ptr [ebp-14],eax
 004D1520    xor         eax,eax
 004D1522    mov         dword ptr [ebp-8],eax
 004D1525    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D152B    mov         ecx,dword ptr [ebp-14]
 004D152E    mov         eax,dword ptr [ebp-0C]
 004D1531    call        TStream.ReadBuffer
 004D1536    call        004CEC08
 004D153B    cmp         dword ptr [ebp-8],0
>004D153F    je          004D154B
 004D1541    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1546    cmp         byte ptr [eax],0
>004D1549    je          004D1501
 004D154B    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1550    cmp         byte ptr [eax],0
>004D1553    jne         004D155F
 004D1555    mov         eax,[0056E5A4];^gvar_0056DF04
 004D155A    cmp         byte ptr [eax],0
>004D155D    je          004D1563
 004D155F    xor         eax,eax
>004D1561    jmp         004D1565
 004D1563    mov         al,1
 004D1565    mov         byte ptr [ebp-0D],al
 004D1568    mov         al,byte ptr [ebp-0D]
 004D156B    pop         ebx
 004D156C    mov         esp,ebp
 004D156E    pop         ebp
 004D156F    ret
end;*}

//004D1570
{*function sub_004D1570(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D1570    push        ebp
 004D1571    mov         ebp,esp
 004D1573    add         esp,0FFFFFFE8
 004D1576    push        ebx
 004D1577    mov         word ptr [ebp-6],cx
 004D157B    mov         word ptr [ebp-4],dx
 004D157F    mov         word ptr [ebp-2],ax
 004D1583    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1588    mov         byte ptr [eax],0
 004D158B    mov         byte ptr [ebp-7],0
 004D158F    xor         ecx,ecx
 004D1591    xor         edx,edx
 004D1593    mov         eax,dword ptr [ebp+8]
 004D1596    mov         ebx,dword ptr [eax]
 004D1598    call        dword ptr [ebx+14]
 004D159B    call        004CED2C
 004D15A0    mov         ax,word ptr [ebp-4]
 004D15A4    push        eax
 004D15A5    mov         ax,word ptr [ebp-6]
 004D15A9    push        eax
 004D15AA    mov         ax,word ptr [ebp+0C]
 004D15AE    push        eax
 004D15AF    push        0
 004D15B1    push        0
 004D15B3    mov         cx,word ptr [ebp-2]
 004D15B7    mov         dx,1
 004D15BB    mov         ax,2A
 004D15BF    call        004CE5F4
 004D15C4    mov         word ptr [ebp-0E],ax
 004D15C8    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D15CD    cmp         byte ptr [eax],0
>004D15D0    je          004D1635
 004D15D2    push        0BE
 004D15D7    push        4F
 004D15D9    push        0C2
 004D15DE    push        0A0
 004D15E3    push        0B0
 004D15E8    mov         eax,571EC0;gvar_00571EC0
 004D15ED    mov         cl,1
 004D15EF    mov         dl,0D6
 004D15F1    call        004CC128
 004D15F6    lea         eax,[ebp-12]
 004D15F9    push        eax
 004D15FA    lea         eax,[ebp-13]
 004D15FD    push        eax
 004D15FE    lea         eax,[ebp-14]
 004D1601    push        eax
 004D1602    lea         eax,[ebp-15]
 004D1605    push        eax
 004D1606    lea         ecx,[ebp-11]
 004D1609    lea         edx,[ebp-10]
 004D160C    lea         eax,[ebp-0F]
 004D160F    call        004CC194
 004D1614    xor         eax,eax
 004D1616    mov         al,byte ptr [ebp-11]
 004D1619    mov         [00571ED8],ax;gvar_00571ED8
 004D161F    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D1627    xor         eax,eax
 004D1629    mov         al,byte ptr [ebp-10]
 004D162C    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D1633    jmp         004D1676
 004D1635    mov         eax,[0056E1D4];^gvar_0056DF14
 004D163A    mov         ax,word ptr [eax]
 004D163D    add         ax,3
 004D1641    call        0055FE3C
 004D1646    and         eax,0FF
 004D164B    mov         [00571ED8],ax;gvar_00571ED8
 004D1651    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D1659    mov         eax,[0056E1D4];^gvar_0056DF14
 004D165E    mov         ax,word ptr [eax]
 004D1661    add         ax,2
 004D1665    call        0055FE3C
 004D166A    and         eax,0FF
 004D166F    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D1676    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D167B    cmp         byte ptr [eax],0
>004D167E    jne         004D16DE
 004D1680    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1685    cmp         byte ptr [eax],0
>004D1688    jne         004D16DE
 004D168A    mov         dword ptr [ebp-0C],1
>004D1691    jmp         004D16AE
 004D1693    call        004CEAB4
 004D1698    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D169E    mov         ecx,200
 004D16A3    mov         eax,dword ptr [ebp+8]
 004D16A6    call        TStream.WriteBuffer
 004D16AB    inc         dword ptr [ebp-0C]
 004D16AE    movzx       eax,word ptr [ebp-0E]
 004D16B2    cmp         eax,dword ptr [ebp-0C]
>004D16B5    jl          004D16C1
 004D16B7    mov         eax,[0056E5A4];^gvar_0056DF04
 004D16BC    cmp         byte ptr [eax],0
>004D16BF    je          004D1693
 004D16C1    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D16C6    cmp         byte ptr [eax],0
>004D16C9    jne         004D16D5
 004D16CB    mov         eax,[0056E5A4];^gvar_0056DF04
 004D16D0    cmp         byte ptr [eax],0
>004D16D3    je          004D16D9
 004D16D5    xor         eax,eax
>004D16D7    jmp         004D16DB
 004D16D9    mov         al,1
 004D16DB    mov         byte ptr [ebp-7],al
 004D16DE    mov         al,byte ptr [ebp-7]
 004D16E1    pop         ebx
 004D16E2    mov         esp,ebp
 004D16E4    pop         ebp
 004D16E5    ret         8
end;*}

//004D16E8
{*function sub_004D16E8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D16E8    push        ebp
 004D16E9    mov         ebp,esp
 004D16EB    add         esp,0FFFFFFE8
 004D16EE    push        ebx
 004D16EF    mov         word ptr [ebp-6],cx
 004D16F3    mov         word ptr [ebp-4],dx
 004D16F7    mov         word ptr [ebp-2],ax
 004D16FB    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1700    mov         byte ptr [eax],0
 004D1703    mov         byte ptr [ebp-7],0
 004D1707    xor         ecx,ecx
 004D1709    xor         edx,edx
 004D170B    mov         eax,dword ptr [ebp+8]
 004D170E    mov         ebx,dword ptr [eax]
 004D1710    call        dword ptr [ebx+14]
 004D1713    call        004CED2C
 004D1718    mov         ax,word ptr [ebp-4]
 004D171C    push        eax
 004D171D    mov         ax,word ptr [ebp-6]
 004D1721    push        eax
 004D1722    mov         ax,word ptr [ebp+0C]
 004D1726    push        eax
 004D1727    push        0
 004D1729    push        0
 004D172B    mov         cx,word ptr [ebp-2]
 004D172F    mov         dx,2
 004D1733    mov         ax,2A
 004D1737    call        004CE5F4
 004D173C    mov         word ptr [ebp-0E],ax
 004D1740    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 004D1745    cmp         byte ptr [eax],0
>004D1748    je          004D17AD
 004D174A    push        0BE
 004D174F    push        4F
 004D1751    push        0C2
 004D1756    push        0A0
 004D175B    push        0B0
 004D1760    mov         eax,571EC0;gvar_00571EC0
 004D1765    mov         cl,1
 004D1767    mov         dl,0D6
 004D1769    call        004CC128
 004D176E    lea         eax,[ebp-12]
 004D1771    push        eax
 004D1772    lea         eax,[ebp-13]
 004D1775    push        eax
 004D1776    lea         eax,[ebp-14]
 004D1779    push        eax
 004D177A    lea         eax,[ebp-15]
 004D177D    push        eax
 004D177E    lea         ecx,[ebp-11]
 004D1781    lea         edx,[ebp-10]
 004D1784    lea         eax,[ebp-0F]
 004D1787    call        004CC194
 004D178C    xor         eax,eax
 004D178E    mov         al,byte ptr [ebp-11]
 004D1791    mov         [00571ED8],ax;gvar_00571ED8
 004D1797    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D179F    xor         eax,eax
 004D17A1    mov         al,byte ptr [ebp-10]
 004D17A4    or          word ptr ds:[571ED8],ax;gvar_00571ED8
>004D17AB    jmp         004D17EE
 004D17AD    mov         eax,[0056E1D4];^gvar_0056DF14
 004D17B2    mov         ax,word ptr [eax]
 004D17B5    add         ax,3
 004D17B9    call        0055FE3C
 004D17BE    and         eax,0FF
 004D17C3    mov         [00571ED8],ax;gvar_00571ED8
 004D17C9    shl         word ptr ds:[571ED8],8;gvar_00571ED8
 004D17D1    mov         eax,[0056E1D4];^gvar_0056DF14
 004D17D6    mov         ax,word ptr [eax]
 004D17D9    add         ax,2
 004D17DD    call        0055FE3C
 004D17E2    and         eax,0FF
 004D17E7    or          word ptr ds:[571ED8],ax;gvar_00571ED8
 004D17EE    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D17F3    cmp         byte ptr [eax],0
>004D17F6    jne         004D1856
 004D17F8    mov         eax,[0056E5A4];^gvar_0056DF04
 004D17FD    cmp         byte ptr [eax],0
>004D1800    jne         004D1856
 004D1802    mov         dword ptr [ebp-0C],1
>004D1809    jmp         004D1826
 004D180B    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 004D1811    mov         ecx,200
 004D1816    mov         eax,dword ptr [ebp+8]
 004D1819    call        TStream.ReadBuffer
 004D181E    call        004CEC08
 004D1823    inc         dword ptr [ebp-0C]
 004D1826    movzx       eax,word ptr [ebp-0E]
 004D182A    cmp         eax,dword ptr [ebp-0C]
>004D182D    jl          004D1839
 004D182F    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1834    cmp         byte ptr [eax],0
>004D1837    je          004D180B
 004D1839    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D183E    cmp         byte ptr [eax],0
>004D1841    jne         004D184D
 004D1843    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1848    cmp         byte ptr [eax],0
>004D184B    je          004D1851
 004D184D    xor         eax,eax
>004D184F    jmp         004D1853
 004D1851    mov         al,1
 004D1853    mov         byte ptr [ebp-7],al
 004D1856    mov         al,byte ptr [ebp-7]
 004D1859    pop         ebx
 004D185A    mov         esp,ebp
 004D185C    pop         ebp
 004D185D    ret         8
end;*}

//004D1860
{*function sub_004D1860(?:?):?;
begin
 004D1860    push        ebp
 004D1861    mov         ebp,esp
 004D1863    push        ecx
 004D1864    mov         word ptr [ebp-2],ax
 004D1868    mov         eax,[0056E5A4];^gvar_0056DF04
 004D186D    mov         byte ptr [eax],0
 004D1870    call        004CED2C
 004D1875    push        0
 004D1877    push        0
 004D1879    push        0
 004D187B    push        0
 004D187D    push        0
 004D187F    xor         ecx,ecx
 004D1881    mov         dx,word ptr [ebp-2]
 004D1885    mov         ax,30
 004D1889    call        004CE5F4
 004D188E    call        004CEAB4
 004D1893    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1898    cmp         byte ptr [eax],0
>004D189B    jne         004D18A7
 004D189D    mov         eax,[0056E5A4];^gvar_0056DF04
 004D18A2    cmp         byte ptr [eax],0
>004D18A5    je          004D18AB
 004D18A7    xor         eax,eax
>004D18A9    jmp         004D18AD
 004D18AB    mov         al,1
 004D18AD    mov         byte ptr [ebp-3],al
 004D18B0    mov         al,byte ptr [ebp-3]
 004D18B3    pop         ecx
 004D18B4    pop         ebp
 004D18B5    ret
end;*}

//004D18B8
{*function sub_004D18B8(?:?):?;
begin
 004D18B8    push        ebp
 004D18B9    mov         ebp,esp
 004D18BB    push        ecx
 004D18BC    mov         word ptr [ebp-2],ax
 004D18C0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D18C5    mov         byte ptr [eax],0
 004D18C8    call        004CED2C
 004D18CD    push        0
 004D18CF    push        0
 004D18D1    push        0
 004D18D3    push        0
 004D18D5    push        0
 004D18D7    mov         cx,word ptr [ebp-2]
 004D18DB    mov         dx,5
 004D18DF    mov         ax,30
 004D18E3    call        004CE5F4
 004D18E8    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D18ED    cmp         byte ptr [eax],0
>004D18F0    jne         004D18FC
 004D18F2    mov         eax,[0056E5A4];^gvar_0056DF04
 004D18F7    cmp         byte ptr [eax],0
>004D18FA    je          004D1900
 004D18FC    xor         eax,eax
>004D18FE    jmp         004D1902
 004D1900    mov         al,1
 004D1902    mov         byte ptr [ebp-3],al
 004D1905    mov         al,byte ptr [ebp-3]
 004D1908    pop         ecx
 004D1909    pop         ebp
 004D190A    ret
end;*}

//004D190C
{*function sub_004D190C(?:?):?;
begin
 004D190C    push        ebp
 004D190D    mov         ebp,esp
 004D190F    push        ecx
 004D1910    mov         word ptr [ebp-2],ax
 004D1914    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1919    mov         byte ptr [eax],0
 004D191C    call        004CED2C
 004D1921    mov         ax,word ptr [ebp-2]
 004D1925    push        eax
 004D1926    push        0
 004D1928    push        0
 004D192A    push        0
 004D192C    push        0
 004D192E    xor         ecx,ecx
 004D1930    mov         dx,6
 004D1934    mov         ax,30
 004D1938    call        004CE5F4
 004D193D    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1942    cmp         byte ptr [eax],0
>004D1945    jne         004D1951
 004D1947    mov         eax,[0056E5A4];^gvar_0056DF04
 004D194C    cmp         byte ptr [eax],0
>004D194F    je          004D1955
 004D1951    xor         eax,eax
>004D1953    jmp         004D1957
 004D1955    mov         al,1
 004D1957    mov         byte ptr [ebp-3],al
 004D195A    mov         al,byte ptr [ebp-3]
 004D195D    pop         ecx
 004D195E    pop         ebp
 004D195F    ret
end;*}

//004D1960
{*function sub_004D1960(?:?):?;
begin
 004D1960    push        ebp
 004D1961    mov         ebp,esp
 004D1963    push        ecx
 004D1964    mov         word ptr [ebp-2],ax
 004D1968    mov         eax,[0056E5A4];^gvar_0056DF04
 004D196D    mov         byte ptr [eax],0
 004D1970    call        004CED2C
 004D1975    mov         ax,word ptr [ebp-2]
 004D1979    push        eax
 004D197A    push        0
 004D197C    push        0
 004D197E    push        0
 004D1980    push        0
 004D1982    xor         ecx,ecx
 004D1984    mov         dx,7
 004D1988    mov         ax,30
 004D198C    call        004CE5F4
 004D1991    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1996    cmp         byte ptr [eax],0
>004D1999    jne         004D19A5
 004D199B    mov         eax,[0056E5A4];^gvar_0056DF04
 004D19A0    cmp         byte ptr [eax],0
>004D19A3    je          004D19A9
 004D19A5    xor         eax,eax
>004D19A7    jmp         004D19AB
 004D19A9    mov         al,1
 004D19AB    mov         byte ptr [ebp-3],al
 004D19AE    mov         al,byte ptr [ebp-3]
 004D19B1    pop         ecx
 004D19B2    pop         ebp
 004D19B3    ret
end;*}

//004D19B4
{*function sub_004D19B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D19B4    push        ebp
 004D19B5    mov         ebp,esp
 004D19B7    add         esp,0FFFFFFF8
 004D19BA    mov         word ptr [ebp-6],cx
 004D19BE    mov         word ptr [ebp-4],dx
 004D19C2    mov         word ptr [ebp-2],ax
 004D19C6    mov         eax,[0056E5A4];^gvar_0056DF04
 004D19CB    mov         byte ptr [eax],0
 004D19CE    call        004CED2C
 004D19D3    push        0
 004D19D5    mov         ax,word ptr [ebp-2]
 004D19D9    push        eax
 004D19DA    mov         ax,word ptr [ebp-4]
 004D19DE    push        eax
 004D19DF    mov         ax,word ptr [ebp-6]
 004D19E3    push        eax
 004D19E4    mov         ax,word ptr [ebp+18]
 004D19E8    push        eax
 004D19E9    mov         ax,word ptr [ebp+14]
 004D19ED    push        eax
 004D19EE    mov         ax,word ptr [ebp+10]
 004D19F2    push        eax
 004D19F3    mov         ax,word ptr [ebp+0C]
 004D19F7    push        eax
 004D19F8    mov         ax,word ptr [ebp+8]
 004D19FC    push        eax
 004D19FD    push        0
 004D19FF    push        0
 004D1A01    push        0
 004D1A03    push        0
 004D1A05    xor         ecx,ecx
 004D1A07    mov         dx,8
 004D1A0B    mov         ax,30
 004D1A0F    call        004CE82C
 004D1A14    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1A19    cmp         byte ptr [eax],0
>004D1A1C    jne         004D1A28
 004D1A1E    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1A23    cmp         byte ptr [eax],0
>004D1A26    je          004D1A2C
 004D1A28    xor         eax,eax
>004D1A2A    jmp         004D1A2E
 004D1A2C    mov         al,1
 004D1A2E    mov         byte ptr [ebp-7],al
 004D1A31    mov         al,byte ptr [ebp-7]
 004D1A34    pop         ecx
 004D1A35    pop         ecx
 004D1A36    pop         ebp
 004D1A37    ret         14
end;*}

//004D1A3C
{*function sub_004D1A3C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D1A3C    push        ebp
 004D1A3D    mov         ebp,esp
 004D1A3F    add         esp,0FFFFFFF8
 004D1A42    mov         word ptr [ebp-6],cx
 004D1A46    mov         word ptr [ebp-4],dx
 004D1A4A    mov         word ptr [ebp-2],ax
 004D1A4E    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1A53    mov         byte ptr [eax],0
 004D1A56    call        004CED2C
 004D1A5B    push        0
 004D1A5D    mov         ax,word ptr [ebp-2]
 004D1A61    push        eax
 004D1A62    mov         ax,word ptr [ebp-4]
 004D1A66    push        eax
 004D1A67    mov         ax,word ptr [ebp-6]
 004D1A6B    push        eax
 004D1A6C    mov         ax,word ptr [ebp+18]
 004D1A70    push        eax
 004D1A71    mov         ax,word ptr [ebp+14]
 004D1A75    push        eax
 004D1A76    mov         ax,word ptr [ebp+10]
 004D1A7A    push        eax
 004D1A7B    mov         ax,word ptr [ebp+0C]
 004D1A7F    push        eax
 004D1A80    mov         ax,word ptr [ebp+8]
 004D1A84    push        eax
 004D1A85    push        0
 004D1A87    push        0
 004D1A89    push        0
 004D1A8B    push        0
 004D1A8D    xor         ecx,ecx
 004D1A8F    mov         dx,9
 004D1A93    mov         ax,30
 004D1A97    call        004CE82C
 004D1A9C    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1AA1    cmp         byte ptr [eax],0
>004D1AA4    jne         004D1AB0
 004D1AA6    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1AAB    cmp         byte ptr [eax],0
>004D1AAE    je          004D1AB4
 004D1AB0    xor         eax,eax
>004D1AB2    jmp         004D1AB6
 004D1AB4    mov         al,1
 004D1AB6    mov         byte ptr [ebp-7],al
 004D1AB9    mov         al,byte ptr [ebp-7]
 004D1ABC    pop         ecx
 004D1ABD    pop         ecx
 004D1ABE    pop         ebp
 004D1ABF    ret         14
end;*}

//004D1AC4
{*function sub_004D1AC4(?:?):?;
begin
 004D1AC4    push        ebp
 004D1AC5    mov         ebp,esp
 004D1AC7    push        ecx
 004D1AC8    mov         word ptr [ebp-2],ax
 004D1ACC    mov         byte ptr [ebp-3],0
 004D1AD0    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1AD5    mov         byte ptr [eax],0
 004D1AD8    call        004CED2C
 004D1ADD    push        2
 004D1ADF    push        0
 004D1AE1    mov         ax,word ptr [ebp-2]
 004D1AE5    push        eax
 004D1AE6    push        1
 004D1AE8    push        0
 004D1AEA    mov         cx,1
 004D1AEE    mov         dx,1
 004D1AF2    mov         ax,21
 004D1AF6    call        004CE5F4
 004D1AFB    mov         eax,[0056E3F8];^gvar_0059BF4C
 004D1B00    cmp         byte ptr [eax],0
>004D1B03    jne         004D1B1E
 004D1B05    mov         eax,[0056E5A4];^gvar_0056DF04
 004D1B0A    cmp         byte ptr [eax],0
>004D1B0D    jne         004D1B1E
 004D1B0F    call        004CEAB4
 004D1B14    mov         eax,[0056E344];^gvar_0059BF5C
 004D1B19    mov         al,byte ptr [eax]
 004D1B1B    mov         byte ptr [ebp-3],al
 004D1B1E    mov         al,byte ptr [ebp-3]
 004D1B21    pop         ecx
 004D1B22    pop         ebp
 004D1B23    ret
end;*}

end.