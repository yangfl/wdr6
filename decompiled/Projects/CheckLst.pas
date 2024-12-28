//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit CheckLst;

interface

uses
  SysUtils, Classes;

type
  TCheckListBox = class(TCustomListBox)
  public
    AllowGrayed:Boolean;//f280
    Flat:Boolean;//f281
    FStandardItemHeight:Integer;//f284
    OnClickCheck:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FSaveStates:TList;//f290
    HeaderColor:TColor;//f294
    HeaderBackgroundColor:TColor;//f298
    destructor Destroy; virtual;//004D2848
    constructor v2C; virtual;//v2C//004D27DC
    //procedure v98(?:?); virtual;//v98//004D29B4
    procedure CreateWnd; virtual;//vA0//004D2888
    procedure vB0; virtual;//vB0//004D2920
    //procedure vF8(?:?; ?:?; ?:?); virtual;//vF8//004D2A98
    //procedure WMDestroy(?:?); message WM_DESTROY;//004D3598
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004D29FC
    //procedure sub_0047A81C(?:?); dynamic;//004D2C54
    procedure sub_004D32E8; dynamic;//004D32E8
    //procedure sub_00479408(?:?); dynamic;//004D3528
    procedure sub_00479434; dynamic;//004D34CC
    //procedure sub_00479388(?:?; ?:TCheckListBoxDataWrapper); dynamic;//004D348C
    //procedure sub_00479358(?:?); dynamic;//004D3314
    //procedure sub_004793E0(?:?; ?:?); dynamic;//004D3414
    //procedure sub_004793B8(?:?); dynamic;//004D33F0
    //procedure sub_0047AAE4(?:?); dynamic;//004D3130
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004D3168
    procedure SetFlat(Value:Boolean);//004D3564
    procedure SetHeaderBackgroundColor(Value:TColor);//004D3628
    procedure SetHeaderColor(Value:TColor);//004D365C
  end;
  TCheckListBoxDataWrapper = class(TObject)
  public
    FData:Longint;//f4
    FState:TCheckBoxState;//f8
    FDisabled:Boolean;//f9
    FHeader:Boolean;//fA
  end;
    procedure GetCheckSize;//004D26A0
    //function sub_004D2724(?:?; ?:?):?;//004D2724
    //function sub_004D274C(?:Pointer):?;//004D274C
    //function sub_004D2768(?:Pointer):?;//004D2768
    //procedure sub_004D2784(?:?; ?:?);//004D2784
    //function sub_004D27AC(?:?):?;//004D27AC
    //function sub_004D27C8(?:TCheckListBoxDataWrapper):?;//004D27C8
    constructor sub_004D27DC;//004D27DC
    destructor Destroy;//004D2848
    procedure CreateWnd;//004D2888
    procedure sub_004D2920;//004D2920
    //procedure sub_004D29B4(?:?);//004D29B4
    //function sub_004D29E0(?:TCheckListBox):?;//004D29E0
    //procedure CMFontChanged(?:?);//004D29FC
    procedure sub_004D2A20(?:TCheckListBox);//004D2A20
    //procedure sub_004D2A98(?:?; ?:?; ?:?);//004D2A98
    //procedure sub_0047A81C(?:?);//004D2C54
    //procedure sub_004D2CCC(?:TCheckListBox; ?:?; ?:?; ?:?);//004D2CCC
    //procedure sub_004D2F60(?:TCheckListBox; ?:?; ?:?);//004D2F60
    //procedure sub_004D2FA4(?:TCheckListBox; ?:?; ?:?);//004D2FA4
    //procedure sub_004D2FE4(?:?; ?:?);//004D2FE4
    //function sub_004D3074(?:TCheckListBox; ?:?):?;//004D3074
    //function sub_004D30B0(?:TCheckListBox; ?:?):?;//004D30B0
    //function sub_004D30EC(?:TCheckListBox; ?:?):?;//004D30EC
    //procedure sub_0047AAE4(?:?);//004D3130
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004D3168
    //procedure sub_004D3254(?:TCheckListBox; ?:?);//004D3254
    procedure sub_004D32E8;//004D32E8
    //procedure sub_00479358(?:?);//004D3314
    //function sub_004D334C(?:TCheckListBox; ?:?):?;//004D334C
    //function sub_004D3384(?:TCheckListBox; ?:?):?;//004D3384
    //procedure sub_004793B8(?:?);//004D33F0
    //procedure sub_004793E0(?:?; ?:?);//004D3414
    //function sub_004D3438(?:TCheckListBox; ?:?):?;//004D3438
    //function sub_004D3468(?:TCheckListBox; ?:?):?;//004D3468
    //procedure sub_00479388(?:?; ?:TCheckListBoxDataWrapper);//004D348C
    procedure sub_00479434;//004D34CC
    //procedure sub_00479408(?:?);//004D3528
    //procedure WMDestroy(?:?);//004D3598
    //function sub_004D35EC(?:TCheckListBox; ?:?):?;//004D35EC

implementation

//004D26A0
procedure GetCheckSize;
begin
{*
 004D26A0    push        ebp
 004D26A1    mov         ebp,esp
 004D26A3    push        ecx
 004D26A4    mov         dl,1
 004D26A6    mov         eax,[0042CF48];TBitmap
 004D26AB    call        TBitmap.Create
 004D26B0    mov         dword ptr [ebp-4],eax
 004D26B3    xor         eax,eax
 004D26B5    push        ebp
 004D26B6    push        4D2719
 004D26BB    push        dword ptr fs:[eax]
 004D26BE    mov         dword ptr fs:[eax],esp
 004D26C1    push        7FF7
 004D26C6    push        0
 004D26C8    call        user32.LoadBitmapA
 004D26CD    mov         edx,eax
 004D26CF    mov         eax,dword ptr [ebp-4]
 004D26D2    call        TBitmap.SetHandle
 004D26D7    mov         eax,dword ptr [ebp-4]
 004D26DA    mov         edx,dword ptr [eax]
 004D26DC    call        dword ptr [edx+2C]
 004D26DF    test        eax,eax
>004D26E1    jns         004D26E6
 004D26E3    add         eax,3
 004D26E6    sar         eax,2
 004D26E9    mov         [005721F8],eax;FCheckWidth:Integer
 004D26EE    mov         eax,dword ptr [ebp-4]
 004D26F1    mov         edx,dword ptr [eax]
 004D26F3    call        dword ptr [edx+20]
 004D26F6    mov         ecx,3
 004D26FB    cdq
 004D26FC    idiv        eax,ecx
 004D26FE    mov         [005721FC],eax;FCheckHeight:Integer
 004D2703    xor         eax,eax
 004D2705    pop         edx
 004D2706    pop         ecx
 004D2707    pop         ecx
 004D2708    mov         dword ptr fs:[eax],edx
 004D270B    push        4D2720
 004D2710    mov         eax,dword ptr [ebp-4]
 004D2713    call        TObject.Free
 004D2718    ret
>004D2719    jmp         @HandleFinally
>004D271E    jmp         004D2710
 004D2720    pop         ecx
 004D2721    pop         ebp
 004D2722    ret
*}
end;

//004D2724
{*function sub_004D2724(?:?; ?:?):?;
begin
 004D2724    push        ebp
 004D2725    mov         ebp,esp
 004D2727    add         esp,0FFFFFFF8
 004D272A    mov         byte ptr [ebp-2],dl
 004D272D    mov         byte ptr [ebp-1],al
 004D2730    xor         eax,eax
 004D2732    mov         al,byte ptr [ebp-1]
 004D2735    shl         eax,10
 004D2738    xor         edx,edx
 004D273A    mov         dl,byte ptr [ebp-2]
 004D273D    or          eax,edx
 004D273F    mov         dword ptr [ebp-8],eax
 004D2742    mov         eax,dword ptr [ebp-8]
 004D2745    pop         ecx
 004D2746    pop         ecx
 004D2747    pop         ebp
 004D2748    ret
end;*}

//004D274C
{*function sub_004D274C(?:Pointer):?;
begin
 004D274C    push        ebp
 004D274D    mov         ebp,esp
 004D274F    add         esp,0FFFFFFF8
 004D2752    mov         dword ptr [ebp-4],eax
 004D2755    mov         eax,dword ptr [ebp-4]
 004D2758    shr         eax,10
 004D275B    mov         byte ptr [ebp-5],al
 004D275E    mov         al,byte ptr [ebp-5]
 004D2761    pop         ecx
 004D2762    pop         ecx
 004D2763    pop         ebp
 004D2764    ret
end;*}

//004D2768
{*function sub_004D2768(?:Pointer):?;
begin
 004D2768    push        ebp
 004D2769    mov         ebp,esp
 004D276B    add         esp,0FFFFFFF8
 004D276E    mov         dword ptr [ebp-4],eax
 004D2771    mov         eax,dword ptr [ebp-4]
 004D2774    and         eax,0FF
 004D2779    mov         byte ptr [ebp-5],al
 004D277C    mov         al,byte ptr [ebp-5]
 004D277F    pop         ecx
 004D2780    pop         ecx
 004D2781    pop         ebp
 004D2782    ret
end;*}

//004D2784
{*procedure sub_004D2784(?:?; ?:?);
begin
 004D2784    push        ebp
 004D2785    mov         ebp,esp
 004D2787    add         esp,0FFFFFFF8
 004D278A    mov         byte ptr [ebp-5],dl
 004D278D    mov         dword ptr [ebp-4],eax
 004D2790    cmp         byte ptr [ebp-5],0
>004D2794    je          004D279F
 004D2796    mov         eax,dword ptr [ebp-4]
 004D2799    mov         byte ptr [eax+8],1
>004D279D    jmp         004D27A6
 004D279F    mov         eax,dword ptr [ebp-4]
 004D27A2    mov         byte ptr [eax+8],0
 004D27A6    pop         ecx
 004D27A7    pop         ecx
 004D27A8    pop         ebp
 004D27A9    ret
end;*}

