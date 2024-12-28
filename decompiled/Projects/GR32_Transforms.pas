//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32_Transforms;

interface

uses
  SysUtils, Classes;

type
  ETransformNotImplemented = class(Exception)
  end;
  TTransformation = class(TNotifiablePersistent)
  public
    f1C:dword;//f1C
    f20:dword;//f20
    procedure vC; virtual;//vC//0051C42C
    procedure v18; virtual;//v18//0051C47C
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//0051C684
    //procedure v20(?:?; ?:?; ?:?; ?:?); virtual;//v20//0051C554
    //procedure v24(?:?; ?:?); virtual;//v24//0051C5B8
    //procedure v28(?:?; ?:?; ?:?; ?:?); virtual;//v28//0051C8D0
    //procedure v2C(?:?; ?:?; ?:?; ?:?); virtual;//v2C//0051C7A0
    //procedure v30(?:?; ?:?); virtual;//v30//0051C804
    //function v34:?; virtual;//v34//0051C468
    //procedure v38(?:?; ?:?); virtual;//v38//0051C448
    //procedure v3C(?:?; ?:?); virtual;//v3C//0051C510
    //procedure v40(?:?; ?:?); virtual;//v40//0051C4CC
    //procedure v44(?:?; ?:?); virtual;//v44//0051C488
    //procedure v48(?:?; ?:?); virtual;//v48//0051C75C
    //procedure v4C(?:?; ?:?); virtual;//v4C//0051C718
    //procedure v50(?:?; ?:?); virtual;//v50//0051C6D4
  end;
    procedure sub_0051C42C;//0051C42C
    //procedure sub_0051C448(?:?; ?:?);//0051C448
    //function sub_0051C468:?;//0051C468
    procedure sub_0051C47C;//0051C47C
    //procedure sub_0051C488(?:?; ?:?);//0051C488
    //procedure sub_0051C4CC(?:?; ?:?);//0051C4CC
    //procedure sub_0051C510(?:?; ?:?);//0051C510
    //procedure sub_0051C554(?:?; ?:?; ?:?; ?:?);//0051C554
    //procedure sub_0051C5B8(?:?; ?:?);//0051C5B8
    //procedure sub_0051C684(?:?; ?:?; ?:?; ?:?);//0051C684
    //procedure sub_0051C6D4(?:?; ?:?);//0051C6D4
    //procedure sub_0051C718(?:?; ?:?);//0051C718
    //procedure sub_0051C75C(?:?; ?:?);//0051C75C
    //procedure sub_0051C7A0(?:?; ?:?; ?:?; ?:?);//0051C7A0
    //procedure sub_0051C804(?:?; ?:?);//0051C804
    //procedure sub_0051C8D0(?:?; ?:?; ?:?; ?:?);//0051C8D0

implementation

//0051C42C
procedure sub_0051C42C;
begin
{*
 0051C42C    push        ebp
 0051C42D    mov         ebp,esp
 0051C42F    push        ecx
 0051C430    mov         dword ptr [ebp-4],eax
 0051C433    mov         eax,dword ptr [ebp-4]
 0051C436    mov         byte ptr [eax+20],0;TTransformation.?f20:dword
 0051C43A    mov         eax,dword ptr [ebp-4]
 0051C43D    call        0051E1F4
 0051C442    pop         ecx
 0051C443    pop         ebp
 0051C444    ret
*}
end;

//0051C448
{*procedure sub_0051C448(?:?; ?:?);
begin
 0051C448    push        ebp
 0051C449    mov         ebp,esp
 0051C44B    add         esp,0FFFFFFF4
 0051C44E    mov         dword ptr [ebp-0C],ecx
 0051C451    mov         dword ptr [ebp-8],edx
 0051C454    mov         dword ptr [ebp-4],eax
 0051C457    mov         ecx,dword ptr [ebp-0C]
 0051C45A    mov         eax,dword ptr [ebp-8]
 0051C45D    xor         edx,edx
 0051C45F    call        0051DC88
 0051C464    mov         esp,ebp
 0051C466    pop         ebp
 0051C467    ret
end;*}

//0051C468
{*function sub_0051C468:?;
begin
 0051C468    push        ebp
 0051C469    mov         ebp,esp
 0051C46B    add         esp,0FFFFFFF8
 0051C46E    mov         dword ptr [ebp-4],eax
 0051C471    mov         byte ptr [ebp-5],1
 0051C475    mov         al,byte ptr [ebp-5]
 0051C478    pop         ecx
 0051C479    pop         ecx
 0051C47A    pop         ebp
 0051C47B    ret
end;*}

