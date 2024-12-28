//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit MPHexEditorEx;

interface

uses
  SysUtils, Classes, MPHexEditorEx, Graphics, Menus, StdCtrls;

type
  TClipFormats = array of ?;
//elSize = 2;
  TMPHPrintFlag = (pfSelectionOnly, pfSelectionBold, pfMonochrome, pfUseBackgroundColor, pfCurrentViewOnly, pfIncludeRuler);
  TMPHPrintFlags = set of TMPHPrintFlag;
  TMPHPrintHeaders = array [1..2] of String;
  TMPHQueryPublicPropertyEvent = procedure(Sender:TObject; const PropertyName:String; var IsPublic:Boolean) of object;;
  TMPHexEditorEx = class(TCustomMPHexEditor)
  public
    CreateBackup:Boolean;//f680
    BackupExtension:String;//f684
    OleDragDrop:Boolean;//f688
    f68C:TMPHDropTarget;//f68C
    f694:byte;//f694
    f695:byte;//f695
    f698:dword;//f698
    f69C:dword;//f69C
    f6A0:byte;//f6A0
    PrintOptions:TMPHPrintOptions;//f6A4
    PrintFont:TFont;//f6AC
    UseEditorFontForPrinting:Boolean;//f6B0
    ClipboardAsHexText:Boolean;//f6B1
    f6B4:IDataObject;//f6B4
    FlushClipboardAtShutDown:Boolean;//f6B8
    SupportsOtherClipFormats:Boolean;//f6B9
    f6BC:TPopupMenu;//f6BC
    ZoomOnWheel:Boolean;//f6C0
    f6C4:dword;//f6C4
    OnQueryPublicProperty:TMPHQueryPublicPropertyEvent;//f6C8
    f6CA:word;//f6CA
    f6CC:dword;//f6CC
    f6D0:byte;//f6D0
    f6D1:byte;//f6D1
    f6D2:byte;//f6D2
    f6D3:byte;//f6D3
    destructor Destroy; virtual;//004EFF34
    //procedure v10(?:?; ?:?); virtual;//v10//004F1950
    constructor v2C; virtual;//v2C//004EFDC4
    procedure CreateWnd; virtual;//vA0//004F0C0C
    procedure vC8; virtual;//vC8//004F2898
    procedure vF0; virtual;//vF0//004F0674
    //function vF4(?:?; ?:?; ?:?):?; virtual;//vF4//004F1990
    procedure vF8; virtual;//vF8//004F2A3C
    //function v100:?; virtual;//v100//004F2A5C
    //procedure v10C(?:?; ?:?; ?:?); virtual;//v10C//004F2AD4
    //procedure v110(?:?); virtual;//v110//004F25FC
    //procedure v114(?:?); virtual;//v114//004F2660
    //function v118(?:?):?; virtual;//v118//004F2374
    //procedure WMDestroy(?:?); message WM_DESTROY;//004F16E0
    //procedure sub_0048A878(?:?; ?:?); dynamic;//004F0554
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004F0B44
    //procedure sub_004858F4(?:?; ?:?; ?:?); dynamic;//004F0870
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004F07EC
    //procedure sub_00484704(?:?; ?:?); dynamic;//004F04A0
    //procedure sub_004846B4(?:?; ?:?); dynamic;//004F03E0
    //procedure sub_004869A0(?:?; ?:?); dynamic;//004F17DC
    procedure sub_0048555C; dynamic;//004F28B8
    //procedure sub_0042ACC8(?:?); dynamic;//004F1B00
    //procedure sub_0042AC94(?:?); dynamic;//004F19DC
    procedure SetOleDragDrop(Value:Boolean);//004F0BB0
    procedure SetPrintOptions(Value:TMPHPrintOptions);//004F172C
    procedure SetPrintFont(Value:TFont);//004F17B0
    procedure SetOffsetPopupMenu(Value:TPopupMenu);//004F18FC
    //function GetOffsetPopupMenu:?;//004F1934
  end;
  TMPHDropTarget = class(TInterfacedObject)
  public
    fC:dword;//fC
    f10:HWND;//f10
    f14:byte;//f14
    constructor Create;//004F2B20
  end;
  TMPHPrintOptions = class(TPersistent)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:dword;//fC
    f10:dword;//f10
    f14:TMPHPrintHeaders;//f14
    Flags:TMPHPrintFlags;//f1C
    //procedure v8(?:?); virtual;//v8//004F3B2C
    constructor Create;//004F3AC8
    //procedure GetPageHeader(?:?; ?:?);//004F3B98
    //function GetMarginLeft(?:?):?;//004F3BC0
    //procedure SetPageHeader(Value:String; ?:?);//004F3C0C
    //procedure SetMarginLeft(Value:Integer; ?:?);//004F3C34
  end;
  _DynArr_83_6 = array of ?;
//elSize = 14;
  TFormatEnum = class(TObject)
  public
    ............:.6;//f4
    constructor Create;//004F2E44
  end;
  TMPHEnumFormatETC = class(TInterfacedObject)
    constructor Create;//004F3084
  end;
  TMPHDropSource = class(TInterfacedObject)
  end;
  TMPHDataObject = class(TInterfacedObject)
  public
    fC:Pointer;//fC
    f10:dword;//f10
    //f14:?;//f14
    f114:byte;//f114
    f118:dword;//f118
    f11C:byte;//f11C
    f11D:byte;//f11D
    //constructor Create(?:?; ?:?; ?:?; ?:?; ?:?);//004F3354
  end;
  TFormatSelDialog = class(TForm)
  public
    f2F8:TButton;//f2F8
    f2FC:TButton;//f2FC
    f300:TListBox;//f300
    f304:TCheckBox;//f304
  end;
  _DynArr_83_21 = array of ?;
//elSize = 2;
    //function sub_004EEE60(?:?; ?:?; ?:?):?;//004EEE60
    //procedure sub_004EEEF0(?:Pointer; ?:?; ?:?; ?:?; ?:?; ?:?);//004EEEF0
    //function sub_004EF4D8(?:?; ?:?; ?:?; ?:?):?;//004EF4D8
    //function sub_004EFC54(?:?; ?:?; ?:?; ?:?; ?:?):?;//004EFC54
    constructor sub_004EFDC4;//004EFDC4
    destructor Destroy;//004EFF34
    //function sub_004EFFAC(?:TMPHexEditorEx):?;//004EFFAC
    //function sub_004EFFE0(?:TMPHexEditorEx):?;//004EFFE0
    //function sub_004F0020(?:TMPHexEditorEx):?;//004F0020
    //function sub_004F00DC(?:TMPHexEditorEx):?;//004F00DC
    //function sub_004F0214(?:TMPHexEditorEx):?;//004F0214
    //function sub_004F02C8(?:TMPHexEditorEx):?;//004F02C8
    //function sub_004F0368(?:TMPHexEditorEx):?;//004F0368
    //function sub_004F0390(?:TMPHexEditorEx):?;//004F0390
    //procedure sub_004846B4(?:?; ?:?);//004F03E0
    //procedure sub_00484704(?:?; ?:?);//004F04A0
    //procedure sub_0048A878(?:?; ?:?);//004F0554
    procedure sub_004F0674;//004F0674
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004F07EC
    //procedure sub_004858F4(?:?; ?:?; ?:?);//004F0870
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004F0B44
    procedure CreateWnd;//004F0C0C
    //function sub_004F0C40(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F0C40
    //function sub_004F139C(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F139C
    //function sub_004F1464(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F1464
    //function sub_004F150C(?:?; ?:?; ?:?; ?:?):?;//004F150C
    //procedure sub_004F15B4(?:?; ?:?);//004F15B4
    //procedure WMDestroy(?:?);//004F16E0
    //procedure sub_004F1750(?:?; ?:?);//004F1750
    //function sub_004F1788(?:?):?;//004F1788
    //procedure sub_004869A0(?:?; ?:?);//004F17DC
    //procedure sub_004F1950(?:?; ?:?);//004F1950
    //function sub_004F1990(?:?; ?:?; ?:?):?;//004F1990
    //procedure sub_0042AC94(?:?);//004F19DC
    //procedure sub_0042ACC8(?:?);//004F1B00
    //function sub_004F2374(?:?):?;//004F2374
    //procedure sub_004F2418(?:TMPHexEditorEx; ?:AnsiString; ?:?);//004F2418
    //procedure sub_004F25FC(?:?);//004F25FC
    //procedure sub_004F2660(?:?);//004F2660
    procedure sub_004F2898;//004F2898
    procedure sub_0048555C;//004F28B8
    //procedure sub_004F2948(?:?; ?:PChar; ?:Integer; ?:?);//004F2948
    procedure sub_004F2A3C;//004F2A3C
    //function sub_004F2A5C:?;//004F2A5C
    //procedure sub_004F2AD4(?:?; ?:?; ?:?);//004F2AD4
    //function sub_004F2BAC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004F2BAC
    //function sub_004F2C34(?:?):?;//004F2C34
    //function sub_004F2C50(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F2C50
    //function sub_004F2CC0(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F2CC0
    //procedure sub_004F2D9C(?:TMPHDropTarget; ?:?);//004F2D9C
    //procedure sub_004F2F84(?:TFormatEnum; ?:?; ?:?);//004F2F84
    //function sub_004F301C(?:TFormatEnum; ?:?):?;//004F301C
    //function sub_004F31F4(?:?):?;//004F31F4
    //function sub_004F3230(?:?; ?:?; ?:?; ?:?):?;//004F3230
    //function sub_004F32AC(?:?):?;//004F32AC
    //function sub_004F32C8(?:?; ?:?):?;//004F32C8
    //function sub_004F32FC(?:?):?;//004F32FC
    //function sub_004F3324(?:?; ?:?):?;//004F3324
    //function sub_004F3598:?;//004F3598
    //function sub_004F35AC:?;//004F35AC
    //function sub_004F35C0(?:?):?;//004F35C0
    //function sub_004F35E0(?:?; ?:?):?;//004F35E0
    //function sub_004F3630(?:?; ?:?):?;//004F3630
    //function sub_004F3660(?:?; ?:?; ?:?):?;//004F3660
    //function sub_004F3958:?;//004F3958
    //function sub_004F396C(?:?):?;//004F396C
    //function sub_004F3A20(?:?; ?:?; ?:?; ?:?):?;//004F3A20
    //procedure sub_004F3B2C(?:?);//004F3B2C
    //procedure sub_004F3C80(?:?; ?:?);//004F3C80
    //procedure sub_004F3CA0(?:TFormatSelDialog; ?:?);//004F3CA0

implementation

//004EEE60
{*function sub_004EEE60(?:?; ?:?; ?:?):?;
begin
 004EEE60    push        ebp
 004EEE61    mov         ebp,esp
 004EEE63    add         esp,0FFFFFFD8
 004EEE66    mov         dword ptr [ebp-0C],ecx
 004EEE69    mov         word ptr [ebp-6],dx
 004EEE6D    mov         dword ptr [ebp-4],eax
 004EEE70    mov         ecx,dword ptr [ebp-4]
 004EEE73    mov         dl,1
 004EEE75    mov         eax,[004EEAF8];TFormatEnum
 004EEE7A    call        TFormatEnum.Create;TFormatEnum.Create
 004EEE7F    mov         dword ptr [ebp-14],eax
 004EEE82    xor         eax,eax
 004EEE84    push        ebp
 004EEE85    push        4EEEE2
 004EEE8A    push        dword ptr fs:[eax]
 004EEE8D    mov         dword ptr fs:[eax],esp
 004EEE90    mov         dx,word ptr [ebp-6]
 004EEE94    mov         eax,dword ptr [ebp-14]
 004EEE97    call        004F301C
 004EEE9C    test        al,al
>004EEE9E    jne         004EEEA9
 004EEEA0    mov         dword ptr [ebp-10],80004005
>004EEEA7    jmp         004EEECC
 004EEEA9    mov         eax,dword ptr [ebp-0C]
 004EEEAC    push        eax
 004EEEAD    lea         ecx,[ebp-28]
 004EEEB0    mov         dx,word ptr [ebp-6]
 004EEEB4    mov         eax,dword ptr [ebp-14]
 004EEEB7    call        004F2F84
 004EEEBC    lea         eax,[ebp-28]
 004EEEBF    push        eax
 004EEEC0    mov         eax,dword ptr [ebp-4]
 004EEEC3    push        eax
 004EEEC4    mov         eax,dword ptr [eax]
 004EEEC6    call        dword ptr [eax+0C]
 004EEEC9    mov         dword ptr [ebp-10],eax
 004EEECC    xor         eax,eax
 004EEECE    pop         edx
 004EEECF    pop         ecx
 004EEED0    pop         ecx
 004EEED1    mov         dword ptr fs:[eax],edx
 004EEED4    push        4EEEE9
 004EEED9    mov         eax,dword ptr [ebp-14]
 004EEEDC    call        TObject.Free
 004EEEE1    ret
>004EEEE2    jmp         @HandleFinally
>004EEEE7    jmp         004EEED9
 004EEEE9    mov         eax,dword ptr [ebp-10]
 004EEEEC    mov         esp,ebp
 004EEEEE    pop         ebp
 004EEEEF    ret
end;*}

