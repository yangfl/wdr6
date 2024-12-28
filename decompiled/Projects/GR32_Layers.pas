//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32_Layers;

interface

uses
  SysUtils, Classes, GR32_Image;

type
  TLayerCollection = class(TPersistent)
  public
    f4:TList;//f4
    f8:byte;//f8
    fC:dword;//fC
    f10:dword;//f10
    f14:dword;//f14
    //f18:?;//f18
    f1A:word;//f1A
    f1C:dword;//f1C
    f20:dword;//f20
    f24:TCustomImage32;//f24
    f28:dword;//f28
    f2C:TCustomImage32;//f2C
    f48:dword;//f48
    f4A:word;//f4A
    f4C:TCustomImage32;//f4C
    f50:dword;//f50
    f52:word;//f52
    f54:TCustomImage32;//f54
    destructor Destroy; virtual;//00529CF8
    //procedure v8(?:?); virtual;//v8//00529AF8
    //procedure vC(?:?; ?:?); virtual;//vC//0052A25C
    //procedure v10(?:?; ?:?); virtual;//v10//0052A2A4
    procedure sub_00420CBC; dynamic;//00529EC0
    constructor Create;//00529C9C
  end;
  TCustomLayer = class(TNotifiablePersistent)
  public
    f10:word;//f10
    f18:dword;//f18
    f20:dword;//f20
    f23:byte;//f23
    //f30:?;//f30
    f32:word;//f32
    f34:dword;//f34
    //f38:?;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    //f40:?;//f40
    f42:word;//f42
    f44:dword;//f44
    //f58:?;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    procedure BeforeDestruction; virtual;//0052A2E8
    destructor Destroy; virtual;//0052A404
    procedure vC; virtual;//vC//0052A314
    //function v18(?:?; ?:?):?; virtual;//v18//0052A498
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//0052A5A8
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//0052A5E4
    //procedure v24(?:?; ?:?; ?:?; ?:?); virtual;//v24//0052A630
    //procedure v28(?:?); virtual;//v28//0052A67C
    //procedure v2C(?:?); virtual;//v2C//0052A68C
    //procedure v30(?:?); virtual;//v30//0052A69C
    //procedure v34(?:?); virtual;//v34//0052A6F4
    //procedure v38(?:?); virtual;//v38//0052A6AC
    //procedure v3C(?:?); virtual;//v3C//0052A7BC
    //procedure v40(?:?); virtual;//v40//0052A81C
    constructor v44; virtual;//v44//0052A3B4
    procedure sub_00420CBC; dynamic;//0052A524
  end;
    //function sub_00529AAC(?:TLayerCollection; ?:TClass):?;//00529AAC
    //procedure sub_00529AF8(?:?);//00529AF8
    procedure sub_00529BC4(?:TLayerCollection);//00529BC4
    procedure sub_00529BE8(?:TLayerCollection);//00529BE8
    procedure sub_00529C0C(?:TLayerCollection);//00529C0C
    //procedure sub_00529C30(?:?);//00529C30
    destructor Destroy;//00529CF8
    procedure sub_00529D50(?:TLayerCollection);//00529D50
    //function sub_00529DF0(?:TLayerCollection; ?:?; ?:?; ?:?):?;//00529DF0
    procedure sub_00529E54(?:dword);//00529E54
    //function sub_00529E80(?:Pointer):?;//00529E80
    //function sub_00529E9C(?:Pointer; ?:?):?;//00529E9C
    procedure sub_00420CBC;//00529EC0
    //procedure sub_00529EDC(?:?; ?:TCustomLayer);//00529EDC
    //function sub_00529F4C(?:TLayerCollection; ?:?; ?:?; ?:?; ?:?):?;//00529F4C
    //function sub_00529FF4(?:TLayerCollection; ?:?; ?:?; ?:?):?;//00529FF4
    //function sub_0052A078(?:TLayerCollection; ?:?; ?:?; ?:?; ?:?):?;//0052A078
    //procedure sub_0052A120(?:?; ?:?; ?:?; ?:?);//0052A120
    procedure sub_0052A158(?:dword; ?:TCustomLayer);//0052A158
    procedure sub_0052A1DC(?:TLayerCollection; ?:dword);//0052A1DC
    procedure sub_0052A228(?:dword; ?:TCustomLayer);//0052A228
    //procedure sub_0052A25C(?:?; ?:?);//0052A25C
    //procedure sub_0052A2A4(?:?; ?:?);//0052A2A4
    procedure BeforeDestruction;//0052A2E8
    procedure sub_0052A314;//0052A314
    procedure sub_0052A378(?:TCustomLayer);//0052A378
    constructor sub_0052A3B4;//0052A3B4
    destructor Destroy;//0052A404
    //function sub_0052A498(?:?; ?:?):?;//0052A498
    //procedure sub_0052A4B4(?:?; ?:dword);//0052A4B4
    //function sub_0052A4EC(?:TCustomLayer):?;//0052A4EC
    procedure sub_00420CBC;//0052A524
    //function sub_0052A540(?:TCustomLayer):?;//0052A540
    //function sub_0052A55C(?:?; ?:?; ?:?):?;//0052A55C
    //procedure sub_0052A5A8(?:?; ?:?; ?:?; ?:?);//0052A5A8
    //procedure sub_0052A5E4(?:?; ?:?; ?:?);//0052A5E4
    //procedure sub_0052A630(?:?; ?:?; ?:?; ?:?);//0052A630
    //procedure sub_0052A67C(?:?);//0052A67C
    //procedure sub_0052A68C(?:?);//0052A68C
    //procedure sub_0052A69C(?:?);//0052A69C
    //procedure sub_0052A6AC(?:?);//0052A6AC
    //procedure sub_0052A6F4(?:?);//0052A6F4
    //procedure sub_0052A7BC(?:?);//0052A7BC
    //procedure sub_0052A81C(?:?);//0052A81C
    procedure sub_0052A848(?:TCustomLayer);//0052A848
    //function sub_0052A880(?:?):?;//0052A880
    //procedure sub_0052A89C(?:Pointer; ?:?);//0052A89C

implementation

//00529AAC
{*function sub_00529AAC(?:TLayerCollection; ?:TClass):?;
begin
 00529AAC    push        ebp
 00529AAD    mov         ebp,esp
 00529AAF    add         esp,0FFFFFFF4
 00529AB2    mov         dword ptr [ebp-8],edx
 00529AB5    mov         dword ptr [ebp-4],eax
 00529AB8    mov         ecx,dword ptr [ebp-4]
 00529ABB    mov         dl,1
 00529ABD    mov         eax,dword ptr [ebp-8]
 00529AC0    call        dword ptr [eax+44]
 00529AC3    mov         dword ptr [ebp-0C],eax
 00529AC6    mov         eax,dword ptr [ebp-4]
 00529AC9    mov         eax,dword ptr [eax+4]
 00529ACC    mov         edx,dword ptr [eax+8]
 00529ACF    dec         edx
 00529AD0    mov         eax,dword ptr [ebp-0C]
 00529AD3    mov         ecx,dword ptr [eax]
 00529AD5    call        dword ptr [ecx+34]
 00529AD8    mov         eax,dword ptr [ebp-0C]
 00529ADB    call        0052A4EC
 00529AE0    push        eax
 00529AE1    mov         ecx,dword ptr [ebp-0C]
 00529AE4    xor         edx,edx
 00529AE6    mov         eax,dword ptr [ebp-4]
 00529AE9    call        0052A120
 00529AEE    mov         eax,dword ptr [ebp-0C]
 00529AF1    mov         esp,ebp
 00529AF3    pop         ebp
 00529AF4    ret
end;*}

//00529AF8
{*procedure sub_00529AF8(?:?);
begin
 00529AF8    push        ebp
 00529AF9    mov         ebp,esp
 00529AFB    add         esp,0FFFFFFEC
 00529AFE    mov         dword ptr [ebp-8],edx
 00529B01    mov         dword ptr [ebp-4],eax
 00529B04    mov         eax,dword ptr [ebp-8]
 00529B07    mov         edx,dword ptr ds:[529928];TLayerCollection
 00529B0D    call        @IsClass
 00529B12    test        al,al
>00529B14    je          00529BB3
 00529B1A    mov         eax,dword ptr [ebp-4]
 00529B1D    call        00529BC4
 00529B22    xor         eax,eax
 00529B24    push        ebp
 00529B25    push        529BAC
 00529B2A    push        dword ptr fs:[eax]
 00529B2D    mov         dword ptr fs:[eax],esp
>00529B30    jmp         00529B42
 00529B32    mov         eax,dword ptr [ebp-4]
 00529B35    mov         eax,dword ptr [eax+4];TLayerCollection.?f4:TList
 00529B38    call        004203B8
 00529B3D    call        TObject.Free
 00529B42    mov         eax,dword ptr [ebp-4]
 00529B45    mov         eax,dword ptr [eax+4];TLayerCollection.?f4:TList
 00529B48    cmp         dword ptr [eax+8],0
>00529B4C    jg          00529B32
 00529B4E    mov         eax,dword ptr [ebp-8]
 00529B51    call        00529E80
 00529B56    dec         eax
 00529B57    test        eax,eax
>00529B59    jl          00529B96
 00529B5B    inc         eax
 00529B5C    mov         dword ptr [ebp-14],eax
 00529B5F    mov         dword ptr [ebp-0C],0
 00529B66    mov         edx,dword ptr [ebp-0C]
 00529B69    mov         eax,dword ptr [ebp-8]
 00529B6C    call        00529E9C
 00529B71    mov         dword ptr [ebp-10],eax
 00529B74    mov         eax,dword ptr [ebp-10]
 00529B77    call        TObject.ClassType
 00529B7C    mov         edx,eax
 00529B7E    mov         eax,dword ptr [ebp-4]
 00529B81    call        00529AAC
 00529B86    mov         edx,dword ptr [ebp-10]
 00529B89    mov         ecx,dword ptr [eax]
 00529B8B    call        dword ptr [ecx+8]
 00529B8E    inc         dword ptr [ebp-0C]
 00529B91    dec         dword ptr [ebp-14]
>00529B94    jne         00529B66
 00529B96    xor         eax,eax
 00529B98    pop         edx
 00529B99    pop         ecx
 00529B9A    pop         ecx
 00529B9B    mov         dword ptr fs:[eax],edx
 00529B9E    push        529BBE
 00529BA3    mov         eax,dword ptr [ebp-4]
 00529BA6    call        00529D50
 00529BAB    ret
>00529BAC    jmp         @HandleFinally
>00529BB1    jmp         00529BA3
 00529BB3    mov         edx,dword ptr [ebp-8]
 00529BB6    mov         eax,dword ptr [ebp-4]
 00529BB9    call        00420AD4
 00529BBE    mov         esp,ebp
 00529BC0    pop         ebp
 00529BC1    ret
end;*}