//0051C47C
procedure sub_0051C47C;
begin
{*
 0051C47C    push        ebp
 0051C47D    mov         ebp,esp
 0051C47F    push        ecx
 0051C480    mov         dword ptr [ebp-4],eax
 0051C483    pop         ecx
 0051C484    pop         ebp
 0051C485    ret
*}
end;

//0051C488
{*procedure sub_0051C488(?:?; ?:?);
begin
 0051C488    push        ebp
 0051C489    mov         ebp,esp
 0051C48B    add         esp,0FFFFFFF4
 0051C48E    push        ebx
 0051C48F    mov         dword ptr [ebp-0C],ecx
 0051C492    mov         dword ptr [ebp-8],edx
 0051C495    mov         dword ptr [ebp-4],eax
 0051C498    mov         eax,dword ptr [ebp-4]
 0051C49B    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C49F    jne         0051C4A9
 0051C4A1    mov         eax,dword ptr [ebp-4]
 0051C4A4    mov         edx,dword ptr [eax]
 0051C4A6    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C4A9    mov         eax,dword ptr [ebp-8]
 0051C4AC    push        dword ptr [eax]
 0051C4AE    mov         eax,dword ptr [ebp-8]
 0051C4B1    push        dword ptr [eax+4]
 0051C4B4    mov         ecx,dword ptr [ebp-0C]
 0051C4B7    add         ecx,4
 0051C4BA    mov         edx,dword ptr [ebp-0C]
 0051C4BD    mov         eax,dword ptr [ebp-4]
 0051C4C0    mov         ebx,dword ptr [eax]
 0051C4C2    call        dword ptr [ebx+24];TTransformation.sub_0051C5B8
 0051C4C5    pop         ebx
 0051C4C6    mov         esp,ebp
 0051C4C8    pop         ebp
 0051C4C9    ret
end;*}

//0051C4CC
{*procedure sub_0051C4CC(?:?; ?:?);
begin
 0051C4CC    push        ebp
 0051C4CD    mov         ebp,esp
 0051C4CF    add         esp,0FFFFFFF4
 0051C4D2    push        ebx
 0051C4D3    mov         dword ptr [ebp-0C],ecx
 0051C4D6    mov         dword ptr [ebp-8],edx
 0051C4D9    mov         dword ptr [ebp-4],eax
 0051C4DC    mov         eax,dword ptr [ebp-4]
 0051C4DF    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C4E3    jne         0051C4ED
 0051C4E5    mov         eax,dword ptr [ebp-4]
 0051C4E8    mov         edx,dword ptr [eax]
 0051C4EA    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C4ED    mov         eax,dword ptr [ebp-0C]
 0051C4F0    push        eax
 0051C4F1    mov         eax,dword ptr [ebp-0C]
 0051C4F4    add         eax,4
 0051C4F7    push        eax
 0051C4F8    mov         ecx,dword ptr [ebp-8]
 0051C4FB    mov         ecx,dword ptr [ecx+4]
 0051C4FE    mov         edx,dword ptr [ebp-8]
 0051C501    mov         edx,dword ptr [edx]
 0051C503    mov         eax,dword ptr [ebp-4]
 0051C506    mov         ebx,dword ptr [eax]
 0051C508    call        dword ptr [ebx+20];TTransformation.sub_0051C554
 0051C50B    pop         ebx
 0051C50C    mov         esp,ebp
 0051C50E    pop         ebp
 0051C50F    ret
end;*}