//004D27AC
{*function sub_004D27AC(?:?):?;
begin
 004D27AC    push        ebp
 004D27AD    mov         ebp,esp
 004D27AF    add         esp,0FFFFFFF8
 004D27B2    mov         dword ptr [ebp-4],eax
 004D27B5    mov         eax,dword ptr [ebp-4]
 004D27B8    cmp         byte ptr [eax+8],1
 004D27BC    sete        byte ptr [ebp-5]
 004D27C0    mov         al,byte ptr [ebp-5]
 004D27C3    pop         ecx
 004D27C4    pop         ecx
 004D27C5    pop         ebp
 004D27C6    ret
end;*}

//004D27C8
{*function sub_004D27C8(?:TCheckListBoxDataWrapper):?;
begin
 004D27C8    push        ebp
 004D27C9    mov         ebp,esp
 004D27CB    add         esp,0FFFFFFF8
 004D27CE    mov         dword ptr [ebp-4],eax
 004D27D1    mov         byte ptr [ebp-5],0
 004D27D5    mov         al,byte ptr [ebp-5]
 004D27D8    pop         ecx
 004D27D9    pop         ecx
 004D27DA    pop         ebp
 004D27DB    ret
end;*}

//004D27DC
constructor sub_004D27DC;
begin
{*
 004D27DC    push        ebp
 004D27DD    mov         ebp,esp
 004D27DF    add         esp,0FFFFFFF4
 004D27E2    test        dl,dl
>004D27E4    je          004D27EE
 004D27E6    add         esp,0FFFFFFF0
 004D27E9    call        @ClassCreate
 004D27EE    mov         dword ptr [ebp-0C],ecx
 004D27F1    mov         byte ptr [ebp-5],dl
 004D27F4    mov         dword ptr [ebp-4],eax
 004D27F7    mov         ecx,dword ptr [ebp-0C]
 004D27FA    xor         edx,edx
 004D27FC    mov         eax,dword ptr [ebp-4]
 004D27FF    call        TListBox.Create
 004D2804    mov         eax,dword ptr [ebp-4]
 004D2807    mov         byte ptr [eax+281],1;TCheckListBox.Flat:Boolean
 004D280E    mov         eax,dword ptr [ebp-4]
 004D2811    mov         dword ptr [eax+294],0FF000017;TCheckListBox.HeaderColor:TColor
 004D281B    mov         eax,dword ptr [ebp-4]
 004D281E    mov         dword ptr [eax+298],0FF000018;TCheckListBox.HeaderBackgroundColor:TColor
 004D2828    mov         eax,dword ptr [ebp-4]
 004D282B    cmp         byte ptr [ebp-5],0
>004D282F    je          004D2840
 004D2831    call        @AfterConstruction
 004D2836    pop         dword ptr fs:[0]
 004D283D    add         esp,0C
 004D2840    mov         eax,dword ptr [ebp-4]
 004D2843    mov         esp,ebp
 004D2845    pop         ebp
 004D2846    ret
*}
end;

//004D2848
destructor TCheckListBox.Destroy;
begin
{*
 004D2848    push        ebp
 004D2849    mov         ebp,esp
 004D284B    add         esp,0FFFFFFF8
 004D284E    call        @BeforeDestruction
 004D2853    mov         byte ptr [ebp-5],dl
 004D2856    mov         dword ptr [ebp-4],eax
 004D2859    mov         eax,dword ptr [ebp-4]
 004D285C    mov         eax,dword ptr [eax+290]
 004D2862    call        TObject.Free
 004D2867    mov         dl,byte ptr [ebp-5]
 004D286A    and         dl,0FC
 004D286D    mov         eax,dword ptr [ebp-4]
 004D2870    call        TCustomListBox.Destroy
 004D2875    cmp         byte ptr [ebp-5],0
>004D2879    jle         004D2883
 004D287B    mov         eax,dword ptr [ebp-4]
 004D287E    call        @ClassDestroy
 004D2883    pop         ecx
 004D2884    pop         ecx
 004D2885    pop         ebp
 004D2886    ret
*}
end;

//004D2888
procedure TCheckListBox.CreateWnd;
begin
{*
 004D2888    push        ebp
 004D2889    mov         ebp,esp
 004D288B    add         esp,0FFFFFFEC
 004D288E    mov         dword ptr [ebp-4],eax
 004D2891    mov         eax,dword ptr [ebp-4]
 004D2894    call        TCustomListBox.CreateWnd
 004D2899    mov         eax,dword ptr [ebp-4]
 004D289C    cmp         dword ptr [eax+290],0;TCheckListBox.FSaveStates:TList
>004D28A3    je          004D2914
 004D28A5    mov         eax,dword ptr [ebp-4]
 004D28A8    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 004D28AE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004D28B1    dec         eax
 004D28B2    test        eax,eax
>004D28B4    jl          004D2907
 004D28B6    inc         eax
 004D28B7    mov         dword ptr [ebp-14],eax
 004D28BA    mov         dword ptr [ebp-8],0
 004D28C1    mov         edx,dword ptr [ebp-8]
 004D28C4    mov         eax,dword ptr [ebp-4]
 004D28C7    call        004D334C
 004D28CC    mov         dword ptr [ebp-0C],eax
 004D28CF    mov         edx,dword ptr [ebp-8]
 004D28D2    mov         eax,dword ptr [ebp-4]
 004D28D5    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 004D28DB    call        TList.Get
 004D28E0    mov         dword ptr [ebp-10],eax
 004D28E3    mov         eax,dword ptr [ebp-10]
 004D28E6    call        004D274C
 004D28EB    mov         edx,dword ptr [ebp-0C]
 004D28EE    mov         byte ptr [edx+8],al
 004D28F1    mov         eax,dword ptr [ebp-10]
 004D28F4    call        004D2768
 004D28F9    mov         edx,dword ptr [ebp-0C]
 004D28FC    mov         byte ptr [edx+9],al
 004D28FF    inc         dword ptr [ebp-8]
 004D2902    dec         dword ptr [ebp-14]
>004D2905    jne         004D28C1
 004D2907    mov         eax,dword ptr [ebp-4]
 004D290A    add         eax,290;TCheckListBox.FSaveStates:TList
 004D290F    call        FreeAndNil
 004D2914    mov         eax,dword ptr [ebp-4]
 004D2917    call        004D2A20
 004D291C    mov         esp,ebp
 004D291E    pop         ebp
 004D291F    ret
*}
end;

//004D2920
procedure sub_004D2920;
begin
{*
 004D2920    push        ebp
 004D2921    mov         ebp,esp
 004D2923    add         esp,0FFFFFFF4
 004D2926    mov         dword ptr [ebp-4],eax
 004D2929    mov         eax,dword ptr [ebp-4]
 004D292C    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D2932    mov         edx,dword ptr [eax]
 004D2934    call        dword ptr [edx+14];@AbstractError
 004D2937    test        eax,eax
>004D2939    jle         004D29A5
 004D293B    mov         dl,1
 004D293D    mov         eax,[0041D46C];TList
 004D2942    call        TObject.Create;TList.Create
 004D2947    mov         edx,dword ptr [ebp-4]
 004D294A    mov         dword ptr [edx+290],eax;TCheckListBox.FSaveStates:TList
 004D2950    mov         eax,dword ptr [ebp-4]
 004D2953    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D2959    mov         edx,dword ptr [eax]
 004D295B    call        dword ptr [edx+14];@AbstractError
 004D295E    dec         eax
 004D295F    test        eax,eax
>004D2961    jl          004D29A5
 004D2963    inc         eax
 004D2964    mov         dword ptr [ebp-0C],eax
 004D2967    mov         dword ptr [ebp-8],0
 004D296E    mov         edx,dword ptr [ebp-8]
 004D2971    mov         eax,dword ptr [ebp-4]
 004D2974    call        004D30B0
 004D2979    xor         al,1
 004D297B    push        eax
 004D297C    mov         edx,dword ptr [ebp-8]
 004D297F    mov         eax,dword ptr [ebp-4]
 004D2982    call        004D30EC
 004D2987    pop         edx
 004D2988    call        004D2724
 004D298D    mov         edx,eax
 004D298F    mov         eax,dword ptr [ebp-4]
 004D2992    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 004D2998    call        TList.Add
 004D299D    inc         dword ptr [ebp-8]
 004D29A0    dec         dword ptr [ebp-0C]
>004D29A3    jne         004D296E
 004D29A5    mov         eax,dword ptr [ebp-4]
 004D29A8    call        0047A220
 004D29AD    mov         esp,ebp
 004D29AF    pop         ebp
 004D29B0    ret
*}
end;

//004D29B4
{*procedure sub_004D29B4(?:?);
begin
 004D29B4    push        ebp
 004D29B5    mov         ebp,esp
 004D29B7    add         esp,0FFFFFFF8
 004D29BA    mov         dword ptr [ebp-8],edx
 004D29BD    mov         dword ptr [ebp-4],eax
 004D29C0    mov         edx,dword ptr [ebp-8]
 004D29C3    mov         eax,dword ptr [ebp-4]
 004D29C6    call        00479FA8
 004D29CB    mov         eax,dword ptr [ebp-8]
 004D29CE    test        byte ptr [eax+4],30
>004D29D2    jne         004D29DB
 004D29D4    mov         eax,dword ptr [ebp-8]
 004D29D7    or          dword ptr [eax+4],10
 004D29DB    pop         ecx
 004D29DC    pop         ecx
 004D29DD    pop         ebp
 004D29DE    ret
end;*}