//00529BC4
procedure sub_00529BC4(?:TLayerCollection);
begin
{*
 00529BC4    push        ebp
 00529BC5    mov         ebp,esp
 00529BC7    push        ecx
 00529BC8    mov         dword ptr [ebp-4],eax
 00529BCB    mov         eax,dword ptr [ebp-4]
 00529BCE    cmp         dword ptr [eax+10],0;TLayerCollection.?f10:dword
>00529BD2    jne         00529BDC
 00529BD4    mov         eax,dword ptr [ebp-4]
 00529BD7    call        00529C0C
 00529BDC    mov         eax,dword ptr [ebp-4]
 00529BDF    inc         dword ptr [eax+10];TLayerCollection.?f10:dword
 00529BE2    pop         ecx
 00529BE3    pop         ebp
 00529BE4    ret
*}
end;

//00529BE8
procedure sub_00529BE8(?:TLayerCollection);
begin
{*
 00529BE8    push        ebp
 00529BE9    mov         ebp,esp
 00529BEB    push        ecx
 00529BEC    push        ebx
 00529BED    mov         dword ptr [ebp-4],eax
 00529BF0    mov         eax,dword ptr [ebp-4]
 00529BF3    cmp         word ptr [eax+22],0
>00529BF8    je          00529C06
 00529BFA    mov         ebx,dword ptr [ebp-4]
 00529BFD    mov         edx,dword ptr [ebp-4]
 00529C00    mov         eax,dword ptr [ebx+24]
 00529C03    call        dword ptr [ebx+20]
 00529C06    pop         ebx
 00529C07    pop         ecx
 00529C08    pop         ebp
 00529C09    ret
*}
end;

//00529C0C
procedure sub_00529C0C(?:TLayerCollection);
begin
{*
 00529C0C    push        ebp
 00529C0D    mov         ebp,esp
 00529C0F    push        ecx
 00529C10    push        ebx
 00529C11    mov         dword ptr [ebp-4],eax
 00529C14    mov         eax,dword ptr [ebp-4]
 00529C17    cmp         word ptr [eax+1A],0;TLayerCollection.?f1A:word
>00529C1C    je          00529C2A
 00529C1E    mov         ebx,dword ptr [ebp-4]
 00529C21    mov         edx,dword ptr [ebp-4]
 00529C24    mov         eax,dword ptr [ebx+1C];TLayerCollection.?f1C:dword
 00529C27    call        dword ptr [ebx+18]
 00529C2A    pop         ebx
 00529C2B    pop         ecx
 00529C2C    pop         ebp
 00529C2D    ret
*}
end;

//00529C30
{*procedure sub_00529C30(?:?);
begin
 00529C30    push        ebp
 00529C31    mov         ebp,esp
 00529C33    push        ecx
 00529C34    mov         dword ptr [ebp-4],eax
 00529C37    mov         eax,dword ptr [ebp-4]
 00529C3A    call        00529BC4
 00529C3F    xor         eax,eax
 00529C41    push        ebp
 00529C42    push        529C8F
 00529C47    push        dword ptr fs:[eax]
 00529C4A    mov         dword ptr fs:[eax],esp
>00529C4D    jmp         00529C5F
 00529C4F    mov         eax,dword ptr [ebp-4]
 00529C52    mov         eax,dword ptr [eax+4]
 00529C55    call        004203B8
 00529C5A    call        TObject.Free
 00529C5F    mov         eax,dword ptr [ebp-4]
 00529C62    mov         eax,dword ptr [eax+4]
 00529C65    cmp         dword ptr [eax+8],0
>00529C69    jg          00529C4F
 00529C6B    push        0
 00529C6D    xor         ecx,ecx
 00529C6F    mov         dl,3
 00529C71    mov         eax,dword ptr [ebp-4]
 00529C74    call        0052A120
 00529C79    xor         eax,eax
 00529C7B    pop         edx
 00529C7C    pop         ecx
 00529C7D    pop         ecx
 00529C7E    mov         dword ptr fs:[eax],edx
 00529C81    push        529C96
 00529C86    mov         eax,dword ptr [ebp-4]
 00529C89    call        00529D50
 00529C8E    ret
>00529C8F    jmp         @HandleFinally
>00529C94    jmp         00529C86
 00529C96    pop         ecx
 00529C97    pop         ebp
 00529C98    ret
end;*}

//00529C9C
constructor TLayerCollection.Create;
begin
{*
 00529C9C    push        ebp
 00529C9D    mov         ebp,esp
 00529C9F    add         esp,0FFFFFFF4
 00529CA2    test        dl,dl
>00529CA4    je          00529CAE
 00529CA6    add         esp,0FFFFFFF0
 00529CA9    call        @ClassCreate
 00529CAE    mov         dword ptr [ebp-0C],ecx
 00529CB1    mov         byte ptr [ebp-5],dl
 00529CB4    mov         dword ptr [ebp-4],eax
 00529CB7    mov         eax,dword ptr [ebp-4]
 00529CBA    mov         edx,dword ptr [ebp-0C]
 00529CBD    mov         dword ptr [eax+14],edx;TLayerCollection.?f14:dword
 00529CC0    mov         dl,1
 00529CC2    mov         eax,[0041D46C];TList
 00529CC7    call        TObject.Create;TList.Create
 00529CCC    mov         edx,dword ptr [ebp-4]
 00529CCF    mov         dword ptr [edx+4],eax;TLayerCollection.?f4:TList
 00529CD2    mov         eax,dword ptr [ebp-4]
 00529CD5    mov         byte ptr [eax+8],1;TLayerCollection.?f8:byte
 00529CD9    mov         eax,dword ptr [ebp-4]
 00529CDC    cmp         byte ptr [ebp-5],0
>00529CE0    je          00529CF1
 00529CE2    call        @AfterConstruction
 00529CE7    pop         dword ptr fs:[0]
 00529CEE    add         esp,0C
 00529CF1    mov         eax,dword ptr [ebp-4]
 00529CF4    mov         esp,ebp
 00529CF6    pop         ebp
 00529CF7    ret
*}
end;

//00529CF8
destructor TLayerCollection.Destroy;
begin
{*
 00529CF8    push        ebp
 00529CF9    mov         ebp,esp
 00529CFB    add         esp,0FFFFFFF8
 00529CFE    call        @BeforeDestruction
 00529D03    mov         byte ptr [ebp-5],dl
 00529D06    mov         dword ptr [ebp-4],eax
 00529D09    mov         eax,dword ptr [ebp-4]
 00529D0C    mov         dword ptr [eax+10],1
 00529D13    mov         eax,dword ptr [ebp-4]
 00529D16    cmp         dword ptr [eax+4],0
>00529D1A    je          00529D24
 00529D1C    mov         eax,dword ptr [ebp-4]
 00529D1F    call        00529C30
 00529D24    mov         eax,dword ptr [ebp-4]
 00529D27    mov         eax,dword ptr [eax+4]
 00529D2A    call        TObject.Free
 00529D2F    mov         dl,byte ptr [ebp-5]
 00529D32    and         dl,0FC
 00529D35    mov         eax,dword ptr [ebp-4]
 00529D38    call        TPersistent.Destroy
 00529D3D    cmp         byte ptr [ebp-5],0
>00529D41    jle         00529D4B
 00529D43    mov         eax,dword ptr [ebp-4]
 00529D46    call        @ClassDestroy
 00529D4B    pop         ecx
 00529D4C    pop         ecx
 00529D4D    pop         ebp
 00529D4E    ret
*}
end;

