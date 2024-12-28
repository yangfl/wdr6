//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ShadowWnd;

interface

uses
  SysUtils, Classes, Controls, Graphics;

type
  TShadowWindow = class(TCustomControl)
  public
    FRGB:COLORREF;//f210
    H:Word;//f214
    L:Word;//f216
    S:Word;//f218
    FCachedFade:Integer;//f21C
    FCachedclr:COLORREF;//f220
    FCachedHue:Word;//f224
    FCachedSat:Word;//f226
    FCachedLum:Word;//f228
    FControl:TControl;//f22C
    FDesktop:TBitmap;//f230
    FSide:TControlSide;//f234
    destructor Destroy; virtual;//004AE164
    //procedure v10(?:?; ?:?); virtual;//v10//004AE1F8
    constructor v2C; virtual;//v2C//004AE054
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004AE504
    //procedure v98(?:?); virtual;//v98//004AE1A4
    procedure vC8; virtual;//vC8//004AE244
    //constructor Create(?:?); virtual;//vCC//004AE10C
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004AE3C4
  end;
    constructor sub_004AE054;//004AE054
    //constructor Create(?:?);//004AE10C
    destructor Destroy;//004AE164
    //procedure sub_004AE1A4(?:?);//004AE1A4
    //procedure sub_004AE1F8(?:?; ?:?);//004AE1F8
    procedure sub_004AE244;//004AE244
    procedure sub_004AE290(?:TShadowWindow; ?:TCustomActionPopupMenu);//004AE290
    //procedure WMEraseBkgnd(?:?);//004AE3C4
    //procedure sub_004AE3DC(?:Integer; ?:?; ?:?);//004AE3DC
    //procedure sub_004AE448(?:COLORREF; ?:?; ?:?; ?:?; ?:?);//004AE448
    //procedure sub_004AE504(?:?; ?:?; ?:?; ?:?);//004AE504

implementation

//004AE054
constructor sub_004AE054;
begin
{*
 004AE054    push        ebp
 004AE055    mov         ebp,esp
 004AE057    add         esp,0FFFFFFF4
 004AE05A    test        dl,dl
>004AE05C    je          004AE066
 004AE05E    add         esp,0FFFFFFF0
 004AE061    call        @ClassCreate
 004AE066    mov         dword ptr [ebp-0C],ecx
 004AE069    mov         byte ptr [ebp-5],dl
 004AE06C    mov         dword ptr [ebp-4],eax
 004AE06F    mov         ecx,dword ptr [ebp-0C]
 004AE072    xor         edx,edx
 004AE074    mov         eax,dword ptr [ebp-4]
 004AE077    call        0048E4F0
 004AE07C    mov         eax,dword ptr [ebp-4]
 004AE07F    mov         byte ptr [eax+234],0;TShadowWindow.FSide:TControlSide
 004AE086    mov         dl,1
 004AE088    mov         eax,[0042CF48];TBitmap
 004AE08D    call        TBitmap.Create;TBitmap.Create
 004AE092    mov         edx,dword ptr [ebp-4]
 004AE095    mov         dword ptr [edx+230],eax;TShadowWindow.FDesktop:TBitmap
 004AE09B    mov         eax,dword ptr [ebp-4]
 004AE09E    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE0A4    mov         dl,1
 004AE0A6    mov         ecx,dword ptr [eax]
 004AE0A8    call        dword ptr [ecx+6C];TBitmap.sub_00435A0C
 004AE0AB    mov         eax,dword ptr [ebp-4]
 004AE0AE    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE0B4    mov         dl,6
 004AE0B6    call        00435E00
 004AE0BB    mov         eax,dword ptr [ebp-4]
 004AE0BE    call        00483F88
 004AE0C3    mov         eax,dword ptr [ebp-4]
 004AE0C6    xor         edx,edx
 004AE0C8    mov         dword ptr [eax+220],edx;TShadowWindow.FCachedclr:COLORREF
 004AE0CE    mov         eax,dword ptr [ebp-4]
 004AE0D1    xor         edx,edx
 004AE0D3    mov         dword ptr [eax+21C],edx;TShadowWindow.FCachedFade:Integer
 004AE0D9    mov         eax,[0056E3C0];^Application:TApplication
 004AE0DE    mov         eax,dword ptr [eax]
 004AE0E0    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 004AE0E3    mov         eax,dword ptr [ebp-4]
 004AE0E6    call        00488B38
 004AE0EB    mov         eax,dword ptr [ebp-4]
 004AE0EE    cmp         byte ptr [ebp-5],0
>004AE0F2    je          004AE103
 004AE0F4    call        @AfterConstruction
 004AE0F9    pop         dword ptr fs:[0]
 004AE100    add         esp,0C
 004AE103    mov         eax,dword ptr [ebp-4]
 004AE106    mov         esp,ebp
 004AE108    pop         ebp
 004AE109    ret
*}
end;

