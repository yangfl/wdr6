//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit main;

interface

uses
  SysUtils, Classes, Menus, ActnList, StdActns, ExtCtrls, StdCtrls, Buttons;

type
  TfmMain = class(TForm)
  published
    mmMain:TMainMenu;//f2F8
    File1:TMenuItem;//f2FC
    HDD1:TMenuItem;//f300
    miMarvell:TMenuItem;//f304
    Options2:TMenuItem;//f308
    Help1:TMenuItem;//f30C
    ActionList1:TActionList;//f310
    FileExit1:TFileExit;//f314
    Exit1:TMenuItem;//f318
    About:TMenuItem;//f31C
    imNon:TImage;//f320
    imRed:TImage;//f324
    imGreen:TImage;//f328
    Timer1:TTimer;//f32C
    miSoftReset1:TMenuItem;//f330
    gbStatus:TGroupBox;//f334
    Image1:TImage;//f338
    Image2:TImage;//f33C
    Image3:TImage;//f340
    Image4:TImage;//f344
    Image5:TImage;//f348
    Image6:TImage;//f34C
    Image7:TImage;//f350
    Image8:TImage;//f354
    StaticText1:TStaticText;//f358
    StaticText2:TStaticText;//f35C
    StaticText3:TStaticText;//f360
    StaticText4:TStaticText;//f364
    StaticText5:TStaticText;//f368
    StaticText6:TStaticText;//f36C
    StaticText7:TStaticText;//f370
    StaticText8:TStaticText;//f374
    gbError:TGroupBox;//f378
    Image9:TImage;//f37C
    Image10:TImage;//f380
    Image11:TImage;//f384
    Image12:TImage;//f388
    Image13:TImage;//f38C
    Image14:TImage;//f390
    Image15:TImage;//f394
    Image16:TImage;//f398
    StaticText9:TStaticText;//f39C
    StaticText10:TStaticText;//f3A0
    StaticText11:TStaticText;//f3A4
    StaticText12:TStaticText;//f3A8
    StaticText13:TStaticText;//f3AC
    StaticText14:TStaticText;//f3B0
    StaticText15:TStaticText;//f3B4
    StaticText16:TStaticText;//f3B8
    miStayOnTop:TMenuItem;//f3BC
    Port1:TMenuItem;//f3C0
    miPortPrimary:TMenuItem;//f3C4
    miPortSecondary:TMenuItem;//f3C8
    miPortCustom:TMenuItem;//f3CC
    miWdroyl:TMenuItem;//f3D0
    miDontupdateLEDs1:TMenuItem;//f3D4
    imStdNo:TImage;//f3D8
    imStdRed:TImage;//f3DC
    imStdGreen:TImage;//f3E0
    imDmaNo:TImage;//f3E4
    imDmaRed:TImage;//f3E8
    imDmaGreen:TImage;//f3EC
    miLEDs1:TMenuItem;//f3F0
    miUnistalDriver:TMenuItem;//f3F4
    miAutoCloseProgress:TMenuItem;//f3F8
    miSafeMode:TMenuItem;//f3FC
    N1:TMenuItem;//f400
    N2:TMenuItem;//f404
    miAutoloadMap1:TMenuItem;//f408
    miSound:TMenuItem;//f40C
    miUseTempDir:TMenuItem;//f410
    btOff:TSpeedButton;//f414
    btReset:TSpeedButton;//f418
    miPortUsb:TMenuItem;//f41C
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00569414
    procedure btOffClick(Sender:TObject);//00569AD0
    procedure miLEDs1Click(Sender:TObject);//00569344
    procedure FormCreate(Sender:TObject);//00568510
    procedure miDontupdateLEDs1Click(Sender:TObject);//00569134
    procedure miPortUsbClick(Sender:TObject);//005683E4
    procedure gbStatusClick(Sender:TObject);//00569C48
    procedure miUseTempDirClick(Sender:TObject);//00569B64
    procedure miSafeModeClick(Sender:TObject);//00569AE8
    procedure FormPaint(Sender:TObject);//00569B0C
    procedure miWdroylClick(Sender:TObject);//005684C8
    procedure miMarvellClick(Sender:TObject);//00568480
    procedure miSoftReset1Click(Sender:TObject);//005681B0
    //procedure Timer1Timer(?:?);//00567C50
    procedure AboutClick(Sender:TObject);//00567B1C
    procedure FormShow(Sender:TObject);//00567C28
    procedure miPortPrimaryClick(Sender:TObject);//00568280
    procedure miPortCustomClick(Sender:TObject);//005682DC
    procedure miPortSecondaryClick(Sender:TObject);//00568224
    //procedure InitDrive1Click(?:?);//005681D0
    procedure miStayOnTopClick(Sender:TObject);//005681E8
  public
    f420:String;//f420
  end;
    procedure sub_00567D38(?:TfmMain);//00567D38

implementation

{$R *.DFM}

//00567B1C
procedure TfmMain.AboutClick(Sender:TObject);
begin
{*
 00567B1C    xor         eax,eax
 00567B1E    xor         ebx,ebx
 00567B20    xor         ecx,ecx
 00567B22    ret
*}
end;

//00567C28
procedure TfmMain.FormShow(Sender:TObject);
begin
{*
 00567C28    push        ebp
 00567C29    mov         ebp,esp
 00567C2B    add         esp,0FFFFFFF8
 00567C2E    mov         dword ptr [ebp-8],edx
 00567C31    mov         dword ptr [ebp-4],eax
 00567C34    mov         eax,dword ptr [ebp-4]
 00567C37    call        00567D38
 00567C3C    mov         eax,[0056E5A4];^gvar_0056DF04
 00567C41    mov         byte ptr [eax],0
 00567C44    mov         eax,[0056E040];^gvar_005720C0
 00567C49    mov         byte ptr [eax],0
 00567C4C    pop         ecx
 00567C4D    pop         ecx
 00567C4E    pop         ebp
 00567C4F    ret
*}
end;

//00567C50
{*procedure TfmMain.Timer1Timer(?:?);
begin
 00567C50    push        ebp
 00567C51    mov         ebp,esp
 00567C53    add         esp,0FFFFFFF0
 00567C56    xor         ecx,ecx
 00567C58    mov         dword ptr [ebp-10],ecx
 00567C5B    mov         dword ptr [ebp-0C],ecx
 00567C5E    mov         dword ptr [ebp-8],edx
 00567C61    mov         dword ptr [ebp-4],eax
 00567C64    xor         eax,eax
 00567C66    push        ebp
 00567C67    push        567D2D
 00567C6C    push        dword ptr fs:[eax]
 00567C6F    mov         dword ptr fs:[eax],esp
 00567C72    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00567C77    cmp         byte ptr [eax],0
>00567C7A    jne         00567D0A
 00567C80    mov         eax,dword ptr [ebp-4]
 00567C83    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 00567C89    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00567C8D    jne         00567C99
 00567C8F    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00567C94    cmp         dword ptr [eax],0
>00567C97    je          00567CB0
 00567C99    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00567C9E    cmp         dword ptr [eax],0
>00567CA1    je          00567CB0
 00567CA3    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00567CA8    mov         eax,dword ptr [eax]
 00567CAA    cmp         byte ptr [eax+57],0;TfmProgress.FVisible:Boolean
>00567CAE    jne         00567D0A
 00567CB0    call        0055FE88
 00567CB5    and         eax,0FF
 00567CBA    lea         ecx,[ebp-0C]
 00567CBD    mov         edx,2
 00567CC2    call        IntToHex
 00567CC7    mov         edx,dword ptr [ebp-0C]
 00567CCA    mov         eax,dword ptr [ebp-4]
 00567CCD    mov         eax,dword ptr [eax+334];TfmMain.gbStatus:TGroupBox
 00567CD3    add         eax,80;TGroupBox.Hint:String
 00567CD8    call        @LStrAsg
 00567CDD    call        0055FF28
 00567CE2    and         eax,0FF
 00567CE7    lea         ecx,[ebp-10]
 00567CEA    mov         edx,2
 00567CEF    call        IntToHex
 00567CF4    mov         edx,dword ptr [ebp-10]
 00567CF7    mov         eax,dword ptr [ebp-4]
 00567CFA    mov         eax,dword ptr [eax+378];TfmMain.gbError:TGroupBox
 00567D00    add         eax,80;TGroupBox.Hint:String
 00567D05    call        @LStrAsg
 00567D0A    mov         eax,dword ptr [ebp-4]
 00567D0D    call        00567D38
 00567D12    xor         eax,eax
 00567D14    pop         edx
 00567D15    pop         ecx
 00567D16    pop         ecx
 00567D17    mov         dword ptr fs:[eax],edx
 00567D1A    push        567D34
 00567D1F    lea         eax,[ebp-10]
 00567D22    mov         edx,2
 00567D27    call        @LStrArrayClr
 00567D2C    ret
>00567D2D    jmp         @HandleFinally
>00567D32    jmp         00567D1F
 00567D34    mov         esp,ebp
 00567D36    pop         ebp
 00567D37    ret
end;*}

