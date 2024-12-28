//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit111;

interface

uses
  SysUtils, Classes;

type
  TCustomRepaintOptimizer = class(TObject)
  public
    f4:byte;//f4
    f8:TList;//f8
    fC:dword;//fC
    f10:dword;//f10
    destructor Destroy; virtual;//0052374C
    //function v0:?; virtual;//v0//005237C4
    //procedure v4(?:?); virtual;//v4//005237E0
    procedure v8; virtual; abstract;//v8//00403328
    //constructor vC(?:?); virtual;//vC//005236EC
    //procedure v10(?:?); virtual;//v10//005237FC
    //procedure v14(?:?); virtual;//v14//0052383C
    procedure v18; virtual;//v18//00523868
    procedure v1C; virtual;//v1C//00523874
    procedure v20; virtual;//v20//00523880
    procedure v24; virtual;//v24//0052388C
    procedure v28; virtual; abstract;//v28//00403328
    procedure v2C; virtual; abstract;//v2C//00403328
    procedure v30; virtual; abstract;//v30//00403328
    procedure v34; virtual; abstract;//v34//00403328
    procedure v38; virtual; abstract;//v38//00403328
    procedure v3C; virtual; abstract;//v3C//00403328
  end;
    //procedure sub_00523694(?:?; ?:?; ?:?);//00523694
    //constructor sub_005236EC(?:?);//005236EC
    destructor Destroy;//0052374C
    //function sub_005237C4:?;//005237C4
    //procedure sub_005237E0(?:?);//005237E0
    //procedure sub_005237FC(?:?);//005237FC
    //procedure sub_0052383C(?:?);//0052383C
    procedure sub_00523868;//00523868
    procedure sub_00523874;//00523874
    procedure sub_00523880;//00523880
    procedure sub_0052388C;//0052388C

implementation

//00523694
{*procedure sub_00523694(?:?; ?:?; ?:?);
begin
 00523694    push        ebp
 00523695    mov         ebp,esp
 00523697    add         esp,0FFFFFFF4
 0052369A    mov         dword ptr [ebp-0C],ecx
 0052369D    mov         dword ptr [ebp-8],edx
 005236A0    mov         dword ptr [ebp-4],eax
 005236A3    mov         eax,dword ptr [ebp-4]
 005236A6    mov         eax,dword ptr [eax]
 005236A8    mov         edx,dword ptr [ebp-4]
 005236AB    cmp         eax,dword ptr [edx+8]
>005236AE    jle         005236B3
 005236B0    neg         dword ptr [ebp-8]
 005236B3    mov         eax,dword ptr [ebp-4]
 005236B6    mov         eax,dword ptr [eax+4]
 005236B9    mov         edx,dword ptr [ebp-4]
 005236BC    cmp         eax,dword ptr [edx+0C]
>005236BF    jle         005236C4
 005236C1    neg         dword ptr [ebp-0C]
 005236C4    mov         eax,dword ptr [ebp-4]
 005236C7    mov         edx,dword ptr [ebp-8]
 005236CA    sub         dword ptr [eax],edx
 005236CC    mov         eax,dword ptr [ebp-4]
 005236CF    mov         edx,dword ptr [ebp-0C]
 005236D2    sub         dword ptr [eax+4],edx
 005236D5    mov         eax,dword ptr [ebp-4]
 005236D8    mov         edx,dword ptr [ebp-8]
 005236DB    add         dword ptr [eax+8],edx
 005236DE    mov         eax,dword ptr [ebp-4]
 005236E1    mov         edx,dword ptr [ebp-0C]
 005236E4    add         dword ptr [eax+0C],edx
 005236E7    mov         esp,ebp
 005236E9    pop         ebp
 005236EA    ret
end;*}