//004AE10C
{*constructor TShadowWindow.Create(?:?);
begin
 004AE10C    push        ebp
 004AE10D    mov         ebp,esp
 004AE10F    add         esp,0FFFFFFF4
 004AE112    push        ebx
 004AE113    test        dl,dl
>004AE115    je          004AE11F
 004AE117    add         esp,0FFFFFFF0
 004AE11A    call        @ClassCreate
 004AE11F    mov         dword ptr [ebp-0C],ecx
 004AE122    mov         byte ptr [ebp-5],dl
 004AE125    mov         dword ptr [ebp-4],eax
 004AE128    mov         ecx,dword ptr [ebp-0C]
 004AE12B    xor         edx,edx
 004AE12D    mov         eax,dword ptr [ebp-4]
 004AE130    mov         ebx,dword ptr [eax]
 004AE132    call        dword ptr [ebx+2C];TShadowWindow.sub_004AE054
 004AE135    mov         eax,dword ptr [ebp-4]
 004AE138    mov         dl,byte ptr [ebp+8]
 004AE13B    mov         byte ptr [eax+234],dl;TShadowWindow.FSide:TControlSide
 004AE141    mov         eax,dword ptr [ebp-4]
 004AE144    cmp         byte ptr [ebp-5],0
>004AE148    je          004AE159
 004AE14A    call        @AfterConstruction
 004AE14F    pop         dword ptr fs:[0]
 004AE156    add         esp,0C
 004AE159    mov         eax,dword ptr [ebp-4]
 004AE15C    pop         ebx
 004AE15D    mov         esp,ebp
 004AE15F    pop         ebp
 004AE160    ret         4
end;*}

//004AE164
destructor TShadowWindow.Destroy;
begin
{*
 004AE164    push        ebp
 004AE165    mov         ebp,esp
 004AE167    add         esp,0FFFFFFF8
 004AE16A    call        @BeforeDestruction
 004AE16F    mov         byte ptr [ebp-5],dl
 004AE172    mov         dword ptr [ebp-4],eax
 004AE175    mov         eax,dword ptr [ebp-4]
 004AE178    mov         eax,dword ptr [eax+230]
 004AE17E    call        TObject.Free
 004AE183    mov         dl,byte ptr [ebp-5]
 004AE186    and         dl,0FC
 004AE189    mov         eax,dword ptr [ebp-4]
 004AE18C    call        TCustomControl.Destroy
 004AE191    cmp         byte ptr [ebp-5],0
>004AE195    jle         004AE19F
 004AE197    mov         eax,dword ptr [ebp-4]
 004AE19A    call        @ClassDestroy
 004AE19F    pop         ecx
 004AE1A0    pop         ecx
 004AE1A1    pop         ebp
 004AE1A2    ret
*}
end;

//004AE1A4
{*procedure sub_004AE1A4(?:?);
begin
 004AE1A4    push        ebp
 004AE1A5    mov         ebp,esp
 004AE1A7    add         esp,0FFFFFFF8
 004AE1AA    mov         dword ptr [ebp-8],edx
 004AE1AD    mov         dword ptr [ebp-4],eax
 004AE1B0    mov         edx,dword ptr [ebp-8]
 004AE1B3    mov         eax,dword ptr [ebp-4]
 004AE1B6    call        00488034
 004AE1BB    mov         eax,dword ptr [ebp-4]
 004AE1BE    cmp         dword ptr [eax+190],0;TShadowWindow.FParentWindow:HWND
>004AE1C5    je          004AE1E0
 004AE1C7    mov         eax,dword ptr [ebp-8]
 004AE1CA    mov         eax,dword ptr [eax+4]
 004AE1CD    and         eax,0BFFFFFFF
 004AE1D2    or          eax,80000000
 004AE1D7    or          eax,0
 004AE1DA    mov         edx,dword ptr [ebp-8]
 004AE1DD    mov         dword ptr [edx+4],eax
 004AE1E0    mov         eax,dword ptr [ebp-8]
 004AE1E3    mov         dword ptr [eax+24],809
 004AE1EA    mov         eax,dword ptr [ebp-8]
 004AE1ED    or          dword ptr [eax+8],8
 004AE1F1    pop         ecx
 004AE1F2    pop         ecx
 004AE1F3    pop         ebp
 004AE1F4    ret
end;*}