//00567D38
procedure sub_00567D38(?:TfmMain);
begin
{*
 00567D38    push        ebp
 00567D39    mov         ebp,esp
 00567D3B    push        ecx
 00567D3C    mov         dword ptr [ebp-4],eax
 00567D3F    mov         eax,[0056E3F8];^gvar_0059BF4C
 00567D44    cmp         byte ptr [eax],0
>00567D47    je          00567D68
 00567D49    mov         eax,dword ptr [ebp-4]
 00567D4C    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00567D52    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567D58    mov         eax,dword ptr [ebp-4]
 00567D5B    mov         eax,dword ptr [eax+354];TfmMain.Image8:TImage
 00567D61    call        TImage.SetPicture
>00567D66    jmp         00567D85
 00567D68    mov         eax,dword ptr [ebp-4]
 00567D6B    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567D71    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567D77    mov         eax,dword ptr [ebp-4]
 00567D7A    mov         eax,dword ptr [eax+354];TfmMain.Image8:TImage
 00567D80    call        TImage.SetPicture
 00567D85    mov         eax,[0056E140];^gvar_0059BF4D
 00567D8A    cmp         byte ptr [eax],0
>00567D8D    je          00567DAE
 00567D8F    mov         eax,dword ptr [ebp-4]
 00567D92    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00567D98    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567D9E    mov         eax,dword ptr [ebp-4]
 00567DA1    mov         eax,dword ptr [eax+350];TfmMain.Image7:TImage
 00567DA7    call        TImage.SetPicture
>00567DAC    jmp         00567DCB
 00567DAE    mov         eax,dword ptr [ebp-4]
 00567DB1    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567DB7    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567DBD    mov         eax,dword ptr [ebp-4]
 00567DC0    mov         eax,dword ptr [eax+350];TfmMain.Image7:TImage
 00567DC6    call        TImage.SetPicture
 00567DCB    mov         eax,[0056E628];^gvar_0059BF4E
 00567DD0    cmp         byte ptr [eax],0
>00567DD3    je          00567DF4
 00567DD5    mov         eax,dword ptr [ebp-4]
 00567DD8    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00567DDE    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567DE4    mov         eax,dword ptr [ebp-4]
 00567DE7    mov         eax,dword ptr [eax+34C];TfmMain.Image6:TImage
 00567DED    call        TImage.SetPicture
>00567DF2    jmp         00567E11
 00567DF4    mov         eax,dword ptr [ebp-4]
 00567DF7    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567DFD    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567E03    mov         eax,dword ptr [ebp-4]
 00567E06    mov         eax,dword ptr [eax+34C];TfmMain.Image6:TImage
 00567E0C    call        TImage.SetPicture
 00567E11    mov         eax,[0056E2D8];^gvar_0059BF4F
 00567E16    cmp         byte ptr [eax],0
>00567E19    je          00567E3A
 00567E1B    mov         eax,dword ptr [ebp-4]
 00567E1E    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00567E24    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567E2A    mov         eax,dword ptr [ebp-4]
 00567E2D    mov         eax,dword ptr [eax+348];TfmMain.Image5:TImage
 00567E33    call        TImage.SetPicture
>00567E38    jmp         00567E57
 00567E3A    mov         eax,dword ptr [ebp-4]
 00567E3D    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567E43    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567E49    mov         eax,dword ptr [ebp-4]
 00567E4C    mov         eax,dword ptr [eax+348];TfmMain.Image5:TImage
 00567E52    call        TImage.SetPicture
 00567E57    mov         eax,[0056E0E8];^gvar_0059BF50
 00567E5C    cmp         byte ptr [eax],0
>00567E5F    je          00567E80
 00567E61    mov         eax,dword ptr [ebp-4]
 00567E64    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00567E6A    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567E70    mov         eax,dword ptr [ebp-4]
 00567E73    mov         eax,dword ptr [eax+344];TfmMain.Image4:TImage
 00567E79    call        TImage.SetPicture
>00567E7E    jmp         00567E9D
 00567E80    mov         eax,dword ptr [ebp-4]
 00567E83    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567E89    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567E8F    mov         eax,dword ptr [ebp-4]
 00567E92    mov         eax,dword ptr [eax+344];TfmMain.Image4:TImage
 00567E98    call        TImage.SetPicture
 00567E9D    mov         eax,[0056E08C];^gvar_0059BF56
 00567EA2    cmp         byte ptr [eax],0
>00567EA5    je          00567EC6
 00567EA7    mov         eax,dword ptr [ebp-4]
 00567EAA    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00567EB0    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567EB6    mov         eax,dword ptr [ebp-4]
 00567EB9    mov         eax,dword ptr [eax+340];TfmMain.Image3:TImage
 00567EBF    call        TImage.SetPicture
>00567EC4    jmp         00567EE3
 00567EC6    mov         eax,dword ptr [ebp-4]
 00567EC9    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567ECF    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567ED5    mov         eax,dword ptr [ebp-4]
 00567ED8    mov         eax,dword ptr [eax+340];TfmMain.Image3:TImage
 00567EDE    call        TImage.SetPicture
 00567EE3    mov         eax,[0056E508];^gvar_0059BF52
 00567EE8    cmp         byte ptr [eax],0
>00567EEB    je          00567F0C
 00567EED    mov         eax,dword ptr [ebp-4]
 00567EF0    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00567EF6    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567EFC    mov         eax,dword ptr [ebp-4]
 00567EFF    mov         eax,dword ptr [eax+33C];TfmMain.Image2:TImage
 00567F05    call        TImage.SetPicture
>00567F0A    jmp         00567F29
 00567F0C    mov         eax,dword ptr [ebp-4]
 00567F0F    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567F15    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567F1B    mov         eax,dword ptr [ebp-4]
 00567F1E    mov         eax,dword ptr [eax+33C];TfmMain.Image2:TImage
 00567F24    call        TImage.SetPicture
 00567F29    mov         eax,[0056E25C];^gvar_0059BF53
 00567F2E    cmp         byte ptr [eax],0
>00567F31    je          00567F52
 00567F33    mov         eax,dword ptr [ebp-4]
 00567F36    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00567F3C    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567F42    mov         eax,dword ptr [ebp-4]
 00567F45    mov         eax,dword ptr [eax+338];TfmMain.Image1:TImage
 00567F4B    call        TImage.SetPicture
>00567F50    jmp         00567F6F
 00567F52    mov         eax,dword ptr [ebp-4]
 00567F55    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567F5B    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567F61    mov         eax,dword ptr [ebp-4]
 00567F64    mov         eax,dword ptr [eax+338];TfmMain.Image1:TImage
 00567F6A    call        TImage.SetPicture
 00567F6F    mov         eax,[0056E25C];^gvar_0059BF53
 00567F74    cmp         byte ptr [eax],0
>00567F77    jne         005681AD
 00567F7D    mov         eax,[0056E5EC];^gvar_0059BF5B
 00567F82    cmp         byte ptr [eax],0
>00567F85    je          00567FA6
 00567F87    mov         eax,dword ptr [ebp-4]
 00567F8A    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00567F90    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567F96    mov         eax,dword ptr [ebp-4]
 00567F99    mov         eax,dword ptr [eax+398];TfmMain.Image16:TImage
 00567F9F    call        TImage.SetPicture
>00567FA4    jmp         00567FC3
 00567FA6    mov         eax,dword ptr [ebp-4]
 00567FA9    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567FAF    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567FB5    mov         eax,dword ptr [ebp-4]
 00567FB8    mov         eax,dword ptr [eax+398];TfmMain.Image16:TImage
 00567FBE    call        TImage.SetPicture
 00567FC3    mov         eax,[0056E448];^gvar_0059BF5A
 00567FC8    cmp         byte ptr [eax],0
>00567FCB    je          00567FEC
 00567FCD    mov         eax,dword ptr [ebp-4]
 00567FD0    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00567FD6    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567FDC    mov         eax,dword ptr [ebp-4]
 00567FDF    mov         eax,dword ptr [eax+394];TfmMain.Image15:TImage
 00567FE5    call        TImage.SetPicture
>00567FEA    jmp         00568009
 00567FEC    mov         eax,dword ptr [ebp-4]
 00567FEF    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00567FF5    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00567FFB    mov         eax,dword ptr [ebp-4]
 00567FFE    mov         eax,dword ptr [eax+394];TfmMain.Image15:TImage
 00568004    call        TImage.SetPicture
 00568009    mov         eax,[0056E454];^gvar_0059BF59
 0056800E    cmp         byte ptr [eax],0
>00568011    je          00568032
 00568013    mov         eax,dword ptr [ebp-4]
 00568016    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 0056801C    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568022    mov         eax,dword ptr [ebp-4]
 00568025    mov         eax,dword ptr [eax+390];TfmMain.Image14:TImage
 0056802B    call        TImage.SetPicture
>00568030    jmp         0056804F
 00568032    mov         eax,dword ptr [ebp-4]
 00568035    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056803B    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568041    mov         eax,dword ptr [ebp-4]
 00568044    mov         eax,dword ptr [eax+390];TfmMain.Image14:TImage
 0056804A    call        TImage.SetPicture
 0056804F    mov         eax,[0056E274];^gvar_0059BF58
 00568054    cmp         byte ptr [eax],0
>00568057    je          00568078
 00568059    mov         eax,dword ptr [ebp-4]
 0056805C    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00568062    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568068    mov         eax,dword ptr [ebp-4]
 0056806B    mov         eax,dword ptr [eax+38C];TfmMain.Image13:TImage
 00568071    call        TImage.SetPicture
>00568076    jmp         00568095
 00568078    mov         eax,dword ptr [ebp-4]
 0056807B    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00568081    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568087    mov         eax,dword ptr [ebp-4]
 0056808A    mov         eax,dword ptr [eax+38C];TfmMain.Image13:TImage
 00568090    call        TImage.SetPicture
 00568095    mov         eax,[0056E060];^gvar_0059BF57
 0056809A    cmp         byte ptr [eax],0
>0056809D    je          005680BE
 0056809F    mov         eax,dword ptr [ebp-4]
 005680A2    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 005680A8    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005680AE    mov         eax,dword ptr [ebp-4]
 005680B1    mov         eax,dword ptr [eax+388];TfmMain.Image12:TImage
 005680B7    call        TImage.SetPicture
>005680BC    jmp         005680DB
 005680BE    mov         eax,dword ptr [ebp-4]
 005680C1    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005680C7    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005680CD    mov         eax,dword ptr [ebp-4]
 005680D0    mov         eax,dword ptr [eax+388];TfmMain.Image12:TImage
 005680D6    call        TImage.SetPicture
 005680DB    mov         eax,[0056E08C];^gvar_0059BF56
 005680E0    cmp         byte ptr [eax],0
>005680E3    je          00568104
 005680E5    mov         eax,dword ptr [ebp-4]
 005680E8    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 005680EE    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005680F4    mov         eax,dword ptr [ebp-4]
 005680F7    mov         eax,dword ptr [eax+384];TfmMain.Image11:TImage
 005680FD    call        TImage.SetPicture
>00568102    jmp         00568121
 00568104    mov         eax,dword ptr [ebp-4]
 00568107    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056810D    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568113    mov         eax,dword ptr [ebp-4]
 00568116    mov         eax,dword ptr [eax+384];TfmMain.Image11:TImage
 0056811C    call        TImage.SetPicture
 00568121    mov         eax,[0056E5B0];^gvar_0059BF55
 00568126    cmp         byte ptr [eax],0
>00568129    je          0056814A
 0056812B    mov         eax,dword ptr [ebp-4]
 0056812E    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00568134    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056813A    mov         eax,dword ptr [ebp-4]
 0056813D    mov         eax,dword ptr [eax+380];TfmMain.Image10:TImage
 00568143    call        TImage.SetPicture
>00568148    jmp         00568167
 0056814A    mov         eax,dword ptr [ebp-4]
 0056814D    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00568153    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568159    mov         eax,dword ptr [ebp-4]
 0056815C    mov         eax,dword ptr [eax+380];TfmMain.Image10:TImage
 00568162    call        TImage.SetPicture
 00568167    mov         eax,[0056DFBC];^gvar_0059BF54
 0056816C    cmp         byte ptr [eax],0
>0056816F    je          00568190
 00568171    mov         eax,dword ptr [ebp-4]
 00568174    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 0056817A    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568180    mov         eax,dword ptr [ebp-4]
 00568183    mov         eax,dword ptr [eax+37C];TfmMain.Image9:TImage
 00568189    call        TImage.SetPicture
>0056818E    jmp         005681AD
 00568190    mov         eax,dword ptr [ebp-4]
 00568193    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00568199    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056819F    mov         eax,dword ptr [ebp-4]
 005681A2    mov         eax,dword ptr [eax+37C];TfmMain.Image9:TImage
 005681A8    call        TImage.SetPicture
 005681AD    pop         ecx
 005681AE    pop         ebp
 005681AF    ret
*}
end;

//005681B0
procedure TfmMain.miSoftReset1Click(Sender:TObject);
begin
{*
 005681B0    push        ebp
 005681B1    mov         ebp,esp
 005681B3    add         esp,0FFFFFFF8
 005681B6    mov         dword ptr [ebp-8],edx
 005681B9    mov         dword ptr [ebp-4],eax
 005681BC    call        00560360
 005681C1    mov         eax,[0056E5A4];^gvar_0056DF04
 005681C6    mov         byte ptr [eax],1
 005681C9    pop         ecx
 005681CA    pop         ecx
 005681CB    pop         ebp
 005681CC    ret
*}
end;

//005681D0
{*procedure TfmMain.InitDrive1Click(?:?);
begin
 005681D0    push        ebp
 005681D1    mov         ebp,esp
 005681D3    add         esp,0FFFFFFF8
 005681D6    mov         dword ptr [ebp-8],edx
 005681D9    mov         dword ptr [ebp-4],eax
 005681DC    call        0056039C
 005681E1    pop         ecx
 005681E2    pop         ecx
 005681E3    pop         ebp
 005681E4    ret
end;*}

//005681E8
procedure TfmMain.miStayOnTopClick(Sender:TObject);
begin
{*
 005681E8    push        ebp
 005681E9    mov         ebp,esp
 005681EB    add         esp,0FFFFFFF8
 005681EE    mov         dword ptr [ebp-8],edx
 005681F1    mov         dword ptr [ebp-4],eax
 005681F4    mov         eax,dword ptr [ebp-4]
 005681F7    mov         eax,dword ptr [eax+3BC];TfmMain.miStayOnTop:TMenuItem
 005681FD    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568201    je          00568211
 00568203    mov         dl,3
 00568205    mov         eax,[0056DF34];0x0 gvar_0056DF34
 0056820A    call        TForm.SetFormStyle
>0056820F    jmp         0056821D
 00568211    xor         edx,edx
 00568213    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00568218    call        TForm.SetFormStyle
 0056821D    pop         ecx
 0056821E    pop         ecx
 0056821F    pop         ebp
 00568220    ret
*}
end;

//00568224
procedure TfmMain.miPortSecondaryClick(Sender:TObject);
begin
{*
 00568224    push        ebp
 00568225    mov         ebp,esp
 00568227    add         esp,0FFFFFFF8
 0056822A    mov         dword ptr [ebp-8],edx
 0056822D    mov         dword ptr [ebp-4],eax
 00568230    xor         edx,edx
 00568232    mov         eax,dword ptr [ebp-4]
 00568235    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 0056823B    call        TMenuItem.SetChecked
 00568240    xor         edx,edx
 00568242    mov         eax,dword ptr [ebp-4]
 00568245    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 0056824B    call        TMenuItem.SetChecked
 00568250    xor         edx,edx
 00568252    mov         eax,dword ptr [ebp-4]
 00568255    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 0056825B    call        TMenuItem.SetChecked
 00568260    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00568265    mov         byte ptr [eax],0
 00568268    mov         eax,[0056E1D4];^gvar_0056DF14
 0056826D    mov         word ptr [eax],170
 00568272    mov         eax,[0056E494];^gvar_0056DF18
 00568277    mov         word ptr [eax],376
 0056827C    pop         ecx
 0056827D    pop         ecx
 0056827E    pop         ebp
 0056827F    ret
*}
end;

//00568280
procedure TfmMain.miPortPrimaryClick(Sender:TObject);
begin
{*
 00568280    push        ebp
 00568281    mov         ebp,esp
 00568283    add         esp,0FFFFFFF8
 00568286    mov         dword ptr [ebp-8],edx
 00568289    mov         dword ptr [ebp-4],eax
 0056828C    xor         edx,edx
 0056828E    mov         eax,dword ptr [ebp-4]
 00568291    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 00568297    call        TMenuItem.SetChecked
 0056829C    xor         edx,edx
 0056829E    mov         eax,dword ptr [ebp-4]
 005682A1    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 005682A7    call        TMenuItem.SetChecked
 005682AC    xor         edx,edx
 005682AE    mov         eax,dword ptr [ebp-4]
 005682B1    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 005682B7    call        TMenuItem.SetChecked
 005682BC    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005682C1    mov         byte ptr [eax],0
 005682C4    mov         eax,[0056E1D4];^gvar_0056DF14
 005682C9    mov         word ptr [eax],1F0
 005682CE    mov         eax,[0056E494];^gvar_0056DF18
 005682D3    mov         word ptr [eax],3F6
 005682D8    pop         ecx
 005682D9    pop         ecx
 005682DA    pop         ebp
 005682DB    ret
*}
end;