//004D29E0
{*function sub_004D29E0(?:TCheckListBox):?;
begin
 004D29E0    push        ebp
 004D29E1    mov         ebp,esp
 004D29E3    add         esp,0FFFFFFF8
 004D29E6    mov         dword ptr [ebp-4],eax
 004D29E9    mov         eax,[005721F8];0x0 FCheckWidth:Integer
 004D29EE    add         eax,2
 004D29F1    mov         dword ptr [ebp-8],eax
 004D29F4    mov         eax,dword ptr [ebp-8]
 004D29F7    pop         ecx
 004D29F8    pop         ecx
 004D29F9    pop         ebp
 004D29FA    ret
end;*}

//004D29FC
{*procedure TCheckListBox.CMFontChanged(?:?);
begin
 004D29FC    push        ebp
 004D29FD    mov         ebp,esp
 004D29FF    add         esp,0FFFFFFF8
 004D2A02    mov         dword ptr [ebp-8],edx
 004D2A05    mov         dword ptr [ebp-4],eax
 004D2A08    mov         edx,dword ptr [ebp-8]
 004D2A0B    mov         eax,dword ptr [ebp-4]
 004D2A0E    call        TWinControl.CMFontChanged
 004D2A13    mov         eax,dword ptr [ebp-4]
 004D2A16    call        004D2A20
 004D2A1B    pop         ecx
 004D2A1C    pop         ecx
 004D2A1D    pop         ebp
 004D2A1E    ret
end;*}

//004D2A20
procedure sub_004D2A20(?:TCheckListBox);
begin
{*
 004D2A20    push        ebp
 004D2A21    mov         ebp,esp
 004D2A23    push        ecx
 004D2A24    mov         dword ptr [ebp-4],eax
 004D2A27    mov         eax,dword ptr [ebp-4]
 004D2A2A    call        TWinControl.HandleAllocated
 004D2A2F    test        al,al
>004D2A31    je          004D2A88
 004D2A33    mov         eax,dword ptr [ebp-4]
 004D2A36    cmp         byte ptr [eax+238],0;TCheckListBox.FStyle:TListBoxStyle
>004D2A3D    jne         004D2A88
 004D2A3F    mov         eax,dword ptr [ebp-4]
 004D2A42    mov         edx,dword ptr [eax+68];TCheckListBox.FFont:TFont
 004D2A45    mov         eax,dword ptr [ebp-4]
 004D2A48    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2A4E    call        TCanvas.SetFont
 004D2A53    mov         edx,4D2A94;'Wg'
 004D2A58    mov         eax,dword ptr [ebp-4]
 004D2A5B    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2A61    call        0042F464
 004D2A66    mov         edx,dword ptr [ebp-4]
 004D2A69    mov         dword ptr [edx+284],eax;TCheckListBox.FStandardItemHeight:Integer
 004D2A6F    mov         eax,dword ptr [ebp-4]
 004D2A72    mov         eax,dword ptr [eax+284];TCheckListBox.FStandardItemHeight:Integer
 004D2A78    push        eax
 004D2A79    xor         ecx,ecx
 004D2A7B    mov         edx,1A0
 004D2A80    mov         eax,dword ptr [ebp-4]
 004D2A83    call        00484FFC
 004D2A88    pop         ecx
 004D2A89    pop         ebp
 004D2A8A    ret
*}
end;

//004D2A98
{*procedure sub_004D2A98(?:?; ?:?; ?:?);
begin
 004D2A98    push        ebp
 004D2A99    mov         ebp,esp
 004D2A9B    add         esp,0FFFFFFC8
 004D2A9E    push        esi
 004D2A9F    push        edi
 004D2AA0    mov         esi,ecx
 004D2AA2    lea         edi,[ebp-25]
 004D2AA5    movs        dword ptr [edi],dword ptr [esi]
 004D2AA6    movs        dword ptr [edi],dword ptr [esi]
 004D2AA7    movs        dword ptr [edi],dword ptr [esi]
 004D2AA8    movs        dword ptr [edi],dword ptr [esi]
 004D2AA9    mov         dword ptr [ebp-8],edx
 004D2AAC    mov         dword ptr [ebp-4],eax
 004D2AAF    mov         eax,dword ptr [ebp-4]
 004D2AB2    call        004D29E0
 004D2AB7    mov         dword ptr [ebp-14],eax
 004D2ABA    mov         eax,dword ptr [ebp-4]
 004D2ABD    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D2AC3    mov         edx,dword ptr [eax]
 004D2AC5    call        dword ptr [edx+14];@AbstractError
 004D2AC8    cmp         eax,dword ptr [ebp-8]
>004D2ACB    jle         004D2BAC
 004D2AD1    lea         esi,[ebp-25]
 004D2AD4    lea         edi,[ebp-35]
 004D2AD7    movs        dword ptr [edi],dword ptr [esi]
 004D2AD8    movs        dword ptr [edi],dword ptr [esi]
 004D2AD9    movs        dword ptr [edi],dword ptr [esi]
 004D2ADA    movs        dword ptr [edi],dword ptr [esi]
 004D2ADB    mov         eax,dword ptr [ebp-4]
 004D2ADE    mov         edx,dword ptr [eax]
 004D2AE0    call        dword ptr [edx+50];TImage.GetEnabled
 004D2AE3    test        al,al
>004D2AE5    je          004D2AF6
 004D2AE7    mov         edx,dword ptr [ebp-8]
 004D2AEA    mov         eax,dword ptr [ebp-4]
 004D2AED    call        004D30B0
 004D2AF2    test        al,al
>004D2AF4    jne         004D2AFA
 004D2AF6    xor         eax,eax
>004D2AF8    jmp         004D2AFC
 004D2AFA    mov         al,1
 004D2AFC    mov         byte ptr [ebp-15],al
 004D2AFF    mov         edx,dword ptr [ebp-8]
 004D2B02    mov         eax,dword ptr [ebp-4]
 004D2B05    call        004D35EC
 004D2B0A    test        al,al
>004D2B0C    jne         004D2B5C
 004D2B0E    mov         eax,dword ptr [ebp-4]
 004D2B11    mov         si,0FFC8
 004D2B15    call        @CallDynaInst;TControl.sub_0048415C
 004D2B1A    test        al,al
>004D2B1C    jne         004D2B2F
 004D2B1E    mov         eax,dword ptr [ebp-25]
 004D2B21    mov         dword ptr [ebp-2D],eax
 004D2B24    mov         eax,dword ptr [ebp-2D]
 004D2B27    sub         eax,dword ptr [ebp-14]
 004D2B2A    mov         dword ptr [ebp-35],eax
>004D2B2D    jmp         004D2B3E
 004D2B2F    mov         eax,dword ptr [ebp-1D]
 004D2B32    mov         dword ptr [ebp-35],eax
 004D2B35    mov         eax,dword ptr [ebp-35]
 004D2B38    add         eax,dword ptr [ebp-14]
 004D2B3B    mov         dword ptr [ebp-2D],eax
 004D2B3E    mov         al,byte ptr [ebp-15]
 004D2B41    push        eax
 004D2B42    mov         edx,dword ptr [ebp-8]
 004D2B45    mov         eax,dword ptr [ebp-4]
 004D2B48    call        004D30EC
 004D2B4D    mov         ecx,eax
 004D2B4F    lea         edx,[ebp-35]
 004D2B52    mov         eax,dword ptr [ebp-4]
 004D2B55    call        004D2CCC
>004D2B5A    jmp         004D2B90
 004D2B5C    mov         eax,dword ptr [ebp-4]
 004D2B5F    mov         edx,dword ptr [eax+294];TCheckListBox.HeaderColor:TColor
 004D2B65    mov         eax,dword ptr [ebp-4]
 004D2B68    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2B6E    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004D2B71    call        TFont.SetColor
 004D2B76    mov         eax,dword ptr [ebp-4]
 004D2B79    mov         edx,dword ptr [eax+298];TCheckListBox.HeaderBackgroundColor:TColor
 004D2B7F    mov         eax,dword ptr [ebp-4]
 004D2B82    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2B88    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2B8B    call        TBrush.SetColor
 004D2B90    cmp         byte ptr [ebp-15],0
>004D2B94    jne         004D2BAC
 004D2B96    mov         eax,dword ptr [ebp-4]
 004D2B99    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2B9F    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004D2BA2    mov         edx,0FF000011
 004D2BA7    call        TFont.SetColor
 004D2BAC    mov         eax,dword ptr [ebp-4]
 004D2BAF    cmp         byte ptr [eax+238],0;TCheckListBox.FStyle:TListBoxStyle
>004D2BB6    jne         004D2C36
 004D2BB8    mov         eax,dword ptr [ebp-4]
 004D2BBB    cmp         word ptr [eax+252],0;TCheckListBox.?f252:word
>004D2BC3    je          004D2C36
 004D2BC5    mov         eax,dword ptr [ebp-4]
 004D2BC8    mov         edx,dword ptr [eax+250];TCheckListBox.FOnDrawItem:TDrawItemEvent
 004D2BCE    mov         dword ptr [ebp-10],edx
 004D2BD1    mov         edx,dword ptr [eax+254];TCheckListBox.?f254:dword
 004D2BD7    mov         dword ptr [ebp-0C],edx
 004D2BDA    mov         eax,dword ptr [ebp-4]
 004D2BDD    xor         edx,edx
 004D2BDF    mov         dword ptr [eax+250],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 004D2BE5    mov         dword ptr [eax+254],edx;TCheckListBox.?f254:dword
 004D2BEB    xor         eax,eax
 004D2BED    push        ebp
 004D2BEE    push        4D2C2F
 004D2BF3    push        dword ptr fs:[eax]
 004D2BF6    mov         dword ptr fs:[eax],esp
 004D2BF9    mov         ax,word ptr [ebp+8]
 004D2BFD    push        eax
 004D2BFE    lea         ecx,[ebp-25]
 004D2C01    mov         edx,dword ptr [ebp-8]
 004D2C04    mov         eax,dword ptr [ebp-4]
 004D2C07    call        0047A6A4
 004D2C0C    xor         eax,eax
 004D2C0E    pop         edx
 004D2C0F    pop         ecx
 004D2C10    pop         ecx
 004D2C11    mov         dword ptr fs:[eax],edx
 004D2C14    push        4D2C49
 004D2C19    mov         eax,dword ptr [ebp-4]
 004D2C1C    mov         edx,dword ptr [ebp-10]
 004D2C1F    mov         dword ptr [eax+250],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 004D2C25    mov         edx,dword ptr [ebp-0C]
 004D2C28    mov         dword ptr [eax+254],edx;TCheckListBox.?f254:dword
 004D2C2E    ret
>004D2C2F    jmp         @HandleFinally
>004D2C34    jmp         004D2C19
 004D2C36    mov         ax,word ptr [ebp+8]
 004D2C3A    push        eax
 004D2C3B    lea         ecx,[ebp-25]
 004D2C3E    mov         edx,dword ptr [ebp-8]
 004D2C41    mov         eax,dword ptr [ebp-4]
 004D2C44    call        0047A6A4
 004D2C49    pop         edi
 004D2C4A    pop         esi
 004D2C4B    mov         esp,ebp
 004D2C4D    pop         ebp
 004D2C4E    ret         4
end;*}