//004AE1F8
{*procedure sub_004AE1F8(?:?; ?:?);
begin
 004AE1F8    push        ebp
 004AE1F9    mov         ebp,esp
 004AE1FB    add         esp,0FFFFFFF4
 004AE1FE    mov         byte ptr [ebp-9],cl
 004AE201    mov         dword ptr [ebp-8],edx
 004AE204    mov         dword ptr [ebp-4],eax
 004AE207    mov         cl,byte ptr [ebp-9]
 004AE20A    mov         edx,dword ptr [ebp-8]
 004AE20D    mov         eax,dword ptr [ebp-4]
 004AE210    call        004827F4
 004AE215    cmp         byte ptr [ebp-9],1
>004AE219    jne         004AE23E
 004AE21B    mov         eax,dword ptr [ebp-8]
 004AE21E    mov         edx,dword ptr [ebp-4]
 004AE221    cmp         eax,dword ptr [edx+22C];TShadowWindow.FControl:TControl
>004AE227    jne         004AE23E
 004AE229    mov         eax,dword ptr [ebp-4]
 004AE22C    xor         edx,edx
 004AE22E    mov         dword ptr [eax+22C],edx;TShadowWindow.FControl:TControl
 004AE234    xor         edx,edx
 004AE236    mov         eax,dword ptr [ebp-4]
 004AE239    call        TImage.SetVisible
 004AE23E    mov         esp,ebp
 004AE240    pop         ebp
 004AE241    ret
end;*}

//004AE244
procedure sub_004AE244;
begin
{*
 004AE244    push        ebp
 004AE245    mov         ebp,esp
 004AE247    add         esp,0FFFFFFEC
 004AE24A    mov         dword ptr [ebp-4],eax
 004AE24D    mov         eax,dword ptr [ebp-4]
 004AE250    call        0048E67C
 004AE255    mov         eax,dword ptr [ebp-4]
 004AE258    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE25B    push        eax
 004AE25C    lea         eax,[ebp-14]
 004AE25F    push        eax
 004AE260    mov         eax,dword ptr [ebp-4]
 004AE263    mov         ecx,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE266    xor         edx,edx
 004AE268    xor         eax,eax
 004AE26A    call        0041E714
 004AE26F    lea         edx,[ebp-14]
 004AE272    mov         eax,dword ptr [ebp-4]
 004AE275    mov         ecx,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE27B    mov         eax,dword ptr [ebp-4]
 004AE27E    mov         eax,dword ptr [eax+208];TShadowWindow......................................................
 004AE284    call        0042F2BC
 004AE289    mov         esp,ebp
 004AE28B    pop         ebp
 004AE28C    ret
*}
end;

//004AE290
procedure sub_004AE290(?:TShadowWindow; ?:TCustomActionPopupMenu);
begin
{*
 004AE290    push        ebp
 004AE291    mov         ebp,esp
 004AE293    add         esp,0FFFFFFE0
 004AE296    push        ebx
 004AE297    mov         dword ptr [ebp-8],edx
 004AE29A    mov         dword ptr [ebp-4],eax
 004AE29D    mov         eax,dword ptr [ebp-4]
 004AE2A0    cmp         dword ptr [eax+22C],0
>004AE2A7    je          004AE2BA
 004AE2A9    mov         edx,dword ptr [ebp-4]
 004AE2AC    mov         eax,dword ptr [ebp-4]
 004AE2AF    mov         eax,dword ptr [eax+22C]
 004AE2B5    call        0042A61C
 004AE2BA    mov         eax,dword ptr [ebp-8]
 004AE2BD    mov         edx,dword ptr [ebp-4]
 004AE2C0    mov         dword ptr [edx+22C],eax
 004AE2C6    mov         eax,dword ptr [ebp-4]
 004AE2C9    cmp         dword ptr [eax+22C],0
>004AE2D0    je          004AE3BC
 004AE2D6    mov         edx,dword ptr [ebp-4]
 004AE2D9    mov         eax,dword ptr [ebp-4]
 004AE2DC    mov         eax,dword ptr [eax+22C]
 004AE2E2    call        0042A2CC
 004AE2E7    lea         edx,[ebp-20]
 004AE2EA    mov         eax,dword ptr [ebp-4]
 004AE2ED    mov         eax,dword ptr [eax+22C]
 004AE2F3    call        00482ECC
 004AE2F8    mov         eax,dword ptr [ebp-20]
 004AE2FB    mov         dword ptr [ebp-10],eax
 004AE2FE    mov         eax,dword ptr [ebp-1C]
 004AE301    mov         dword ptr [ebp-0C],eax
 004AE304    mov         eax,dword ptr [ebp-4]
 004AE307    mov         eax,dword ptr [eax+22C]
 004AE30D    cmp         dword ptr [eax+30],0
>004AE311    je          004AE338
 004AE313    lea         edx,[ebp-20]
 004AE316    mov         eax,dword ptr [ebp-4]
 004AE319    mov         eax,dword ptr [eax+22C]
 004AE31F    mov         ecx,dword ptr [eax]
 004AE321    call        dword ptr [ecx+44]
 004AE324    lea         edx,[ebp-20]
 004AE327    lea         ecx,[ebp-10]
 004AE32A    mov         eax,dword ptr [ebp-4]
 004AE32D    mov         eax,dword ptr [eax+22C]
 004AE333    call        TControl.ClientToScreen
 004AE338    mov         eax,dword ptr [ebp-4]
 004AE33B    call        00483F88
 004AE340    mov         eax,dword ptr [ebp-4]
 004AE343    mov         al,byte ptr [eax+234]
 004AE349    sub         al,1
>004AE34B    jb          004AE351
>004AE34D    je          004AE385
>004AE34F    jmp         004AE3B4
 004AE351    push        4
 004AE353    mov         eax,dword ptr [ebp-4]
 004AE356    mov         eax,dword ptr [eax+22C]
 004AE35C    mov         eax,dword ptr [eax+4C]
 004AE35F    sub         eax,4
 004AE362    push        eax
 004AE363    mov         ecx,dword ptr [ebp-0C]
 004AE366    add         ecx,4
 004AE369    mov         eax,dword ptr [ebp-4]
 004AE36C    mov         eax,dword ptr [eax+22C]
 004AE372    mov         edx,dword ptr [eax+48]
 004AE375    add         edx,dword ptr [ebp-10]
 004AE378    mov         eax,dword ptr [ebp-4]
 004AE37B    mov         ebx,dword ptr [eax]
 004AE37D    call        dword ptr [ebx+84]
>004AE383    jmp         004AE3B4
 004AE385    mov         eax,dword ptr [ebp-4]
 004AE388    mov         eax,dword ptr [eax+22C]
 004AE38E    mov         eax,dword ptr [eax+48]
 004AE391    push        eax
 004AE392    push        4
 004AE394    mov         eax,dword ptr [ebp-4]
 004AE397    mov         eax,dword ptr [eax+22C]
 004AE39D    mov         ecx,dword ptr [eax+4C]
 004AE3A0    add         ecx,dword ptr [ebp-0C]
 004AE3A3    mov         edx,dword ptr [ebp-10]
 004AE3A6    add         edx,4
 004AE3A9    mov         eax,dword ptr [ebp-4]
 004AE3AC    mov         ebx,dword ptr [eax]
 004AE3AE    call        dword ptr [ebx+84]
 004AE3B4    mov         eax,dword ptr [ebp-4]
 004AE3B7    call        00483F9C
 004AE3BC    pop         ebx
 004AE3BD    mov         esp,ebp
 004AE3BF    pop         ebp
 004AE3C0    ret
*}
end;