//005682DC
procedure TfmMain.miPortCustomClick(Sender:TObject);
begin
{*
 005682DC    push        ebp
 005682DD    mov         ebp,esp
 005682DF    add         esp,0FFFFFFF0
 005682E2    xor         ecx,ecx
 005682E4    mov         dword ptr [ebp-10],ecx
 005682E7    mov         dword ptr [ebp-0C],ecx
 005682EA    mov         dword ptr [ebp-8],edx
 005682ED    mov         dword ptr [ebp-4],eax
 005682F0    xor         eax,eax
 005682F2    push        ebp
 005682F3    push        5683D9
 005682F8    push        dword ptr fs:[eax]
 005682FB    mov         dword ptr fs:[eax],esp
 005682FE    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00568303    mov         byte ptr [eax],0
 00568306    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0056830C    mov         ecx,dword ptr [ecx]
 0056830E    mov         dl,1
 00568310    mov         eax,[00561524];TfmCustomPort
 00568315    call        TfmProgress.Create;TfmCustomPort.Create
 0056831A    mov         edx,dword ptr ds:[56E04C];^gvar_0056DF30:TfmCustomPort
 00568320    mov         dword ptr [edx],eax
 00568322    mov         eax,[0056E04C];^gvar_0056DF30:TfmCustomPort
 00568327    mov         eax,dword ptr [eax]
 00568329    mov         edx,dword ptr [eax]
 0056832B    call        dword ptr [edx+0EC]
 00568331    dec         eax
>00568332    jne         005683BE
 00568338    xor         edx,edx
 0056833A    mov         eax,dword ptr [ebp-4]
 0056833D    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 00568343    call        TMenuItem.SetChecked
 00568348    xor         edx,edx
 0056834A    mov         eax,dword ptr [ebp-4]
 0056834D    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 00568353    call        TMenuItem.SetChecked
 00568358    xor         edx,edx
 0056835A    mov         eax,dword ptr [ebp-4]
 0056835D    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 00568363    call        TMenuItem.SetChecked
 00568368    lea         edx,[ebp-0C]
 0056836B    mov         eax,[0056E04C];^gvar_0056DF30:TfmCustomPort
 00568370    mov         eax,dword ptr [eax]
 00568372    mov         eax,dword ptr [eax+300];TfmCustomPort.edBasePort:TLabeledEdit
 00568378    call        TPanel.GetCaption
 0056837D    mov         eax,dword ptr [ebp-0C]
 00568380    mov         edx,100
 00568385    call        0040C4A8
 0056838A    mov         edx,dword ptr ds:[56E1D4];^gvar_0056DF14
 00568390    mov         word ptr [edx],ax
 00568393    lea         edx,[ebp-10]
 00568396    mov         eax,[0056E04C];^gvar_0056DF30:TfmCustomPort
 0056839B    mov         eax,dword ptr [eax]
 0056839D    mov         eax,dword ptr [eax+304];TfmCustomPort.edControl:TLabeledEdit
 005683A3    call        TPanel.GetCaption
 005683A8    mov         eax,dword ptr [ebp-10]
 005683AB    mov         edx,10E
 005683B0    call        0040C4A8
 005683B5    mov         edx,dword ptr ds:[56E494];^gvar_0056DF18
 005683BB    mov         word ptr [edx],ax
 005683BE    xor         eax,eax
 005683C0    pop         edx
 005683C1    pop         ecx
 005683C2    pop         ecx
 005683C3    mov         dword ptr fs:[eax],edx
 005683C6    push        5683E0
 005683CB    lea         eax,[ebp-10]
 005683CE    mov         edx,2
 005683D3    call        @LStrArrayClr
 005683D8    ret
>005683D9    jmp         @HandleFinally
>005683DE    jmp         005683CB
 005683E0    mov         esp,ebp
 005683E2    pop         ebp
 005683E3    ret
*}
end;

//005683E4
procedure TfmMain.miPortUsbClick(Sender:TObject);
begin
{*
 005683E4    push        ebp
 005683E5    mov         ebp,esp
 005683E7    add         esp,0FFFFFFF8
 005683EA    mov         dword ptr [ebp-8],edx
 005683ED    mov         dword ptr [ebp-4],eax
 005683F0    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005683F5    mov         byte ptr [eax],1
 005683F8    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 005683FE    mov         ecx,dword ptr [ecx]
 00568400    mov         dl,1
 00568402    mov         eax,[00561524];TfmCustomPort
 00568407    call        TfmProgress.Create;TfmCustomPort.Create
 0056840C    mov         edx,dword ptr ds:[56E04C];^gvar_0056DF30:TfmCustomPort
 00568412    mov         dword ptr [edx],eax
 00568414    mov         eax,[0056E04C];^gvar_0056DF30:TfmCustomPort
 00568419    mov         eax,dword ptr [eax]
 0056841B    mov         edx,dword ptr [eax]
 0056841D    call        dword ptr [edx+0EC]
 00568423    dec         eax
>00568424    jne         00568462
 00568426    xor         edx,edx
 00568428    mov         eax,dword ptr [ebp-4]
 0056842B    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 00568431    call        TMenuItem.SetChecked
 00568436    xor         edx,edx
 00568438    mov         eax,dword ptr [ebp-4]
 0056843B    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 00568441    call        TMenuItem.SetChecked
 00568446    xor         edx,edx
 00568448    mov         eax,dword ptr [ebp-4]
 0056844B    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 00568451    call        TMenuItem.SetChecked
 00568456    xor         edx,edx
 00568458    mov         eax,dword ptr [ebp-4]
 0056845B    call        TfmMain.gbStatusClick
>00568460    jmp         0056847A
 00568462    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00568467    mov         byte ptr [eax],0
 0056846A    xor         edx,edx
 0056846C    mov         eax,dword ptr [ebp-4]
 0056846F    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 00568475    call        TMenuItem.SetChecked
 0056847A    pop         ecx
 0056847B    pop         ecx
 0056847C    pop         ebp
 0056847D    ret
*}
end;

//00568480
procedure TfmMain.miMarvellClick(Sender:TObject);
begin
{*
 00568480    push        ebp
 00568481    mov         ebp,esp
 00568483    add         esp,0FFFFFFF8
 00568486    mov         dword ptr [ebp-8],edx
 00568489    mov         dword ptr [ebp-4],eax
 0056848C    mov         eax,[0056E040];^gvar_005720C0
 00568491    mov         byte ptr [eax],0
 00568494    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00568499    cmp         byte ptr [eax],0
>0056849C    je          005684B2
 0056849E    mov         eax,[0056E318];^gvar_0056CC30
 005684A3    cmp         dword ptr [eax],0FFFFFFFF
>005684A6    jne         005684B2
 005684A8    xor         edx,edx
 005684AA    mov         eax,dword ptr [ebp-4]
 005684AD    call        TfmMain.miPortUsbClick
 005684B2    mov         edx,dword ptr ds:[56DF34];0x0 gvar_0056DF34
 005684B8    mov         eax,[0054347C];TfmHDD
 005684BD    call        00544E60
 005684C2    pop         ecx
 005684C3    pop         ecx
 005684C4    pop         ebp
 005684C5    ret
*}
end;

//005684C8
procedure TfmMain.miWdroylClick(Sender:TObject);
begin
{*
 005684C8    push        ebp
 005684C9    mov         ebp,esp
 005684CB    add         esp,0FFFFFFF8
 005684CE    mov         dword ptr [ebp-8],edx
 005684D1    mov         dword ptr [ebp-4],eax
 005684D4    mov         eax,[0056E040];^gvar_005720C0
 005684D9    mov         byte ptr [eax],1
 005684DC    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005684E1    cmp         byte ptr [eax],0
>005684E4    je          005684FA
 005684E6    mov         eax,[0056E318];^gvar_0056CC30
 005684EB    cmp         dword ptr [eax],0FFFFFFFF
>005684EE    jne         005684FA
 005684F0    xor         edx,edx
 005684F2    mov         eax,dword ptr [ebp-4]
 005684F5    call        TfmMain.miPortUsbClick
 005684FA    mov         edx,dword ptr ds:[56DF34];0x0 gvar_0056DF34
 00568500    mov         eax,[0054347C];TfmHDD
 00568505    call        00544E60
 0056850A    pop         ecx
 0056850B    pop         ecx
 0056850C    pop         ebp
 0056850D    ret
*}
end;