//004D2C54
{*procedure TCheckListBox.sub_0047A81C(?:?);
begin
 004D2C54    push        ebp
 004D2C55    mov         ebp,esp
 004D2C57    add         esp,0FFFFFFF4
 004D2C5A    push        esi
 004D2C5B    mov         dword ptr [ebp-8],edx
 004D2C5E    mov         dword ptr [ebp-4],eax
 004D2C61    mov         eax,dword ptr [ebp-4]
 004D2C64    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D2C6A    mov         edx,dword ptr [eax]
 004D2C6C    call        dword ptr [edx+14];@AbstractError
 004D2C6F    test        eax,eax
>004D2C71    je          004D2CC7
 004D2C73    mov         eax,dword ptr [ebp-8]
 004D2C76    mov         eax,dword ptr [eax+8]
 004D2C79    mov         dword ptr [ebp-0C],eax
 004D2C7C    mov         eax,dword ptr [ebp-0C]
 004D2C7F    mov         edx,dword ptr [eax+8]
 004D2C82    mov         eax,dword ptr [ebp-4]
 004D2C85    call        004D35EC
 004D2C8A    test        al,al
>004D2C8C    jne         004D2CBC
 004D2C8E    mov         eax,dword ptr [ebp-4]
 004D2C91    mov         si,0FFC8
 004D2C95    call        @CallDynaInst;TControl.sub_0048415C
 004D2C9A    test        al,al
>004D2C9C    jne         004D2CAE
 004D2C9E    mov         eax,dword ptr [ebp-4]
 004D2CA1    call        004D29E0
 004D2CA6    mov         edx,dword ptr [ebp-0C]
 004D2CA9    add         dword ptr [edx+1C],eax
>004D2CAC    jmp         004D2CBC
 004D2CAE    mov         eax,dword ptr [ebp-4]
 004D2CB1    call        004D29E0
 004D2CB6    mov         edx,dword ptr [ebp-0C]
 004D2CB9    sub         dword ptr [edx+24],eax
 004D2CBC    mov         edx,dword ptr [ebp-8]
 004D2CBF    mov         eax,dword ptr [ebp-4]
 004D2CC2    call        TCustomListBox.sub_0047A81C
 004D2CC7    pop         esi
 004D2CC8    mov         esp,ebp
 004D2CCA    pop         ebp
 004D2CCB    ret
end;*}

//004D2CCC
{*procedure sub_004D2CCC(?:TCheckListBox; ?:?; ?:?; ?:?);
begin
 004D2CCC    push        ebp
 004D2CCD    mov         ebp,esp
 004D2CCF    add         esp,0FFFFFFB0
 004D2CD2    push        esi
 004D2CD3    push        edi
 004D2CD4    mov         esi,edx
 004D2CD6    lea         edi,[ebp-34]
 004D2CD9    movs        dword ptr [edi],dword ptr [esi]
 004D2CDA    movs        dword ptr [edi],dword ptr [esi]
 004D2CDB    movs        dword ptr [edi],dword ptr [esi]
 004D2CDC    movs        dword ptr [edi],dword ptr [esi]
 004D2CDD    mov         byte ptr [ebp-5],cl
 004D2CE0    mov         dword ptr [ebp-4],eax
 004D2CE3    xor         eax,eax
 004D2CE5    mov         dword ptr [ebp-20],eax
 004D2CE8    mov         eax,dword ptr [ebp-2C]
 004D2CEB    sub         eax,dword ptr [ebp-34]
 004D2CEE    sub         eax,dword ptr ds:[5721F8];FCheckWidth:Integer
 004D2CF4    sar         eax,1
>004D2CF6    jns         004D2CFB
 004D2CF8    adc         eax,0
 004D2CFB    add         eax,dword ptr [ebp-34]
 004D2CFE    mov         dword ptr [ebp-44],eax
 004D2D01    mov         eax,dword ptr [ebp-28]
 004D2D04    sub         eax,dword ptr [ebp-30]
 004D2D07    sub         eax,dword ptr ds:[5721FC];FCheckHeight:Integer
 004D2D0D    sar         eax,1
>004D2D0F    jns         004D2D14
 004D2D11    adc         eax,0
 004D2D14    add         eax,dword ptr [ebp-30]
 004D2D17    mov         dword ptr [ebp-40],eax
 004D2D1A    mov         eax,dword ptr [ebp-44]
 004D2D1D    add         eax,dword ptr ds:[5721F8];0x0 FCheckWidth:Integer
 004D2D23    mov         dword ptr [ebp-3C],eax
 004D2D26    mov         eax,dword ptr [ebp-40]
 004D2D29    add         eax,dword ptr ds:[5721FC];0x0 FCheckHeight:Integer
 004D2D2F    mov         dword ptr [ebp-38],eax
 004D2D32    mov         eax,dword ptr [ebp-4]
 004D2D35    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 004D2D3B    mov         dword ptr [ebp-24],eax
 004D2D3E    mov         eax,dword ptr [ebp-4]
 004D2D41    cmp         byte ptr [eax+281],0;TCheckListBox.Flat:Boolean
>004D2D48    je          004D2DAB
 004D2D4A    push        0
 004D2D4C    push        0
 004D2D4E    push        0
 004D2D50    push        0
 004D2D52    call        gdi32.CreateRectRgn
 004D2D57    mov         dword ptr [ebp-20],eax
 004D2D5A    mov         eax,dword ptr [ebp-20]
 004D2D5D    push        eax
 004D2D5E    mov         eax,dword ptr [ebp-24]
 004D2D61    call        0042F6A0
 004D2D66    push        eax
 004D2D67    call        gdi32.GetClipRgn
 004D2D6C    mov         eax,dword ptr [ebp-38]
 004D2D6F    sub         eax,2
 004D2D72    push        eax
 004D2D73    mov         eax,dword ptr [ebp-3C]
 004D2D76    sub         eax,2
 004D2D79    push        eax
 004D2D7A    mov         eax,dword ptr [ebp-40]
 004D2D7D    add         eax,2
 004D2D80    push        eax
 004D2D81    mov         eax,dword ptr [ebp-44]
 004D2D84    add         eax,2
 004D2D87    push        eax
 004D2D88    call        gdi32.CreateRectRgn
 004D2D8D    mov         dword ptr [ebp-1C],eax
 004D2D90    mov         eax,dword ptr [ebp-1C]
 004D2D93    push        eax
 004D2D94    mov         eax,dword ptr [ebp-24]
 004D2D97    call        0042F6A0
 004D2D9C    push        eax
 004D2D9D    call        gdi32.SelectClipRgn
 004D2DA2    mov         eax,dword ptr [ebp-1C]
 004D2DA5    push        eax
 004D2DA6    call        gdi32.DeleteObject
 004D2DAB    call        0046BFC0
 004D2DB0    call        0046C0EC
 004D2DB5    test        al,al
>004D2DB7    je          004D2E5B
 004D2DBD    mov         al,byte ptr [ebp-5]
 004D2DC0    sub         al,1
>004D2DC2    jb          004D2DEE
>004D2DC4    jne         004D2E16
 004D2DC6    cmp         byte ptr [ebp+8],0
>004D2DCA    je          004D2DDD
 004D2DCC    call        0046BFC0
 004D2DD1    lea         ecx,[ebp-50]
 004D2DD4    mov         dl,13
 004D2DD6    call        0046C3C8
>004D2DDB    jmp         004D2E3C
 004D2DDD    call        0046BFC0
 004D2DE2    lea         ecx,[ebp-50]
 004D2DE5    mov         dl,16
 004D2DE7    call        0046C3C8
>004D2DEC    jmp         004D2E3C
 004D2DEE    cmp         byte ptr [ebp+8],0
>004D2DF2    je          004D2E05
 004D2DF4    call        0046BFC0
 004D2DF9    lea         ecx,[ebp-50]
 004D2DFC    mov         dl,0F
 004D2DFE    call        0046C3C8
>004D2E03    jmp         004D2E3C
 004D2E05    call        0046BFC0
 004D2E0A    lea         ecx,[ebp-50]
 004D2E0D    mov         dl,12
 004D2E0F    call        0046C3C8
>004D2E14    jmp         004D2E3C
 004D2E16    cmp         byte ptr [ebp+8],0
>004D2E1A    je          004D2E2D
 004D2E1C    call        0046BFC0
 004D2E21    lea         ecx,[ebp-50]
 004D2E24    mov         dl,17
 004D2E26    call        0046C3C8
>004D2E2B    jmp         004D2E3C
 004D2E2D    call        0046BFC0
 004D2E32    lea         ecx,[ebp-50]
 004D2E35    mov         dl,1A
 004D2E37    call        0046C3C8
 004D2E3C    lea         eax,[ebp-34]
 004D2E3F    push        eax
 004D2E40    push        0
 004D2E42    mov         eax,dword ptr [ebp-24]
 004D2E45    call        0042F6A0
 004D2E4A    push        eax
 004D2E4B    call        0046BFC0
 004D2E50    lea         ecx,[ebp-50]
 004D2E53    pop         edx
 004D2E54    call        0046C254
>004D2E59    jmp         004D2EA0
 004D2E5B    mov         al,byte ptr [ebp-5]
 004D2E5E    sub         al,1
>004D2E60    jb          004D2E6D
>004D2E62    jne         004D2E74
 004D2E64    mov         dword ptr [ebp-0C],400
>004D2E6B    jmp         004D2E7B
 004D2E6D    xor         eax,eax
 004D2E6F    mov         dword ptr [ebp-0C],eax
>004D2E72    jmp         004D2E7B
 004D2E74    mov         dword ptr [ebp-0C],408
 004D2E7B    cmp         byte ptr [ebp+8],0
>004D2E7F    jne         004D2E88
 004D2E81    or          dword ptr [ebp-0C],100
 004D2E88    mov         eax,dword ptr [ebp-0C]
 004D2E8B    push        eax
 004D2E8C    push        4
 004D2E8E    lea         eax,[ebp-44]
 004D2E91    push        eax
 004D2E92    mov         eax,dword ptr [ebp-24]
 004D2E95    call        0042F6A0
 004D2E9A    push        eax
 004D2E9B    call        user32.DrawFrameControl
 004D2EA0    mov         eax,dword ptr [ebp-4]
 004D2EA3    cmp         byte ptr [eax+281],0;TCheckListBox.Flat:Boolean
>004D2EAA    je          004D2F56
 004D2EB0    mov         eax,dword ptr [ebp-20]
 004D2EB3    push        eax
 004D2EB4    mov         eax,dword ptr [ebp-24]
 004D2EB7    call        0042F6A0
 004D2EBC    push        eax
 004D2EBD    call        gdi32.SelectClipRgn
 004D2EC2    mov         eax,dword ptr [ebp-20]
 004D2EC5    push        eax
 004D2EC6    call        gdi32.DeleteObject
 004D2ECB    mov         eax,dword ptr [ebp-24]
 004D2ECE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2ED1    call        TBrush.GetStyle
 004D2ED6    mov         byte ptr [ebp-11],al
 004D2ED9    mov         eax,dword ptr [ebp-24]
 004D2EDC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2EDF    call        TBrush.GetColor
 004D2EE4    mov         dword ptr [ebp-10],eax
 004D2EE7    mov         eax,dword ptr [ebp-24]
 004D2EEA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004D2EED    call        TPen.GetColor
 004D2EF2    mov         dword ptr [ebp-18],eax
 004D2EF5    mov         dl,1
 004D2EF7    mov         eax,dword ptr [ebp-24]
 004D2EFA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2EFD    call        TBrush.SetStyle
 004D2F02    mov         edx,0FF000010
 004D2F07    mov         eax,dword ptr [ebp-24]
 004D2F0A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004D2F0D    call        TPen.SetColor
 004D2F12    mov         eax,dword ptr [ebp-3C]
 004D2F15    dec         eax
 004D2F16    push        eax
 004D2F17    mov         eax,dword ptr [ebp-38]
 004D2F1A    dec         eax
 004D2F1B    push        eax
 004D2F1C    mov         ecx,dword ptr [ebp-40]
 004D2F1F    inc         ecx
 004D2F20    mov         edx,dword ptr [ebp-44]
 004D2F23    inc         edx
 004D2F24    mov         eax,dword ptr [ebp-24]
 004D2F27    call        0042F220
 004D2F2C    mov         dl,byte ptr [ebp-11]
 004D2F2F    mov         eax,dword ptr [ebp-24]
 004D2F32    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2F35    call        TBrush.SetStyle
 004D2F3A    mov         edx,dword ptr [ebp-10]
 004D2F3D    mov         eax,dword ptr [ebp-24]
 004D2F40    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D2F43    call        TBrush.SetColor
 004D2F48    mov         edx,dword ptr [ebp-18]
 004D2F4B    mov         eax,dword ptr [ebp-24]
 004D2F4E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004D2F51    call        TPen.SetColor
 004D2F56    pop         edi
 004D2F57    pop         esi
 004D2F58    mov         esp,ebp
 004D2F5A    pop         ebp
 004D2F5B    ret         4
end;*}