//0051C510
{*procedure sub_0051C510(?:?; ?:?);
begin
 0051C510    push        ebp
 0051C511    mov         ebp,esp
 0051C513    add         esp,0FFFFFFF4
 0051C516    push        ebx
 0051C517    mov         dword ptr [ebp-0C],ecx
 0051C51A    mov         dword ptr [ebp-8],edx
 0051C51D    mov         dword ptr [ebp-4],eax
 0051C520    mov         eax,dword ptr [ebp-4]
 0051C523    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C527    jne         0051C531
 0051C529    mov         eax,dword ptr [ebp-4]
 0051C52C    mov         edx,dword ptr [eax]
 0051C52E    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C531    mov         eax,dword ptr [ebp-0C]
 0051C534    push        eax
 0051C535    mov         eax,dword ptr [ebp-0C]
 0051C538    add         eax,4
 0051C53B    push        eax
 0051C53C    mov         ecx,dword ptr [ebp-8]
 0051C53F    mov         ecx,dword ptr [ecx+4]
 0051C542    mov         edx,dword ptr [ebp-8]
 0051C545    mov         edx,dword ptr [edx]
 0051C547    mov         eax,dword ptr [ebp-4]
 0051C54A    mov         ebx,dword ptr [eax]
 0051C54C    call        dword ptr [ebx+1C];TTransformation.sub_0051C684
 0051C54F    pop         ebx
 0051C550    mov         esp,ebp
 0051C552    pop         ebp
 0051C553    ret
end;*}

//0051C554
{*procedure sub_0051C554(?:?; ?:?; ?:?; ?:?);
begin
 0051C554    push        ebp
 0051C555    mov         ebp,esp
 0051C557    add         esp,0FFFFFFEC
 0051C55A    push        ebx
 0051C55B    mov         dword ptr [ebp-0C],ecx
 0051C55E    mov         dword ptr [ebp-8],edx
 0051C561    mov         dword ptr [ebp-4],eax
 0051C564    fild        dword ptr [ebp-8]
 0051C567    fmul        dword ptr ds:[51C5B4];1.52587890625E-5:Single
 0051C56D    add         esp,0FFFFFFFC
 0051C570    fstp        dword ptr [esp]
 0051C573    wait
 0051C574    fild        dword ptr [ebp-0C]
 0051C577    fmul        dword ptr ds:[51C5B4];1.52587890625E-5:Single
 0051C57D    add         esp,0FFFFFFFC
 0051C580    fstp        dword ptr [esp]
 0051C583    wait
 0051C584    lea         ecx,[ebp-14]
 0051C587    lea         edx,[ebp-10]
 0051C58A    mov         eax,dword ptr [ebp-4]
 0051C58D    mov         ebx,dword ptr [eax]
 0051C58F    call        dword ptr [ebx+24];TTransformation.sub_0051C5B8
 0051C592    push        dword ptr [ebp-10]
 0051C595    call        0051DC10
 0051C59A    mov         edx,dword ptr [ebp+0C]
 0051C59D    mov         dword ptr [edx],eax
 0051C59F    push        dword ptr [ebp-14]
 0051C5A2    call        0051DC10
 0051C5A7    mov         edx,dword ptr [ebp+8]
 0051C5AA    mov         dword ptr [edx],eax
 0051C5AC    pop         ebx
 0051C5AD    mov         esp,ebp
 0051C5AF    pop         ebp
 0051C5B0    ret         8
end;*}

//0051C5B8
{*procedure sub_0051C5B8(?:?; ?:?);
begin
 0051C5B8    push        ebp
 0051C5B9    mov         ebp,esp
 0051C5BB    add         esp,0FFFFFEE8
 0051C5C1    push        ebx
 0051C5C2    xor         ebx,ebx
 0051C5C4    mov         dword ptr [ebp-10],ebx
 0051C5C7    mov         dword ptr [ebp-0C],ecx
 0051C5CA    mov         dword ptr [ebp-8],edx
 0051C5CD    mov         dword ptr [ebp-4],eax
 0051C5D0    xor         eax,eax
 0051C5D2    push        ebp
 0051C5D3    push        51C638
 0051C5D8    push        dword ptr fs:[eax]
 0051C5DB    mov         dword ptr fs:[eax],esp
 0051C5DE    lea         eax,[ebp-10]
 0051C5E1    push        eax
 0051C5E2    lea         edx,[ebp-118]
 0051C5E8    mov         eax,dword ptr [ebp-4]
 0051C5EB    mov         eax,dword ptr [eax]
 0051C5ED    call        TObject.ClassName
 0051C5F2    lea         eax,[ebp-118]
 0051C5F8    mov         dword ptr [ebp-18],eax
 0051C5FB    mov         byte ptr [ebp-14],4
 0051C5FF    lea         edx,[ebp-18]
 0051C602    xor         ecx,ecx
 0051C604    mov         eax,51C650;'Reverse transformation is not implemented in %s.'
 0051C609    call        0040D630
 0051C60E    mov         ecx,dword ptr [ebp-10]
 0051C611    mov         dl,1
 0051C613    mov         eax,[0051C2E0];ETransformNotImplemented
 0051C618    call        Exception.Create;ETransformNotImplemented.Create
 0051C61D    call        @RaiseExcept
 0051C622    xor         eax,eax
 0051C624    pop         edx
 0051C625    pop         ecx
 0051C626    pop         ecx
 0051C627    mov         dword ptr fs:[eax],edx
 0051C62A    push        51C63F
 0051C62F    lea         eax,[ebp-10]
 0051C632    call        @LStrClr
 0051C637    ret
>0051C638    jmp         @HandleFinally
>0051C63D    jmp         0051C62F
 0051C63F    pop         ebx
 0051C640    mov         esp,ebp
 0051C642    pop         ebp
 0051C643    ret         8
end;*}