//00529D50
procedure sub_00529D50(?:TLayerCollection);
begin
{*
 00529D50    push        ebp
 00529D51    mov         ebp,esp
 00529D53    push        ecx
 00529D54    mov         dword ptr [ebp-4],eax
 00529D57    mov         eax,dword ptr [ebp-4]
 00529D5A    dec         dword ptr [eax+10];TLayerCollection.?f10:dword
 00529D5D    mov         eax,dword ptr [ebp-4]
 00529D60    cmp         dword ptr [eax+10],0;TLayerCollection.?f10:dword
>00529D64    jne         00529D6E
 00529D66    mov         eax,dword ptr [ebp-4]
 00529D69    call        00529BE8
 00529D6E    mov         eax,dword ptr [ebp-4]
 00529D71    cmp         dword ptr [eax+10],0;TLayerCollection.?f10:dword
>00529D75    jge         00529D8B
 00529D77    mov         ecx,1AE
 00529D7C    mov         edx,529D98;'c:\program files\delphi7se\Components\G32\GR32_Layers.pas'
 00529D81    mov         eax,529DDC;'Unpaired EndUpdate'
 00529D86    call        @Assert
 00529D8B    pop         ecx
 00529D8C    pop         ebp
 00529D8D    ret
*}
end;

//00529DF0
{*function sub_00529DF0(?:TLayerCollection; ?:?; ?:?; ?:?):?;
begin
 00529DF0    push        ebp
 00529DF1    mov         ebp,esp
 00529DF3    add         esp,0FFFFFFEC
 00529DF6    mov         dword ptr [ebp-0C],ecx
 00529DF9    mov         dword ptr [ebp-8],edx
 00529DFC    mov         dword ptr [ebp-4],eax
 00529DFF    mov         eax,dword ptr [ebp-4]
 00529E02    call        00529E80
 00529E07    dec         eax
 00529E08    cmp         eax,0
>00529E0B    jl          00529E44
 00529E0D    mov         dword ptr [ebp-14],eax
 00529E10    mov         edx,dword ptr [ebp-14]
 00529E13    mov         eax,dword ptr [ebp-4]
 00529E16    call        00529E9C
 00529E1B    mov         dword ptr [ebp-10],eax
 00529E1E    mov         eax,dword ptr [ebp-10]
 00529E21    mov         eax,dword ptr [eax+20]
 00529E24    and         eax,dword ptr [ebp+8]
>00529E27    je          00529E3B
 00529E29    mov         ecx,dword ptr [ebp-0C]
 00529E2C    mov         edx,dword ptr [ebp-8]
 00529E2F    mov         eax,dword ptr [ebp-10]
 00529E32    call        0052A55C
 00529E37    test        al,al
>00529E39    jne         00529E49
 00529E3B    dec         dword ptr [ebp-14]
 00529E3E    cmp         dword ptr [ebp-14],0FFFFFFFF
>00529E42    jne         00529E10
 00529E44    xor         eax,eax
 00529E46    mov         dword ptr [ebp-10],eax
 00529E49    mov         eax,dword ptr [ebp-10]
 00529E4C    mov         esp,ebp
 00529E4E    pop         ebp
 00529E4F    ret         4
end;*}

//00529E54
procedure sub_00529E54(?:dword);
begin
{*
 00529E54    push        ebp
 00529E55    mov         ebp,esp
 00529E57    push        ecx
 00529E58    push        ebx
 00529E59    mov         dword ptr [ebp-4],eax
 00529E5C    mov         eax,dword ptr [ebp-4]
 00529E5F    cmp         dword ptr [eax+10],0
>00529E63    jne         00529E7B
 00529E65    mov         eax,dword ptr [ebp-4]
 00529E68    cmp         word ptr [eax+2A],0
>00529E6D    je          00529E7B
 00529E6F    mov         ebx,dword ptr [ebp-4]
 00529E72    mov         edx,dword ptr [ebp-4]
 00529E75    mov         eax,dword ptr [ebx+2C]
 00529E78    call        dword ptr [ebx+28]
 00529E7B    pop         ebx
 00529E7C    pop         ecx
 00529E7D    pop         ebp
 00529E7E    ret
*}
end;

//00529E80
{*function sub_00529E80(?:Pointer):?;
begin
 00529E80    push        ebp
 00529E81    mov         ebp,esp
 00529E83    add         esp,0FFFFFFF8
 00529E86    mov         dword ptr [ebp-4],eax
 00529E89    mov         eax,dword ptr [ebp-4]
 00529E8C    mov         eax,dword ptr [eax+4]
 00529E8F    mov         eax,dword ptr [eax+8]
 00529E92    mov         dword ptr [ebp-8],eax
 00529E95    mov         eax,dword ptr [ebp-8]
 00529E98    pop         ecx
 00529E99    pop         ecx
 00529E9A    pop         ebp
 00529E9B    ret
end;*}

//00529E9C
{*function sub_00529E9C(?:Pointer; ?:?):?;
begin
 00529E9C    push        ebp
 00529E9D    mov         ebp,esp
 00529E9F    add         esp,0FFFFFFF4
 00529EA2    mov         dword ptr [ebp-8],edx
 00529EA5    mov         dword ptr [ebp-4],eax
 00529EA8    mov         edx,dword ptr [ebp-8]
 00529EAB    mov         eax,dword ptr [ebp-4]
 00529EAE    mov         eax,dword ptr [eax+4]
 00529EB1    call        TList.Get
 00529EB6    mov         dword ptr [ebp-0C],eax
 00529EB9    mov         eax,dword ptr [ebp-0C]
 00529EBC    mov         esp,ebp
 00529EBE    pop         ebp
 00529EBF    ret
end;*}

//00529EC0
procedure TLayerCollection.sub_00420CBC;
begin
{*
 00529EC0    push        ebp
 00529EC1    mov         ebp,esp
 00529EC3    add         esp,0FFFFFFF8
 00529EC6    mov         dword ptr [ebp-4],eax
 00529EC9    mov         eax,dword ptr [ebp-4]
 00529ECC    mov         eax,dword ptr [eax+14];TLayerCollection.?f14:dword
 00529ECF    mov         dword ptr [ebp-8],eax
 00529ED2    mov         eax,dword ptr [ebp-8]
 00529ED5    pop         ecx
 00529ED6    pop         ecx
 00529ED7    pop         ebp
 00529ED8    ret
*}
end;

//00529EDC
{*procedure sub_00529EDC(?:?; ?:TCustomLayer);
begin
 00529EDC    push        ebp
 00529EDD    mov         ebp,esp
 00529EDF    add         esp,0FFFFFFF4
 00529EE2    mov         dword ptr [ebp-8],edx
 00529EE5    mov         dword ptr [ebp-4],eax
 00529EE8    mov         eax,dword ptr [ebp-4]
 00529EEB    call        00529BC4
 00529EF0    xor         eax,eax
 00529EF2    push        ebp
 00529EF3    push        529F3F
 00529EF8    push        dword ptr fs:[eax]
 00529EFB    mov         dword ptr fs:[eax],esp
 00529EFE    mov         eax,dword ptr [ebp-4]
 00529F01    mov         eax,dword ptr [eax+4]
 00529F04    mov         edx,dword ptr [ebp-8]
 00529F07    call        TList.Add
 00529F0C    mov         dword ptr [ebp-0C],eax
 00529F0F    mov         eax,dword ptr [ebp-8]
 00529F12    mov         edx,dword ptr [ebp-4]
 00529F15    mov         dword ptr [eax+18],edx
 00529F18    mov         eax,dword ptr [ebp-0C]
 00529F1B    push        eax
 00529F1C    mov         ecx,dword ptr [ebp-8]
 00529F1F    xor         edx,edx
 00529F21    mov         eax,dword ptr [ebp-4]
 00529F24    call        0052A120
 00529F29    xor         eax,eax
 00529F2B    pop         edx
 00529F2C    pop         ecx
 00529F2D    pop         ecx
 00529F2E    mov         dword ptr fs:[eax],edx
 00529F31    push        529F46
 00529F36    mov         eax,dword ptr [ebp-4]
 00529F39    call        00529D50
 00529F3E    ret
>00529F3F    jmp         @HandleFinally
>00529F44    jmp         00529F36
 00529F46    mov         esp,ebp
 00529F48    pop         ebp
 00529F49    ret
end;*}