//004D2F60
{*procedure sub_004D2F60(?:TCheckListBox; ?:?; ?:?);
begin
 004D2F60    push        ebp
 004D2F61    mov         ebp,esp
 004D2F63    add         esp,0FFFFFFF4
 004D2F66    mov         byte ptr [ebp-9],cl
 004D2F69    mov         dword ptr [ebp-8],edx
 004D2F6C    mov         dword ptr [ebp-4],eax
 004D2F6F    mov         edx,dword ptr [ebp-8]
 004D2F72    mov         eax,dword ptr [ebp-4]
 004D2F75    call        004D3074
 004D2F7A    cmp         al,byte ptr [ebp-9]
>004D2F7D    je          004D2F9D
 004D2F7F    mov         edx,dword ptr [ebp-8]
 004D2F82    mov         eax,dword ptr [ebp-4]
 004D2F85    call        004D334C
 004D2F8A    mov         dl,byte ptr [ebp-9]
 004D2F8D    call        004D2784
 004D2F92    mov         edx,dword ptr [ebp-8]
 004D2F95    mov         eax,dword ptr [ebp-4]
 004D2F98    call        004D2FE4
 004D2F9D    mov         esp,ebp
 004D2F9F    pop         ebp
 004D2FA0    ret
end;*}

//004D2FA4
{*procedure sub_004D2FA4(?:TCheckListBox; ?:?; ?:?);
begin
 004D2FA4    push        ebp
 004D2FA5    mov         ebp,esp
 004D2FA7    add         esp,0FFFFFFF4
 004D2FAA    mov         byte ptr [ebp-9],cl
 004D2FAD    mov         dword ptr [ebp-8],edx
 004D2FB0    mov         dword ptr [ebp-4],eax
 004D2FB3    mov         edx,dword ptr [ebp-8]
 004D2FB6    mov         eax,dword ptr [ebp-4]
 004D2FB9    call        004D30EC
 004D2FBE    cmp         al,byte ptr [ebp-9]
>004D2FC1    je          004D2FDF
 004D2FC3    mov         edx,dword ptr [ebp-8]
 004D2FC6    mov         eax,dword ptr [ebp-4]
 004D2FC9    call        004D334C
 004D2FCE    mov         dl,byte ptr [ebp-9]
 004D2FD1    mov         byte ptr [eax+8],dl
 004D2FD4    mov         edx,dword ptr [ebp-8]
 004D2FD7    mov         eax,dword ptr [ebp-4]
 004D2FDA    call        004D2FE4
 004D2FDF    mov         esp,ebp
 004D2FE1    pop         ebp
 004D2FE2    ret
end;*}

//004D2FE4
{*procedure sub_004D2FE4(?:?; ?:?);
begin
 004D2FE4    push        ebp
 004D2FE5    mov         ebp,esp
 004D2FE7    add         esp,0FFFFFFE8
 004D2FEA    push        esi
 004D2FEB    mov         dword ptr [ebp-8],edx
 004D2FEE    mov         dword ptr [ebp-4],eax
 004D2FF1    mov         edx,dword ptr [ebp-8]
 004D2FF4    mov         eax,dword ptr [ebp-4]
 004D2FF7    call        004D35EC
 004D2FFC    test        al,al
>004D2FFE    jne         004D306F
 004D3000    lea         ecx,[ebp-18]
 004D3003    mov         edx,dword ptr [ebp-8]
 004D3006    mov         eax,dword ptr [ebp-4]
 004D3009    call        00479F18
 004D300E    mov         eax,dword ptr [ebp-4]
 004D3011    mov         si,0FFC8
 004D3015    call        @CallDynaInst
 004D301A    test        al,al
>004D301C    jne         004D302E
 004D301E    mov         eax,dword ptr [ebp-4]
 004D3021    call        004D29E0
 004D3026    add         eax,dword ptr [ebp-18]
 004D3029    mov         dword ptr [ebp-10],eax
>004D302C    jmp         004D303E
 004D302E    mov         eax,dword ptr [ebp-4]
 004D3031    call        004D29E0
 004D3036    mov         edx,dword ptr [ebp-10]
 004D3039    sub         edx,eax
 004D303B    mov         dword ptr [ebp-18],edx
 004D303E    mov         eax,dword ptr [ebp-4]
 004D3041    test        byte ptr [eax+50],40
 004D3045    setne       al
 004D3048    xor         al,1
 004D304A    neg         al
 004D304C    sbb         eax,eax
 004D304E    push        eax
 004D304F    lea         eax,[ebp-18]
 004D3052    push        eax
 004D3053    mov         eax,dword ptr [ebp-4]
 004D3056    call        TWinControl.GetHandle
 004D305B    push        eax
 004D305C    call        user32.InvalidateRect
 004D3061    mov         eax,dword ptr [ebp-4]
 004D3064    call        TWinControl.GetHandle
 004D3069    push        eax
 004D306A    call        user32.UpdateWindow
 004D306F    pop         esi
 004D3070    mov         esp,ebp
 004D3072    pop         ebp
 004D3073    ret
end;*}