//004EEEF0
{*procedure sub_004EEEF0(?:Pointer; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004EEEF0    push        ebp
 004EEEF1    mov         ebp,esp
 004EEEF3    add         esp,0FFFFFBBC
 004EEEF9    push        ebx
 004EEEFA    xor         ebx,ebx
 004EEEFC    mov         dword ptr [ebp-10],ebx
 004EEEFF    mov         word ptr [ebp-0A],cx
 004EEF03    mov         dword ptr [ebp-8],edx
 004EEF06    mov         dword ptr [ebp-4],eax
 004EEF09    xor         eax,eax
 004EEF0B    push        ebp
 004EEF0C    push        4EF345
 004EEF11    push        dword ptr fs:[eax]
 004EEF14    mov         dword ptr fs:[eax],esp
 004EEF17    mov         eax,dword ptr [ebp+8]
 004EEF1A    call        @LStrClr
 004EEF1F    mov         ax,word ptr [ebp-0A]
 004EEF23    cmp         ax,word ptr ds:[57242E];0x0 gvar_0057242E:LongWord
>004EEF2A    je          004EEF39
 004EEF2C    mov         ax,word ptr [ebp-0A]
 004EEF30    cmp         ax,word ptr ds:[572438];0x0 gvar_00572438:LongWord
>004EEF37    jne         004EEF3F
 004EEF39    mov         word ptr [ebp-0A],1
 004EEF3F    mov         ax,word ptr [ebp-0A]
 004EEF43    cmp         ax,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
>004EEF4A    jne         004EEF8A
 004EEF4C    mov         eax,dword ptr [ebp-4]
 004EEF4F    mov         dword ptr [ebp-28],eax
 004EEF52    mov         eax,dword ptr [ebp-28]
 004EEF55    cmp         dword ptr [eax],4854504D
>004EEF5B    jne         004EF32F
 004EEF61    mov         eax,dword ptr [ebp-28]
 004EEF64    cmp         dword ptr [eax+4],10001
>004EEF6B    jne         004EF32F
 004EEF71    mov         eax,dword ptr [ebp-28]
 004EEF74    mov         ecx,dword ptr [eax+8]
 004EEF77    mov         eax,dword ptr [ebp-28]
 004EEF7A    lea         edx,[eax+0C]
 004EEF7D    mov         eax,dword ptr [ebp+8]
 004EEF80    call        @LStrFromPCharLen
>004EEF85    jmp         004EF32F
 004EEF8A    mov         ax,word ptr [ebp-0A]
 004EEF8E    cmp         ax,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
>004EEF95    jne         004EEFB5
 004EEF97    mov         eax,dword ptr [ebp-4]
 004EEF9A    mov         dword ptr [ebp-2C],eax
 004EEF9D    mov         eax,dword ptr [ebp-2C]
 004EEFA0    mov         ecx,dword ptr [eax]
 004EEFA2    mov         eax,dword ptr [ebp-2C]
 004EEFA5    lea         edx,[eax+4]
 004EEFA8    mov         eax,dword ptr [ebp+8]
 004EEFAB    call        @LStrFromPCharLen
>004EEFB0    jmp         004EF32F
 004EEFB5    movzx       eax,word ptr [ebp-0A]
 004EEFB9    cmp         eax,10
>004EEFBC    ja          004EF321
 004EEFC2    jmp         dword ptr [eax*4+4EEFC9]
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF00D
 004EEFC2    dd          004EF17F
 004EEFC2    dd          004EF230
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF00D
 004EEFC2    dd          004EF0A0
 004EEFC2    dd          004EF0F5
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF01D
 004EEFC2    dd          004EF276
 004EEFC2    dd          004EF321
 004EEFC2    dd          004EF077
 004EF00D    mov         eax,dword ptr [ebp+8]
 004EF010    mov         edx,dword ptr [ebp-4]
 004EF013    call        @LStrFromPChar
>004EF018    jmp         004EF32F
 004EF01D    lea         eax,[ebp-10]
 004EF020    mov         edx,dword ptr [ebp-4]
 004EF023    call        @WStrFromPWChar
 004EF028    cmp         byte ptr [ebp+0C],0
>004EF02C    je          004EF05B
 004EF02E    mov         eax,dword ptr [ebp-10]
 004EF031    call        @WStrLen
 004EF036    test        eax,eax
>004EF038    jle         004EF05B
 004EF03A    mov         dword ptr [ebp-30],eax
 004EF03D    mov         dword ptr [ebp-24],1
 004EF044    mov         eax,dword ptr [ebp-10]
 004EF047    mov         edx,dword ptr [ebp-24]
 004EF04A    lea         eax,[eax+edx*2-2]
 004EF04E    call        004DFB2C
 004EF053    inc         dword ptr [ebp-24]
 004EF056    dec         dword ptr [ebp-30]
>004EF059    jne         004EF044
 004EF05B    mov         eax,dword ptr [ebp-10]
 004EF05E    call        @WStrLen
 004EF063    mov         ecx,eax
 004EF065    add         ecx,ecx
 004EF067    mov         eax,dword ptr [ebp+8]
 004EF06A    mov         edx,dword ptr [ebp-10]
 004EF06D    call        @LStrFromPCharLen
>004EF072    jmp         004EF32F
 004EF077    mov         eax,dword ptr [ebp+8]
 004EF07A    mov         edx,2
 004EF07F    call        @LStrSetLength
 004EF084    mov         eax,dword ptr [ebp+8]
 004EF087    call        00405598
 004EF08C    mov         edx,eax
 004EF08E    mov         eax,dword ptr [ebp-4]
 004EF091    mov         ecx,2
 004EF096    call        Move
>004EF09B    jmp         004EF32F
 004EF0A0    lea         eax,[ebp-3E]
 004EF0A3    xor         ecx,ecx
 004EF0A5    mov         edx,0E
 004EF0AA    call        @FillChar
 004EF0AF    mov         word ptr [ebp-3E],4D42
 004EF0B5    mov         edx,dword ptr [ebp+10]
 004EF0B8    add         edx,0E
 004EF0BB    mov         eax,dword ptr [ebp+8]
 004EF0BE    call        @LStrSetLength
 004EF0C3    mov         eax,dword ptr [ebp+8]
 004EF0C6    call        00405598
 004EF0CB    mov         edx,eax
 004EF0CD    lea         eax,[ebp-3E]
 004EF0D0    mov         ecx,0E
 004EF0D5    call        Move
 004EF0DA    mov         eax,dword ptr [ebp+8]
 004EF0DD    call        00405598
 004EF0E2    lea         edx,[eax+0E]
 004EF0E5    mov         eax,dword ptr [ebp-4]
 004EF0E8    mov         ecx,dword ptr [ebp+10]
 004EF0EB    call        Move
>004EF0F0    jmp         004EF32F
 004EF0F5    xor         eax,eax
 004EF0F7    mov         dword ptr [ebp-14],eax
 004EF0FA    lea         eax,[ebp-14]
 004EF0FD    push        eax
 004EF0FE    push        4
 004EF100    mov         eax,dword ptr [ebp-8]
 004EF103    push        eax
 004EF104    call        gdi32.GetObjectA
 004EF109    test        eax,eax
>004EF10B    je          004EF32F
 004EF111    cmp         dword ptr [ebp-14],0
>004EF115    jle         004EF32F
 004EF11B    mov         word ptr [ebp-442],300
 004EF124    mov         ax,word ptr [ebp-14]
 004EF128    mov         word ptr [ebp-440],ax
 004EF12F    lea         eax,[ebp-43E]
 004EF135    push        eax
 004EF136    mov         eax,dword ptr [ebp-14]
 004EF139    push        eax
 004EF13A    push        0
 004EF13C    mov         eax,dword ptr [ebp-8]
 004EF13F    push        eax
 004EF140    call        gdi32.GetPaletteEntries
 004EF145    mov         eax,dword ptr [ebp-14]
 004EF148    dec         eax
 004EF149    mov         edx,eax
 004EF14B    shl         edx,2
 004EF14E    add         edx,8
 004EF151    mov         eax,dword ptr [ebp+8]
 004EF154    call        @LStrSetLength
 004EF159    mov         eax,dword ptr [ebp+8]
 004EF15C    mov         eax,dword ptr [eax]
 004EF15E    call        @LStrLen
 004EF163    push        eax
 004EF164    mov         eax,dword ptr [ebp+8]
 004EF167    call        00405598
 004EF16C    mov         edx,eax
 004EF16E    lea         eax,[ebp-442]
 004EF174    pop         ecx
 004EF175    call        Move
>004EF17A    jmp         004EF32F
 004EF17F    mov         dl,1
 004EF181    mov         eax,[0042CF48];TBitmap
 004EF186    call        TBitmap.Create;TBitmap.Create
 004EF18B    mov         dword ptr [ebp-18],eax
 004EF18E    xor         eax,eax
 004EF190    push        ebp
 004EF191    push        4EF229
 004EF196    push        dword ptr fs:[eax]
 004EF199    mov         dword ptr fs:[eax],esp
 004EF19C    push        4
 004EF19E    push        0
 004EF1A0    push        0
 004EF1A2    push        0
 004EF1A4    mov         eax,dword ptr [ebp-8]
 004EF1A7    push        eax
 004EF1A8    call        user32.CopyImage
 004EF1AD    mov         edx,eax
 004EF1AF    mov         eax,dword ptr [ebp-18]
 004EF1B2    call        TBitmap.SetHandle
 004EF1B7    mov         dl,1
 004EF1B9    mov         eax,[0041DE14];TMemoryStream
 004EF1BE    call        TObject.Create;TMemoryStream.Create
 004EF1C3    mov         dword ptr [ebp-20],eax
 004EF1C6    xor         eax,eax
 004EF1C8    push        ebp
 004EF1C9    push        4EF20C
 004EF1CE    push        dword ptr fs:[eax]
 004EF1D1    mov         dword ptr fs:[eax],esp
 004EF1D4    mov         edx,dword ptr [ebp-20]
 004EF1D7    mov         eax,dword ptr [ebp-18]
 004EF1DA    mov         ecx,dword ptr [eax]
 004EF1DC    call        dword ptr [ecx+58];TBitmap.sub_00436424
 004EF1DF    mov         eax,dword ptr [ebp-20]
 004EF1E2    mov         edx,dword ptr [eax]
 004EF1E4    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004EF1E6    mov         ecx,eax
 004EF1E8    mov         eax,dword ptr [ebp-20]
 004EF1EB    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004EF1EE    mov         eax,dword ptr [ebp+8]
 004EF1F1    call        @LStrFromPCharLen
 004EF1F6    xor         eax,eax
 004EF1F8    pop         edx
 004EF1F9    pop         ecx
 004EF1FA    pop         ecx
 004EF1FB    mov         dword ptr fs:[eax],edx
 004EF1FE    push        4EF213
 004EF203    mov         eax,dword ptr [ebp-20]
 004EF206    call        TObject.Free
 004EF20B    ret
>004EF20C    jmp         @HandleFinally
>004EF211    jmp         004EF203
 004EF213    xor         eax,eax
 004EF215    pop         edx
 004EF216    pop         ecx
 004EF217    pop         ecx
 004EF218    mov         dword ptr fs:[eax],edx
 004EF21B    push        4EF32F
 004EF220    mov         eax,dword ptr [ebp-18]
 004EF223    call        TObject.Free
 004EF228    ret
>004EF229    jmp         @HandleFinally
>004EF22E    jmp         004EF220
 004EF230    push        0
 004EF232    push        0
 004EF234    mov         eax,dword ptr [ebp-4]
 004EF237    mov         eax,dword ptr [eax+0C]
 004EF23A    push        eax
 004EF23B    call        gdi32.GetMetaFileBitsEx
 004EF240    mov         dword ptr [ebp-14],eax
 004EF243    cmp         dword ptr [ebp-14],0
>004EF247    jle         004EF32F
 004EF24D    mov         eax,dword ptr [ebp+8]
 004EF250    mov         edx,dword ptr [ebp-14]
 004EF253    call        @LStrSetLength
 004EF258    mov         eax,dword ptr [ebp+8]
 004EF25B    call        00405598
 004EF260    push        eax
 004EF261    mov         eax,dword ptr [ebp-14]
 004EF264    push        eax
 004EF265    mov         eax,dword ptr [ebp-4]
 004EF268    mov         eax,dword ptr [eax+0C]
 004EF26B    push        eax
 004EF26C    call        gdi32.GetMetaFileBitsEx
>004EF271    jmp         004EF32F
 004EF276    mov         dl,1
 004EF278    mov         eax,[0042CE08];TMetafile
 004EF27D    call        TMetafile.Create;TMetafile.Create
 004EF282    mov         dword ptr [ebp-1C],eax
 004EF285    xor         eax,eax
 004EF287    push        ebp
 004EF288    push        4EF31A
 004EF28D    push        dword ptr fs:[eax]
 004EF290    mov         dword ptr fs:[eax],esp
 004EF293    push        0
 004EF295    mov         eax,dword ptr [ebp-8]
 004EF298    push        eax
 004EF299    call        gdi32.CopyEnhMetaFileA
 004EF29E    mov         edx,eax
 004EF2A0    mov         eax,dword ptr [ebp-1C]
 004EF2A3    call        00432B2C
 004EF2A8    mov         dl,1
 004EF2AA    mov         eax,[0041DE14];TMemoryStream
 004EF2AF    call        TObject.Create;TMemoryStream.Create
 004EF2B4    mov         dword ptr [ebp-20],eax
 004EF2B7    xor         eax,eax
 004EF2B9    push        ebp
 004EF2BA    push        4EF2FD
 004EF2BF    push        dword ptr fs:[eax]
 004EF2C2    mov         dword ptr fs:[eax],esp
 004EF2C5    mov         edx,dword ptr [ebp-20]
 004EF2C8    mov         eax,dword ptr [ebp-1C]
 004EF2CB    mov         ecx,dword ptr [eax]
 004EF2CD    call        dword ptr [ecx+58];TMetafile.sub_00432AF0
 004EF2D0    mov         eax,dword ptr [ebp-20]
 004EF2D3    mov         edx,dword ptr [eax]
 004EF2D5    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004EF2D7    mov         ecx,eax
 004EF2D9    mov         eax,dword ptr [ebp-20]
 004EF2DC    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004EF2DF    mov         eax,dword ptr [ebp+8]
 004EF2E2    call        @LStrFromPCharLen
 004EF2E7    xor         eax,eax
 004EF2E9    pop         edx
 004EF2EA    pop         ecx
 004EF2EB    pop         ecx
 004EF2EC    mov         dword ptr fs:[eax],edx
 004EF2EF    push        4EF304
 004EF2F4    mov         eax,dword ptr [ebp-20]
 004EF2F7    call        TObject.Free
 004EF2FC    ret
>004EF2FD    jmp         @HandleFinally
>004EF302    jmp         004EF2F4
 004EF304    xor         eax,eax
 004EF306    pop         edx
 004EF307    pop         ecx
 004EF308    pop         ecx
 004EF309    mov         dword ptr fs:[eax],edx
 004EF30C    push        4EF32F
 004EF311    mov         eax,dword ptr [ebp-1C]
 004EF314    call        TObject.Free
 004EF319    ret
>004EF31A    jmp         @HandleFinally
>004EF31F    jmp         004EF311
 004EF321    mov         eax,dword ptr [ebp+8]
 004EF324    mov         ecx,dword ptr [ebp+10]
 004EF327    mov         edx,dword ptr [ebp-4]
 004EF32A    call        @LStrFromPCharLen
 004EF32F    xor         eax,eax
 004EF331    pop         edx
 004EF332    pop         ecx
 004EF333    pop         ecx
 004EF334    mov         dword ptr fs:[eax],edx
 004EF337    push        4EF34C
 004EF33C    lea         eax,[ebp-10]
 004EF33F    call        @WStrClr
 004EF344    ret
>004EF345    jmp         @HandleFinally
>004EF34A    jmp         004EF33C
 004EF34C    pop         ebx
 004EF34D    mov         esp,ebp
 004EF34F    pop         ebp
 004EF350    ret         0C
end;*}

//004EF4D8
{*function sub_004EF4D8(?:?; ?:?; ?:?; ?:?):?;
begin
 004EF4D8    push        ebp
 004EF4D9    mov         ebp,esp
 004EF4DB    add         esp,0FFFFFDB4
 004EF4E1    push        ebx
 004EF4E2    xor         ebx,ebx
 004EF4E4    mov         dword ptr [ebp-24C],ebx
 004EF4EA    mov         dword ptr [ebp-248],ebx
 004EF4F0    mov         dword ptr [ebp-244],ebx
 004EF4F6    mov         dword ptr [ebp-240],ebx
 004EF4FC    mov         dword ptr [ebp-23C],ebx
 004EF502    mov         dword ptr [ebp-238],ebx
 004EF508    mov         dword ptr [ebp-20],ebx
 004EF50B    mov         dword ptr [ebp-0C],ecx
 004EF50E    mov         dword ptr [ebp-8],edx
 004EF511    mov         dword ptr [ebp-4],eax
 004EF514    xor         eax,eax
 004EF516    push        ebp
 004EF517    push        4EFC02
 004EF51C    push        dword ptr fs:[eax]
 004EF51F    mov         dword ptr fs:[eax],esp
 004EF522    mov         byte ptr [ebp-0D],0
 004EF526    push        0
 004EF528    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 004EF52E    mov         ecx,dword ptr [ecx]
 004EF530    mov         dl,1
 004EF532    mov         eax,[004EF354];TFormatSelDialog
 004EF537    call        TFormatSelDialog.Create;TFormatSelDialog.Create
 004EF53C    mov         dword ptr [ebp-14],eax
 004EF53F    xor         eax,eax
 004EF541    push        ebp
 004EF542    push        4EFBD5
 004EF547    push        dword ptr fs:[eax]
 004EF54A    mov         dword ptr fs:[eax],esp
 004EF54D    mov         dl,3
 004EF54F    mov         eax,dword ptr [ebp-14]
 004EF552    call        TForm.SetBorderStyle
 004EF557    mov         eax,[0056E604];^Screen:TScreen
 004EF55C    mov         eax,dword ptr [eax]
 004EF55E    call        004A8894
 004EF563    mov         edx,eax
 004EF565    test        edx,edx
>004EF567    jns         004EF56C
 004EF569    add         edx,3
 004EF56C    sar         edx,2
 004EF56F    mov         eax,dword ptr [ebp-14]
 004EF572    call        TSplitter.SetWidth
 004EF577    mov         eax,[0056E604];^Screen:TScreen
 004EF57C    mov         eax,dword ptr [eax]
 004EF57E    call        004A8874
 004EF583    mov         edx,eax
 004EF585    test        edx,edx
>004EF587    jns         004EF58C
 004EF589    add         edx,3
 004EF58C    sar         edx,2
 004EF58F    mov         eax,dword ptr [ebp-14]
 004EF592    call        TToolButton.SetHeight
 004EF597    mov         dl,7
 004EF599    mov         eax,dword ptr [ebp-14]
 004EF59C    call        TForm.SetPosition
 004EF5A1    lea         edx,[ebp-238]
 004EF5A7    mov         eax,4EEA30;^HInstance:LongWord
 004EF5AC    call        LoadResString
 004EF5B1    mov         edx,dword ptr [ebp-238]
 004EF5B7    mov         eax,dword ptr [ebp-14]
 004EF5BA    call        TPanel.SetCaption
 004EF5BF    mov         ecx,dword ptr [ebp-14]
 004EF5C2    mov         dl,1
 004EF5C4    mov         eax,[0046FDD8];TButton
 004EF5C9    call        TButton.Create;TButton.Create
 004EF5CE    mov         edx,dword ptr [ebp-14]
 004EF5D1    mov         dword ptr [edx+2F8],eax;TFormatSelDialog.?f2F8:TButton
 004EF5D7    mov         ecx,dword ptr [ebp-14]
 004EF5DA    mov         dl,1
 004EF5DC    mov         eax,[0046FDD8];TButton
 004EF5E1    call        TButton.Create;TButton.Create
 004EF5E6    mov         edx,dword ptr [ebp-14]
 004EF5E9    mov         dword ptr [edx+2FC],eax;TFormatSelDialog.?f2FC:TButton
 004EF5EF    mov         ecx,dword ptr [ebp-14]
 004EF5F2    mov         dl,1
 004EF5F4    mov         eax,[00470698];TCheckBox
 004EF5F9    call        TCheckBox.Create;TCheckBox.Create
 004EF5FE    mov         edx,dword ptr [ebp-14]
 004EF601    mov         dword ptr [edx+304],eax;TFormatSelDialog.?f304:TCheckBox
 004EF607    mov         ecx,dword ptr [ebp-14]
 004EF60A    mov         dl,1
 004EF60C    mov         eax,[004718E8];TListBox
 004EF611    call        TListBox.Create;TListBox.Create
 004EF616    mov         edx,dword ptr [ebp-14]
 004EF619    mov         dword ptr [edx+300],eax;TFormatSelDialog.?f300:TListBox
 004EF61F    xor         eax,eax
 004EF621    push        ebp
 004EF622    push        4EFBB8
 004EF627    push        dword ptr fs:[eax]
 004EF62A    mov         dword ptr fs:[eax],esp
 004EF62D    mov         eax,dword ptr [ebp-14]
 004EF630    mov         eax,dword ptr [eax+2F8];TFormatSelDialog.?f2F8:TButton
 004EF636    mov         dword ptr [ebp-24],eax
 004EF639    mov         edx,dword ptr [ebp-14]
 004EF63C    mov         eax,dword ptr [ebp-24]
 004EF63F    mov         ecx,dword ptr [eax]
 004EF641    call        dword ptr [ecx+68];TButton.sub_0048359C
 004EF644    mov         eax,dword ptr [ebp-24]
 004EF647    mov         dword ptr [eax+214],1;TButton.ModalResult:TModalResult
 004EF651    lea         edx,[ebp-23C]
 004EF657    mov         eax,[0056E028];^SMsgDlgOK:TResStringRec
 004EF65C    call        LoadResString
 004EF661    mov         edx,dword ptr [ebp-23C]
 004EF667    mov         eax,dword ptr [ebp-24]
 004EF66A    call        TPanel.SetCaption
 004EF66F    mov         dl,1
 004EF671    mov         eax,dword ptr [ebp-24]
 004EF674    call        TButton.SetDefault
 004EF679    mov         eax,dword ptr [ebp-14]
 004EF67C    mov         edx,dword ptr [eax+48];TFormatSelDialog.Width:Integer
 004EF67F    sar         edx,1
>004EF681    jns         004EF686
 004EF683    adc         edx,0
 004EF686    sub         edx,20
 004EF689    mov         eax,dword ptr [ebp-24]
 004EF68C    call        TSplitter.SetWidth
 004EF691    mov         eax,dword ptr [ebp-14]
 004EF694    call        TControl.GetClientHeight
 004EF699    mov         edx,eax
 004EF69B    mov         eax,dword ptr [ebp-24]
 004EF69E    sub         edx,dword ptr [eax+4C]
 004EF6A1    sub         edx,8
 004EF6A4    mov         eax,dword ptr [ebp-24]
 004EF6A7    call        TControl.SetTop
 004EF6AC    mov         edx,10
 004EF6B1    mov         eax,dword ptr [ebp-24]
 004EF6B4    call        TControl.SetLeft
 004EF6B9    xor         edx,edx
 004EF6BB    mov         eax,dword ptr [ebp-24]
 004EF6BE    mov         ecx,dword ptr [eax]
 004EF6C0    call        dword ptr [ecx+64];TImage.SetEnabled
 004EF6C3    mov         eax,dword ptr [ebp-14]
 004EF6C6    mov         eax,dword ptr [eax+2FC];TFormatSelDialog.?f2FC:TButton
 004EF6CC    mov         dword ptr [ebp-28],eax
 004EF6CF    mov         edx,dword ptr [ebp-14]
 004EF6D2    mov         eax,dword ptr [ebp-28]
 004EF6D5    mov         ecx,dword ptr [eax]
 004EF6D7    call        dword ptr [ecx+68];TButton.sub_0048359C
 004EF6DA    mov         eax,dword ptr [ebp-28]
 004EF6DD    mov         dword ptr [eax+214],2;TButton.ModalResult:TModalResult
 004EF6E7    mov         eax,dword ptr [ebp-28]
 004EF6EA    mov         byte ptr [eax+211],1;TButton.Cancel:Boolean
 004EF6F1    lea         edx,[ebp-240]
 004EF6F7    mov         eax,[0056E5A8];^SCancelButton:TResStringRec
 004EF6FC    call        LoadResString
 004EF701    mov         edx,dword ptr [ebp-240]
 004EF707    mov         eax,dword ptr [ebp-28]
 004EF70A    call        TPanel.SetCaption
 004EF70F    mov         eax,dword ptr [ebp-14]
 004EF712    mov         edx,dword ptr [eax+48];TFormatSelDialog.Width:Integer
 004EF715    sar         edx,1
>004EF717    jns         004EF71C
 004EF719    adc         edx,0
 004EF71C    sub         edx,20
 004EF71F    mov         eax,dword ptr [ebp-28]
 004EF722    call        TSplitter.SetWidth
 004EF727    mov         eax,dword ptr [ebp-14]
 004EF72A    call        TControl.GetClientHeight
 004EF72F    mov         edx,eax
 004EF731    mov         eax,dword ptr [ebp-28]
 004EF734    sub         edx,dword ptr [eax+4C]
 004EF737    sub         edx,8
 004EF73A    mov         eax,dword ptr [ebp-28]
 004EF73D    call        TControl.SetTop
 004EF742    mov         eax,dword ptr [ebp-14]
 004EF745    call        TControl.GetClientWidth
 004EF74A    mov         edx,eax
 004EF74C    mov         eax,dword ptr [ebp-28]
 004EF74F    sub         edx,dword ptr [eax+48]
 004EF752    sub         edx,10
 004EF755    mov         eax,dword ptr [ebp-28]
 004EF758    call        TControl.SetLeft
 004EF75D    mov         eax,dword ptr [ebp-14]
 004EF760    mov         eax,dword ptr [eax+304];TFormatSelDialog.?f304:TCheckBox
 004EF766    mov         dword ptr [ebp-2C],eax
 004EF769    mov         edx,dword ptr [ebp-14]
 004EF76C    mov         eax,dword ptr [ebp-2C]
 004EF76F    mov         ecx,dword ptr [eax]
 004EF771    call        dword ptr [ecx+68];TCheckBox.sub_0048359C
 004EF774    xor         edx,edx
 004EF776    mov         eax,dword ptr [ebp-2C]
 004EF779    mov         ecx,dword ptr [eax]
 004EF77B    call        dword ptr [ecx+64];TImage.SetEnabled
 004EF77E    lea         edx,[ebp-244]
 004EF784    mov         eax,4EEA38;^HInstance:LongWord
 004EF789    call        LoadResString
 004EF78E    mov         edx,dword ptr [ebp-244]
 004EF794    mov         eax,dword ptr [ebp-2C]
 004EF797    call        TPanel.SetCaption
 004EF79C    mov         eax,dword ptr [ebp-14]
 004EF79F    mov         eax,dword ptr [eax+2FC];TFormatSelDialog.?f2FC:TButton
 004EF7A5    mov         edx,dword ptr [eax+44];TButton.Top:Integer
 004EF7A8    mov         eax,dword ptr [ebp-2C]
 004EF7AB    sub         edx,dword ptr [eax+4C]
 004EF7AE    sub         edx,8
 004EF7B1    mov         eax,dword ptr [ebp-2C]
 004EF7B4    call        TControl.SetTop
 004EF7B9    mov         eax,dword ptr [ebp-14]
 004EF7BC    mov         eax,dword ptr [eax+2F8];TFormatSelDialog.?f2F8:TButton
 004EF7C2    mov         edx,dword ptr [eax+40];TButton.Left:Integer
 004EF7C5    mov         eax,dword ptr [ebp-2C]
 004EF7C8    call        TControl.SetLeft
 004EF7CD    mov         eax,dword ptr [ebp-14]
 004EF7D0    call        TControl.GetClientWidth
 004EF7D5    mov         edx,eax
 004EF7D7    mov         eax,dword ptr [ebp-2C]
 004EF7DA    sub         edx,dword ptr [eax+40]
 004EF7DD    mov         eax,dword ptr [ebp-2C]
 004EF7E0    call        TSplitter.SetWidth
 004EF7E5    mov         edx,dword ptr [ebp+8]
 004EF7E8    mov         dl,byte ptr [edx]
 004EF7EA    mov         eax,dword ptr [ebp-2C]
 004EF7ED    mov         ecx,dword ptr [eax]
 004EF7EF    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 004EF7F5    mov         eax,dword ptr [ebp-14]
 004EF7F8    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004EF7FE    mov         dword ptr [ebp-30],eax
 004EF801    mov         edx,dword ptr [ebp-14]
 004EF804    mov         eax,dword ptr [ebp-30]
 004EF807    mov         ecx,dword ptr [eax]
 004EF809    call        dword ptr [ecx+68];TListBox.sub_0048359C
 004EF80C    mov         dl,1
 004EF80E    mov         eax,dword ptr [ebp-30]
 004EF811    call        TImage.SetAlign
 004EF816    mov         eax,dword ptr [ebp-14]
 004EF819    call        TControl.GetClientHeight
 004EF81E    mov         edx,eax
 004EF820    sub         edx,10
 004EF823    mov         eax,dword ptr [ebp-14]
 004EF826    mov         eax,dword ptr [eax+2FC];TFormatSelDialog.?f2FC:TButton
 004EF82C    sub         edx,dword ptr [eax+4C]
 004EF82F    sub         edx,8
 004EF832    mov         eax,dword ptr [ebp-14]
 004EF835    mov         eax,dword ptr [eax+304];TFormatSelDialog.?f304:TCheckBox
 004EF83B    sub         edx,dword ptr [eax+4C]
 004EF83E    mov         eax,dword ptr [ebp-30]
 004EF841    call        TToolButton.SetHeight
 004EF846    mov         eax,dword ptr [ebp-30]
 004EF849    mov         edx,dword ptr [ebp-14]
 004EF84C    mov         dword ptr [eax+12C],edx;TListBox.?f12C:TFormatSelDialog
 004EF852    mov         dword ptr [eax+128],4F3C80;TListBox.FOnDblClick:TNotifyEvent sub_004F3C80
 004EF85C    mov         eax,dword ptr [ebp-30]
 004EF85F    mov         edx,dword ptr [ebp-14]
 004EF862    mov         dword ptr [eax+124],edx;TListBox.?f124:TMessageForm
 004EF868    mov         dword ptr [eax+120],4F3CA0;TListBox.FOnClick:TNotifyEvent sub_004F3CA0
 004EF872    mov         eax,dword ptr [ebp-8]
 004EF875    test        eax,eax
>004EF877    jl          004EFAE2
 004EF87D    inc         eax
 004EF87E    mov         dword ptr [ebp-34],eax
 004EF881    mov         dword ptr [ebp-18],0
 004EF888    mov         eax,dword ptr [ebp-4]
 004EF88B    mov         edx,dword ptr [ebp-18]
 004EF88E    mov         ax,word ptr [eax+edx*2]
 004EF892    mov         word ptr [ebp-1A],ax
 004EF896    movzx       eax,word ptr [ebp-1A]
 004EF89A    cmp         eax,10
>004EF89D    ja          004EF9FF
 004EF8A3    jmp         dword ptr [eax*4+4EF8AA]
 004EF8A3    dd          004EF9FF
 004EF8A3    dd          004EF8EE
 004EF8A3    dd          004EF900
 004EF8A3    dd          004EF912
 004EF8A3    dd          004EF924
 004EF8A3    dd          004EF936
 004EF8A3    dd          004EF948
 004EF8A3    dd          004EF95A
 004EF8A3    dd          004EF96C
 004EF8A3    dd          004EF97E
 004EF8A3    dd          004EF990
 004EF8A3    dd          004EF9A2
 004EF8A3    dd          004EF9B4
 004EF8A3    dd          004EF9C3
 004EF8A3    dd          004EF9D2
 004EF8A3    dd          004EF9E1
 004EF8A3    dd          004EF9F0
 004EF8EE    lea         edx,[ebp-20]
 004EF8F1    mov         eax,4EEA50;^HInstance:LongWord
 004EF8F6    call        LoadResString
>004EF8FB    jmp         004EFA41
 004EF900    lea         edx,[ebp-20]
 004EF903    mov         eax,4EEA58;^HInstance:LongWord
 004EF908    call        LoadResString
>004EF90D    jmp         004EFA41
 004EF912    lea         edx,[ebp-20]
 004EF915    mov         eax,4EEA60;^HInstance:LongWord
 004EF91A    call        LoadResString
>004EF91F    jmp         004EFA41
 004EF924    lea         edx,[ebp-20]
 004EF927    mov         eax,4EEA68;^HInstance:LongWord
 004EF92C    call        LoadResString
>004EF931    jmp         004EFA41
 004EF936    lea         edx,[ebp-20]
 004EF939    mov         eax,4EEA70;^HInstance:LongWord
 004EF93E    call        LoadResString
>004EF943    jmp         004EFA41
 004EF948    lea         edx,[ebp-20]
 004EF94B    mov         eax,4EEA78;^HInstance:LongWord
 004EF950    call        LoadResString
>004EF955    jmp         004EFA41
 004EF95A    lea         edx,[ebp-20]
 004EF95D    mov         eax,4EEA80;^HInstance:LongWord
 004EF962    call        LoadResString
>004EF967    jmp         004EFA41
 004EF96C    lea         edx,[ebp-20]
 004EF96F    mov         eax,4EEA88;^HInstance:LongWord
 004EF974    call        LoadResString
>004EF979    jmp         004EFA41
 004EF97E    lea         edx,[ebp-20]
 004EF981    mov         eax,4EEA90;^HInstance:LongWord
 004EF986    call        LoadResString
>004EF98B    jmp         004EFA41
 004EF990    lea         edx,[ebp-20]
 004EF993    mov         eax,4EEA98;^HInstance:LongWord
 004EF998    call        LoadResString
>004EF99D    jmp         004EFA41
 004EF9A2    lea         edx,[ebp-20]
 004EF9A5    mov         eax,4EEAA0;^HInstance:LongWord
 004EF9AA    call        LoadResString
>004EF9AF    jmp         004EFA41
 004EF9B4    lea         edx,[ebp-20]
 004EF9B7    mov         eax,4EEAA8;^HInstance:LongWord
 004EF9BC    call        LoadResString
>004EF9C1    jmp         004EFA41
 004EF9C3    lea         edx,[ebp-20]
 004EF9C6    mov         eax,4EEAB0;^HInstance:LongWord
 004EF9CB    call        LoadResString
>004EF9D0    jmp         004EFA41
 004EF9D2    lea         edx,[ebp-20]
 004EF9D5    mov         eax,4EEAB8;^HInstance:LongWord
 004EF9DA    call        LoadResString
>004EF9DF    jmp         004EFA41
 004EF9E1    lea         edx,[ebp-20]
 004EF9E4    mov         eax,4EEAC0;^HInstance:LongWord
 004EF9E9    call        LoadResString
>004EF9EE    jmp         004EFA41
 004EF9F0    lea         edx,[ebp-20]
 004EF9F3    mov         eax,4EEAC8;^HInstance:LongWord
 004EF9F8    call        LoadResString
>004EF9FD    jmp         004EFA41
 004EF9FF    push        200
 004EFA04    lea         eax,[ebp-234]
 004EFA0A    push        eax
 004EFA0B    movzx       eax,word ptr [ebp-1A]
 004EFA0F    push        eax
 004EFA10    call        user32.GetClipboardFormatNameA
 004EFA15    mov         ecx,eax
 004EFA17    lea         edx,[ebp-234]
 004EFA1D    lea         eax,[ebp-20]
 004EFA20    call        @LStrFromPCharLen
 004EFA25    lea         edx,[ebp-248]
 004EFA2B    mov         eax,dword ptr [ebp-20]
 004EFA2E    call        0040BFEC
 004EFA33    mov         edx,dword ptr [ebp-248]
 004EFA39    lea         eax,[ebp-20]
 004EFA3C    call        @LStrLAsg
 004EFA41    cmp         dword ptr [ebp-20],0
>004EFA45    jne         004EFA75
 004EFA47    push        4EFC1C;'('
 004EFA4C    lea         ecx,[ebp-24C]
 004EFA52    movzx       eax,word ptr [ebp-1A]
 004EFA56    mov         dl,0A
 004EFA58    call        004DF8B4
 004EFA5D    push        dword ptr [ebp-24C]
 004EFA63    push        4EFC28;')'
 004EFA68    lea         eax,[ebp-20]
 004EFA6B    mov         edx,3
 004EFA70    call        @LStrCatN
 004EFA75    movzx       ecx,word ptr [ebp-1A]
 004EFA79    mov         eax,dword ptr [ebp-30]
 004EFA7C    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004EFA82    mov         edx,dword ptr [ebp-20]
 004EFA85    mov         ebx,dword ptr [eax]
 004EFA87    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 004EFA8A    mov         eax,dword ptr [ebp-14]
 004EFA8D    mov         eax,dword ptr [eax+2F8];TFormatSelDialog.?f2F8:TButton
 004EFA93    mov         dl,1
 004EFA95    mov         ecx,dword ptr [eax]
 004EFA97    call        dword ptr [ecx+64];TImage.SetEnabled
 004EFA9A    mov         edx,dword ptr ds:[56D0F4];0xFFFFFFFF gvar_0056D0F4
 004EFAA0    mov         eax,dword ptr [ebp-30]
 004EFAA3    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004EFAA9    mov         ecx,dword ptr [eax]
 004EFAAB    call        dword ptr [ecx+5C];TStrings.sub_00422458
 004EFAAE    mov         edx,eax
 004EFAB0    mov         eax,dword ptr [ebp-30]
 004EFAB3    mov         ecx,dword ptr [eax]
 004EFAB5    call        dword ptr [ecx+0D0];TListBox.sub_00479840
 004EFABB    mov         eax,dword ptr [ebp-30]
 004EFABE    mov         edx,dword ptr [eax]
 004EFAC0    call        dword ptr [edx+0CC];TListBox.sub_00479780
 004EFAC6    inc         eax
>004EFAC7    jne         004EFAD6
 004EFAC9    xor         edx,edx
 004EFACB    mov         eax,dword ptr [ebp-30]
 004EFACE    mov         ecx,dword ptr [eax]
 004EFAD0    call        dword ptr [ecx+0D0];TListBox.sub_00479840
 004EFAD6    inc         dword ptr [ebp-18]
 004EFAD9    dec         dword ptr [ebp-34]
>004EFADC    jne         004EF888
 004EFAE2    xor         edx,edx
 004EFAE4    mov         eax,dword ptr [ebp-14]
 004EFAE7    call        004F3CA0
 004EFAEC    mov         eax,dword ptr [ebp-14]
 004EFAEF    mov         edx,dword ptr [eax]
 004EFAF1    call        dword ptr [edx+0EC];TFormatSelDialog.sub_004A7518
 004EFAF7    dec         eax
>004EFAF8    jne         004EFB72
 004EFAFA    mov         eax,dword ptr [ebp-14]
 004EFAFD    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004EFB03    mov         edx,dword ptr [eax]
 004EFB05    call        dword ptr [edx+0CC];TListBox.sub_00479780
 004EFB0B    inc         eax
>004EFB0C    jle         004EFB72
 004EFB0E    mov         eax,dword ptr [ebp-14]
 004EFB11    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004EFB17    mov         edx,dword ptr [eax]
 004EFB19    call        dword ptr [edx+0CC];TListBox.sub_00479780
 004EFB1F    mov         edx,eax
 004EFB21    mov         eax,dword ptr [ebp-14]
 004EFB24    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004EFB2A    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004EFB30    mov         ecx,dword ptr [eax]
 004EFB32    call        dword ptr [ecx+18];TStrings.sub_004220A0
 004EFB35    mov         edx,dword ptr [ebp-0C]
 004EFB38    mov         word ptr [edx],ax
 004EFB3B    mov         eax,dword ptr [ebp-0C]
 004EFB3E    mov         ax,word ptr [eax]
 004EFB41    sub         ax,1
>004EFB45    je          004EFB4D
 004EFB47    sub         ax,6
>004EFB4B    jne         004EFB63
 004EFB4D    mov         eax,dword ptr [ebp-14]
 004EFB50    mov         eax,dword ptr [eax+304];TFormatSelDialog.?f304:TCheckBox
 004EFB56    mov         edx,dword ptr [eax]
 004EFB58    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004EFB5E    mov         edx,dword ptr [ebp+8]
 004EFB61    mov         byte ptr [edx],al
 004EFB63    mov         byte ptr [ebp-0D],1
 004EFB67    mov         eax,dword ptr [ebp-0C]
 004EFB6A    movzx       eax,word ptr [eax]
 004EFB6D    mov         [0056D0F4],eax;gvar_0056D0F4
 004EFB72    xor         eax,eax
 004EFB74    pop         edx
 004EFB75    pop         ecx
 004EFB76    pop         ecx
 004EFB77    mov         dword ptr fs:[eax],edx
 004EFB7A    push        4EFBBF
 004EFB7F    mov         eax,dword ptr [ebp-14]
 004EFB82    mov         eax,dword ptr [eax+2F8];TFormatSelDialog.?f2F8:TButton
 004EFB88    call        TObject.Free
 004EFB8D    mov         eax,dword ptr [ebp-14]
 004EFB90    mov         eax,dword ptr [eax+2FC];TFormatSelDialog.?f2FC:TButton
 004EFB96    call        TObject.Free
 004EFB9B    mov         eax,dword ptr [ebp-14]
 004EFB9E    mov         eax,dword ptr [eax+304];TFormatSelDialog.?f304:TCheckBox
 004EFBA4    call        TObject.Free
 004EFBA9    mov         eax,dword ptr [ebp-14]
 004EFBAC    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004EFBB2    call        TObject.Free
 004EFBB7    ret
>004EFBB8    jmp         @HandleFinally
>004EFBBD    jmp         004EFB7F
 004EFBBF    xor         eax,eax
 004EFBC1    pop         edx
 004EFBC2    pop         ecx
 004EFBC3    pop         ecx
 004EFBC4    mov         dword ptr fs:[eax],edx
 004EFBC7    push        4EFBDC
 004EFBCC    mov         eax,dword ptr [ebp-14]
 004EFBCF    call        TObject.Free
 004EFBD4    ret
>004EFBD5    jmp         @HandleFinally
>004EFBDA    jmp         004EFBCC
 004EFBDC    xor         eax,eax
 004EFBDE    pop         edx
 004EFBDF    pop         ecx
 004EFBE0    pop         ecx
 004EFBE1    mov         dword ptr fs:[eax],edx
 004EFBE4    push        4EFC09
 004EFBE9    lea         eax,[ebp-24C]
 004EFBEF    mov         edx,6
 004EFBF4    call        @LStrArrayClr
 004EFBF9    lea         eax,[ebp-20]
 004EFBFC    call        @LStrClr
 004EFC01    ret
>004EFC02    jmp         @HandleFinally
>004EFC07    jmp         004EFBE9
 004EFC09    mov         al,byte ptr [ebp-0D]
 004EFC0C    pop         ebx
 004EFC0D    mov         esp,ebp
 004EFC0F    pop         ebp
 004EFC10    ret         4
end;*}

//004EFC54
{*function sub_004EFC54(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004EFC54    push        ebp
 004EFC55    mov         ebp,esp
 004EFC57    add         esp,0FFFFFFE0
 004EFC5A    push        ebx
 004EFC5B    xor         ebx,ebx
 004EFC5D    mov         dword ptr [ebp-14],ebx
 004EFC60    mov         dword ptr [ebp-0C],ecx
 004EFC63    mov         dword ptr [ebp-8],edx
 004EFC66    mov         dword ptr [ebp-4],eax
 004EFC69    xor         eax,eax
 004EFC6B    push        ebp
 004EFC6C    push        4EFDB1
 004EFC71    push        dword ptr fs:[eax]
 004EFC74    mov         dword ptr fs:[eax],esp
 004EFC77    mov         byte ptr [ebp-0D],0
 004EFC7B    lea         eax,[ebp-14]
 004EFC7E    mov         edx,dword ptr ds:[4EFC2C];_DynArr_83_21
 004EFC84    call        @DynArrayClear
 004EFC89    mov         ecx,dword ptr [ebp-0C]
 004EFC8C    mov         dl,1
 004EFC8E    mov         eax,[004EEAF8];TFormatEnum
 004EFC93    call        TFormatEnum.Create;TFormatEnum.Create
 004EFC98    mov         dword ptr [ebp-1C],eax
 004EFC9B    xor         eax,eax
 004EFC9D    push        ebp
 004EFC9E    push        4EFD8E
 004EFCA3    push        dword ptr fs:[eax]
 004EFCA6    mov         dword ptr fs:[eax],esp
 004EFCA9    mov         eax,dword ptr [ebp-8]
 004EFCAC    inc         eax
 004EFCAD    test        eax,eax
>004EFCAF    jle         004EFD6A
 004EFCB5    mov         eax,dword ptr [ebp-8]
 004EFCB8    test        eax,eax
>004EFCBA    jl          004EFD1F
 004EFCBC    inc         eax
 004EFCBD    mov         dword ptr [ebp-20],eax
 004EFCC0    mov         dword ptr [ebp-18],0
 004EFCC7    mov         eax,dword ptr [ebp-4]
 004EFCCA    mov         edx,dword ptr [ebp-18]
 004EFCCD    mov         dx,word ptr [eax+edx*2]
 004EFCD1    mov         eax,dword ptr [ebp-1C]
 004EFCD4    call        004F301C
 004EFCD9    test        al,al
>004EFCDB    je          004EFD17
 004EFCDD    mov         eax,dword ptr [ebp-14]
 004EFCE0    call        @DynArrayLength
 004EFCE5    inc         eax
 004EFCE6    push        eax
 004EFCE7    lea         eax,[ebp-14]
 004EFCEA    mov         ecx,1
 004EFCEF    mov         edx,dword ptr ds:[4EFC2C];_DynArr_83_21
 004EFCF5    call        @DynArraySetLength
 004EFCFA    add         esp,4
 004EFCFD    mov         eax,dword ptr [ebp-14]
 004EFD00    call        @DynArrayLength
 004EFD05    mov         edx,dword ptr [ebp-14]
 004EFD08    mov         ecx,dword ptr [ebp-4]
 004EFD0B    mov         ebx,dword ptr [ebp-18]
 004EFD0E    mov         cx,word ptr [ecx+ebx*2]
 004EFD12    mov         word ptr [edx+eax*2-2],cx
 004EFD17    inc         dword ptr [ebp-18]
 004EFD1A    dec         dword ptr [ebp-20]
>004EFD1D    jne         004EFCC7
 004EFD1F    mov         eax,dword ptr [ebp-14]
 004EFD22    call        @DynArrayLength
 004EFD27    sub         eax,1
>004EFD2A    jb          004EFD30
>004EFD2C    je          004EFD37
>004EFD2E    jmp         004EFD4E
 004EFD30    call        @TryFinallyExit
>004EFD35    jmp         004EFD95
 004EFD37    mov         eax,dword ptr [ebp-14]
 004EFD3A    mov         ax,word ptr [eax]
 004EFD3D    mov         edx,dword ptr [ebp+0C]
 004EFD40    mov         word ptr [edx],ax
 004EFD43    mov         byte ptr [ebp-0D],1
 004EFD47    call        @TryFinallyExit
>004EFD4C    jmp         004EFD95
 004EFD4E    mov         eax,dword ptr [ebp+8]
 004EFD51    push        eax
 004EFD52    mov         eax,dword ptr [ebp-14]
 004EFD55    call        004062EC
 004EFD5A    mov         edx,eax
 004EFD5C    mov         ecx,dword ptr [ebp+0C]
 004EFD5F    mov         eax,dword ptr [ebp-14]
 004EFD62    call        004EF4D8
 004EFD67    mov         byte ptr [ebp-0D],al
 004EFD6A    xor         eax,eax
 004EFD6C    pop         edx
 004EFD6D    pop         ecx
 004EFD6E    pop         ecx
 004EFD6F    mov         dword ptr fs:[eax],edx
 004EFD72    push        4EFD95
 004EFD77    mov         eax,dword ptr [ebp-1C]
 004EFD7A    call        TObject.Free
 004EFD7F    lea         eax,[ebp-14]
 004EFD82    mov         edx,dword ptr ds:[4EFC2C];_DynArr_83_21
 004EFD88    call        @DynArrayClear
 004EFD8D    ret
>004EFD8E    jmp         @HandleFinally
>004EFD93    jmp         004EFD77
 004EFD95    xor         eax,eax
 004EFD97    pop         edx
 004EFD98    pop         ecx
 004EFD99    pop         ecx
 004EFD9A    mov         dword ptr fs:[eax],edx
 004EFD9D    push        4EFDB8
 004EFDA2    lea         eax,[ebp-14]
 004EFDA5    mov         edx,dword ptr ds:[4EFC2C];_DynArr_83_21
 004EFDAB    call        @DynArrayClear
 004EFDB0    ret
>004EFDB1    jmp         @HandleFinally
>004EFDB6    jmp         004EFDA2
 004EFDB8    mov         al,byte ptr [ebp-0D]
 004EFDBB    pop         ebx
 004EFDBC    mov         esp,ebp
 004EFDBE    pop         ebp
 004EFDBF    ret         8
end;*}

//004EFDC4
constructor sub_004EFDC4;
begin
{*
 004EFDC4    push        ebp
 004EFDC5    mov         ebp,esp
 004EFDC7    add         esp,0FFFFFFF4
 004EFDCA    test        dl,dl
>004EFDCC    je          004EFDD6
 004EFDCE    add         esp,0FFFFFFF0
 004EFDD1    call        @ClassCreate
 004EFDD6    mov         dword ptr [ebp-0C],ecx
 004EFDD9    mov         byte ptr [ebp-5],dl
 004EFDDC    mov         dword ptr [ebp-4],eax
 004EFDDF    mov         ecx,dword ptr [ebp-0C]
 004EFDE2    xor         edx,edx
 004EFDE4    mov         eax,dword ptr [ebp-4]
 004EFDE7    call        004DFBB8
 004EFDEC    mov         eax,dword ptr [ebp-4]
 004EFDEF    mov         byte ptr [eax+6D3],0;TMPHexEditorEx.?f6D3:byte
 004EFDF6    mov         eax,dword ptr [ebp-4]
 004EFDF9    mov         byte ptr [eax+6D2],0;TMPHexEditorEx.?f6D2:byte
 004EFE00    mov         eax,dword ptr [ebp-4]
 004EFE03    mov         byte ptr [eax+6D1],0;TMPHexEditorEx.?f6D1:byte
 004EFE0A    mov         eax,dword ptr [ebp-4]
 004EFE0D    mov         byte ptr [eax+6D0],0;TMPHexEditorEx.?f6D0:byte
 004EFE14    mov         eax,dword ptr [ebp-4]
 004EFE17    xor         edx,edx
 004EFE19    mov         dword ptr [eax+6C4],edx;TMPHexEditorEx.?f6C4:dword
 004EFE1F    mov         eax,dword ptr [ebp-4]
 004EFE22    add         eax,6B4;TMPHexEditorEx.?f6B4:IDataObject
 004EFE27    call        @IntfClear
 004EFE2C    mov         eax,dword ptr [ebp-4]
 004EFE2F    mov         byte ptr [eax+6C0],1;TMPHexEditorEx.ZoomOnWheel:Boolean
 004EFE36    mov         eax,dword ptr [ebp-4]
 004EFE39    mov         byte ptr [eax+680],1;TMPHexEditorEx.CreateBackup:Boolean
 004EFE40    mov         eax,dword ptr [ebp-4]
 004EFE43    add         eax,684;TMPHexEditorEx.BackupExtension:String
 004EFE48    mov         edx,4EFF2C;'.bak'
 004EFE4D    call        @LStrAsg
 004EFE52    mov         eax,dword ptr [ebp-4]
 004EFE55    mov         byte ptr [eax+688],0;TMPHexEditorEx.OleDragDrop:Boolean
 004EFE5C    mov         eax,dword ptr [ebp-4]
 004EFE5F    mov         byte ptr [eax+695],0;TMPHexEditorEx.?f695:byte
 004EFE66    mov         eax,dword ptr [ebp-4]
 004EFE69    mov         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
 004EFE70    mov         eax,dword ptr [ebp-4]
 004EFE73    mov         byte ptr [eax+6B1],0;TMPHexEditorEx.ClipboardAsHexText:Boolean
 004EFE7A    mov         eax,dword ptr [ebp-4]
 004EFE7D    mov         byte ptr [eax+6B8],0;TMPHexEditorEx.FlushClipboardAtShutDown:Boolean
 004EFE84    mov         eax,dword ptr [ebp-4]
 004EFE87    mov         byte ptr [eax+6B9],1;TMPHexEditorEx.SupportsOtherClipFormats:Boolean
 004EFE8E    mov         dl,1
 004EFE90    mov         eax,[004EE854];TMPHPrintOptions
 004EFE95    call        TMPHPrintOptions.Create;TMPHPrintOptions.Create
 004EFE9A    mov         edx,dword ptr [ebp-4]
 004EFE9D    mov         dword ptr [edx+6A4],eax;TMPHexEditorEx.PrintOptions:TMPHPrintOptions
 004EFEA3    mov         dl,1
 004EFEA5    mov         eax,[0042C4F8];TFont
 004EFEAA    call        TFont.Create;TFont.Create
 004EFEAF    mov         edx,dword ptr [ebp-4]
 004EFEB2    mov         dword ptr [edx+6AC],eax;TMPHexEditorEx.PrintFont:TFont
 004EFEB8    mov         eax,dword ptr [ebp-4]
 004EFEBB    mov         edx,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004EFEBE    mov         eax,dword ptr [ebp-4]
 004EFEC1    mov         eax,dword ptr [eax+6AC];TMPHexEditorEx.PrintFont:TFont
 004EFEC7    mov         ecx,dword ptr [eax]
 004EFEC9    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004EFECC    mov         eax,dword ptr [ebp-4]
 004EFECF    mov         byte ptr [eax+6B0],1;TMPHexEditorEx.UseEditorFontForPrinting:Boolean
 004EFED6    mov         eax,dword ptr [ebp-4]
 004EFED9    xor         edx,edx
 004EFEDB    mov         dword ptr [eax+6BC],edx;TMPHexEditorEx.?f6BC:TPopupMenu
 004EFEE1    mov         eax,dword ptr [ebp-4]
 004EFEE4    test        byte ptr [eax+1C],10;TMPHexEditorEx.FComponentState:TComponentState
>004EFEE8    jne         004EFF02
 004EFEEA    mov         ecx,dword ptr [ebp-4]
 004EFEED    mov         dl,1
 004EFEEF    mov         eax,[004EE7F8];TMPHDropTarget
 004EFEF4    call        TMPHDropTarget.Create;TMPHDropTarget.Create
 004EFEF9    mov         edx,dword ptr [ebp-4]
 004EFEFC    mov         dword ptr [edx+68C],eax;TMPHexEditorEx.?f68C:TMPHDropTarget
 004EFF02    mov         eax,dword ptr [ebp-4]
 004EFF05    cmp         byte ptr [ebp-5],0
>004EFF09    je          004EFF1A
 004EFF0B    call        @AfterConstruction
 004EFF10    pop         dword ptr fs:[0]
 004EFF17    add         esp,0C
 004EFF1A    mov         eax,dword ptr [ebp-4]
 004EFF1D    mov         esp,ebp
 004EFF1F    pop         ebp
 004EFF20    ret
*}
end;

//004EFF34
destructor TMPHexEditorEx.Destroy;
begin
{*
 004EFF34    push        ebp
 004EFF35    mov         ebp,esp
 004EFF37    add         esp,0FFFFFFF8
 004EFF3A    call        @BeforeDestruction
 004EFF3F    mov         byte ptr [ebp-5],dl
 004EFF42    mov         dword ptr [ebp-4],eax
 004EFF45    mov         eax,dword ptr [ebp-4]
 004EFF48    mov         dl,byte ptr [eax+6B8]
 004EFF4E    mov         eax,dword ptr [ebp-4]
 004EFF51    call        004F1750
 004EFF56    mov         eax,dword ptr [ebp-4]
 004EFF59    mov         eax,dword ptr [eax+6A4]
 004EFF5F    call        TObject.Free
 004EFF64    mov         eax,dword ptr [ebp-4]
 004EFF67    mov         eax,dword ptr [eax+6AC]
 004EFF6D    call        TObject.Free
 004EFF72    mov         eax,dword ptr [ebp-4]
 004EFF75    test        byte ptr [eax+1C],10
>004EFF79    jne         004EFF89
 004EFF7B    mov         eax,dword ptr [ebp-4]
 004EFF7E    mov         eax,dword ptr [eax+68C]
 004EFF84    call        TObject.Free
 004EFF89    mov         dl,byte ptr [ebp-5]
 004EFF8C    and         dl,0FC
 004EFF8F    mov         eax,dword ptr [ebp-4]
 004EFF92    call        TCustomMPHexEditor.Destroy
 004EFF97    cmp         byte ptr [ebp-5],0
>004EFF9B    jle         004EFFA5
 004EFF9D    mov         eax,dword ptr [ebp-4]
 004EFFA0    call        @ClassDestroy
 004EFFA5    pop         ecx
 004EFFA6    pop         ecx
 004EFFA7    pop         ebp
 004EFFA8    ret
*}
end;

//004EFFAC
{*function sub_004EFFAC(?:TMPHexEditorEx):?;
begin
 004EFFAC    push        ebp
 004EFFAD    mov         ebp,esp
 004EFFAF    add         esp,0FFFFFFF8
 004EFFB2    mov         dword ptr [ebp-4],eax
 004EFFB5    mov         eax,dword ptr [ebp-4]
 004EFFB8    call        004E0588
 004EFFBD    test        eax,eax
>004EFFBF    jle         004EFFCD
 004EFFC1    mov         eax,dword ptr [ebp-4]
 004EFFC4    call        004E4AD8
 004EFFC9    test        eax,eax
>004EFFCB    jg          004EFFD1
 004EFFCD    xor         eax,eax
>004EFFCF    jmp         004EFFD3
 004EFFD1    mov         al,1
 004EFFD3    mov         byte ptr [ebp-5],al
 004EFFD6    mov         al,byte ptr [ebp-5]
 004EFFD9    pop         ecx
 004EFFDA    pop         ecx
 004EFFDB    pop         ebp
 004EFFDC    ret
end;*}

//004EFFE0
{*function sub_004EFFE0(?:TMPHexEditorEx):?;
begin
 004EFFE0    push        ebp
 004EFFE1    mov         ebp,esp
 004EFFE3    add         esp,0FFFFFFF8
 004EFFE6    mov         dword ptr [ebp-4],eax
 004EFFE9    mov         eax,dword ptr [ebp-4]
 004EFFEC    call        004EFFAC
 004EFFF1    test        al,al
>004EFFF3    je          004F000D
 004EFFF5    mov         eax,dword ptr [ebp-4]
 004EFFF8    cmp         byte ptr [eax+561],0
>004EFFFF    jne         004F000D
 004F0001    mov         eax,dword ptr [ebp-4]
 004F0004    cmp         byte ptr [eax+4B8],0
>004F000B    je          004F0011
 004F000D    xor         eax,eax
>004F000F    jmp         004F0013
 004F0011    mov         al,1
 004F0013    mov         byte ptr [ebp-5],al
 004F0016    mov         al,byte ptr [ebp-5]
 004F0019    pop         ecx
 004F001A    pop         ecx
 004F001B    pop         ebp
 004F001C    ret
end;*}

//004F0020
{*function sub_004F0020(?:TMPHexEditorEx):?;
begin
 004F0020    push        ebp
 004F0021    mov         ebp,esp
 004F0023    add         esp,0FFFFFFE8
 004F0026    xor         edx,edx
 004F0028    mov         dword ptr [ebp-0C],edx
 004F002B    mov         dword ptr [ebp-4],eax
 004F002E    xor         eax,eax
 004F0030    push        ebp
 004F0031    push        4F00CC
 004F0036    push        dword ptr fs:[eax]
 004F0039    mov         dword ptr fs:[eax],esp
 004F003C    mov         dword ptr [ebp-10],1
 004F0043    mov         eax,dword ptr [ebp-4]
 004F0046    cmp         byte ptr [eax+561],0
>004F004D    jne         004F008D
 004F004F    lea         eax,[ebp-0C]
 004F0052    call        @IntfClear
 004F0057    push        eax
 004F0058    call        ole32.OleGetClipboard
 004F005D    call        0041CCDC
 004F0062    test        al,al
>004F0064    je          004F008D
 004F0066    lea         ecx,[ebp-18]
 004F0069    xor         edx,edx
 004F006B    xor         eax,eax
 004F006D    call        Point
 004F0072    lea         eax,[ebp-18]
 004F0075    push        eax
 004F0076    lea         eax,[ebp-10]
 004F0079    push        eax
 004F007A    push        1
 004F007C    xor         ecx,ecx
 004F007E    mov         edx,dword ptr [ebp-0C]
 004F0081    mov         eax,dword ptr [ebp-4]
 004F0084    call        004F139C
 004F0089    test        eax,eax
>004F008B    je          004F0091
 004F008D    xor         eax,eax
>004F008F    jmp         004F0093
 004F0091    mov         al,1
 004F0093    mov         byte ptr [ebp-5],al
 004F0096    cmp         byte ptr [ebp-5],0
>004F009A    je          004F00B6
 004F009C    mov         eax,dword ptr [ebp-4]
 004F009F    cmp         byte ptr [eax+4B8],0
>004F00A6    je          004F00B6
 004F00A8    mov         eax,dword ptr [ebp-4]
 004F00AB    call        004E0588
 004F00B0    test        eax,eax
 004F00B2    setg        byte ptr [ebp-5]
 004F00B6    xor         eax,eax
 004F00B8    pop         edx
 004F00B9    pop         ecx
 004F00BA    pop         ecx
 004F00BB    mov         dword ptr fs:[eax],edx
 004F00BE    push        4F00D3
 004F00C3    lea         eax,[ebp-0C]
 004F00C6    call        @IntfClear
 004F00CB    ret
>004F00CC    jmp         @HandleFinally
>004F00D1    jmp         004F00C3
 004F00D3    mov         al,byte ptr [ebp-5]
 004F00D6    mov         esp,ebp
 004F00D8    pop         ebp
 004F00D9    ret
end;*}

//004F00DC
{*function sub_004F00DC(?:TMPHexEditorEx):?;
begin
 004F00DC    push        ebp
 004F00DD    mov         ebp,esp
 004F00DF    add         esp,0FFFFFEF4
 004F00E5    xor         edx,edx
 004F00E7    mov         dword ptr [ebp-10C],edx
 004F00ED    mov         dword ptr [ebp-4],eax
 004F00F0    xor         eax,eax
 004F00F2    push        ebp
 004F00F3    push        4F0206
 004F00F8    push        dword ptr fs:[eax]
 004F00FB    mov         dword ptr fs:[eax],esp
 004F00FE    mov         eax,dword ptr [ebp-4]
 004F0101    call        004EFFAC
 004F0106    mov         byte ptr [ebp-5],al
 004F0109    cmp         byte ptr [ebp-5],0
>004F010D    je          004F01ED
 004F0113    mov         eax,dword ptr [ebp-4]
 004F0116    call        004E86E8
 004F011B    xor         eax,eax
 004F011D    push        ebp
 004F011E    push        4F01E6
 004F0123    push        dword ptr fs:[eax]
 004F0126    mov         dword ptr fs:[eax],esp
 004F0129    mov         eax,dword ptr [ebp-4]
 004F012C    call        004E3E34
 004F0131    push        eax
 004F0132    mov         eax,dword ptr [ebp-4]
 004F0135    call        004E3DEC
 004F013A    pop         edx
 004F013B    call        004DF5BC
 004F0140    push        eax
 004F0141    mov         eax,dword ptr [ebp-4]
 004F0144    call        004E4AD8
 004F0149    push        eax
 004F014A    lea         edx,[ebp-10C]
 004F0150    mov         eax,dword ptr [ebp-4]
 004F0153    mov         eax,dword ptr [eax+4F4]
 004F0159    call        0040CC9C
 004F015E    mov         edx,dword ptr [ebp-10C]
 004F0164    lea         eax,[ebp-108]
 004F016A    mov         ecx,0FF
 004F016F    call        @LStrToString
 004F0174    lea         eax,[ebp-108]
 004F017A    push        eax
 004F017B    mov         eax,dword ptr [ebp-4]
 004F017E    mov         al,byte ptr [eax+6B1]
 004F0184    push        eax
 004F0185    mov         eax,dword ptr [ebp-4]
 004F0188    call        TMPHexEditorEx.GetSwapNibbles
 004F018D    push        eax
 004F018E    mov         eax,dword ptr [ebp-4]
 004F0191    mov         ecx,dword ptr [eax+4E0]
 004F0197    mov         dl,1
 004F0199    mov         eax,[004EEE04];TMPHDataObject
 004F019E    call        TMPHDataObject.Create;TMPHDataObject.Create
 004F01A3    mov         edx,eax
 004F01A5    test        edx,edx
>004F01A7    je          004F01AF
 004F01A9    sub         edx,0FFFFFEE0
 004F01AF    mov         eax,dword ptr [ebp-4]
 004F01B2    add         eax,6B4
 004F01B7    call        @IntfCopy
 004F01BC    mov         eax,dword ptr [ebp-4]
 004F01BF    mov         eax,dword ptr [eax+6B4]
 004F01C5    push        eax
 004F01C6    call        ole32.OleSetClipboard
 004F01CB    call        004EC934
 004F01D0    xor         eax,eax
 004F01D2    pop         edx
 004F01D3    pop         ecx
 004F01D4    pop         ecx
 004F01D5    mov         dword ptr fs:[eax],edx
 004F01D8    push        4F01ED
 004F01DD    mov         eax,dword ptr [ebp-4]
 004F01E0    call        004E867C
 004F01E5    ret
>004F01E6    jmp         @HandleFinally
>004F01EB    jmp         004F01DD
 004F01ED    xor         eax,eax
 004F01EF    pop         edx
 004F01F0    pop         ecx
 004F01F1    pop         ecx
 004F01F2    mov         dword ptr fs:[eax],edx
 004F01F5    push        4F020D
 004F01FA    lea         eax,[ebp-10C]
 004F0200    call        @LStrClr
 004F0205    ret
>004F0206    jmp         @HandleFinally
>004F020B    jmp         004F01FA
 004F020D    mov         al,byte ptr [ebp-5]
 004F0210    mov         esp,ebp
 004F0212    pop         ebp
 004F0213    ret
end;*}

//004F0214
{*function sub_004F0214(?:TMPHexEditorEx):?;
begin
 004F0214    push        ebp
 004F0215    mov         ebp,esp
 004F0217    add         esp,0FFFFFFF4
 004F021A    xor         edx,edx
 004F021C    mov         dword ptr [ebp-0C],edx
 004F021F    mov         dword ptr [ebp-4],eax
 004F0222    xor         eax,eax
 004F0224    push        ebp
 004F0225    push        4F02B8
 004F022A    push        dword ptr fs:[eax]
 004F022D    mov         dword ptr fs:[eax],esp
 004F0230    mov         eax,dword ptr [ebp-4]
 004F0233    call        004EFFE0
 004F0238    test        al,al
>004F023A    je          004F0248
 004F023C    mov         eax,dword ptr [ebp-4]
 004F023F    call        004F00DC
 004F0244    test        al,al
>004F0246    jne         004F024C
 004F0248    xor         eax,eax
>004F024A    jmp         004F024E
 004F024C    mov         al,1
 004F024E    mov         byte ptr [ebp-5],al
 004F0251    cmp         byte ptr [ebp-5],0
>004F0255    je          004F02A2
 004F0257    mov         eax,dword ptr [ebp-4]
 004F025A    call        004E86E8
 004F025F    xor         eax,eax
 004F0261    push        ebp
 004F0262    push        4F029B
 004F0267    push        dword ptr fs:[eax]
 004F026A    mov         dword ptr fs:[eax],esp
 004F026D    lea         edx,[ebp-0C]
 004F0270    mov         eax,4EEA18;^HInstance:LongWord
 004F0275    call        LoadResString
 004F027A    mov         edx,dword ptr [ebp-0C]
 004F027D    mov         eax,dword ptr [ebp-4]
 004F0280    call        004E3C40
 004F0285    xor         eax,eax
 004F0287    pop         edx
 004F0288    pop         ecx
 004F0289    pop         ecx
 004F028A    mov         dword ptr fs:[eax],edx
 004F028D    push        4F02A2
 004F0292    mov         eax,dword ptr [ebp-4]
 004F0295    call        004E867C
 004F029A    ret
>004F029B    jmp         @HandleFinally
>004F02A0    jmp         004F0292
 004F02A2    xor         eax,eax
 004F02A4    pop         edx
 004F02A5    pop         ecx
 004F02A6    pop         ecx
 004F02A7    mov         dword ptr fs:[eax],edx
 004F02AA    push        4F02BF
 004F02AF    lea         eax,[ebp-0C]
 004F02B2    call        @LStrClr
 004F02B7    ret
>004F02B8    jmp         @HandleFinally
>004F02BD    jmp         004F02AF
 004F02BF    mov         al,byte ptr [ebp-5]
 004F02C2    mov         esp,ebp
 004F02C4    pop         ebp
 004F02C5    ret
end;*}

//004F02C8
{*function sub_004F02C8(?:TMPHexEditorEx):?;
begin
 004F02C8    push        ebp
 004F02C9    mov         ebp,esp
 004F02CB    add         esp,0FFFFFFE8
 004F02CE    xor         edx,edx
 004F02D0    mov         dword ptr [ebp-0C],edx
 004F02D3    mov         dword ptr [ebp-4],eax
 004F02D6    xor         eax,eax
 004F02D8    push        ebp
 004F02D9    push        4F0359
 004F02DE    push        dword ptr fs:[eax]
 004F02E1    mov         dword ptr fs:[eax],esp
 004F02E4    mov         dword ptr [ebp-10],1
 004F02EB    mov         eax,dword ptr [ebp-4]
 004F02EE    call        004F0020
 004F02F3    test        al,al
>004F02F5    je          004F033A
 004F02F7    lea         eax,[ebp-0C]
 004F02FA    call        @IntfClear
 004F02FF    push        eax
 004F0300    call        ole32.OleGetClipboard
 004F0305    call        0041CCDC
 004F030A    test        al,al
>004F030C    je          004F033A
 004F030E    lea         ecx,[ebp-18]
 004F0311    xor         edx,edx
 004F0313    xor         eax,eax
 004F0315    call        Point
 004F031A    lea         eax,[ebp-18]
 004F031D    push        eax
 004F031E    lea         eax,[ebp-10]
 004F0321    push        eax
 004F0322    push        1
 004F0324    xor         ecx,ecx
 004F0326    mov         edx,dword ptr [ebp-0C]
 004F0329    mov         eax,dword ptr [ebp-4]
 004F032C    call        004F0C40
 004F0331    call        0041CCDC
 004F0336    test        al,al
>004F0338    jne         004F033E
 004F033A    xor         eax,eax
>004F033C    jmp         004F0340
 004F033E    mov         al,1
 004F0340    mov         byte ptr [ebp-5],al
 004F0343    xor         eax,eax
 004F0345    pop         edx
 004F0346    pop         ecx
 004F0347    pop         ecx
 004F0348    mov         dword ptr fs:[eax],edx
 004F034B    push        4F0360
 004F0350    lea         eax,[ebp-0C]
 004F0353    call        @IntfClear
 004F0358    ret
>004F0359    jmp         @HandleFinally
>004F035E    jmp         004F0350
 004F0360    mov         al,byte ptr [ebp-5]
 004F0363    mov         esp,ebp
 004F0365    pop         ebp
 004F0366    ret
end;*}

//004F0368
{*function sub_004F0368(?:TMPHexEditorEx):?;
begin
 004F0368    push        ebp
 004F0369    mov         ebp,esp
 004F036B    add         esp,0FFFFFFF8
 004F036E    mov         dword ptr [ebp-4],eax
 004F0371    mov         eax,dword ptr [ebp-4]
 004F0374    inc         dword ptr [eax+6C4]
 004F037A    mov         eax,dword ptr [ebp-4]
 004F037D    mov         eax,dword ptr [eax+6C4]
 004F0383    mov         dword ptr [ebp-8],eax
 004F0386    mov         eax,dword ptr [ebp-8]
 004F0389    pop         ecx
 004F038A    pop         ecx
 004F038B    pop         ebp
 004F038C    ret
end;*}

//004F0390
{*function sub_004F0390(?:TMPHexEditorEx):?;
begin
 004F0390    push        ebp
 004F0391    mov         ebp,esp
 004F0393    add         esp,0FFFFFFF8
 004F0396    mov         dword ptr [ebp-4],eax
 004F0399    mov         eax,dword ptr [ebp-4]
 004F039C    dec         dword ptr [eax+6C4]
 004F03A2    mov         eax,dword ptr [ebp-4]
 004F03A5    cmp         dword ptr [eax+6C4],0
>004F03AC    jge         004F03B9
 004F03AE    mov         eax,dword ptr [ebp-4]
 004F03B1    xor         edx,edx
 004F03B3    mov         dword ptr [eax+6C4],edx
 004F03B9    mov         eax,dword ptr [ebp-4]
 004F03BC    cmp         dword ptr [eax+6C4],0
>004F03C3    jne         004F03CD
 004F03C5    mov         eax,dword ptr [ebp-4]
 004F03C8    mov         edx,dword ptr [eax]
 004F03CA    call        dword ptr [edx+7C]
 004F03CD    mov         eax,dword ptr [ebp-4]
 004F03D0    mov         eax,dword ptr [eax+6C4]
 004F03D6    mov         dword ptr [ebp-8],eax
 004F03D9    mov         eax,dword ptr [ebp-8]
 004F03DC    pop         ecx
 004F03DD    pop         ecx
 004F03DE    pop         ebp
 004F03DF    ret
end;*}

//004F03E0
{*procedure TMPHexEditorEx.sub_004846B4(?:?; ?:?);
begin
 004F03E0    push        ebp
 004F03E1    mov         ebp,esp
 004F03E3    add         esp,0FFFFFFF0
 004F03E6    push        esi
 004F03E7    push        edi
 004F03E8    mov         esi,ecx
 004F03EA    lea         edi,[ebp-0D]
 004F03ED    movs        dword ptr [edi],dword ptr [esi]
 004F03EE    movs        dword ptr [edi],dword ptr [esi]
 004F03EF    mov         byte ptr [ebp-5],dl
 004F03F2    mov         dword ptr [ebp-4],eax
 004F03F5    mov         eax,dword ptr [ebp-4]
 004F03F8    cmp         byte ptr [eax+6C0],0;TMPHexEditorEx.ZoomOnWheel:Boolean
>004F03FF    je          004F0437
 004F0401    mov         al,[004F0498];0x4 gvar_004F0498
 004F0406    cmp         al,byte ptr [ebp-5]
>004F0409    jne         004F0437
 004F040B    mov         eax,dword ptr [ebp-4]
 004F040E    cmp         dword ptr [eax+4D4],1;TMPHexEditorEx.?f4D4:Integer
>004F0415    jle         004F0437
 004F0417    mov         byte ptr [ebp-0E],1
 004F041B    mov         eax,dword ptr [ebp-4]
 004F041E    mov         edx,dword ptr [eax+4D4];TMPHexEditorEx.?f4D4:Integer
 004F0424    dec         edx
 004F0425    mov         eax,dword ptr [ebp-4]
 004F0428    call        TMPHexEditorEx.SetBytesPerRow
 004F042D    mov         eax,dword ptr [ebp-4]
 004F0430    mov         edx,dword ptr [eax]
 004F0432    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
>004F0435    jmp         004F048D
 004F0437    mov         eax,dword ptr [ebp-4]
 004F043A    cmp         byte ptr [eax+6C0],0;TMPHexEditorEx.ZoomOnWheel:Boolean
>004F0441    je          004F047C
 004F0443    mov         al,[004F049C];0x5 gvar_004F049C
 004F0448    cmp         al,byte ptr [ebp-5]
>004F044B    jne         004F047C
 004F044D    mov         eax,dword ptr [ebp-4]
 004F0450    mov         eax,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004F0453    call        TFont.GetSize
 004F0458    cmp         eax,2
>004F045B    jle         004F047C
 004F045D    mov         byte ptr [ebp-0E],1
 004F0461    mov         eax,dword ptr [ebp-4]
 004F0464    mov         eax,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004F0467    call        TFont.GetSize
 004F046C    mov         edx,eax
 004F046E    dec         edx
 004F046F    mov         eax,dword ptr [ebp-4]
 004F0472    mov         eax,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004F0475    call        TFont.SetSize
>004F047A    jmp         004F048D
 004F047C    lea         ecx,[ebp-0D]
 004F047F    mov         dl,byte ptr [ebp-5]
 004F0482    mov         eax,dword ptr [ebp-4]
 004F0485    call        TCustomMPHexEditor.sub_004846B4
 004F048A    mov         byte ptr [ebp-0E],al
 004F048D    mov         al,byte ptr [ebp-0E]
 004F0490    pop         edi
 004F0491    pop         esi
 004F0492    mov         esp,ebp
 004F0494    pop         ebp
 004F0495    ret
end;*}

//004F04A0
{*procedure TMPHexEditorEx.sub_00484704(?:?; ?:?);
begin
 004F04A0    push        ebp
 004F04A1    mov         ebp,esp
 004F04A3    add         esp,0FFFFFFF0
 004F04A6    push        esi
 004F04A7    push        edi
 004F04A8    mov         esi,ecx
 004F04AA    lea         edi,[ebp-0D]
 004F04AD    movs        dword ptr [edi],dword ptr [esi]
 004F04AE    movs        dword ptr [edi],dword ptr [esi]
 004F04AF    mov         byte ptr [ebp-5],dl
 004F04B2    mov         dword ptr [ebp-4],eax
 004F04B5    mov         eax,dword ptr [ebp-4]
 004F04B8    cmp         byte ptr [eax+6C0],0;TMPHexEditorEx.ZoomOnWheel:Boolean
>004F04BF    je          004F04FA
 004F04C1    mov         al,[004F054C];0x4 gvar_004F054C
 004F04C6    cmp         al,byte ptr [ebp-5]
>004F04C9    jne         004F04FA
 004F04CB    mov         eax,dword ptr [ebp-4]
 004F04CE    cmp         dword ptr [eax+4D4],100;TMPHexEditorEx.?f4D4:Integer
>004F04D8    jge         004F04FA
 004F04DA    mov         byte ptr [ebp-0E],1
 004F04DE    mov         eax,dword ptr [ebp-4]
 004F04E1    mov         edx,dword ptr [eax+4D4];TMPHexEditorEx.?f4D4:Integer
 004F04E7    inc         edx
 004F04E8    mov         eax,dword ptr [ebp-4]
 004F04EB    call        TMPHexEditorEx.SetBytesPerRow
 004F04F0    mov         eax,dword ptr [ebp-4]
 004F04F3    mov         edx,dword ptr [eax]
 004F04F5    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
>004F04F8    jmp         004F0540
 004F04FA    mov         eax,dword ptr [ebp-4]
 004F04FD    cmp         byte ptr [eax+6C0],0;TMPHexEditorEx.ZoomOnWheel:Boolean
>004F0504    je          004F052F
 004F0506    mov         al,[004F0550];0x5 gvar_004F0550
 004F050B    cmp         al,byte ptr [ebp-5]
>004F050E    jne         004F052F
 004F0510    mov         byte ptr [ebp-0E],1
 004F0514    mov         eax,dword ptr [ebp-4]
 004F0517    mov         eax,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004F051A    call        TFont.GetSize
 004F051F    mov         edx,eax
 004F0521    inc         edx
 004F0522    mov         eax,dword ptr [ebp-4]
 004F0525    mov         eax,dword ptr [eax+68];TMPHexEditorEx.FFont:TFont
 004F0528    call        TFont.SetSize
>004F052D    jmp         004F0540
 004F052F    lea         ecx,[ebp-0D]
 004F0532    mov         dl,byte ptr [ebp-5]
 004F0535    mov         eax,dword ptr [ebp-4]
 004F0538    call        TCustomMPHexEditor.sub_00484704
 004F053D    mov         byte ptr [ebp-0E],al
 004F0540    mov         al,byte ptr [ebp-0E]
 004F0543    pop         edi
 004F0544    pop         esi
 004F0545    mov         esp,ebp
 004F0547    pop         ebp
 004F0548    ret
end;*}

//004F0554
{*procedure TMPHexEditorEx.sub_0048A878(?:?; ?:?);
begin
 004F0554    push        ebp
 004F0555    mov         ebp,esp
 004F0557    add         esp,0FFFFFFF4
 004F055A    mov         byte ptr [ebp-9],cl
 004F055D    mov         dword ptr [ebp-8],edx
 004F0560    mov         dword ptr [ebp-4],eax
 004F0563    mov         edx,dword ptr [ebp-8]
 004F0566    mov         cl,byte ptr [ebp-9]
 004F0569    mov         eax,dword ptr [ebp-4]
 004F056C    call        TCustomMPHexEditor.sub_0048A878
 004F0571    mov         eax,dword ptr [ebp-8]
 004F0574    movzx       eax,word ptr [eax]
 004F0577    cmp         eax,56
>004F057A    jg          004F0591
>004F057C    je          004F0607
 004F0582    sub         eax,41
>004F0585    je          004F05A4
 004F0587    sub         eax,2
>004F058A    je          004F05BF
>004F058C    jmp         004F0665
 004F0591    sub         eax,58
>004F0594    je          004F05E7
 004F0596    sub         eax,2
>004F0599    je          004F0627
>004F059F    jmp         004F0665
 004F05A4    mov         al,[004F066C];0x4 gvar_004F066C
 004F05A9    cmp         al,byte ptr [ebp-9]
>004F05AC    jne         004F0665
 004F05B2    mov         eax,dword ptr [ebp-4]
 004F05B5    call        004E853C
>004F05BA    jmp         004F0665
 004F05BF    mov         al,[004F066C];0x4 gvar_004F066C
 004F05C4    cmp         al,byte ptr [ebp-9]
>004F05C7    jne         004F0665
 004F05CD    mov         eax,dword ptr [ebp-4]
 004F05D0    call        004EFFAC
 004F05D5    test        al,al
>004F05D7    je          004F0665
 004F05DD    mov         eax,dword ptr [ebp-4]
 004F05E0    call        004F00DC
>004F05E5    jmp         004F0665
 004F05E7    mov         al,[004F066C];0x4 gvar_004F066C
 004F05EC    cmp         al,byte ptr [ebp-9]
>004F05EF    jne         004F0665
 004F05F1    mov         eax,dword ptr [ebp-4]
 004F05F4    call        004EFFE0
 004F05F9    test        al,al
>004F05FB    je          004F0665
 004F05FD    mov         eax,dword ptr [ebp-4]
 004F0600    call        004F0214
>004F0605    jmp         004F0665
 004F0607    mov         al,[004F066C];0x4 gvar_004F066C
 004F060C    cmp         al,byte ptr [ebp-9]
>004F060F    jne         004F0665
 004F0611    mov         eax,dword ptr [ebp-4]
 004F0614    call        004F0020
 004F0619    test        al,al
>004F061B    je          004F0665
 004F061D    mov         eax,dword ptr [ebp-4]
 004F0620    call        004F02C8
>004F0625    jmp         004F0665
 004F0627    mov         al,[004F066C];0x4 gvar_004F066C
 004F062C    cmp         al,byte ptr [ebp-9]
>004F062F    jne         004F0647
 004F0631    mov         eax,dword ptr [ebp-4]
 004F0634    call        004E3D7C
 004F0639    test        al,al
>004F063B    je          004F0647
 004F063D    mov         eax,dword ptr [ebp-4]
 004F0640    call        004E837C
>004F0645    jmp         004F0665
 004F0647    mov         al,[004F0670];0x5 gvar_004F0670
 004F064C    cmp         al,byte ptr [ebp-9]
>004F064F    jne         004F0665
 004F0651    mov         eax,dword ptr [ebp-4]
 004F0654    call        004E3DB4
 004F0659    test        al,al
>004F065B    je          004F0665
 004F065D    mov         eax,dword ptr [ebp-4]
 004F0660    call        004E83A0
 004F0665    mov         esp,ebp
 004F0667    pop         ebp
 004F0668    ret
end;*}

//004F0674
procedure sub_004F0674;
begin
{*
 004F0674    push        ebp
 004F0675    mov         ebp,esp
 004F0677    add         esp,0FFFFFFD8
 004F067A    xor         edx,edx
 004F067C    mov         dword ptr [ebp-24],edx
 004F067F    mov         dword ptr [ebp-28],edx
 004F0682    mov         dword ptr [ebp-1C],edx
 004F0685    mov         dword ptr [ebp-20],edx
 004F0688    mov         dword ptr [ebp-8],edx
 004F068B    mov         dword ptr [ebp-4],eax
 004F068E    xor         eax,eax
 004F0690    push        ebp
 004F0691    push        4F07E0
 004F0696    push        dword ptr fs:[eax]
 004F0699    mov         dword ptr fs:[eax],esp
 004F069C    mov         eax,dword ptr [ebp-4]
 004F069F    call        004E8768
 004F06A4    mov         eax,dword ptr [ebp-4]
 004F06A7    cmp         byte ptr [eax+680],0;TMPHexEditorEx.CreateBackup:Boolean
>004F06AE    je          004F07BD
 004F06B4    mov         eax,dword ptr [ebp-4]
 004F06B7    call        004E60CC
 004F06BC    test        al,al
>004F06BE    je          004F07BD
 004F06C4    mov         eax,dword ptr [ebp-4]
 004F06C7    mov         eax,dword ptr [eax+4F4];TMPHexEditorEx.?f4F4:String
 004F06CD    call        0040C94C
 004F06D2    test        al,al
>004F06D4    je          004F07BD
 004F06DA    lea         eax,[ebp-8]
 004F06DD    mov         edx,dword ptr [ebp-4]
 004F06E0    mov         ecx,dword ptr [edx+684];TMPHexEditorEx.BackupExtension:String
 004F06E6    mov         edx,dword ptr [ebp-4]
 004F06E9    mov         edx,dword ptr [edx+4F4];TMPHexEditorEx.?f4F4:String
 004F06EF    call        @LStrCat3
 004F06F4    mov         eax,dword ptr [ebp-8]
 004F06F7    call        0040C94C
 004F06FC    test        al,al
>004F06FE    je          004F0754
 004F0700    mov         eax,dword ptr [ebp-8]
 004F0703    call        0040CAA4
 004F0708    test        al,al
>004F070A    jne         004F0754
 004F070C    mov         eax,dword ptr [ebp-8]
 004F070F    mov         dword ptr [ebp-18],eax
 004F0712    mov         byte ptr [ebp-14],0B
 004F0716    call        kernel32.GetLastError
 004F071B    lea         edx,[ebp-1C]
 004F071E    call        SysErrorMessage
 004F0723    mov         eax,dword ptr [ebp-1C]
 004F0726    mov         dword ptr [ebp-10],eax
 004F0729    mov         byte ptr [ebp-0C],0B
 004F072D    lea         eax,[ebp-18]
 004F0730    push        eax
 004F0731    push        1
 004F0733    lea         edx,[ebp-20]
 004F0736    mov         eax,4EEA00;^HInstance:LongWord
 004F073B    call        LoadResString
 004F0740    mov         ecx,dword ptr [ebp-20]
 004F0743    mov         dl,1
 004F0745    mov         eax,[004DE8FC];EMPHexEditor
 004F074A    call        Exception.CreateFmt;EMPHexEditor.Create
 004F074F    call        @RaiseExcept
 004F0754    mov         eax,dword ptr [ebp-8]
 004F0757    call        @LStrToPChar
 004F075C    push        eax
 004F075D    mov         eax,dword ptr [ebp-4]
 004F0760    mov         eax,dword ptr [eax+4F4];TMPHexEditorEx.?f4F4:String
 004F0766    call        @LStrToPChar
 004F076B    push        eax
 004F076C    call        kernel32.MoveFileA
 004F0771    test        eax,eax
>004F0773    jne         004F07BD
 004F0775    mov         eax,dword ptr [ebp-8]
 004F0778    mov         dword ptr [ebp-18],eax
 004F077B    mov         byte ptr [ebp-14],0B
 004F077F    call        kernel32.GetLastError
 004F0784    lea         edx,[ebp-24]
 004F0787    call        SysErrorMessage
 004F078C    mov         eax,dword ptr [ebp-24]
 004F078F    mov         dword ptr [ebp-10],eax
 004F0792    mov         byte ptr [ebp-0C],0B
 004F0796    lea         eax,[ebp-18]
 004F0799    push        eax
 004F079A    push        1
 004F079C    lea         edx,[ebp-28]
 004F079F    mov         eax,4EEA08;^HInstance:LongWord
 004F07A4    call        LoadResString
 004F07A9    mov         ecx,dword ptr [ebp-28]
 004F07AC    mov         dl,1
 004F07AE    mov         eax,[004DE8FC];EMPHexEditor
 004F07B3    call        Exception.CreateFmt;EMPHexEditor.Create
 004F07B8    call        @RaiseExcept
 004F07BD    xor         eax,eax
 004F07BF    pop         edx
 004F07C0    pop         ecx
 004F07C1    pop         ecx
 004F07C2    mov         dword ptr fs:[eax],edx
 004F07C5    push        4F07E7
 004F07CA    lea         eax,[ebp-28]
 004F07CD    mov         edx,4
 004F07D2    call        @LStrArrayClr
 004F07D7    lea         eax,[ebp-8]
 004F07DA    call        @LStrClr
 004F07DF    ret
>004F07E0    jmp         @HandleFinally
>004F07E5    jmp         004F07CA
 004F07E7    mov         esp,ebp
 004F07E9    pop         ebp
 004F07EA    ret
*}
end;

//004F07EC
{*procedure TMPHexEditorEx.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004F07EC    push        ebp
 004F07ED    mov         ebp,esp
 004F07EF    add         esp,0FFFFFFF8
 004F07F2    mov         byte ptr [ebp-6],cl
 004F07F5    mov         byte ptr [ebp-5],dl
 004F07F8    mov         dword ptr [ebp-4],eax
 004F07FB    mov         eax,dword ptr [ebp+0C]
 004F07FE    push        eax
 004F07FF    mov         eax,dword ptr [ebp+8]
 004F0802    push        eax
 004F0803    mov         cl,byte ptr [ebp-6]
 004F0806    mov         dl,byte ptr [ebp-5]
 004F0809    mov         eax,dword ptr [ebp-4]
 004F080C    call        TCustomMPHexEditor.sub_00485588
 004F0811    mov         eax,dword ptr [ebp-4]
 004F0814    cmp         byte ptr [eax+688],0;TMPHexEditorEx.OleDragDrop:Boolean
>004F081B    je          004F0867
 004F081D    cmp         byte ptr [ebp-5],0
>004F0821    jne         004F0867
 004F0823    mov         eax,dword ptr [ebp-4]
 004F0826    call        004E599C
 004F082B    test        al,al
>004F082D    je          004F0867
 004F082F    mov         eax,dword ptr [ebp-4]
 004F0832    cmp         byte ptr [eax+614],0;TMPHexEditorEx.?f614:byte
>004F0839    jne         004F0867
 004F083B    mov         eax,dword ptr [ebp-4]
 004F083E    mov         byte ptr [eax+695],1;TMPHexEditorEx.?f695:byte
 004F0845    mov         eax,dword ptr [ebp-4]
 004F0848    mov         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
 004F084F    mov         eax,dword ptr [ebp+0C]
 004F0852    mov         edx,dword ptr [ebp-4]
 004F0855    mov         dword ptr [edx+698],eax;TMPHexEditorEx.?f698:dword
 004F085B    mov         eax,dword ptr [ebp+8]
 004F085E    mov         edx,dword ptr [ebp-4]
 004F0861    mov         dword ptr [edx+69C],eax;TMPHexEditorEx.?f69C:dword
 004F0867    pop         ecx
 004F0868    pop         ecx
 004F0869    pop         ebp
 004F086A    ret         8
end;*}

//004F0870
{*procedure TMPHexEditorEx.sub_004858F4(?:?; ?:?; ?:?);
begin
 004F0870    push        ebp
 004F0871    mov         ebp,esp
 004F0873    add         esp,0FFFFFEE0
 004F0879    push        ebx
 004F087A    xor         ebx,ebx
 004F087C    mov         dword ptr [ebp-120],ebx
 004F0882    mov         dword ptr [ebp-11C],ebx
 004F0888    mov         dword ptr [ebp-0C],ecx
 004F088B    mov         byte ptr [ebp-5],dl
 004F088E    mov         dword ptr [ebp-4],eax
 004F0891    xor         eax,eax
 004F0893    push        ebp
 004F0894    push        4F0B33
 004F0899    push        dword ptr fs:[eax]
 004F089C    mov         dword ptr fs:[eax],esp
 004F089F    mov         eax,dword ptr [ebp+8]
 004F08A2    push        eax
 004F08A3    mov         ecx,dword ptr [ebp-0C]
 004F08A6    mov         dl,byte ptr [ebp-5]
 004F08A9    mov         eax,dword ptr [ebp-4]
 004F08AC    call        TCustomMPHexEditor.sub_004858F4
 004F08B1    mov         eax,dword ptr [ebp-4]
 004F08B4    cmp         byte ptr [eax+688],0;TMPHexEditorEx.OleDragDrop:Boolean
>004F08BB    je          004F0B15
 004F08C1    test        byte ptr [ebp-5],8
>004F08C5    je          004F0B15
 004F08CB    mov         eax,dword ptr [ebp-4]
 004F08CE    cmp         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
>004F08D5    jne         004F0B15
 004F08DB    mov         eax,dword ptr [ebp-4]
 004F08DE    cmp         byte ptr [eax+695],0;TMPHexEditorEx.?f695:byte
>004F08E5    je          004F0B15
 004F08EB    mov         eax,dword ptr [ebp-4]
 004F08EE    call        004E599C
 004F08F3    test        al,al
>004F08F5    je          004F0B15
 004F08FB    mov         eax,dword ptr [ebp-4]
 004F08FE    cmp         byte ptr [eax+614],0;TMPHexEditorEx.?f614:byte
>004F0905    jne         004F0B15
 004F090B    mov         eax,dword ptr [ebp-4]
 004F090E    push        dword ptr [eax+698]
 004F0914    mov         eax,dword ptr [ebp-0C]
 004F0917    pop         edx
 004F0918    sub         eax,edx
 004F091A    cdq
 004F091B    xor         eax,edx
 004F091D    sub         eax,edx
 004F091F    mov         edx,dword ptr ds:[56E5B4];^Mouse:TMouse
 004F0925    mov         edx,dword ptr [edx]
 004F0927    cmp         eax,dword ptr [edx+8];TMouse.FDragThreshold:Integer
>004F092A    jge         004F0951
 004F092C    mov         eax,dword ptr [ebp-4]
 004F092F    push        dword ptr [eax+69C]
 004F0935    mov         eax,dword ptr [ebp+8]
 004F0938    pop         edx
 004F0939    sub         eax,edx
 004F093B    cdq
 004F093C    xor         eax,edx
 004F093E    sub         eax,edx
 004F0940    mov         edx,dword ptr ds:[56E5B4];^Mouse:TMouse
 004F0946    mov         edx,dword ptr [edx]
 004F0948    cmp         eax,dword ptr [edx+8];TMouse.FDragThreshold:Integer
>004F094B    jl          004F0B15
 004F0951    mov         eax,dword ptr [ebp-4]
 004F0954    mov         byte ptr [eax+695],0;TMPHexEditorEx.?f695:byte
 004F095B    mov         eax,dword ptr [ebp-4]
 004F095E    mov         byte ptr [eax+694],1;TMPHexEditorEx.?f694:byte
 004F0965    mov         eax,dword ptr [ebp-4]
 004F0968    mov         byte ptr [eax+6A0],0;TMPHexEditorEx.?f6A0:byte
 004F096F    xor         eax,eax
 004F0971    push        ebp
 004F0972    push        4F0B0E
 004F0977    push        dword ptr fs:[eax]
 004F097A    mov         dword ptr fs:[eax],esp
 004F097D    mov         eax,dword ptr [ebp-4]
 004F0980    call        004E3E34
 004F0985    push        eax
 004F0986    mov         eax,dword ptr [ebp-4]
 004F0989    call        004E3DEC
 004F098E    pop         edx
 004F098F    call        004DF5BC
 004F0994    push        eax
 004F0995    mov         eax,dword ptr [ebp-4]
 004F0998    call        004E4AD8
 004F099D    push        eax
 004F099E    lea         edx,[ebp-11C]
 004F09A4    mov         eax,dword ptr [ebp-4]
 004F09A7    mov         eax,dword ptr [eax+4F4];TMPHexEditorEx.?f4F4:String
 004F09AD    call        0040CC9C
 004F09B2    mov         edx,dword ptr [ebp-11C]
 004F09B8    lea         eax,[ebp-118]
 004F09BE    mov         ecx,0FF
 004F09C3    call        @LStrToString
 004F09C8    lea         eax,[ebp-118]
 004F09CE    push        eax
 004F09CF    mov         eax,dword ptr [ebp-4]
 004F09D2    mov         al,byte ptr [eax+6B1];TMPHexEditorEx.ClipboardAsHexText:Boolean
 004F09D8    push        eax
 004F09D9    mov         eax,dword ptr [ebp-4]
 004F09DC    call        TMPHexEditorEx.GetSwapNibbles
 004F09E1    push        eax
 004F09E2    mov         eax,dword ptr [ebp-4]
 004F09E5    mov         ecx,dword ptr [eax+4E0];TMPHexEditorEx.?f4E0:TMPHMemoryStream
 004F09EB    mov         dl,1
 004F09ED    mov         eax,[004EEE04];TMPHDataObject
 004F09F2    call        TMPHDataObject.Create;TMPHDataObject.Create
 004F09F7    mov         dword ptr [ebp-18],eax
 004F09FA    mov         eax,dword ptr [ebp-4]
 004F09FD    cmp         byte ptr [eax+561],0;TMPHexEditorEx.?f561:byte
>004F0A04    jne         004F0A37
 004F0A06    lea         eax,[ebp-14]
 004F0A09    push        eax
 004F0A0A    push        3
 004F0A0C    mov         dl,1
 004F0A0E    mov         eax,[004EECB8];TMPHDropSource
 004F0A13    call        TObject.Create;TMPHDropSource.Create
 004F0A18    test        eax,eax
>004F0A1A    je          004F0A1F
 004F0A1C    sub         eax,0FFFFFFF4
 004F0A1F    push        eax
 004F0A20    mov         eax,dword ptr [ebp-18]
 004F0A23    test        eax,eax
>004F0A25    je          004F0A2C
 004F0A27    sub         eax,0FFFFFEE0
 004F0A2C    push        eax
 004F0A2D    call        ole32.DoDragDrop
 004F0A32    mov         dword ptr [ebp-10],eax
>004F0A35    jmp         004F0A66
 004F0A37    lea         eax,[ebp-14]
 004F0A3A    push        eax
 004F0A3B    push        1
 004F0A3D    mov         dl,1
 004F0A3F    mov         eax,[004EECB8];TMPHDropSource
 004F0A44    call        TObject.Create;TMPHDropSource.Create
 004F0A49    test        eax,eax
>004F0A4B    je          004F0A50
 004F0A4D    sub         eax,0FFFFFFF4
 004F0A50    push        eax
 004F0A51    mov         eax,dword ptr [ebp-18]
 004F0A54    test        eax,eax
>004F0A56    je          004F0A5D
 004F0A58    sub         eax,0FFFFFEE0
 004F0A5D    push        eax
 004F0A5E    call        ole32.DoDragDrop
 004F0A63    mov         dword ptr [ebp-10],eax
 004F0A66    mov         eax,dword ptr [ebp-18]
 004F0A69    cmp         byte ptr [eax+114],0;TMPHDataObject.?f114:byte
>004F0A70    je          004F0A7E
 004F0A72    mov         eax,dword ptr [ebp-18]
 004F0A75    mov         eax,dword ptr [eax+118];TMPHDataObject.?f118:dword
 004F0A7B    mov         dword ptr [ebp-14],eax
 004F0A7E    cmp         dword ptr [ebp-10],40101
>004F0A85    je          004F0A9A
 004F0A87    cmp         dword ptr [ebp-10],40100
>004F0A8E    je          004F0A9A
 004F0A90    mov         eax,dword ptr [ebp-10]
 004F0A93    call        004EC934
>004F0A98    jmp         004F0AE4
 004F0A9A    cmp         dword ptr [ebp-10],40100
>004F0AA1    jne         004F0AE4
 004F0AA3    cmp         dword ptr [ebp-14],2
>004F0AA7    jne         004F0AE4
 004F0AA9    mov         eax,dword ptr [ebp-4]
 004F0AAC    cmp         byte ptr [eax+6A0],0;TMPHexEditorEx.?f6A0:byte
>004F0AB3    jne         004F0AC1
 004F0AB5    xor         edx,edx
 004F0AB7    mov         eax,dword ptr [ebp-4]
 004F0ABA    call        004E3C40
>004F0ABF    jmp         004F0AE4
 004F0AC1    lea         edx,[ebp-120]
 004F0AC7    mov         eax,4EEA28;^HInstance:LongWord
 004F0ACC    call        LoadResString
 004F0AD1    mov         ecx,dword ptr [ebp-120]
 004F0AD7    mov         edx,2
 004F0ADC    mov         eax,dword ptr [ebp-4]
 004F0ADF    call        004E5970
 004F0AE4    xor         eax,eax
 004F0AE6    pop         edx
 004F0AE7    pop         ecx
 004F0AE8    pop         ecx
 004F0AE9    mov         dword ptr fs:[eax],edx
 004F0AEC    push        4F0B15
 004F0AF1    mov         eax,dword ptr [ebp-4]
 004F0AF4    mov         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
 004F0AFB    mov         eax,dword ptr [ebp-4]
 004F0AFE    mov         byte ptr [eax+6A0],0;TMPHexEditorEx.?f6A0:byte
 004F0B05    mov         eax,dword ptr [ebp-4]
 004F0B08    call        004E5954
 004F0B0D    ret
>004F0B0E    jmp         @HandleFinally
>004F0B13    jmp         004F0AF1
 004F0B15    xor         eax,eax
 004F0B17    pop         edx
 004F0B18    pop         ecx
 004F0B19    pop         ecx
 004F0B1A    mov         dword ptr fs:[eax],edx
 004F0B1D    push        4F0B3A
 004F0B22    lea         eax,[ebp-120]
 004F0B28    mov         edx,2
 004F0B2D    call        @LStrArrayClr
 004F0B32    ret
>004F0B33    jmp         @HandleFinally
>004F0B38    jmp         004F0B22
 004F0B3A    pop         ebx
 004F0B3B    mov         esp,ebp
 004F0B3D    pop         ebp
 004F0B3E    ret         4
end;*}

//004F0B44
{*procedure TMPHexEditorEx.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004F0B44    push        ebp
 004F0B45    mov         ebp,esp
 004F0B47    add         esp,0FFFFFFF8
 004F0B4A    mov         byte ptr [ebp-6],cl
 004F0B4D    mov         byte ptr [ebp-5],dl
 004F0B50    mov         dword ptr [ebp-4],eax
 004F0B53    mov         eax,dword ptr [ebp-4]
 004F0B56    cmp         byte ptr [eax+6D0],0;TMPHexEditorEx.?f6D0:byte
>004F0B5D    je          004F0B73
 004F0B5F    mov         eax,dword ptr [ebp-4]
 004F0B62    mov         byte ptr [eax+615],0;TMPHexEditorEx.?f615:byte
 004F0B69    mov         eax,dword ptr [ebp-4]
 004F0B6C    mov         byte ptr [eax+6D0],0;TMPHexEditorEx.?f6D0:byte
 004F0B73    mov         eax,dword ptr [ebp+0C]
 004F0B76    push        eax
 004F0B77    mov         eax,dword ptr [ebp+8]
 004F0B7A    push        eax
 004F0B7B    mov         cl,byte ptr [ebp-6]
 004F0B7E    mov         dl,byte ptr [ebp-5]
 004F0B81    mov         eax,dword ptr [ebp-4]
 004F0B84    call        TCustomMPHexEditor.sub_004859D0
 004F0B89    mov         eax,dword ptr [ebp-4]
 004F0B8C    cmp         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
>004F0B93    je          004F0BA9
 004F0B95    mov         eax,dword ptr [ebp-4]
 004F0B98    mov         byte ptr [eax+694],0;TMPHexEditorEx.?f694:byte
 004F0B9F    mov         eax,dword ptr [ebp-4]
 004F0BA2    mov         byte ptr [eax+695],0;TMPHexEditorEx.?f695:byte
 004F0BA9    pop         ecx
 004F0BAA    pop         ecx
 004F0BAB    pop         ebp
 004F0BAC    ret         8
end;*}

//004F0BB0
procedure TMPHexEditorEx.SetOleDragDrop(Value:Boolean);
begin
{*
 004F0BB0    push        ebp
 004F0BB1    mov         ebp,esp
 004F0BB3    add         esp,0FFFFFFF8
 004F0BB6    mov         byte ptr [ebp-5],dl
 004F0BB9    mov         dword ptr [ebp-4],eax
 004F0BBC    mov         al,byte ptr [ebp-5]
 004F0BBF    mov         edx,dword ptr [ebp-4]
 004F0BC2    cmp         al,byte ptr [edx+688];TMPHexEditorEx.OleDragDrop:Boolean
>004F0BC8    je          004F0C00
 004F0BCA    mov         al,byte ptr [ebp-5]
 004F0BCD    mov         edx,dword ptr [ebp-4]
 004F0BD0    mov         byte ptr [edx+688],al;TMPHexEditorEx.OleDragDrop:Boolean
 004F0BD6    mov         ax,[004F0C04];0x11 gvar_004F0C04
 004F0BDC    mov         edx,dword ptr [ebp-4]
 004F0BDF    and         ax,word ptr [edx+1C];TMPHexEditorEx.FComponentState:TComponentState
 004F0BE3    mov         dx,word ptr ds:[4F0C08];0x0 gvar_004F0C08
 004F0BEA    cmp         dx,ax
>004F0BED    jne         004F0C00
 004F0BEF    mov         dl,byte ptr [ebp-5]
 004F0BF2    mov         eax,dword ptr [ebp-4]
 004F0BF5    mov         eax,dword ptr [eax+68C];TMPHexEditorEx.?f68C:TMPHDropTarget
 004F0BFB    call        004F2D9C
 004F0C00    pop         ecx
 004F0C01    pop         ecx
 004F0C02    pop         ebp
 004F0C03    ret
*}
end;

//004F0C0C
procedure TMPHexEditorEx.CreateWnd;
begin
{*
 004F0C0C    push        ebp
 004F0C0D    mov         ebp,esp
 004F0C0F    push        ecx
 004F0C10    mov         dword ptr [ebp-4],eax
 004F0C13    mov         eax,dword ptr [ebp-4]
 004F0C16    call        TCustomMPHexEditor.CreateWnd
 004F0C1B    mov         eax,dword ptr [ebp-4]
 004F0C1E    test        byte ptr [eax+1C],10;TMPHexEditorEx.FComponentState:TComponentState
>004F0C22    jne         004F0C3B
 004F0C24    mov         eax,dword ptr [ebp-4]
 004F0C27    mov         dl,byte ptr [eax+688];TMPHexEditorEx.OleDragDrop:Boolean
 004F0C2D    mov         eax,dword ptr [ebp-4]
 004F0C30    mov         eax,dword ptr [eax+68C];TMPHexEditorEx.?f68C:TMPHDropTarget
 004F0C36    call        004F2D9C
 004F0C3B    pop         ecx
 004F0C3C    pop         ebp
 004F0C3D    ret
*}
end;

//004F0C40
{*function sub_004F0C40(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F0C40    push        ebp
 004F0C41    mov         ebp,esp
 004F0C43    push        ecx
 004F0C44    mov         ecx,2E
 004F0C49    push        0
 004F0C4B    push        0
 004F0C4D    dec         ecx
>004F0C4E    jne         004F0C49
 004F0C50    push        ecx
 004F0C51    xchg        ecx,dword ptr [ebp-4]
 004F0C54    push        ebx
 004F0C55    mov         dword ptr [ebp-38],ecx
 004F0C58    mov         dword ptr [ebp-8],edx
 004F0C5B    mov         dword ptr [ebp-4],eax
 004F0C5E    xor         eax,eax
 004F0C60    push        ebp
 004F0C61    push        4F137C
 004F0C66    push        dword ptr fs:[eax]
 004F0C69    mov         dword ptr fs:[eax],esp
 004F0C6C    mov         dword ptr [ebp-0C],80004005
 004F0C73    lea         eax,[ebp-10]
 004F0C76    call        @LStrClr
 004F0C7B    xor         eax,eax
 004F0C7D    mov         dword ptr [ebp-18],eax
 004F0C80    mov         eax,dword ptr [ebp-4]
 004F0C83    call        004E86E8
 004F0C88    xor         eax,eax
 004F0C8A    push        ebp
 004F0C8B    push        4F132C
 004F0C90    push        dword ptr fs:[eax]
 004F0C93    mov         dword ptr fs:[eax],esp
 004F0C96    xor         eax,eax
 004F0C98    mov         al,byte ptr [ebp+8]
 004F0C9B    mov         edx,dword ptr [ebp-4]
 004F0C9E    mov         ax,word ptr [edx+eax*2+690]
 004F0CA6    cmp         ax,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
>004F0CAD    je          004F0D0C
 004F0CAF    xor         eax,eax
 004F0CB1    mov         al,byte ptr [ebp+8]
 004F0CB4    mov         edx,dword ptr [ebp-4]
 004F0CB7    cmp         word ptr [edx+eax*2+690],0F
>004F0CC0    je          004F0D0C
 004F0CC2    xor         eax,eax
 004F0CC4    mov         al,byte ptr [ebp+8]
 004F0CC7    mov         edx,dword ptr [ebp-4]
 004F0CCA    lea         eax,[edx+eax*2+690]
 004F0CD1    push        eax
 004F0CD2    mov         eax,dword ptr [ebp-4]
 004F0CD5    add         eax,6B1
 004F0CDA    push        eax
 004F0CDB    lea         edx,[ebp-150]
 004F0CE1    mov         eax,dword ptr [ebp-4]
 004F0CE4    call        004F15B4
 004F0CE9    mov         eax,dword ptr [ebp-150]
 004F0CEF    mov         dword ptr [ebp-30],eax
 004F0CF2    call        004062EC
 004F0CF7    push        eax
 004F0CF8    mov         eax,dword ptr [ebp-30]
 004F0CFB    mov         ecx,dword ptr [ebp-8]
 004F0CFE    pop         edx
 004F0CFF    call        004EFC54
 004F0D04    test        al,al
>004F0D06    je          004F130E
 004F0D0C    xor         eax,eax
 004F0D0E    mov         al,byte ptr [ebp+8]
 004F0D11    mov         edx,dword ptr [ebp-4]
 004F0D14    mov         ax,word ptr [edx+eax*2+690]
 004F0D1C    sub         ax,0F
>004F0D20    jne         004F0EBD
 004F0D26    xor         eax,eax
 004F0D28    mov         al,byte ptr [ebp+8]
 004F0D2B    mov         edx,dword ptr [ebp-4]
 004F0D2E    mov         dx,word ptr [edx+eax*2+690]
 004F0D36    lea         ecx,[ebp-44]
 004F0D39    mov         eax,dword ptr [ebp-8]
 004F0D3C    call        004EEE60
 004F0D41    call        0041CCDC
 004F0D46    test        al,al
>004F0D48    je          004F1036
 004F0D4E    xor         eax,eax
 004F0D50    push        ebp
 004F0D51    push        4F0EB6
 004F0D56    push        dword ptr fs:[eax]
 004F0D59    mov         dword ptr fs:[eax],esp
 004F0D5C    push        0
 004F0D5E    push        0
 004F0D60    push        0FF
 004F0D62    mov         eax,dword ptr [ebp-40]
 004F0D65    push        eax
 004F0D66    call        shell32.DragQueryFile
 004F0D6B    mov         dword ptr [ebp-20],eax
 004F0D6E    cmp         dword ptr [ebp-20],0
>004F0D72    jle         004F0E9F
 004F0D78    mov         eax,dword ptr [ebp-20]
 004F0D7B    dec         eax
 004F0D7C    test        eax,eax
>004F0D7E    jl          004F0E9F
 004F0D84    inc         eax
 004F0D85    mov         dword ptr [ebp-34],eax
 004F0D88    mov         dword ptr [ebp-20],0
 004F0D8F    push        105
 004F0D94    lea         eax,[ebp-149]
 004F0D9A    push        eax
 004F0D9B    mov         eax,dword ptr [ebp-20]
 004F0D9E    push        eax
 004F0D9F    mov         eax,dword ptr [ebp-40]
 004F0DA2    push        eax
 004F0DA3    call        shell32.DragQueryFile
 004F0DA8    xor         eax,eax
 004F0DAA    mov         dword ptr [ebp-0C],eax
 004F0DAD    mov         eax,dword ptr [ebp+0C]
 004F0DB0    cmp         dword ptr [eax],4
>004F0DB3    jne         004F0DF1
 004F0DB5    push        dword ptr [ebp-10]
 004F0DB8    lea         edx,[ebp-154]
 004F0DBE    lea         eax,[ebp-149]
 004F0DC4    call        0040D07C
 004F0DC9    push        dword ptr [ebp-154]
 004F0DCF    push        4F1398;#0
 004F0DD4    lea         eax,[ebp-10]
 004F0DD7    mov         edx,3
 004F0DDC    call        @LStrCatN
 004F0DE1    mov         eax,dword ptr [ebp-10]
 004F0DE4    call        @LStrLen
 004F0DE9    mov         dword ptr [ebp-18],eax
>004F0DEC    jmp         004F0E93
 004F0DF1    mov         dword ptr [ebp-0C],80004005
 004F0DF8    push        40
 004F0DFA    lea         eax,[ebp-158]
 004F0E00    lea         edx,[ebp-149]
 004F0E06    mov         ecx,105
 004F0E0B    call        @LStrFromArray
 004F0E10    mov         ecx,dword ptr [ebp-158]
 004F0E16    mov         dl,1
 004F0E18    mov         eax,[0041DD24];TFileStream
 004F0E1D    call        TFileStream.Create;TFileStream.Create
 004F0E22    mov         dword ptr [ebp-24],eax
 004F0E25    xor         eax,eax
 004F0E27    push        ebp
 004F0E28    push        4F0E8C
 004F0E2D    push        dword ptr fs:[eax]
 004F0E30    mov         dword ptr fs:[eax],esp
 004F0E33    mov         eax,dword ptr [ebp-24]
 004F0E36    mov         edx,dword ptr [eax]
 004F0E38    call        dword ptr [edx];TFileStream.sub_004235A0
 004F0E3A    mov         edx,eax
 004F0E3C    lea         eax,[ebp-10]
 004F0E3F    call        @LStrSetLength
 004F0E44    mov         eax,dword ptr [ebp-24]
 004F0E47    mov         edx,dword ptr [eax]
 004F0E49    call        dword ptr [edx];TFileStream.sub_004235A0
 004F0E4B    push        eax
 004F0E4C    lea         eax,[ebp-10]
 004F0E4F    call        00405598
 004F0E54    mov         edx,eax
 004F0E56    mov         eax,dword ptr [ebp-24]
 004F0E59    pop         ecx
 004F0E5A    call        TStream.ReadBuffer
 004F0E5F    xor         eax,eax
 004F0E61    mov         dword ptr [ebp-0C],eax
 004F0E64    mov         eax,dword ptr [ebp-10]
 004F0E67    call        @LStrLen
 004F0E6C    mov         dword ptr [ebp-18],eax
 004F0E6F    call        @TryFinallyExit
>004F0E74    jmp         004F0E9F
 004F0E76    xor         eax,eax
 004F0E78    pop         edx
 004F0E79    pop         ecx
 004F0E7A    pop         ecx
 004F0E7B    mov         dword ptr fs:[eax],edx
 004F0E7E    push        4F0E93
 004F0E83    mov         eax,dword ptr [ebp-24]
 004F0E86    call        TObject.Free
 004F0E8B    ret
>004F0E8C    jmp         @HandleFinally
>004F0E91    jmp         004F0E83
 004F0E93    inc         dword ptr [ebp-20]
 004F0E96    dec         dword ptr [ebp-34]
>004F0E99    jne         004F0D8F
 004F0E9F    xor         eax,eax
 004F0EA1    pop         edx
 004F0EA2    pop         ecx
 004F0EA3    pop         ecx
 004F0EA4    mov         dword ptr fs:[eax],edx
 004F0EA7    push        4F1036
 004F0EAC    lea         eax,[ebp-44]
 004F0EAF    push        eax
 004F0EB0    call        ole32.ReleaseStgMedium
 004F0EB5    ret
>004F0EB6    jmp         @HandleFinally
>004F0EBB    jmp         004F0EAC
 004F0EBD    xor         eax,eax
 004F0EBF    mov         al,byte ptr [ebp+8]
 004F0EC2    mov         edx,dword ptr [ebp-4]
 004F0EC5    mov         dx,word ptr [edx+eax*2+690]
 004F0ECD    lea         ecx,[ebp-44]
 004F0ED0    mov         eax,dword ptr [ebp-8]
 004F0ED3    call        004EEE60
 004F0ED8    call        0041CCDC
 004F0EDD    test        al,al
>004F0EDF    je          004F1036
 004F0EE5    xor         eax,eax
 004F0EE7    push        ebp
 004F0EE8    push        4F102F
 004F0EED    push        dword ptr fs:[eax]
 004F0EF0    mov         dword ptr fs:[eax],esp
 004F0EF3    mov         eax,dword ptr [ebp-44]
 004F0EF6    sub         eax,1
>004F0EF9    je          004F0F00
 004F0EFB    sub         eax,1F
>004F0EFE    jne         004F0F1A
 004F0F00    mov         eax,dword ptr [ebp-40]
 004F0F03    push        eax
 004F0F04    call        kernel32.GlobalLock
 004F0F09    mov         dword ptr [ebp-28],eax
 004F0F0C    mov         eax,dword ptr [ebp-40]
 004F0F0F    push        eax
 004F0F10    call        kernel32.GlobalSize
 004F0F15    mov         dword ptr [ebp-2C],eax
>004F0F18    jmp         004F0F24
 004F0F1A    xor         eax,eax
 004F0F1C    mov         dword ptr [ebp-28],eax
 004F0F1F    xor         eax,eax
 004F0F21    mov         dword ptr [ebp-2C],eax
 004F0F24    xor         eax,eax
 004F0F26    push        ebp
 004F0F27    push        4F1011
 004F0F2C    push        dword ptr fs:[eax]
 004F0F2F    mov         dword ptr fs:[eax],esp
 004F0F32    mov         eax,dword ptr [ebp-2C]
 004F0F35    push        eax
 004F0F36    mov         eax,dword ptr [ebp-4]
 004F0F39    mov         al,byte ptr [eax+61D]
 004F0F3F    push        eax
 004F0F40    lea         eax,[ebp-10]
 004F0F43    push        eax
 004F0F44    xor         eax,eax
 004F0F46    mov         al,byte ptr [ebp+8]
 004F0F49    mov         edx,dword ptr [ebp-4]
 004F0F4C    mov         cx,word ptr [edx+eax*2+690]
 004F0F54    mov         edx,dword ptr [ebp-40]
 004F0F57    mov         eax,dword ptr [ebp-28]
 004F0F5A    call        004EEEF0
 004F0F5F    cmp         dword ptr [ebp-10],0
>004F0F63    je          004F0FF4
 004F0F69    mov         eax,dword ptr [ebp-10]
 004F0F6C    call        @LStrLen
 004F0F71    mov         dword ptr [ebp-18],eax
 004F0F74    xor         eax,eax
 004F0F76    mov         al,byte ptr [ebp+8]
 004F0F79    mov         edx,dword ptr [ebp-4]
 004F0F7C    mov         ax,word ptr [edx+eax*2+690]
 004F0F84    sub         ax,1
>004F0F88    je          004F0F90
 004F0F8A    sub         ax,6
>004F0F8E    jne         004F0FEF
 004F0F90    cmp         byte ptr [ebp+8],1
>004F0F94    jne         004F0FEF
 004F0F96    mov         eax,dword ptr [ebp-4]
 004F0F99    cmp         byte ptr [eax+6B1],0
>004F0FA0    je          004F0FEF
 004F0FA2    mov         eax,dword ptr [ebp-10]
 004F0FA5    call        @LStrLen
 004F0FAA    mov         edx,eax
 004F0FAC    lea         eax,[ebp-14]
 004F0FAF    call        @LStrSetLength
 004F0FB4    mov         eax,dword ptr [ebp-4]
 004F0FB7    call        TMPHexEditorEx.GetSwapNibbles
 004F0FBC    push        eax
 004F0FBD    lea         eax,[ebp-18]
 004F0FC0    push        eax
 004F0FC1    lea         eax,[ebp-14]
 004F0FC4    call        00405598
 004F0FC9    push        eax
 004F0FCA    lea         eax,[ebp-10]
 004F0FCD    call        00405598
 004F0FD2    mov         ecx,dword ptr [ebp-18]
 004F0FD5    pop         edx
 004F0FD6    call        004DF614
 004F0FDB    lea         eax,[ebp-10]
 004F0FDE    push        eax
 004F0FDF    mov         ecx,dword ptr [ebp-18]
 004F0FE2    mov         edx,1
 004F0FE7    mov         eax,dword ptr [ebp-14]
 004F0FEA    call        @LStrCopy
 004F0FEF    xor         eax,eax
 004F0FF1    mov         dword ptr [ebp-0C],eax
 004F0FF4    xor         eax,eax
 004F0FF6    pop         edx
 004F0FF7    pop         ecx
 004F0FF8    pop         ecx
 004F0FF9    mov         dword ptr fs:[eax],edx
 004F0FFC    push        4F1018
 004F1001    cmp         dword ptr [ebp-28],0
>004F1005    je          004F1010
 004F1007    mov         eax,dword ptr [ebp-40]
 004F100A    push        eax
 004F100B    call        kernel32.GlobalUnlock
 004F1010    ret
>004F1011    jmp         @HandleFinally
>004F1016    jmp         004F1001
 004F1018    xor         eax,eax
 004F101A    pop         edx
 004F101B    pop         ecx
 004F101C    pop         ecx
 004F101D    mov         dword ptr fs:[eax],edx
 004F1020    push        4F1036
 004F1025    lea         eax,[ebp-44]
 004F1028    push        eax
 004F1029    call        ole32.ReleaseStgMedium
 004F102E    ret
>004F102F    jmp         @HandleFinally
>004F1034    jmp         004F1025
 004F1036    lea         edx,[ebp-18]
 004F1039    mov         eax,dword ptr [ebp-4]
 004F103C    call        004E8CF8
 004F1041    cmp         dword ptr [ebp-10],0
>004F1045    je          004F1307
 004F104B    cmp         dword ptr [ebp-18],0
>004F104F    jle         004F1307
 004F1055    mov         al,byte ptr [ebp+8]
 004F1058    sub         al,1
>004F105A    jb          004F1067
>004F105C    je          004F12D9
>004F1062    jmp         004F130E
 004F1067    mov         eax,dword ptr [ebp-4]
 004F106A    call        004E0D64
 004F106F    mov         dword ptr [ebp-1C],eax
 004F1072    cmp         dword ptr [ebp-1C],0
>004F1076    jge         004F1084
 004F1078    mov         dword ptr [ebp-0C],80004005
>004F107F    jmp         004F130E
 004F1084    mov         eax,dword ptr [ebp-4]
 004F1087    cmp         byte ptr [eax+694],0
>004F108E    je          004F1181
 004F1094    mov         eax,dword ptr [ebp+0C]
 004F1097    cmp         dword ptr [eax],2
>004F109A    jne         004F1181
 004F10A0    mov         eax,dword ptr [ebp-4]
 004F10A3    mov         byte ptr [eax+67C],1
 004F10AA    xor         eax,eax
 004F10AC    push        ebp
 004F10AD    push        4F117A
 004F10B2    push        dword ptr fs:[eax]
 004F10B5    mov         dword ptr fs:[eax],esp
 004F10B8    mov         eax,dword ptr [ebp-4]
 004F10BB    mov         byte ptr [eax+6A0],1
 004F10C2    mov         eax,dword ptr [ebp-4]
 004F10C5    call        004E3E34
 004F10CA    push        eax
 004F10CB    mov         eax,dword ptr [ebp-4]
 004F10CE    call        004E3DEC
 004F10D3    pop         edx
 004F10D4    call        004DF5BC
 004F10D9    cmp         eax,dword ptr [ebp-1C]
>004F10DC    jge         004F10E9
 004F10DE    mov         eax,dword ptr [ebp-4]
 004F10E1    call        004E4AD8
 004F10E6    sub         dword ptr [ebp-1C],eax
 004F10E9    xor         edx,edx
 004F10EB    mov         eax,dword ptr [ebp-4]
 004F10EE    call        004E3C40
 004F10F3    mov         eax,dword ptr [ebp-4]
 004F10F6    call        004E0588
 004F10FB    cmp         eax,dword ptr [ebp-1C]
>004F10FE    jg          004F1130
 004F1100    lea         edx,[ebp-15C]
 004F1106    mov         eax,4EEA20;^HInstance:LongWord
 004F110B    call        LoadResString
 004F1110    mov         eax,dword ptr [ebp-15C]
 004F1116    push        eax
 004F1117    push        1
 004F1119    lea         eax,[ebp-10]
 004F111C    call        00405598
 004F1121    mov         edx,eax
 004F1123    mov         ecx,dword ptr [ebp-18]
 004F1126    mov         eax,dword ptr [ebp-4]
 004F1129    call        004E475C
>004F112E    jmp         004F1162
 004F1130    mov         eax,dword ptr [ebp-1C]
 004F1133    push        eax
 004F1134    lea         edx,[ebp-160]
 004F113A    mov         eax,4EEA20;^HInstance:LongWord
 004F113F    call        LoadResString
 004F1144    mov         eax,dword ptr [ebp-160]
 004F114A    push        eax
 004F114B    push        1
 004F114D    lea         eax,[ebp-10]
 004F1150    call        00405598
 004F1155    mov         edx,eax
 004F1157    mov         ecx,dword ptr [ebp-18]
 004F115A    mov         eax,dword ptr [ebp-4]
 004F115D    call        004E4678
 004F1162    xor         eax,eax
 004F1164    pop         edx
 004F1165    pop         ecx
 004F1166    pop         ecx
 004F1167    mov         dword ptr fs:[eax],edx
 004F116A    push        4F130E
 004F116F    mov         eax,dword ptr [ebp-4]
 004F1172    mov         byte ptr [eax+67C],0
 004F1179    ret
>004F117A    jmp         @HandleFinally
>004F117F    jmp         004F116F
 004F1181    mov         eax,dword ptr [ebp-4]
 004F1184    call        004E0588
 004F1189    cmp         eax,dword ptr [ebp-1C]
>004F118C    jg          004F11D1
 004F118E    mov         eax,dword ptr [ebp-4]
 004F1191    cmp         byte ptr [eax+4B8],0
>004F1198    jne         004F130E
 004F119E    lea         edx,[ebp-164]
 004F11A4    mov         eax,4EEA20;^HInstance:LongWord
 004F11A9    call        LoadResString
 004F11AE    mov         eax,dword ptr [ebp-164]
 004F11B4    push        eax
 004F11B5    push        1
 004F11B7    lea         eax,[ebp-10]
 004F11BA    call        00405598
 004F11BF    mov         edx,eax
 004F11C1    mov         ecx,dword ptr [ebp-18]
 004F11C4    mov         eax,dword ptr [ebp-4]
 004F11C7    call        004E475C
>004F11CC    jmp         004F130E
 004F11D1    mov         eax,dword ptr [ebp-4]
 004F11D4    cmp         byte ptr [eax+4B8],0
>004F11DB    jne         004F1256
 004F11DD    mov         edx,dword ptr [ebp-1C]
 004F11E0    mov         eax,dword ptr [ebp-4]
 004F11E3    call        004E2988
 004F11E8    test        al,al
>004F11EA    je          004F121F
 004F11EC    lea         edx,[ebp-168]
 004F11F2    mov         eax,4EEA20;^HInstance:LongWord
 004F11F7    call        LoadResString
 004F11FC    mov         eax,dword ptr [ebp-168]
 004F1202    push        eax
 004F1203    push        1
 004F1205    lea         eax,[ebp-10]
 004F1208    call        00405598
 004F120D    mov         edx,eax
 004F120F    mov         ecx,dword ptr [ebp-18]
 004F1212    mov         eax,dword ptr [ebp-4]
 004F1215    call        004E4844
>004F121A    jmp         004F130E
 004F121F    mov         eax,dword ptr [ebp-1C]
 004F1222    push        eax
 004F1223    lea         edx,[ebp-16C]
 004F1229    mov         eax,4EEA20;^HInstance:LongWord
 004F122E    call        LoadResString
 004F1233    mov         eax,dword ptr [ebp-16C]
 004F1239    push        eax
 004F123A    push        1
 004F123C    lea         eax,[ebp-10]
 004F123F    call        00405598
 004F1244    mov         edx,eax
 004F1246    mov         ecx,dword ptr [ebp-18]
 004F1249    mov         eax,dword ptr [ebp-4]
 004F124C    call        004E4678
>004F1251    jmp         004F130E
 004F1256    mov         eax,dword ptr [ebp-4]
 004F1259    call        004E4AD8
 004F125E    test        eax,eax
>004F1260    je          004F1271
 004F1262    mov         edx,dword ptr [ebp-1C]
 004F1265    mov         eax,dword ptr [ebp-4]
 004F1268    call        004E2988
 004F126D    test        al,al
>004F126F    jne         004F12A9
 004F1271    mov         eax,dword ptr [ebp-18]
 004F1274    push        eax
 004F1275    mov         eax,dword ptr [ebp-18]
 004F1278    push        eax
 004F1279    lea         edx,[ebp-170]
 004F127F    mov         eax,4EEA20;^HInstance:LongWord
 004F1284    call        LoadResString
 004F1289    mov         eax,dword ptr [ebp-170]
 004F128F    push        eax
 004F1290    push        0
 004F1292    lea         eax,[ebp-10]
 004F1295    call        00405598
 004F129A    mov         edx,eax
 004F129C    mov         ecx,dword ptr [ebp-1C]
 004F129F    mov         eax,dword ptr [ebp-4]
 004F12A2    call        004E9254
>004F12A7    jmp         004F130E
 004F12A9    lea         edx,[ebp-174]
 004F12AF    mov         eax,4EEA20;^HInstance:LongWord
 004F12B4    call        LoadResString
 004F12B9    mov         eax,dword ptr [ebp-174]
 004F12BF    push        eax
 004F12C0    push        1
 004F12C2    lea         eax,[ebp-10]
 004F12C5    call        00405598
 004F12CA    mov         edx,eax
 004F12CC    mov         ecx,dword ptr [ebp-18]
 004F12CF    mov         eax,dword ptr [ebp-4]
 004F12D2    call        004E4844
>004F12D7    jmp         004F130E
 004F12D9    lea         edx,[ebp-178]
 004F12DF    mov         eax,4EEA10;^HInstance:LongWord
 004F12E4    call        LoadResString
 004F12E9    mov         eax,dword ptr [ebp-178]
 004F12EF    push        eax
 004F12F0    mov         eax,dword ptr [ebp-10]
 004F12F3    call        @LStrToPChar
 004F12F8    mov         edx,eax
 004F12FA    mov         ecx,dword ptr [ebp-18]
 004F12FD    mov         eax,dword ptr [ebp-4]
 004F1300    call        004F2948
>004F1305    jmp         004F130E
 004F1307    mov         dword ptr [ebp-0C],80004005
 004F130E    xor         eax,eax
 004F1310    pop         edx
 004F1311    pop         ecx
 004F1312    pop         ecx
 004F1313    mov         dword ptr fs:[eax],edx
 004F1316    push        4F1333
 004F131B    lea         eax,[ebp-10]
 004F131E    call        @LStrClr
 004F1323    mov         eax,dword ptr [ebp-4]
 004F1326    call        004E867C
 004F132B    ret
>004F132C    jmp         @HandleFinally
>004F1331    jmp         004F131B
 004F1333    cmp         dword ptr [ebp-0C],0
>004F1337    je          004F1340
 004F1339    mov         eax,dword ptr [ebp+0C]
 004F133C    xor         edx,edx
 004F133E    mov         dword ptr [eax],edx
 004F1340    xor         eax,eax
 004F1342    pop         edx
 004F1343    pop         ecx
 004F1344    pop         ecx
 004F1345    mov         dword ptr fs:[eax],edx
 004F1348    push        4F1383
 004F134D    lea         eax,[ebp-178]
 004F1353    mov         edx,0A
 004F1358    call        @LStrArrayClr
 004F135D    lea         eax,[ebp-150]
 004F1363    mov         edx,dword ptr ds:[4ED580];TClipFormats
 004F1369    call        @DynArrayClear
 004F136E    lea         eax,[ebp-14]
 004F1371    mov         edx,2
 004F1376    call        @LStrArrayClr
 004F137B    ret
>004F137C    jmp         @HandleFinally
>004F1381    jmp         004F134D
 004F1383    mov         eax,dword ptr [ebp-0C]
 004F1386    pop         ebx
 004F1387    mov         esp,ebp
 004F1389    pop         ebp
 004F138A    ret         0C
end;*}

//004F139C
{*function sub_004F139C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F139C    push        ebp
 004F139D    mov         ebp,esp
 004F139F    add         esp,0FFFFFFE8
 004F13A2    push        ebx
 004F13A3    xor         ebx,ebx
 004F13A5    mov         dword ptr [ebp-18],ebx
 004F13A8    mov         dword ptr [ebp-14],ecx
 004F13AB    mov         dword ptr [ebp-8],edx
 004F13AE    mov         dword ptr [ebp-4],eax
 004F13B1    xor         eax,eax
 004F13B3    push        ebp
 004F13B4    push        4F1450
 004F13B9    push        dword ptr fs:[eax]
 004F13BC    mov         dword ptr fs:[eax],esp
 004F13BF    mov         dword ptr [ebp-0C],1
 004F13C6    mov         eax,dword ptr [ebp-4]
 004F13C9    cmp         byte ptr [eax+561],0
>004F13D0    jne         004F1410
 004F13D2    lea         edx,[ebp-18]
 004F13D5    mov         eax,dword ptr [ebp-4]
 004F13D8    call        004F15B4
 004F13DD    mov         eax,dword ptr [ebp-18]
 004F13E0    mov         dword ptr [ebp-10],eax
 004F13E3    call        004062EC
 004F13E8    push        eax
 004F13E9    xor         eax,eax
 004F13EB    mov         al,byte ptr [ebp+8]
 004F13EE    mov         edx,dword ptr [ebp-4]
 004F13F1    lea         eax,[edx+eax*2+690]
 004F13F8    push        eax
 004F13F9    mov         ecx,dword ptr [ebp-10]
 004F13FC    mov         edx,dword ptr [ebp-8]
 004F13FF    mov         eax,dword ptr [ebp-4]
 004F1402    call        004F1464
 004F1407    test        al,al
>004F1409    je          004F1410
 004F140B    xor         eax,eax
 004F140D    mov         dword ptr [ebp-0C],eax
 004F1410    xor         eax,eax
 004F1412    mov         al,byte ptr [ebp+8]
 004F1415    mov         edx,dword ptr [ebp-4]
 004F1418    cmp         word ptr [edx+eax*2+690],0F
>004F1421    jne         004F1434
 004F1423    mov         eax,dword ptr [ebp+0C]
 004F1426    cmp         dword ptr [eax],2
>004F1429    jne         004F1434
 004F142B    mov         eax,dword ptr [ebp+0C]
 004F142E    mov         dword ptr [eax],4
 004F1434    xor         eax,eax
 004F1436    pop         edx
 004F1437    pop         ecx
 004F1438    pop         ecx
 004F1439    mov         dword ptr fs:[eax],edx
 004F143C    push        4F1457
 004F1441    lea         eax,[ebp-18]
 004F1444    mov         edx,dword ptr ds:[4ED580];TClipFormats
 004F144A    call        @DynArrayClear
 004F144F    ret
>004F1450    jmp         @HandleFinally
>004F1455    jmp         004F1441
 004F1457    mov         eax,dword ptr [ebp-0C]
 004F145A    pop         ebx
 004F145B    mov         esp,ebp
 004F145D    pop         ebp
 004F145E    ret         0C
end;*}

//004F1464
{*function sub_004F1464(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F1464    push        ebp
 004F1465    mov         ebp,esp
 004F1467    add         esp,0FFFFFFE4
 004F146A    mov         dword ptr [ebp-0C],ecx
 004F146D    mov         dword ptr [ebp-8],edx
 004F1470    mov         dword ptr [ebp-4],eax
 004F1473    mov         byte ptr [ebp-0D],0
 004F1477    mov         ecx,dword ptr [ebp-8]
 004F147A    mov         dl,1
 004F147C    mov         eax,[004EEAF8];TFormatEnum
 004F1481    call        TFormatEnum.Create;TFormatEnum.Create
 004F1486    mov         dword ptr [ebp-18],eax
 004F1489    xor         eax,eax
 004F148B    push        ebp
 004F148C    push        4F14FB
 004F1491    push        dword ptr fs:[eax]
 004F1494    mov         dword ptr fs:[eax],esp
 004F1497    mov         eax,dword ptr [ebp+0C]
 004F149A    inc         eax
 004F149B    test        eax,eax
>004F149D    jle         004F14E5
 004F149F    mov         eax,dword ptr [ebp+0C]
 004F14A2    test        eax,eax
>004F14A4    jl          004F14E5
 004F14A6    inc         eax
 004F14A7    mov         dword ptr [ebp-1C],eax
 004F14AA    mov         dword ptr [ebp-14],0
 004F14B1    mov         eax,dword ptr [ebp-0C]
 004F14B4    mov         edx,dword ptr [ebp-14]
 004F14B7    mov         dx,word ptr [eax+edx*2]
 004F14BB    mov         eax,dword ptr [ebp-18]
 004F14BE    call        004F301C
 004F14C3    test        al,al
>004F14C5    je          004F14DD
 004F14C7    mov         eax,dword ptr [ebp-0C]
 004F14CA    mov         edx,dword ptr [ebp-14]
 004F14CD    mov         ax,word ptr [eax+edx*2]
 004F14D1    mov         edx,dword ptr [ebp+8]
 004F14D4    mov         word ptr [edx],ax
 004F14D7    mov         byte ptr [ebp-0D],1
>004F14DB    jmp         004F14E5
 004F14DD    inc         dword ptr [ebp-14]
 004F14E0    dec         dword ptr [ebp-1C]
>004F14E3    jne         004F14B1
 004F14E5    xor         eax,eax
 004F14E7    pop         edx
 004F14E8    pop         ecx
 004F14E9    pop         ecx
 004F14EA    mov         dword ptr fs:[eax],edx
 004F14ED    push        4F1502
 004F14F2    mov         eax,dword ptr [ebp-18]
 004F14F5    call        TObject.Free
 004F14FA    ret
>004F14FB    jmp         @HandleFinally
>004F1500    jmp         004F14F2
 004F1502    mov         al,byte ptr [ebp-0D]
 004F1505    mov         esp,ebp
 004F1507    pop         ebp
 004F1508    ret         8
end;*}

//004F150C
{*function sub_004F150C(?:?; ?:?; ?:?; ?:?):?;
begin
 004F150C    push        ebp
 004F150D    mov         ebp,esp
 004F150F    add         esp,0FFFFFFF0
 004F1512    mov         dword ptr [ebp-10],ecx
 004F1515    mov         dword ptr [ebp-8],edx
 004F1518    mov         dword ptr [ebp-4],eax
 004F151B    xor         eax,eax
 004F151D    mov         dword ptr [ebp-0C],eax
 004F1520    mov         eax,dword ptr [ebp-4]
 004F1523    cmp         byte ptr [eax+694],0
>004F152A    je          004F1563
 004F152C    mov         eax,dword ptr [ebp-4]
 004F152F    cmp         byte ptr [eax+561],0
>004F1536    je          004F1543
 004F1538    mov         eax,dword ptr [ebp+8]
 004F153B    mov         dword ptr [eax],1
>004F1541    jmp         004F15AB
 004F1543    mov         eax,dword ptr [ebp-8]
 004F1546    and         eax,8
 004F1549    test        eax,eax
>004F154B    je          004F1558
 004F154D    mov         eax,dword ptr [ebp+8]
 004F1550    mov         dword ptr [eax],1
>004F1556    jmp         004F15AB
 004F1558    mov         eax,dword ptr [ebp+8]
 004F155B    mov         dword ptr [eax],2
>004F1561    jmp         004F15AB
 004F1563    mov         eax,dword ptr [ebp-8]
 004F1566    and         eax,4
 004F1569    test        eax,eax
>004F156B    je          004F1584
 004F156D    mov         eax,dword ptr [ebp-4]
 004F1570    cmp         byte ptr [eax+561],0
>004F1577    jne         004F1584
 004F1579    mov         eax,dword ptr [ebp+8]
 004F157C    mov         dword ptr [eax],2
>004F1582    jmp         004F158D
 004F1584    mov         eax,dword ptr [ebp+8]
 004F1587    mov         dword ptr [eax],1
 004F158D    mov         eax,dword ptr [ebp-4]
 004F1590    cmp         word ptr [eax+690],0F
>004F1598    jne         004F15AB
 004F159A    mov         eax,dword ptr [ebp+8]
 004F159D    cmp         dword ptr [eax],2
>004F15A0    jne         004F15AB
 004F15A2    mov         eax,dword ptr [ebp+8]
 004F15A5    mov         dword ptr [eax],4
 004F15AB    mov         eax,dword ptr [ebp-0C]
 004F15AE    mov         esp,ebp
 004F15B0    pop         ebp
 004F15B1    ret         4
end;*}

//004F15B4
{*procedure sub_004F15B4(?:?; ?:?);
begin
 004F15B4    push        ebp
 004F15B5    mov         ebp,esp
 004F15B7    add         esp,0FFFFFFF8
 004F15BA    mov         dword ptr [ebp-8],edx
 004F15BD    mov         dword ptr [ebp-4],eax
 004F15C0    mov         eax,dword ptr [ebp-4]
 004F15C3    cmp         byte ptr [eax+6B9],0
>004F15CA    je          004F15E6
 004F15CC    push        11
 004F15CE    mov         eax,dword ptr [ebp-8]
 004F15D1    mov         ecx,1
 004F15D6    mov         edx,dword ptr ds:[4ED580];TClipFormats
 004F15DC    call        @DynArraySetLength
 004F15E1    add         esp,4
>004F15E4    jmp         004F15FE
 004F15E6    push        2
 004F15E8    mov         eax,dword ptr [ebp-8]
 004F15EB    mov         ecx,1
 004F15F0    mov         edx,dword ptr ds:[4ED580];TClipFormats
 004F15F6    call        @DynArraySetLength
 004F15FB    add         esp,4
 004F15FE    mov         eax,dword ptr [ebp-8]
 004F1601    mov         eax,dword ptr [eax]
 004F1603    mov         dx,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
 004F160A    mov         word ptr [eax],dx
 004F160D    mov         eax,dword ptr [ebp-8]
 004F1610    mov         eax,dword ptr [eax]
 004F1612    mov         word ptr [eax+2],0F
 004F1618    mov         eax,dword ptr [ebp-4]
 004F161B    cmp         byte ptr [eax+6B9],0
>004F1622    je          004F16DC
 004F1628    mov         eax,dword ptr [ebp-8]
 004F162B    mov         eax,dword ptr [eax]
 004F162D    mov         word ptr [eax+4],1
 004F1633    mov         eax,dword ptr [ebp-8]
 004F1636    mov         eax,dword ptr [eax]
 004F1638    mov         dx,word ptr ds:[57242E];0x0 gvar_0057242E:LongWord
 004F163F    mov         word ptr [eax+6],dx
 004F1643    mov         eax,dword ptr [ebp-8]
 004F1646    mov         eax,dword ptr [eax]
 004F1648    mov         word ptr [eax+8],0D
 004F164E    mov         eax,dword ptr [ebp-8]
 004F1651    mov         eax,dword ptr [eax]
 004F1653    mov         word ptr [eax+0A],2
 004F1659    mov         eax,dword ptr [ebp-8]
 004F165C    mov         eax,dword ptr [eax]
 004F165E    mov         word ptr [eax+0C],9
 004F1664    mov         eax,dword ptr [ebp-8]
 004F1667    mov         eax,dword ptr [eax]
 004F1669    mov         word ptr [eax+0E],3
 004F166F    mov         eax,dword ptr [ebp-8]
 004F1672    mov         eax,dword ptr [eax]
 004F1674    mov         word ptr [eax+10],6
 004F167A    mov         eax,dword ptr [ebp-8]
 004F167D    mov         eax,dword ptr [eax]
 004F167F    mov         word ptr [eax+12],7
 004F1685    mov         eax,dword ptr [ebp-8]
 004F1688    mov         eax,dword ptr [eax]
 004F168A    mov         word ptr [eax+14],8
 004F1690    mov         eax,dword ptr [ebp-8]
 004F1693    mov         eax,dword ptr [eax]
 004F1695    mov         word ptr [eax+16],0B
 004F169B    mov         eax,dword ptr [ebp-8]
 004F169E    mov         eax,dword ptr [eax]
 004F16A0    mov         word ptr [eax+18],0C
 004F16A6    mov         eax,dword ptr [ebp-8]
 004F16A9    mov         eax,dword ptr [eax]
 004F16AB    mov         word ptr [eax+1A],0E
 004F16B1    mov         eax,dword ptr [ebp-8]
 004F16B4    mov         eax,dword ptr [eax]
 004F16B6    mov         word ptr [eax+1C],10
 004F16BC    mov         eax,dword ptr [ebp-8]
 004F16BF    mov         eax,dword ptr [eax]
 004F16C1    mov         dx,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
 004F16C8    mov         word ptr [eax+1E],dx
 004F16CC    mov         eax,dword ptr [ebp-8]
 004F16CF    mov         eax,dword ptr [eax]
 004F16D1    mov         dx,word ptr ds:[572438];0x0 gvar_00572438:LongWord
 004F16D8    mov         word ptr [eax+20],dx
 004F16DC    pop         ecx
 004F16DD    pop         ecx
 004F16DE    pop         ebp
 004F16DF    ret
end;*}

//004F16E0
{*procedure TMPHexEditorEx.WMDestroy(?:?);
begin
 004F16E0    push        ebp
 004F16E1    mov         ebp,esp
 004F16E3    add         esp,0FFFFFFF8
 004F16E6    mov         dword ptr [ebp-8],edx
 004F16E9    mov         dword ptr [ebp-4],eax
 004F16EC    mov         edx,dword ptr [ebp-8]
 004F16EF    mov         eax,dword ptr [ebp-4]
 004F16F2    call        TWinControl.WMDestroy
 004F16F7    mov         ax,[004F1724];0x11 gvar_004F1724
 004F16FD    mov         edx,dword ptr [ebp-4]
 004F1700    and         ax,word ptr [edx+1C];TMPHexEditorEx.FComponentState:TComponentState
 004F1704    mov         dx,word ptr ds:[4F1728];0x0 gvar_004F1728
 004F170B    cmp         dx,ax
>004F170E    jne         004F1720
 004F1710    xor         edx,edx
 004F1712    mov         eax,dword ptr [ebp-4]
 004F1715    mov         eax,dword ptr [eax+68C];TMPHexEditorEx.?f68C:TMPHDropTarget
 004F171B    call        004F2D9C
 004F1720    pop         ecx
 004F1721    pop         ecx
 004F1722    pop         ebp
 004F1723    ret
end;*}

//004F172C
procedure TMPHexEditorEx.SetPrintOptions(Value:TMPHPrintOptions);
begin
{*
 004F172C    push        ebp
 004F172D    mov         ebp,esp
 004F172F    add         esp,0FFFFFFF8
 004F1732    mov         dword ptr [ebp-8],edx
 004F1735    mov         dword ptr [ebp-4],eax
 004F1738    mov         edx,dword ptr [ebp-8]
 004F173B    mov         eax,dword ptr [ebp-4]
 004F173E    mov         eax,dword ptr [eax+6A4];TMPHexEditorEx.PrintOptions:TMPHPrintOptions
 004F1744    mov         ecx,dword ptr [eax]
 004F1746    call        dword ptr [ecx+8];TMPHPrintOptions.sub_004F3B2C
 004F1749    pop         ecx
 004F174A    pop         ecx
 004F174B    pop         ebp
 004F174C    ret
*}
end;

//004F1750
{*procedure sub_004F1750(?:?; ?:?);
begin
 004F1750    push        ebp
 004F1751    mov         ebp,esp
 004F1753    add         esp,0FFFFFFF8
 004F1756    mov         byte ptr [ebp-5],dl
 004F1759    mov         dword ptr [ebp-4],eax
 004F175C    mov         eax,dword ptr [ebp-4]
 004F175F    call        004F1788
 004F1764    test        al,al
>004F1766    je          004F1781
 004F1768    cmp         byte ptr [ebp-5],0
>004F176C    je          004F177A
 004F176E    call        ole32.OleFlushClipboard
 004F1773    call        004EC934
>004F1778    jmp         004F1781
 004F177A    push        0
 004F177C    call        ole32.OleSetClipboard
 004F1781    pop         ecx
 004F1782    pop         ecx
 004F1783    pop         ebp
 004F1784    ret
end;*}

//004F1788
{*function sub_004F1788(?:?):?;
begin
 004F1788    push        ebp
 004F1789    mov         ebp,esp
 004F178B    add         esp,0FFFFFFF8
 004F178E    mov         dword ptr [ebp-4],eax
 004F1791    mov         eax,dword ptr [ebp-4]
 004F1794    mov         eax,dword ptr [eax+6B4]
 004F179A    push        eax
 004F179B    call        ole32.OleIsCurrentClipboard
 004F17A0    test        eax,eax
 004F17A2    sete        byte ptr [ebp-5]
 004F17A6    mov         al,byte ptr [ebp-5]
 004F17A9    pop         ecx
 004F17AA    pop         ecx
 004F17AB    pop         ebp
 004F17AC    ret
end;*}

//004F17B0
procedure TMPHexEditorEx.SetPrintFont(Value:TFont);
begin
{*
 004F17B0    push        ebp
 004F17B1    mov         ebp,esp
 004F17B3    add         esp,0FFFFFFF8
 004F17B6    mov         dword ptr [ebp-8],edx
 004F17B9    mov         dword ptr [ebp-4],eax
 004F17BC    mov         edx,dword ptr [ebp-8]
 004F17BF    mov         eax,dword ptr [ebp-4]
 004F17C2    mov         eax,dword ptr [eax+6AC];TMPHexEditorEx.PrintFont:TFont
 004F17C8    mov         ecx,dword ptr [eax]
 004F17CA    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004F17CD    mov         eax,dword ptr [ebp-4]
 004F17D0    mov         byte ptr [eax+6B0],0;TMPHexEditorEx.UseEditorFontForPrinting:Boolean
 004F17D7    pop         ecx
 004F17D8    pop         ecx
 004F17D9    pop         ebp
 004F17DA    ret
*}
end;

//004F17DC
{*procedure TMPHexEditorEx.sub_004869A0(?:?; ?:?);
begin
 004F17DC    push        ebp
 004F17DD    mov         ebp,esp
 004F17DF    add         esp,0FFFFFFE8
 004F17E2    push        ebx
 004F17E3    push        esi
 004F17E4    push        edi
 004F17E5    mov         esi,edx
 004F17E7    lea         edi,[ebp-0C]
 004F17EA    movs        dword ptr [edi],dword ptr [esi]
 004F17EB    movs        dword ptr [edi],dword ptr [esi]
 004F17EC    mov         dword ptr [ebp-10],ecx
 004F17EF    mov         dword ptr [ebp-4],eax
 004F17F2    mov         ecx,dword ptr [ebp-10]
 004F17F5    lea         edx,[ebp-0C]
 004F17F8    mov         eax,dword ptr [ebp-4]
 004F17FB    call        TControl.sub_004869A0
 004F1800    mov         eax,dword ptr [ebp-10]
 004F1803    cmp         byte ptr [eax],0
>004F1806    jne         004F18F2
 004F180C    mov         eax,dword ptr [ebp-4]
 004F180F    cmp         dword ptr [eax+6BC],0;TMPHexEditorEx.?f6BC:TPopupMenu
>004F1816    je          004F18F2
 004F181C    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004F1820    jle         004F1842
 004F1822    xor         edx,edx
 004F1824    mov         eax,dword ptr [ebp-4]
 004F1827    call        004DD40C
 004F182C    mov         ebx,eax
 004F182E    mov         edx,1
 004F1833    mov         eax,dword ptr [ebp-4]
 004F1836    call        004DD40C
 004F183B    add         ebx,eax
 004F183D    cmp         ebx,dword ptr [ebp-0C]
>004F1840    jg          004F1870
 004F1842    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F1846    jle         004F18F2
 004F184C    xor         edx,edx
 004F184E    mov         eax,dword ptr [ebp-4]
 004F1851    call        004DD45C
 004F1856    mov         ebx,eax
 004F1858    mov         edx,1
 004F185D    mov         eax,dword ptr [ebp-4]
 004F1860    call        004DD45C
 004F1865    add         ebx,eax
 004F1867    cmp         ebx,dword ptr [ebp-8]
>004F186A    jle         004F18F2
 004F1870    mov         eax,dword ptr [ebp-4]
 004F1873    mov         eax,dword ptr [eax+6BC];TMPHexEditorEx.?f6BC:TPopupMenu
 004F1879    cmp         byte ptr [eax+61],0
>004F187D    je          004F18F2
 004F187F    mov         eax,dword ptr [ebp-10]
 004F1882    mov         byte ptr [eax],1
 004F1885    xor         edx,edx
 004F1887    mov         eax,dword ptr [ebp-4]
 004F188A    call        00483158
 004F188F    mov         eax,dword ptr [ebp-4]
 004F1892    mov         eax,dword ptr [eax+6BC];TMPHexEditorEx.?f6BC:TPopupMenu
 004F1898    mov         edx,dword ptr [ebp-4]
 004F189B    mov         dword ptr [eax+64],edx
 004F189E    lea         ecx,[ebp-18]
 004F18A1    lea         edx,[ebp-0C]
 004F18A4    mov         eax,dword ptr [ebp-4]
 004F18A7    call        TControl.ClientToScreen
 004F18AC    mov         eax,dword ptr [ebp-18]
 004F18AF    mov         dword ptr [ebp-0C],eax
 004F18B2    mov         eax,dword ptr [ebp-14]
 004F18B5    mov         dword ptr [ebp-8],eax
 004F18B8    lea         eax,[ebp-0C]
 004F18BB    call        0041E76C
 004F18C0    test        al,al
>004F18C2    je          004F18DE
 004F18C4    lea         ecx,[ebp-18]
 004F18C7    xor         edx,edx
 004F18C9    xor         eax,eax
 004F18CB    call        Point
 004F18D0    lea         edx,[ebp-18]
 004F18D3    lea         ecx,[ebp-0C]
 004F18D6    mov         eax,dword ptr [ebp-4]
 004F18D9    call        TControl.ClientToScreen
 004F18DE    mov         ecx,dword ptr [ebp-8]
 004F18E1    mov         edx,dword ptr [ebp-0C]
 004F18E4    mov         eax,dword ptr [ebp-4]
 004F18E7    mov         eax,dword ptr [eax+6BC];TMPHexEditorEx.?f6BC:TPopupMenu
 004F18ED    mov         ebx,dword ptr [eax]
 004F18EF    call        dword ptr [ebx+40]
 004F18F2    pop         edi
 004F18F3    pop         esi
 004F18F4    pop         ebx
 004F18F5    mov         esp,ebp
 004F18F7    pop         ebp
 004F18F8    ret
end;*}

//004F18FC
procedure TMPHexEditorEx.SetOffsetPopupMenu(Value:TPopupMenu);
begin
{*
 004F18FC    push        ebp
 004F18FD    mov         ebp,esp
 004F18FF    add         esp,0FFFFFFF8
 004F1902    mov         dword ptr [ebp-8],edx
 004F1905    mov         dword ptr [ebp-4],eax
 004F1908    mov         eax,dword ptr [ebp-8]
 004F190B    mov         edx,dword ptr [ebp-4]
 004F190E    mov         dword ptr [edx+6BC],eax;TMPHexEditorEx.?f6BC:TPopupMenu
 004F1914    cmp         dword ptr [ebp-8],0
>004F1918    je          004F1930
 004F191A    mov         edx,dword ptr [ebp-4]
 004F191D    mov         eax,dword ptr [ebp-8]
 004F1920    call        0049D2A0
 004F1925    mov         edx,dword ptr [ebp-4]
 004F1928    mov         eax,dword ptr [ebp-8]
 004F192B    call        0042A2CC
 004F1930    pop         ecx
 004F1931    pop         ecx
 004F1932    pop         ebp
 004F1933    ret
*}
end;

//004F1934
{*function TMPHexEditorEx.GetOffsetPopupMenu:?;
begin
 004F1934    push        ebp
 004F1935    mov         ebp,esp
 004F1937    add         esp,0FFFFFFF8
 004F193A    mov         dword ptr [ebp-4],eax
 004F193D    mov         eax,dword ptr [ebp-4]
 004F1940    mov         eax,dword ptr [eax+6BC];TMPHexEditorEx.?f6BC:TPopupMenu
 004F1946    mov         dword ptr [ebp-8],eax
 004F1949    mov         eax,dword ptr [ebp-8]
 004F194C    pop         ecx
 004F194D    pop         ecx
 004F194E    pop         ebp
 004F194F    ret
end;*}

//004F1950
{*procedure sub_004F1950(?:?; ?:?);
begin
 004F1950    push        ebp
 004F1951    mov         ebp,esp
 004F1953    add         esp,0FFFFFFF4
 004F1956    mov         byte ptr [ebp-9],cl
 004F1959    mov         dword ptr [ebp-8],edx
 004F195C    mov         dword ptr [ebp-4],eax
 004F195F    mov         cl,byte ptr [ebp-9]
 004F1962    mov         edx,dword ptr [ebp-8]
 004F1965    mov         eax,dword ptr [ebp-4]
 004F1968    call        004827F4
 004F196D    mov         eax,dword ptr [ebp-8]
 004F1970    mov         edx,dword ptr [ebp-4]
 004F1973    cmp         eax,dword ptr [edx+6BC];TMPHexEditorEx.?f6BC:TPopupMenu
>004F1979    jne         004F198B
 004F197B    cmp         byte ptr [ebp-9],1
>004F197F    jne         004F198B
 004F1981    xor         edx,edx
 004F1983    mov         eax,dword ptr [ebp-4]
 004F1986    call        TMPHexEditorEx.SetOffsetPopupMenu
 004F198B    mov         esp,ebp
 004F198D    pop         ebp
 004F198E    ret
end;*}

//004F1990
{*function sub_004F1990(?:?; ?:?; ?:?):?;
begin
 004F1990    push        ebp
 004F1991    mov         ebp,esp
 004F1993    add         esp,0FFFFFFF0
 004F1996    mov         dword ptr [ebp-0C],ecx
 004F1999    mov         byte ptr [ebp-5],dl
 004F199C    mov         dword ptr [ebp-4],eax
 004F199F    mov         eax,dword ptr [ebp+8]
 004F19A2    push        eax
 004F19A3    mov         ecx,dword ptr [ebp-0C]
 004F19A6    mov         dl,byte ptr [ebp-5]
 004F19A9    mov         eax,dword ptr [ebp-4]
 004F19AC    call        004E9560
 004F19B1    mov         byte ptr [ebp-0D],al
 004F19B4    cmp         byte ptr [ebp-0D],0
>004F19B8    je          004F19D3
 004F19BA    mov         eax,dword ptr [ebp-4]
 004F19BD    mov         eax,dword ptr [eax+618];TMPHexEditorEx.?f618:TMPHUndoStorage
 004F19C3    cmp         dword ptr [eax+18],0;TMPHUndoStorage.?f18:dword
>004F19C7    jle         004F19D3
 004F19C9    mov         eax,dword ptr [ebp-4]
 004F19CC    mov         byte ptr [eax+6D3],1;TMPHexEditorEx.?f6D3:byte
 004F19D3    mov         al,byte ptr [ebp-0D]
 004F19D6    mov         esp,ebp
 004F19D8    pop         ebp
 004F19D9    ret         4
end;*}

//004F19DC
{*procedure TMPHexEditorEx.sub_0042AC94(?:?);
begin
 004F19DC    push        ebp
 004F19DD    mov         ebp,esp
 004F19DF    add         esp,0FFFFFFF0
 004F19E2    xor         ecx,ecx
 004F19E4    mov         dword ptr [ebp-10],ecx
 004F19E7    mov         dword ptr [ebp-8],edx
 004F19EA    mov         dword ptr [ebp-4],eax
 004F19ED    xor         eax,eax
 004F19EF    push        ebp
 004F19F0    push        4F1AF1
 004F19F5    push        dword ptr fs:[eax]
 004F19F8    mov         dword ptr fs:[eax],esp
 004F19FB    mov         eax,dword ptr [ebp-8]
 004F19FE    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1A04    call        @IsClass
 004F1A09    test        al,al
>004F1A0B    je          004F1A1D
 004F1A0D    mov         eax,dword ptr [ebp-4]
 004F1A10    call        004F0214
 004F1A15    mov         byte ptr [ebp-9],al
>004F1A18    jmp         004F1ADB
 004F1A1D    mov         eax,dword ptr [ebp-8]
 004F1A20    mov         edx,dword ptr ds:[47B670];TEditCopy
 004F1A26    call        @IsClass
 004F1A2B    test        al,al
>004F1A2D    je          004F1A3F
 004F1A2F    mov         eax,dword ptr [ebp-4]
 004F1A32    call        004F00DC
 004F1A37    mov         byte ptr [ebp-9],al
>004F1A3A    jmp         004F1ADB
 004F1A3F    mov         eax,dword ptr [ebp-8]
 004F1A42    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1A48    call        @IsClass
 004F1A4D    test        al,al
>004F1A4F    je          004F1A5E
 004F1A51    mov         eax,dword ptr [ebp-4]
 004F1A54    call        004F02C8
 004F1A59    mov         byte ptr [ebp-9],al
>004F1A5C    jmp         004F1ADB
 004F1A5E    mov         eax,dword ptr [ebp-8]
 004F1A61    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1A67    call        @IsClass
 004F1A6C    test        al,al
>004F1A6E    je          004F1A8E
 004F1A70    lea         edx,[ebp-10]
 004F1A73    mov         eax,4EEA18;^HInstance:LongWord
 004F1A78    call        LoadResString
 004F1A7D    mov         edx,dword ptr [ebp-10]
 004F1A80    mov         eax,dword ptr [ebp-4]
 004F1A83    call        004E3C40
 004F1A88    mov         byte ptr [ebp-9],1
>004F1A8C    jmp         004F1ADB
 004F1A8E    mov         eax,dword ptr [ebp-8]
 004F1A91    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1A97    call        @IsClass
 004F1A9C    test        al,al
>004F1A9E    je          004F1AAD
 004F1AA0    mov         eax,dword ptr [ebp-4]
 004F1AA3    call        004E837C
 004F1AA8    mov         byte ptr [ebp-9],al
>004F1AAB    jmp         004F1ADB
 004F1AAD    mov         eax,dword ptr [ebp-8]
 004F1AB0    mov         edx,dword ptr ds:[47B744];TEditSelectAll
 004F1AB6    call        @IsClass
 004F1ABB    test        al,al
>004F1ABD    je          004F1ACD
 004F1ABF    mov         eax,dword ptr [ebp-4]
 004F1AC2    call        004E853C
 004F1AC7    mov         byte ptr [ebp-9],1
>004F1ACB    jmp         004F1ADB
 004F1ACD    mov         edx,dword ptr [ebp-8]
 004F1AD0    mov         eax,dword ptr [ebp-4]
 004F1AD3    call        TComponent.sub_0042AC94
 004F1AD8    mov         byte ptr [ebp-9],al
 004F1ADB    xor         eax,eax
 004F1ADD    pop         edx
 004F1ADE    pop         ecx
 004F1ADF    pop         ecx
 004F1AE0    mov         dword ptr fs:[eax],edx
 004F1AE3    push        4F1AF8
 004F1AE8    lea         eax,[ebp-10]
 004F1AEB    call        @LStrClr
 004F1AF0    ret
>004F1AF1    jmp         @HandleFinally
>004F1AF6    jmp         004F1AE8
 004F1AF8    mov         al,byte ptr [ebp-9]
 004F1AFB    mov         esp,ebp
 004F1AFD    pop         ebp
 004F1AFE    ret
end;*}

//004F1B00
{*procedure TMPHexEditorEx.sub_0042ACC8(?:?);
begin
 004F1B00    push        ebp
 004F1B01    mov         ebp,esp
 004F1B03    add         esp,0FFFFFFF4
 004F1B06    push        esi
 004F1B07    mov         dword ptr [ebp-8],edx
 004F1B0A    mov         dword ptr [ebp-4],eax
 004F1B0D    mov         eax,dword ptr [ebp-4]
 004F1B10    mov         si,0FFB5
 004F1B14    call        @CallDynaInst;TWinControl.sub_0048C078
 004F1B19    mov         byte ptr [ebp-9],al
 004F1B1C    cmp         byte ptr [ebp-9],0
>004F1B20    je          004F1C40
 004F1B26    mov         eax,dword ptr [ebp-8]
 004F1B29    mov         edx,dword ptr ds:[47B598];TEditAction
 004F1B2F    call        @IsClass
 004F1B34    test        al,al
>004F1B36    je          004F1C32
 004F1B3C    mov         eax,dword ptr [ebp-8]
 004F1B3F    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1B45    call        @IsClass
 004F1B4A    test        al,al
>004F1B4C    je          004F1B65
 004F1B4E    mov         eax,dword ptr [ebp-4]
 004F1B51    call        004EFFE0
 004F1B56    mov         edx,eax
 004F1B58    mov         eax,dword ptr [ebp-8]
 004F1B5B    call        TVirtualListAction.SetEnabled
>004F1B60    jmp         004F1C40
 004F1B65    mov         eax,dword ptr [ebp-8]
 004F1B68    mov         edx,dword ptr ds:[47B670];TEditCopy
 004F1B6E    call        @IsClass
 004F1B73    test        al,al
>004F1B75    je          004F1B8E
 004F1B77    mov         eax,dword ptr [ebp-4]
 004F1B7A    call        004EFFAC
 004F1B7F    mov         edx,eax
 004F1B81    mov         eax,dword ptr [ebp-8]
 004F1B84    call        TVirtualListAction.SetEnabled
>004F1B89    jmp         004F1C40
 004F1B8E    mov         eax,dword ptr [ebp-8]
 004F1B91    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1B97    call        @IsClass
 004F1B9C    test        al,al
>004F1B9E    je          004F1BB7
 004F1BA0    mov         eax,dword ptr [ebp-4]
 004F1BA3    call        004F0020
 004F1BA8    mov         edx,eax
 004F1BAA    mov         eax,dword ptr [ebp-8]
 004F1BAD    call        TVirtualListAction.SetEnabled
>004F1BB2    jmp         004F1C40
 004F1BB7    mov         eax,dword ptr [ebp-8]
 004F1BBA    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1BC0    call        @IsClass
 004F1BC5    test        al,al
>004F1BC7    je          004F1BDD
 004F1BC9    mov         eax,dword ptr [ebp-4]
 004F1BCC    call        004EFFE0
 004F1BD1    mov         edx,eax
 004F1BD3    mov         eax,dword ptr [ebp-8]
 004F1BD6    call        TVirtualListAction.SetEnabled
>004F1BDB    jmp         004F1C40
 004F1BDD    mov         eax,dword ptr [ebp-8]
 004F1BE0    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004F1BE6    call        @IsClass
 004F1BEB    test        al,al
>004F1BED    je          004F1C03
 004F1BEF    mov         eax,dword ptr [ebp-4]
 004F1BF2    call        004E3D7C
 004F1BF7    mov         edx,eax
 004F1BF9    mov         eax,dword ptr [ebp-8]
 004F1BFC    call        TVirtualListAction.SetEnabled
>004F1C01    jmp         004F1C40
 004F1C03    mov         eax,dword ptr [ebp-8]
 004F1C06    mov         edx,dword ptr ds:[47B744];TEditSelectAll
 004F1C0C    call        @IsClass
 004F1C11    test        al,al
>004F1C13    je          004F1C2C
 004F1C15    mov         eax,dword ptr [ebp-4]
 004F1C18    call        004E0588
 004F1C1D    test        eax,eax
 004F1C1F    setg        dl
 004F1C22    mov         eax,dword ptr [ebp-8]
 004F1C25    call        TVirtualListAction.SetEnabled
>004F1C2A    jmp         004F1C40
 004F1C2C    mov         byte ptr [ebp-9],0
>004F1C30    jmp         004F1C40
 004F1C32    mov         edx,dword ptr [ebp-8]
 004F1C35    mov         eax,dword ptr [ebp-4]
 004F1C38    call        TComponent.sub_0042ACC8
 004F1C3D    mov         byte ptr [ebp-9],al
 004F1C40    mov         al,byte ptr [ebp-9]
 004F1C43    pop         esi
 004F1C44    mov         esp,ebp
 004F1C46    pop         ebp
 004F1C47    ret
end;*}

//004F2374
{*function sub_004F2374(?:?):?;
begin
 004F2374    push        ebp
 004F2375    mov         ebp,esp
 004F2377    add         esp,0FFFFFFF0
 004F237A    push        ebx
 004F237B    mov         dword ptr [ebp-8],edx
 004F237E    mov         dword ptr [ebp-4],eax
 004F2381    mov         eax,dword ptr [ebp-8]
 004F2384    call        @LStrAddRef
 004F2389    xor         eax,eax
 004F238B    push        ebp
 004F238C    push        4F2407
 004F2391    push        dword ptr fs:[eax]
 004F2394    mov         dword ptr fs:[eax],esp
 004F2397    mov         byte ptr [ebp-9],0
 004F239B    xor         eax,eax
 004F239D    mov         dword ptr [ebp-10],eax
 004F23A0    mov         eax,dword ptr [ebp-10]
 004F23A3    mov         edx,dword ptr [eax*4+56D0F8];^'ShowRuler'
 004F23AA    mov         eax,dword ptr [ebp-8]
 004F23AD    call        0040BF44
 004F23B2    test        eax,eax
>004F23B4    jne         004F23BC
 004F23B6    mov         byte ptr [ebp-9],1
>004F23BA    jmp         004F23C5
 004F23BC    inc         dword ptr [ebp-10]
 004F23BF    cmp         dword ptr [ebp-10],45
>004F23C3    jne         004F23A0
 004F23C5    cmp         byte ptr [ebp-9],0
>004F23C9    je          004F23F1
 004F23CB    mov         eax,dword ptr [ebp-4]
 004F23CE    cmp         word ptr [eax+6CA],0;TMPHexEditorEx.?f6CA:word
>004F23D6    je          004F23F1
 004F23D8    lea         eax,[ebp-9]
 004F23DB    push        eax
 004F23DC    mov         ebx,dword ptr [ebp-4]
 004F23DF    mov         ecx,dword ptr [ebp-8]
 004F23E2    mov         edx,dword ptr [ebp-4]
 004F23E5    mov         eax,dword ptr [ebx+6CC];TMPHexEditorEx.?f6CC:dword
 004F23EB    call        dword ptr [ebx+6C8];TMPHexEditorEx.OnQueryPublicProperty
 004F23F1    xor         eax,eax
 004F23F3    pop         edx
 004F23F4    pop         ecx
 004F23F5    pop         ecx
 004F23F6    mov         dword ptr fs:[eax],edx
 004F23F9    push        4F240E
 004F23FE    lea         eax,[ebp-8]
 004F2401    call        @LStrClr
 004F2406    ret
>004F2407    jmp         @HandleFinally
>004F240C    jmp         004F23FE
 004F240E    mov         al,byte ptr [ebp-9]
 004F2411    pop         ebx
 004F2412    mov         esp,ebp
 004F2414    pop         ebp
 004F2415    ret
end;*}

//004F2418
{*procedure sub_004F2418(?:TMPHexEditorEx; ?:AnsiString; ?:?);
begin
 004F2418    push        ebp
 004F2419    mov         ebp,esp
 004F241B    mov         ecx,9
 004F2420    push        0
 004F2422    push        0
 004F2424    dec         ecx
>004F2425    jne         004F2420
 004F2427    push        ecx
 004F2428    mov         dword ptr [ebp-8],edx
 004F242B    mov         dword ptr [ebp-4],eax
 004F242E    xor         eax,eax
 004F2430    push        ebp
 004F2431    push        4F25D6
 004F2436    push        dword ptr fs:[eax]
 004F2439    mov         dword ptr fs:[eax],esp
 004F243C    cmp         dword ptr [ebp-4],0
>004F2440    je          004F25AB
 004F2446    lea         edx,[ebp-0C]
 004F2449    mov         eax,dword ptr [ebp-4]
 004F244C    call        0041BB2C
 004F2451    mov         dword ptr [ebp-10],eax
 004F2454    cmp         dword ptr [ebp-10],0
>004F2458    jle         004F25AB
 004F245E    xor         eax,eax
 004F2460    push        ebp
 004F2461    push        4F25A4
 004F2466    push        dword ptr fs:[eax]
 004F2469    mov         dword ptr fs:[eax],esp
 004F246C    mov         eax,dword ptr [ebp-10]
 004F246F    dec         eax
 004F2470    test        eax,eax
>004F2472    jl          004F258E
 004F2478    inc         eax
 004F2479    mov         dword ptr [ebp-14],eax
 004F247C    mov         dword ptr [ebp-10],0
 004F2483    mov         eax,dword ptr [ebp-0C]
 004F2486    mov         edx,dword ptr [ebp-10]
 004F2489    mov         eax,dword ptr [eax+edx*4]
 004F248C    mov         dword ptr [ebp-18],eax
 004F248F    mov         eax,dword ptr [ebp-18]
 004F2492    mov         eax,dword ptr [eax]
 004F2494    mov         eax,dword ptr [eax]
 004F2496    cmp         byte ptr [eax],7
>004F2499    jne         004F24F0
 004F249B    mov         eax,dword ptr [ebp+8]
 004F249E    push        eax
 004F249F    lea         eax,[ebp-1C]
 004F24A2    mov         edx,dword ptr [ebp-18]
 004F24A5    add         edx,1A
 004F24A8    call        @LStrFromString
 004F24AD    mov         edx,dword ptr [ebp-1C]
 004F24B0    xor         ecx,ecx
 004F24B2    mov         eax,dword ptr [ebp-4]
 004F24B5    call        0041B020
 004F24BA    push        eax
 004F24BB    push        dword ptr [ebp-8]
 004F24BE    lea         eax,[ebp-24]
 004F24C1    mov         edx,dword ptr [ebp-18]
 004F24C4    add         edx,1A
 004F24C7    call        @LStrFromString
 004F24CC    push        dword ptr [ebp-24]
 004F24CF    push        4F25EC;'.'
 004F24D4    lea         eax,[ebp-20]
 004F24D7    mov         edx,3
 004F24DC    call        @LStrCatN
 004F24E1    mov         edx,dword ptr [ebp-20]
 004F24E4    pop         eax
 004F24E5    call        004F2418
 004F24EA    pop         ecx
>004F24EB    jmp         004F2582
 004F24F0    lea         eax,[ebp-2C]
 004F24F3    mov         edx,dword ptr [ebp-18]
 004F24F6    add         edx,1A
 004F24F9    call        @LStrFromString
 004F24FE    mov         ecx,dword ptr [ebp-2C]
 004F2501    lea         eax,[ebp-28]
 004F2504    mov         edx,dword ptr [ebp-8]
 004F2507    call        @LStrCat3
 004F250C    mov         edx,dword ptr [ebp-28]
 004F250F    mov         eax,dword ptr [ebp+8]
 004F2512    mov         eax,dword ptr [eax-4]
 004F2515    mov         ecx,dword ptr [eax]
 004F2517    call        dword ptr [ecx+118]
 004F251D    test        al,al
>004F251F    je          004F2582
 004F2521    push        dword ptr [ebp-8]
 004F2524    lea         eax,[ebp-34]
 004F2527    mov         edx,dword ptr [ebp-18]
 004F252A    add         edx,1A
 004F252D    call        @LStrFromString
 004F2532    push        dword ptr [ebp-34]
 004F2535    push        4F25F8;'='
 004F253A    lea         eax,[ebp-48]
 004F253D    push        eax
 004F253E    lea         eax,[ebp-4C]
 004F2541    mov         edx,dword ptr [ebp-18]
 004F2544    add         edx,1A
 004F2547    call        @LStrFromString
 004F254C    mov         edx,dword ptr [ebp-4C]
 004F254F    xor         ecx,ecx
 004F2551    mov         eax,dword ptr [ebp-4]
 004F2554    call        0041B054
 004F2559    lea         edx,[ebp-48]
 004F255C    lea         eax,[ebp-38]
 004F255F    call        00417960
 004F2564    push        dword ptr [ebp-38]
 004F2567    lea         eax,[ebp-30]
 004F256A    mov         edx,4
 004F256F    call        @LStrCatN
 004F2574    mov         edx,dword ptr [ebp-30]
 004F2577    mov         eax,dword ptr [ebp+8]
 004F257A    mov         eax,dword ptr [eax-8]
 004F257D    mov         ecx,dword ptr [eax]
 004F257F    call        dword ptr [ecx+38]
 004F2582    inc         dword ptr [ebp-10]
 004F2585    dec         dword ptr [ebp-14]
>004F2588    jne         004F2483
 004F258E    xor         eax,eax
 004F2590    pop         edx
 004F2591    pop         ecx
 004F2592    pop         ecx
 004F2593    mov         dword ptr fs:[eax],edx
 004F2596    push        4F25AB
 004F259B    mov         eax,dword ptr [ebp-0C]
 004F259E    call        @FreeMem
 004F25A3    ret
>004F25A4    jmp         @HandleFinally
>004F25A9    jmp         004F259B
 004F25AB    xor         eax,eax
 004F25AD    pop         edx
 004F25AE    pop         ecx
 004F25AF    pop         ecx
 004F25B0    mov         dword ptr fs:[eax],edx
 004F25B3    push        4F25DD
 004F25B8    lea         eax,[ebp-4C]
 004F25BB    call        @LStrClr
 004F25C0    lea         eax,[ebp-48]
 004F25C3    call        @VarClr
 004F25C8    lea         eax,[ebp-38]
 004F25CB    mov         edx,8
 004F25D0    call        @LStrArrayClr
 004F25D5    ret
>004F25D6    jmp         @HandleFinally
>004F25DB    jmp         004F25B8
 004F25DD    mov         esp,ebp
 004F25DF    pop         ebp
 004F25E0    ret
end;*}

//004F25FC
{*procedure sub_004F25FC(?:?);
begin
 004F25FC    push        ebp
 004F25FD    mov         ebp,esp
 004F25FF    add         esp,0FFFFFFF4
 004F2602    mov         dword ptr [ebp-0C],edx
 004F2605    mov         dword ptr [ebp-4],eax
 004F2608    mov         dl,1
 004F260A    mov         eax,[0041DB24];TStringList
 004F260F    call        TObject.Create;TStringList.Create
 004F2614    mov         dword ptr [ebp-8],eax
 004F2617    xor         eax,eax
 004F2619    push        ebp
 004F261A    push        4F2652
 004F261F    push        dword ptr fs:[eax]
 004F2622    mov         dword ptr fs:[eax],esp
 004F2625    push        ebp
 004F2626    xor         edx,edx
 004F2628    mov         eax,dword ptr [ebp-4]
 004F262B    call        004F2418
 004F2630    pop         ecx
 004F2631    mov         edx,dword ptr [ebp-0C]
 004F2634    mov         eax,dword ptr [ebp-8]
 004F2637    mov         ecx,dword ptr [eax]
 004F2639    call        dword ptr [ecx+1C];TStringList.sub_00422114
 004F263C    xor         eax,eax
 004F263E    pop         edx
 004F263F    pop         ecx
 004F2640    pop         ecx
 004F2641    mov         dword ptr fs:[eax],edx
 004F2644    push        4F2659
 004F2649    mov         eax,dword ptr [ebp-8]
 004F264C    call        TObject.Free
 004F2651    ret
>004F2652    jmp         @HandleFinally
>004F2657    jmp         004F2649
 004F2659    mov         esp,ebp
 004F265B    pop         ebp
 004F265C    ret
end;*}

//004F2660
{*procedure sub_004F2660(?:?);
begin
 004F2660    push        ebp
 004F2661    mov         ebp,esp
 004F2663    mov         ecx,0C
 004F2668    push        0
 004F266A    push        0
 004F266C    dec         ecx
>004F266D    jne         004F2668
 004F266F    push        ecx
 004F2670    mov         dword ptr [ebp-8],edx
 004F2673    mov         dword ptr [ebp-4],eax
 004F2676    xor         eax,eax
 004F2678    push        ebp
 004F2679    push        4F287F
 004F267E    push        dword ptr fs:[eax]
 004F2681    mov         dword ptr fs:[eax],esp
 004F2684    mov         eax,dword ptr [ebp-4]
 004F2687    call        004F0368
 004F268C    xor         eax,eax
 004F268E    push        ebp
 004F268F    push        4F2842
 004F2694    push        dword ptr fs:[eax]
 004F2697    mov         dword ptr fs:[eax],esp
 004F269A    mov         dl,1
 004F269C    mov         eax,[0041DB24];TStringList
 004F26A1    call        TObject.Create;TStringList.Create
 004F26A6    mov         dword ptr [ebp-0C],eax
 004F26A9    xor         eax,eax
 004F26AB    push        ebp
 004F26AC    push        4F2825
 004F26B1    push        dword ptr fs:[eax]
 004F26B4    mov         dword ptr fs:[eax],esp
 004F26B7    mov         edx,dword ptr [ebp-8]
 004F26BA    mov         eax,dword ptr [ebp-0C]
 004F26BD    mov         ecx,dword ptr [eax]
 004F26BF    call        dword ptr [ecx+2C];TStringList.sub_0042291C
 004F26C2    mov         eax,dword ptr [ebp-0C]
 004F26C5    mov         edx,dword ptr [eax]
 004F26C7    call        dword ptr [edx+14];TStringList.sub_00423008
 004F26CA    test        eax,eax
>004F26CC    jle         004F280F
 004F26D2    mov         eax,dword ptr [ebp-0C]
 004F26D5    mov         edx,dword ptr [eax]
 004F26D7    call        dword ptr [edx+14];TStringList.sub_00423008
 004F26DA    dec         eax
 004F26DB    test        eax,eax
>004F26DD    jl          004F280F
 004F26E3    inc         eax
 004F26E4    mov         dword ptr [ebp-30],eax
 004F26E7    mov         dword ptr [ebp-10],0
 004F26EE    lea         ecx,[ebp-18]
 004F26F1    mov         edx,dword ptr [ebp-10]
 004F26F4    mov         eax,dword ptr [ebp-0C]
 004F26F7    call        0042203C
 004F26FC    mov         edx,dword ptr [ebp-18]
 004F26FF    mov         eax,dword ptr [ebp-4]
 004F2702    mov         ecx,dword ptr [eax]
 004F2704    call        dword ptr [ecx+118];TMPHexEditorEx.sub_004F2374
 004F270A    test        al,al
>004F270C    je          004F2803
 004F2712    lea         ecx,[ebp-1C]
 004F2715    mov         edx,dword ptr [ebp-10]
 004F2718    mov         eax,dword ptr [ebp-0C]
 004F271B    call        00422B1C
 004F2720    mov         eax,dword ptr [ebp-4]
 004F2723    mov         dword ptr [ebp-20],eax
 004F2726    mov         edx,dword ptr [ebp-18]
 004F2729    mov         eax,4F2894;'.'
 004F272E    call        @LStrPos
 004F2733    mov         dword ptr [ebp-14],eax
 004F2736    cmp         dword ptr [ebp-14],0
>004F273A    jle         004F2771
 004F273C    lea         eax,[ebp-34]
 004F273F    push        eax
 004F2740    mov         ecx,dword ptr [ebp-14]
 004F2743    dec         ecx
 004F2744    mov         edx,1
 004F2749    mov         eax,dword ptr [ebp-18]
 004F274C    call        @LStrCopy
 004F2751    mov         edx,dword ptr [ebp-34]
 004F2754    xor         ecx,ecx
 004F2756    mov         eax,dword ptr [ebp-20]
 004F2759    call        0041B020
 004F275E    mov         dword ptr [ebp-20],eax
 004F2761    lea         eax,[ebp-18]
 004F2764    mov         ecx,dword ptr [ebp-14]
 004F2767    mov         edx,1
 004F276C    call        @LStrDelete
 004F2771    cmp         dword ptr [ebp-14],0
>004F2775    jne         004F2726
 004F2777    cmp         dword ptr [ebp-20],0
>004F277B    je          004F2803
 004F2781    lea         edx,[ebp-28]
 004F2784    mov         eax,dword ptr [ebp-1C]
 004F2787    call        0040C53C
 004F278C    test        al,al
>004F278E    je          004F27EA
 004F2790    lea         edx,[ebp-2C]
 004F2793    mov         eax,dword ptr [ebp-1C]
 004F2796    call        0040C4D8
 004F279B    test        al,al
>004F279D    je          004F27CA
 004F279F    mov         eax,dword ptr [ebp-2C]
 004F27A2    cdq
 004F27A3    cmp         edx,dword ptr [ebp-24]
>004F27A6    jne         004F27CA
 004F27A8    cmp         eax,dword ptr [ebp-28]
>004F27AB    jne         004F27CA
 004F27AD    lea         eax,[ebp-44]
 004F27B0    mov         edx,dword ptr [ebp-2C]
 004F27B3    mov         cl,0FC
 004F27B5    call        @VarFromInt
 004F27BA    lea         ecx,[ebp-44]
 004F27BD    mov         edx,dword ptr [ebp-18]
 004F27C0    mov         eax,dword ptr [ebp-20]
 004F27C3    call        0041B358
>004F27C8    jmp         004F2803
 004F27CA    mov         eax,dword ptr [ebp-28]
 004F27CD    mov         edx,dword ptr [ebp-24]
 004F27D0    push        edx
 004F27D1    push        eax
 004F27D2    lea         eax,[ebp-54]
 004F27D5    call        @VarFromInt64
 004F27DA    lea         ecx,[ebp-54]
 004F27DD    mov         edx,dword ptr [ebp-18]
 004F27E0    mov         eax,dword ptr [ebp-20]
 004F27E3    call        0041B358
>004F27E8    jmp         004F2803
 004F27EA    lea         eax,[ebp-64]
 004F27ED    mov         edx,dword ptr [ebp-1C]
 004F27F0    call        @VarFromLStr
 004F27F5    lea         ecx,[ebp-64]
 004F27F8    mov         edx,dword ptr [ebp-18]
 004F27FB    mov         eax,dword ptr [ebp-20]
 004F27FE    call        0041B358
 004F2803    inc         dword ptr [ebp-10]
 004F2806    dec         dword ptr [ebp-30]
>004F2809    jne         004F26EE
 004F280F    xor         eax,eax
 004F2811    pop         edx
 004F2812    pop         ecx
 004F2813    pop         ecx
 004F2814    mov         dword ptr fs:[eax],edx
 004F2817    push        4F282C
 004F281C    mov         eax,dword ptr [ebp-0C]
 004F281F    call        TObject.Free
 004F2824    ret
>004F2825    jmp         @HandleFinally
>004F282A    jmp         004F281C
 004F282C    xor         eax,eax
 004F282E    pop         edx
 004F282F    pop         ecx
 004F2830    pop         ecx
 004F2831    mov         dword ptr fs:[eax],edx
 004F2834    push        4F2849
 004F2839    mov         eax,dword ptr [ebp-4]
 004F283C    call        004F0390
 004F2841    ret
>004F2842    jmp         @HandleFinally
>004F2847    jmp         004F2839
 004F2849    xor         eax,eax
 004F284B    pop         edx
 004F284C    pop         ecx
 004F284D    pop         ecx
 004F284E    mov         dword ptr fs:[eax],edx
 004F2851    push        4F2886
 004F2856    lea         eax,[ebp-64]
 004F2859    mov         edx,dword ptr ds:[4010DC];Variant
 004F285F    mov         ecx,3
 004F2864    call        @FinalizeArray
 004F2869    lea         eax,[ebp-34]
 004F286C    call        @LStrClr
 004F2871    lea         eax,[ebp-1C]
 004F2874    mov         edx,2
 004F2879    call        @LStrArrayClr
 004F287E    ret
>004F287F    jmp         @HandleFinally
>004F2884    jmp         004F2856
 004F2886    mov         esp,ebp
 004F2888    pop         ebp
 004F2889    ret
end;*}

//004F2898
procedure sub_004F2898;
begin
{*
 004F2898    push        ebp
 004F2899    mov         ebp,esp
 004F289B    push        ecx
 004F289C    mov         dword ptr [ebp-4],eax
 004F289F    mov         eax,dword ptr [ebp-4]
 004F28A2    cmp         dword ptr [eax+6C4],1;TMPHexEditorEx.?f6C4:dword
>004F28A9    jge         004F28B3
 004F28AB    mov         eax,dword ptr [ebp-4]
 004F28AE    call        004E7DA8
 004F28B3    pop         ecx
 004F28B4    pop         ebp
 004F28B5    ret
*}
end;

//004F28B8
procedure TMPHexEditorEx.sub_0048555C;
begin
{*
 004F28B8    push        ebp
 004F28B9    mov         ebp,esp
 004F28BB    add         esp,0FFFFFFE0
 004F28BE    mov         dword ptr [ebp-4],eax
 004F28C1    lea         eax,[ebp-0C]
 004F28C4    push        eax
 004F28C5    call        user32.GetCursorPos
 004F28CA    lea         ecx,[ebp-20]
 004F28CD    lea         edx,[ebp-0C]
 004F28D0    mov         eax,dword ptr [ebp-4]
 004F28D3    call        TControl.ScreenToClient
 004F28D8    mov         eax,dword ptr [ebp-20]
 004F28DB    mov         dword ptr [ebp-0C],eax
 004F28DE    mov         eax,dword ptr [ebp-1C]
 004F28E1    mov         dword ptr [ebp-8],eax
 004F28E4    lea         eax,[ebp-18]
 004F28E7    push        eax
 004F28E8    lea         ecx,[ebp-8]
 004F28EB    lea         edx,[ebp-0C]
 004F28EE    mov         eax,dword ptr [ebp-4]
 004F28F1    call        004E5BF0
 004F28F6    mov         ecx,dword ptr [ebp-14]
 004F28F9    mov         edx,dword ptr [ebp-18]
 004F28FC    mov         eax,dword ptr [ebp-4]
 004F28FF    call        004E1288
 004F2904    mov         dword ptr [ebp-10],eax
 004F2907    cmp         dword ptr [ebp-10],0FFFFFFFF
>004F290B    jle         004F293C
 004F290D    mov         eax,dword ptr [ebp-4]
 004F2910    call        004E0588
 004F2915    cmp         eax,dword ptr [ebp-10]
>004F2918    jle         004F293C
 004F291A    mov         ecx,dword ptr [ebp-10]
 004F291D    mov         edx,dword ptr [ebp-10]
 004F2920    mov         eax,dword ptr [ebp-4]
 004F2923    call        004E29CC
 004F2928    mov         eax,dword ptr [ebp-4]
 004F292B    mov         byte ptr [eax+6D0],1;TMPHexEditorEx.?f6D0:byte
 004F2932    mov         eax,dword ptr [ebp-4]
 004F2935    mov         byte ptr [eax+615],0;TMPHexEditorEx.?f615:byte
 004F293C    mov         eax,dword ptr [ebp-4]
 004F293F    call        TControl.sub_0048555C
 004F2944    mov         esp,ebp
 004F2946    pop         ebp
 004F2947    ret
*}
end;

//004F2948
{*procedure sub_004F2948(?:?; ?:PChar; ?:Integer; ?:?);
begin
 004F2948    push        ebp
 004F2949    mov         ebp,esp
 004F294B    add         esp,0FFFFFFE8
 004F294E    mov         dword ptr [ebp-0C],ecx
 004F2951    mov         dword ptr [ebp-8],edx
 004F2954    mov         dword ptr [ebp-4],eax
 004F2957    xor         eax,eax
 004F2959    mov         dword ptr [ebp-18],eax
 004F295C    mov         eax,dword ptr [ebp-4]
 004F295F    call        004E4AD8
 004F2964    test        eax,eax
>004F2966    jne         004F29DF
 004F2968    mov         eax,dword ptr [ebp-4]
 004F296B    mov         ecx,dword ptr [eax+22C]
 004F2971    mov         eax,dword ptr [ebp-4]
 004F2974    mov         edx,dword ptr [eax+228]
 004F297A    mov         eax,dword ptr [ebp-4]
 004F297D    call        004E1288
 004F2982    mov         dword ptr [ebp-18],eax
 004F2985    mov         eax,dword ptr [ebp-18]
 004F2988    mov         edx,dword ptr [ebp-4]
 004F298B    mov         ecx,dword ptr [edx+5F4]
 004F2991    cdq
 004F2992    idiv        eax,ecx
 004F2994    test        edx,edx
>004F2996    je          004F29DF
>004F2998    jmp         004F299D
 004F299A    dec         dword ptr [ebp-18]
 004F299D    mov         eax,dword ptr [ebp-18]
 004F29A0    mov         edx,dword ptr [ebp-4]
 004F29A3    mov         ecx,dword ptr [edx+5F4]
 004F29A9    cdq
 004F29AA    idiv        eax,ecx
 004F29AC    test        edx,edx
>004F29AE    jne         004F299A
 004F29B0    lea         eax,[ebp-14]
 004F29B3    push        eax
 004F29B4    mov         eax,dword ptr [ebp-4]
 004F29B7    call        004E409C
 004F29BC    mov         ecx,eax
 004F29BE    mov         edx,dword ptr [ebp-18]
 004F29C1    mov         eax,dword ptr [ebp-4]
 004F29C4    call        004E1344
 004F29C9    mov         edx,dword ptr [ebp-14]
 004F29CC    mov         eax,dword ptr [ebp-4]
 004F29CF    call        004DD59C
 004F29D4    mov         edx,dword ptr [ebp-10]
 004F29D7    mov         eax,dword ptr [ebp-4]
 004F29DA    call        004DDA3C
 004F29DF    mov         eax,dword ptr [ebp-4]
 004F29E2    call        004E4AD8
 004F29E7    test        eax,eax
>004F29E9    jne         004F2A21
 004F29EB    mov         eax,dword ptr [ebp-4]
 004F29EE    cmp         byte ptr [eax+4B8],0
>004F29F5    je          004F2A21
 004F29F7    mov         edx,dword ptr [ebp-18]
 004F29FA    mov         eax,dword ptr [ebp-4]
 004F29FD    call        004E3E9C
 004F2A02    mov         eax,dword ptr [ebp-4]
 004F2A05    call        004E0588
 004F2A0A    dec         eax
 004F2A0B    mov         edx,dword ptr [ebp-18]
 004F2A0E    add         edx,dword ptr [ebp-0C]
 004F2A11    dec         edx
 004F2A12    call        004DF5BC
 004F2A17    mov         edx,eax
 004F2A19    mov         eax,dword ptr [ebp-4]
 004F2A1C    call        004E3F48
 004F2A21    mov         eax,dword ptr [ebp+8]
 004F2A24    push        eax
 004F2A25    push        1
 004F2A27    mov         ecx,dword ptr [ebp-0C]
 004F2A2A    mov         edx,dword ptr [ebp-8]
 004F2A2D    mov         eax,dword ptr [ebp-4]
 004F2A30    call        004E4844
 004F2A35    mov         esp,ebp
 004F2A37    pop         ebp
 004F2A38    ret         4
end;*}

//004F2A3C
procedure sub_004F2A3C;
begin
{*
 004F2A3C    push        ebp
 004F2A3D    mov         ebp,esp
 004F2A3F    push        ecx
 004F2A40    mov         dword ptr [ebp-4],eax
 004F2A43    mov         eax,dword ptr [ebp-4]
 004F2A46    cmp         byte ptr [eax+6D1],0;TMPHexEditorEx.?f6D1:byte
>004F2A4D    jne         004F2A57
 004F2A4F    mov         eax,dword ptr [ebp-4]
 004F2A52    call        004E8FDC
 004F2A57    pop         ecx
 004F2A58    pop         ebp
 004F2A59    ret
*}
end;

//004F2A5C
{*function sub_004F2A5C:?;
begin
 004F2A5C    push        ebp
 004F2A5D    mov         ebp,esp
 004F2A5F    add         esp,0FFFFFFF8
 004F2A62    mov         dword ptr [ebp-4],eax
 004F2A65    mov         eax,dword ptr [ebp-4]
 004F2A68    call        004E8358
 004F2A6D    mov         dword ptr [ebp-8],eax
 004F2A70    cmp         dword ptr [ebp-8],1
>004F2A74    jge         004F2ACB
 004F2A76    xor         eax,eax
 004F2A78    push        ebp
 004F2A79    push        4F2AC4
 004F2A7E    push        dword ptr fs:[eax]
 004F2A81    mov         dword ptr fs:[eax],esp
 004F2A84    mov         eax,dword ptr [ebp-4]
 004F2A87    cmp         byte ptr [eax+6D2],0;TMPHexEditorEx.?f6D2:byte
>004F2A8E    je          004F2AB6
 004F2A90    mov         eax,dword ptr [ebp-4]
 004F2A93    cmp         byte ptr [eax+6D3],0;TMPHexEditorEx.?f6D3:byte
>004F2A9A    je          004F2AA8
 004F2A9C    mov         eax,dword ptr [ebp-4]
 004F2A9F    mov         byte ptr [eax+6D3],0;TMPHexEditorEx.?f6D3:byte
>004F2AA6    jmp         004F2AB6
 004F2AA8    mov         eax,dword ptr [ebp-4]
 004F2AAB    mov         eax,dword ptr [eax+618];TMPHexEditorEx.?f618:TMPHUndoStorage
 004F2AB1    call        004EB320
 004F2AB6    xor         eax,eax
 004F2AB8    pop         edx
 004F2AB9    pop         ecx
 004F2ABA    pop         ecx
 004F2ABB    mov         dword ptr fs:[eax],edx
 004F2ABE    push        4F2ACB
 004F2AC3    ret
>004F2AC4    jmp         @HandleFinally
>004F2AC9    jmp         004F2AC3
 004F2ACB    mov         eax,dword ptr [ebp-8]
 004F2ACE    pop         ecx
 004F2ACF    pop         ecx
 004F2AD0    pop         ebp
 004F2AD1    ret
end;*}

//004F2AD4
{*procedure sub_004F2AD4(?:?; ?:?; ?:?);
begin
 004F2AD4    push        ebp
 004F2AD5    mov         ebp,esp
 004F2AD7    add         esp,0FFFFFFF4
 004F2ADA    mov         dword ptr [ebp-0C],ecx
 004F2ADD    mov         dword ptr [ebp-8],edx
 004F2AE0    mov         dword ptr [ebp-4],eax
 004F2AE3    mov         eax,dword ptr [ebp+8]
 004F2AE6    push        eax
 004F2AE7    mov         edx,dword ptr [ebp-8]
 004F2AEA    mov         ecx,dword ptr [ebp-0C]
 004F2AED    mov         eax,dword ptr [ebp-4]
 004F2AF0    call        004E8FA0
 004F2AF5    mov         eax,dword ptr [ebp-4]
 004F2AF8    mov         byte ptr [eax+67D],1;TMPHexEditorEx.?f67D:byte
 004F2AFF    mov         eax,dword ptr [ebp-4]
 004F2B02    mov         eax,dword ptr [eax+618];TMPHexEditorEx.?f618:TMPHUndoStorage
 004F2B08    cmp         dword ptr [eax+18],0;TMPHUndoStorage.?f18:dword
>004F2B0C    jle         004F2B18
 004F2B0E    mov         eax,dword ptr [ebp-4]
 004F2B11    mov         byte ptr [eax+6D3],1;TMPHexEditorEx.?f6D3:byte
 004F2B18    mov         esp,ebp
 004F2B1A    pop         ebp
 004F2B1B    ret         4
end;*}

//004F2B20
constructor TMPHDropTarget.Create;
begin
{*
 004F2B20    push        ebp
 004F2B21    mov         ebp,esp
 004F2B23    add         esp,0FFFFFFF4
 004F2B26    test        dl,dl
>004F2B28    je          004F2B32
 004F2B2A    add         esp,0FFFFFFF0
 004F2B2D    call        @ClassCreate
 004F2B32    mov         dword ptr [ebp-0C],ecx
 004F2B35    mov         byte ptr [ebp-5],dl
 004F2B38    mov         dword ptr [ebp-4],eax
 004F2B3B    xor         edx,edx
 004F2B3D    mov         eax,dword ptr [ebp-4]
 004F2B40    call        TObject.Create
 004F2B45    mov         eax,dword ptr [ebp-4]
 004F2B48    mov         edx,dword ptr [ebp-0C]
 004F2B4B    mov         dword ptr [eax+0C],edx;TMPHDropTarget.?fC:dword
 004F2B4E    mov         eax,dword ptr [ebp-4]
 004F2B51    xor         edx,edx
 004F2B53    mov         dword ptr [eax+10],edx;TMPHDropTarget.?f10:HWND
 004F2B56    mov         eax,dword ptr [ebp-4]
 004F2B59    mov         byte ptr [eax+14],0;TMPHDropTarget.?f14:byte
 004F2B5D    mov         eax,dword ptr [ebp-4]
 004F2B60    push        eax
 004F2B61    call        TInterfacedObject._AddRef
 004F2B66    mov         eax,dword ptr [ebp-4]
 004F2B69    cmp         byte ptr [ebp-5],0
>004F2B6D    je          004F2B7E
 004F2B6F    call        @AfterConstruction
 004F2B74    pop         dword ptr fs:[0]
 004F2B7B    add         esp,0C
 004F2B7E    mov         eax,dword ptr [ebp-4]
 004F2B81    mov         esp,ebp
 004F2B83    pop         ebp
 004F2B84    ret
*}
end;

//004F2BAC
{*function sub_004F2BAC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F2BAC    push        ebp
 004F2BAD    mov         ebp,esp
 004F2BAF    add         esp,0FFFFFFF4
 004F2BB2    lea         eax,[ebp+14]
 004F2BB5    push        eax
 004F2BB6    mov         eax,dword ptr [ebp+1C]
 004F2BB9    push        eax
 004F2BBA    push        0
 004F2BBC    mov         ecx,dword ptr [ebp+10]
 004F2BBF    mov         edx,dword ptr [ebp+0C]
 004F2BC2    mov         eax,dword ptr [ebp+8]
 004F2BC5    mov         eax,dword ptr [eax+0C]
 004F2BC8    call        004F139C
 004F2BCD    mov         dword ptr [ebp-4],eax
 004F2BD0    cmp         dword ptr [ebp-4],0
>004F2BD4    jne         004F2C24
 004F2BD6    mov         eax,dword ptr [ebp+1C]
 004F2BD9    push        eax
 004F2BDA    lea         ecx,[ebp+14]
 004F2BDD    mov         edx,dword ptr [ebp+10]
 004F2BE0    mov         eax,dword ptr [ebp+8]
 004F2BE3    mov         eax,dword ptr [eax+0C]
 004F2BE6    call        004F150C
 004F2BEB    mov         dword ptr [ebp-4],eax
 004F2BEE    cmp         dword ptr [ebp-4],0
>004F2BF2    jne         004F2C2B
 004F2BF4    lea         ecx,[ebp-0C]
 004F2BF7    lea         edx,[ebp+14]
 004F2BFA    mov         eax,dword ptr [ebp+8]
 004F2BFD    mov         eax,dword ptr [eax+0C]
 004F2C00    call        TControl.ScreenToClient
 004F2C05    mov         eax,dword ptr [ebp-0C]
 004F2C08    mov         dword ptr [ebp+14],eax
 004F2C0B    mov         eax,dword ptr [ebp-8]
 004F2C0E    mov         dword ptr [ebp+18],eax
 004F2C11    mov         ecx,dword ptr [ebp+18]
 004F2C14    mov         edx,dword ptr [ebp+14]
 004F2C17    mov         eax,dword ptr [ebp+8]
 004F2C1A    mov         eax,dword ptr [eax+0C]
 004F2C1D    call        004E5760
>004F2C22    jmp         004F2C2B
 004F2C24    mov         eax,dword ptr [ebp+1C]
 004F2C27    xor         edx,edx
 004F2C29    mov         dword ptr [eax],edx
 004F2C2B    mov         eax,dword ptr [ebp-4]
 004F2C2E    mov         esp,ebp
 004F2C30    pop         ebp
 004F2C31    ret         18
end;*}

//004F2C34
{*function sub_004F2C34(?:?):?;
begin
 004F2C34    push        ebp
 004F2C35    mov         ebp,esp
 004F2C37    push        ecx
 004F2C38    xor         eax,eax
 004F2C3A    mov         dword ptr [ebp-4],eax
 004F2C3D    mov         eax,dword ptr [ebp+8]
 004F2C40    mov         eax,dword ptr [eax+0C]
 004F2C43    call        004E5954
 004F2C48    mov         eax,dword ptr [ebp-4]
 004F2C4B    pop         ecx
 004F2C4C    pop         ebp
 004F2C4D    ret         4
end;*}

//004F2C50
{*function sub_004F2C50(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F2C50    push        ebp
 004F2C51    mov         ebp,esp
 004F2C53    add         esp,0FFFFFFF4
 004F2C56    mov         eax,dword ptr [ebp+18]
 004F2C59    push        eax
 004F2C5A    lea         ecx,[ebp+10]
 004F2C5D    mov         edx,dword ptr [ebp+0C]
 004F2C60    mov         eax,dword ptr [ebp+8]
 004F2C63    mov         eax,dword ptr [eax+0C]
 004F2C66    call        004F150C
 004F2C6B    mov         dword ptr [ebp-4],eax
 004F2C6E    cmp         dword ptr [ebp-4],0
>004F2C72    jne         004F2CA4
 004F2C74    lea         ecx,[ebp-0C]
 004F2C77    lea         edx,[ebp+10]
 004F2C7A    mov         eax,dword ptr [ebp+8]
 004F2C7D    mov         eax,dword ptr [eax+0C]
 004F2C80    call        TControl.ScreenToClient
 004F2C85    mov         eax,dword ptr [ebp-0C]
 004F2C88    mov         dword ptr [ebp+10],eax
 004F2C8B    mov         eax,dword ptr [ebp-8]
 004F2C8E    mov         dword ptr [ebp+14],eax
 004F2C91    mov         ecx,dword ptr [ebp+14]
 004F2C94    mov         edx,dword ptr [ebp+10]
 004F2C97    mov         eax,dword ptr [ebp+8]
 004F2C9A    mov         eax,dword ptr [eax+0C]
 004F2C9D    call        004E5760
>004F2CA2    jmp         004F2CB6
 004F2CA4    mov         eax,dword ptr [ebp+18]
 004F2CA7    xor         edx,edx
 004F2CA9    mov         dword ptr [eax],edx
 004F2CAB    mov         eax,dword ptr [ebp+8]
 004F2CAE    mov         eax,dword ptr [eax+0C]
 004F2CB1    call        004E5954
 004F2CB6    mov         eax,dword ptr [ebp-4]
 004F2CB9    mov         esp,ebp
 004F2CBB    pop         ebp
 004F2CBC    ret         14
end;*}

//004F2CC0
{*function sub_004F2CC0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F2CC0    push        ebp
 004F2CC1    mov         ebp,esp
 004F2CC3    push        ecx
 004F2CC4    push        ebx
 004F2CC5    push        esi
 004F2CC6    push        edi
 004F2CC7    xor         eax,eax
 004F2CC9    push        ebp
 004F2CCA    push        4F2D88
 004F2CCF    push        dword ptr fs:[eax]
 004F2CD2    mov         dword ptr fs:[eax],esp
 004F2CD5    lea         eax,[ebp+14]
 004F2CD8    push        eax
 004F2CD9    mov         eax,dword ptr [ebp+1C]
 004F2CDC    push        eax
 004F2CDD    push        0
 004F2CDF    mov         eax,dword ptr [ebp+8]
 004F2CE2    mov         eax,dword ptr [eax+0C]
 004F2CE5    mov         ecx,dword ptr [ebp+10]
 004F2CE8    mov         edx,dword ptr [ebp+0C]
 004F2CEB    call        004F139C
 004F2CF0    mov         dword ptr [ebp-4],eax
 004F2CF3    cmp         dword ptr [ebp-4],0
>004F2CF7    jne         004F2D6F
 004F2CF9    mov         eax,dword ptr [ebp+1C]
 004F2CFC    push        eax
 004F2CFD    lea         ecx,[ebp+14]
 004F2D00    mov         eax,dword ptr [ebp+8]
 004F2D03    mov         eax,dword ptr [eax+0C]
 004F2D06    mov         edx,dword ptr [ebp+10]
 004F2D09    call        004F150C
 004F2D0E    mov         dword ptr [ebp-4],eax
 004F2D11    cmp         dword ptr [ebp-4],0
>004F2D15    jne         004F2D6F
 004F2D17    xor         eax,eax
 004F2D19    push        ebp
 004F2D1A    push        4F2D4D
 004F2D1F    push        dword ptr fs:[eax]
 004F2D22    mov         dword ptr fs:[eax],esp
 004F2D25    lea         eax,[ebp+14]
 004F2D28    push        eax
 004F2D29    mov         eax,dword ptr [ebp+1C]
 004F2D2C    push        eax
 004F2D2D    push        0
 004F2D2F    mov         eax,dword ptr [ebp+8]
 004F2D32    mov         eax,dword ptr [eax+0C]
 004F2D35    mov         ecx,dword ptr [ebp+10]
 004F2D38    mov         edx,dword ptr [ebp+0C]
 004F2D3B    call        004F0C40
 004F2D40    mov         dword ptr [ebp-4],eax
 004F2D43    xor         eax,eax
 004F2D45    pop         edx
 004F2D46    pop         ecx
 004F2D47    pop         ecx
 004F2D48    mov         dword ptr fs:[eax],edx
>004F2D4B    jmp         004F2D6F
>004F2D4D    jmp         @HandleAnyException
 004F2D52    mov         dword ptr [ebp-4],80004005
 004F2D59    call        00402F04
 004F2D5E    push        eax
 004F2D5F    call        ExceptObject
 004F2D64    pop         edx
 004F2D65    call        004104C4
 004F2D6A    call        @DoneExcept
 004F2D6F    xor         eax,eax
 004F2D71    pop         edx
 004F2D72    pop         ecx
 004F2D73    pop         ecx
 004F2D74    mov         dword ptr fs:[eax],edx
 004F2D77    push        4F2D8F
 004F2D7C    mov         eax,dword ptr [ebp+8]
 004F2D7F    mov         eax,dword ptr [eax+0C]
 004F2D82    call        004E5954
 004F2D87    ret
>004F2D88    jmp         @HandleFinally
>004F2D8D    jmp         004F2D7C
 004F2D8F    mov         eax,dword ptr [ebp-4]
 004F2D92    pop         edi
 004F2D93    pop         esi
 004F2D94    pop         ebx
 004F2D95    pop         ecx
 004F2D96    pop         ebp
 004F2D97    ret         18
end;*}

//004F2D9C
{*procedure sub_004F2D9C(?:TMPHDropTarget; ?:?);
begin
 004F2D9C    push        ebp
 004F2D9D    mov         ebp,esp
 004F2D9F    add         esp,0FFFFFFF8
 004F2DA2    mov         byte ptr [ebp-5],dl
 004F2DA5    mov         dword ptr [ebp-4],eax
 004F2DA8    mov         eax,dword ptr [ebp-4]
 004F2DAB    mov         al,byte ptr [eax+14];TMPHDropTarget.?f14:byte
 004F2DAE    cmp         al,byte ptr [ebp-5]
>004F2DB1    je          004F2E3D
 004F2DB7    mov         al,byte ptr [ebp-5]
 004F2DBA    mov         edx,dword ptr [ebp-4]
 004F2DBD    mov         byte ptr [edx+14],al;TMPHDropTarget.?f14:byte
 004F2DC0    cmp         byte ptr [ebp-5],0
>004F2DC4    jne         004F2DF2
 004F2DC6    mov         eax,dword ptr [ebp-4]
 004F2DC9    mov         eax,dword ptr [eax+10];TMPHDropTarget.?f10:HWND
 004F2DCC    push        eax
 004F2DCD    call        ole32.RevokeDragDrop
 004F2DD2    call        004EC934
 004F2DD7    push        0FF
 004F2DD9    push        0
 004F2DDB    mov         eax,dword ptr [ebp-4]
 004F2DDE    test        eax,eax
>004F2DE0    je          004F2DE5
 004F2DE2    sub         eax,0FFFFFFF8
 004F2DE5    push        eax
 004F2DE6    call        ole32.CoLockObjectExternal
 004F2DEB    call        004EC934
>004F2DF0    jmp         004F2E3D
 004F2DF2    mov         eax,dword ptr [ebp-4]
 004F2DF5    mov         eax,dword ptr [eax+0C];TMPHDropTarget.?fC:dword
 004F2DF8    call        TWinControl.GetHandle
 004F2DFD    mov         edx,dword ptr [ebp-4]
 004F2E00    mov         dword ptr [edx+10],eax;TMPHDropTarget.?f10:HWND
 004F2E03    mov         eax,dword ptr [ebp-4]
 004F2E06    test        eax,eax
>004F2E08    je          004F2E0D
 004F2E0A    sub         eax,0FFFFFFE8
 004F2E0D    push        eax
 004F2E0E    mov         eax,dword ptr [ebp-4]
 004F2E11    mov         eax,dword ptr [eax+0C];TMPHDropTarget.?fC:dword
 004F2E14    call        TWinControl.GetHandle
 004F2E19    push        eax
 004F2E1A    call        ole32.RegisterDragDrop
 004F2E1F    call        004EC934
 004F2E24    push        0
 004F2E26    push        0FF
 004F2E28    mov         eax,dword ptr [ebp-4]
 004F2E2B    test        eax,eax
>004F2E2D    je          004F2E32
 004F2E2F    sub         eax,0FFFFFFF8
 004F2E32    push        eax
 004F2E33    call        ole32.CoLockObjectExternal
 004F2E38    call        004EC934
 004F2E3D    pop         ecx
 004F2E3E    pop         ecx
 004F2E3F    pop         ebp
 004F2E40    ret
end;*}

//004F2E44
constructor TFormatEnum.Create;
begin
{*
 004F2E44    push        ebp
 004F2E45    mov         ebp,esp
 004F2E47    add         esp,0FFFFFFDC
 004F2E4A    push        ebx
 004F2E4B    push        esi
 004F2E4C    push        edi
 004F2E4D    xor         ebx,ebx
 004F2E4F    mov         dword ptr [ebp-10],ebx
 004F2E52    test        dl,dl
>004F2E54    je          004F2E5E
 004F2E56    add         esp,0FFFFFFF0
 004F2E59    call        @ClassCreate
 004F2E5E    mov         dword ptr [ebp-0C],ecx
 004F2E61    mov         byte ptr [ebp-5],dl
 004F2E64    mov         dword ptr [ebp-4],eax
 004F2E67    xor         eax,eax
 004F2E69    push        ebp
 004F2E6A    push        4F2F16
 004F2E6F    push        dword ptr fs:[eax]
 004F2E72    mov         dword ptr fs:[eax],esp
 004F2E75    mov         eax,dword ptr [ebp-4]
 004F2E78    add         eax,4;TFormatEnum..............:.6
 004F2E7B    mov         edx,dword ptr ds:[4EEAD0];_DynArr_83_6
 004F2E81    call        @DynArrayClear
 004F2E86    lea         eax,[ebp-10]
 004F2E89    call        @IntfClear
 004F2E8E    push        eax
 004F2E8F    push        1
 004F2E91    mov         eax,dword ptr [ebp-0C]
 004F2E94    push        eax
 004F2E95    mov         eax,dword ptr [eax]
 004F2E97    call        dword ptr [eax+20]
 004F2E9A    call        0041CCDC
 004F2E9F    test        al,al
>004F2EA1    je          004F2F00
>004F2EA3    jmp         004F2EEB
 004F2EA5    mov         eax,dword ptr [ebp-4]
 004F2EA8    mov         eax,dword ptr [eax+4];TFormatEnum...............:.6
 004F2EAB    call        @DynArrayLength
 004F2EB0    inc         eax
 004F2EB1    push        eax
 004F2EB2    mov         eax,dword ptr [ebp-4]
 004F2EB5    add         eax,4;TFormatEnum................:.6
 004F2EB8    mov         ecx,1
 004F2EBD    mov         edx,dword ptr ds:[4EEAD0];_DynArr_83_6
 004F2EC3    call        @DynArraySetLength
 004F2EC8    add         esp,4
 004F2ECB    mov         eax,dword ptr [ebp-4]
 004F2ECE    mov         eax,dword ptr [eax+4];TFormatEnum.................:.6
 004F2ED1    call        @DynArrayLength
 004F2ED6    lea         eax,[eax+eax*4]
 004F2ED9    mov         edx,dword ptr [ebp-4]
 004F2EDC    mov         edx,dword ptr [edx+4];TFormatEnum..................:.6
 004F2EDF    lea         edi,[edx+eax*4-14]
 004F2EE3    lea         esi,[ebp-24]
 004F2EE6    movs        dword ptr [edi],dword ptr [esi]
 004F2EE7    movs        dword ptr [edi],dword ptr [esi]
 004F2EE8    movs        dword ptr [edi],dword ptr [esi]
 004F2EE9    movs        dword ptr [edi],dword ptr [esi]
 004F2EEA    movs        dword ptr [edi],dword ptr [esi]
 004F2EEB    push        0
 004F2EED    lea         eax,[ebp-24]
 004F2EF0    push        eax
 004F2EF1    push        1
 004F2EF3    mov         eax,dword ptr [ebp-10]
 004F2EF6    push        eax
 004F2EF7    mov         eax,dword ptr [eax]
 004F2EF9    call        dword ptr [eax+0C]
 004F2EFC    test        eax,eax
>004F2EFE    je          004F2EA5
 004F2F00    xor         eax,eax
 004F2F02    pop         edx
 004F2F03    pop         ecx
 004F2F04    pop         ecx
 004F2F05    mov         dword ptr fs:[eax],edx
 004F2F08    push        4F2F1D
 004F2F0D    lea         eax,[ebp-10]
 004F2F10    call        @IntfClear
 004F2F15    ret
>004F2F16    jmp         @HandleFinally
>004F2F1B    jmp         004F2F0D
 004F2F1D    mov         eax,dword ptr [ebp-4]
 004F2F20    cmp         byte ptr [ebp-5],0
>004F2F24    je          004F2F35
 004F2F26    call        @AfterConstruction
 004F2F2B    pop         dword ptr fs:[0]
 004F2F32    add         esp,0C
 004F2F35    mov         eax,dword ptr [ebp-4]
 004F2F38    pop         edi
 004F2F39    pop         esi
 004F2F3A    pop         ebx
 004F2F3B    mov         esp,ebp
 004F2F3D    pop         ebp
 004F2F3E    ret
*}
end;

//004F2F84
{*procedure sub_004F2F84(?:TFormatEnum; ?:?; ?:?);
begin
 004F2F84    push        ebp
 004F2F85    mov         ebp,esp
 004F2F87    add         esp,0FFFFFFE8
 004F2F8A    push        esi
 004F2F8B    push        edi
 004F2F8C    mov         dword ptr [ebp-0C],ecx
 004F2F8F    mov         word ptr [ebp-6],dx
 004F2F93    mov         dword ptr [ebp-4],eax
 004F2F96    mov         byte ptr [ebp-0D],0
 004F2F9A    mov         eax,dword ptr [ebp-4]
 004F2F9D    mov         eax,dword ptr [eax+4];TFormatEnum...................:.6
 004F2FA0    call        @DynArrayLength
 004F2FA5    test        eax,eax
>004F2FA7    jle         004F3001
 004F2FA9    mov         eax,dword ptr [ebp-4]
 004F2FAC    mov         eax,dword ptr [eax+4];TFormatEnum....................:.6
 004F2FAF    call        @DynArrayLength
 004F2FB4    dec         eax
 004F2FB5    test        eax,eax
>004F2FB7    jl          004F3001
 004F2FB9    inc         eax
 004F2FBA    mov         dword ptr [ebp-18],eax
 004F2FBD    mov         dword ptr [ebp-14],0
 004F2FC4    mov         eax,dword ptr [ebp-14]
 004F2FC7    lea         eax,[eax+eax*4]
 004F2FCA    mov         edx,dword ptr [ebp-4]
 004F2FCD    mov         edx,dword ptr [edx+4];TFormatEnum.....................:.6
 004F2FD0    mov         ax,word ptr [edx+eax*4]
 004F2FD4    cmp         ax,word ptr [ebp-6]
>004F2FD8    jne         004F2FF9
 004F2FDA    mov         byte ptr [ebp-0D],1
 004F2FDE    mov         eax,dword ptr [ebp-14]
 004F2FE1    lea         eax,[eax+eax*4]
 004F2FE4    mov         edx,dword ptr [ebp-4]
 004F2FE7    mov         edx,dword ptr [edx+4];TFormatEnum......................:.6
 004F2FEA    mov         ecx,dword ptr [ebp-0C]
 004F2FED    lea         esi,[edx+eax*4]
 004F2FF0    mov         edi,ecx
 004F2FF2    movs        dword ptr [edi],dword ptr [esi]
 004F2FF3    movs        dword ptr [edi],dword ptr [esi]
 004F2FF4    movs        dword ptr [edi],dword ptr [esi]
 004F2FF5    movs        dword ptr [edi],dword ptr [esi]
 004F2FF6    movs        dword ptr [edi],dword ptr [esi]
>004F2FF7    jmp         004F3001
 004F2FF9    inc         dword ptr [ebp-14]
 004F2FFC    dec         dword ptr [ebp-18]
>004F2FFF    jne         004F2FC4
 004F3001    cmp         byte ptr [ebp-0D],0
>004F3005    jne         004F3016
 004F3007    mov         eax,dword ptr [ebp-0C]
 004F300A    mov         cl,0FF
 004F300C    mov         edx,14
 004F3011    call        @FillChar
 004F3016    pop         edi
 004F3017    pop         esi
 004F3018    mov         esp,ebp
 004F301A    pop         ebp
 004F301B    ret
end;*}

//004F301C
{*function sub_004F301C(?:TFormatEnum; ?:?):?;
begin
 004F301C    push        ebp
 004F301D    mov         ebp,esp
 004F301F    add         esp,0FFFFFFF0
 004F3022    mov         word ptr [ebp-6],dx
 004F3026    mov         dword ptr [ebp-4],eax
 004F3029    mov         byte ptr [ebp-7],0
 004F302D    mov         eax,dword ptr [ebp-4]
 004F3030    mov         eax,dword ptr [eax+4];TFormatEnum.......................:.6
 004F3033    call        @DynArrayLength
 004F3038    test        eax,eax
>004F303A    jle         004F307B
 004F303C    mov         eax,dword ptr [ebp-4]
 004F303F    mov         eax,dword ptr [eax+4];TFormatEnum........................:.6
 004F3042    call        @DynArrayLength
 004F3047    dec         eax
 004F3048    test        eax,eax
>004F304A    jl          004F307B
 004F304C    inc         eax
 004F304D    mov         dword ptr [ebp-10],eax
 004F3050    mov         dword ptr [ebp-0C],0
 004F3057    mov         eax,dword ptr [ebp-0C]
 004F305A    lea         eax,[eax+eax*4]
 004F305D    mov         edx,dword ptr [ebp-4]
 004F3060    mov         edx,dword ptr [edx+4];TFormatEnum.........................:.6
 004F3063    mov         ax,word ptr [edx+eax*4]
 004F3067    cmp         ax,word ptr [ebp-6]
>004F306B    jne         004F3073
 004F306D    mov         byte ptr [ebp-7],1
>004F3071    jmp         004F307B
 004F3073    inc         dword ptr [ebp-0C]
 004F3076    dec         dword ptr [ebp-10]
>004F3079    jne         004F3057
 004F307B    mov         al,byte ptr [ebp-7]
 004F307E    mov         esp,ebp
 004F3080    pop         ebp
 004F3081    ret
end;*}

//004F3084
constructor TMPHEnumFormatETC.Create;
begin
{*
 004F3084    push        ebp
 004F3085    mov         ebp,esp
 004F3087    add         esp,0FFFFFFE4
 004F308A    test        dl,dl
>004F308C    je          004F3096
 004F308E    add         esp,0FFFFFFF0
 004F3091    call        @ClassCreate
 004F3096    mov         byte ptr [ebp-5],dl
 004F3099    mov         dword ptr [ebp-4],eax
 004F309C    xor         edx,edx
 004F309E    mov         eax,dword ptr [ebp-4]
 004F30A1    call        TObject.Create
 004F30A6    mov         eax,dword ptr [ebp-4]
 004F30A9    xor         edx,edx
 004F30AB    mov         dword ptr [eax+70],edx
 004F30AE    mov         eax,dword ptr [ebp-4]
 004F30B1    add         eax,0C
 004F30B4    mov         dword ptr [ebp-0C],eax
 004F30B7    mov         ax,[0057242C];0x0 gvar_0057242C:LongWord
 004F30BD    mov         edx,dword ptr [ebp-0C]
 004F30C0    mov         word ptr [edx],ax
 004F30C3    mov         eax,dword ptr [ebp-0C]
 004F30C6    xor         edx,edx
 004F30C8    mov         dword ptr [eax+4],edx
 004F30CB    mov         eax,dword ptr [ebp-0C]
 004F30CE    mov         dword ptr [eax+8],1
 004F30D5    mov         eax,dword ptr [ebp-0C]
 004F30D8    mov         dword ptr [eax+0C],0FFFFFFFF
 004F30DF    mov         eax,dword ptr [ebp-0C]
 004F30E2    mov         dword ptr [eax+10],1
 004F30E9    mov         eax,dword ptr [ebp-4]
 004F30EC    add         eax,20
 004F30EF    mov         dword ptr [ebp-10],eax
 004F30F2    mov         eax,dword ptr [ebp-10]
 004F30F5    mov         word ptr [eax],1
 004F30FA    mov         eax,dword ptr [ebp-10]
 004F30FD    xor         edx,edx
 004F30FF    mov         dword ptr [eax+4],edx
 004F3102    mov         eax,dword ptr [ebp-10]
 004F3105    mov         dword ptr [eax+8],1
 004F310C    mov         eax,dword ptr [ebp-10]
 004F310F    mov         dword ptr [eax+0C],0FFFFFFFF
 004F3116    mov         eax,dword ptr [ebp-10]
 004F3119    mov         dword ptr [eax+10],1
 004F3120    mov         eax,dword ptr [ebp-4]
 004F3123    add         eax,34
 004F3126    mov         dword ptr [ebp-14],eax
 004F3129    mov         eax,dword ptr [ebp-14]
 004F312C    mov         dx,word ptr ds:[572436];0x0 gvar_00572436:LongWord
 004F3133    mov         word ptr [eax],dx
 004F3136    mov         eax,dword ptr [ebp-14]
 004F3139    xor         edx,edx
 004F313B    mov         dword ptr [eax+4],edx
 004F313E    mov         eax,dword ptr [ebp-14]
 004F3141    mov         dword ptr [eax+8],1
 004F3148    mov         eax,dword ptr [ebp-14]
 004F314B    mov         dword ptr [eax+0C],0FFFFFFFF
 004F3152    mov         eax,dword ptr [ebp-14]
 004F3155    mov         dword ptr [eax+10],1
 004F315C    mov         eax,dword ptr [ebp-4]
 004F315F    add         eax,48
 004F3162    mov         dword ptr [ebp-18],eax
 004F3165    mov         eax,dword ptr [ebp-18]
 004F3168    mov         dx,word ptr ds:[572430];0x0 gvar_00572430:LongWord
 004F316F    mov         word ptr [eax],dx
 004F3172    mov         eax,dword ptr [ebp-18]
 004F3175    xor         edx,edx
 004F3177    mov         dword ptr [eax+4],edx
 004F317A    mov         eax,dword ptr [ebp-18]
 004F317D    mov         dword ptr [eax+8],1
 004F3184    mov         eax,dword ptr [ebp-18]
 004F3187    mov         dword ptr [eax+0C],0FFFFFFFF
 004F318E    mov         eax,dword ptr [ebp-18]
 004F3191    mov         dword ptr [eax+10],1
 004F3198    mov         eax,dword ptr [ebp-4]
 004F319B    add         eax,5C
 004F319E    mov         dword ptr [ebp-1C],eax
 004F31A1    mov         eax,dword ptr [ebp-1C]
 004F31A4    mov         dx,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
 004F31AB    mov         word ptr [eax],dx
 004F31AE    mov         eax,dword ptr [ebp-1C]
 004F31B1    xor         edx,edx
 004F31B3    mov         dword ptr [eax+4],edx
 004F31B6    mov         eax,dword ptr [ebp-1C]
 004F31B9    mov         dword ptr [eax+8],1
 004F31C0    mov         eax,dword ptr [ebp-1C]
 004F31C3    mov         dword ptr [eax+0C],0FFFFFFFF
 004F31CA    mov         eax,dword ptr [ebp-1C]
 004F31CD    mov         dword ptr [eax+10],1
 004F31D4    mov         eax,dword ptr [ebp-4]
 004F31D7    cmp         byte ptr [ebp-5],0
>004F31DB    je          004F31EC
 004F31DD    call        @AfterConstruction
 004F31E2    pop         dword ptr fs:[0]
 004F31E9    add         esp,0C
 004F31EC    mov         eax,dword ptr [ebp-4]
 004F31EF    mov         esp,ebp
 004F31F1    pop         ebp
 004F31F2    ret
*}
end;

//004F31F4
{*function sub_004F31F4(?:?):?;
begin
 004F31F4    push        ebp
 004F31F5    mov         ebp,esp
 004F31F7    push        ecx
 004F31F8    mov         eax,dword ptr [ebp+0C]
 004F31FB    test        eax,eax
>004F31FD    je          004F3203
 004F31FF    xor         edx,edx
 004F3201    mov         dword ptr [eax],edx
 004F3203    mov         dl,1
 004F3205    mov         eax,[004EEBEC];TMPHEnumFormatETC
 004F320A    call        TMPHEnumFormatETC.Create;TMPHEnumFormatETC.Create
 004F320F    mov         edx,eax
 004F3211    test        edx,edx
>004F3213    je          004F3218
 004F3215    sub         edx,0FFFFFF8C
 004F3218    mov         eax,dword ptr [ebp+0C]
 004F321B    call        @IntfCopy
 004F3220    xor         eax,eax
 004F3222    mov         dword ptr [ebp-4],eax
 004F3225    mov         eax,dword ptr [ebp-4]
 004F3228    pop         ecx
 004F3229    pop         ebp
 004F322A    ret         8
end;*}

//004F3230
{*function sub_004F3230(?:?; ?:?; ?:?; ?:?):?;
begin
 004F3230    push        ebp
 004F3231    mov         ebp,esp
 004F3233    add         esp,0FFFFFFF8
 004F3236    push        ebx
 004F3237    push        esi
 004F3238    push        edi
 004F3239    xor         eax,eax
 004F323B    mov         dword ptr [ebp-8],eax
>004F323E    jmp         004F326A
 004F3240    mov         eax,dword ptr [ebp-8]
 004F3243    lea         eax,[eax+eax*4]
 004F3246    mov         edx,dword ptr [ebp+10]
 004F3249    mov         ecx,dword ptr [ebp+8]
 004F324C    mov         ecx,dword ptr [ecx+70]
 004F324F    lea         ecx,[ecx+ecx*4]
 004F3252    mov         ebx,dword ptr [ebp+8]
 004F3255    lea         edi,[edx+eax*4]
 004F3258    lea         esi,[ebx+ecx*4+0C]
 004F325C    movs        dword ptr [edi],dword ptr [esi]
 004F325D    movs        dword ptr [edi],dword ptr [esi]
 004F325E    movs        dword ptr [edi],dword ptr [esi]
 004F325F    movs        dword ptr [edi],dword ptr [esi]
 004F3260    movs        dword ptr [edi],dword ptr [esi]
 004F3261    mov         eax,dword ptr [ebp+8]
 004F3264    inc         dword ptr [eax+70]
 004F3267    inc         dword ptr [ebp-8]
 004F326A    mov         eax,dword ptr [ebp-8]
 004F326D    cmp         eax,dword ptr [ebp+0C]
>004F3270    jge         004F327B
 004F3272    mov         eax,dword ptr [ebp+8]
 004F3275    cmp         dword ptr [eax+70],5
>004F3279    jl          004F3240
 004F327B    cmp         dword ptr [ebp+14],0
>004F327F    je          004F3289
 004F3281    mov         eax,dword ptr [ebp+14]
 004F3284    mov         edx,dword ptr [ebp-8]
 004F3287    mov         dword ptr [eax],edx
 004F3289    mov         eax,dword ptr [ebp-8]
 004F328C    cmp         eax,dword ptr [ebp+0C]
>004F328F    jne         004F3298
 004F3291    xor         eax,eax
 004F3293    mov         dword ptr [ebp-4],eax
>004F3296    jmp         004F329F
 004F3298    mov         dword ptr [ebp-4],1
 004F329F    mov         eax,dword ptr [ebp-4]
 004F32A2    pop         edi
 004F32A3    pop         esi
 004F32A4    pop         ebx
 004F32A5    pop         ecx
 004F32A6    pop         ecx
 004F32A7    pop         ebp
 004F32A8    ret         10
end;*}

//004F32AC
{*function sub_004F32AC(?:?):?;
begin
 004F32AC    push        ebp
 004F32AD    mov         ebp,esp
 004F32AF    push        ecx
 004F32B0    mov         eax,dword ptr [ebp+8]
 004F32B3    xor         edx,edx
 004F32B5    mov         dword ptr [eax+70],edx
 004F32B8    xor         eax,eax
 004F32BA    mov         dword ptr [ebp-4],eax
 004F32BD    mov         eax,dword ptr [ebp-4]
 004F32C0    pop         ecx
 004F32C1    pop         ebp
 004F32C2    ret         4
end;*}

//004F32C8
{*function sub_004F32C8(?:?; ?:?):?;
begin
 004F32C8    push        ebp
 004F32C9    mov         ebp,esp
 004F32CB    push        ecx
 004F32CC    mov         eax,5
 004F32D1    mov         edx,dword ptr [ebp+8]
 004F32D4    sub         eax,dword ptr [edx+70]
 004F32D7    cmp         eax,dword ptr [ebp+0C]
>004F32DA    jle         004F32EC
 004F32DC    mov         eax,dword ptr [ebp+0C]
 004F32DF    mov         edx,dword ptr [ebp+8]
 004F32E2    add         dword ptr [edx+70],eax
 004F32E5    xor         eax,eax
 004F32E7    mov         dword ptr [ebp-4],eax
>004F32EA    jmp         004F32F3
 004F32EC    mov         dword ptr [ebp-4],1
 004F32F3    mov         eax,dword ptr [ebp-4]
 004F32F6    pop         ecx
 004F32F7    pop         ebp
 004F32F8    ret         8
end;*}

//004F32FC
{*function sub_004F32FC(?:?):?;
begin
 004F32FC    push        ebp
 004F32FD    mov         ebp,esp
 004F32FF    push        ecx
 004F3300    mov         eax,dword ptr [ebp+0C]
 004F3303    and         eax,7
 004F3306    sub         eax,3
>004F3309    jae         004F3314
 004F330B    mov         dword ptr [ebp-4],40102
>004F3312    jmp         004F331B
 004F3314    mov         dword ptr [ebp-4],80070057
 004F331B    mov         eax,dword ptr [ebp-4]
 004F331E    pop         ecx
 004F331F    pop         ebp
 004F3320    ret         8
end;*}

//004F3324
{*function sub_004F3324(?:?; ?:?):?;
begin
 004F3324    push        ebp
 004F3325    mov         ebp,esp
 004F3327    push        ecx
 004F3328    cmp         dword ptr [ebp+0C],0
>004F332C    je          004F3337
 004F332E    mov         dword ptr [ebp-4],40101
>004F3335    jmp         004F334B
 004F3337    test        byte ptr [ebp+10],1
>004F333B    jne         004F3346
 004F333D    mov         dword ptr [ebp-4],40100
>004F3344    jmp         004F334B
 004F3346    xor         eax,eax
 004F3348    mov         dword ptr [ebp-4],eax
 004F334B    mov         eax,dword ptr [ebp-4]
 004F334E    pop         ecx
 004F334F    pop         ebp
 004F3350    ret         0C
end;*}

//004F3354
{*constructor TMPHDataObject.Create(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F3354    push        ebp
 004F3355    mov         ebp,esp
 004F3357    add         esp,0FFFFFEC8
 004F335D    push        ebx
 004F335E    push        esi
 004F335F    push        edi
 004F3360    xor         ebx,ebx
 004F3362    mov         dword ptr [ebp-110],ebx
 004F3368    mov         dword ptr [ebp-124],ebx
 004F336E    mov         dword ptr [ebp-130],ebx
 004F3374    mov         dword ptr [ebp-138],ebx
 004F337A    mov         dword ptr [ebp-134],ebx
 004F3380    mov         dword ptr [ebp-128],ebx
 004F3386    mov         dword ptr [ebp-12C],ebx
 004F338C    test        dl,dl
>004F338E    je          004F3398
 004F3390    add         esp,0FFFFFFF0
 004F3393    call        @ClassCreate
 004F3398    mov         esi,dword ptr [ebp+10]
 004F339B    lea         edi,[ebp-10C]
 004F33A1    push        ecx
 004F33A2    xor         ecx,ecx
 004F33A4    mov         cl,byte ptr [esi]
 004F33A6    inc         ecx
 004F33A7    rep movs    byte ptr [edi],byte ptr [esi]
 004F33A9    pop         ecx
 004F33AA    mov         dword ptr [ebp-0C],ecx
 004F33AD    mov         byte ptr [ebp-5],dl
 004F33B0    mov         dword ptr [ebp-4],eax
 004F33B3    xor         eax,eax
 004F33B5    push        ebp
 004F33B6    push        4F352D
 004F33BB    push        dword ptr fs:[eax]
 004F33BE    mov         dword ptr fs:[eax],esp
 004F33C1    xor         edx,edx
 004F33C3    mov         eax,dword ptr [ebp-4]
 004F33C6    call        TObject.Create
 004F33CB    mov         eax,dword ptr [ebp-4]
 004F33CE    xor         edx,edx
 004F33D0    mov         dword ptr [eax+0C],edx;TMPHDataObject.?fC:Pointer
 004F33D3    mov         eax,dword ptr [ebp-4]
 004F33D6    mov         byte ptr [eax+114],0;TMPHDataObject.?f114:byte
 004F33DD    mov         eax,dword ptr [ebp-4]
 004F33E0    mov         dl,byte ptr [ebp+0C]
 004F33E3    mov         byte ptr [eax+11C],dl;TMPHDataObject.?f11C:byte
 004F33E9    mov         eax,dword ptr [ebp-4]
 004F33EC    mov         dl,byte ptr [ebp+8]
 004F33EF    mov         byte ptr [eax+11D],dl;TMPHDataObject.?f11D:byte
 004F33F5    cmp         dword ptr [ebp-0C],0
>004F33F9    je          004F3504
 004F33FF    cmp         dword ptr [ebp+14],0
>004F3403    jle         004F3504
 004F3409    mov         eax,dword ptr [ebp-4]
 004F340C    mov         edx,dword ptr [ebp+14]
 004F340F    mov         dword ptr [eax+10],edx;TMPHDataObject.?f10:dword
 004F3412    lea         eax,[ebp-110]
 004F3418    push        eax
 004F3419    lea         eax,[ebp-12C]
 004F341F    lea         edx,[ebp-10C]
 004F3425    call        @LStrFromString
 004F342A    mov         eax,dword ptr [ebp-12C]
 004F3430    lea         edx,[ebp-128]
 004F3436    call        0040CC9C
 004F343B    mov         eax,dword ptr [ebp-128]
 004F3441    lea         ecx,[ebp-124]
 004F3447    xor         edx,edx
 004F3449    call        0040CBBC
 004F344E    mov         eax,dword ptr [ebp-124]
 004F3454    mov         dword ptr [ebp-120],eax
 004F345A    mov         byte ptr [ebp-11C],0B
 004F3461    lea         eax,[ebp-134]
 004F3467    lea         edx,[ebp-10C]
 004F346D    call        @LStrFromString
 004F3472    mov         eax,dword ptr [ebp-134]
 004F3478    lea         edx,[ebp-130]
 004F347E    call        0040CCE0
 004F3483    mov         eax,dword ptr [ebp-130]
 004F3489    mov         dword ptr [ebp-118],eax
 004F348F    mov         byte ptr [ebp-114],0B
 004F3496    lea         eax,[ebp-120]
 004F349C    push        eax
 004F349D    lea         edx,[ebp-138]
 004F34A3    mov         eax,4EEA40;^HInstance:LongWord
 004F34A8    call        LoadResString
 004F34AD    mov         eax,dword ptr [ebp-138]
 004F34B3    mov         ecx,1
 004F34B8    pop         edx
 004F34B9    call        0040D630
 004F34BE    mov         edx,dword ptr [ebp-110]
 004F34C4    mov         eax,dword ptr [ebp-4]
 004F34C7    add         eax,14;TMPHDataObject.?f14:?
 004F34CA    mov         ecx,0FF
 004F34CF    call        @LStrToString
 004F34D4    mov         eax,dword ptr [ebp+14]
 004F34D7    call        @GetMem
 004F34DC    mov         edx,dword ptr [ebp-4]
 004F34DF    mov         dword ptr [edx+0C],eax;TMPHDataObject.?fC:Pointer
 004F34E2    mov         eax,dword ptr [ebp+18]
 004F34E5    cdq
 004F34E6    push        edx
 004F34E7    push        eax
 004F34E8    mov         eax,dword ptr [ebp-0C]
 004F34EB    call        TStream.SetPosition
 004F34F0    mov         eax,dword ptr [ebp-4]
 004F34F3    mov         ecx,dword ptr [eax+10];TMPHDataObject.?f10:dword
 004F34F6    mov         eax,dword ptr [ebp-4]
 004F34F9    mov         edx,dword ptr [eax+0C];TMPHDataObject.?fC:Pointer
 004F34FC    mov         eax,dword ptr [ebp-0C]
 004F34FF    call        TStream.ReadBuffer
 004F3504    xor         eax,eax
 004F3506    pop         edx
 004F3507    pop         ecx
 004F3508    pop         ecx
 004F3509    mov         dword ptr fs:[eax],edx
 004F350C    push        4F3534
 004F3511    lea         eax,[ebp-138]
 004F3517    mov         edx,6
 004F351C    call        @LStrArrayClr
 004F3521    lea         eax,[ebp-110]
 004F3527    call        @LStrClr
 004F352C    ret
>004F352D    jmp         @HandleFinally
>004F3532    jmp         004F3511
 004F3534    mov         eax,dword ptr [ebp-4]
 004F3537    cmp         byte ptr [ebp-5],0
>004F353B    je          004F354C
 004F353D    call        @AfterConstruction
 004F3542    pop         dword ptr fs:[0]
 004F3549    add         esp,0C
 004F354C    mov         eax,dword ptr [ebp-4]
 004F354F    pop         edi
 004F3550    pop         esi
 004F3551    pop         ebx
 004F3552    mov         esp,ebp
 004F3554    pop         ebp
 004F3555    ret         14
end;*}

//004F3598
{*function sub_004F3598:?;
begin
 004F3598    push        ebp
 004F3599    mov         ebp,esp
 004F359B    push        ecx
 004F359C    mov         dword ptr [ebp-4],80040003
 004F35A3    mov         eax,dword ptr [ebp-4]
 004F35A6    pop         ecx
 004F35A7    pop         ebp
 004F35A8    ret         14
end;*}

//004F35AC
{*function sub_004F35AC:?;
begin
 004F35AC    push        ebp
 004F35AD    mov         ebp,esp
 004F35AF    push        ecx
 004F35B0    mov         dword ptr [ebp-4],80040003
 004F35B7    mov         eax,dword ptr [ebp-4]
 004F35BA    pop         ecx
 004F35BB    pop         ebp
 004F35BC    ret         8
end;*}

//004F35C0
{*function sub_004F35C0(?:?):?;
begin
 004F35C0    push        ebp
 004F35C1    mov         ebp,esp
 004F35C3    push        ecx
 004F35C4    mov         eax,dword ptr [ebp+0C]
 004F35C7    test        eax,eax
>004F35C9    je          004F35CF
 004F35CB    xor         edx,edx
 004F35CD    mov         dword ptr [eax],edx
 004F35CF    mov         dword ptr [ebp-4],80040003
 004F35D6    mov         eax,dword ptr [ebp-4]
 004F35D9    pop         ecx
 004F35DA    pop         ebp
 004F35DB    ret         8
end;*}

//004F35E0
{*function sub_004F35E0(?:?; ?:?):?;
begin
 004F35E0    push        ebp
 004F35E1    mov         ebp,esp
 004F35E3    push        ecx
 004F35E4    mov         eax,dword ptr [ebp+10]
 004F35E7    test        eax,eax
>004F35E9    je          004F35EF
 004F35EB    xor         edx,edx
 004F35ED    mov         dword ptr [eax],edx
 004F35EF    mov         eax,dword ptr [ebp+10]
 004F35F2    call        @IntfClear
 004F35F7    cmp         dword ptr [ebp+0C],1
>004F35FB    jne         004F3621
 004F35FD    mov         dl,1
 004F35FF    mov         eax,[004EEBEC];TMPHEnumFormatETC
 004F3604    call        TMPHEnumFormatETC.Create;TMPHEnumFormatETC.Create
 004F3609    mov         edx,eax
 004F360B    test        edx,edx
>004F360D    je          004F3612
 004F360F    sub         edx,0FFFFFF8C
 004F3612    mov         eax,dword ptr [ebp+10]
 004F3615    call        @IntfCopy
 004F361A    xor         eax,eax
 004F361C    mov         dword ptr [ebp-4],eax
>004F361F    jmp         004F3628
 004F3621    mov         dword ptr [ebp-4],80004001
 004F3628    mov         eax,dword ptr [ebp-4]
 004F362B    pop         ecx
 004F362C    pop         ebp
 004F362D    ret         0C
end;*}

//004F3630
{*function sub_004F3630(?:?; ?:?):?;
begin
 004F3630    push        ebp
 004F3631    mov         ebp,esp
 004F3633    push        ecx
 004F3634    push        esi
 004F3635    push        edi
 004F3636    mov         eax,dword ptr [ebp+0C]
 004F3639    mov         edx,dword ptr [ebp+10]
 004F363C    mov         esi,eax
 004F363E    mov         edi,edx
 004F3640    movs        dword ptr [edi],dword ptr [esi]
 004F3641    movs        dword ptr [edi],dword ptr [esi]
 004F3642    movs        dword ptr [edi],dword ptr [esi]
 004F3643    movs        dword ptr [edi],dword ptr [esi]
 004F3644    movs        dword ptr [edi],dword ptr [esi]
 004F3645    mov         eax,dword ptr [ebp+10]
 004F3648    xor         edx,edx
 004F364A    mov         dword ptr [eax+4],edx
 004F364D    mov         dword ptr [ebp-4],40130
 004F3654    mov         eax,dword ptr [ebp-4]
 004F3657    pop         edi
 004F3658    pop         esi
 004F3659    pop         ecx
 004F365A    pop         ebp
 004F365B    ret         0C
end;*}

//004F3660
{*function sub_004F3660(?:?; ?:?; ?:?):?;
begin
 004F3660    push        ebp
 004F3661    mov         ebp,esp
 004F3663    add         esp,0FFFFFFD8
 004F3666    push        ebx
 004F3667    push        esi
 004F3668    push        edi
 004F3669    mov         eax,dword ptr [ebp+10]
 004F366C    xor         ecx,ecx
 004F366E    mov         edx,0C
 004F3673    call        @FillChar
 004F3678    mov         eax,dword ptr [ebp+0C]
 004F367B    push        eax
 004F367C    mov         eax,dword ptr [ebp+8]
 004F367F    push        eax
 004F3680    call        004F396C
 004F3685    mov         dword ptr [ebp-4],eax
 004F3688    cmp         dword ptr [ebp-4],0
>004F368C    jne         004F394C
 004F3692    mov         eax,dword ptr [ebp+0C]
 004F3695    mov         ax,word ptr [eax]
 004F3698    cmp         ax,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
>004F369F    jne         004F36AF
 004F36A1    mov         eax,dword ptr [ebp+8]
 004F36A4    mov         eax,dword ptr [eax+10]
 004F36A7    add         eax,0C
 004F36AA    mov         dword ptr [ebp-8],eax
>004F36AD    jmp         004F372E
 004F36AF    mov         eax,dword ptr [ebp+0C]
 004F36B2    mov         ax,word ptr [eax]
 004F36B5    cmp         ax,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
>004F36BC    jne         004F36CC
 004F36BE    mov         eax,dword ptr [ebp+8]
 004F36C1    mov         eax,dword ptr [eax+10]
 004F36C4    add         eax,4
 004F36C7    mov         dword ptr [ebp-8],eax
>004F36CA    jmp         004F372E
 004F36CC    mov         eax,dword ptr [ebp+0C]
 004F36CF    cmp         word ptr [eax],1
>004F36D3    jne         004F370D
 004F36D5    mov         eax,dword ptr [ebp+8]
 004F36D8    cmp         byte ptr [eax+11C],0
>004F36DF    jne         004F36FF
 004F36E1    mov         eax,dword ptr [ebp+8]
 004F36E4    mov         eax,dword ptr [eax+0C]
 004F36E7    call        StrLen
 004F36EC    mov         edx,eax
 004F36EE    mov         eax,dword ptr [ebp+8]
 004F36F1    mov         eax,dword ptr [eax+10]
 004F36F4    call        004DF5BC
 004F36F9    inc         eax
 004F36FA    mov         dword ptr [ebp-8],eax
>004F36FD    jmp         004F372E
 004F36FF    mov         eax,dword ptr [ebp+8]
 004F3702    mov         eax,dword ptr [eax+10]
 004F3705    add         eax,eax
 004F3707    inc         eax
 004F3708    mov         dword ptr [ebp-8],eax
>004F370B    jmp         004F372E
 004F370D    mov         eax,dword ptr [ebp+0C]
 004F3710    mov         ax,word ptr [eax]
 004F3713    cmp         ax,word ptr ds:[572436];0x0 gvar_00572436:LongWord
>004F371A    jne         004F3725
 004F371C    mov         dword ptr [ebp-8],150
>004F3723    jmp         004F372E
 004F3725    mov         eax,dword ptr [ebp+8]
 004F3728    mov         eax,dword ptr [eax+10]
 004F372B    mov         dword ptr [ebp-8],eax
 004F372E    mov         eax,dword ptr [ebp-8]
 004F3731    push        eax
 004F3732    push        2042
 004F3737    call        kernel32.GlobalAlloc
 004F373C    mov         edx,dword ptr [ebp+10]
 004F373F    mov         dword ptr [edx+4],eax
 004F3742    mov         eax,dword ptr [ebp+10]
 004F3745    cmp         dword ptr [eax+4],0
>004F3749    jne         004F3757
 004F374B    mov         dword ptr [ebp-4],8007000E
>004F3752    jmp         004F394C
 004F3757    mov         eax,dword ptr [ebp+10]
 004F375A    mov         eax,dword ptr [eax+4]
 004F375D    push        eax
 004F375E    call        kernel32.GlobalLock
 004F3763    mov         dword ptr [ebp-0C],eax
 004F3766    xor         eax,eax
 004F3768    push        ebp
 004F3769    push        4F3945
 004F376E    push        dword ptr fs:[eax]
 004F3771    mov         dword ptr fs:[eax],esp
 004F3774    xor         eax,eax
 004F3776    push        ebp
 004F3777    push        4F3906
 004F377C    push        dword ptr fs:[eax]
 004F377F    mov         dword ptr fs:[eax],esp
 004F3782    mov         eax,dword ptr [ebp+10]
 004F3785    mov         dword ptr [eax],1
 004F378B    mov         eax,dword ptr [ebp+0C]
 004F378E    cmp         word ptr [eax],1
>004F3792    jne         004F37E2
 004F3794    mov         eax,dword ptr [ebp+8]
 004F3797    cmp         byte ptr [eax+11C],0
>004F379E    je          004F37C0
 004F37A0    mov         eax,dword ptr [ebp+8]
 004F37A3    mov         al,byte ptr [eax+11D]
 004F37A9    push        eax
 004F37AA    mov         eax,dword ptr [ebp+8]
 004F37AD    mov         ecx,dword ptr [eax+10]
 004F37B0    mov         eax,dword ptr [ebp+8]
 004F37B3    mov         eax,dword ptr [eax+0C]
 004F37B6    mov         edx,dword ptr [ebp-0C]
 004F37B9    call        004DF7B0
>004F37BE    jmp         004F37D2
 004F37C0    mov         ecx,dword ptr [ebp-8]
 004F37C3    dec         ecx
 004F37C4    mov         edx,dword ptr [ebp-0C]
 004F37C7    mov         eax,dword ptr [ebp+8]
 004F37CA    mov         eax,dword ptr [eax+0C]
 004F37CD    call        Move
 004F37D2    mov         eax,dword ptr [ebp-0C]
 004F37D5    mov         edx,dword ptr [ebp-8]
 004F37D8    mov         byte ptr [eax+edx-1],0
>004F37DD    jmp         004F38FC
 004F37E2    mov         eax,dword ptr [ebp+0C]
 004F37E5    mov         ax,word ptr [eax]
 004F37E8    cmp         ax,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
>004F37EF    jne         004F382C
 004F37F1    mov         eax,dword ptr [ebp-0C]
 004F37F4    mov         dword ptr [eax],4854504D
 004F37FA    mov         eax,dword ptr [ebp-0C]
 004F37FD    mov         dword ptr [eax+4],10001
 004F3804    mov         eax,dword ptr [ebp+8]
 004F3807    mov         eax,dword ptr [eax+10]
 004F380A    mov         edx,dword ptr [ebp-0C]
 004F380D    mov         dword ptr [edx+8],eax
 004F3810    mov         eax,dword ptr [ebp+8]
 004F3813    mov         ecx,dword ptr [eax+10]
 004F3816    mov         eax,dword ptr [ebp-0C]
 004F3819    lea         edx,[eax+0C]
 004F381C    mov         eax,dword ptr [ebp+8]
 004F381F    mov         eax,dword ptr [eax+0C]
 004F3822    call        Move
>004F3827    jmp         004F38FC
 004F382C    mov         eax,dword ptr [ebp+0C]
 004F382F    mov         ax,word ptr [eax]
 004F3832    cmp         ax,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
>004F3839    jne         004F3868
 004F383B    mov         eax,dword ptr [ebp-0C]
 004F383E    mov         dword ptr [ebp-10],eax
 004F3841    mov         eax,dword ptr [ebp+8]
 004F3844    mov         eax,dword ptr [eax+10]
 004F3847    mov         edx,dword ptr [ebp-10]
 004F384A    mov         dword ptr [edx],eax
 004F384C    mov         eax,dword ptr [ebp+8]
 004F384F    mov         ecx,dword ptr [eax+10]
 004F3852    mov         eax,dword ptr [ebp-10]
 004F3855    lea         edx,[eax+4]
 004F3858    mov         eax,dword ptr [ebp+8]
 004F385B    mov         eax,dword ptr [eax+0C]
 004F385E    call        Move
>004F3863    jmp         004F38FC
 004F3868    mov         eax,dword ptr [ebp+0C]
 004F386B    mov         ax,word ptr [eax]
 004F386E    cmp         ax,word ptr ds:[572436];0x0 gvar_00572436:LongWord
>004F3875    jne         004F38EB
 004F3877    mov         eax,dword ptr [ebp-0C]
 004F387A    mov         dword ptr [ebp-14],eax
 004F387D    mov         eax,dword ptr [ebp-14]
 004F3880    mov         dword ptr [eax],1
 004F3886    mov         eax,dword ptr [ebp-14]
 004F3889    add         eax,4
 004F388C    mov         dword ptr [ebp-18],eax
 004F388F    mov         eax,dword ptr [ebp-18]
 004F3892    mov         dword ptr [eax],60
 004F3898    mov         eax,dword ptr [ebp+8]
 004F389B    mov         eax,dword ptr [eax+10]
 004F389E    mov         edx,dword ptr [ebp-18]
 004F38A1    mov         dword ptr [edx+44],eax
 004F38A4    mov         eax,dword ptr [ebp-18]
 004F38A7    xor         edx,edx
 004F38A9    mov         dword ptr [eax+40],edx
 004F38AC    lea         eax,[ebp-28]
 004F38AF    push        eax
 004F38B0    call        kernel32.GetSystemTime
 004F38B5    mov         eax,dword ptr [ebp-18]
 004F38B8    add         eax,38
 004F38BB    push        eax
 004F38BC    lea         eax,[ebp-28]
 004F38BF    push        eax
 004F38C0    call        kernel32.SystemTimeToFileTime
 004F38C5    mov         eax,dword ptr [ebp+8]
 004F38C8    movzx       eax,byte ptr [eax+14]
 004F38CC    mov         edx,103
 004F38D1    call        004DF5BC
 004F38D6    mov         ecx,eax
 004F38D8    mov         eax,dword ptr [ebp-18]
 004F38DB    lea         edx,[eax+48]
 004F38DE    mov         eax,dword ptr [ebp+8]
 004F38E1    add         eax,15
 004F38E4    call        Move
>004F38E9    jmp         004F38FC
 004F38EB    mov         edx,dword ptr [ebp-0C]
 004F38EE    mov         eax,dword ptr [ebp+8]
 004F38F1    mov         eax,dword ptr [eax+0C]
 004F38F4    mov         ecx,dword ptr [ebp-8]
 004F38F7    call        Move
 004F38FC    xor         eax,eax
 004F38FE    pop         edx
 004F38FF    pop         ecx
 004F3900    pop         ecx
 004F3901    mov         dword ptr fs:[eax],edx
>004F3904    jmp         004F392B
>004F3906    jmp         @HandleAnyException
 004F390B    mov         dword ptr [ebp-4],8007000E
 004F3912    mov         eax,dword ptr [ebp+10]
 004F3915    mov         eax,dword ptr [eax+4]
 004F3918    push        eax
 004F3919    call        kernel32.GlobalFree
 004F391E    mov         eax,dword ptr [ebp+10]
 004F3921    xor         edx,edx
 004F3923    mov         dword ptr [eax+4],edx
 004F3926    call        @DoneExcept
 004F392B    xor         eax,eax
 004F392D    pop         edx
 004F392E    pop         ecx
 004F392F    pop         ecx
 004F3930    mov         dword ptr fs:[eax],edx
 004F3933    push        4F394C
 004F3938    mov         eax,dword ptr [ebp+10]
 004F393B    mov         eax,dword ptr [eax+4]
 004F393E    push        eax
 004F393F    call        kernel32.GlobalUnlock
 004F3944    ret
>004F3945    jmp         @HandleFinally
>004F394A    jmp         004F3938
 004F394C    mov         eax,dword ptr [ebp-4]
 004F394F    pop         edi
 004F3950    pop         esi
 004F3951    pop         ebx
 004F3952    mov         esp,ebp
 004F3954    pop         ebp
 004F3955    ret         0C
end;*}

//004F3958
{*function sub_004F3958:?;
begin
 004F3958    push        ebp
 004F3959    mov         ebp,esp
 004F395B    push        ecx
 004F395C    mov         dword ptr [ebp-4],80040064
 004F3963    mov         eax,dword ptr [ebp-4]
 004F3966    pop         ecx
 004F3967    pop         ebp
 004F3968    ret         0C
end;*}

//004F396C
{*function sub_004F396C(?:?):?;
begin
 004F396C    push        ebp
 004F396D    mov         ebp,esp
 004F396F    push        ecx
 004F3970    mov         dword ptr [ebp-4],80040064
 004F3977    mov         eax,dword ptr [ebp+0C]
 004F397A    cmp         dword ptr [eax+8],1
>004F397E    je          004F398C
 004F3980    mov         dword ptr [ebp-4],8004006B
>004F3987    jmp         004F3A16
 004F398C    mov         eax,dword ptr [ebp+0C]
 004F398F    mov         eax,dword ptr [eax+10]
 004F3992    and         eax,1
 004F3995    test        eax,eax
>004F3997    jne         004F39A2
 004F3999    mov         dword ptr [ebp-4],80040069
>004F39A0    jmp         004F3A16
 004F39A2    mov         eax,dword ptr [ebp+0C]
 004F39A5    cmp         dword ptr [eax+0C],0FFFFFFFF
>004F39A9    je          004F39CC
 004F39AB    mov         eax,dword ptr [ebp+0C]
 004F39AE    mov         ax,word ptr [eax]
 004F39B1    cmp         ax,word ptr ds:[572430];0x0 gvar_00572430:LongWord
>004F39B8    je          004F39CC
 004F39BA    mov         eax,dword ptr [ebp+0C]
 004F39BD    cmp         dword ptr [eax+0C],0
>004F39C1    je          004F39CC
 004F39C3    mov         dword ptr [ebp-4],80040068
>004F39CA    jmp         004F3A16
 004F39CC    mov         eax,dword ptr [ebp+0C]
 004F39CF    mov         ax,word ptr [eax]
 004F39D2    cmp         ax,word ptr ds:[57242C];0x0 gvar_0057242C:LongWord
>004F39D9    je          004F3A11
 004F39DB    mov         eax,dword ptr [ebp+0C]
 004F39DE    cmp         word ptr [eax],1
>004F39E2    je          004F3A11
 004F39E4    mov         eax,dword ptr [ebp+0C]
 004F39E7    mov         ax,word ptr [eax]
 004F39EA    cmp         ax,word ptr ds:[572436];0x0 gvar_00572436:LongWord
>004F39F1    je          004F3A11
 004F39F3    mov         eax,dword ptr [ebp+0C]
 004F39F6    mov         ax,word ptr [eax]
 004F39F9    cmp         ax,word ptr ds:[572430];0x0 gvar_00572430:LongWord
>004F3A00    je          004F3A11
 004F3A02    mov         eax,dword ptr [ebp+0C]
 004F3A05    mov         ax,word ptr [eax]
 004F3A08    cmp         ax,word ptr ds:[57243A];0x0 gvar_0057243A:LongWord
>004F3A0F    jne         004F3A16
 004F3A11    xor         eax,eax
 004F3A13    mov         dword ptr [ebp-4],eax
 004F3A16    mov         eax,dword ptr [ebp-4]
 004F3A19    pop         ecx
 004F3A1A    pop         ebp
 004F3A1B    ret         8
end;*}

//004F3A20
{*function sub_004F3A20(?:?; ?:?; ?:?; ?:?):?;
begin
 004F3A20    push        ebp
 004F3A21    mov         ebp,esp
 004F3A23    add         esp,0FFFFFFF8
 004F3A26    mov         dword ptr [ebp-4],80004001
 004F3A2D    mov         eax,dword ptr [ebp+0C]
 004F3A30    mov         ax,word ptr [eax]
 004F3A33    cmp         ax,word ptr ds:[572432];0x0 gvar_00572432:LongWord
>004F3A3A    je          004F3A4B
 004F3A3C    mov         eax,dword ptr [ebp+0C]
 004F3A3F    mov         ax,word ptr [eax]
 004F3A42    cmp         ax,word ptr ds:[572434];0x0 gvar_00572434:LongWord
>004F3A49    jne         004F3AAE
 004F3A4B    mov         eax,dword ptr [ebp+10]
 004F3A4E    cmp         dword ptr [eax],1
>004F3A51    jne         004F3AAE
 004F3A53    xor         eax,eax
 004F3A55    mov         dword ptr [ebp-4],eax
 004F3A58    mov         eax,dword ptr [ebp+10]
 004F3A5B    mov         eax,dword ptr [eax+4]
 004F3A5E    push        eax
 004F3A5F    call        kernel32.GlobalLock
 004F3A64    mov         dword ptr [ebp-8],eax
 004F3A67    xor         eax,eax
 004F3A69    push        ebp
 004F3A6A    push        4F3AA7
 004F3A6F    push        dword ptr fs:[eax]
 004F3A72    mov         dword ptr fs:[eax],esp
 004F3A75    mov         eax,dword ptr [ebp+8]
 004F3A78    mov         byte ptr [eax+114],1
 004F3A7F    mov         eax,dword ptr [ebp-8]
 004F3A82    mov         eax,dword ptr [eax]
 004F3A84    mov         edx,dword ptr [ebp+8]
 004F3A87    mov         dword ptr [edx+118],eax
 004F3A8D    xor         eax,eax
 004F3A8F    pop         edx
 004F3A90    pop         ecx
 004F3A91    pop         ecx
 004F3A92    mov         dword ptr fs:[eax],edx
 004F3A95    push        4F3AAE
 004F3A9A    mov         eax,dword ptr [ebp+10]
 004F3A9D    mov         eax,dword ptr [eax+4]
 004F3AA0    push        eax
 004F3AA1    call        kernel32.GlobalUnlock
 004F3AA6    ret
>004F3AA7    jmp         @HandleFinally
>004F3AAC    jmp         004F3A9A
 004F3AAE    cmp         dword ptr [ebp+14],0
>004F3AB2    je          004F3ABD
 004F3AB4    mov         eax,dword ptr [ebp+10]
 004F3AB7    push        eax
 004F3AB8    call        ole32.ReleaseStgMedium
 004F3ABD    mov         eax,dword ptr [ebp-4]
 004F3AC0    pop         ecx
 004F3AC1    pop         ecx
 004F3AC2    pop         ebp
 004F3AC3    ret         10
end;*}

//004F3AC8
constructor TMPHPrintOptions.Create;
begin
{*
 004F3AC8    push        ebp
 004F3AC9    mov         ebp,esp
 004F3ACB    add         esp,0FFFFFFF8
 004F3ACE    push        esi
 004F3ACF    push        edi
 004F3AD0    test        dl,dl
>004F3AD2    je          004F3ADC
 004F3AD4    add         esp,0FFFFFFF0
 004F3AD7    call        @ClassCreate
 004F3ADC    mov         byte ptr [ebp-5],dl
 004F3ADF    mov         dword ptr [ebp-4],eax
 004F3AE2    xor         edx,edx
 004F3AE4    mov         eax,dword ptr [ebp-4]
 004F3AE7    call        TObject.Create
 004F3AEC    mov         eax,dword ptr [ebp-4]
 004F3AEF    lea         edi,[eax+4];TMPHPrintOptions.?f4:dword
 004F3AF2    mov         esi,56D0E4
 004F3AF7    movs        dword ptr [edi],dword ptr [esi]
 004F3AF8    movs        dword ptr [edi],dword ptr [esi]
 004F3AF9    movs        dword ptr [edi],dword ptr [esi]
 004F3AFA    movs        dword ptr [edi],dword ptr [esi]
 004F3AFB    mov         eax,dword ptr [ebp-4]
 004F3AFE    mov         dl,byte ptr ds:[4F3B28];0x6 gvar_004F3B28
 004F3B04    mov         byte ptr [eax+1C],dl;TMPHPrintOptions.Flags:TMPHPrintFlags
 004F3B07    mov         eax,dword ptr [ebp-4]
 004F3B0A    cmp         byte ptr [ebp-5],0
>004F3B0E    je          004F3B1F
 004F3B10    call        @AfterConstruction
 004F3B15    pop         dword ptr fs:[0]
 004F3B1C    add         esp,0C
 004F3B1F    mov         eax,dword ptr [ebp-4]
 004F3B22    pop         edi
 004F3B23    pop         esi
 004F3B24    pop         ecx
 004F3B25    pop         ecx
 004F3B26    pop         ebp
 004F3B27    ret
*}
end;

//004F3B2C
{*procedure sub_004F3B2C(?:?);
begin
 004F3B2C    push        ebp
 004F3B2D    mov         ebp,esp
 004F3B2F    add         esp,0FFFFFFF8
 004F3B32    push        esi
 004F3B33    push        edi
 004F3B34    mov         dword ptr [ebp-8],edx
 004F3B37    mov         dword ptr [ebp-4],eax
 004F3B3A    mov         edx,dword ptr [ebp-8]
 004F3B3D    mov         eax,dword ptr [ebp-4]
 004F3B40    call        00420AD4
 004F3B45    mov         eax,dword ptr [ebp-8]
 004F3B48    mov         edx,dword ptr ds:[4EE854];TMPHPrintOptions
 004F3B4E    call        @IsClass
 004F3B53    test        al,al
>004F3B55    je          004F3B90
 004F3B57    mov         eax,dword ptr [ebp-8]
 004F3B5A    mov         edx,dword ptr [ebp-4]
 004F3B5D    lea         esi,[eax+4]
 004F3B60    lea         edi,[edx+4];TMPHPrintOptions.?f4:dword
 004F3B63    movs        dword ptr [edi],dword ptr [esi]
 004F3B64    movs        dword ptr [edi],dword ptr [esi]
 004F3B65    movs        dword ptr [edi],dword ptr [esi]
 004F3B66    movs        dword ptr [edi],dword ptr [esi]
 004F3B67    mov         eax,dword ptr [ebp-4]
 004F3B6A    add         eax,14;TMPHPrintOptions.?f14:TMPHPrintHeaders
 004F3B6D    mov         edx,dword ptr [ebp-8]
 004F3B70    add         edx,14
 004F3B73    mov         ecx,2
 004F3B78    push        ecx
 004F3B79    mov         ecx,dword ptr ds:[4010C0];String
 004F3B7F    call        @CopyArray
 004F3B84    mov         eax,dword ptr [ebp-8]
 004F3B87    mov         al,byte ptr [eax+1C]
 004F3B8A    mov         edx,dword ptr [ebp-4]
 004F3B8D    mov         byte ptr [edx+1C],al;TMPHPrintOptions.Flags:TMPHPrintFlags
 004F3B90    pop         edi
 004F3B91    pop         esi
 004F3B92    pop         ecx
 004F3B93    pop         ecx
 004F3B94    pop         ebp
 004F3B95    ret
end;*}

//004F3B98
{*procedure TMPHPrintOptions.GetPageHeader(?:?; ?:?);
begin
 004F3B98    push        ebp
 004F3B99    mov         ebp,esp
 004F3B9B    add         esp,0FFFFFFF4
 004F3B9E    mov         dword ptr [ebp-0C],ecx
 004F3BA1    mov         dword ptr [ebp-8],edx
 004F3BA4    mov         dword ptr [ebp-4],eax
 004F3BA7    mov         eax,dword ptr [ebp-0C]
 004F3BAA    mov         edx,dword ptr [ebp-8]
 004F3BAD    mov         ecx,dword ptr [ebp-4]
 004F3BB0    mov         edx,dword ptr [ecx+edx*4+14]
 004F3BB4    call        @LStrAsg
 004F3BB9    mov         esp,ebp
 004F3BBB    pop         ebp
 004F3BBC    ret
end;*}

//004F3BC0
{*function TMPHPrintOptions.GetMarginLeft(?:?):?;
begin
 004F3BC0    push        ebp
 004F3BC1    mov         ebp,esp
 004F3BC3    add         esp,0FFFFFFF4
 004F3BC6    mov         dword ptr [ebp-8],edx
 004F3BC9    mov         dword ptr [ebp-4],eax
 004F3BCC    mov         eax,dword ptr [ebp-8]
 004F3BCF    dec         eax
>004F3BD0    je          004F3BDA
 004F3BD2    dec         eax
>004F3BD3    je          004F3BE5
 004F3BD5    dec         eax
>004F3BD6    je          004F3BF0
>004F3BD8    jmp         004F3BFB
 004F3BDA    mov         eax,dword ptr [ebp-4]
 004F3BDD    mov         eax,dword ptr [eax+4];TMPHPrintOptions.?f4:dword
 004F3BE0    mov         dword ptr [ebp-0C],eax
>004F3BE3    jmp         004F3C04
 004F3BE5    mov         eax,dword ptr [ebp-4]
 004F3BE8    mov         eax,dword ptr [eax+8];TMPHPrintOptions.?f8:dword
 004F3BEB    mov         dword ptr [ebp-0C],eax
>004F3BEE    jmp         004F3C04
 004F3BF0    mov         eax,dword ptr [ebp-4]
 004F3BF3    mov         eax,dword ptr [eax+0C];TMPHPrintOptions.?fC:dword
 004F3BF6    mov         dword ptr [ebp-0C],eax
>004F3BF9    jmp         004F3C04
 004F3BFB    mov         eax,dword ptr [ebp-4]
 004F3BFE    mov         eax,dword ptr [eax+10];TMPHPrintOptions.?f10:dword
 004F3C01    mov         dword ptr [ebp-0C],eax
 004F3C04    mov         eax,dword ptr [ebp-0C]
 004F3C07    mov         esp,ebp
 004F3C09    pop         ebp
 004F3C0A    ret
end;*}

//004F3C0C
{*procedure TMPHPrintOptions.SetPageHeader(Value:String; ?:?);
begin
 004F3C0C    push        ebp
 004F3C0D    mov         ebp,esp
 004F3C0F    add         esp,0FFFFFFF4
 004F3C12    mov         dword ptr [ebp-0C],ecx
 004F3C15    mov         dword ptr [ebp-8],edx
 004F3C18    mov         dword ptr [ebp-4],eax
 004F3C1B    mov         eax,dword ptr [ebp-8]
 004F3C1E    mov         edx,dword ptr [ebp-4]
 004F3C21    lea         eax,[edx+eax*4+14]
 004F3C25    mov         edx,dword ptr [ebp-0C]
 004F3C28    call        @LStrAsg
 004F3C2D    mov         esp,ebp
 004F3C2F    pop         ebp
 004F3C30    ret
end;*}

//004F3C34
{*procedure TMPHPrintOptions.SetMarginLeft(Value:Integer; ?:?);
begin
 004F3C34    push        ebp
 004F3C35    mov         ebp,esp
 004F3C37    add         esp,0FFFFFFF4
 004F3C3A    mov         dword ptr [ebp-0C],ecx
 004F3C3D    mov         dword ptr [ebp-8],edx
 004F3C40    mov         dword ptr [ebp-4],eax
 004F3C43    mov         eax,dword ptr [ebp-8]
 004F3C46    dec         eax
>004F3C47    je          004F3C51
 004F3C49    dec         eax
>004F3C4A    je          004F3C5C
 004F3C4C    dec         eax
>004F3C4D    je          004F3C67
>004F3C4F    jmp         004F3C72
 004F3C51    mov         eax,dword ptr [ebp-0C]
 004F3C54    mov         edx,dword ptr [ebp-4]
 004F3C57    mov         dword ptr [edx+4],eax;TMPHPrintOptions.?f4:dword
>004F3C5A    jmp         004F3C7B
 004F3C5C    mov         eax,dword ptr [ebp-0C]
 004F3C5F    mov         edx,dword ptr [ebp-4]
 004F3C62    mov         dword ptr [edx+8],eax;TMPHPrintOptions.?f8:dword
>004F3C65    jmp         004F3C7B
 004F3C67    mov         eax,dword ptr [ebp-0C]
 004F3C6A    mov         edx,dword ptr [ebp-4]
 004F3C6D    mov         dword ptr [edx+0C],eax;TMPHPrintOptions.?fC:dword
>004F3C70    jmp         004F3C7B
 004F3C72    mov         eax,dword ptr [ebp-0C]
 004F3C75    mov         edx,dword ptr [ebp-4]
 004F3C78    mov         dword ptr [edx+10],eax;TMPHPrintOptions.?f10:dword
 004F3C7B    mov         esp,ebp
 004F3C7D    pop         ebp
 004F3C7E    ret
end;*}

//004F3C80
{*procedure sub_004F3C80(?:?; ?:?);
begin
 004F3C80    push        ebp
 004F3C81    mov         ebp,esp
 004F3C83    add         esp,0FFFFFFF8
 004F3C86    mov         dword ptr [ebp-8],edx
 004F3C89    mov         dword ptr [ebp-4],eax
 004F3C8C    mov         eax,dword ptr [ebp-4]
 004F3C8F    mov         dword ptr [eax+24C],1
 004F3C99    pop         ecx
 004F3C9A    pop         ecx
 004F3C9B    pop         ebp
 004F3C9C    ret
end;*}

//004F3CA0
{*procedure sub_004F3CA0(?:TFormatSelDialog; ?:?);
begin
 004F3CA0    push        ebp
 004F3CA1    mov         ebp,esp
 004F3CA3    add         esp,0FFFFFFF4
 004F3CA6    mov         dword ptr [ebp-0C],edx
 004F3CA9    mov         dword ptr [ebp-4],eax
 004F3CAC    mov         eax,dword ptr [ebp-4]
 004F3CAF    mov         eax,dword ptr [eax+300];TFormatSelDialog.?f300:TListBox
 004F3CB5    mov         dword ptr [ebp-8],eax
 004F3CB8    mov         eax,dword ptr [ebp-8]
 004F3CBB    mov         edx,dword ptr [eax]
 004F3CBD    call        dword ptr [edx+0CC];TListBox.sub_00479780
 004F3CC3    inc         eax
>004F3CC4    jle         004F3CED
 004F3CC6    mov         eax,dword ptr [ebp-8]
 004F3CC9    mov         edx,dword ptr [eax]
 004F3CCB    call        dword ptr [edx+0CC];TListBox.sub_00479780
 004F3CD1    mov         edx,eax
 004F3CD3    mov         eax,dword ptr [ebp-8]
 004F3CD6    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004F3CDC    mov         ecx,dword ptr [eax]
 004F3CDE    call        dword ptr [ecx+18];TStrings.sub_004220A0
 004F3CE1    sub         ax,1
>004F3CE5    je          004F3CF1
 004F3CE7    sub         ax,6
>004F3CEB    je          004F3CF1
 004F3CED    xor         edx,edx
>004F3CEF    jmp         004F3CF3
 004F3CF1    mov         dl,1
 004F3CF3    mov         eax,dword ptr [ebp-4]
 004F3CF6    mov         eax,dword ptr [eax+304];TFormatSelDialog.?f304:TCheckBox
 004F3CFC    mov         ecx,dword ptr [eax]
 004F3CFE    call        dword ptr [ecx+64];TImage.SetEnabled
 004F3D01    mov         esp,ebp
 004F3D03    pop         ebp
 004F3D04    ret
end;*}

Initialization
//004F3D54
{*
 004F3D54    push        ebp
 004F3D55    mov         ebp,esp
 004F3D57    push        0
 004F3D59    xor         eax,eax
 004F3D5B    push        ebp
 004F3D5C    push        4F3E22
 004F3D61    push        dword ptr fs:[eax]
 004F3D64    mov         dword ptr fs:[eax],esp
 004F3D67    sub         dword ptr ds:[572428],1
>004F3D6E    jae         004F3E0C
 004F3D74    push        0
 004F3D76    call        ole32.OleInitialize
 004F3D7B    lea         edx,[ebp-4]
 004F3D7E    mov         eax,4EEA48;^HInstance:LongWord
 004F3D83    call        LoadResString
 004F3D88    mov         eax,dword ptr [ebp-4]
 004F3D8B    call        @LStrToPChar
 004F3D90    push        eax
 004F3D91    call        user32.RegisterClipboardFormatA
 004F3D96    mov         [0057242C],ax;gvar_0057242C:LongWord
 004F3D9C    push        4F3E2C;'RegEdit_HexData'
 004F3DA1    call        user32.RegisterClipboardFormatA
 004F3DA6    mov         [0057243A],ax;gvar_0057243A:LongWord
 004F3DAC    push        4F3E3C;'Rich Text Format'
 004F3DB1    call        user32.RegisterClipboardFormatA
 004F3DB6    mov         [0057242E],ax;gvar_0057242E:LongWord
 004F3DBC    push        4F3E50;'HTML Format'
 004F3DC1    call        user32.RegisterClipboardFormatA
 004F3DC6    mov         [00572438],ax;gvar_00572438:LongWord
 004F3DCC    push        4F3E5C;'FileContents'
 004F3DD1    call        user32.RegisterClipboardFormatA
 004F3DD6    mov         [00572430],ax;gvar_00572430:LongWord
 004F3DDC    push        4F3E6C;'FileGroupDescriptor'
 004F3DE1    call        user32.RegisterClipboardFormatA
 004F3DE6    mov         [00572436],ax;gvar_00572436:LongWord
 004F3DEC    push        4F3E80;'Performed DropEffect'
 004F3DF1    call        user32.RegisterClipboardFormatA
 004F3DF6    mov         [00572432],ax;gvar_00572432:LongWord
 004F3DFC    push        4F3E98;'Logical Performed DropEffect'
 004F3E01    call        user32.RegisterClipboardFormatA
 004F3E06    mov         [00572434],ax;gvar_00572434:LongWord
 004F3E0C    xor         eax,eax
 004F3E0E    pop         edx
 004F3E0F    pop         ecx
 004F3E10    pop         ecx
 004F3E11    mov         dword ptr fs:[eax],edx
 004F3E14    push        4F3E29
 004F3E19    lea         eax,[ebp-4]
 004F3E1C    call        @LStrClr
 004F3E21    ret
>004F3E22    jmp         @HandleFinally
>004F3E27    jmp         004F3E19
 004F3E29    pop         ecx
 004F3E2A    pop         ebp
 004F3E2B    ret
*}
Finalization
//004F3D08
{*
 004F3D08    push        ebp
 004F3D09    mov         ebp,esp
 004F3D0B    xor         eax,eax
 004F3D0D    push        ebp
 004F3D0E    push        4F3D49
 004F3D13    push        dword ptr fs:[eax]
 004F3D16    mov         dword ptr fs:[eax],esp
 004F3D19    inc         dword ptr ds:[572428]
>004F3D1F    jne         004F3D3B
 004F3D21    call        ole32.OleUninitialize
 004F3D26    mov         eax,56D0F8;^'ShowRuler'
 004F3D2B    mov         ecx,45
 004F3D30    mov         edx,dword ptr ds:[4010C0];String
 004F3D36    call        @FinalizeArray
 004F3D3B    xor         eax,eax
 004F3D3D    pop         edx
 004F3D3E    pop         ecx
 004F3D3F    pop         ecx
 004F3D40    mov         dword ptr fs:[eax],edx
 004F3D43    push        4F3D50
 004F3D48    ret
>004F3D49    jmp         @HandleFinally
>004F3D4E    jmp         004F3D48
 004F3D50    pop         ebp
 004F3D51    ret
*}
end.