//0051C684
{*procedure sub_0051C684(?:?; ?:?; ?:?; ?:?);
begin
 0051C684    push        ebp
 0051C685    mov         ebp,esp
 0051C687    add         esp,0FFFFFFEC
 0051C68A    push        ebx
 0051C68B    mov         dword ptr [ebp-0C],ecx
 0051C68E    mov         dword ptr [ebp-8],edx
 0051C691    mov         dword ptr [ebp-4],eax
 0051C694    lea         eax,[ebp-10]
 0051C697    push        eax
 0051C698    lea         eax,[ebp-14]
 0051C69B    push        eax
 0051C69C    mov         ecx,dword ptr [ebp-0C]
 0051C69F    shl         ecx,10
 0051C6A2    mov         edx,dword ptr [ebp-8]
 0051C6A5    shl         edx,10
 0051C6A8    mov         eax,dword ptr [ebp-4]
 0051C6AB    mov         ebx,dword ptr [eax]
 0051C6AD    call        dword ptr [ebx+20];TTransformation.sub_0051C554
 0051C6B0    mov         eax,dword ptr [ebp-10]
 0051C6B3    call        00513268
 0051C6B8    mov         edx,dword ptr [ebp+0C]
 0051C6BB    mov         dword ptr [edx],eax
 0051C6BD    mov         eax,dword ptr [ebp-14]
 0051C6C0    call        00513268
 0051C6C5    mov         edx,dword ptr [ebp+8]
 0051C6C8    mov         dword ptr [edx],eax
 0051C6CA    pop         ebx
 0051C6CB    mov         esp,ebp
 0051C6CD    pop         ebp
 0051C6CE    ret         8
end;*}

//0051C6D4
{*procedure sub_0051C6D4(?:?; ?:?);
begin
 0051C6D4    push        ebp
 0051C6D5    mov         ebp,esp
 0051C6D7    add         esp,0FFFFFFF4
 0051C6DA    push        ebx
 0051C6DB    mov         dword ptr [ebp-0C],ecx
 0051C6DE    mov         dword ptr [ebp-8],edx
 0051C6E1    mov         dword ptr [ebp-4],eax
 0051C6E4    mov         eax,dword ptr [ebp-4]
 0051C6E7    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C6EB    jne         0051C6F5
 0051C6ED    mov         eax,dword ptr [ebp-4]
 0051C6F0    mov         edx,dword ptr [eax]
 0051C6F2    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C6F5    mov         eax,dword ptr [ebp-8]
 0051C6F8    push        dword ptr [eax]
 0051C6FA    mov         eax,dword ptr [ebp-8]
 0051C6FD    push        dword ptr [eax+4]
 0051C700    mov         ecx,dword ptr [ebp-0C]
 0051C703    add         ecx,4
 0051C706    mov         edx,dword ptr [ebp-0C]
 0051C709    mov         eax,dword ptr [ebp-4]
 0051C70C    mov         ebx,dword ptr [eax]
 0051C70E    call        dword ptr [ebx+30];TTransformation.sub_0051C804
 0051C711    pop         ebx
 0051C712    mov         esp,ebp
 0051C714    pop         ebp
 0051C715    ret
end;*}