//004D3074
{*function sub_004D3074(?:TCheckListBox; ?:?):?;
begin
 004D3074    push        ebp
 004D3075    mov         ebp,esp
 004D3077    add         esp,0FFFFFFF4
 004D307A    mov         dword ptr [ebp-8],edx
 004D307D    mov         dword ptr [ebp-4],eax
 004D3080    mov         edx,dword ptr [ebp-8]
 004D3083    mov         eax,dword ptr [ebp-4]
 004D3086    call        004D3468
 004D308B    test        al,al
>004D308D    je          004D30A4
 004D308F    mov         edx,dword ptr [ebp-8]
 004D3092    mov         eax,dword ptr [ebp-4]
 004D3095    call        004D334C
 004D309A    call        004D27AC
 004D309F    mov         byte ptr [ebp-9],al
>004D30A2    jmp         004D30A8
 004D30A4    mov         byte ptr [ebp-9],0
 004D30A8    mov         al,byte ptr [ebp-9]
 004D30AB    mov         esp,ebp
 004D30AD    pop         ebp
 004D30AE    ret
end;*}

//004D30B0
{*function sub_004D30B0(?:TCheckListBox; ?:?):?;
begin
 004D30B0    push        ebp
 004D30B1    mov         ebp,esp
 004D30B3    add         esp,0FFFFFFF4
 004D30B6    mov         dword ptr [ebp-8],edx
 004D30B9    mov         dword ptr [ebp-4],eax
 004D30BC    mov         edx,dword ptr [ebp-8]
 004D30BF    mov         eax,dword ptr [ebp-4]
 004D30C2    call        004D3468
 004D30C7    test        al,al
>004D30C9    je          004D30E0
 004D30CB    mov         edx,dword ptr [ebp-8]
 004D30CE    mov         eax,dword ptr [ebp-4]
 004D30D1    call        004D334C
 004D30D6    mov         al,byte ptr [eax+9]
 004D30D9    xor         al,1
 004D30DB    mov         byte ptr [ebp-9],al
>004D30DE    jmp         004D30E4
 004D30E0    mov         byte ptr [ebp-9],1
 004D30E4    mov         al,byte ptr [ebp-9]
 004D30E7    mov         esp,ebp
 004D30E9    pop         ebp
 004D30EA    ret
end;*}

//004D30EC
{*function sub_004D30EC(?:TCheckListBox; ?:?):?;
begin
 004D30EC    push        ebp
 004D30ED    mov         ebp,esp
 004D30EF    add         esp,0FFFFFFF4
 004D30F2    mov         dword ptr [ebp-8],edx
 004D30F5    mov         dword ptr [ebp-4],eax
 004D30F8    mov         edx,dword ptr [ebp-8]
 004D30FB    mov         eax,dword ptr [ebp-4]
 004D30FE    call        004D3468
 004D3103    test        al,al
>004D3105    je          004D311A
 004D3107    mov         edx,dword ptr [ebp-8]
 004D310A    mov         eax,dword ptr [ebp-4]
 004D310D    call        004D334C
 004D3112    mov         al,byte ptr [eax+8]
 004D3115    mov         byte ptr [ebp-9],al
>004D3118    jmp         004D3127
 004D311A    mov         eax,[004D2638];TCheckListBoxDataWrapper
 004D311F    call        004D27C8
 004D3124    mov         byte ptr [ebp-9],al
 004D3127    mov         al,byte ptr [ebp-9]
 004D312A    mov         esp,ebp
 004D312C    pop         ebp
 004D312D    ret
end;*}

//004D3130
{*procedure TCheckListBox.sub_0047AAE4(?:?);
begin
 004D3130    push        ebp
 004D3131    mov         ebp,esp
 004D3133    add         esp,0FFFFFFF8
 004D3136    mov         dword ptr [ebp-8],edx
 004D3139    mov         dword ptr [ebp-4],eax
 004D313C    mov         eax,dword ptr [ebp-8]
 004D313F    cmp         byte ptr [eax],20
>004D3142    jne         004D3159
 004D3144    mov         eax,dword ptr [ebp-4]
 004D3147    mov         edx,dword ptr [eax]
 004D3149    call        dword ptr [edx+0CC];TCheckListBox.sub_00479780
 004D314F    mov         edx,eax
 004D3151    mov         eax,dword ptr [ebp-4]
 004D3154    call        004D3254
 004D3159    mov         edx,dword ptr [ebp-8]
 004D315C    mov         eax,dword ptr [ebp-4]
 004D315F    call        TCustomListBox.sub_0047AAE4
 004D3164    pop         ecx
 004D3165    pop         ecx
 004D3166    pop         ebp
 004D3167    ret
end;*}

//004D3168
{*procedure TCheckListBox.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004D3168    push        ebp
 004D3169    mov         ebp,esp
 004D316B    add         esp,0FFFFFFDC
 004D316E    push        ebx
 004D316F    push        esi
 004D3170    mov         byte ptr [ebp-6],cl
 004D3173    mov         byte ptr [ebp-5],dl
 004D3176    mov         dword ptr [ebp-4],eax
 004D3179    mov         eax,dword ptr [ebp+0C]
 004D317C    push        eax
 004D317D    mov         eax,dword ptr [ebp+8]
 004D3180    push        eax
 004D3181    mov         cl,byte ptr [ebp-6]
 004D3184    mov         dl,byte ptr [ebp-5]
 004D3187    mov         eax,dword ptr [ebp-4]
 004D318A    call        TControl.sub_00485588
 004D318F    cmp         byte ptr [ebp-5],0
>004D3193    jne         004D3249
 004D3199    lea         ecx,[ebp-14]
 004D319C    mov         edx,dword ptr [ebp+8]
 004D319F    mov         eax,dword ptr [ebp+0C]
 004D31A2    call        Point
 004D31A7    lea         edx,[ebp-14]
 004D31AA    mov         cl,1
 004D31AC    mov         eax,dword ptr [ebp-4]
 004D31AF    call        00479E78
 004D31B4    mov         dword ptr [ebp-0C],eax
 004D31B7    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004D31BB    je          004D3249
 004D31C1    mov         edx,dword ptr [ebp-0C]
 004D31C4    mov         eax,dword ptr [ebp-4]
 004D31C7    call        004D30B0
 004D31CC    test        al,al
>004D31CE    je          004D3249
 004D31D0    mov         eax,dword ptr [ebp-4]
 004D31D3    mov         si,0FFC8
 004D31D7    call        @CallDynaInst;TControl.sub_0048415C
 004D31DC    test        al,al
>004D31DE    jne         004D320D
 004D31E0    lea         ecx,[ebp-24]
 004D31E3    mov         edx,dword ptr [ebp-0C]
 004D31E6    mov         eax,dword ptr [ebp-4]
 004D31E9    call        00479F18
 004D31EE    mov         ebx,dword ptr [ebp+0C]
 004D31F1    sub         ebx,dword ptr [ebp-24]
 004D31F4    mov         eax,dword ptr [ebp-4]
 004D31F7    call        004D29E0
 004D31FC    cmp         ebx,eax
>004D31FE    jge         004D3249
 004D3200    mov         edx,dword ptr [ebp-0C]
 004D3203    mov         eax,dword ptr [ebp-4]
 004D3206    call        004D3254
>004D320B    jmp         004D3249
 004D320D    lea         ecx,[ebp-24]
 004D3210    mov         edx,dword ptr [ebp-0C]
 004D3213    mov         eax,dword ptr [ebp-4]
 004D3216    call        00479F18
 004D321B    mov         ebx,dword ptr [ebp-1C]
 004D321E    mov         eax,dword ptr [ebp-4]
 004D3221    call        004D29E0
 004D3226    sub         ebx,eax
 004D3228    sub         dword ptr [ebp+0C],ebx
 004D322B    cmp         dword ptr [ebp+0C],0
>004D322F    jle         004D3249
 004D3231    mov         eax,dword ptr [ebp-4]
 004D3234    call        004D29E0
 004D3239    cmp         eax,dword ptr [ebp+0C]
>004D323C    jle         004D3249
 004D323E    mov         edx,dword ptr [ebp-0C]
 004D3241    mov         eax,dword ptr [ebp-4]
 004D3244    call        004D3254
 004D3249    pop         esi
 004D324A    pop         ebx
 004D324B    mov         esp,ebp
 004D324D    pop         ebp
 004D324E    ret         8
end;*}

//004D3254
{*procedure sub_004D3254(?:TCheckListBox; ?:?);
begin
 004D3254    push        ebp
 004D3255    mov         ebp,esp
 004D3257    add         esp,0FFFFFFF4
 004D325A    push        esi
 004D325B    mov         dword ptr [ebp-8],edx
 004D325E    mov         dword ptr [ebp-4],eax
 004D3261    cmp         dword ptr [ebp-8],0
>004D3265    jl          004D32E2
 004D3267    mov         eax,dword ptr [ebp-4]
 004D326A    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D3270    mov         edx,dword ptr [eax]
 004D3272    call        dword ptr [edx+14];@AbstractError
 004D3275    cmp         eax,dword ptr [ebp-8]
>004D3278    jle         004D32E2
 004D327A    mov         edx,dword ptr [ebp-8]
 004D327D    mov         eax,dword ptr [ebp-4]
 004D3280    call        004D30B0
 004D3285    test        al,al
>004D3287    je          004D32E2
 004D3289    mov         edx,dword ptr [ebp-8]
 004D328C    mov         eax,dword ptr [ebp-4]
 004D328F    call        004D30EC
 004D3294    mov         byte ptr [ebp-9],al
 004D3297    mov         al,byte ptr [ebp-9]
 004D329A    sub         al,1
>004D329C    jb          004D32A6
>004D329E    je          004D32BE
 004D32A0    dec         al
>004D32A2    je          004D32C4
>004D32A4    jmp         004D32C8
 004D32A6    mov         eax,dword ptr [ebp-4]
 004D32A9    cmp         byte ptr [eax+280],0;TCheckListBox.AllowGrayed:Boolean
>004D32B0    je          004D32B8
 004D32B2    mov         byte ptr [ebp-9],2
>004D32B6    jmp         004D32C8
 004D32B8    mov         byte ptr [ebp-9],1
>004D32BC    jmp         004D32C8
 004D32BE    mov         byte ptr [ebp-9],0
>004D32C2    jmp         004D32C8
 004D32C4    mov         byte ptr [ebp-9],1
 004D32C8    mov         cl,byte ptr [ebp-9]
 004D32CB    mov         edx,dword ptr [ebp-8]
 004D32CE    mov         eax,dword ptr [ebp-4]
 004D32D1    call        004D2FA4
 004D32D6    mov         eax,dword ptr [ebp-4]
 004D32D9    mov         si,0FFAD
 004D32DD    call        @CallDynaInst;TCheckListBox.sub_004D32E8
 004D32E2    pop         esi
 004D32E3    mov         esp,ebp
 004D32E5    pop         ebp
 004D32E6    ret
end;*}