//00529F4C
{*function sub_00529F4C(?:TLayerCollection; ?:?; ?:?; ?:?; ?:?):?;
begin
 00529F4C    push        ebp
 00529F4D    mov         ebp,esp
 00529F4F    add         esp,0FFFFFFF4
 00529F52    push        ebx
 00529F53    mov         byte ptr [ebp-6],cl
 00529F56    mov         byte ptr [ebp-5],dl
 00529F59    mov         dword ptr [ebp-4],eax
 00529F5C    mov         eax,dword ptr [ebp-4]
 00529F5F    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>00529F63    je          00529F70
 00529F65    mov         eax,dword ptr [ebp-4]
 00529F68    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 00529F6B    mov         dword ptr [ebp-0C],eax
>00529F6E    jmp         00529F86
 00529F70    push        20000000
 00529F75    mov         ecx,dword ptr [ebp+8]
 00529F78    mov         edx,dword ptr [ebp+0C]
 00529F7B    mov         eax,dword ptr [ebp-4]
 00529F7E    call        00529DF0
 00529F83    mov         dword ptr [ebp-0C],eax
 00529F86    mov         eax,dword ptr [ebp-0C]
 00529F89    mov         edx,dword ptr [ebp-4]
 00529F8C    cmp         eax,dword ptr [edx+0C];TLayerCollection.?fC:dword
>00529F8F    je          00529FAB
 00529F91    cmp         dword ptr [ebp-0C],0
>00529F95    je          00529FA0
 00529F97    mov         eax,dword ptr [ebp-0C]
 00529F9A    test        byte ptr [eax+23],8
>00529F9E    jne         00529FAB
 00529FA0    mov         edx,dword ptr [ebp-0C]
 00529FA3    mov         eax,dword ptr [ebp-4]
 00529FA6    call        0052A1DC
 00529FAB    mov         eax,dword ptr [ebp-4]
 00529FAE    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>00529FB2    je          00529FE9
 00529FB4    xor         eax,eax
 00529FB6    mov         al,byte ptr [ebp-5]
 00529FB9    mov         al,byte ptr [eax+56D4CC]
 00529FBF    mov         edx,dword ptr [ebp-4]
 00529FC2    mov         edx,dword ptr [edx+0C];TLayerCollection.?fC:dword
 00529FC5    cmp         al,7
>00529FC7    ja          00529FD0
 00529FC9    and         eax,7F
 00529FCC    bts         dword ptr [edx+1C],eax
 00529FD0    mov         eax,dword ptr [ebp+0C]
 00529FD3    push        eax
 00529FD4    mov         eax,dword ptr [ebp+8]
 00529FD7    push        eax
 00529FD8    mov         cl,byte ptr [ebp-6]
 00529FDB    mov         dl,byte ptr [ebp-5]
 00529FDE    mov         eax,dword ptr [ebp-4]
 00529FE1    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 00529FE4    mov         ebx,dword ptr [eax]
 00529FE6    call        dword ptr [ebx+1C]
 00529FE9    mov         eax,dword ptr [ebp-0C]
 00529FEC    pop         ebx
 00529FED    mov         esp,ebp
 00529FEF    pop         ebp
 00529FF0    ret         8
end;*}

//00529FF4
{*function sub_00529FF4(?:TLayerCollection; ?:?; ?:?; ?:?):?;
begin
 00529FF4    push        ebp
 00529FF5    mov         ebp,esp
 00529FF7    add         esp,0FFFFFFF0
 00529FFA    push        ebx
 00529FFB    mov         dword ptr [ebp-0C],ecx
 00529FFE    mov         byte ptr [ebp-5],dl
 0052A001    mov         dword ptr [ebp-4],eax
 0052A004    mov         eax,dword ptr [ebp-4]
 0052A007    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 0052A00A    mov         dword ptr [ebp-10],eax
 0052A00D    cmp         dword ptr [ebp-10],0
>0052A011    jne         0052A029
 0052A013    push        20000000
 0052A018    mov         ecx,dword ptr [ebp+8]
 0052A01B    mov         edx,dword ptr [ebp-0C]
 0052A01E    mov         eax,dword ptr [ebp-4]
 0052A021    call        00529DF0
 0052A026    mov         dword ptr [ebp-10],eax
 0052A029    cmp         dword ptr [ebp-10],0
>0052A02D    je          0052A043
 0052A02F    mov         eax,dword ptr [ebp+8]
 0052A032    push        eax
 0052A033    mov         ecx,dword ptr [ebp-0C]
 0052A036    mov         dl,byte ptr [ebp-5]
 0052A039    mov         eax,dword ptr [ebp-10]
 0052A03C    mov         ebx,dword ptr [eax]
 0052A03E    call        dword ptr [ebx+20]
>0052A041    jmp         0052A06E
 0052A043    mov         eax,dword ptr [ebp-4]
 0052A046    mov         eax,dword ptr [eax+14];TLayerCollection.?f14:dword
 0052A049    mov         edx,dword ptr ds:[47DF94];TControl
 0052A04F    call        @IsClass
 0052A054    test        al,al
>0052A056    je          0052A06E
 0052A058    mov         eax,dword ptr [ebp-4]
 0052A05B    mov         eax,dword ptr [eax+14];TLayerCollection.?f14:dword
 0052A05E    mov         dx,word ptr [eax+78]
 0052A062    mov         eax,[0056E604];^Screen:TScreen
 0052A067    mov         eax,dword ptr [eax]
 0052A069    call        004A9064
 0052A06E    mov         eax,dword ptr [ebp-10]
 0052A071    pop         ebx
 0052A072    mov         esp,ebp
 0052A074    pop         ebp
 0052A075    ret         4
end;*}

//0052A078
{*function sub_0052A078(?:TLayerCollection; ?:?; ?:?; ?:?; ?:?):?;
begin
 0052A078    push        ebp
 0052A079    mov         ebp,esp
 0052A07B    add         esp,0FFFFFFF4
 0052A07E    push        ebx
 0052A07F    mov         byte ptr [ebp-6],cl
 0052A082    mov         byte ptr [ebp-5],dl
 0052A085    mov         dword ptr [ebp-4],eax
 0052A088    mov         eax,dword ptr [ebp-4]
 0052A08B    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 0052A08E    mov         dword ptr [ebp-0C],eax
 0052A091    cmp         dword ptr [ebp-0C],0
>0052A095    jne         0052A0AD
 0052A097    push        20000000
 0052A09C    mov         ecx,dword ptr [ebp+8]
 0052A09F    mov         edx,dword ptr [ebp+0C]
 0052A0A2    mov         eax,dword ptr [ebp-4]
 0052A0A5    call        00529DF0
 0052A0AA    mov         dword ptr [ebp-0C],eax
 0052A0AD    cmp         dword ptr [ebp-0C],0
>0052A0B1    je          0052A0E2
 0052A0B3    xor         eax,eax
 0052A0B5    mov         al,byte ptr [ebp-5]
 0052A0B8    mov         al,byte ptr [eax+56D4CC]
 0052A0BE    mov         edx,dword ptr [ebp-0C]
 0052A0C1    cmp         al,7
>0052A0C3    ja          0052A0CC
 0052A0C5    and         eax,7F
 0052A0C8    btr         dword ptr [edx+1C],eax
 0052A0CC    mov         eax,dword ptr [ebp+0C]
 0052A0CF    push        eax
 0052A0D0    mov         eax,dword ptr [ebp+8]
 0052A0D3    push        eax
 0052A0D4    mov         cl,byte ptr [ebp-6]
 0052A0D7    mov         dl,byte ptr [ebp-5]
 0052A0DA    mov         eax,dword ptr [ebp-0C]
 0052A0DD    mov         ebx,dword ptr [eax]
 0052A0DF    call        dword ptr [ebx+24]
 0052A0E2    mov         eax,dword ptr [ebp-4]
 0052A0E5    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>0052A0E9    je          0052A10E
 0052A0EB    mov         eax,dword ptr [ebp-4]
 0052A0EE    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 0052A0F1    mov         al,byte ptr [eax+1C]
 0052A0F4    and         al,byte ptr ds:[52A118];0x7 gvar_0052A118
 0052A0FA    mov         dl,byte ptr ds:[52A11C];0x0 gvar_0052A11C
 0052A100    cmp         dl,al
>0052A102    jne         0052A10E
 0052A104    xor         edx,edx
 0052A106    mov         eax,dword ptr [ebp-4]
 0052A109    call        0052A1DC
 0052A10E    mov         eax,dword ptr [ebp-0C]
 0052A111    pop         ebx
 0052A112    mov         esp,ebp
 0052A114    pop         ebp
 0052A115    ret         8
end;*}

//0052A120
{*procedure sub_0052A120(?:?; ?:?; ?:?; ?:?);
begin
 0052A120    push        ebp
 0052A121    mov         ebp,esp
 0052A123    add         esp,0FFFFFFF4
 0052A126    push        ebx
 0052A127    mov         dword ptr [ebp-0C],ecx
 0052A12A    mov         byte ptr [ebp-5],dl
 0052A12D    mov         dword ptr [ebp-4],eax
 0052A130    mov         eax,dword ptr [ebp-4]
 0052A133    cmp         word ptr [eax+32],0
>0052A138    je          0052A151
 0052A13A    mov         eax,dword ptr [ebp-0C]
 0052A13D    push        eax
 0052A13E    mov         eax,dword ptr [ebp+8]
 0052A141    push        eax
 0052A142    mov         ebx,dword ptr [ebp-4]
 0052A145    mov         cl,byte ptr [ebp-5]
 0052A148    mov         edx,dword ptr [ebp-4]
 0052A14B    mov         eax,dword ptr [ebx+34]
 0052A14E    call        dword ptr [ebx+30]
 0052A151    pop         ebx
 0052A152    mov         esp,ebp
 0052A154    pop         ebp
 0052A155    ret         4
end;*}