//004AE3C4
{*procedure TShadowWindow.WMEraseBkgnd(?:?);
begin
 004AE3C4    push        ebp
 004AE3C5    mov         ebp,esp
 004AE3C7    add         esp,0FFFFFFF8
 004AE3CA    mov         dword ptr [ebp-8],edx
 004AE3CD    mov         dword ptr [ebp-4],eax
 004AE3D0    mov         eax,dword ptr [ebp-8]
 004AE3D3    xor         edx,edx
 004AE3D5    mov         dword ptr [eax+0C],edx
 004AE3D8    pop         ecx
 004AE3D9    pop         ecx
 004AE3DA    pop         ebp
 004AE3DB    ret
end;*}

//004AE3DC
{*procedure sub_004AE3DC(?:Integer; ?:?; ?:?);
begin
 004AE3DC    push        ebp
 004AE3DD    mov         ebp,esp
 004AE3DF    add         esp,0FFFFFFF4
 004AE3E2    mov         dword ptr [ebp-8],edx
 004AE3E5    mov         dword ptr [ebp-4],eax
 004AE3E8    mov         eax,dword ptr [ebp+8]
 004AE3EB    mov         eax,dword ptr [eax-4]
 004AE3EE    mov         cx,word ptr [eax+218]
 004AE3F5    mov         eax,dword ptr [ebp+8]
 004AE3F8    mov         eax,dword ptr [eax-4]
 004AE3FB    mov         dx,word ptr [eax+216]
 004AE402    add         dx,word ptr [ebp-8]
 004AE406    mov         eax,dword ptr [ebp+8]
 004AE409    mov         eax,dword ptr [eax-4]
 004AE40C    mov         ax,word ptr [eax+214]
 004AE413    call        004AD4B8
 004AE418    mov         dword ptr [ebp-0C],eax
 004AE41B    mov         eax,dword ptr [ebp-0C]
 004AE41E    call        00408624
 004AE423    mov         edx,dword ptr [ebp-4]
 004AE426    mov         byte ptr [edx],al
 004AE428    mov         eax,dword ptr [ebp-0C]
 004AE42B    call        00408608
 004AE430    mov         edx,dword ptr [ebp-4]
 004AE433    mov         byte ptr [edx+1],al
 004AE436    mov         eax,dword ptr [ebp-0C]
 004AE439    call        004085F0
 004AE43E    mov         edx,dword ptr [ebp-4]
 004AE441    mov         byte ptr [edx+2],al
 004AE444    mov         esp,ebp
 004AE446    pop         ebp
 004AE447    ret
end;*}