//00568510
procedure TfmMain.FormCreate(Sender:TObject);
begin
{*
 00568510    push        ebp
 00568511    mov         ebp,esp
 00568513    mov         ecx,0A
 00568518    push        0
 0056851A    push        0
 0056851C    dec         ecx
>0056851D    jne         00568518
 0056851F    push        ebx
 00568520    mov         dword ptr [ebp-1C],edx
 00568523    mov         dword ptr [ebp-4],eax
 00568526    xor         eax,eax
 00568528    push        ebp
 00568529    push        568DBD
 0056852E    push        dword ptr fs:[eax]
 00568531    mov         dword ptr fs:[eax],esp
 00568534    mov         eax,dword ptr [ebp-4]
 00568537    mov         eax,dword ptr [eax+334];TfmMain.gbStatus:TGroupBox
 0056853D    mov         byte ptr [eax+1F8],1;TGroupBox.FDoubleBuffered:Boolean
 00568544    mov         eax,dword ptr [ebp-4]
 00568547    mov         eax,dword ptr [eax+378];TfmMain.gbError:TGroupBox
 0056854D    mov         byte ptr [eax+1F8],1;TGroupBox.FDoubleBuffered:Boolean
 00568554    lea         edx,[ebp-24]
 00568557    xor         eax,eax
 00568559    call        00403214
 0056855E    mov         eax,dword ptr [ebp-24]
 00568561    lea         edx,[ebp-20]
 00568564    call        0040CC5C
 00568569    lea         eax,[ebp-20]
 0056856C    mov         edx,568DD4;'wdm.ini'
 00568571    call        @LStrCat
 00568576    mov         ecx,dword ptr [ebp-20]
 00568579    mov         dl,1
 0056857B    mov         eax,[004497F8];TIniFile
 00568580    call        TIniFile.Create;TIniFile.Create
 00568585    mov         dword ptr [ebp-14],eax
 00568588    xor         eax,eax
 0056858A    push        ebp
 0056858B    push        568B62
 00568590    push        dword ptr fs:[eax]
 00568593    mov         dword ptr fs:[eax],esp
 00568596    push        0
 00568598    mov         ecx,568DE4;'Primary'
 0056859D    mov         edx,568DF4;'SETTINGS'
 005685A2    mov         eax,dword ptr [ebp-14]
 005685A5    mov         ebx,dword ptr [eax]
 005685A7    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005685AA    mov         edx,eax
 005685AC    mov         eax,dword ptr [ebp-4]
 005685AF    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 005685B5    call        TMenuItem.SetChecked
 005685BA    push        1
 005685BC    mov         ecx,568E08;'Secondary'
 005685C1    mov         edx,568DF4;'SETTINGS'
 005685C6    mov         eax,dword ptr [ebp-14]
 005685C9    mov         ebx,dword ptr [eax]
 005685CB    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005685CE    mov         edx,eax
 005685D0    mov         eax,dword ptr [ebp-4]
 005685D3    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 005685D9    call        TMenuItem.SetChecked
 005685DE    push        0
 005685E0    mov         ecx,568E1C;'Custom'
 005685E5    mov         edx,568DF4;'SETTINGS'
 005685EA    mov         eax,dword ptr [ebp-14]
 005685ED    mov         ebx,dword ptr [eax]
 005685EF    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005685F2    mov         edx,eax
 005685F4    mov         eax,dword ptr [ebp-4]
 005685F7    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 005685FD    call        TMenuItem.SetChecked
 00568602    push        0
 00568604    mov         ecx,568E2C;'USB'
 00568609    mov         edx,568DF4;'SETTINGS'
 0056860E    mov         eax,dword ptr [ebp-14]
 00568611    mov         ebx,dword ptr [eax]
 00568613    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 00568616    mov         edx,eax
 00568618    mov         eax,dword ptr [ebp-4]
 0056861B    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 00568621    call        TMenuItem.SetChecked
 00568626    push        1
 00568628    mov         ecx,568E38;'AutoloadMap'
 0056862D    mov         edx,568DF4;'SETTINGS'
 00568632    mov         eax,dword ptr [ebp-14]
 00568635    mov         ebx,dword ptr [eax]
 00568637    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 0056863A    mov         edx,eax
 0056863C    mov         eax,dword ptr [ebp-4]
 0056863F    mov         eax,dword ptr [eax+408];TfmMain.miAutoloadMap1:TMenuItem
 00568645    call        TMenuItem.SetChecked
 0056864A    push        0
 0056864C    mov         ecx,568E4C;'SafeMode'
 00568651    mov         edx,568DF4;'SETTINGS'
 00568656    mov         eax,dword ptr [ebp-14]
 00568659    mov         ebx,dword ptr [eax]
 0056865B    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 0056865E    mov         edx,eax
 00568660    mov         eax,dword ptr [ebp-4]
 00568663    mov         eax,dword ptr [eax+3FC];TfmMain.miSafeMode:TMenuItem
 00568669    call        TMenuItem.SetChecked
 0056866E    push        1
 00568670    mov         ecx,568E60;'AutoCloseProgress'
 00568675    mov         edx,568DF4;'SETTINGS'
 0056867A    mov         eax,dword ptr [ebp-14]
 0056867D    mov         ebx,dword ptr [eax]
 0056867F    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 00568682    mov         edx,eax
 00568684    mov         eax,dword ptr [ebp-4]
 00568687    mov         eax,dword ptr [eax+3F8];TfmMain.miAutoCloseProgress:TMenuItem
 0056868D    call        TMenuItem.SetChecked
 00568692    push        1
 00568694    mov         ecx,568E7C;'Sound'
 00568699    mov         edx,568DF4;'SETTINGS'
 0056869E    mov         eax,dword ptr [ebp-14]
 005686A1    mov         ebx,dword ptr [eax]
 005686A3    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005686A6    mov         edx,eax
 005686A8    mov         eax,dword ptr [ebp-4]
 005686AB    mov         eax,dword ptr [eax+40C];TfmMain.miSound:TMenuItem
 005686B1    call        TMenuItem.SetChecked
 005686B6    push        1
 005686B8    mov         ecx,568E8C;'StayOnTop'
 005686BD    mov         edx,568DF4;'SETTINGS'
 005686C2    mov         eax,dword ptr [ebp-14]
 005686C5    mov         ebx,dword ptr [eax]
 005686C7    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005686CA    mov         edx,eax
 005686CC    mov         eax,dword ptr [ebp-4]
 005686CF    mov         eax,dword ptr [eax+3BC];TfmMain.miStayOnTop:TMenuItem
 005686D5    call        TMenuItem.SetChecked
 005686DA    push        0
 005686DC    mov         ecx,568EA0;'DontupdateLEDs'
 005686E1    mov         edx,568DF4;'SETTINGS'
 005686E6    mov         eax,dword ptr [ebp-14]
 005686E9    mov         ebx,dword ptr [eax]
 005686EB    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 005686EE    mov         edx,eax
 005686F0    mov         eax,dword ptr [ebp-4]
 005686F3    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 005686F9    call        TMenuItem.SetChecked
 005686FE    push        0
 00568700    mov         ecx,568EB8;'3DLEDs'
 00568705    mov         edx,568DF4;'SETTINGS'
 0056870A    mov         eax,dword ptr [ebp-14]
 0056870D    mov         ebx,dword ptr [eax]
 0056870F    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 00568712    mov         edx,eax
 00568714    mov         eax,dword ptr [ebp-4]
 00568717    mov         eax,dword ptr [eax+3F0];TfmMain.miLEDs1:TMenuItem
 0056871D    call        TMenuItem.SetChecked
 00568722    push        0
 00568724    mov         ecx,568EC8;'UnistalDriver'
 00568729    mov         edx,568DF4;'SETTINGS'
 0056872E    mov         eax,dword ptr [ebp-14]
 00568731    mov         ebx,dword ptr [eax]
 00568733    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 00568736    mov         edx,eax
 00568738    mov         eax,dword ptr [ebp-4]
 0056873B    mov         eax,dword ptr [eax+3F4];TfmMain.miUnistalDriver:TMenuItem
 00568741    call        TMenuItem.SetChecked
 00568746    push        0
 00568748    mov         ecx,568EE0;'UseTempDir'
 0056874D    mov         edx,568DF4;'SETTINGS'
 00568752    mov         eax,dword ptr [ebp-14]
 00568755    mov         ebx,dword ptr [eax]
 00568757    call        dword ptr [ebx+10];TIniFile.sub_00449A20
 0056875A    mov         edx,eax
 0056875C    mov         eax,dword ptr [ebp-4]
 0056875F    mov         eax,dword ptr [eax+410];TfmMain.miUseTempDir:TMenuItem
 00568765    call        TMenuItem.SetChecked
 0056876A    push        12C
 0056876F    mov         ecx,568EF4;'MainTop'
 00568774    mov         edx,568DF4;'SETTINGS'
 00568779    mov         eax,dword ptr [ebp-14]
 0056877C    mov         ebx,dword ptr [eax]
 0056877E    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568781    mov         edx,eax
 00568783    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00568788    call        TControl.SetTop
 0056878D    push        190
 00568792    mov         ecx,568F04;'MainLeft'
 00568797    mov         edx,568DF4;'SETTINGS'
 0056879C    mov         eax,dword ptr [ebp-14]
 0056879F    mov         ebx,dword ptr [eax]
 005687A1    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005687A4    mov         edx,eax
 005687A6    mov         eax,[0056DF34];0x0 gvar_0056DF34
 005687AB    call        TControl.SetLeft
 005687B0    push        64
 005687B2    mov         ecx,568F18;'HddTop'
 005687B7    mov         edx,568DF4;'SETTINGS'
 005687BC    mov         eax,dword ptr [ebp-14]
 005687BF    mov         ebx,dword ptr [eax]
 005687C1    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005687C4    mov         [0056DF58],eax;gvar_0056DF58:Integer
 005687C9    push        64
 005687CB    mov         ecx,568F28;'HddLeft'
 005687D0    mov         edx,568DF4;'SETTINGS'
 005687D5    mov         eax,dword ptr [ebp-14]
 005687D8    mov         ebx,dword ptr [eax]
 005687DA    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005687DD    mov         [0056DF5C],eax;gvar_0056DF5C:Integer
 005687E2    push        0DC
 005687E7    mov         ecx,568F38;'HddHeight'
 005687EC    mov         edx,568DF4;'SETTINGS'
 005687F1    mov         eax,dword ptr [ebp-14]
 005687F4    mov         ebx,dword ptr [eax]
 005687F6    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005687F9    mov         [0056DF60],eax;gvar_0056DF60:Integer
 005687FE    push        1FC
 00568803    mov         ecx,568F4C;'HddWidth'
 00568808    mov         edx,568DF4;'SETTINGS'
 0056880D    mov         eax,dword ptr [ebp-14]
 00568810    mov         ebx,dword ptr [eax]
 00568812    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568815    mov         [0056DF64],eax;gvar_0056DF64:Integer
 0056881A    push        0
 0056881C    mov         ecx,568F60;'ModulesTop'
 00568821    mov         edx,568DF4;'SETTINGS'
 00568826    mov         eax,dword ptr [ebp-14]
 00568829    mov         ebx,dword ptr [eax]
 0056882B    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 0056882E    mov         [0056DF68],eax;gvar_0056DF68:Integer
 00568833    push        6E
 00568835    mov         ecx,568F74;'ModulesLeft'
 0056883A    mov         edx,568DF4;'SETTINGS'
 0056883F    mov         eax,dword ptr [ebp-14]
 00568842    mov         ebx,dword ptr [eax]
 00568844    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568847    mov         [0056DF6C],eax;gvar_0056DF6C:Integer
 0056884C    push        208
 00568851    mov         ecx,568F88;'ModulesHeight'
 00568856    mov         edx,568DF4;'SETTINGS'
 0056885B    mov         eax,dword ptr [ebp-14]
 0056885E    mov         ebx,dword ptr [eax]
 00568860    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568863    mov         [0056DF70],eax;gvar_0056DF70:Integer
 00568868    push        2A8
 0056886D    mov         ecx,568FA0;'ModulesWidth'
 00568872    mov         edx,568DF4;'SETTINGS'
 00568877    mov         eax,dword ptr [ebp-14]
 0056887A    mov         ebx,dword ptr [eax]
 0056887C    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 0056887F    mov         [0056DF74],eax;gvar_0056DF74:Integer
 00568884    push        2B
 00568886    mov         ecx,568FB8;'ScanTop'
 0056888B    mov         edx,568DF4;'SETTINGS'
 00568890    mov         eax,dword ptr [ebp-14]
 00568893    mov         ebx,dword ptr [eax]
 00568895    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568898    mov         [0056DF78],eax;gvar_0056DF78:Integer
 0056889D    push        3B
 0056889F    mov         ecx,568FC8;'ScanLeft'
 005688A4    mov         edx,568DF4;'SETTINGS'
 005688A9    mov         eax,dword ptr [ebp-14]
 005688AC    mov         ebx,dword ptr [eax]
 005688AE    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005688B1    mov         [0056DF7C],eax;gvar_0056DF7C:Integer
 005688B6    push        1A4
 005688BB    mov         ecx,568FDC;'ScanHeight'
 005688C0    mov         edx,568DF4;'SETTINGS'
 005688C5    mov         eax,dword ptr [ebp-14]
 005688C8    mov         ebx,dword ptr [eax]
 005688CA    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005688CD    mov         [0056DF80],eax;gvar_0056DF80:Integer
 005688D2    push        1F4
 005688D7    mov         ecx,568FF0;'ScanWidth'
 005688DC    mov         edx,568DF4;'SETTINGS'
 005688E1    mov         eax,dword ptr [ebp-14]
 005688E4    mov         ebx,dword ptr [eax]
 005688E6    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 005688E9    mov         [0056DF84],eax;gvar_0056DF84:Integer
 005688EE    push        569004;'C:\Work1\'
 005688F3    lea         eax,[ebp-2C]
 005688F6    push        eax
 005688F7    mov         ecx,569018;'TempDir'
 005688FC    mov         edx,568DF4;'SETTINGS'
 00568901    mov         eax,dword ptr [ebp-14]
 00568904    mov         ebx,dword ptr [eax]
 00568906    call        dword ptr [ebx];TIniFile.sub_0044A254
 00568908    mov         eax,dword ptr [ebp-2C]
 0056890B    lea         edx,[ebp-28]
 0056890E    call        004115C4
 00568913    mov         edx,dword ptr [ebp-28]
 00568916    mov         eax,56DF40;gvar_0056DF40
 0056891B    call        @LStrAsg
 00568920    push        569004;'C:\Work1\'
 00568925    lea         eax,[ebp-34]
 00568928    push        eax
 00568929    mov         ecx,569028;'WorkDir'
 0056892E    mov         edx,568DF4;'SETTINGS'
 00568933    mov         eax,dword ptr [ebp-14]
 00568936    mov         ebx,dword ptr [eax]
 00568938    call        dword ptr [ebx];TIniFile.sub_0044A254
 0056893A    mov         eax,dword ptr [ebp-34]
 0056893D    lea         edx,[ebp-30]
 00568940    call        004115C4
 00568945    mov         edx,dword ptr [ebp-30]
 00568948    mov         eax,56DF3C;gvar_0056DF3C
 0056894D    call        @LStrAsg
 00568952    push        0
 00568954    lea         eax,[ebp-38]
 00568957    push        eax
 00568958    mov         ecx,569038;'WindowMarker'
 0056895D    mov         edx,568DF4;'SETTINGS'
 00568962    mov         eax,dword ptr [ebp-14]
 00568965    mov         ebx,dword ptr [eax]
 00568967    call        dword ptr [ebx];TIniFile.sub_0044A254
 00568969    mov         edx,dword ptr [ebp-38]
 0056896C    mov         eax,dword ptr [ebp-4]
 0056896F    add         eax,420;TfmMain.?f420:String
 00568974    call        @LStrAsg
 00568979    mov         eax,dword ptr [ebp-4]
 0056897C    mov         eax,dword ptr [eax+410];TfmMain.miUseTempDir:TMenuItem
 00568982    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568986    je          0056899A
 00568988    mov         eax,56DF38;gvar_0056DF38
 0056898D    mov         edx,dword ptr ds:[56DF40];0x0 gvar_0056DF40
 00568993    call        @LStrAsg
>00568998    jmp         005689AA
 0056899A    mov         eax,56DF38;gvar_0056DF38
 0056899F    mov         edx,dword ptr ds:[56DF3C];0x0 gvar_0056DF3C
 005689A5    call        @LStrAsg
 005689AA    mov         eax,dword ptr [ebp-4]
 005689AD    mov         eax,dword ptr [eax+3FC];TfmMain.miSafeMode:TMenuItem
 005689B3    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>005689B7    je          005689C3
 005689B9    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 005689BE    mov         byte ptr [eax],1
>005689C1    jmp         005689CB
 005689C3    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 005689C8    mov         byte ptr [eax],0
 005689CB    mov         eax,dword ptr [ebp-4]
 005689CE    mov         eax,dword ptr [eax+3F0];TfmMain.miLEDs1:TMenuItem
 005689D4    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>005689D8    je          00568A33
 005689DA    mov         eax,dword ptr [ebp-4]
 005689DD    mov         eax,dword ptr [eax+3E4];TfmMain.imDmaNo:TImage
 005689E3    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005689E9    mov         eax,dword ptr [ebp-4]
 005689EC    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005689F2    call        TImage.SetPicture
 005689F7    mov         eax,dword ptr [ebp-4]
 005689FA    mov         eax,dword ptr [eax+3E8];TfmMain.imDmaRed:TImage
 00568A00    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568A06    mov         eax,dword ptr [ebp-4]
 00568A09    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00568A0F    call        TImage.SetPicture
 00568A14    mov         eax,dword ptr [ebp-4]
 00568A17    mov         eax,dword ptr [eax+3EC];TfmMain.imDmaGreen:TImage
 00568A1D    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568A23    mov         eax,dword ptr [ebp-4]
 00568A26    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00568A2C    call        TImage.SetPicture
>00568A31    jmp         00568A8A
 00568A33    mov         eax,dword ptr [ebp-4]
 00568A36    mov         eax,dword ptr [eax+3D8];TfmMain.imStdNo:TImage
 00568A3C    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568A42    mov         eax,dword ptr [ebp-4]
 00568A45    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00568A4B    call        TImage.SetPicture
 00568A50    mov         eax,dword ptr [ebp-4]
 00568A53    mov         eax,dword ptr [eax+3DC];TfmMain.imStdRed:TImage
 00568A59    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568A5F    mov         eax,dword ptr [ebp-4]
 00568A62    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00568A68    call        TImage.SetPicture
 00568A6D    mov         eax,dword ptr [ebp-4]
 00568A70    mov         eax,dword ptr [eax+3E0];TfmMain.imStdGreen:TImage
 00568A76    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00568A7C    mov         eax,dword ptr [ebp-4]
 00568A7F    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 00568A85    call        TImage.SetPicture
 00568A8A    mov         eax,dword ptr [ebp-4]
 00568A8D    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 00568A93    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568A97    je          00568AA3
 00568A99    xor         edx,edx
 00568A9B    mov         eax,dword ptr [ebp-4]
 00568A9E    call        TfmMain.miDontupdateLEDs1Click
 00568AA3    mov         eax,dword ptr [ebp-4]
 00568AA6    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 00568AAC    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568AB0    je          00568AF2
 00568AB2    push        100
 00568AB7    mov         ecx,569050;'BasePort'
 00568ABC    mov         edx,568DF4;'SETTINGS'
 00568AC1    mov         eax,dword ptr [ebp-14]
 00568AC4    mov         ebx,dword ptr [eax]
 00568AC6    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568AC9    mov         edx,dword ptr ds:[56E1D4];^gvar_0056DF14
 00568ACF    mov         word ptr [edx],ax
 00568AD2    push        10E
 00568AD7    mov         ecx,569064;'Control'
 00568ADC    mov         edx,568DF4;'SETTINGS'
 00568AE1    mov         eax,dword ptr [ebp-14]
 00568AE4    mov         ebx,dword ptr [eax]
 00568AE6    call        dword ptr [ebx+8];TIniFile.sub_004498F0
 00568AE9    mov         edx,dword ptr ds:[56E494];^gvar_0056DF18
 00568AEF    mov         word ptr [edx],ax
 00568AF2    mov         eax,dword ptr [ebp-4]
 00568AF5    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 00568AFB    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568AFF    je          00568B15
 00568B01    mov         eax,[0056E1D4];^gvar_0056DF14
 00568B06    mov         word ptr [eax],1F0
 00568B0B    mov         eax,[0056E494];^gvar_0056DF18
 00568B10    mov         word ptr [eax],3F6
 00568B15    mov         eax,dword ptr [ebp-4]
 00568B18    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 00568B1E    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00568B22    je          00568B38
 00568B24    mov         eax,[0056E1D4];^gvar_0056DF14
 00568B29    mov         word ptr [eax],170
 00568B2E    mov         eax,[0056E494];^gvar_0056DF18
 00568B33    mov         word ptr [eax],376
 00568B38    mov         eax,dword ptr [ebp-4]
 00568B3B    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 00568B41    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00568B44    mov         edx,dword ptr ds:[56E280];^gvar_0056DF1C:Boolean
 00568B4A    mov         byte ptr [edx],al
 00568B4C    xor         eax,eax
 00568B4E    pop         edx
 00568B4F    pop         ecx
 00568B50    pop         ecx
 00568B51    mov         dword ptr fs:[eax],edx
 00568B54    push        568B69
 00568B59    mov         eax,dword ptr [ebp-14]
 00568B5C    call        TObject.Free
 00568B61    ret
>00568B62    jmp         @HandleFinally
>00568B67    jmp         00568B59
 00568B69    lea         edx,[ebp-40]
 00568B6C    xor         eax,eax
 00568B6E    call        00403214
 00568B73    mov         eax,dword ptr [ebp-40]
 00568B76    lea         edx,[ebp-3C]
 00568B79    call        0040CC5C
 00568B7E    lea         eax,[ebp-3C]
 00568B81    mov         edx,569074;'PORTTALK.SYS'
 00568B86    call        @LStrCat
 00568B8B    mov         eax,dword ptr [ebp-3C]
 00568B8E    call        0040C94C
 00568B93    test        al,al
>00568B95    jne         00568C0B
 00568B97    push        56908C;'PORTTALKSYS'
 00568B9C    push        0A
 00568B9E    mov         ecx,dword ptr ds:[56F668];0x0 HInstance:LongWord
 00568BA4    mov         dl,1
 00568BA6    mov         eax,[0041DE90];TResourceStream
 00568BAB    call        TResourceStream.Create;TResourceStream.Create
 00568BB0    mov         dword ptr [ebp-18],eax
 00568BB3    xor         eax,eax
 00568BB5    push        ebp
 00568BB6    push        568C04
 00568BBB    push        dword ptr fs:[eax]
 00568BBE    mov         dword ptr fs:[eax],esp
 00568BC1    lea         edx,[ebp-48]
 00568BC4    xor         eax,eax
 00568BC6    call        00403214
 00568BCB    mov         eax,dword ptr [ebp-48]
 00568BCE    lea         edx,[ebp-44]
 00568BD1    call        0040CC5C
 00568BD6    lea         eax,[ebp-44]
 00568BD9    mov         edx,569074;'PORTTALK.SYS'
 00568BDE    call        @LStrCat
 00568BE3    mov         edx,dword ptr [ebp-44]
 00568BE6    mov         eax,dword ptr [ebp-18]
 00568BE9    call        00423E84
 00568BEE    xor         eax,eax
 00568BF0    pop         edx
 00568BF1    pop         ecx
 00568BF2    pop         ecx
 00568BF3    mov         dword ptr fs:[eax],edx
 00568BF6    push        568C0B
 00568BFB    mov         eax,dword ptr [ebp-18]
 00568BFE    call        TObject.Free
 00568C03    ret
>00568C04    jmp         @HandleFinally
>00568C09    jmp         00568BFB
 00568C0B    mov         eax,[0056E3C4];^gvar_0056DF10
 00568C10    mov         byte ptr [eax],0
 00568C13    lea         eax,[ebp-8]
 00568C16    mov         edx,5690A0;'9x'
 00568C1B    call        @LStrLAsg
 00568C20    mov         eax,[0056E624];^gvar_0056B7D8
 00568C25    cmp         dword ptr [eax],2
>00568C28    jne         00568D01
 00568C2E    lea         eax,[ebp-8]
 00568C31    mov         edx,5690AC;'unknown NT'
 00568C36    call        @LStrLAsg
 00568C3B    call        kernel32.GetVersion
 00568C40    mov         dword ptr [ebp-0C],eax
 00568C43    xor         eax,eax
 00568C45    mov         al,byte ptr [ebp-0C]
 00568C48    mov         word ptr [ebp-0E],ax
 00568C4C    mov         ax,word ptr [ebp-0C]
 00568C50    call        004084A0
 00568C55    and         eax,0FF
 00568C5A    mov         word ptr [ebp-10],ax
 00568C5E    cmp         word ptr [ebp-0E],4
>00568C63    ja          00568C72
 00568C65    lea         eax,[ebp-8]
 00568C68    mov         edx,5690C0;'NT unknown'
 00568C6D    call        @LStrLAsg
 00568C72    cmp         word ptr [ebp-0E],6
>00568C77    jne         00568C8D
 00568C79    cmp         word ptr [ebp-10],1
>00568C7E    jne         00568C8D
 00568C80    lea         eax,[ebp-8]
 00568C83    mov         edx,5690D4;'Windows 7 (Vienna)'
 00568C88    call        @LStrLAsg
 00568C8D    cmp         word ptr [ebp-0E],6
>00568C92    jne         00568CA8
 00568C94    cmp         word ptr [ebp-10],0
>00568C99    jne         00568CA8
 00568C9B    lea         eax,[ebp-8]
 00568C9E    mov         edx,5690F0;'Vista'
 00568CA3    call        @LStrLAsg
 00568CA8    cmp         word ptr [ebp-0E],5
>00568CAD    jne         00568CC3
 00568CAF    cmp         word ptr [ebp-10],1
>00568CB4    jne         00568CC3
 00568CB6    lea         eax,[ebp-8]
 00568CB9    mov         edx,569100;'XP'
 00568CBE    call        @LStrLAsg
 00568CC3    cmp         word ptr [ebp-0E],5
>00568CC8    jne         00568CDE
 00568CCA    cmp         word ptr [ebp-10],2
>00568CCF    jne         00568CDE
 00568CD1    lea         eax,[ebp-8]
 00568CD4    mov         edx,56910C;'2003 Server'
 00568CD9    call        @LStrLAsg
 00568CDE    cmp         word ptr [ebp-0E],5
>00568CE3    jne         00568CF9
 00568CE5    cmp         word ptr [ebp-10],0
>00568CEA    jne         00568CF9
 00568CEC    lea         eax,[ebp-8]
 00568CEF    mov         edx,569120;'2000'
 00568CF4    call        @LStrLAsg
 00568CF9    mov         eax,[0056E3C4];^gvar_0056DF10
 00568CFE    mov         byte ptr [eax],1
 00568D01    mov         eax,[0056E3C4];^gvar_0056DF10
 00568D06    cmp         byte ptr [eax],0
>00568D09    je          00568D38
 00568D0B    call        004CB254
 00568D10    call        004CB254
 00568D15    test        al,al
>00568D17    je          00568D55
 00568D19    mov         eax,dword ptr [ebp-4]
 00568D1C    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 00568D22    mov         dl,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00568D25    xor         dl,1
 00568D28    mov         eax,dword ptr [ebp-4]
 00568D2B    mov         eax,dword ptr [eax+32C];TfmMain.Timer1:TTimer
 00568D31    call        TTimer.SetEnabled
>00568D36    jmp         00568D55
 00568D38    mov         eax,dword ptr [ebp-4]
 00568D3B    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 00568D41    mov         dl,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00568D44    xor         dl,1
 00568D47    mov         eax,dword ptr [ebp-4]
 00568D4A    mov         eax,dword ptr [eax+32C];TfmMain.Timer1:TTimer
 00568D50    call        TTimer.SetEnabled
 00568D55    lea         edx,[ebp-50]
 00568D58    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00568D5D    call        TPanel.GetCaption
 00568D62    push        dword ptr [ebp-50]
 00568D65    push        569130;' '
 00568D6A    mov         eax,dword ptr [ebp-4]
 00568D6D    push        dword ptr [eax+420];TfmMain.?f420:String
 00568D73    lea         eax,[ebp-4C]
 00568D76    mov         edx,3
 00568D7B    call        @LStrCatN
 00568D80    mov         edx,dword ptr [ebp-4C]
 00568D83    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00568D88    call        TPanel.SetCaption
 00568D8D    xor         eax,eax
 00568D8F    pop         edx
 00568D90    pop         ecx
 00568D91    pop         ecx
 00568D92    mov         dword ptr fs:[eax],edx
 00568D95    push        568DC4
 00568D9A    lea         eax,[ebp-50]
 00568D9D    mov         edx,2
 00568DA2    call        @LStrArrayClr
 00568DA7    lea         eax,[ebp-48]
 00568DAA    mov         edx,0B
 00568DAF    call        @LStrArrayClr
 00568DB4    lea         eax,[ebp-8]
 00568DB7    call        @LStrClr
 00568DBC    ret
>00568DBD    jmp         @HandleFinally
>00568DC2    jmp         00568D9A
 00568DC4    pop         ebx
 00568DC5    mov         esp,ebp
 00568DC7    pop         ebp
 00568DC8    ret
*}
end;