//0051C718
{*procedure sub_0051C718(?:?; ?:?);
begin
 0051C718    push        ebp
 0051C719    mov         ebp,esp
 0051C71B    add         esp,0FFFFFFF4
 0051C71E    push        ebx
 0051C71F    mov         dword ptr [ebp-0C],ecx
 0051C722    mov         dword ptr [ebp-8],edx
 0051C725    mov         dword ptr [ebp-4],eax
 0051C728    mov         eax,dword ptr [ebp-4]
 0051C72B    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C72F    jne         0051C739
 0051C731    mov         eax,dword ptr [ebp-4]
 0051C734    mov         edx,dword ptr [eax]
 0051C736    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C739    mov         eax,dword ptr [ebp-0C]
 0051C73C    push        eax
 0051C73D    mov         eax,dword ptr [ebp-0C]
 0051C740    add         eax,4
 0051C743    push        eax
 0051C744    mov         ecx,dword ptr [ebp-8]
 0051C747    mov         ecx,dword ptr [ecx+4]
 0051C74A    mov         edx,dword ptr [ebp-8]
 0051C74D    mov         edx,dword ptr [edx]
 0051C74F    mov         eax,dword ptr [ebp-4]
 0051C752    mov         ebx,dword ptr [eax]
 0051C754    call        dword ptr [ebx+2C];TTransformation.sub_0051C7A0
 0051C757    pop         ebx
 0051C758    mov         esp,ebp
 0051C75A    pop         ebp
 0051C75B    ret
end;*}

//0051C75C
{*procedure sub_0051C75C(?:?; ?:?);
begin
 0051C75C    push        ebp
 0051C75D    mov         ebp,esp
 0051C75F    add         esp,0FFFFFFF4
 0051C762    push        ebx
 0051C763    mov         dword ptr [ebp-0C],ecx
 0051C766    mov         dword ptr [ebp-8],edx
 0051C769    mov         dword ptr [ebp-4],eax
 0051C76C    mov         eax,dword ptr [ebp-4]
 0051C76F    cmp         byte ptr [eax+20],0;TTransformation.?f20:dword
>0051C773    jne         0051C77D
 0051C775    mov         eax,dword ptr [ebp-4]
 0051C778    mov         edx,dword ptr [eax]
 0051C77A    call        dword ptr [edx+18];TTransformation.sub_0051C47C
 0051C77D    mov         eax,dword ptr [ebp-0C]
 0051C780    push        eax
 0051C781    mov         eax,dword ptr [ebp-0C]
 0051C784    add         eax,4
 0051C787    push        eax
 0051C788    mov         ecx,dword ptr [ebp-8]
 0051C78B    mov         ecx,dword ptr [ecx+4]
 0051C78E    mov         edx,dword ptr [ebp-8]
 0051C791    mov         edx,dword ptr [edx]
 0051C793    mov         eax,dword ptr [ebp-4]
 0051C796    mov         ebx,dword ptr [eax]
 0051C798    call        dword ptr [ebx+28];TTransformation.sub_0051C8D0
 0051C79B    pop         ebx
 0051C79C    mov         esp,ebp
 0051C79E    pop         ebp
 0051C79F    ret
end;*}

//0051C7A0
{*procedure sub_0051C7A0(?:?; ?:?; ?:?; ?:?);
begin
 0051C7A0    push        ebp
 0051C7A1    mov         ebp,esp
 0051C7A3    add         esp,0FFFFFFEC
 0051C7A6    push        ebx
 0051C7A7    mov         dword ptr [ebp-0C],ecx
 0051C7AA    mov         dword ptr [ebp-8],edx
 0051C7AD    mov         dword ptr [ebp-4],eax
 0051C7B0    fild        dword ptr [ebp-8]
 0051C7B3    fmul        dword ptr ds:[51C800];1.52587890625E-5:Single
 0051C7B9    add         esp,0FFFFFFFC
 0051C7BC    fstp        dword ptr [esp]
 0051C7BF    wait
 0051C7C0    fild        dword ptr [ebp-0C]
 0051C7C3    fmul        dword ptr ds:[51C800];1.52587890625E-5:Single
 0051C7C9    add         esp,0FFFFFFFC
 0051C7CC    fstp        dword ptr [esp]
 0051C7CF    wait
 0051C7D0    lea         ecx,[ebp-14]
 0051C7D3    lea         edx,[ebp-10]
 0051C7D6    mov         eax,dword ptr [ebp-4]
 0051C7D9    mov         ebx,dword ptr [eax]
 0051C7DB    call        dword ptr [ebx+30];TTransformation.sub_0051C804
 0051C7DE    push        dword ptr [ebp-10]
 0051C7E1    call        0051DC10
 0051C7E6    mov         edx,dword ptr [ebp+0C]
 0051C7E9    mov         dword ptr [edx],eax
 0051C7EB    push        dword ptr [ebp-14]
 0051C7EE    call        0051DC10
 0051C7F3    mov         edx,dword ptr [ebp+8]
 0051C7F6    mov         dword ptr [edx],eax
 0051C7F8    pop         ebx
 0051C7F9    mov         esp,ebp
 0051C7FB    pop         ebp
 0051C7FC    ret         8
end;*}