//004AE448
{*procedure sub_004AE448(?:COLORREF; ?:?; ?:?; ?:?; ?:?);
begin
 004AE448    push        ebp
 004AE449    mov         ebp,esp
 004AE44B    add         esp,0FFFFFFF4
 004AE44E    mov         dword ptr [ebp-0C],ecx
 004AE451    mov         dword ptr [ebp-8],edx
 004AE454    mov         dword ptr [ebp-4],eax
 004AE457    mov         eax,dword ptr [ebp+0C]
 004AE45A    mov         eax,dword ptr [eax-4]
 004AE45D    mov         eax,dword ptr [eax+220]
 004AE463    cmp         eax,dword ptr [ebp-4]
>004AE466    jne         004AE4A3
 004AE468    mov         eax,dword ptr [ebp+0C]
 004AE46B    mov         eax,dword ptr [eax-4]
 004AE46E    mov         ax,word ptr [eax+224]
 004AE475    mov         edx,dword ptr [ebp-8]
 004AE478    mov         word ptr [edx],ax
 004AE47B    mov         eax,dword ptr [ebp+0C]
 004AE47E    mov         eax,dword ptr [eax-4]
 004AE481    mov         ax,word ptr [eax+228]
 004AE488    mov         edx,dword ptr [ebp-0C]
 004AE48B    mov         word ptr [edx],ax
 004AE48E    mov         eax,dword ptr [ebp+0C]
 004AE491    mov         eax,dword ptr [eax-4]
 004AE494    mov         ax,word ptr [eax+226]
 004AE49B    mov         edx,dword ptr [ebp+8]
 004AE49E    mov         word ptr [edx],ax
>004AE4A1    jmp         004AE4FD
 004AE4A3    mov         eax,dword ptr [ebp+8]
 004AE4A6    push        eax
 004AE4A7    mov         ecx,dword ptr [ebp-0C]
 004AE4AA    mov         edx,dword ptr [ebp-8]
 004AE4AD    mov         eax,dword ptr [ebp-4]
 004AE4B0    call        004AD068
 004AE4B5    mov         eax,dword ptr [ebp-8]
 004AE4B8    mov         ax,word ptr [eax]
 004AE4BB    mov         edx,dword ptr [ebp+0C]
 004AE4BE    mov         edx,dword ptr [edx-4]
 004AE4C1    mov         word ptr [edx+224],ax
 004AE4C8    mov         eax,dword ptr [ebp-0C]
 004AE4CB    mov         ax,word ptr [eax]
 004AE4CE    mov         edx,dword ptr [ebp+0C]
 004AE4D1    mov         edx,dword ptr [edx-4]
 004AE4D4    mov         word ptr [edx+228],ax
 004AE4DB    mov         eax,dword ptr [ebp+8]
 004AE4DE    mov         ax,word ptr [eax]
 004AE4E1    mov         edx,dword ptr [ebp+0C]
 004AE4E4    mov         edx,dword ptr [edx-4]
 004AE4E7    mov         word ptr [edx+226],ax
 004AE4EE    mov         eax,dword ptr [ebp+0C]
 004AE4F1    mov         eax,dword ptr [eax-4]
 004AE4F4    mov         edx,dword ptr [ebp-4]
 004AE4F7    mov         dword ptr [eax+220],edx
 004AE4FD    mov         esp,ebp
 004AE4FF    pop         ebp
 004AE500    ret         4
end;*}