//005236EC
{*constructor sub_005236EC(?:?);
begin
 005236EC    push        ebp
 005236ED    mov         ebp,esp
 005236EF    add         esp,0FFFFFFF4
 005236F2    test        dl,dl
>005236F4    je          005236FE
 005236F6    add         esp,0FFFFFFF0
 005236F9    call        @ClassCreate
 005236FE    mov         dword ptr [ebp-0C],ecx
 00523701    mov         byte ptr [ebp-5],dl
 00523704    mov         dword ptr [ebp-4],eax
 00523707    mov         dl,1
 00523709    mov         eax,[0041D46C];TList
 0052370E    call        TObject.Create;TList.Create
 00523713    mov         edx,dword ptr [ebp-4]
 00523716    mov         dword ptr [edx+8],eax;TCustomRepaintOptimizer.?f8:TList
 00523719    mov         eax,dword ptr [ebp-4]
 0052371C    mov         edx,dword ptr [ebp+8]
 0052371F    mov         dword ptr [eax+0C],edx;TCustomRepaintOptimizer.?fC:dword
 00523722    mov         eax,dword ptr [ebp-4]
 00523725    mov         edx,dword ptr [ebp-0C]
 00523728    mov         dword ptr [eax+10],edx;TCustomRepaintOptimizer.?f10:dword
 0052372B    mov         eax,dword ptr [ebp-4]
 0052372E    cmp         byte ptr [ebp-5],0
>00523732    je          00523743
 00523734    call        @AfterConstruction
 00523739    pop         dword ptr fs:[0]
 00523740    add         esp,0C
 00523743    mov         eax,dword ptr [ebp-4]
 00523746    mov         esp,ebp
 00523748    pop         ebp
 00523749    ret         4
end;*}

//0052374C
destructor TCustomRepaintOptimizer.Destroy;
begin
{*
 0052374C    push        ebp
 0052374D    mov         ebp,esp
 0052374F    add         esp,0FFFFFFF0
 00523752    call        @BeforeDestruction
 00523757    mov         byte ptr [ebp-5],dl
 0052375A    mov         dword ptr [ebp-4],eax
 0052375D    mov         eax,dword ptr [ebp-4]
 00523760    mov         eax,dword ptr [eax+8]
 00523763    mov         eax,dword ptr [eax+8]
 00523766    dec         eax
 00523767    test        eax,eax
>00523769    jl          00523796
 0052376B    inc         eax
 0052376C    mov         dword ptr [ebp-10],eax
 0052376F    mov         dword ptr [ebp-0C],0
 00523776    mov         eax,dword ptr [ebp-4]
 00523779    mov         eax,dword ptr [eax+8]
 0052377C    mov         edx,dword ptr [ebp-0C]
 0052377F    call        TList.Get
 00523784    mov         edx,eax
 00523786    mov         eax,dword ptr [ebp-4]
 00523789    mov         ecx,dword ptr [eax]
 0052378B    call        dword ptr [ecx+14]
 0052378E    inc         dword ptr [ebp-0C]
 00523791    dec         dword ptr [ebp-10]
>00523794    jne         00523776
 00523796    mov         eax,dword ptr [ebp-4]
 00523799    mov         eax,dword ptr [eax+8]
 0052379C    call        TObject.Free
 005237A1    mov         dl,byte ptr [ebp-5]
 005237A4    and         dl,0FC
 005237A7    mov         eax,dword ptr [ebp-4]
 005237AA    call        TObject.Destroy
 005237AF    cmp         byte ptr [ebp-5],0
>005237B3    jle         005237BD
 005237B5    mov         eax,dword ptr [ebp-4]
 005237B8    call        @ClassDestroy
 005237BD    mov         esp,ebp
 005237BF    pop         ebp
 005237C0    ret
*}
end;

//005237C4
{*function sub_005237C4:?;
begin
 005237C4    push        ebp
 005237C5    mov         ebp,esp
 005237C7    add         esp,0FFFFFFF8
 005237CA    mov         dword ptr [ebp-4],eax
 005237CD    mov         eax,dword ptr [ebp-4]
 005237D0    mov         al,byte ptr [eax+4];TCustomRepaintOptimizer.?f4:byte
 005237D3    mov         byte ptr [ebp-5],al
 005237D6    mov         al,byte ptr [ebp-5]
 005237D9    pop         ecx
 005237DA    pop         ecx
 005237DB    pop         ebp
 005237DC    ret
end;*}