//0052A158
procedure sub_0052A158(?:dword; ?:TCustomLayer);
begin
{*
 0052A158    push        ebp
 0052A159    mov         ebp,esp
 0052A15B    add         esp,0FFFFFFF4
 0052A15E    mov         dword ptr [ebp-8],edx
 0052A161    mov         dword ptr [ebp-4],eax
 0052A164    mov         eax,dword ptr [ebp-4]
 0052A167    call        00529BC4
 0052A16C    xor         eax,eax
 0052A16E    push        ebp
 0052A16F    push        52A1CE
 0052A174    push        dword ptr fs:[eax]
 0052A177    mov         dword ptr fs:[eax],esp
 0052A17A    mov         eax,dword ptr [ebp-4]
 0052A17D    mov         eax,dword ptr [eax+4]
 0052A180    mov         edx,dword ptr [ebp-8]
 0052A183    call        004202BC
 0052A188    mov         dword ptr [ebp-0C],eax
 0052A18B    cmp         dword ptr [ebp-0C],0
>0052A18F    jl          0052A1B8
 0052A191    mov         eax,dword ptr [ebp-4]
 0052A194    mov         eax,dword ptr [eax+4]
 0052A197    mov         edx,dword ptr [ebp-0C]
 0052A19A    call        00420094
 0052A19F    mov         eax,dword ptr [ebp-8]
 0052A1A2    xor         edx,edx
 0052A1A4    mov         dword ptr [eax+18],edx
 0052A1A7    mov         eax,dword ptr [ebp-0C]
 0052A1AA    push        eax
 0052A1AB    mov         ecx,dword ptr [ebp-8]
 0052A1AE    mov         dl,2
 0052A1B0    mov         eax,dword ptr [ebp-4]
 0052A1B3    call        0052A120
 0052A1B8    xor         eax,eax
 0052A1BA    pop         edx
 0052A1BB    pop         ecx
 0052A1BC    pop         ecx
 0052A1BD    mov         dword ptr fs:[eax],edx
 0052A1C0    push        52A1D5
 0052A1C5    mov         eax,dword ptr [ebp-4]
 0052A1C8    call        00529D50
 0052A1CD    ret
>0052A1CE    jmp         @HandleFinally
>0052A1D3    jmp         0052A1C5
 0052A1D5    mov         esp,ebp
 0052A1D7    pop         ebp
 0052A1D8    ret
*}
end;

//0052A1DC
procedure sub_0052A1DC(?:TLayerCollection; ?:dword);
begin
{*
 0052A1DC    push        ebp
 0052A1DD    mov         ebp,esp
 0052A1DF    add         esp,0FFFFFFF8
 0052A1E2    mov         dword ptr [ebp-8],edx
 0052A1E5    mov         dword ptr [ebp-4],eax
 0052A1E8    mov         eax,dword ptr [ebp-8]
 0052A1EB    mov         edx,dword ptr [ebp-4]
 0052A1EE    cmp         eax,dword ptr [edx+0C];TLayerCollection.?fC:dword
>0052A1F1    je          0052A21F
 0052A1F3    mov         eax,dword ptr [ebp-4]
 0052A1F6    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>0052A1FA    je          0052A216
 0052A1FC    mov         eax,dword ptr [ebp-4]
 0052A1FF    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 0052A202    mov         dl,byte ptr ds:[52A224];0x7 gvar_0052A224
 0052A208    not         edx
 0052A20A    and         dl,byte ptr [eax+1C]
 0052A20D    mov         eax,dword ptr [ebp-4]
 0052A210    mov         eax,dword ptr [eax+0C];TLayerCollection.?fC:dword
 0052A213    mov         byte ptr [eax+1C],dl
 0052A216    mov         eax,dword ptr [ebp-8]
 0052A219    mov         edx,dword ptr [ebp-4]
 0052A21C    mov         dword ptr [edx+0C],eax;TLayerCollection.?fC:dword
 0052A21F    pop         ecx
 0052A220    pop         ecx
 0052A221    pop         ebp
 0052A222    ret
*}
end;

//0052A228
procedure sub_0052A228(?:dword; ?:TCustomLayer);
begin
{*
 0052A228    push        ebp
 0052A229    mov         ebp,esp
 0052A22B    add         esp,0FFFFFFF8
 0052A22E    push        ebx
 0052A22F    mov         dword ptr [ebp-8],edx
 0052A232    mov         dword ptr [ebp-4],eax
 0052A235    mov         eax,dword ptr [ebp-4]
 0052A238    cmp         word ptr [eax+3A],0
>0052A23D    je          0052A24E
 0052A23F    mov         ebx,dword ptr [ebp-4]
 0052A242    mov         ecx,dword ptr [ebp-8]
 0052A245    mov         edx,dword ptr [ebp-4]
 0052A248    mov         eax,dword ptr [ebx+3C]
 0052A24B    call        dword ptr [ebx+38]
 0052A24E    mov         eax,dword ptr [ebp-4]
 0052A251    call        00529BE8
 0052A256    pop         ebx
 0052A257    pop         ecx
 0052A258    pop         ecx
 0052A259    pop         ebp
 0052A25A    ret
*}
end;

//0052A25C
{*procedure sub_0052A25C(?:?; ?:?);
begin
 0052A25C    push        ebp
 0052A25D    mov         ebp,esp
 0052A25F    add         esp,0FFFFFFF4
 0052A262    push        ebx
 0052A263    mov         dword ptr [ebp-0C],ecx
 0052A266    mov         dword ptr [ebp-8],edx
 0052A269    mov         dword ptr [ebp-4],eax
 0052A26C    mov         eax,dword ptr [ebp-4]
 0052A26F    cmp         word ptr [eax+4A],0;TLayerCollection.?f4A:word
>0052A274    je          0052A28B
 0052A276    mov         eax,dword ptr [ebp-0C]
 0052A279    push        eax
 0052A27A    mov         ecx,dword ptr [ebp-8]
 0052A27D    mov         ebx,dword ptr [ebp-4]
 0052A280    mov         edx,dword ptr [ebp-4]
 0052A283    mov         eax,dword ptr [ebx+4C];TLayerCollection.?f4C:TCustomImage32
 0052A286    call        dword ptr [ebx+48]
>0052A289    jmp         0052A29D
 0052A28B    mov         eax,dword ptr [ebp-8]
 0052A28E    mov         dword ptr [eax],3F800000
 0052A294    mov         eax,dword ptr [ebp-0C]
 0052A297    mov         dword ptr [eax],3F800000
 0052A29D    pop         ebx
 0052A29E    mov         esp,ebp
 0052A2A0    pop         ebp
 0052A2A1    ret
end;*}

//0052A2A4
{*procedure sub_0052A2A4(?:?; ?:?);
begin
 0052A2A4    push        ebp
 0052A2A5    mov         ebp,esp
 0052A2A7    add         esp,0FFFFFFF4
 0052A2AA    push        ebx
 0052A2AB    mov         dword ptr [ebp-0C],ecx
 0052A2AE    mov         dword ptr [ebp-8],edx
 0052A2B1    mov         dword ptr [ebp-4],eax
 0052A2B4    mov         eax,dword ptr [ebp-4]
 0052A2B7    cmp         word ptr [eax+52],0;TLayerCollection.?f52:word
>0052A2BC    je          0052A2D3
 0052A2BE    mov         eax,dword ptr [ebp-0C]
 0052A2C1    push        eax
 0052A2C2    mov         ecx,dword ptr [ebp-8]
 0052A2C5    mov         ebx,dword ptr [ebp-4]
 0052A2C8    mov         edx,dword ptr [ebp-4]
 0052A2CB    mov         eax,dword ptr [ebx+54];TLayerCollection.?f54:TCustomImage32
 0052A2CE    call        dword ptr [ebx+50]
>0052A2D1    jmp         0052A2E1
 0052A2D3    mov         eax,dword ptr [ebp-8]
 0052A2D6    xor         edx,edx
 0052A2D8    mov         dword ptr [eax],edx
 0052A2DA    mov         eax,dword ptr [ebp-0C]
 0052A2DD    xor         edx,edx
 0052A2DF    mov         dword ptr [eax],edx
 0052A2E1    pop         ebx
 0052A2E2    mov         esp,ebp
 0052A2E4    pop         ebp
 0052A2E5    ret
end;*}

//0052A2E8
procedure TCustomLayer.BeforeDestruction;
begin
{*
 0052A2E8    push        ebp
 0052A2E9    mov         ebp,esp
 0052A2EB    push        ecx
 0052A2EC    push        ebx
 0052A2ED    mov         dword ptr [ebp-4],eax
 0052A2F0    mov         eax,dword ptr [ebp-4]
 0052A2F3    cmp         word ptr [eax+5A],0;TCustomLayer.?f5A:word
>0052A2F8    je          0052A306
 0052A2FA    mov         ebx,dword ptr [ebp-4]
 0052A2FD    mov         edx,dword ptr [ebp-4]
 0052A300    mov         eax,dword ptr [ebx+5C];TCustomLayer.?f5C:dword
 0052A303    call        dword ptr [ebx+58]
 0052A306    mov         eax,dword ptr [ebp-4]
 0052A309    call        TCustomVariantType.BeforeDestruction
 0052A30E    pop         ebx
 0052A30F    pop         ecx
 0052A310    pop         ebp
 0052A311    ret
*}
end;

//0052A314
procedure sub_0052A314;
begin
{*
 0052A314    push        ebp
 0052A315    mov         ebp,esp
 0052A317    push        ecx
 0052A318    mov         dword ptr [ebp-4],eax
 0052A31B    mov         eax,dword ptr [ebp-4]
 0052A31E    cmp         dword ptr [eax+4],0;TCustomLayer..:dword
>0052A322    jg          0052A373
 0052A324    mov         eax,dword ptr [ebp-4]
 0052A327    cmp         dword ptr [eax+18],0;TCustomLayer.?f18:dword
>0052A32B    je          0052A373
 0052A32D    mov         eax,dword ptr [ebp-4]
 0052A330    test        byte ptr [eax+23],10;TCustomLayer.?f23:byte
>0052A334    jne         0052A373
 0052A336    mov         eax,dword ptr [ebp-4]
 0052A339    call        0052A848
 0052A33E    mov         eax,dword ptr [ebp-4]
 0052A341    call        0052A540
 0052A346    test        al,al
>0052A348    je          0052A357
 0052A34A    mov         eax,dword ptr [ebp-4]
 0052A34D    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A350    call        00529BE8
>0052A355    jmp         0052A36B
 0052A357    mov         eax,dword ptr [ebp-4]
 0052A35A    test        byte ptr [eax+23],40;TCustomLayer.?f23:byte
>0052A35E    je          0052A36B
 0052A360    mov         eax,dword ptr [ebp-4]
 0052A363    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A366    call        00529E54
 0052A36B    mov         eax,dword ptr [ebp-4]
 0052A36E    call        0051E1F4
 0052A373    pop         ecx
 0052A374    pop         ebp
 0052A375    ret
*}
end;