//004AE504
{*procedure sub_004AE504(?:?; ?:?; ?:?; ?:?);
begin
 004AE504    push        ebp
 004AE505    mov         ebp,esp
 004AE507    add         esp,0FFFFFFD4
 004AE50A    mov         dword ptr [ebp-0C],ecx
 004AE50D    mov         dword ptr [ebp-8],edx
 004AE510    mov         dword ptr [ebp-4],eax
 004AE513    mov         eax,dword ptr [ebp+0C]
 004AE516    push        eax
 004AE517    mov         eax,dword ptr [ebp+8]
 004AE51A    push        eax
 004AE51B    mov         ecx,dword ptr [ebp-0C]
 004AE51E    mov         edx,dword ptr [ebp-8]
 004AE521    mov         eax,dword ptr [ebp-4]
 004AE524    call        0048B89C
 004AE529    mov         eax,dword ptr [ebp-4]
 004AE52C    cmp         byte ptr [eax+57],0;TShadowWindow.FVisible:Boolean
>004AE530    jne         004AE8F7
 004AE536    mov         eax,dword ptr [ebp-4]
 004AE539    mov         edx,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE53C    mov         eax,dword ptr [ebp-4]
 004AE53F    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE545    mov         ecx,dword ptr [eax]
 004AE547    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004AE54A    mov         eax,dword ptr [ebp-4]
 004AE54D    mov         edx,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE550    mov         eax,dword ptr [ebp-4]
 004AE553    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE559    mov         ecx,dword ptr [eax]
 004AE55B    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004AE55E    call        user32.GetDesktopWindow
 004AE563    push        eax
 004AE564    call        user32.GetDC
 004AE569    mov         dword ptr [ebp-10],eax
 004AE56C    xor         eax,eax
 004AE56E    push        ebp
 004AE56F    push        4AE5D9
 004AE574    push        dword ptr fs:[eax]
 004AE577    mov         dword ptr fs:[eax],esp
 004AE57A    push        0CC0020
 004AE57F    mov         eax,dword ptr [ebp-4]
 004AE582    mov         eax,dword ptr [eax+44];TShadowWindow.Top:Integer
 004AE585    push        eax
 004AE586    mov         eax,dword ptr [ebp-4]
 004AE589    mov         eax,dword ptr [eax+40];TShadowWindow.Left:Integer
 004AE58C    push        eax
 004AE58D    mov         eax,dword ptr [ebp-10]
 004AE590    push        eax
 004AE591    mov         eax,dword ptr [ebp-4]
 004AE594    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE597    push        eax
 004AE598    mov         eax,dword ptr [ebp-4]
 004AE59B    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE59E    push        eax
 004AE59F    push        0
 004AE5A1    push        0
 004AE5A3    mov         eax,dword ptr [ebp-4]
 004AE5A6    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE5AC    call        0043498C
 004AE5B1    call        0042F6A0
 004AE5B6    push        eax
 004AE5B7    call        gdi32.BitBlt
 004AE5BC    xor         eax,eax
 004AE5BE    pop         edx
 004AE5BF    pop         ecx
 004AE5C0    pop         ecx
 004AE5C1    mov         dword ptr fs:[eax],edx
 004AE5C4    push        4AE5E0
 004AE5C9    mov         eax,dword ptr [ebp-10]
 004AE5CC    push        eax
 004AE5CD    call        user32.GetDesktopWindow
 004AE5D2    push        eax
 004AE5D3    call        user32.ReleaseDC
 004AE5D8    ret
>004AE5D9    jmp         @HandleFinally
>004AE5DE    jmp         004AE5C9
 004AE5E0    mov         eax,dword ptr [ebp-4]
 004AE5E3    mov         al,byte ptr [eax+234];TShadowWindow.FSide:TControlSide
 004AE5E9    sub         al,1
>004AE5EB    jb          004AE5F8
>004AE5ED    je          004AE77C
>004AE5F3    jmp         004AE8F7
 004AE5F8    mov         eax,dword ptr [ebp-4]
 004AE5FB    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE5FE    dec         eax
 004AE5FF    test        eax,eax
>004AE601    jl          004AE8F7
 004AE607    inc         eax
 004AE608    mov         dword ptr [ebp-20],eax
 004AE60B    mov         dword ptr [ebp-18],0
 004AE612    mov         eax,dword ptr [ebp-4]
 004AE615    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE61B    mov         edx,dword ptr [ebp-18]
 004AE61E    call        00434BEC
 004AE623    mov         dword ptr [ebp-1C],eax
 004AE626    mov         eax,dword ptr [ebp-4]
 004AE629    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE62C    dec         eax
 004AE62D    test        eax,eax
>004AE62F    jl          004AE76B
 004AE635    inc         eax
 004AE636    mov         dword ptr [ebp-24],eax
 004AE639    mov         dword ptr [ebp-14],0
 004AE640    mov         eax,dword ptr [ebp-18]
 004AE643    sub         eax,dword ptr [ebp-14]
>004AE646    js          004AE75F
 004AE64C    mov         eax,dword ptr [ebp-14]
 004AE64F    lea         eax,[eax+eax*2]
 004AE652    mov         edx,dword ptr [ebp-1C]
 004AE655    lea         eax,[edx+eax]
 004AE658    mov         dword ptr [ebp-28],eax
 004AE65B    mov         eax,dword ptr [ebp-28]
 004AE65E    mov         cl,byte ptr [eax]
 004AE660    mov         eax,dword ptr [ebp-28]
 004AE663    mov         dl,byte ptr [eax+1]
 004AE666    mov         eax,dword ptr [ebp-28]
 004AE669    mov         al,byte ptr [eax+2]
 004AE66C    call        00408590
 004AE671    mov         edx,dword ptr [ebp-4]
 004AE674    mov         dword ptr [edx+210],eax;TShadowWindow.FRGB:COLORREF
 004AE67A    push        ebp
 004AE67B    mov         eax,dword ptr [ebp-4]
 004AE67E    add         eax,218;TShadowWindow.S:Word
 004AE683    push        eax
 004AE684    mov         eax,dword ptr [ebp-4]
 004AE687    lea         ecx,[eax+216];TShadowWindow.L:Word
 004AE68D    mov         eax,dword ptr [ebp-4]
 004AE690    lea         edx,[eax+214];TShadowWindow.H:Word
 004AE696    mov         eax,dword ptr [ebp-4]
 004AE699    mov         eax,dword ptr [eax+210];TShadowWindow.FRGB:COLORREF
 004AE69F    call        004AE448
 004AE6A4    pop         ecx
 004AE6A5    mov         eax,dword ptr [ebp-4]
 004AE6A8    cmp         word ptr [eax+216],3A;TShadowWindow.L:Word
>004AE6B0    jb          004AE75F
 004AE6B6    mov         eax,dword ptr [ebp-4]
 004AE6B9    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE6BC    cmp         eax,dword ptr [ebp-18]
>004AE6BF    jl          004AE6F3
 004AE6C1    push        ebp
 004AE6C2    mov         edx,dword ptr [ebp-14]
 004AE6C5    mov         eax,edx
 004AE6C7    shl         edx,4
 004AE6CA    sub         edx,eax
 004AE6CC    add         edx,0FFFFFFC6
 004AE6CF    mov         eax,dword ptr [ebp-4]
 004AE6D2    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE6D5    sub         eax,dword ptr [ebp-18]
 004AE6D8    add         eax,eax
 004AE6DA    lea         eax,[eax+eax*4]
 004AE6DD    add         edx,eax
 004AE6DF    mov         eax,dword ptr [ebp-14]
 004AE6E2    lea         eax,[eax+eax*2]
 004AE6E5    mov         ecx,dword ptr [ebp-1C]
 004AE6E8    lea         eax,[ecx+eax]
 004AE6EB    call        004AE3DC
 004AE6F0    pop         ecx
>004AE6F1    jmp         004AE75F
 004AE6F3    mov         eax,dword ptr [ebp-4]
 004AE6F6    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE6F9    cmp         eax,dword ptr [ebp-18]
>004AE6FC    jg          004AE73F
 004AE6FE    push        ebp
 004AE6FF    mov         eax,dword ptr [ebp-4]
 004AE702    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE705    sub         eax,dword ptr [ebp-14]
 004AE708    mov         edx,eax
 004AE70A    shl         eax,4
 004AE70D    sub         eax,edx
 004AE70F    mov         edx,0FFFFFFC6
 004AE714    sub         edx,eax
 004AE716    mov         eax,dword ptr [ebp-4]
 004AE719    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE71C    sub         eax,8
 004AE71F    sub         eax,dword ptr [ebp-18]
 004AE722    mov         ecx,eax
 004AE724    shl         eax,4
 004AE727    sub         eax,ecx
 004AE729    sub         edx,eax
 004AE72B    mov         eax,dword ptr [ebp-14]
 004AE72E    lea         eax,[eax+eax*2]
 004AE731    mov         ecx,dword ptr [ebp-1C]
 004AE734    lea         eax,[ecx+eax]
 004AE737    call        004AE3DC
 004AE73C    pop         ecx
>004AE73D    jmp         004AE75F
 004AE73F    push        ebp
 004AE740    mov         eax,dword ptr [ebp-14]
 004AE743    lea         eax,[eax+eax*2]
 004AE746    mov         edx,dword ptr [ebp-1C]
 004AE749    lea         eax,[edx+eax]
 004AE74C    mov         edx,dword ptr [ebp-14]
 004AE74F    mov         ecx,edx
 004AE751    shl         edx,4
 004AE754    sub         edx,ecx
 004AE756    add         edx,0FFFFFFC6
 004AE759    call        004AE3DC
 004AE75E    pop         ecx
 004AE75F    inc         dword ptr [ebp-14]
 004AE762    dec         dword ptr [ebp-24]
>004AE765    jne         004AE640
 004AE76B    inc         dword ptr [ebp-18]
 004AE76E    dec         dword ptr [ebp-20]
>004AE771    jne         004AE612
>004AE777    jmp         004AE8F7
 004AE77C    mov         eax,dword ptr [ebp-4]
 004AE77F    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE782    dec         eax
 004AE783    test        eax,eax
>004AE785    jl          004AE8F7
 004AE78B    inc         eax
 004AE78C    mov         dword ptr [ebp-20],eax
 004AE78F    mov         dword ptr [ebp-18],0
 004AE796    mov         eax,dword ptr [ebp-4]
 004AE799    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004AE79F    mov         edx,dword ptr [ebp-18]
 004AE7A2    call        00434BEC
 004AE7A7    mov         dword ptr [ebp-1C],eax
 004AE7AA    mov         eax,dword ptr [ebp-18]
 004AE7AD    mov         edx,dword ptr [ebp-4]
 004AE7B0    mov         edx,dword ptr [edx+48];TShadowWindow.Width:Integer
 004AE7B3    dec         edx
 004AE7B4    sub         edx,dword ptr [ebp-18]
 004AE7B7    sub         edx,eax
>004AE7B9    jl          004AE8EB
 004AE7BF    inc         edx
 004AE7C0    mov         dword ptr [ebp-24],edx
 004AE7C3    mov         dword ptr [ebp-14],eax
 004AE7C6    mov         eax,dword ptr [ebp-14]
 004AE7C9    lea         eax,[eax+eax*2]
 004AE7CC    mov         edx,dword ptr [ebp-1C]
 004AE7CF    lea         eax,[edx+eax]
 004AE7D2    mov         dword ptr [ebp-2C],eax
 004AE7D5    mov         eax,dword ptr [ebp-2C]
 004AE7D8    mov         cl,byte ptr [eax]
 004AE7DA    mov         eax,dword ptr [ebp-2C]
 004AE7DD    mov         dl,byte ptr [eax+1]
 004AE7E0    mov         eax,dword ptr [ebp-2C]
 004AE7E3    mov         al,byte ptr [eax+2]
 004AE7E6    call        00408590
 004AE7EB    mov         edx,dword ptr [ebp-4]
 004AE7EE    mov         dword ptr [edx+210],eax;TShadowWindow.FRGB:COLORREF
 004AE7F4    push        ebp
 004AE7F5    mov         eax,dword ptr [ebp-4]
 004AE7F8    add         eax,218;TShadowWindow.S:Word
 004AE7FD    push        eax
 004AE7FE    mov         eax,dword ptr [ebp-4]
 004AE801    lea         ecx,[eax+216];TShadowWindow.L:Word
 004AE807    mov         eax,dword ptr [ebp-4]
 004AE80A    lea         edx,[eax+214];TShadowWindow.H:Word
 004AE810    mov         eax,dword ptr [ebp-4]
 004AE813    mov         eax,dword ptr [eax+210];TShadowWindow.FRGB:COLORREF
 004AE819    call        004AE448
 004AE81E    pop         ecx
 004AE81F    mov         eax,dword ptr [ebp-4]
 004AE822    cmp         word ptr [eax+216],3A;TShadowWindow.L:Word
>004AE82A    jb          004AE8DF
 004AE830    mov         eax,dword ptr [ebp-4]
 004AE833    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE836    cmp         eax,dword ptr [ebp-14]
>004AE839    jl          004AE86D
 004AE83B    push        ebp
 004AE83C    mov         edx,dword ptr [ebp-18]
 004AE83F    mov         eax,edx
 004AE841    shl         edx,4
 004AE844    sub         edx,eax
 004AE846    add         edx,0FFFFFFC6
 004AE849    mov         eax,dword ptr [ebp-4]
 004AE84C    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE84F    sub         eax,dword ptr [ebp-14]
 004AE852    add         eax,eax
 004AE854    lea         eax,[eax+eax*4]
 004AE857    add         edx,eax
 004AE859    mov         eax,dword ptr [ebp-14]
 004AE85C    lea         eax,[eax+eax*2]
 004AE85F    mov         ecx,dword ptr [ebp-1C]
 004AE862    lea         eax,[ecx+eax]
 004AE865    call        004AE3DC
 004AE86A    pop         ecx
>004AE86B    jmp         004AE8DF
 004AE86D    mov         eax,dword ptr [ebp-4]
 004AE870    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE873    mov         edx,dword ptr [ebp-4]
 004AE876    sub         eax,dword ptr [edx+4C]
 004AE879    cmp         eax,dword ptr [ebp-14]
>004AE87C    jg          004AE8BF
 004AE87E    push        ebp
 004AE87F    mov         eax,dword ptr [ebp-4]
 004AE882    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004AE885    sub         eax,dword ptr [ebp-18]
 004AE888    mov         edx,eax
 004AE88A    shl         eax,4
 004AE88D    sub         eax,edx
 004AE88F    mov         edx,0FFFFFFC6
 004AE894    sub         edx,eax
 004AE896    mov         eax,dword ptr [ebp-4]
 004AE899    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004AE89C    sub         eax,8
 004AE89F    sub         eax,dword ptr [ebp-14]
 004AE8A2    mov         ecx,eax
 004AE8A4    shl         eax,4
 004AE8A7    sub         eax,ecx
 004AE8A9    sub         edx,eax
 004AE8AB    mov         eax,dword ptr [ebp-14]
 004AE8AE    lea         eax,[eax+eax*2]
 004AE8B1    mov         ecx,dword ptr [ebp-1C]
 004AE8B4    lea         eax,[ecx+eax]
 004AE8B7    call        004AE3DC
 004AE8BC    pop         ecx
>004AE8BD    jmp         004AE8DF
 004AE8BF    push        ebp
 004AE8C0    mov         eax,dword ptr [ebp-14]
 004AE8C3    lea         eax,[eax+eax*2]
 004AE8C6    mov         edx,dword ptr [ebp-1C]
 004AE8C9    lea         eax,[edx+eax]
 004AE8CC    mov         edx,dword ptr [ebp-18]
 004AE8CF    mov         ecx,edx
 004AE8D1    shl         edx,4
 004AE8D4    sub         edx,ecx
 004AE8D6    add         edx,0FFFFFFC6
 004AE8D9    call        004AE3DC
 004AE8DE    pop         ecx
 004AE8DF    inc         dword ptr [ebp-14]
 004AE8E2    dec         dword ptr [ebp-24]
>004AE8E5    jne         004AE7C6
 004AE8EB    inc         dword ptr [ebp-18]
 004AE8EE    dec         dword ptr [ebp-20]
>004AE8F1    jne         004AE796
 004AE8F7    mov         esp,ebp
 004AE8F9    pop         ebp
 004AE8FA    ret         8
end;*}

end.