//00569134
procedure TfmMain.miDontupdateLEDs1Click(Sender:TObject);
begin
{*
 00569134    push        ebp
 00569135    mov         ebp,esp
 00569137    add         esp,0FFFFFFF8
 0056913A    mov         dword ptr [ebp-8],edx
 0056913D    mov         dword ptr [ebp-4],eax
 00569140    mov         eax,dword ptr [ebp-4]
 00569143    mov         eax,dword ptr [eax+32C];TfmMain.Timer1:TTimer
 00569149    mov         dl,byte ptr [eax+40];TTimer.Enabled:Boolean
 0056914C    xor         dl,1
 0056914F    mov         eax,dword ptr [ebp-4]
 00569152    mov         eax,dword ptr [eax+32C];TfmMain.Timer1:TTimer
 00569158    call        TTimer.SetEnabled
 0056915D    mov         eax,dword ptr [ebp-4]
 00569160    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 00569166    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0056916A    je          00569340
 00569170    mov         eax,dword ptr [ebp-4]
 00569173    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569179    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056917F    mov         eax,dword ptr [ebp-4]
 00569182    mov         eax,dword ptr [eax+354];TfmMain.Image8:TImage
 00569188    call        TImage.SetPicture
 0056918D    mov         eax,dword ptr [ebp-4]
 00569190    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569196    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056919C    mov         eax,dword ptr [ebp-4]
 0056919F    mov         eax,dword ptr [eax+350];TfmMain.Image7:TImage
 005691A5    call        TImage.SetPicture
 005691AA    mov         eax,dword ptr [ebp-4]
 005691AD    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005691B3    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005691B9    mov         eax,dword ptr [ebp-4]
 005691BC    mov         eax,dword ptr [eax+34C];TfmMain.Image6:TImage
 005691C2    call        TImage.SetPicture
 005691C7    mov         eax,dword ptr [ebp-4]
 005691CA    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005691D0    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005691D6    mov         eax,dword ptr [ebp-4]
 005691D9    mov         eax,dword ptr [eax+348];TfmMain.Image5:TImage
 005691DF    call        TImage.SetPicture
 005691E4    mov         eax,dword ptr [ebp-4]
 005691E7    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005691ED    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005691F3    mov         eax,dword ptr [ebp-4]
 005691F6    mov         eax,dword ptr [eax+344];TfmMain.Image4:TImage
 005691FC    call        TImage.SetPicture
 00569201    mov         eax,dword ptr [ebp-4]
 00569204    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056920A    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569210    mov         eax,dword ptr [ebp-4]
 00569213    mov         eax,dword ptr [eax+340];TfmMain.Image3:TImage
 00569219    call        TImage.SetPicture
 0056921E    mov         eax,dword ptr [ebp-4]
 00569221    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569227    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056922D    mov         eax,dword ptr [ebp-4]
 00569230    mov         eax,dword ptr [eax+33C];TfmMain.Image2:TImage
 00569236    call        TImage.SetPicture
 0056923B    mov         eax,dword ptr [ebp-4]
 0056923E    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569244    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056924A    mov         eax,dword ptr [ebp-4]
 0056924D    mov         eax,dword ptr [eax+338];TfmMain.Image1:TImage
 00569253    call        TImage.SetPicture
 00569258    mov         eax,dword ptr [ebp-4]
 0056925B    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569261    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569267    mov         eax,dword ptr [ebp-4]
 0056926A    mov         eax,dword ptr [eax+398];TfmMain.Image16:TImage
 00569270    call        TImage.SetPicture
 00569275    mov         eax,dword ptr [ebp-4]
 00569278    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056927E    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569284    mov         eax,dword ptr [ebp-4]
 00569287    mov         eax,dword ptr [eax+394];TfmMain.Image15:TImage
 0056928D    call        TImage.SetPicture
 00569292    mov         eax,dword ptr [ebp-4]
 00569295    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056929B    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005692A1    mov         eax,dword ptr [ebp-4]
 005692A4    mov         eax,dword ptr [eax+390];TfmMain.Image14:TImage
 005692AA    call        TImage.SetPicture
 005692AF    mov         eax,dword ptr [ebp-4]
 005692B2    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005692B8    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005692BE    mov         eax,dword ptr [ebp-4]
 005692C1    mov         eax,dword ptr [eax+38C];TfmMain.Image13:TImage
 005692C7    call        TImage.SetPicture
 005692CC    mov         eax,dword ptr [ebp-4]
 005692CF    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005692D5    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005692DB    mov         eax,dword ptr [ebp-4]
 005692DE    mov         eax,dword ptr [eax+388];TfmMain.Image12:TImage
 005692E4    call        TImage.SetPicture
 005692E9    mov         eax,dword ptr [ebp-4]
 005692EC    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005692F2    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005692F8    mov         eax,dword ptr [ebp-4]
 005692FB    mov         eax,dword ptr [eax+384];TfmMain.Image11:TImage
 00569301    call        TImage.SetPicture
 00569306    mov         eax,dword ptr [ebp-4]
 00569309    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056930F    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569315    mov         eax,dword ptr [ebp-4]
 00569318    mov         eax,dword ptr [eax+380];TfmMain.Image10:TImage
 0056931E    call        TImage.SetPicture
 00569323    mov         eax,dword ptr [ebp-4]
 00569326    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 0056932C    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569332    mov         eax,dword ptr [ebp-4]
 00569335    mov         eax,dword ptr [eax+37C];TfmMain.Image9:TImage
 0056933B    call        TImage.SetPicture
 00569340    pop         ecx
 00569341    pop         ecx
 00569342    pop         ebp
 00569343    ret
*}
end;