//0052A378
procedure sub_0052A378(?:TCustomLayer);
begin
{*
 0052A378    push        ebp
 0052A379    mov         ebp,esp
 0052A37B    push        ecx
 0052A37C    mov         dword ptr [ebp-4],eax
 0052A37F    mov         eax,dword ptr [ebp-4]
 0052A382    cmp         dword ptr [eax+4],0
>0052A386    jg          0052A3B1
 0052A388    mov         eax,dword ptr [ebp-4]
 0052A38B    call        0052A540
 0052A390    test        al,al
>0052A392    je          0052A3B1
 0052A394    mov         eax,dword ptr [ebp-4]
 0052A397    cmp         dword ptr [eax+18],0
>0052A39B    je          0052A3B1
 0052A39D    mov         eax,dword ptr [ebp-4]
 0052A3A0    test        byte ptr [eax+23],10
>0052A3A4    jne         0052A3B1
 0052A3A6    mov         eax,dword ptr [ebp-4]
 0052A3A9    mov         eax,dword ptr [eax+18]
 0052A3AC    call        00529C0C
 0052A3B1    pop         ecx
 0052A3B2    pop         ebp
 0052A3B3    ret
*}
end;

//0052A3B4
constructor sub_0052A3B4;
begin
{*
 0052A3B4    push        ebp
 0052A3B5    mov         ebp,esp
 0052A3B7    add         esp,0FFFFFFF4
 0052A3BA    test        dl,dl
>0052A3BC    je          0052A3C6
 0052A3BE    add         esp,0FFFFFFF0
 0052A3C1    call        @ClassCreate
 0052A3C6    mov         dword ptr [ebp-0C],ecx
 0052A3C9    mov         byte ptr [ebp-5],dl
 0052A3CC    mov         dword ptr [ebp-4],eax
 0052A3CF    mov         edx,dword ptr [ebp-0C]
 0052A3D2    mov         eax,dword ptr [ebp-4]
 0052A3D5    mov         ecx,dword ptr [eax]
 0052A3D7    call        dword ptr [ecx+3C];TCustomLayer.sub_0052A7BC
 0052A3DA    mov         eax,dword ptr [ebp-4]
 0052A3DD    mov         dword ptr [eax+20],80000000;TCustomLayer.?f20:dword
 0052A3E4    mov         eax,dword ptr [ebp-4]
 0052A3E7    cmp         byte ptr [ebp-5],0
>0052A3EB    je          0052A3FC
 0052A3ED    call        @AfterConstruction
 0052A3F2    pop         dword ptr fs:[0]
 0052A3F9    add         esp,0C
 0052A3FC    mov         eax,dword ptr [ebp-4]
 0052A3FF    mov         esp,ebp
 0052A401    pop         ebp
 0052A402    ret
*}
end;

//0052A404
destructor TCustomLayer.Destroy;
begin
{*
 0052A404    push        ebp
 0052A405    mov         ebp,esp
 0052A407    add         esp,0FFFFFFF4
 0052A40A    call        @BeforeDestruction
 0052A40F    mov         byte ptr [ebp-5],dl
 0052A412    mov         dword ptr [ebp-4],eax
 0052A415    mov         eax,dword ptr [ebp-4]
 0052A418    cmp         dword ptr [eax+14],0
>0052A41C    je          0052A46B
 0052A41E    mov         eax,dword ptr [ebp-4]
 0052A421    mov         eax,dword ptr [eax+14]
 0052A424    mov         eax,dword ptr [eax+8]
 0052A427    dec         eax
 0052A428    cmp         eax,0
>0052A42B    jl          0052A458
 0052A42D    mov         dword ptr [ebp-0C],eax
 0052A430    mov         eax,dword ptr [ebp-4]
 0052A433    mov         eax,dword ptr [eax+14]
 0052A436    mov         edx,dword ptr [ebp-0C]
 0052A439    call        TList.Get
 0052A43E    mov         edx,dword ptr [ebp-4]
 0052A441    mov         ecx,dword ptr [eax]
 0052A443    call        dword ptr [ecx+28]
 0052A446    mov         eax,dword ptr [ebp-4]
 0052A449    cmp         dword ptr [eax+14],0
>0052A44D    je          0052A458
 0052A44F    dec         dword ptr [ebp-0C]
 0052A452    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0052A456    jne         0052A430
 0052A458    mov         eax,dword ptr [ebp-4]
 0052A45B    mov         eax,dword ptr [eax+14]
 0052A45E    call        TObject.Free
 0052A463    mov         eax,dword ptr [ebp-4]
 0052A466    xor         edx,edx
 0052A468    mov         dword ptr [eax+14],edx
 0052A46B    xor         edx,edx
 0052A46D    mov         eax,dword ptr [ebp-4]
 0052A470    mov         ecx,dword ptr [eax]
 0052A472    call        dword ptr [ecx+3C]
 0052A475    mov         dl,byte ptr [ebp-5]
 0052A478    and         dl,0FC
 0052A47B    mov         eax,dword ptr [ebp-4]
 0052A47E    call        TPersistent.Destroy
 0052A483    cmp         byte ptr [ebp-5],0
>0052A487    jle         0052A491
 0052A489    mov         eax,dword ptr [ebp-4]
 0052A48C    call        @ClassDestroy
 0052A491    mov         esp,ebp
 0052A493    pop         ebp
 0052A494    ret
*}
end;

//0052A498
{*function sub_0052A498(?:?; ?:?):?;
begin
 0052A498    push        ebp
 0052A499    mov         ebp,esp
 0052A49B    add         esp,0FFFFFFF0
 0052A49E    mov         dword ptr [ebp-10],ecx
 0052A4A1    mov         dword ptr [ebp-0C],edx
 0052A4A4    mov         dword ptr [ebp-4],eax
 0052A4A7    mov         byte ptr [ebp-5],1
 0052A4AB    mov         al,byte ptr [ebp-5]
 0052A4AE    mov         esp,ebp
 0052A4B0    pop         ebp
 0052A4B1    ret
end;*}

//0052A4B4
{*procedure sub_0052A4B4(?:?; ?:dword);
begin
 0052A4B4    push        ebp
 0052A4B5    mov         ebp,esp
 0052A4B7    add         esp,0FFFFFFF8
 0052A4BA    push        ebx
 0052A4BB    mov         dword ptr [ebp-8],edx
 0052A4BE    mov         dword ptr [ebp-4],eax
 0052A4C1    mov         edx,dword ptr [ebp-8]
 0052A4C4    mov         eax,dword ptr [ebp-4]
 0052A4C7    mov         ecx,dword ptr [eax]
 0052A4C9    call        dword ptr [ecx+2C]
 0052A4CC    mov         eax,dword ptr [ebp-4]
 0052A4CF    cmp         word ptr [eax+4A],0
>0052A4D4    je          0052A4E5
 0052A4D6    mov         ebx,dword ptr [ebp-4]
 0052A4D9    mov         ecx,dword ptr [ebp-8]
 0052A4DC    mov         edx,dword ptr [ebp-4]
 0052A4DF    mov         eax,dword ptr [ebx+4C]
 0052A4E2    call        dword ptr [ebx+48]
 0052A4E5    pop         ebx
 0052A4E6    pop         ecx
 0052A4E7    pop         ecx
 0052A4E8    pop         ebp
 0052A4E9    ret
end;*}

//0052A4EC
{*function sub_0052A4EC(?:TCustomLayer):?;
begin
 0052A4EC    push        ebp
 0052A4ED    mov         ebp,esp
 0052A4EF    add         esp,0FFFFFFF8
 0052A4F2    mov         dword ptr [ebp-4],eax
 0052A4F5    mov         eax,dword ptr [ebp-4]
 0052A4F8    cmp         dword ptr [eax+18],0
>0052A4FC    je          0052A514
 0052A4FE    mov         eax,dword ptr [ebp-4]
 0052A501    mov         eax,dword ptr [eax+18]
 0052A504    mov         eax,dword ptr [eax+4]
 0052A507    mov         edx,dword ptr [ebp-4]
 0052A50A    call        004202BC
 0052A50F    mov         dword ptr [ebp-8],eax
>0052A512    jmp         0052A51B
 0052A514    mov         dword ptr [ebp-8],0FFFFFFFF
 0052A51B    mov         eax,dword ptr [ebp-8]
 0052A51E    pop         ecx
 0052A51F    pop         ecx
 0052A520    pop         ebp
 0052A521    ret
end;*}

//0052A524
procedure TCustomLayer.sub_00420CBC;
begin
{*
 0052A524    push        ebp
 0052A525    mov         ebp,esp
 0052A527    add         esp,0FFFFFFF8
 0052A52A    mov         dword ptr [ebp-4],eax
 0052A52D    mov         eax,dword ptr [ebp-4]
 0052A530    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A533    mov         dword ptr [ebp-8],eax
 0052A536    mov         eax,dword ptr [ebp-8]
 0052A539    pop         ecx
 0052A53A    pop         ecx
 0052A53B    pop         ebp
 0052A53C    ret
*}
end;