//005237E0
{*procedure sub_005237E0(?:?);
begin
 005237E0    push        ebp
 005237E1    mov         ebp,esp
 005237E3    add         esp,0FFFFFFF8
 005237E6    mov         byte ptr [ebp-5],dl
 005237E9    mov         dword ptr [ebp-4],eax
 005237EC    mov         al,byte ptr [ebp-5]
 005237EF    mov         edx,dword ptr [ebp-4]
 005237F2    mov         byte ptr [edx+4],al;TCustomRepaintOptimizer.?f4:byte
 005237F5    pop         ecx
 005237F6    pop         ecx
 005237F7    pop         ebp
 005237F8    ret
end;*}

//005237FC
{*procedure sub_005237FC(?:?);
begin
 005237FC    push        ebp
 005237FD    mov         ebp,esp
 005237FF    add         esp,0FFFFFFF8
 00523802    mov         dword ptr [ebp-8],edx
 00523805    mov         dword ptr [ebp-4],eax
 00523808    mov         edx,dword ptr [ebp-8]
 0052380B    mov         eax,dword ptr [ebp-4]
 0052380E    mov         eax,dword ptr [eax+8];TCustomRepaintOptimizer.?f8:TList
 00523811    call        004202BC
 00523816    inc         eax
>00523817    jne         00523838
 00523819    mov         edx,dword ptr [ebp-8]
 0052381C    mov         eax,dword ptr [ebp-4]
 0052381F    mov         eax,dword ptr [eax+8];TCustomRepaintOptimizer.?f8:TList
 00523822    call        TList.Add
 00523827    mov         eax,dword ptr [ebp-8]
 0052382A    mov         edx,dword ptr [ebp-4]
 0052382D    mov         dword ptr [eax+34],edx
 00523830    mov         edx,dword ptr [edx]
 00523832    mov         edx,dword ptr [edx+8];TCustomRepaintOptimizer.?f8:TList
 00523835    mov         dword ptr [eax+30],edx
 00523838    pop         ecx
 00523839    pop         ecx
 0052383A    pop         ebp
 0052383B    ret
end;*}

//0052383C
{*procedure sub_0052383C(?:?);
begin
 0052383C    push        ebp
 0052383D    mov         ebp,esp
 0052383F    add         esp,0FFFFFFF8
 00523842    mov         dword ptr [ebp-8],edx
 00523845    mov         dword ptr [ebp-4],eax
 00523848    mov         eax,dword ptr [ebp-8]
 0052384B    xor         edx,edx
 0052384D    mov         dword ptr [eax+30],edx
 00523850    mov         dword ptr [eax+34],edx
 00523853    mov         edx,dword ptr [ebp-8]
 00523856    mov         eax,dword ptr [ebp-4]
 00523859    mov         eax,dword ptr [eax+8];TCustomRepaintOptimizer.?f8:TList
 0052385C    call        004204F0
 00523861    pop         ecx
 00523862    pop         ecx
 00523863    pop         ebp
 00523864    ret
end;*}

//00523868
procedure sub_00523868;
begin
{*
 00523868    push        ebp
 00523869    mov         ebp,esp
 0052386B    push        ecx
 0052386C    mov         dword ptr [ebp-4],eax
 0052386F    pop         ecx
 00523870    pop         ebp
 00523871    ret
*}
end;

//00523874
procedure sub_00523874;
begin
{*
 00523874    push        ebp
 00523875    mov         ebp,esp
 00523877    push        ecx
 00523878    mov         dword ptr [ebp-4],eax
 0052387B    pop         ecx
 0052387C    pop         ebp
 0052387D    ret
*}
end;

//00523880
procedure sub_00523880;
begin
{*
 00523880    push        ebp
 00523881    mov         ebp,esp
 00523883    push        ecx
 00523884    mov         dword ptr [ebp-4],eax
 00523887    pop         ecx
 00523888    pop         ebp
 00523889    ret
*}
end;

//0052388C
procedure sub_0052388C;
begin
{*
 0052388C    push        ebp
 0052388D    mov         ebp,esp
 0052388F    push        ecx
 00523890    mov         dword ptr [ebp-4],eax
 00523893    pop         ecx
 00523894    pop         ebp
 00523895    ret
*}
end;

end.