//00569344
procedure TfmMain.miLEDs1Click(Sender:TObject);
begin
{*
 00569344    push        ebp
 00569345    mov         ebp,esp
 00569347    add         esp,0FFFFFFF8
 0056934A    mov         dword ptr [ebp-8],edx
 0056934D    mov         dword ptr [ebp-4],eax
 00569350    mov         eax,dword ptr [ebp-4]
 00569353    mov         eax,dword ptr [eax+3F0];TfmMain.miLEDs1:TMenuItem
 00569359    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0056935D    je          005693B8
 0056935F    mov         eax,dword ptr [ebp-4]
 00569362    mov         eax,dword ptr [eax+3E4];TfmMain.imDmaNo:TImage
 00569368    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056936E    mov         eax,dword ptr [ebp-4]
 00569371    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 00569377    call        TImage.SetPicture
 0056937C    mov         eax,dword ptr [ebp-4]
 0056937F    mov         eax,dword ptr [eax+3E8];TfmMain.imDmaRed:TImage
 00569385    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0056938B    mov         eax,dword ptr [ebp-4]
 0056938E    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 00569394    call        TImage.SetPicture
 00569399    mov         eax,dword ptr [ebp-4]
 0056939C    mov         eax,dword ptr [eax+3EC];TfmMain.imDmaGreen:TImage
 005693A2    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005693A8    mov         eax,dword ptr [ebp-4]
 005693AB    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 005693B1    call        TImage.SetPicture
>005693B6    jmp         0056940F
 005693B8    mov         eax,dword ptr [ebp-4]
 005693BB    mov         eax,dword ptr [eax+3D8];TfmMain.imStdNo:TImage
 005693C1    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005693C7    mov         eax,dword ptr [ebp-4]
 005693CA    mov         eax,dword ptr [eax+320];TfmMain.imNon:TImage
 005693D0    call        TImage.SetPicture
 005693D5    mov         eax,dword ptr [ebp-4]
 005693D8    mov         eax,dword ptr [eax+3DC];TfmMain.imStdRed:TImage
 005693DE    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 005693E4    mov         eax,dword ptr [ebp-4]
 005693E7    mov         eax,dword ptr [eax+324];TfmMain.imRed:TImage
 005693ED    call        TImage.SetPicture
 005693F2    mov         eax,dword ptr [ebp-4]
 005693F5    mov         eax,dword ptr [eax+3E0];TfmMain.imStdGreen:TImage
 005693FB    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 00569401    mov         eax,dword ptr [ebp-4]
 00569404    mov         eax,dword ptr [eax+328];TfmMain.imGreen:TImage
 0056940A    call        TImage.SetPicture
 0056940F    pop         ecx
 00569410    pop         ecx
 00569411    pop         ebp
 00569412    ret
*}
end;

//00569414
procedure TfmMain.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00569414    push        ebp
 00569415    mov         ebp,esp
 00569417    push        ecx
 00569418    mov         ecx,4
 0056941D    push        0
 0056941F    push        0
 00569421    dec         ecx
>00569422    jne         0056941D
 00569424    push        ecx
 00569425    xchg        ecx,dword ptr [ebp-4]
 00569428    push        ebx
 00569429    mov         dword ptr [ebp-8],ecx
 0056942C    mov         dword ptr [ebp-10],edx
 0056942F    mov         dword ptr [ebp-4],eax
 00569432    xor         eax,eax
 00569434    push        ebp
 00569435    push        569863
 0056943A    push        dword ptr fs:[eax]
 0056943D    mov         dword ptr fs:[eax],esp
 00569440    mov         eax,dword ptr [ebp-4]
 00569443    mov         eax,dword ptr [eax+3F4];TfmMain.miUnistalDriver:TMenuItem
 00569449    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0056944D    je          0056945E
 0056944F    mov         eax,[0056E3C4];^gvar_0056DF10
 00569454    cmp         byte ptr [eax],0