//0052A540
{*function sub_0052A540(?:TCustomLayer):?;
begin
 0052A540    push        ebp
 0052A541    mov         ebp,esp
 0052A543    add         esp,0FFFFFFF8
 0052A546    mov         dword ptr [ebp-4],eax
 0052A549    mov         eax,dword ptr [ebp-4]
 0052A54C    test        byte ptr [eax+23],80;TCustomLayer.?f23:byte
 0052A550    setne       byte ptr [ebp-5]
 0052A554    mov         al,byte ptr [ebp-5]
 0052A557    pop         ecx
 0052A558    pop         ecx
 0052A559    pop         ebp
 0052A55A    ret
end;*}

//0052A55C
{*function sub_0052A55C(?:?; ?:?; ?:?):?;
begin
 0052A55C    push        ebp
 0052A55D    mov         ebp,esp
 0052A55F    add         esp,0FFFFFFF0
 0052A562    push        ebx
 0052A563    mov         dword ptr [ebp-0C],ecx
 0052A566    mov         dword ptr [ebp-8],edx
 0052A569    mov         dword ptr [ebp-4],eax
 0052A56C    mov         ecx,dword ptr [ebp-0C]
 0052A56F    mov         edx,dword ptr [ebp-8]
 0052A572    mov         eax,dword ptr [ebp-4]
 0052A575    mov         ebx,dword ptr [eax]
 0052A577    call        dword ptr [ebx+18]
 0052A57A    mov         byte ptr [ebp-0D],al
 0052A57D    mov         eax,dword ptr [ebp-4]
 0052A580    cmp         word ptr [eax+2A],0
>0052A585    je          0052A59E
 0052A587    mov         eax,dword ptr [ebp-0C]
 0052A58A    push        eax
 0052A58B    lea         eax,[ebp-0D]
 0052A58E    push        eax
 0052A58F    mov         ebx,dword ptr [ebp-4]
 0052A592    mov         ecx,dword ptr [ebp-8]
 0052A595    mov         edx,dword ptr [ebp-4]
 0052A598    mov         eax,dword ptr [ebx+2C]
 0052A59B    call        dword ptr [ebx+28]
 0052A59E    mov         al,byte ptr [ebp-0D]
 0052A5A1    pop         ebx
 0052A5A2    mov         esp,ebp
 0052A5A4    pop         ebp
 0052A5A5    ret
end;*}

//0052A5A8
{*procedure sub_0052A5A8(?:?; ?:?; ?:?; ?:?);
begin
 0052A5A8    push        ebp
 0052A5A9    mov         ebp,esp
 0052A5AB    add         esp,0FFFFFFF8
 0052A5AE    push        ebx
 0052A5AF    mov         byte ptr [ebp-6],cl
 0052A5B2    mov         byte ptr [ebp-5],dl
 0052A5B5    mov         dword ptr [ebp-4],eax
 0052A5B8    mov         eax,dword ptr [ebp-4]
 0052A5BB    cmp         word ptr [eax+32],0;TCustomLayer.?f32:word
>0052A5C0    je          0052A5DD
 0052A5C2    mov         al,byte ptr [ebp-6]
 0052A5C5    push        eax
 0052A5C6    mov         eax,dword ptr [ebp+0C]
 0052A5C9    push        eax
 0052A5CA    mov         eax,dword ptr [ebp+8]
 0052A5CD    push        eax
 0052A5CE    mov         ebx,dword ptr [ebp-4]
 0052A5D1    mov         cl,byte ptr [ebp-5]
 0052A5D4    mov         edx,dword ptr [ebp-4]
 0052A5D7    mov         eax,dword ptr [ebx+34];TCustomLayer.?f34:dword
 0052A5DA    call        dword ptr [ebx+30]
 0052A5DD    pop         ebx
 0052A5DE    pop         ecx
 0052A5DF    pop         ecx
 0052A5E0    pop         ebp
 0052A5E1    ret         8
end;*}

//0052A5E4
{*procedure sub_0052A5E4(?:?; ?:?; ?:?);
begin
 0052A5E4    push        ebp
 0052A5E5    mov         ebp,esp
 0052A5E7    add         esp,0FFFFFFF4
 0052A5EA    push        ebx
 0052A5EB    mov         dword ptr [ebp-0C],ecx
 0052A5EE    mov         byte ptr [ebp-5],dl
 0052A5F1    mov         dword ptr [ebp-4],eax
 0052A5F4    mov         eax,[0056E604];^Screen:TScreen
 0052A5F9    mov         eax,dword ptr [eax]
 0052A5FB    mov         edx,dword ptr [ebp-4]
 0052A5FE    mov         dx,word ptr [edx+10];TCustomLayer.?f10:word
 0052A602    call        004A9064
 0052A607    mov         eax,dword ptr [ebp-4]
 0052A60A    cmp         word ptr [eax+3A],0;TCustomLayer.?f3A:word
>0052A60F    je          0052A628
 0052A611    mov         eax,dword ptr [ebp-0C]
 0052A614    push        eax
 0052A615    mov         eax,dword ptr [ebp+8]
 0052A618    push        eax
 0052A619    mov         ebx,dword ptr [ebp-4]
 0052A61C    mov         cl,byte ptr [ebp-5]
 0052A61F    mov         edx,dword ptr [ebp-4]
 0052A622    mov         eax,dword ptr [ebx+3C];TCustomLayer.?f3C:dword
 0052A625    call        dword ptr [ebx+38]
 0052A628    pop         ebx
 0052A629    mov         esp,ebp
 0052A62B    pop         ebp
 0052A62C    ret         4
end;*}

//0052A630
{*procedure sub_0052A630(?:?; ?:?; ?:?; ?:?);
begin
 0052A630    push        ebp
 0052A631    mov         ebp,esp
 0052A633    add         esp,0FFFFFFF8
 0052A636    push        ebx
 0052A637    mov         byte ptr [ebp-6],cl
 0052A63A    mov         byte ptr [ebp-5],dl
 0052A63D    mov         dword ptr [ebp-4],eax
 0052A640    mov         eax,[0056E604];^Screen:TScreen
 0052A645    mov         eax,dword ptr [eax]
 0052A647    xor         edx,edx
 0052A649    call        004A9064
 0052A64E    mov         eax,dword ptr [ebp-4]
 0052A651    cmp         word ptr [eax+42],0;TCustomLayer.?f42:word
>0052A656    je          0052A673
 0052A658    mov         al,byte ptr [ebp-6]
 0052A65B    push        eax
 0052A65C    mov         eax,dword ptr [ebp+0C]
 0052A65F    push        eax
 0052A660    mov         eax,dword ptr [ebp+8]
 0052A663    push        eax
 0052A664    mov         ebx,dword ptr [ebp-4]
 0052A667    mov         cl,byte ptr [ebp-5]
 0052A66A    mov         edx,dword ptr [ebp-4]
 0052A66D    mov         eax,dword ptr [ebx+44];TCustomLayer.?f44:dword
 0052A670    call        dword ptr [ebx+40]
 0052A673    pop         ebx
 0052A674    pop         ecx
 0052A675    pop         ecx
 0052A676    pop         ebp
 0052A677    ret         8
end;*}

//0052A67C
{*procedure sub_0052A67C(?:?);
begin
 0052A67C    push        ebp
 0052A67D    mov         ebp,esp
 0052A67F    add         esp,0FFFFFFF8
 0052A682    mov         dword ptr [ebp-8],edx
 0052A685    mov         dword ptr [ebp-4],eax
 0052A688    pop         ecx
 0052A689    pop         ecx
 0052A68A    pop         ebp
 0052A68B    ret
end;*}

//0052A68C
{*procedure sub_0052A68C(?:?);
begin
 0052A68C    push        ebp
 0052A68D    mov         ebp,esp
 0052A68F    add         esp,0FFFFFFF8
 0052A692    mov         dword ptr [ebp-8],edx
 0052A695    mov         dword ptr [ebp-4],eax
 0052A698    pop         ecx
 0052A699    pop         ecx
 0052A69A    pop         ebp
 0052A69B    ret
end;*}

//0052A69C
{*procedure sub_0052A69C(?:?);
begin
 0052A69C    push        ebp
 0052A69D    mov         ebp,esp
 0052A69F    add         esp,0FFFFFFF8
 0052A6A2    mov         dword ptr [ebp-8],edx
 0052A6A5    mov         dword ptr [ebp-4],eax
 0052A6A8    pop         ecx
 0052A6A9    pop         ecx
 0052A6AA    pop         ebp
 0052A6AB    ret
end;*}