//004D32E8
procedure TCheckListBox.sub_004D32E8;
begin
{*
 004D32E8    push        ebp
 004D32E9    mov         ebp,esp
 004D32EB    push        ecx
 004D32EC    push        ebx
 004D32ED    mov         dword ptr [ebp-4],eax
 004D32F0    mov         eax,dword ptr [ebp-4]
 004D32F3    cmp         word ptr [eax+28A],0;TCheckListBox.?f28A:word
>004D32FB    je          004D330F
 004D32FD    mov         ebx,dword ptr [ebp-4]
 004D3300    mov         edx,dword ptr [ebp-4]
 004D3303    mov         eax,dword ptr [ebx+28C];TCheckListBox.?f28C:dword
 004D3309    call        dword ptr [ebx+288];TCheckListBox.OnClickCheck
 004D330F    pop         ebx
 004D3310    pop         ecx
 004D3311    pop         ebp
 004D3312    ret
*}
end;

//004D3314
{*procedure TCheckListBox.sub_00479358(?:?);
begin
 004D3314    push        ebp
 004D3315    mov         ebp,esp
 004D3317    add         esp,0FFFFFFF4
 004D331A    mov         dword ptr [ebp-8],edx
 004D331D    mov         dword ptr [ebp-4],eax
 004D3320    xor         eax,eax
 004D3322    mov         dword ptr [ebp-0C],eax
 004D3325    mov         edx,dword ptr [ebp-8]
 004D3328    mov         eax,dword ptr [ebp-4]
 004D332B    call        004D3468
 004D3330    test        al,al
>004D3332    je          004D3345
 004D3334    mov         edx,dword ptr [ebp-8]
 004D3337    mov         eax,dword ptr [ebp-4]
 004D333A    call        004D334C
 004D333F    mov         eax,dword ptr [eax+4]
 004D3342    mov         dword ptr [ebp-0C],eax
 004D3345    mov         eax,dword ptr [ebp-0C]
 004D3348    mov         esp,ebp
 004D334A    pop         ebp
 004D334B    ret
end;*}

//004D334C
{*function sub_004D334C(?:TCheckListBox; ?:?):?;
begin
 004D334C    push        ebp
 004D334D    mov         ebp,esp
 004D334F    add         esp,0FFFFFFF4
 004D3352    mov         dword ptr [ebp-8],edx
 004D3355    mov         dword ptr [ebp-4],eax
 004D3358    mov         edx,dword ptr [ebp-8]
 004D335B    mov         eax,dword ptr [ebp-4]
 004D335E    call        004D3384
 004D3363    mov         dword ptr [ebp-0C],eax
 004D3366    cmp         dword ptr [ebp-0C],0
>004D336A    jne         004D337A
 004D336C    mov         edx,dword ptr [ebp-8]
 004D336F    mov         eax,dword ptr [ebp-4]
 004D3372    call        004D3438
 004D3377    mov         dword ptr [ebp-0C],eax
 004D337A    mov         eax,dword ptr [ebp-0C]
 004D337D    mov         esp,ebp
 004D337F    pop         ebp
 004D3380    ret
end;*}

//004D3384
{*function sub_004D3384(?:TCheckListBox; ?:?):?;
begin
 004D3384    push        ebp
 004D3385    mov         ebp,esp
 004D3387    add         esp,0FFFFFFEC
 004D338A    mov         dword ptr [ebp-8],edx
 004D338D    mov         dword ptr [ebp-4],eax
 004D3390    mov         edx,dword ptr [ebp-8]
 004D3393    mov         eax,dword ptr [ebp-4]
 004D3396    call        TCustomListBox.sub_00479358
 004D339B    mov         dword ptr [ebp-0C],eax
 004D339E    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004D33A2    jne         004D33CB
 004D33A4    mov         eax,dword ptr [ebp-8]
 004D33A7    mov         dword ptr [ebp-14],eax
 004D33AA    mov         byte ptr [ebp-10],0
 004D33AE    lea         eax,[ebp-14]
 004D33B1    push        eax
 004D33B2    push        0
 004D33B4    mov         ecx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 004D33BA    mov         dl,1
 004D33BC    mov         eax,[0041D244];EListError
 004D33C1    call        Exception.CreateResFmt;EListError.Create
 004D33C6    call        @RaiseExcept
 004D33CB    cmp         dword ptr [ebp-0C],0
>004D33CF    je          004D33E8
 004D33D1    mov         eax,dword ptr [ebp-0C]
 004D33D4    mov         edx,dword ptr ds:[4D2638];TCheckListBoxDataWrapper
 004D33DA    call        @IsClass
 004D33DF    test        al,al
>004D33E1    jne         004D33E8
 004D33E3    xor         eax,eax
 004D33E5    mov         dword ptr [ebp-0C],eax
 004D33E8    mov         eax,dword ptr [ebp-0C]
 004D33EB    mov         esp,ebp
 004D33ED    pop         ebp
 004D33EE    ret
end;*}

//004D33F0
{*procedure TCheckListBox.sub_004793B8(?:?);
begin
 004D33F0    push        ebp
 004D33F1    mov         ebp,esp
 004D33F3    add         esp,0FFFFFFF4
 004D33F6    mov         dword ptr [ebp-8],edx
 004D33F9    mov         dword ptr [ebp-4],eax
 004D33FC    mov         edx,dword ptr [ebp-8]
 004D33FF    mov         eax,dword ptr [ebp-4]
 004D3402    call        TCustomListBox.sub_00479358
 004D3407    mov         dword ptr [ebp-0C],eax
 004D340A    mov         eax,dword ptr [ebp-0C]
 004D340D    mov         esp,ebp
 004D340F    pop         ebp
 004D3410    ret
end;*}

//004D3414
{*procedure TCheckListBox.sub_004793E0(?:?; ?:?);
begin
 004D3414    push        ebp
 004D3415    mov         ebp,esp
 004D3417    add         esp,0FFFFFFF4
 004D341A    mov         dword ptr [ebp-0C],ecx
 004D341D    mov         dword ptr [ebp-8],edx
 004D3420    mov         dword ptr [ebp-4],eax
 004D3423    mov         ecx,dword ptr [ebp-0C]
 004D3426    mov         edx,dword ptr [ebp-8]
 004D3429    mov         eax,dword ptr [ebp-4]
 004D342C    call        TCustomListBox.sub_00479388
 004D3431    mov         esp,ebp
 004D3433    pop         ebp
 004D3434    ret
end;*}

//004D3438
{*function sub_004D3438(?:TCheckListBox; ?:?):?;
begin
 004D3438    push        ebp
 004D3439    mov         ebp,esp
 004D343B    add         esp,0FFFFFFF4
 004D343E    mov         dword ptr [ebp-8],edx
 004D3441    mov         dword ptr [ebp-4],eax
 004D3444    mov         dl,1
 004D3446    mov         eax,[004D2638];TCheckListBoxDataWrapper
 004D344B    call        TObject.Create;TCheckListBoxDataWrapper.Create
 004D3450    mov         dword ptr [ebp-0C],eax
 004D3453    mov         ecx,dword ptr [ebp-0C]
 004D3456    mov         edx,dword ptr [ebp-8]
 004D3459    mov         eax,dword ptr [ebp-4]
 004D345C    call        TCustomListBox.sub_00479388
 004D3461    mov         eax,dword ptr [ebp-0C]
 004D3464    mov         esp,ebp
 004D3466    pop         ebp
 004D3467    ret
end;*}

//004D3468
{*function sub_004D3468(?:TCheckListBox; ?:?):?;
begin
 004D3468    push        ebp
 004D3469    mov         ebp,esp
 004D346B    add         esp,0FFFFFFF4
 004D346E    mov         dword ptr [ebp-8],edx
 004D3471    mov         dword ptr [ebp-4],eax
 004D3474    mov         edx,dword ptr [ebp-8]
 004D3477    mov         eax,dword ptr [ebp-4]
 004D347A    call        004D3384
 004D347F    test        eax,eax
 004D3481    setne       byte ptr [ebp-9]
 004D3485    mov         al,byte ptr [ebp-9]
 004D3488    mov         esp,ebp
 004D348A    pop         ebp
 004D348B    ret
end;*}