>00569457    je          0056945E
 00569459    call        004CB780
 0056945E    lea         edx,[ebp-18]
 00569461    xor         eax,eax
 00569463    call        00403214
 00569468    mov         eax,dword ptr [ebp-18]
 0056946B    lea         edx,[ebp-14]
 0056946E    call        0040CC5C
 00569473    lea         eax,[ebp-14]
 00569476    mov         edx,569878;'wdm.ini'
 0056947B    call        @LStrCat
 00569480    mov         ecx,dword ptr [ebp-14]
 00569483    mov         dl,1
 00569485    mov         eax,[004497F8];TIniFile
 0056948A    call        TIniFile.Create;TIniFile.Create
 0056948F    mov         dword ptr [ebp-0C],eax
 00569492    xor         eax,eax
 00569494    push        ebp
 00569495    push        569824
 0056949A    push        dword ptr fs:[eax]
 0056949D    mov         dword ptr fs:[eax],esp
 005694A0    mov         eax,dword ptr [ebp-4]
 005694A3    mov         eax,dword ptr [eax+3C4];TfmMain.miPortPrimary:TMenuItem
 005694A9    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005694AC    push        eax
 005694AD    mov         ecx,569888;'Primary'
 005694B2    mov         edx,569898;'SETTINGS'
 005694B7    mov         eax,dword ptr [ebp-0C]
 005694BA    mov         ebx,dword ptr [eax]
 005694BC    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005694BF    mov         eax,dword ptr [ebp-4]
 005694C2    mov         eax,dword ptr [eax+3C8];TfmMain.miPortSecondary:TMenuItem
 005694C8    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005694CB    push        eax
 005694CC    mov         ecx,5698AC;'Secondary'
 005694D1    mov         edx,569898;'SETTINGS'
 005694D6    mov         eax,dword ptr [ebp-0C]
 005694D9    mov         ebx,dword ptr [eax]
 005694DB    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005694DE    mov         eax,dword ptr [ebp-4]
 005694E1    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 005694E7    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005694EA    push        eax
 005694EB    mov         ecx,5698C0;'Custom'
 005694F0    mov         edx,569898;'SETTINGS'
 005694F5    mov         eax,dword ptr [ebp-0C]
 005694F8    mov         ebx,dword ptr [eax]
 005694FA    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005694FD    mov         eax,dword ptr [ebp-4]
 00569500    mov         eax,dword ptr [eax+41C];TfmMain.miPortUsb:TMenuItem
 00569506    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569509    push        eax
 0056950A    mov         ecx,5698D0;'USB'
 0056950F    mov         edx,569898;'SETTINGS'
 00569514    mov         eax,dword ptr [ebp-0C]
 00569517    mov         ebx,dword ptr [eax]
 00569519    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 0056951C    mov         eax,dword ptr [ebp-4]
 0056951F    mov         eax,dword ptr [eax+408];TfmMain.miAutoloadMap1:TMenuItem
 00569525    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569528    push        eax
 00569529    mov         ecx,5698DC;'AutoloadMap'
 0056952E    mov         edx,569898;'SETTINGS'
 00569533    mov         eax,dword ptr [ebp-0C]
 00569536    mov         ebx,dword ptr [eax]
 00569538    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 0056953B    mov         eax,dword ptr [ebp-4]
 0056953E    mov         eax,dword ptr [eax+3FC];TfmMain.miSafeMode:TMenuItem
 00569544    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569547    push        eax
 00569548    mov         ecx,5698F0;'SafeMode'
 0056954D    mov         edx,569898;'SETTINGS'
 00569552    mov         eax,dword ptr [ebp-0C]
 00569555    mov         ebx,dword ptr [eax]
 00569557    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 0056955A    mov         eax,dword ptr [ebp-4]
 0056955D    mov         eax,dword ptr [eax+3F8];TfmMain.miAutoCloseProgress:TMenuItem
 00569563    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569566    push        eax
 00569567    mov         ecx,569904;'AutoCloseProgress'
 0056956C    mov         edx,569898;'SETTINGS'
 00569571    mov         eax,dword ptr [ebp-0C]
 00569574    mov         ebx,dword ptr [eax]
 00569576    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 00569579    mov         eax,dword ptr [ebp-4]
 0056957C    mov         eax,dword ptr [eax+40C];TfmMain.miSound:TMenuItem
 00569582    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569585    push        eax
 00569586    mov         ecx,569920;'Sound'
 0056958B    mov         edx,569898;'SETTINGS'
 00569590    mov         eax,dword ptr [ebp-0C]
 00569593    mov         ebx,dword ptr [eax]
 00569595    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 00569598    mov         eax,dword ptr [ebp-4]
 0056959B    mov         eax,dword ptr [eax+3BC];TfmMain.miStayOnTop:TMenuItem
 005695A1    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005695A4    push        eax
 005695A5    mov         ecx,569930;'StayOnTop'
 005695AA    mov         edx,569898;'SETTINGS'
 005695AF    mov         eax,dword ptr [ebp-0C]
 005695B2    mov         ebx,dword ptr [eax]
 005695B4    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005695B7    mov         eax,dword ptr [ebp-4]
 005695BA    mov         eax,dword ptr [eax+3D4];TfmMain.miDontupdateLEDs1:TMenuItem
 005695C0    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005695C3    push        eax
 005695C4    mov         ecx,569944;'DontupdateLEDs'
 005695C9    mov         edx,569898;'SETTINGS'
 005695CE    mov         eax,dword ptr [ebp-0C]
 005695D1    mov         ebx,dword ptr [eax]
 005695D3    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005695D6    mov         eax,dword ptr [ebp-4]
 005695D9    mov         eax,dword ptr [eax+3F0];TfmMain.miLEDs1:TMenuItem
 005695DF    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005695E2    push        eax
 005695E3    mov         ecx,56995C;'3DLEDs'
 005695E8    mov         edx,569898;'SETTINGS'
 005695ED    mov         eax,dword ptr [ebp-0C]
 005695F0    mov         ebx,dword ptr [eax]
 005695F2    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 005695F5    mov         eax,dword ptr [ebp-4]
 005695F8    mov         eax,dword ptr [eax+3F4];TfmMain.miUnistalDriver:TMenuItem
 005695FE    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569601    push        eax
 00569602    mov         ecx,56996C;'UnistalDriver'
 00569607    mov         edx,569898;'SETTINGS'
 0056960C    mov         eax,dword ptr [ebp-0C]
 0056960F    mov         ebx,dword ptr [eax]
 00569611    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 00569614    mov         eax,dword ptr [ebp-4]
 00569617    mov         eax,dword ptr [eax+410];TfmMain.miUseTempDir:TMenuItem
 0056961D    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569620    push        eax
 00569621    mov         ecx,569984;'UseTempDir'
 00569626    mov         edx,569898;'SETTINGS'
 0056962B    mov         eax,dword ptr [ebp-0C]
 0056962E    mov         ebx,dword ptr [eax]
 00569630    call        dword ptr [ebx+14];TIniFile.sub_00449F00
 00569633    mov         eax,dword ptr [ebp-4]
 00569636    mov         eax,dword ptr [eax+3CC];TfmMain.miPortCustom:TMenuItem
 0056963C    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00569640    je          005696B8
 00569642    lea         ecx,[ebp-20]
 00569645    mov         eax,[0056E1D4];^gvar_0056DF14
 0056964A    movzx       eax,word ptr [eax]
 0056964D    mov         edx,4
 00569652    call        IntToHex
 00569657    mov         ecx,dword ptr [ebp-20]
 0056965A    lea         eax,[ebp-1C]
 0056965D    mov         edx,569998;'$'
 00569662    call        @LStrCat3
 00569667    mov         eax,dword ptr [ebp-1C]
 0056966A    push        eax
 0056966B    mov         ecx,5699A4;'BasePort'
 00569670    mov         edx,569898;'SETTINGS'
 00569675    mov         eax,dword ptr [ebp-0C]
 00569678    mov         ebx,dword ptr [eax]
 0056967A    call        dword ptr [ebx+4];TIniFile.sub_0044A2B4
 0056967D    lea         ecx,[ebp-28]
 00569680    mov         eax,[0056E494];^gvar_0056DF18
 00569685    movzx       eax,word ptr [eax]
 00569688    mov         edx,4
 0056968D    call        IntToHex
 00569692    mov         ecx,dword ptr [ebp-28]
 00569695    lea         eax,[ebp-24]
 00569698    mov         edx,569998;'$'
 0056969D    call        @LStrCat3
 005696A2    mov         eax,dword ptr [ebp-24]
 005696A5    push        eax
 005696A6    mov         ecx,5699B8;'Control'
 005696AB    mov         edx,569898;'SETTINGS'
 005696B0    mov         eax,dword ptr [ebp-0C]
 005696B3    mov         ebx,dword ptr [eax]
 005696B5    call        dword ptr [ebx+4];TIniFile.sub_0044A2B4
 005696B8    mov         eax,[0056DF34];0x0 gvar_0056DF34
 005696BD    mov         eax,dword ptr [eax+44]
 005696C0    push        eax
 005696C1    mov         ecx,5699C8;'MainTop'
 005696C6    mov         edx,569898;'SETTINGS'
 005696CB    mov         eax,dword ptr [ebp-0C]
 005696CE    mov         ebx,dword ptr [eax]
 005696D0    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005696D3    mov         eax,[0056DF34];0x0 gvar_0056DF34
 005696D8    mov         eax,dword ptr [eax+40]
 005696DB    push        eax
 005696DC    mov         ecx,5699D8;'MainLeft'
 005696E1    mov         edx,569898;'SETTINGS'
 005696E6    mov         eax,dword ptr [ebp-0C]
 005696E9    mov         ebx,dword ptr [eax]
 005696EB    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005696EE    mov         eax,[0056DF58];0x0 gvar_0056DF58:Integer
 005696F3    push        eax
 005696F4    mov         ecx,5699EC;'HddTop'
 005696F9    mov         edx,569898;'SETTINGS'
 005696FE    mov         eax,dword ptr [ebp-0C]
 00569701    mov         ebx,dword ptr [eax]
 00569703    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 00569706    mov         eax,[0056DF5C];0x0 gvar_0056DF5C:Integer
 0056970B    push        eax
 0056970C    mov         ecx,5699FC;'HddLeft'
 00569711    mov         edx,569898;'SETTINGS'
 00569716    mov         eax,dword ptr [ebp-0C]
 00569719    mov         ebx,dword ptr [eax]
 0056971B    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 0056971E    mov         eax,[0056DF60];0x0 gvar_0056DF60:Integer
 00569723    push        eax
 00569724    mov         ecx,569A0C;'HddHeight'
 00569729    mov         edx,569898;'SETTINGS'
 0056972E    mov         eax,dword ptr [ebp-0C]
 00569731    mov         ebx,dword ptr [eax]
 00569733    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 00569736    mov         eax,[0056DF64];0x0 gvar_0056DF64:Integer
 0056973B    push        eax
 0056973C    mov         ecx,569A20;'HddWidth'
 00569741    mov         edx,569898;'SETTINGS'
 00569746    mov         eax,dword ptr [ebp-0C]
 00569749    mov         ebx,dword ptr [eax]
 0056974B    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 0056974E    mov         eax,[0056DF68];0x0 gvar_0056DF68:Integer
 00569753    push        eax
 00569754    mov         ecx,569A34;'ModulesTop'
 00569759    mov         edx,569898;'SETTINGS'
 0056975E    mov         eax,dword ptr [ebp-0C]
 00569761    mov         ebx,dword ptr [eax]
 00569763    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 00569766    mov         eax,[0056DF6C];0x0 gvar_0056DF6C:Integer
 0056976B    push        eax
 0056976C    mov         ecx,569A48;'ModulesLeft'
 00569771    mov         edx,569898;'SETTINGS'
 00569776    mov         eax,dword ptr [ebp-0C]
 00569779    mov         ebx,dword ptr [eax]
 0056977B    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 0056977E    mov         eax,[0056DF70];0x0 gvar_0056DF70:Integer
 00569783    push        eax
 00569784    mov         ecx,569A5C;'ModulesHeight'
 00569789    mov         edx,569898;'SETTINGS'
 0056978E    mov         eax,dword ptr [ebp-0C]
 00569791    mov         ebx,dword ptr [eax]
 00569793    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 00569796    mov         eax,[0056DF74];0x0 gvar_0056DF74:Integer
 0056979B    push        eax
 0056979C    mov         ecx,569A74;'ModulesWidth'
 005697A1    mov         edx,569898;'SETTINGS'
 005697A6    mov         eax,dword ptr [ebp-0C]
 005697A9    mov         ebx,dword ptr [eax]
 005697AB    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005697AE    mov         eax,[0056DF78];0x0 gvar_0056DF78:Integer
 005697B3    push        eax
 005697B4    mov         ecx,569A8C;'ScanTop'
 005697B9    mov         edx,569898;'SETTINGS'
 005697BE    mov         eax,dword ptr [ebp-0C]
 005697C1    mov         ebx,dword ptr [eax]
 005697C3    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005697C6    mov         eax,[0056DF7C];0x0 gvar_0056DF7C:Integer
 005697CB    push        eax
 005697CC    mov         ecx,569A9C;'ScanLeft'
 005697D1    mov         edx,569898;'SETTINGS'
 005697D6    mov         eax,dword ptr [ebp-0C]
 005697D9    mov         ebx,dword ptr [eax]
 005697DB    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005697DE    mov         eax,[0056DF80];0x0 gvar_0056DF80:Integer
 005697E3    push        eax
 005697E4    mov         ecx,569AB0;'ScanHeight'
 005697E9    mov         edx,569898;'SETTINGS'
 005697EE    mov         eax,dword ptr [ebp-0C]
 005697F1    mov         ebx,dword ptr [eax]
 005697F3    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 005697F6    mov         eax,[0056DF84];0x0 gvar_0056DF84:Integer
 005697FB    push        eax
 005697FC    mov         ecx,569AC4;'ScanWidth'
 00569801    mov         edx,569898;'SETTINGS'
 00569806    mov         eax,dword ptr [ebp-0C]
 00569809    mov         ebx,dword ptr [eax]
 0056980B    call        dword ptr [ebx+0C];TIniFile.sub_004499BC
 0056980E    xor         eax,eax
 00569810    pop         edx
 00569811    pop         ecx
 00569812    pop         ecx
 00569813    mov         dword ptr fs:[eax],edx
 00569816    push        56982B
 0056981B    mov         eax,dword ptr [ebp-0C]
 0056981E    call        TObject.Free
 00569823    ret
>00569824    jmp         @HandleFinally
>00569829    jmp         0056981B
 0056982B    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00569830    cmp         byte ptr [eax],0
>00569833    je          00569842
 00569835    mov         eax,[0056E318];^gvar_0056CC30
 0056983A    mov         eax,dword ptr [eax]
 0056983C    push        eax
 0056983D    call        kernel32.CloseHandle
 00569842    mov         eax,dword ptr [ebp-8]
 00569845    mov         byte ptr [eax],2
 00569848    xor         eax,eax
 0056984A    pop         edx
 0056984B    pop         ecx
 0056984C    pop         ecx
 0056984D    mov         dword ptr fs:[eax],edx
 00569850    push        56986A
 00569855    lea         eax,[ebp-28]
 00569858    mov         edx,6
 0056985D    call        @LStrArrayClr
 00569862    ret
>00569863    jmp         @HandleFinally
>00569868    jmp         00569855
 0056986A    pop         ebx
 0056986B    mov         esp,ebp
 0056986D    pop         ebp
 0056986E    ret
*}
end;

//00569AD0
procedure TfmMain.btOffClick(Sender:TObject);
begin
{*
 00569AD0    push        ebp
 00569AD1    mov         ebp,esp
 00569AD3    add         esp,0FFFFFFF8
 00569AD6    mov         dword ptr [ebp-8],edx
 00569AD9    mov         dword ptr [ebp-4],eax
 00569ADC    mov         eax,[0056E5A4];^gvar_0056DF04
 00569AE1    mov         byte ptr [eax],1
 00569AE4    pop         ecx
 00569AE5    pop         ecx
 00569AE6    pop         ebp
 00569AE7    ret
*}
end;

//00569AE8
procedure TfmMain.miSafeModeClick(Sender:TObject);
begin
{*
 00569AE8    push        ebp
 00569AE9    mov         ebp,esp
 00569AEB    add         esp,0FFFFFFF8
 00569AEE    mov         dword ptr [ebp-8],edx
 00569AF1    mov         dword ptr [ebp-4],eax
 00569AF4    mov         eax,dword ptr [ebp-4]
 00569AF7    mov         eax,dword ptr [eax+3FC];TfmMain.miSafeMode:TMenuItem
 00569AFD    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 00569B00    mov         edx,dword ptr ds:[56E038];^gvar_0059F0AC:Boolean
 00569B06    mov         byte ptr [edx],al
 00569B08    pop         ecx
 00569B09    pop         ecx
 00569B0A    pop         ebp
 00569B0B    ret
*}
end;

//00569B0C
procedure TfmMain.FormPaint(Sender:TObject);
begin
{*
 00569B0C    push        ebp
 00569B0D    mov         ebp,esp
 00569B0F    add         esp,0FFFFFFF8
 00569B12    mov         dword ptr [ebp-8],edx
 00569B15    mov         dword ptr [ebp-4],eax
 00569B18    mov         eax,dword ptr [ebp-4]
 00569B1B    mov         eax,dword ptr [eax+3BC];TfmMain.miStayOnTop:TMenuItem
 00569B21    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00569B25    je          00569B43
 00569B27    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00569B2C    cmp         byte ptr [eax+22F],3
>00569B33    je          00569B5D
 00569B35    mov         dl,3
 00569B37    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00569B3C    call        TForm.SetFormStyle
>00569B41    jmp         00569B5D
 00569B43    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00569B48    cmp         byte ptr [eax+22F],0
>00569B4F    je          00569B5D
 00569B51    xor         edx,edx
 00569B53    mov         eax,[0056DF34];0x0 gvar_0056DF34
 00569B58    call        TForm.SetFormStyle
 00569B5D    pop         ecx
 00569B5E    pop         ecx
 00569B5F    pop         ebp
 00569B60    ret
*}
end;