//0052A6AC
{*procedure sub_0052A6AC(?:?);
begin
 0052A6AC    push        ebp
 0052A6AD    mov         ebp,esp
 0052A6AF    add         esp,0FFFFFFF8
 0052A6B2    mov         word ptr [ebp-6],dx
 0052A6B6    mov         dword ptr [ebp-4],eax
 0052A6B9    mov         ax,word ptr [ebp-6]
 0052A6BD    mov         edx,dword ptr [ebp-4]
 0052A6C0    cmp         ax,word ptr [edx+10];TCustomLayer.?f10:word
>0052A6C4    je          0052A6EF
 0052A6C6    mov         ax,word ptr [ebp-6]
 0052A6CA    mov         edx,dword ptr [ebp-4]
 0052A6CD    mov         word ptr [edx+10],ax;TCustomLayer.?f10:word
 0052A6D1    mov         eax,dword ptr [ebp-4]
 0052A6D4    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A6D7    mov         eax,dword ptr [eax+0C]
 0052A6DA    cmp         eax,dword ptr [ebp-4]
>0052A6DD    jne         0052A6EF
 0052A6DF    mov         eax,[0056E604];^Screen:TScreen
 0052A6E4    mov         eax,dword ptr [eax]
 0052A6E6    mov         dx,word ptr [ebp-6]
 0052A6EA    call        004A9064
 0052A6EF    pop         ecx
 0052A6F0    pop         ecx
 0052A6F1    pop         ebp
 0052A6F2    ret
end;*}

//0052A6F4
{*procedure sub_0052A6F4(?:?);
begin
 0052A6F4    push        ebp
 0052A6F5    mov         ebp,esp
 0052A6F7    add         esp,0FFFFFFF0
 0052A6FA    mov         dword ptr [ebp-8],edx
 0052A6FD    mov         dword ptr [ebp-4],eax
 0052A700    mov         eax,dword ptr [ebp-4]
 0052A703    call        0052A4EC
 0052A708    mov         dword ptr [ebp-0C],eax
 0052A70B    cmp         dword ptr [ebp-0C],0
>0052A70F    jl          0052A7B5
 0052A715    mov         eax,dword ptr [ebp-0C]
 0052A718    cmp         eax,dword ptr [ebp-8]
>0052A71B    je          0052A7B5
 0052A721    mov         eax,dword ptr [ebp-4]
 0052A724    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A727    mov         dword ptr [ebp-10],eax
 0052A72A    cmp         dword ptr [ebp-8],0
>0052A72E    jge         0052A735
 0052A730    xor         eax,eax
 0052A732    mov         dword ptr [ebp-8],eax
 0052A735    mov         eax,dword ptr [ebp-10]
 0052A738    call        00529E80
 0052A73D    cmp         eax,dword ptr [ebp-8]
>0052A740    jg          0052A74E
 0052A742    mov         eax,dword ptr [ebp-10]
 0052A745    call        00529E80
 0052A74A    dec         eax
 0052A74B    mov         dword ptr [ebp-8],eax
 0052A74E    mov         eax,dword ptr [ebp-8]
 0052A751    cmp         eax,dword ptr [ebp-0C]
>0052A754    je          0052A7B5
 0052A756    mov         eax,dword ptr [ebp-4]
 0052A759    call        0052A540
 0052A75E    test        al,al
>0052A760    je          0052A76A
 0052A762    mov         eax,dword ptr [ebp-10]
 0052A765    call        00529BC4
 0052A76A    xor         eax,eax
 0052A76C    push        ebp
 0052A76D    push        52A7AE
 0052A772    push        dword ptr fs:[eax]
 0052A775    mov         dword ptr fs:[eax],esp
 0052A778    mov         eax,dword ptr [ebp-4]
 0052A77B    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A77E    mov         eax,dword ptr [eax+4]
 0052A781    mov         ecx,dword ptr [ebp-8]
 0052A784    mov         edx,dword ptr [ebp-0C]
 0052A787    call        004203DC
 0052A78C    xor         eax,eax
 0052A78E    pop         edx
 0052A78F    pop         ecx
 0052A790    pop         ecx
 0052A791    mov         dword ptr fs:[eax],edx
 0052A794    push        52A7B5
 0052A799    mov         eax,dword ptr [ebp-4]
 0052A79C    call        0052A540
 0052A7A1    test        al,al
>0052A7A3    je          0052A7AD
 0052A7A5    mov         eax,dword ptr [ebp-10]
 0052A7A8    call        00529D50
 0052A7AD    ret
>0052A7AE    jmp         @HandleFinally
>0052A7B3    jmp         0052A799
 0052A7B5    mov         esp,ebp
 0052A7B7    pop         ebp
 0052A7B8    ret
end;*}

//0052A7BC
{*procedure sub_0052A7BC(?:?);
begin
 0052A7BC    push        ebp
 0052A7BD    mov         ebp,esp
 0052A7BF    add         esp,0FFFFFFF8
 0052A7C2    mov         dword ptr [ebp-8],edx
 0052A7C5    mov         dword ptr [ebp-4],eax
 0052A7C8    mov         eax,dword ptr [ebp-4]
 0052A7CB    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A7CE    cmp         eax,dword ptr [ebp-8]
>0052A7D1    je          0052A816
 0052A7D3    mov         eax,dword ptr [ebp-4]
 0052A7D6    cmp         dword ptr [eax+18],0;TCustomLayer.?f18:dword
>0052A7DA    je          0052A805
 0052A7DC    mov         eax,dword ptr [ebp-4]
 0052A7DF    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A7E2    mov         eax,dword ptr [eax+0C]
 0052A7E5    cmp         eax,dword ptr [ebp-4]
>0052A7E8    jne         0052A7F7
 0052A7EA    xor         edx,edx
 0052A7EC    mov         eax,dword ptr [ebp-4]
 0052A7EF    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A7F2    call        0052A1DC
 0052A7F7    mov         edx,dword ptr [ebp-4]
 0052A7FA    mov         eax,dword ptr [ebp-4]
 0052A7FD    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A800    call        0052A158
 0052A805    cmp         dword ptr [ebp-8],0
>0052A809    je          0052A816
 0052A80B    mov         edx,dword ptr [ebp-4]
 0052A80E    mov         eax,dword ptr [ebp-8]
 0052A811    call        00529EDC
 0052A816    pop         ecx
 0052A817    pop         ecx
 0052A818    pop         ebp
 0052A819    ret
end;*}

//0052A81C
{*procedure sub_0052A81C(?:?);
begin
 0052A81C    push        ebp
 0052A81D    mov         ebp,esp
 0052A81F    add         esp,0FFFFFFF8
 0052A822    mov         dword ptr [ebp-8],edx
 0052A825    mov         dword ptr [ebp-4],eax
 0052A828    mov         eax,dword ptr [ebp-4]
 0052A82B    call        0052A378
 0052A830    mov         eax,dword ptr [ebp-8]
 0052A833    mov         edx,dword ptr [ebp-4]
 0052A836    mov         dword ptr [edx+20],eax;TCustomLayer.?f20:dword
 0052A839    mov         eax,dword ptr [ebp-4]
 0052A83C    mov         edx,dword ptr [eax]
 0052A83E    call        dword ptr [edx+0C];TCustomLayer.sub_0052A314
 0052A841    pop         ecx
 0052A842    pop         ecx
 0052A843    pop         ebp
 0052A844    ret
end;*}

//0052A848
procedure sub_0052A848(?:TCustomLayer);
begin
{*
 0052A848    push        ebp
 0052A849    mov         ebp,esp
 0052A84B    push        ecx
 0052A84C    mov         dword ptr [ebp-4],eax
 0052A84F    mov         eax,dword ptr [ebp-4]
 0052A852    cmp         dword ptr [eax+18],0;TCustomLayer.?f18:dword
>0052A856    je          0052A87B
 0052A858    mov         eax,dword ptr [ebp-4]
 0052A85B    call        0052A540
 0052A860    test        al,al
>0052A862    jne         0052A86D
 0052A864    mov         eax,dword ptr [ebp-4]
 0052A867    test        byte ptr [eax+23],2;TCustomLayer.?f23:byte
>0052A86B    je          0052A87B
 0052A86D    mov         edx,dword ptr [ebp-4]
 0052A870    mov         eax,dword ptr [ebp-4]
 0052A873    mov         eax,dword ptr [eax+18];TCustomLayer.?f18:dword
 0052A876    call        0052A228
 0052A87B    pop         ecx
 0052A87C    pop         ebp
 0052A87D    ret
*}
end;

//0052A880
{*function sub_0052A880(?:?):?;
begin
 0052A880    push        ebp
 0052A881    mov         ebp,esp
 0052A883    add         esp,0FFFFFFF8
 0052A886    mov         dword ptr [ebp-4],eax
 0052A889    mov         eax,dword ptr [ebp-4]
 0052A88C    test        byte ptr [eax+23],4
 0052A890    setne       byte ptr [ebp-5]
 0052A894    mov         al,byte ptr [ebp-5]
 0052A897    pop         ecx
 0052A898    pop         ecx
 0052A899    pop         ebp
 0052A89A    ret
end;*}

//0052A89C
{*procedure sub_0052A89C(?:Pointer; ?:?);
begin
 0052A89C    push        ebp
 0052A89D    mov         ebp,esp
 0052A89F    add         esp,0FFFFFFF8
 0052A8A2    mov         byte ptr [ebp-5],dl
 0052A8A5    mov         dword ptr [ebp-4],eax
 0052A8A8    cmp         byte ptr [ebp-5],0
>0052A8AC    je          0052A8BA
 0052A8AE    mov         eax,dword ptr [ebp-4]
 0052A8B1    or          dword ptr [eax+20],4000000
>0052A8B8    jmp         0052A8C4
 0052A8BA    mov         eax,dword ptr [ebp-4]
 0052A8BD    and         dword ptr [eax+20],0FBFFFFFF
 0052A8C4    pop         ecx
 0052A8C5    pop         ecx
 0052A8C6    pop         ebp
 0052A8C7    ret
end;*}

end.