//004D348C
{*procedure TCheckListBox.sub_00479388(?:?; ?:TCheckListBoxDataWrapper);
begin
 004D348C    push        ebp
 004D348D    mov         ebp,esp
 004D348F    add         esp,0FFFFFFF0
 004D3492    mov         dword ptr [ebp-0C],ecx
 004D3495    mov         dword ptr [ebp-8],edx
 004D3498    mov         dword ptr [ebp-4],eax
 004D349B    mov         edx,dword ptr [ebp-8]
 004D349E    mov         eax,dword ptr [ebp-4]
 004D34A1    call        004D3468
 004D34A6    test        al,al
>004D34A8    jne         004D34B0
 004D34AA    cmp         dword ptr [ebp-0C],0
>004D34AE    je          004D34C7
 004D34B0    mov         edx,dword ptr [ebp-8]
 004D34B3    mov         eax,dword ptr [ebp-4]
 004D34B6    call        004D334C
 004D34BB    mov         dword ptr [ebp-10],eax
 004D34BE    mov         eax,dword ptr [ebp-10]
 004D34C1    mov         edx,dword ptr [ebp-0C]
 004D34C4    mov         dword ptr [eax+4],edx
 004D34C7    mov         esp,ebp
 004D34C9    pop         ebp
 004D34CA    ret
end;*}

//004D34CC
procedure TCheckListBox.sub_00479434;
begin
{*
 004D34CC    push        ebp
 004D34CD    mov         ebp,esp
 004D34CF    add         esp,0FFFFFFF4
 004D34D2    mov         dword ptr [ebp-4],eax
 004D34D5    mov         eax,dword ptr [ebp-4]
 004D34D8    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D34DE    mov         edx,dword ptr [eax]
 004D34E0    call        dword ptr [edx+14];@AbstractError
 004D34E3    dec         eax
 004D34E4    test        eax,eax
>004D34E6    jl          004D351A
 004D34E8    inc         eax
 004D34E9    mov         dword ptr [ebp-0C],eax
 004D34EC    mov         dword ptr [ebp-8],0
 004D34F3    mov         edx,dword ptr [ebp-8]
 004D34F6    mov         eax,dword ptr [ebp-4]
 004D34F9    call        004D3468
 004D34FE    test        al,al
>004D3500    je          004D3512
 004D3502    mov         edx,dword ptr [ebp-8]
 004D3505    mov         eax,dword ptr [ebp-4]
 004D3508    call        004D334C
 004D350D    call        TObject.Free
 004D3512    inc         dword ptr [ebp-8]
 004D3515    dec         dword ptr [ebp-0C]
>004D3518    jne         004D34F3
 004D351A    mov         eax,dword ptr [ebp-4]
 004D351D    call        TCustomListBox.sub_00479434
 004D3522    mov         esp,ebp
 004D3524    pop         ebp
 004D3525    ret
*}
end;

//004D3528
{*procedure TCheckListBox.sub_00479408(?:?);
begin
 004D3528    push        ebp
 004D3529    mov         ebp,esp
 004D352B    add         esp,0FFFFFFF8
 004D352E    mov         dword ptr [ebp-8],edx
 004D3531    mov         dword ptr [ebp-4],eax
 004D3534    mov         edx,dword ptr [ebp-8]
 004D3537    mov         eax,dword ptr [ebp-4]
 004D353A    call        004D3468
 004D353F    test        al,al
>004D3541    je          004D3553
 004D3543    mov         edx,dword ptr [ebp-8]
 004D3546    mov         eax,dword ptr [ebp-4]
 004D3549    call        004D334C
 004D354E    call        TObject.Free
 004D3553    mov         edx,dword ptr [ebp-8]
 004D3556    mov         eax,dword ptr [ebp-4]
 004D3559    call        TCustomListBox.sub_00479408
 004D355E    pop         ecx
 004D355F    pop         ecx
 004D3560    pop         ebp
 004D3561    ret
end;*}

//004D3564
procedure TCheckListBox.SetFlat(Value:Boolean);
begin
{*
 004D3564    push        ebp
 004D3565    mov         ebp,esp
 004D3567    add         esp,0FFFFFFF8
 004D356A    mov         byte ptr [ebp-5],dl
 004D356D    mov         dword ptr [ebp-4],eax
 004D3570    mov         al,byte ptr [ebp-5]
 004D3573    mov         edx,dword ptr [ebp-4]
 004D3576    cmp         al,byte ptr [edx+281];TCheckListBox.Flat:Boolean
>004D357C    je          004D3592
 004D357E    mov         al,byte ptr [ebp-5]
 004D3581    mov         edx,dword ptr [ebp-4]
 004D3584    mov         byte ptr [edx+281],al;TCheckListBox.Flat:Boolean
 004D358A    mov         eax,dword ptr [ebp-4]
 004D358D    mov         edx,dword ptr [eax]
 004D358F    call        dword ptr [edx+7C];TCheckListBox.sub_0048BE68
 004D3592    pop         ecx
 004D3593    pop         ecx
 004D3594    pop         ebp
 004D3595    ret
*}
end;

//004D3598
{*procedure TCheckListBox.WMDestroy(?:?);
begin
 004D3598    push        ebp
 004D3599    mov         ebp,esp
 004D359B    add         esp,0FFFFFFF0
 004D359E    mov         dword ptr [ebp-8],edx
 004D35A1    mov         dword ptr [ebp-4],eax
 004D35A4    mov         eax,dword ptr [ebp-4]
 004D35A7    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004D35AD    mov         edx,dword ptr [eax]
 004D35AF    call        dword ptr [edx+14];@AbstractError
 004D35B2    dec         eax
 004D35B3    test        eax,eax
>004D35B5    jl          004D35DA
 004D35B7    inc         eax
 004D35B8    mov         dword ptr [ebp-10],eax
 004D35BB    mov         dword ptr [ebp-0C],0
 004D35C2    mov         edx,dword ptr [ebp-0C]
 004D35C5    mov         eax,dword ptr [ebp-4]
 004D35C8    call        004D3384
 004D35CD    call        TObject.Free
 004D35D2    inc         dword ptr [ebp-0C]
 004D35D5    dec         dword ptr [ebp-10]
>004D35D8    jne         004D35C2
 004D35DA    mov         edx,dword ptr [ebp-8]
 004D35DD    mov         eax,dword ptr [ebp-4]
 004D35E0    call        TWinControl.WMDestroy
 004D35E5    mov         esp,ebp
 004D35E7    pop         ebp
 004D35E8    ret
end;*}

//004D35EC
{*function sub_004D35EC(?:TCheckListBox; ?:?):?;
begin
 004D35EC    push        ebp
 004D35ED    mov         ebp,esp
 004D35EF    add         esp,0FFFFFFF4
 004D35F2    mov         dword ptr [ebp-8],edx
 004D35F5    mov         dword ptr [ebp-4],eax
 004D35F8    mov         edx,dword ptr [ebp-8]
 004D35FB    mov         eax,dword ptr [ebp-4]
 004D35FE    call        004D3468
 004D3603    test        al,al
>004D3605    je          004D361A
 004D3607    mov         edx,dword ptr [ebp-8]
 004D360A    mov         eax,dword ptr [ebp-4]
 004D360D    call        004D334C
 004D3612    mov         al,byte ptr [eax+0A]
 004D3615    mov         byte ptr [ebp-9],al
>004D3618    jmp         004D361E
 004D361A    mov         byte ptr [ebp-9],0
 004D361E    mov         al,byte ptr [ebp-9]
 004D3621    mov         esp,ebp
 004D3623    pop         ebp
 004D3624    ret
end;*}

//004D3628
procedure TCheckListBox.SetHeaderBackgroundColor(Value:TColor);
begin
{*
 004D3628    push        ebp
 004D3629    mov         ebp,esp
 004D362B    add         esp,0FFFFFFF8
 004D362E    mov         dword ptr [ebp-8],edx
 004D3631    mov         dword ptr [ebp-4],eax
 004D3634    mov         eax,dword ptr [ebp-8]
 004D3637    mov         edx,dword ptr [ebp-4]
 004D363A    cmp         eax,dword ptr [edx+298];TCheckListBox.HeaderBackgroundColor:TColor
>004D3640    je          004D3656
 004D3642    mov         eax,dword ptr [ebp-8]
 004D3645    mov         edx,dword ptr [ebp-4]
 004D3648    mov         dword ptr [edx+298],eax;TCheckListBox.HeaderBackgroundColor:TColor
 004D364E    mov         eax,dword ptr [ebp-4]
 004D3651    mov         edx,dword ptr [eax]
 004D3653    call        dword ptr [edx+7C];TCheckListBox.sub_0048BE68
 004D3656    pop         ecx
 004D3657    pop         ecx
 004D3658    pop         ebp
 004D3659    ret
*}
end;

//004D365C
procedure TCheckListBox.SetHeaderColor(Value:TColor);
begin
{*
 004D365C    push        ebp
 004D365D    mov         ebp,esp
 004D365F    add         esp,0FFFFFFF8
 004D3662    mov         dword ptr [ebp-8],edx
 004D3665    mov         dword ptr [ebp-4],eax
 004D3668    mov         eax,dword ptr [ebp-8]
 004D366B    mov         edx,dword ptr [ebp-4]
 004D366E    cmp         eax,dword ptr [edx+294];TCheckListBox.HeaderColor:TColor
>004D3674    je          004D368A
 004D3676    mov         eax,dword ptr [ebp-8]
 004D3679    mov         edx,dword ptr [ebp-4]
 004D367C    mov         dword ptr [edx+294],eax;TCheckListBox.HeaderColor:TColor
 004D3682    mov         eax,dword ptr [ebp-4]
 004D3685    mov         edx,dword ptr [eax]
 004D3687    call        dword ptr [edx+7C];TCheckListBox.sub_0048BE68
 004D368A    pop         ecx
 004D368B    pop         ecx
 004D368C    pop         ebp
 004D368D    ret
*}
end;

Initialization
//004D36C0
{*
 004D36C0    push        ebp
 004D36C1    mov         ebp,esp
 004D36C3    sub         dword ptr ds:[5721F4],1
>004D36CA    jae         004D36D1
 004D36CC    call        GetCheckSize
 004D36D1    pop         ebp
 004D36D2    ret
*}
Finalization
end.