//00569B64
procedure TfmMain.miUseTempDirClick(Sender:TObject);
begin
{*
 00569B64    push        ebp
 00569B65    mov         ebp,esp
 00569B67    xor         ecx,ecx
 00569B69    push        ecx
 00569B6A    push        ecx
 00569B6B    push        ecx
 00569B6C    push        ecx
 00569B6D    push        ecx
 00569B6E    push        ecx
 00569B6F    mov         dword ptr [ebp-8],edx
 00569B72    mov         dword ptr [ebp-4],eax
 00569B75    xor         eax,eax
 00569B77    push        ebp
 00569B78    push        569C25
 00569B7D    push        dword ptr fs:[eax]
 00569B80    mov         dword ptr fs:[eax],esp
 00569B83    mov         eax,dword ptr [ebp-4]
 00569B86    mov         eax,dword ptr [eax+410];TfmMain.miUseTempDir:TMenuItem
 00569B8C    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>00569B90    je          00569BAE
 00569B92    lea         edx,[ebp-0C]
 00569B95    mov         eax,[0056DF40];0x0 gvar_0056DF40
 00569B9A    call        004115C4
 00569B9F    mov         edx,dword ptr [ebp-0C]
 00569BA2    mov         eax,56DF38;gvar_0056DF38
 00569BA7    call        @LStrAsg
>00569BAC    jmp         00569C0A
 00569BAE    push        dword ptr ds:[56DF3C];gvar_0056DF3C
 00569BB4    lea         edx,[ebp-18]
 00569BB7    mov         eax,[0056DF50];0x0 gvar_0056DF50
 00569BBC    call        0040BFEC
 00569BC1    push        dword ptr [ebp-18]
 00569BC4    push        569C38;'\'
 00569BC9    push        dword ptr ds:[56DF44];gvar_0056DF44
 00569BCF    push        569C44;'_'
 00569BD4    push        dword ptr ds:[56DF48];gvar_0056DF48
 00569BDA    push        569C44;'_'
 00569BDF    push        dword ptr ds:[56DF4C];gvar_0056DF4C
 00569BE5    lea         eax,[ebp-14]
 00569BE8    mov         edx,8
 00569BED    call        @LStrCatN
 00569BF2    mov         eax,dword ptr [ebp-14]
 00569BF5    lea         edx,[ebp-10]
 00569BF8    call        004115C4
 00569BFD    mov         edx,dword ptr [ebp-10]
 00569C00    mov         eax,56DF38;gvar_0056DF38
 00569C05    call        @LStrAsg
 00569C0A    xor         eax,eax
 00569C0C    pop         edx
 00569C0D    pop         ecx
 00569C0E    pop         ecx
 00569C0F    mov         dword ptr fs:[eax],edx
 00569C12    push        569C2C
 00569C17    lea         eax,[ebp-18]
 00569C1A    mov         edx,4
 00569C1F    call        @LStrArrayClr
 00569C24    ret
>00569C25    jmp         @HandleFinally
>00569C2A    jmp         00569C17
 00569C2C    mov         esp,ebp
 00569C2E    pop         ebp
 00569C2F    ret
*}
end;

//00569C48
procedure TfmMain.gbStatusClick(Sender:TObject);
begin
{*
 00569C48    push        ebp
 00569C49    mov         ebp,esp
 00569C4B    add         esp,0FFFFFFE0
 00569C4E    xor         ecx,ecx
 00569C50    mov         dword ptr [ebp-20],ecx
 00569C53    mov         dword ptr [ebp-1C],ecx
 00569C56    mov         dword ptr [ebp-18],ecx
 00569C59    mov         dword ptr [ebp-14],ecx
 00569C5C    mov         dword ptr [ebp-10],edx
 00569C5F    mov         dword ptr [ebp-4],eax
 00569C62    xor         eax,eax
 00569C64    push        ebp
 00569C65    push        569E9E
 00569C6A    push        dword ptr fs:[eax]
 00569C6D    mov         dword ptr fs:[eax],esp
 00569C70    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00569C75    cmp         dword ptr [eax],0
>00569C78    je          00569C95
 00569C7A    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00569C7F    cmp         dword ptr [eax],0
>00569C82    je          00569C95
 00569C84    mov         eax,[0056E3F4];^gvar_0056CC34:TfmProgress
 00569C89    mov         eax,dword ptr [eax]
 00569C8B    cmp         byte ptr [eax+57],0;TfmProgress.FVisible:Boolean
>00569C8F    jne         00569E7B
 00569C95    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00569C9A    cmp         byte ptr [eax],0
>00569C9D    je          00569E21
 00569CA3    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00569CA8    cmp         byte ptr [eax],0
>00569CAB    je          00569CC1
 00569CAD    mov         eax,[0056E318];^gvar_0056CC30
 00569CB2    cmp         dword ptr [eax],0FFFFFFFF
>00569CB5    jne         00569CC1
 00569CB7    xor         edx,edx
 00569CB9    mov         eax,dword ptr [ebp-4]
 00569CBC    call        TfmMain.miPortUsbClick
 00569CC1    lea         eax,[ebp-8]
 00569CC4    push        eax
 00569CC5    lea         eax,[ebp-9]
 00569CC8    push        eax
 00569CC9    lea         eax,[ebp-0A]
 00569CCC    push        eax
 00569CCD    lea         eax,[ebp-0B]
 00569CD0    push        eax
 00569CD1    lea         ecx,[ebp-7]
 00569CD4    lea         edx,[ebp-6]
 00569CD7    lea         eax,[ebp-5]
 00569CDA    call        004CC194
 00569CDF    lea         ecx,[ebp-14]
 00569CE2    xor         eax,eax
 00569CE4    mov         al,byte ptr [ebp-0B]
 00569CE7    mov         edx,2
 00569CEC    call        IntToHex
 00569CF1    mov         edx,dword ptr [ebp-14]
 00569CF4    mov         eax,dword ptr [ebp-4]
 00569CF7    mov         eax,dword ptr [eax+334];TfmMain.gbStatus:TGroupBox
 00569CFD    add         eax,80;TGroupBox.Hint:String
 00569D02    call        @LStrAsg
 00569D07    lea         ecx,[ebp-18]
 00569D0A    xor         eax,eax
 00569D0C    mov         al,byte ptr [ebp-5]
 00569D0F    mov         edx,2
 00569D14    call        IntToHex
 00569D19    mov         edx,dword ptr [ebp-18]
 00569D1C    mov         eax,dword ptr [ebp-4]
 00569D1F    mov         eax,dword ptr [eax+378];TfmMain.gbError:TGroupBox
 00569D25    add         eax,80;TGroupBox.Hint:String
 00569D2A    call        @LStrAsg
 00569D2F    mov         al,byte ptr [ebp-0B]
 00569D32    and         al,1
 00569D34    cmp         al,1
 00569D36    mov         eax,[0056E3F8];^gvar_0059BF4C
 00569D3B    sete        byte ptr [eax]
 00569D3E    mov         al,byte ptr [ebp-0B]
 00569D41    and         al,2
 00569D43    cmp         al,2
 00569D45    mov         eax,[0056E140];^gvar_0059BF4D
 00569D4A    sete        byte ptr [eax]
 00569D4D    mov         al,byte ptr [ebp-0B]
 00569D50    and         al,4
 00569D52    cmp         al,4
 00569D54    mov         eax,[0056E628];^gvar_0059BF4E
 00569D59    sete        byte ptr [eax]
 00569D5C    mov         al,byte ptr [ebp-0B]
 00569D5F    and         al,8
 00569D61    cmp         al,8
 00569D63    mov         eax,[0056E2D8];^gvar_0059BF4F
 00569D68    sete        byte ptr [eax]
 00569D6B    mov         al,byte ptr [ebp-0B]
 00569D6E    and         al,10
 00569D70    cmp         al,10
 00569D72    mov         eax,[0056E0E8];^gvar_0059BF50
 00569D77    sete        byte ptr [eax]
 00569D7A    mov         al,byte ptr [ebp-0B]
 00569D7D    and         al,20
 00569D7F    cmp         al,20
 00569D81    mov         eax,[0056E5F0];^gvar_0059BF51
 00569D86    sete        byte ptr [eax]
 00569D89    mov         al,byte ptr [ebp-0B]
 00569D8C    and         al,40
 00569D8E    cmp         al,40
 00569D90    mov         eax,[0056E508];^gvar_0059BF52
 00569D95    sete        byte ptr [eax]
 00569D98    mov         al,byte ptr [ebp-0B]
 00569D9B    and         al,80
 00569D9D    cmp         al,80
 00569D9F    mov         eax,[0056E25C];^gvar_0059BF53
 00569DA4    sete        byte ptr [eax]
 00569DA7    mov         al,byte ptr [ebp-5]
 00569DAA    and         al,1
 00569DAC    cmp         al,1
 00569DAE    mov         eax,[0056E5EC];^gvar_0059BF5B
 00569DB3    sete        byte ptr [eax]
 00569DB6    mov         al,byte ptr [ebp-5]
 00569DB9    and         al,2
 00569DBB    cmp         al,2
 00569DBD    mov         eax,[0056E448];^gvar_0059BF5A
 00569DC2    sete        byte ptr [eax]
 00569DC5    mov         al,byte ptr [ebp-5]
 00569DC8    and         al,4
 00569DCA    cmp         al,4
 00569DCC    mov         eax,[0056E454];^gvar_0059BF59
 00569DD1    sete        byte ptr [eax]
 00569DD4    mov         al,byte ptr [ebp-5]
 00569DD7    and         al,8
 00569DD9    cmp         al,8
 00569DDB    mov         eax,[0056E274];^gvar_0059BF58
 00569DE0    sete        byte ptr [eax]
 00569DE3    mov         al,byte ptr [ebp-5]
 00569DE6    and         al,10
 00569DE8    cmp         al,10
 00569DEA    mov         eax,[0056E060];^gvar_0059BF57
 00569DEF    sete        byte ptr [eax]
 00569DF2    mov         al,byte ptr [ebp-5]
 00569DF5    and         al,20
 00569DF7    cmp         al,20
 00569DF9    mov         eax,[0056E08C];^gvar_0059BF56
 00569DFE    sete        byte ptr [eax]
 00569E01    mov         al,byte ptr [ebp-5]
 00569E04    and         al,40
 00569E06    cmp         al,40
 00569E08    mov         eax,[0056E5B0];^gvar_0059BF55
 00569E0D    sete        byte ptr [eax]
 00569E10    mov         al,byte ptr [ebp-5]
 00569E13    and         al,80
 00569E15    cmp         al,80
 00569E17    mov         eax,[0056DFBC];^gvar_0059BF54
 00569E1C    sete        byte ptr [eax]
>00569E1F    jmp         00569E7B
 00569E21    call        0055FE88
 00569E26    and         eax,0FF
 00569E2B    lea         ecx,[ebp-1C]
 00569E2E    mov         edx,2
 00569E33    call        IntToHex
 00569E38    mov         edx,dword ptr [ebp-1C]
 00569E3B    mov         eax,dword ptr [ebp-4]
 00569E3E    mov         eax,dword ptr [eax+334];TfmMain.gbStatus:TGroupBox
 00569E44    add         eax,80;TGroupBox.Hint:String
 00569E49    call        @LStrAsg
 00569E4E    call        0055FF28
 00569E53    and         eax,0FF
 00569E58    lea         ecx,[ebp-20]
 00569E5B    mov         edx,2
 00569E60    call        IntToHex
 00569E65    mov         edx,dword ptr [ebp-20]
 00569E68    mov         eax,dword ptr [ebp-4]
 00569E6B    mov         eax,dword ptr [eax+378];TfmMain.gbError:TGroupBox
 00569E71    add         eax,80;TGroupBox.Hint:String
 00569E76    call        @LStrAsg
 00569E7B    mov         eax,dword ptr [ebp-4]
 00569E7E    call        00567D38
 00569E83    xor         eax,eax
 00569E85    pop         edx
 00569E86    pop         ecx
 00569E87    pop         ecx
 00569E88    mov         dword ptr fs:[eax],edx
 00569E8B    push        569EA5
 00569E90    lea         eax,[ebp-20]
 00569E93    mov         edx,4
 00569E98    call        @LStrArrayClr
 00569E9D    ret
>00569E9E    jmp         @HandleFinally
>00569EA3    jmp         00569E90
 00569EA5    mov         esp,ebp
 00569EA7    pop         ebp
 00569EA8    ret
*}
end;

Initialization
Finalization
//00569EAC
{*
 00569EAC    push        ebp
 00569EAD    mov         ebp,esp
 00569EAF    xor         eax,eax
 00569EB1    push        ebp
 00569EB2    push        569F19
 00569EB7    push        dword ptr fs:[eax]
 00569EBA    mov         dword ptr fs:[eax],esp
 00569EBD    inc         dword ptr ds:[5AB050]
>00569EC3    jne         00569F0B
 00569EC5    mov         eax,56DF50;gvar_0056DF50
 00569ECA    call        @LStrClr
 00569ECF    mov         eax,56DF4C;gvar_0056DF4C
 00569ED4    call        @LStrClr
 00569ED9    mov         eax,56DF48;gvar_0056DF48
 00569EDE    call        @LStrClr
 00569EE3    mov         eax,56DF44;gvar_0056DF44
 00569EE8    call        @LStrClr
 00569EED    mov         eax,56DF40;gvar_0056DF40
 00569EF2    call        @LStrClr
 00569EF7    mov         eax,56DF3C;gvar_0056DF3C
 00569EFC    call        @LStrClr
 00569F01    mov         eax,56DF38;gvar_0056DF38
 00569F06    call        @LStrClr
 00569F0B    xor         eax,eax
 00569F0D    pop         edx
 00569F0E    pop         ecx
 00569F0F    pop         ecx
 00569F10    mov         dword ptr fs:[eax],edx
 00569F13    push        569F20
 00569F18    ret
>00569F19    jmp         @HandleFinally
>00569F1E    jmp         00569F18
 00569F20    pop         ebp
 00569F21    ret
*}
end.