//0051C804
{*procedure sub_0051C804(?:?; ?:?);
begin
 0051C804    push        ebp
 0051C805    mov         ebp,esp
 0051C807    add         esp,0FFFFFEE8
 0051C80D    push        ebx
 0051C80E    xor         ebx,ebx
 0051C810    mov         dword ptr [ebp-10],ebx
 0051C813    mov         dword ptr [ebp-0C],ecx
 0051C816    mov         dword ptr [ebp-8],edx
 0051C819    mov         dword ptr [ebp-4],eax
 0051C81C    xor         eax,eax
 0051C81E    push        ebp
 0051C81F    push        51C884
 0051C824    push        dword ptr fs:[eax]
 0051C827    mov         dword ptr fs:[eax],esp
 0051C82A    lea         eax,[ebp-10]
 0051C82D    push        eax
 0051C82E    lea         edx,[ebp-118]
 0051C834    mov         eax,dword ptr [ebp-4]
 0051C837    mov         eax,dword ptr [eax]
 0051C839    call        TObject.ClassName
 0051C83E    lea         eax,[ebp-118]
 0051C844    mov         dword ptr [ebp-18],eax
 0051C847    mov         byte ptr [ebp-14],4
 0051C84B    lea         edx,[ebp-18]
 0051C84E    xor         ecx,ecx
 0051C850    mov         eax,51C89C;'Forward transformation is not implemented in %s.'
 0051C855    call        0040D630
 0051C85A    mov         ecx,dword ptr [ebp-10]
 0051C85D    mov         dl,1
 0051C85F    mov         eax,[0051C2E0];ETransformNotImplemented
 0051C864    call        Exception.Create;ETransformNotImplemented.Create
 0051C869    call        @RaiseExcept
 0051C86E    xor         eax,eax
 0051C870    pop         edx
 0051C871    pop         ecx
 0051C872    pop         ecx
 0051C873    mov         dword ptr fs:[eax],edx
 0051C876    push        51C88B
 0051C87B    lea         eax,[ebp-10]
 0051C87E    call        @LStrClr
 0051C883    ret
>0051C884    jmp         @HandleFinally
>0051C889    jmp         0051C87B
 0051C88B    pop         ebx
 0051C88C    mov         esp,ebp
 0051C88E    pop         ebp
 0051C88F    ret         8
end;*}

//0051C8D0
{*procedure sub_0051C8D0(?:?; ?:?; ?:?; ?:?);
begin
 0051C8D0    push        ebp
 0051C8D1    mov         ebp,esp
 0051C8D3    add         esp,0FFFFFFEC
 0051C8D6    push        ebx
 0051C8D7    mov         dword ptr [ebp-0C],ecx
 0051C8DA    mov         dword ptr [ebp-8],edx
 0051C8DD    mov         dword ptr [ebp-4],eax
 0051C8E0    lea         eax,[ebp-10]
 0051C8E3    push        eax
 0051C8E4    lea         eax,[ebp-14]
 0051C8E7    push        eax
 0051C8E8    mov         ecx,dword ptr [ebp-0C]
 0051C8EB    shl         ecx,10
 0051C8EE    mov         edx,dword ptr [ebp-8]
 0051C8F1    shl         edx,10
 0051C8F4    mov         eax,dword ptr [ebp-4]
 0051C8F7    mov         ebx,dword ptr [eax]
 0051C8F9    call        dword ptr [ebx+2C];TTransformation.sub_0051C7A0
 0051C8FC    mov         eax,dword ptr [ebp-10]
 0051C8FF    call        00513268
 0051C904    mov         edx,dword ptr [ebp+0C]
 0051C907    mov         dword ptr [edx],eax
 0051C909    mov         eax,dword ptr [ebp-14]
 0051C90C    call        00513268
 0051C911    mov         edx,dword ptr [ebp+8]
 0051C914    mov         dword ptr [edx],eax
 0051C916    pop         ebx
 0051C917    mov         esp,ebp
 0051C919    pop         ebp
 0051C91A    ret         8
end;*}

end.