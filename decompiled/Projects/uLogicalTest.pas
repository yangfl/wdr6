//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uLogicalTest;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls, ComCtrls;

type
  TfmLogicalTest = class(TForm)
  published
    btGo:TButton;//f2F8
    edStart:TLabeledEdit;//f2FC
    edEnd:TLabeledEdit;//f300
    cbBlock:TComboBox;//f304
    StaticText1:TStaticText;//f308
    pbLogical:TProgressBar;//f30C
    cbLBA48:TCheckBox;//f310
    edTimeOutB:TLabeledEdit;//f314
    StaticText2:TStaticText;//f318
    cbMakeAutoReassign:TCheckBox;//f31C
    laErrorCount:TLabel;//f320
    cbConsole:TCheckBox;//f324
    cbWrite:TCheckBox;//f328
    btGetMaxLba:TButton;//f32C
    GroupBox1:TGroupBox;//f330
    cbLoop:TCheckBox;//f334
    rbFormat:TRadioButton;//f338
    rbErase:TRadioButton;//f33C
    cbReset:TCheckBox;//f340
    cbScan:TCheckBox;//f344
    cbBlk:TCheckBox;//f348
    cbPriority:TCheckBox;//f34C
    laLba:TLabel;//f350
    laProcent:TLabel;//f354
    cbErase:TCheckBox;//f358
    edTimeOutS:TLabeledEdit;//f35C
    StaticText3:TStaticText;//f360
    rgSkin:TRadioGroup;//f364
    gbLegend:TGroupBox;//f368
    Image1:TImage;//f36C
    Image2:TImage;//f370
    Image3:TImage;//f374
    Image4:TImage;//f378
    Image5:TImage;//f37C
    Image6:TImage;//f380
    Image7:TImage;//f384
    Image8:TImage;//f388
    Image9:TImage;//f38C
    Image10:TImage;//f390
    Image11:TImage;//f394
    Image12:TImage;//f398
    Image13:TImage;//f39C
    StaticText4:TStaticText;//f3A0
    StaticText5:TStaticText;//f3A4
    StaticText6:TStaticText;//f3A8
    StaticText7:TStaticText;//f3AC
    StaticText8:TStaticText;//f3B0
    StaticText9:TStaticText;//f3B4
    StaticText10:TStaticText;//f3B8
    StaticText11:TStaticText;//f3BC
    StaticText12:TStaticText;//f3C0
    StaticText13:TStaticText;//f3C4
    StaticText14:TStaticText;//f3C8
    StaticText15:TStaticText;//f3CC
    StaticText16:TStaticText;//f3D0
    la1:TLabel;//f3D4
    la2:TLabel;//f3D8
    la3:TLabel;//f3DC
    la4:TLabel;//f3E0
    la5:TLabel;//f3E4
    la6:TLabel;//f3E8
    la7:TLabel;//f3EC
    la8:TLabel;//f3F0
    la9:TLabel;//f3F4
    la10:TLabel;//f3F8
    la11:TLabel;//f3FC
    la12:TLabel;//f400
    la13:TLabel;//f404
    procedure btGetMaxLbaClick(Sender:TObject);//0052E9B8
    procedure cbLoopClick(Sender:TObject);//0052EA4C
    procedure rgSkinClick(Sender:TObject);//0052EAC0
    procedure cbMakeAutoReassignClick(Sender:TObject);//0052E9A8
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0052C9E0
    procedure FormShow(Sender:TObject);//0052C7A0
    procedure btGoClick(Sender:TObject);//0052E4E0
  public
    f410:dword;//f410
    f414:dword;//f414
    f418:dword;//f418
    f41C:dword;//f41C
    f420:dword;//f420
    f424:dword;//f424
    f428:dword;//f428
    f42C:dword;//f42C
    f430:dword;//f430
    f434:dword;//f434
    f438:dword;//f438
    f43C:dword;//f43C
    f440:dword;//f440
    f444:dword;//f444
    f448:dword;//f448
    f44C:dword;//f44C
    f450:dword;//f450
    f454:dword;//f454
    f458:dword;//f458
    f45C:dword;//f45C
    f460:dword;//f460
    f464:dword;//f464
    f468:dword;//f468
    f46C:dword;//f46C
    f470:dword;//f470
    f474:dword;//f474
  end;
    procedure sub_0052C74C(?:TfmLogicalTest; ?:TfmHDD);//0052C74C
    //function sub_0052CA1C(?:?):?;//0052CA1C
    procedure sub_0052CEF0(?:TfmLogicalTest);//0052CEF0
    //function sub_0052E410:?;//0052E410

implementation

{$R *.DFM}

//0052C74C
procedure sub_0052C74C(?:TfmLogicalTest; ?:TfmHDD);
begin
{*
 0052C74C    push        ebp
 0052C74D    mov         ebp,esp
 0052C74F    add         esp,0FFFFFFF8
 0052C752    mov         dword ptr [ebp-8],edx
 0052C755    mov         dword ptr [ebp-4],eax
 0052C758    cmp         dword ptr ds:[56D4F8],0;gvar_0056D4F8:TfmLogicalTest
>0052C75F    jne         0052C775
 0052C761    mov         ecx,dword ptr [ebp-8]
 0052C764    mov         dl,1
 0052C766    mov         eax,[0052C12C];TfmLogicalTest
 0052C76B    call        TfmProgress.Create;TfmLogicalTest.Create
 0052C770    mov         [0056D4F8],eax;gvar_0056D4F8:TfmLogicalTest
 0052C775    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052C77A    cmp         byte ptr [eax+1A6],0;TfmLogicalTest.FShowing:Boolean
>0052C781    je          0052C792
 0052C783    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052C788    mov         edx,dword ptr [eax]
 0052C78A    call        dword ptr [edx+0C4];TfmLogicalTest.sub_004A746C
>0052C790    jmp         0052C79C
 0052C792    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052C797    call        004A7450
 0052C79C    pop         ecx
 0052C79D    pop         ecx
 0052C79E    pop         ebp
 0052C79F    ret
*}
end;

//0052C7A0
procedure TfmLogicalTest.FormShow(Sender:TObject);
begin
{*
 0052C7A0    push        ebp
 0052C7A1    mov         ebp,esp
 0052C7A3    xor         ecx,ecx
 0052C7A5    push        ecx
 0052C7A6    push        ecx
 0052C7A7    push        ecx
 0052C7A8    push        ecx
 0052C7A9    push        ecx
 0052C7AA    mov         dword ptr [ebp-8],edx
 0052C7AD    mov         dword ptr [ebp-4],eax
 0052C7B0    xor         eax,eax
 0052C7B2    push        ebp
 0052C7B3    push        52C9BC
 0052C7B8    push        dword ptr fs:[eax]
 0052C7BB    mov         dword ptr fs:[eax],esp
 0052C7BE    mov         eax,[0056E284];^gvar_0056DF34
 0052C7C3    mov         eax,dword ptr [eax]
 0052C7C5    mov         eax,dword ptr [eax+408]
 0052C7CB    cmp         byte ptr [eax+38],0
>0052C7CF    je          0052C815
 0052C7D1    mov         eax,[0056E4E4];^gvar_0056DE78
 0052C7D6    mov         edx,dword ptr [eax+4]
 0052C7D9    mov         eax,dword ptr [eax]
 0052C7DB    sub         eax,1
 0052C7DE    sbb         edx,0
 0052C7E1    push        edx
 0052C7E2    push        eax
 0052C7E3    lea         eax,[ebp-0C]
 0052C7E6    call        IntToStr
 0052C7EB    mov         edx,dword ptr [ebp-0C]
 0052C7EE    mov         eax,dword ptr [ebp-4]
 0052C7F1    mov         eax,dword ptr [eax+300];TfmLogicalTest.edEnd:TLabeledEdit
 0052C7F7    call        TPanel.SetCaption
 0052C7FC    mov         edx,dword ptr ds:[56E1C4];^gvar_0056DF08
 0052C802    mov         dl,byte ptr [edx]
 0052C804    mov         eax,dword ptr [ebp-4]
 0052C807    mov         eax,dword ptr [eax+310];TfmLogicalTest.cbLBA48:TCheckBox
 0052C80D    mov         ecx,dword ptr [eax]
 0052C80F    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0052C815    lea         edx,[ebp-14]
 0052C818    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052C81D    call        TPanel.GetCaption
 0052C822    push        dword ptr [ebp-14]
 0052C825    push        52C9D0;' '
 0052C82A    mov         eax,[0056E284];^gvar_0056DF34
 0052C82F    mov         eax,dword ptr [eax]
 0052C831    push        dword ptr [eax+420]
 0052C837    lea         eax,[ebp-10]
 0052C83A    mov         edx,3
 0052C83F    call        @LStrCatN
 0052C844    mov         edx,dword ptr [ebp-10]
 0052C847    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052C84C    call        TPanel.SetCaption
 0052C851    mov         eax,dword ptr [ebp-4]
 0052C854    mov         dword ptr [eax+410],0;TfmLogicalTest.?f410:dword
 0052C85E    mov         dword ptr [eax+414],0;TfmLogicalTest.?f414:dword
 0052C868    mov         eax,dword ptr [ebp-4]
 0052C86B    mov         dword ptr [eax+418],0;TfmLogicalTest.?f418:dword
 0052C875    mov         dword ptr [eax+41C],0;TfmLogicalTest.?f41C:dword
 0052C87F    mov         eax,dword ptr [ebp-4]
 0052C882    mov         dword ptr [eax+420],0;TfmLogicalTest.?f420:dword
 0052C88C    mov         dword ptr [eax+424],0;TfmLogicalTest.?f424:dword
 0052C896    mov         eax,dword ptr [ebp-4]
 0052C899    mov         dword ptr [eax+428],0;TfmLogicalTest.?f428:dword
 0052C8A3    mov         dword ptr [eax+42C],0;TfmLogicalTest.?f42C:dword
 0052C8AD    mov         eax,dword ptr [ebp-4]
 0052C8B0    mov         dword ptr [eax+430],0;TfmLogicalTest.?f430:dword
 0052C8BA    mov         dword ptr [eax+434],0;TfmLogicalTest.?f434:dword
 0052C8C4    mov         eax,dword ptr [ebp-4]
 0052C8C7    mov         dword ptr [eax+438],0;TfmLogicalTest.?f438:dword
 0052C8D1    mov         dword ptr [eax+43C],0;TfmLogicalTest.?f43C:dword
 0052C8DB    mov         eax,dword ptr [ebp-4]
 0052C8DE    mov         dword ptr [eax+440],0;TfmLogicalTest.?f440:dword
 0052C8E8    mov         dword ptr [eax+444],0;TfmLogicalTest.?f444:dword
 0052C8F2    mov         eax,dword ptr [ebp-4]
 0052C8F5    mov         dword ptr [eax+448],0;TfmLogicalTest.?f448:dword
 0052C8FF    mov         dword ptr [eax+44C],0;TfmLogicalTest.?f44C:dword
 0052C909    mov         eax,dword ptr [ebp-4]
 0052C90C    mov         dword ptr [eax+450],0;TfmLogicalTest.?f450:dword
 0052C916    mov         dword ptr [eax+454],0;TfmLogicalTest.?f454:dword
 0052C920    mov         eax,dword ptr [ebp-4]
 0052C923    mov         dword ptr [eax+458],0;TfmLogicalTest.?f458:dword
 0052C92D    mov         dword ptr [eax+45C],0;TfmLogicalTest.?f45C:dword
 0052C937    mov         eax,dword ptr [ebp-4]
 0052C93A    mov         dword ptr [eax+460],0;TfmLogicalTest.?f460:dword
 0052C944    mov         dword ptr [eax+464],0;TfmLogicalTest.?f464:dword
 0052C94E    mov         eax,dword ptr [ebp-4]
 0052C951    mov         dword ptr [eax+468],0;TfmLogicalTest.?f468:dword
 0052C95B    mov         dword ptr [eax+46C],0;TfmLogicalTest.?f46C:dword
 0052C965    mov         eax,dword ptr [ebp-4]
 0052C968    mov         dword ptr [eax+470],0;TfmLogicalTest.?f470:dword
 0052C972    mov         dword ptr [eax+474],0;TfmLogicalTest.?f474:dword
 0052C97C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052C981    cmp         byte ptr [eax],0
>0052C984    je          0052C999
 0052C986    mov         edx,52C9DC;'255'
 0052C98B    mov         eax,dword ptr [ebp-4]
 0052C98E    mov         eax,dword ptr [eax+304];TfmLogicalTest.cbBlock:TComboBox
 0052C994    call        TPanel.SetCaption
 0052C999    xor         eax,eax
 0052C99B    pop         edx
 0052C99C    pop         ecx
 0052C99D    pop         ecx
 0052C99E    mov         dword ptr fs:[eax],edx
 0052C9A1    push        52C9C3
 0052C9A6    lea         eax,[ebp-14]
 0052C9A9    mov         edx,2
 0052C9AE    call        @LStrArrayClr
 0052C9B3    lea         eax,[ebp-0C]
 0052C9B6    call        @LStrClr
 0052C9BB    ret
>0052C9BC    jmp         @HandleFinally
>0052C9C1    jmp         0052C9A6
 0052C9C3    mov         esp,ebp
 0052C9C5    pop         ebp
 0052C9C6    ret
*}
end;

//0052C9E0
procedure TfmLogicalTest.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0052C9E0    push        ebp
 0052C9E1    mov         ebp,esp
 0052C9E3    add         esp,0FFFFFFF4
 0052C9E6    mov         dword ptr [ebp-8],ecx
 0052C9E9    mov         dword ptr [ebp-0C],edx
 0052C9EC    mov         dword ptr [ebp-4],eax
 0052C9EF    push        20
 0052C9F1    call        kernel32.GetCurrentProcess
 0052C9F6    push        eax
 0052C9F7    call        kernel32.SetPriorityClass
 0052C9FC    push        0
 0052C9FE    call        kernel32.GetCurrentThread
 0052CA03    push        eax
 0052CA04    call        kernel32.SetThreadPriority
 0052CA09    mov         eax,dword ptr [ebp-8]
 0052CA0C    mov         byte ptr [eax],2
 0052CA0F    xor         eax,eax
 0052CA11    mov         [0056D4F8],eax;gvar_0056D4F8:TfmLogicalTest
 0052CA16    mov         esp,ebp
 0052CA18    pop         ebp
 0052CA19    ret
*}
end;

//0052CA1C
{*function sub_0052CA1C(?:?):?;
begin
 0052CA1C    push        ebp
 0052CA1D    mov         ebp,esp
 0052CA1F    mov         ecx,8
 0052CA24    push        0
 0052CA26    push        0
 0052CA28    dec         ecx
>0052CA29    jne         0052CA24
 0052CA2B    mov         dword ptr [ebp-4],eax
 0052CA2E    xor         eax,eax
 0052CA30    push        ebp
 0052CA31    push        52CEE1
 0052CA36    push        dword ptr fs:[eax]
 0052CA39    mov         dword ptr fs:[eax],esp
 0052CA3C    mov         dword ptr [ebp-0C],0C
 0052CA43    cmp         byte ptr ds:[597BDC],0;gvar_00597BDC
>0052CA4A    je          0052CA7F
 0052CA4C    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052CA51    cmp         dword ptr [eax],0
>0052CA54    je          0052CA67
 0052CA56    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052CA5B    mov         eax,dword ptr [eax]
 0052CA5D    mov         edx,6
 0052CA62    call        0052BD54
 0052CA67    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CA6C    add         dword ptr [eax+440],1;TfmLogicalTest.?f440:dword
 0052CA73    adc         dword ptr [eax+444],0
>0052CA7A    jmp         0052CC84
 0052CA7F    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052CA84    cmp         byte ptr [eax],0
>0052CA87    je          0052CB90
 0052CA8D    mov         eax,[0056DFBC];^gvar_0059BF54
 0052CA92    cmp         byte ptr [eax],0
>0052CA95    je          0052CAB1
 0052CA97    mov         dword ptr [ebp-0C],0C
 0052CA9E    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CAA3    add         dword ptr [eax+470],1;TfmLogicalTest.?f470:dword
 0052CAAA    adc         dword ptr [eax+474],0
 0052CAB1    mov         eax,[0056E08C];^gvar_0059BF56
 0052CAB6    cmp         byte ptr [eax],0
>0052CAB9    je          0052CAC2
 0052CABB    mov         dword ptr [ebp-0C],0D
 0052CAC2    mov         eax,[0056E274];^gvar_0059BF58
 0052CAC7    cmp         byte ptr [eax],0
>0052CACA    je          0052CAD3
 0052CACC    mov         dword ptr [ebp-0C],0E
 0052CAD3    mov         eax,[0056E448];^gvar_0059BF5A
 0052CAD8    cmp         byte ptr [eax],0
>0052CADB    je          0052CAF7
 0052CADD    mov         dword ptr [ebp-0C],0B
 0052CAE4    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CAE9    add         dword ptr [eax+468],1;TfmLogicalTest.?f468:dword
 0052CAF0    adc         dword ptr [eax+46C],0
 0052CAF7    mov         eax,[0056E5EC];^gvar_0059BF5B
 0052CAFC    cmp         byte ptr [eax],0
>0052CAFF    je          0052CB1B
 0052CB01    mov         dword ptr [ebp-0C],0A
 0052CB08    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CB0D    add         dword ptr [eax+460],1;TfmLogicalTest.?f460:dword
 0052CB14    adc         dword ptr [eax+464],0
 0052CB1B    mov         eax,[0056E060];^gvar_0059BF57
 0052CB20    cmp         byte ptr [eax],0
>0052CB23    je          0052CB3F
 0052CB25    mov         dword ptr [ebp-0C],9
 0052CB2C    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CB31    add         dword ptr [eax+458],1;TfmLogicalTest.?f458:dword
 0052CB38    adc         dword ptr [eax+45C],0
 0052CB3F    mov         eax,[0056E454];^gvar_0059BF59
 0052CB44    cmp         byte ptr [eax],0
>0052CB47    je          0052CB63
 0052CB49    mov         dword ptr [ebp-0C],8
 0052CB50    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CB55    add         dword ptr [eax+450],1;TfmLogicalTest.?f450:dword
 0052CB5C    adc         dword ptr [eax+454],0
 0052CB63    mov         eax,[0056E5B0];^gvar_0059BF55
 0052CB68    cmp         byte ptr [eax],0
>0052CB6B    je          0052CC6B
 0052CB71    mov         dword ptr [ebp-0C],7
 0052CB78    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CB7D    add         dword ptr [eax+448],1;TfmLogicalTest.?f448:dword
 0052CB84    adc         dword ptr [eax+44C],0
>0052CB8B    jmp         0052CC6B
 0052CB90    mov         eax,dword ptr [ebp-4]
 0052CB93    cmp         eax,32
>0052CB96    jge         0052CBA7
 0052CB98    sub         eax,14
>0052CB9B    jb          0052CBC4
 0052CB9D    sub         eax,1E
>0052CBA0    jb          0052CBE1
>0052CBA2    jmp         0052CC51
 0052CBA7    add         eax,0FFFFFFCE
 0052CBAA    sub         eax,96
>0052CBAF    jb          0052CBFD
 0052CBB1    sub         eax,12C
>0052CBB6    jb          0052CC19
 0052CBB8    sub         eax,1F5
>0052CBBD    jb          0052CC35
>0052CBBF    jmp         0052CC51
 0052CBC4    xor         eax,eax
 0052CBC6    mov         dword ptr [ebp-0C],eax
 0052CBC9    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CBCE    add         dword ptr [eax+410],1;TfmLogicalTest.?f410:dword
 0052CBD5    adc         dword ptr [eax+414],0
>0052CBDC    jmp         0052CC6B
 0052CBE1    mov         dword ptr [ebp-0C],1
 0052CBE8    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CBED    add         dword ptr [eax+418],1;TfmLogicalTest.?f418:dword
 0052CBF4    adc         dword ptr [eax+41C],0
>0052CBFB    jmp         0052CC6B
 0052CBFD    mov         dword ptr [ebp-0C],2
 0052CC04    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CC09    add         dword ptr [eax+420],1;TfmLogicalTest.?f420:dword
 0052CC10    adc         dword ptr [eax+424],0
>0052CC17    jmp         0052CC6B
 0052CC19    mov         dword ptr [ebp-0C],3
 0052CC20    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CC25    add         dword ptr [eax+428],1;TfmLogicalTest.?f428:dword
 0052CC2C    adc         dword ptr [eax+42C],0
>0052CC33    jmp         0052CC6B
 0052CC35    mov         dword ptr [ebp-0C],4
 0052CC3C    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CC41    add         dword ptr [eax+430],1;TfmLogicalTest.?f430:dword
 0052CC48    adc         dword ptr [eax+434],0
>0052CC4F    jmp         0052CC6B
 0052CC51    mov         dword ptr [ebp-0C],5
 0052CC58    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CC5D    add         dword ptr [eax+438],1;TfmLogicalTest.?f438:dword
 0052CC64    adc         dword ptr [eax+43C],0
 0052CC6B    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052CC70    cmp         dword ptr [eax],0
>0052CC73    je          0052CC84
 0052CC75    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052CC7A    mov         eax,dword ptr [eax]
 0052CC7C    mov         edx,dword ptr [ebp-0C]
 0052CC7F    call        0052BD54
 0052CC84    mov         eax,dword ptr [ebp-0C]
 0052CC87    mov         dword ptr [ebp-8],eax
 0052CC8A    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CC8F    push        dword ptr [eax+414];TfmLogicalTest.?f414:dword
 0052CC95    push        dword ptr [eax+410];TfmLogicalTest.?f410:dword
 0052CC9B    lea         eax,[ebp-10]
 0052CC9E    call        IntToStr
 0052CCA3    mov         edx,dword ptr [ebp-10]
 0052CCA6    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CCAB    mov         eax,dword ptr [eax+3D4];TfmLogicalTest.la1:TLabel
 0052CCB1    call        TPanel.SetCaption
 0052CCB6    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CCBB    push        dword ptr [eax+41C];TfmLogicalTest.?f41C:dword
 0052CCC1    push        dword ptr [eax+418];TfmLogicalTest.?f418:dword
 0052CCC7    lea         eax,[ebp-14]
 0052CCCA    call        IntToStr
 0052CCCF    mov         edx,dword ptr [ebp-14]
 0052CCD2    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CCD7    mov         eax,dword ptr [eax+3D8];TfmLogicalTest.la2:TLabel
 0052CCDD    call        TPanel.SetCaption
 0052CCE2    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CCE7    push        dword ptr [eax+424];TfmLogicalTest.?f424:dword
 0052CCED    push        dword ptr [eax+420];TfmLogicalTest.?f420:dword
 0052CCF3    lea         eax,[ebp-18]
 0052CCF6    call        IntToStr
 0052CCFB    mov         edx,dword ptr [ebp-18]
 0052CCFE    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD03    mov         eax,dword ptr [eax+3DC];TfmLogicalTest.la3:TLabel
 0052CD09    call        TPanel.SetCaption
 0052CD0E    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD13    push        dword ptr [eax+42C];TfmLogicalTest.?f42C:dword
 0052CD19    push        dword ptr [eax+428];TfmLogicalTest.?f428:dword
 0052CD1F    lea         eax,[ebp-1C]
 0052CD22    call        IntToStr
 0052CD27    mov         edx,dword ptr [ebp-1C]
 0052CD2A    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD2F    mov         eax,dword ptr [eax+3E0];TfmLogicalTest.la4:TLabel
 0052CD35    call        TPanel.SetCaption
 0052CD3A    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD3F    push        dword ptr [eax+434];TfmLogicalTest.?f434:dword
 0052CD45    push        dword ptr [eax+430];TfmLogicalTest.?f430:dword
 0052CD4B    lea         eax,[ebp-20]
 0052CD4E    call        IntToStr
 0052CD53    mov         edx,dword ptr [ebp-20]
 0052CD56    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD5B    mov         eax,dword ptr [eax+3E4];TfmLogicalTest.la5:TLabel
 0052CD61    call        TPanel.SetCaption
 0052CD66    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD6B    push        dword ptr [eax+43C];TfmLogicalTest.?f43C:dword
 0052CD71    push        dword ptr [eax+438];TfmLogicalTest.?f438:dword
 0052CD77    lea         eax,[ebp-24]
 0052CD7A    call        IntToStr
 0052CD7F    mov         edx,dword ptr [ebp-24]
 0052CD82    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD87    mov         eax,dword ptr [eax+3E8];TfmLogicalTest.la6:TLabel
 0052CD8D    call        TPanel.SetCaption
 0052CD92    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CD97    push        dword ptr [eax+444];TfmLogicalTest.?f444:dword
 0052CD9D    push        dword ptr [eax+440];TfmLogicalTest.?f440:dword
 0052CDA3    lea         eax,[ebp-28]
 0052CDA6    call        IntToStr
 0052CDAB    mov         edx,dword ptr [ebp-28]
 0052CDAE    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CDB3    mov         eax,dword ptr [eax+3EC];TfmLogicalTest.la7:TLabel
 0052CDB9    call        TPanel.SetCaption
 0052CDBE    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CDC3    push        dword ptr [eax+44C];TfmLogicalTest.?f44C:dword
 0052CDC9    push        dword ptr [eax+448];TfmLogicalTest.?f448:dword
 0052CDCF    lea         eax,[ebp-2C]
 0052CDD2    call        IntToStr
 0052CDD7    mov         edx,dword ptr [ebp-2C]
 0052CDDA    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CDDF    mov         eax,dword ptr [eax+3F0];TfmLogicalTest.la8:TLabel
 0052CDE5    call        TPanel.SetCaption
 0052CDEA    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CDEF    push        dword ptr [eax+454];TfmLogicalTest.?f454:dword
 0052CDF5    push        dword ptr [eax+450];TfmLogicalTest.?f450:dword
 0052CDFB    lea         eax,[ebp-30]
 0052CDFE    call        IntToStr
 0052CE03    mov         edx,dword ptr [ebp-30]
 0052CE06    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE0B    mov         eax,dword ptr [eax+3F4];TfmLogicalTest.la9:TLabel
 0052CE11    call        TPanel.SetCaption
 0052CE16    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE1B    push        dword ptr [eax+45C];TfmLogicalTest.?f45C:dword
 0052CE21    push        dword ptr [eax+458];TfmLogicalTest.?f458:dword
 0052CE27    lea         eax,[ebp-34]
 0052CE2A    call        IntToStr
 0052CE2F    mov         edx,dword ptr [ebp-34]
 0052CE32    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE37    mov         eax,dword ptr [eax+3F8];TfmLogicalTest.la10:TLabel
 0052CE3D    call        TPanel.SetCaption
 0052CE42    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE47    push        dword ptr [eax+464];TfmLogicalTest.?f464:dword
 0052CE4D    push        dword ptr [eax+460];TfmLogicalTest.?f460:dword
 0052CE53    lea         eax,[ebp-38]
 0052CE56    call        IntToStr
 0052CE5B    mov         edx,dword ptr [ebp-38]
 0052CE5E    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE63    mov         eax,dword ptr [eax+3FC];TfmLogicalTest.la11:TLabel
 0052CE69    call        TPanel.SetCaption
 0052CE6E    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE73    push        dword ptr [eax+46C];TfmLogicalTest.?f46C:dword
 0052CE79    push        dword ptr [eax+468];TfmLogicalTest.?f468:dword
 0052CE7F    lea         eax,[ebp-3C]
 0052CE82    call        IntToStr
 0052CE87    mov         edx,dword ptr [ebp-3C]
 0052CE8A    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE8F    mov         eax,dword ptr [eax+400];TfmLogicalTest.la12:TLabel
 0052CE95    call        TPanel.SetCaption
 0052CE9A    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CE9F    push        dword ptr [eax+474];TfmLogicalTest.?f474:dword
 0052CEA5    push        dword ptr [eax+470];TfmLogicalTest.?f470:dword
 0052CEAB    lea         eax,[ebp-40]
 0052CEAE    call        IntToStr
 0052CEB3    mov         edx,dword ptr [ebp-40]
 0052CEB6    mov         eax,[0056D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052CEBB    mov         eax,dword ptr [eax+404];TfmLogicalTest.la13:TLabel
 0052CEC1    call        TPanel.SetCaption
 0052CEC6    xor         eax,eax
 0052CEC8    pop         edx
 0052CEC9    pop         ecx
 0052CECA    pop         ecx
 0052CECB    mov         dword ptr fs:[eax],edx
 0052CECE    push        52CEE8
 0052CED3    lea         eax,[ebp-40]
 0052CED6    mov         edx,0D
 0052CEDB    call        @LStrArrayClr
 0052CEE0    ret
>0052CEE1    jmp         @HandleFinally
>0052CEE6    jmp         0052CED3
 0052CEE8    mov         eax,dword ptr [ebp-8]
 0052CEEB    mov         esp,ebp
 0052CEED    pop         ebp
 0052CEEE    ret
end;*}

//0052CEF0
procedure sub_0052CEF0(?:TfmLogicalTest);
begin
{*
 0052CEF0    push        ebp
 0052CEF1    mov         ebp,esp
 0052CEF3    mov         ecx,23
 0052CEF8    push        0
 0052CEFA    push        0
 0052CEFC    dec         ecx
>0052CEFD    jne         0052CEF8
 0052CEFF    push        ecx
 0052CF00    mov         dword ptr [ebp-4],eax
 0052CF03    xor         eax,eax
 0052CF05    push        ebp
 0052CF06    push        52E22C
 0052CF0B    push        dword ptr fs:[eax]
 0052CF0E    mov         dword ptr fs:[eax],esp
 0052CF11    mov         eax,[0056E5A4];^gvar_0056DF04
 0052CF16    mov         byte ptr [eax],0
 0052CF19    mov         eax,dword ptr [ebp-4]
 0052CF1C    mov         dword ptr [eax+410],0
 0052CF26    mov         dword ptr [eax+414],0
 0052CF30    mov         eax,dword ptr [ebp-4]
 0052CF33    mov         dword ptr [eax+418],0
 0052CF3D    mov         dword ptr [eax+41C],0
 0052CF47    mov         eax,dword ptr [ebp-4]
 0052CF4A    mov         dword ptr [eax+420],0
 0052CF54    mov         dword ptr [eax+424],0
 0052CF5E    mov         eax,dword ptr [ebp-4]
 0052CF61    mov         dword ptr [eax+428],0
 0052CF6B    mov         dword ptr [eax+42C],0
 0052CF75    mov         eax,dword ptr [ebp-4]
 0052CF78    mov         dword ptr [eax+430],0
 0052CF82    mov         dword ptr [eax+434],0
 0052CF8C    mov         eax,dword ptr [ebp-4]
 0052CF8F    mov         dword ptr [eax+438],0
 0052CF99    mov         dword ptr [eax+43C],0
 0052CFA3    mov         eax,dword ptr [ebp-4]
 0052CFA6    mov         dword ptr [eax+440],0
 0052CFB0    mov         dword ptr [eax+444],0
 0052CFBA    mov         eax,dword ptr [ebp-4]
 0052CFBD    mov         dword ptr [eax+448],0
 0052CFC7    mov         dword ptr [eax+44C],0
 0052CFD1    mov         eax,dword ptr [ebp-4]
 0052CFD4    mov         dword ptr [eax+450],0
 0052CFDE    mov         dword ptr [eax+454],0
 0052CFE8    mov         eax,dword ptr [ebp-4]
 0052CFEB    mov         dword ptr [eax+458],0
 0052CFF5    mov         dword ptr [eax+45C],0
 0052CFFF    mov         eax,dword ptr [ebp-4]
 0052D002    mov         dword ptr [eax+460],0
 0052D00C    mov         dword ptr [eax+464],0
 0052D016    mov         eax,dword ptr [ebp-4]
 0052D019    mov         dword ptr [eax+468],0
 0052D023    mov         dword ptr [eax+46C],0
 0052D02D    mov         eax,dword ptr [ebp-4]
 0052D030    mov         dword ptr [eax+470],0
 0052D03A    mov         dword ptr [eax+474],0
 0052D044    lea         edx,[ebp-88]
 0052D04A    mov         eax,dword ptr [ebp-4]
 0052D04D    mov         eax,dword ptr [eax+2FC]
 0052D053    call        TPanel.GetCaption
 0052D058    mov         edx,dword ptr [ebp-88]
 0052D05E    mov         eax,52E244;'%'
 0052D063    call        @LStrPos
 0052D068    test        eax,eax
>0052D06A    jle         0052D10B
 0052D070    lea         eax,[ebp-84]
 0052D076    push        eax
 0052D077    lea         edx,[ebp-8C]
 0052D07D    mov         eax,dword ptr [ebp-4]
 0052D080    mov         eax,dword ptr [eax+2FC]
 0052D086    call        TPanel.GetCaption
 0052D08B    mov         edx,dword ptr [ebp-8C]
 0052D091    mov         eax,52E244;'%'
 0052D096    call        @LStrPos
 0052D09B    dec         eax
 0052D09C    push        eax
 0052D09D    lea         edx,[ebp-90]
 0052D0A3    mov         eax,dword ptr [ebp-4]
 0052D0A6    mov         eax,dword ptr [eax+2FC]
 0052D0AC    call        TPanel.GetCaption
 0052D0B1    mov         eax,dword ptr [ebp-90]
 0052D0B7    mov         edx,1
 0052D0BC    pop         ecx
 0052D0BD    call        @LStrCopy
 0052D0C2    push        0
 0052D0C4    push        64
 0052D0C6    xor         edx,edx
 0052D0C8    mov         eax,dword ptr [ebp-84]
 0052D0CE    call        0040C4A8
 0052D0D3    cdq
 0052D0D4    push        edx
 0052D0D5    push        eax
 0052D0D6    mov         eax,[0056E4E4];^gvar_0056DE78
 0052D0DB    mov         edx,dword ptr [eax+4]
 0052D0DE    mov         eax,dword ptr [eax]
 0052D0E0    call        @_llmul
 0052D0E5    call        @_lldiv
 0052D0EA    push        edx
 0052D0EB    push        eax
 0052D0EC    lea         eax,[ebp-94]
 0052D0F2    call        IntToStr
 0052D0F7    mov         edx,dword ptr [ebp-94]
 0052D0FD    mov         eax,dword ptr [ebp-4]
 0052D100    mov         eax,dword ptr [eax+2FC]
 0052D106    call        TPanel.SetCaption
 0052D10B    lea         edx,[ebp-98]
 0052D111    mov         eax,dword ptr [ebp-4]
 0052D114    mov         eax,dword ptr [eax+300]
 0052D11A    call        TPanel.GetCaption
 0052D11F    mov         edx,dword ptr [ebp-98]
 0052D125    mov         eax,52E244;'%'
 0052D12A    call        @LStrPos
 0052D12F    test        eax,eax
>0052D131    jle         0052D1D2
 0052D137    lea         eax,[ebp-84]
 0052D13D    push        eax
 0052D13E    lea         edx,[ebp-9C]
 0052D144    mov         eax,dword ptr [ebp-4]
 0052D147    mov         eax,dword ptr [eax+300]
 0052D14D    call        TPanel.GetCaption
 0052D152    mov         edx,dword ptr [ebp-9C]
 0052D158    mov         eax,52E244;'%'
 0052D15D    call        @LStrPos
 0052D162    dec         eax
 0052D163    push        eax
 0052D164    lea         edx,[ebp-0A0]
 0052D16A    mov         eax,dword ptr [ebp-4]
 0052D16D    mov         eax,dword ptr [eax+300]
 0052D173    call        TPanel.GetCaption
 0052D178    mov         eax,dword ptr [ebp-0A0]
 0052D17E    mov         edx,1
 0052D183    pop         ecx
 0052D184    call        @LStrCopy
 0052D189    push        0
 0052D18B    push        64
 0052D18D    xor         edx,edx
 0052D18F    mov         eax,dword ptr [ebp-84]
 0052D195    call        0040C4A8
 0052D19A    cdq
 0052D19B    push        edx
 0052D19C    push        eax
 0052D19D    mov         eax,[0056E4E4];^gvar_0056DE78
 0052D1A2    mov         edx,dword ptr [eax+4]
 0052D1A5    mov         eax,dword ptr [eax]
 0052D1A7    call        @_llmul
 0052D1AC    call        @_lldiv
 0052D1B1    push        edx
 0052D1B2    push        eax
 0052D1B3    lea         eax,[ebp-0A4]
 0052D1B9    call        IntToStr
 0052D1BE    mov         edx,dword ptr [ebp-0A4]
 0052D1C4    mov         eax,dword ptr [ebp-4]
 0052D1C7    mov         eax,dword ptr [eax+300]
 0052D1CD    call        TPanel.SetCaption
 0052D1D2    lea         edx,[ebp-0A8]
 0052D1D8    mov         eax,dword ptr [ebp-4]
 0052D1DB    mov         eax,dword ptr [eax+2FC]
 0052D1E1    call        TPanel.GetCaption
 0052D1E6    mov         edx,dword ptr [ebp-0A8]
 0052D1EC    mov         eax,52E250;'G'
 0052D1F1    call        @LStrPos
 0052D1F6    test        eax,eax
>0052D1F8    jle         0052D282
 0052D1FE    lea         eax,[ebp-84]
 0052D204    push        eax
 0052D205    lea         edx,[ebp-0AC]
 0052D20B    mov         eax,dword ptr [ebp-4]
 0052D20E    mov         eax,dword ptr [eax+2FC]
 0052D214    call        TPanel.GetCaption
 0052D219    mov         edx,dword ptr [ebp-0AC]
 0052D21F    mov         eax,52E250;'G'
 0052D224    call        @LStrPos
 0052D229    dec         eax
 0052D22A    push        eax
 0052D22B    lea         edx,[ebp-0B0]
 0052D231    mov         eax,dword ptr [ebp-4]
 0052D234    mov         eax,dword ptr [eax+2FC]
 0052D23A    call        TPanel.GetCaption
 0052D23F    mov         eax,dword ptr [ebp-0B0]
 0052D245    mov         edx,1
 0052D24A    pop         ecx
 0052D24B    call        @LStrCopy
 0052D250    xor         edx,edx
 0052D252    mov         eax,dword ptr [ebp-84]
 0052D258    call        0040C4A8
 0052D25D    imul        eax,eax,1DCF0A
 0052D263    lea         edx,[ebp-0B4]
 0052D269    call        IntToStr
 0052D26E    mov         edx,dword ptr [ebp-0B4]
 0052D274    mov         eax,dword ptr [ebp-4]
 0052D277    mov         eax,dword ptr [eax+2FC]
 0052D27D    call        TPanel.SetCaption
 0052D282    lea         edx,[ebp-0B8]
 0052D288    mov         eax,dword ptr [ebp-4]
 0052D28B    mov         eax,dword ptr [eax+300]
 0052D291    call        TPanel.GetCaption
 0052D296    mov         edx,dword ptr [ebp-0B8]
 0052D29C    mov         eax,52E250;'G'
 0052D2A1    call        @LStrPos
 0052D2A6    test        eax,eax
>0052D2A8    jle         0052D332
 0052D2AE    lea         eax,[ebp-84]
 0052D2B4    push        eax
 0052D2B5    lea         edx,[ebp-0BC]
 0052D2BB    mov         eax,dword ptr [ebp-4]
 0052D2BE    mov         eax,dword ptr [eax+300]
 0052D2C4    call        TPanel.GetCaption
 0052D2C9    mov         edx,dword ptr [ebp-0BC]
 0052D2CF    mov         eax,52E250;'G'
 0052D2D4    call        @LStrPos
 0052D2D9    dec         eax
 0052D2DA    push        eax
 0052D2DB    lea         edx,[ebp-0C0]
 0052D2E1    mov         eax,dword ptr [ebp-4]
 0052D2E4    mov         eax,dword ptr [eax+300]
 0052D2EA    call        TPanel.GetCaption
 0052D2EF    mov         eax,dword ptr [ebp-0C0]
 0052D2F5    mov         edx,1
 0052D2FA    pop         ecx
 0052D2FB    call        @LStrCopy
 0052D300    xor         edx,edx
 0052D302    mov         eax,dword ptr [ebp-84]
 0052D308    call        0040C4A8
 0052D30D    imul        eax,eax,1DCF0A
 0052D313    lea         edx,[ebp-0C4]
 0052D319    call        IntToStr
 0052D31E    mov         edx,dword ptr [ebp-0C4]
 0052D324    mov         eax,dword ptr [ebp-4]
 0052D327    mov         eax,dword ptr [eax+300]
 0052D32D    call        TPanel.SetCaption
 0052D332    mov         eax,[0056E4E4];^gvar_0056DE78
 0052D337    cmp         dword ptr [eax+4],0
>0052D33B    jne         0052D348
 0052D33D    cmp         dword ptr [eax],0
>0052D340    jbe         0052D41C
>0052D346    jmp         0052D34E
>0052D348    jle         0052D41C
 0052D34E    push        0
 0052D350    push        0
 0052D352    lea         edx,[ebp-0C8]
 0052D358    mov         eax,dword ptr [ebp-4]
 0052D35B    mov         eax,dword ptr [eax+2FC]
 0052D361    call        TPanel.GetCaption
 0052D366    mov         eax,dword ptr [ebp-0C8]
 0052D36C    call        0040C504
 0052D371    mov         ecx,dword ptr ds:[56E4E4];^gvar_0056DE78
 0052D377    cmp         edx,dword ptr [ecx+4]
>0052D37A    jne         0052D382
 0052D37C    cmp         eax,dword ptr [ecx]
>0052D37E    jb          0052D3B5
>0052D380    jmp         0052D384
>0052D382    jl          0052D3B5
 0052D384    mov         eax,[0056E4E4];^gvar_0056DE78
 0052D389    mov         edx,dword ptr [eax+4]
 0052D38C    mov         eax,dword ptr [eax]
 0052D38E    sub         eax,1
 0052D391    sbb         edx,0
 0052D394    push        edx
 0052D395    push        eax
 0052D396    lea         eax,[ebp-0CC]
 0052D39C    call        IntToStr
 0052D3A1    mov         edx,dword ptr [ebp-0CC]
 0052D3A7    mov         eax,dword ptr [ebp-4]
 0052D3AA    mov         eax,dword ptr [eax+2FC]
 0052D3B0    call        TPanel.SetCaption
 0052D3B5    push        0
 0052D3B7    push        0
 0052D3B9    lea         edx,[ebp-0D0]
 0052D3BF    mov         eax,dword ptr [ebp-4]
 0052D3C2    mov         eax,dword ptr [eax+300]
 0052D3C8    call        TPanel.GetCaption
 0052D3CD    mov         eax,dword ptr [ebp-0D0]
 0052D3D3    call        0040C504
 0052D3D8    mov         ecx,dword ptr ds:[56E4E4];^gvar_0056DE78
 0052D3DE    cmp         edx,dword ptr [ecx+4]
>0052D3E1    jne         0052D3E9
 0052D3E3    cmp         eax,dword ptr [ecx]
>0052D3E5    jb          0052D41C
>0052D3E7    jmp         0052D3EB
>0052D3E9    jl          0052D41C
 0052D3EB    mov         eax,[0056E4E4];^gvar_0056DE78
 0052D3F0    mov         edx,dword ptr [eax+4]
 0052D3F3    mov         eax,dword ptr [eax]
 0052D3F5    sub         eax,1
 0052D3F8    sbb         edx,0
 0052D3FB    push        edx
 0052D3FC    push        eax
 0052D3FD    lea         eax,[ebp-0D4]
 0052D403    call        IntToStr
 0052D408    mov         edx,dword ptr [ebp-0D4]
 0052D40E    mov         eax,dword ptr [ebp-4]
 0052D411    mov         eax,dword ptr [eax+300]
 0052D417    call        TPanel.SetCaption
 0052D41C    push        0
 0052D41E    push        1
 0052D420    lea         edx,[ebp-0D8]
 0052D426    mov         eax,dword ptr [ebp-4]
 0052D429    mov         eax,dword ptr [eax+2FC]
 0052D42F    call        TPanel.GetCaption
 0052D434    mov         eax,dword ptr [ebp-0D8]
 0052D43A    call        0040C504
 0052D43F    mov         dword ptr [ebp-30],eax
 0052D442    mov         dword ptr [ebp-2C],edx
 0052D445    push        0
 0052D447    push        1
 0052D449    lea         edx,[ebp-0DC]
 0052D44F    mov         eax,dword ptr [ebp-4]
 0052D452    mov         eax,dword ptr [eax+300]
 0052D458    call        TPanel.GetCaption
 0052D45D    mov         eax,dword ptr [ebp-0DC]
 0052D463    call        0040C504
 0052D468    sub         eax,1
 0052D46B    sbb         edx,0
 0052D46E    mov         dword ptr [ebp-38],eax
 0052D471    mov         dword ptr [ebp-34],edx
 0052D474    lea         edx,[ebp-0E0]
 0052D47A    mov         eax,dword ptr [ebp-4]
 0052D47D    mov         eax,dword ptr [eax+304]
 0052D483    call        TPanel.GetCaption
 0052D488    mov         eax,dword ptr [ebp-0E0]
 0052D48E    mov         edx,100
 0052D493    call        0040C4A8
 0052D498    mov         word ptr [ebp-3A],ax
 0052D49C    mov         eax,dword ptr [ebp-4]
 0052D49F    mov         eax,dword ptr [eax+310]
 0052D4A5    mov         edx,dword ptr [eax]
 0052D4A7    call        dword ptr [edx+0C8]
 0052D4AD    mov         byte ptr [ebp-3D],al
 0052D4B0    mov         eax,dword ptr [ebp-4]
 0052D4B3    mov         eax,dword ptr [eax+328]
 0052D4B9    mov         edx,dword ptr [eax]
 0052D4BB    call        dword ptr [edx+0C8]
 0052D4C1    mov         byte ptr [ebp-3B],al
 0052D4C4    mov         eax,dword ptr [ebp-4]
 0052D4C7    mov         eax,dword ptr [eax+31C]
 0052D4CD    mov         edx,dword ptr [eax]
 0052D4CF    call        dword ptr [edx+0C8]
 0052D4D5    mov         byte ptr [ebp-3C],al
 0052D4D8    lea         edx,[ebp-0E4]
 0052D4DE    mov         eax,dword ptr [ebp-4]
 0052D4E1    mov         eax,dword ptr [eax+314]
 0052D4E7    call        TPanel.GetCaption
 0052D4EC    mov         eax,dword ptr [ebp-0E4]
 0052D4F2    mov         edx,32
 0052D4F7    call        0040C4A8
 0052D4FC    mov         dword ptr [ebp-44],eax
 0052D4FF    lea         edx,[ebp-0E8]
 0052D505    mov         eax,dword ptr [ebp-4]
 0052D508    mov         eax,dword ptr [eax+35C]
 0052D50E    call        TPanel.GetCaption
 0052D513    mov         eax,dword ptr [ebp-0E8]
 0052D519    mov         edx,32
 0052D51E    call        0040C4A8
 0052D523    mov         dword ptr [ebp-48],eax
 0052D526    mov         eax,dword ptr [ebp-4]
 0052D529    mov         eax,dword ptr [eax+324]
 0052D52F    mov         edx,dword ptr [eax]
 0052D531    call        dword ptr [edx+0C8]
 0052D537    mov         byte ptr [ebp-75],al
 0052D53A    lea         eax,[ebp-10]
 0052D53D    push        eax
 0052D53E    call        kernel32.QueryPerformanceFrequency
 0052D543    test        eax,eax
>0052D545    je          0052E143
 0052D54B    mov         byte ptr ds:[597BE4],0B0;gvar_00597BE4
 0052D552    mov         byte ptr ds:[597C30],7;gvar_00597C30
 0052D559    mov         eax,597BF4;gvar_00597BF4:array[15] of ?
 0052D55E    mov         edx,52E25C;' <  20 ms'
 0052D563    call        @LStrAsg
 0052D568    mov         byte ptr ds:[597BE5],0B1;gvar_00597BE5
 0052D56F    mov         byte ptr ds:[597C31],7;gvar_00597C31
 0052D576    mov         eax,597BF8
 0052D57B    mov         edx,52E270;' <  50 ms'
 0052D580    call        @LStrAsg
 0052D585    mov         byte ptr ds:[597BE6],0B2;gvar_00597BE6
 0052D58C    mov         byte ptr ds:[597C32],7;gvar_00597C32
 0052D593    mov         eax,597BFC
 0052D598    mov         edx,52E284;' < 200 ms'
 0052D59D    call        @LStrAsg
 0052D5A2    mov         byte ptr ds:[597BE7],0DB;gvar_00597BE7
 0052D5A9    mov         byte ptr ds:[597C33],0E;gvar_00597C33
 0052D5B0    mov         eax,597C00
 0052D5B5    mov         edx,52E298;' < 500 ms'
 0052D5BA    call        @LStrAsg
 0052D5BF    mov         byte ptr ds:[597BE8],0DB;gvar_00597BE8
 0052D5C6    mov         byte ptr ds:[597C34],0A;gvar_00597C34
 0052D5CD    mov         eax,597C04
 0052D5D2    mov         edx,52E2AC;' < 1 sec'
 0052D5D7    call        @LStrAsg
 0052D5DC    mov         byte ptr ds:[597BE9],0DB;gvar_00597BE9
 0052D5E3    mov         byte ptr ds:[597C35],0C;gvar_00597C35
 0052D5EA    mov         eax,597C08
 0052D5EF    mov         edx,52E2C0;' > 1 sec'
 0052D5F4    call        @LStrAsg
 0052D5F9    mov         byte ptr ds:[597BEA],54;gvar_00597BEA
 0052D600    mov         byte ptr ds:[597C36],4;gvar_00597C36
 0052D607    mov         eax,597C0C
 0052D60C    mov         edx,52E2D4;' > TIME'
 0052D611    call        @LStrAsg
 0052D616    mov         byte ptr ds:[597BEB],78;gvar_00597BEB
 0052D61D    mov         byte ptr ds:[597C37],0C;gvar_00597C37
 0052D624    mov         eax,597C10
 0052D629    mov         edx,52E2E4;' = UNC '
 0052D62E    call        @LStrAsg
 0052D633    mov         byte ptr ds:[597BEC],21;gvar_00597BEC
 0052D63A    mov         byte ptr ds:[597C38],5;gvar_00597C38
 0052D641    mov         eax,597C14
 0052D646    mov         edx,52E2F4;' = ABRT'
 0052D64B    call        @LStrAsg
 0052D650    mov         byte ptr ds:[597BED],53;gvar_00597BED
 0052D657    mov         byte ptr ds:[597C39],6;gvar_00597C39
 0052D65E    mov         eax,597C18
 0052D663    mov         edx,52E304;' = IDNF'
 0052D668    call        @LStrAsg
 0052D66D    mov         byte ptr ds:[597BEE],41;gvar_00597BEE
 0052D674    mov         byte ptr ds:[597C3A],9;gvar_00597C3A
 0052D67B    mov         eax,597C1C
 0052D680    mov         edx,52E314;' = AMNF'
 0052D685    call        @LStrAsg
 0052D68A    mov         byte ptr ds:[597BEF],30;gvar_00597BEF
 0052D691    mov         byte ptr ds:[597C3B],5;gvar_00597C3B
 0052D698    mov         eax,597C20
 0052D69D    mov         edx,52E324;' = T0NF'
 0052D6A2    call        @LStrAsg
 0052D6A7    mov         byte ptr ds:[597BF0],2A;gvar_00597BF0
 0052D6AE    mov         byte ptr ds:[597C3C],5;gvar_00597C3C
 0052D6B5    mov         eax,597C24
 0052D6BA    mov         edx,52E334;' = BBK '
 0052D6BF    call        @LStrAsg
 0052D6C4    mov         byte ptr ds:[597BF1],24;gvar_00597BF1
 0052D6CB    mov         byte ptr ds:[597C3D],5;gvar_00597C3D
 0052D6D2    mov         eax,597C28
 0052D6D7    mov         edx,52E344;' = WRFT'
 0052D6DC    call        @LStrAsg
 0052D6E1    mov         byte ptr ds:[597BF2],23;gvar_00597BF2
 0052D6E8    mov         byte ptr ds:[597C3E],5;gvar_00597C3E
 0052D6EF    mov         eax,597C2C
 0052D6F4    mov         edx,52E354;' = MCR '
 0052D6F9    call        @LStrAsg
 0052D6FE    push        0
 0052D700    push        3E8
 0052D705    mov         eax,dword ptr [ebp-10]
 0052D708    mov         edx,dword ptr [ebp-0C]
 0052D70B    call        @_lldiv
 0052D710    mov         dword ptr [ebp-10],eax
 0052D713    mov         dword ptr [ebp-0C],edx
 0052D716    mov         eax,dword ptr [ebp-4]
 0052D719    mov         eax,dword ptr [eax+34C]
 0052D71F    mov         edx,dword ptr [eax]
 0052D721    call        dword ptr [edx+0C8]
 0052D727    test        al,al
>0052D729    je          0052D748
 0052D72B    push        100
 0052D730    call        kernel32.GetCurrentProcess
 0052D735    push        eax
 0052D736    call        kernel32.SetPriorityClass
 0052D73B    push        0F
 0052D73D    call        kernel32.GetCurrentThread
 0052D742    push        eax
 0052D743    call        kernel32.SetThreadPriority
 0052D748    mov         eax,dword ptr [ebp-4]
 0052D74B    mov         eax,dword ptr [eax+320]
 0052D751    mov         edx,52E364;'BAD:'
 0052D756    call        TPanel.SetCaption
 0052D75B    cmp         byte ptr [ebp-75],0
>0052D75F    je          0052D78E
 0052D761    mov         edx,dword ptr ds:[56D4F8];0x0 gvar_0056D4F8:TfmLogicalTest
 0052D767    mov         eax,[0052BB78];TfmScanGrid
 0052D76C    call        0052BF68
 0052D771    mov         eax,dword ptr [ebp-4]
 0052D774    mov         eax,dword ptr [eax+364]
 0052D77A    mov         eax,dword ptr [eax+218]
 0052D780    mov         edx,dword ptr ds:[56E2F4];^gvar_0056D4F4:TfmScanGrid
 0052D786    mov         edx,dword ptr [edx]
 0052D788    mov         dword ptr [edx+310],eax;TfmScanGrid.?f310:Integer
 0052D78E    mov         eax,dword ptr [ebp-4]
 0052D791    add         eax,408
 0052D796    push        eax
 0052D797    call        kernel32.QueryPerformanceCounter
 0052D79C    xor         eax,eax
 0052D79E    mov         dword ptr [ebp-74],eax
 0052D7A1    mov         eax,dword ptr [ebp-4]
 0052D7A4    mov         eax,dword ptr [eax+30C]
 0052D7AA    xor         edx,edx
 0052D7AC    call        TProgressBar.SetMin
 0052D7B1    push        0
 0052D7B3    push        8
 0052D7B5    mov         eax,dword ptr [ebp-38]
 0052D7B8    mov         edx,dword ptr [ebp-34]
 0052D7BB    call        @_lldiv
 0052D7C0    mov         edx,eax
 0052D7C2    mov         eax,dword ptr [ebp-4]
 0052D7C5    mov         eax,dword ptr [eax+30C]
 0052D7CB    call        TProgressBar.SetMax
 0052D7D0    push        0
 0052D7D2    push        8
 0052D7D4    mov         eax,dword ptr [ebp-30]
 0052D7D7    mov         edx,dword ptr [ebp-2C]
 0052D7DA    call        @_lldiv
 0052D7DF    mov         edx,eax
 0052D7E1    mov         eax,dword ptr [ebp-4]
 0052D7E4    mov         eax,dword ptr [eax+30C]
 0052D7EA    call        TProgressBar.SetMin
 0052D7EF    xor         eax,eax
 0052D7F1    push        ebp
 0052D7F2    push        52E139
 0052D7F7    push        dword ptr fs:[eax]
 0052D7FA    mov         dword ptr fs:[eax],esp
 0052D7FD    lea         eax,[ebp-7C]
 0052D800    mov         edx,52E374;' '
 0052D805    call        @LStrLAsg
 0052D80A    mov         eax,dword ptr [ebp-38]
 0052D80D    mov         edx,dword ptr [ebp-34]
 0052D810    sub         eax,dword ptr [ebp-30]
 0052D813    sbb         edx,dword ptr [ebp-2C]
 0052D816    mov         dword ptr [ebp-58],eax
 0052D819    mov         dword ptr [ebp-54],edx
 0052D81C    mov         eax,dword ptr [ebp-30]
 0052D81F    mov         dword ptr [ebp-68],eax
 0052D822    mov         eax,dword ptr [ebp-2C]
 0052D825    mov         dword ptr [ebp-64],eax
 0052D828    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052D82D    cmp         byte ptr [eax],0
>0052D830    je          0052D84A
 0052D832    mov         dx,1
 0052D836    mov         eax,dword ptr [ebp-68]
 0052D839    call        004CC360
 0052D83E    xor         al,1
 0052D840    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052D846    mov         byte ptr [edx],al
>0052D848    jmp         0052D881
 0052D84A    cmp         byte ptr [ebp-3D],0
>0052D84E    je          0052D861
 0052D850    push        dword ptr [ebp-64]
 0052D853    push        dword ptr [ebp-68]
 0052D856    mov         ax,1
 0052D85A    call        005607A0
>0052D85F    jmp         0052D86B
 0052D861    mov         dl,1
 0052D863    mov         eax,dword ptr [ebp-68]
 0052D866    call        00560678
 0052D86B    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0052D870    cmp         byte ptr [eax],0
>0052D873    je          0052D87C
 0052D875    call        005600F0
>0052D87A    jmp         0052D881
 0052D87C    call        00560080
 0052D881    mov         byte ptr [ebp-3E],0
>0052D885    jmp         0052DEA4
 0052D88A    mov         ax,word ptr [ebp-3A]
 0052D88E    mov         word ptr [ebp-4A],ax
 0052D892    movzx       eax,word ptr [ebp-4A]
 0052D896    xor         edx,edx
 0052D898    cmp         edx,dword ptr [ebp-54]
>0052D89B    jne         0052D8A4
 0052D89D    cmp         eax,dword ptr [ebp-58]
>0052D8A0    ja          0052D8C6
>0052D8A2    jmp         0052D8A6
>0052D8A4    jg          0052D8C6
 0052D8A6    movzx       eax,word ptr [ebp-4A]
 0052D8AA    xor         edx,edx
 0052D8AC    mov         dword ptr [ebp-60],eax
 0052D8AF    mov         dword ptr [ebp-5C],edx
 0052D8B2    mov         eax,dword ptr [ebp-58]
 0052D8B5    mov         edx,dword ptr [ebp-54]
 0052D8B8    sub         eax,dword ptr [ebp-60]
 0052D8BB    sbb         edx,dword ptr [ebp-5C]
 0052D8BE    mov         dword ptr [ebp-58],eax
 0052D8C1    mov         dword ptr [ebp-54],edx
>0052D8C4    jmp         0052D8E0
 0052D8C6    mov         eax,dword ptr [ebp-58]
 0052D8C9    mov         dword ptr [ebp-60],eax
 0052D8CC    mov         eax,dword ptr [ebp-54]
 0052D8CF    mov         dword ptr [ebp-5C],eax
 0052D8D2    mov         dword ptr [ebp-58],0
 0052D8D9    mov         dword ptr [ebp-54],0
 0052D8E0    push        dword ptr [ebp-64]
 0052D8E3    push        dword ptr [ebp-68]
 0052D8E6    lea         eax,[ebp-0F0]
 0052D8EC    call        IntToStr
 0052D8F1    mov         ecx,dword ptr [ebp-0F0]
 0052D8F7    lea         eax,[ebp-0EC]
 0052D8FD    mov         edx,52E380;'LBA:'
 0052D902    call        @LStrCat3
 0052D907    mov         edx,dword ptr [ebp-0EC]
 0052D90D    mov         eax,dword ptr [ebp-4]
 0052D910    mov         eax,dword ptr [eax+350]
 0052D916    call        TPanel.SetCaption
 0052D91B    push        0
 0052D91D    push        64
 0052D91F    mov         eax,dword ptr [ebp-68]
 0052D922    mov         edx,dword ptr [ebp-64]
 0052D925    sub         eax,dword ptr [ebp-30]
 0052D928    sbb         edx,dword ptr [ebp-2C]
 0052D92B    call        @_llmul
 0052D930    mov         dword ptr [ebp-0FC],eax
 0052D936    mov         dword ptr [ebp-0F8],edx
 0052D93C    fild        qword ptr [ebp-0FC]
 0052D942    mov         eax,dword ptr [ebp-38]
 0052D945    mov         edx,dword ptr [ebp-34]
 0052D948    sub         eax,dword ptr [ebp-30]
 0052D94B    sbb         edx,dword ptr [ebp-2C]
 0052D94E    add         eax,1
 0052D951    adc         edx,0
 0052D954    mov         dword ptr [ebp-104],eax
 0052D95A    mov         dword ptr [ebp-100],edx
 0052D960    fild        qword ptr [ebp-104]
 0052D966    fdivp       st(1),st
 0052D968    add         esp,0FFFFFFF4
 0052D96B    fstp        tbyte ptr [esp]
 0052D96E    wait
 0052D96F    lea         eax,[ebp-0F4]
 0052D975    push        eax
 0052D976    mov         ecx,2
 0052D97B    mov         edx,4
 0052D980    mov         al,2
 0052D982    call        0040DDEC
 0052D987    lea         eax,[ebp-0F4]
 0052D98D    mov         edx,52E244;'%'
 0052D992    call        @LStrCat
 0052D997    mov         edx,dword ptr [ebp-0F4]
 0052D99D    mov         eax,dword ptr [ebp-4]
 0052D9A0    mov         eax,dword ptr [eax+354]
 0052D9A6    call        TPanel.SetCaption
 0052D9AB    mov         eax,dword ptr [ebp-4]
 0052D9AE    mov         eax,dword ptr [eax+358]
 0052D9B4    mov         edx,dword ptr [eax]
 0052D9B6    call        dword ptr [edx+0C8]
 0052D9BC    test        al,al
>0052D9BE    je          0052DA59
 0052D9C4    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052D9C9    cmp         byte ptr [eax],0
>0052D9CC    je          0052D9EC
 0052D9CE    mov         ecx,dword ptr ds:[56E344];^gvar_0059BF5C
 0052D9D4    mov         dx,word ptr [ebp-60]
 0052D9D8    mov         eax,dword ptr [ebp-68]
 0052D9DB    call        004CC2E0
 0052D9E0    xor         al,1
 0052D9E2    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052D9E8    mov         byte ptr [edx],al
>0052D9EA    jmp         0052DA59
 0052D9EC    cmp         byte ptr [ebp-3D],0
>0052D9F0    je          0052DA03
 0052D9F2    push        dword ptr [ebp-64]
 0052D9F5    push        dword ptr [ebp-68]
 0052D9F8    mov         ax,word ptr [ebp-60]
 0052D9FC    call        00560854
>0052DA01    jmp         0052DA0E
 0052DA03    mov         dl,byte ptr [ebp-60]
 0052DA06    mov         eax,dword ptr [ebp-68]
 0052DA09    call        0056070C
 0052DA0E    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0052DA13    cmp         byte ptr [eax],0
>0052DA16    je          0052DA1F
 0052DA18    call        005600F0
>0052DA1D    jmp         0052DA24
 0052DA1F    call        00560080
 0052DA24    xor         eax,eax
 0052DA26    mov         dword ptr [ebp-80],eax
>0052DA29    jmp         0052DA33
 0052DA2B    call        0056032C
 0052DA30    inc         dword ptr [ebp-80]
 0052DA33    mov         eax,dword ptr [ebp-80]
 0052DA36    cdq
 0052DA37    cmp         edx,dword ptr [ebp-5C]
>0052DA3A    jne         0052DA43
 0052DA3C    cmp         eax,dword ptr [ebp-60]
>0052DA3F    jae         0052DA59
>0052DA41    jmp         0052DA45
>0052DA43    jge         0052DA59
 0052DA45    mov         eax,[0056E2D8];^gvar_0059BF4F
 0052DA4A    cmp         byte ptr [eax],0
>0052DA4D    je          0052DA59
 0052DA4F    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DA54    cmp         byte ptr [eax],0
>0052DA57    je          0052DA2B
 0052DA59    lea         eax,[ebp-18]
 0052DA5C    push        eax
 0052DA5D    call        kernel32.QueryPerformanceCounter
 0052DA62    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052DA67    cmp         byte ptr [eax],0
>0052DA6A    je          0052DA84
 0052DA6C    mov         dx,word ptr [ebp-60]
 0052DA70    mov         eax,dword ptr [ebp-68]
 0052DA73    call        004CC360
 0052DA78    xor         al,1
 0052DA7A    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052DA80    mov         byte ptr [edx],al
>0052DA82    jmp         0052DAF9
 0052DA84    cmp         byte ptr [ebp-3D],0
>0052DA88    je          0052DA9B
 0052DA8A    push        dword ptr [ebp-64]
 0052DA8D    push        dword ptr [ebp-68]
 0052DA90    mov         ax,word ptr [ebp-60]
 0052DA94    call        005607A0
>0052DA99    jmp         0052DAA6
 0052DA9B    mov         dl,byte ptr [ebp-60]
 0052DA9E    mov         eax,dword ptr [ebp-68]
 0052DAA1    call        00560678
 0052DAA6    push        dword ptr [ebp-0C]
 0052DAA9    push        dword ptr [ebp-10]
 0052DAAC    mov         eax,dword ptr [ebp-44]
 0052DAAF    call        00560154
 0052DAB4    test        al,al
>0052DAB6    jne         0052DAE4
 0052DAB8    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DABD    cmp         byte ptr [eax],0
>0052DAC0    jne         0052DEC8
 0052DAC6    call        00560360
 0052DACB    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DAD0    mov         byte ptr [eax],1
 0052DAD3    mov         eax,[0056DFBC];^gvar_0059BF54
 0052DAD8    mov         byte ptr [eax],1
 0052DADB    mov         byte ptr ds:[597BDC],1;gvar_00597BDC
>0052DAE2    jmp         0052DAF9
 0052DAE4    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DAE9    cmp         byte ptr [eax],0
>0052DAEC    jne         0052DEC8
 0052DAF2    mov         byte ptr ds:[597BDC],0;gvar_00597BDC
 0052DAF9    lea         eax,[ebp-20]
 0052DAFC    push        eax
 0052DAFD    call        kernel32.QueryPerformanceCounter
 0052DB02    push        dword ptr [ebp-0C]
 0052DB05    push        dword ptr [ebp-10]
 0052DB08    mov         eax,dword ptr [ebp-20]
 0052DB0B    mov         edx,dword ptr [ebp-1C]
 0052DB0E    sub         eax,dword ptr [ebp-18]
 0052DB11    sbb         edx,dword ptr [ebp-14]
 0052DB14    call        @_lldiv
 0052DB19    mov         dword ptr [ebp-28],eax
 0052DB1C    mov         dword ptr [ebp-24],edx
 0052DB1F    mov         eax,dword ptr [ebp-28]
 0052DB22    call        0052CA1C
 0052DB27    push        0
 0052DB29    push        8
 0052DB2B    mov         eax,dword ptr [ebp-68]
 0052DB2E    mov         edx,dword ptr [ebp-64]
 0052DB31    call        @_lldiv
 0052DB36    mov         edx,eax
 0052DB38    mov         eax,dword ptr [ebp-4]
 0052DB3B    mov         eax,dword ptr [eax+30C]
 0052DB41    call        TProgressBar.SetPosition
 0052DB46    mov         eax,dword ptr [ebp-68]
 0052DB49    mov         edx,dword ptr [ebp-64]
 0052DB4C    add         eax,dword ptr [ebp-60]
 0052DB4F    adc         edx,dword ptr [ebp-5C]
 0052DB52    mov         dword ptr [ebp-68],eax
 0052DB55    mov         dword ptr [ebp-64],edx
 0052DB58    mov         eax,[0056E3C0];^Application:TApplication
 0052DB5D    mov         eax,dword ptr [eax]
 0052DB5F    call        004AB51C
 0052DB64    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DB69    mov         al,byte ptr [eax]
 0052DB6B    or          al,byte ptr ds:[597BDC];0x0 gvar_00597BDC
>0052DB71    je          0052DEA4
 0052DB77    cmp         byte ptr [ebp-75],0
>0052DB7B    je          0052DE6D
 0052DB81    mov         eax,dword ptr [ebp-4]
 0052DB84    mov         eax,dword ptr [eax+348]
 0052DB8A    mov         edx,dword ptr [eax]
 0052DB8C    call        dword ptr [edx+0C8]
 0052DB92    test        al,al
>0052DB94    jmp         0052DE6D
 0052DB99    mov         eax,dword ptr [ebp-68]
 0052DB9C    mov         edx,dword ptr [ebp-64]
 0052DB9F    sub         eax,dword ptr [ebp-60]
 0052DBA2    sbb         edx,dword ptr [ebp-5C]
 0052DBA5    mov         dword ptr [ebp-70],eax
 0052DBA8    mov         dword ptr [ebp-6C],edx
 0052DBAB    lea         eax,[ebp-18]
 0052DBAE    push        eax
 0052DBAF    call        kernel32.QueryPerformanceCounter
 0052DBB4    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052DBB9    cmp         byte ptr [eax],0
>0052DBBC    je          0052DBD6
 0052DBBE    mov         dx,1
 0052DBC2    mov         eax,dword ptr [ebp-68]
 0052DBC5    call        004CC360
 0052DBCA    xor         al,1
 0052DBCC    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052DBD2    mov         byte ptr [edx],al
>0052DBD4    jmp         0052DC4A
 0052DBD6    cmp         byte ptr [ebp-3D],0
>0052DBDA    je          0052DBED
 0052DBDC    push        dword ptr [ebp-6C]
 0052DBDF    push        dword ptr [ebp-70]
 0052DBE2    mov         ax,1
 0052DBE6    call        005607A0
>0052DBEB    jmp         0052DBF7
 0052DBED    mov         dl,1
 0052DBEF    mov         eax,dword ptr [ebp-70]
 0052DBF2    call        00560678
 0052DBF7    push        dword ptr [ebp-0C]
 0052DBFA    push        dword ptr [ebp-10]
 0052DBFD    mov         eax,dword ptr [ebp-48]
 0052DC00    call        00560154
 0052DC05    test        al,al
>0052DC07    jne         0052DC35
 0052DC09    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DC0E    cmp         byte ptr [eax],0
>0052DC11    jne         0052DE8B
 0052DC17    call        00560360
 0052DC1C    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DC21    mov         byte ptr [eax],1
 0052DC24    mov         eax,[0056DFBC];^gvar_0059BF54
 0052DC29    mov         byte ptr [eax],1
 0052DC2C    mov         byte ptr ds:[597BDC],1;gvar_00597BDC
>0052DC33    jmp         0052DC4A
 0052DC35    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DC3A    cmp         byte ptr [eax],0
>0052DC3D    jne         0052DE8B
 0052DC43    mov         byte ptr ds:[597BDC],0;gvar_00597BDC
 0052DC4A    lea         eax,[ebp-20]
 0052DC4D    push        eax
 0052DC4E    call        kernel32.QueryPerformanceCounter
 0052DC53    push        dword ptr [ebp-0C]
 0052DC56    push        dword ptr [ebp-10]
 0052DC59    mov         eax,dword ptr [ebp-20]
 0052DC5C    mov         edx,dword ptr [ebp-1C]
 0052DC5F    sub         eax,dword ptr [ebp-18]
 0052DC62    sbb         edx,dword ptr [ebp-14]
 0052DC65    call        @_lldiv
 0052DC6A    mov         dword ptr [ebp-28],eax
 0052DC6D    mov         dword ptr [ebp-24],edx
 0052DC70    mov         eax,dword ptr [ebp-4]
 0052DC73    mov         eax,dword ptr [eax+348]
 0052DC79    mov         edx,dword ptr [eax]
 0052DC7B    call        dword ptr [edx+0C8]
 0052DC81    test        al,al
>0052DC83    je          0052DC8D
 0052DC85    mov         eax,dword ptr [ebp-28]
 0052DC88    call        0052CA1C
 0052DC8D    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DC92    cmp         byte ptr [eax],0
>0052DC95    jne         0052DE8B
 0052DC9B    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DCA0    cmp         byte ptr [eax],0
>0052DCA3    jne         0052DCBD
 0052DCA5    cmp         dword ptr [ebp-24],0
>0052DCA9    jne         0052DCB7
 0052DCAB    cmp         dword ptr [ebp-28],64
>0052DCAF    jbe         0052DE59
>0052DCB5    jmp         0052DCBD
>0052DCB7    jle         0052DE59
 0052DCBD    lea         eax,[ebp-7C]
 0052DCC0    mov         edx,52E390;'Error'
 0052DCC5    call        @LStrLAsg
 0052DCCA    cmp         byte ptr [ebp-3C],0
>0052DCCE    je          0052DD07
 0052DCD0    call        004CED2C
 0052DCD5    mov         eax,dword ptr [ebp-70]
 0052DCD8    call        004CF2A0
 0052DCDD    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DCE2    cmp         byte ptr [eax],0
>0052DCE5    jne         0052DCF6
 0052DCE7    lea         eax,[ebp-7C]
 0052DCEA    mov         edx,52E3A0;'Make Auto Reassign OK'
 0052DCEF    call        @LStrLAsg
>0052DCF4    jmp         0052DD07
 0052DCF6    lea         eax,[ebp-7C]
 0052DCF9    mov         edx,52E3C0;'Make Auto Reassign Error'
 0052DCFE    call        @LStrLAsg
 0052DD03    mov         byte ptr [ebp-3E],1
 0052DD07    cmp         byte ptr [ebp-3B],0
>0052DD0B    je          0052DDD1
 0052DD11    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0052DD16    cmp         byte ptr [eax],0
>0052DD19    je          0052DD4F
 0052DD1B    mov         ecx,dword ptr ds:[56E344];^gvar_0059BF5C
 0052DD21    mov         dx,1
 0052DD25    mov         eax,dword ptr [ebp-68]
 0052DD28    call        004CC2E0
 0052DD2D    xor         al,1
 0052DD2F    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052DD35    mov         byte ptr [edx],al
 0052DD37    mov         dx,1
 0052DD3B    mov         eax,dword ptr [ebp-68]
 0052DD3E    call        004CC360
 0052DD43    xor         al,1
 0052DD45    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 0052DD4B    mov         byte ptr [edx],al
>0052DD4D    jmp         0052DDAB
 0052DD4F    cmp         byte ptr [ebp-3D],0
>0052DD53    je          0052DD66
 0052DD55    push        dword ptr [ebp-6C]
 0052DD58    push        dword ptr [ebp-70]
 0052DD5B    mov         ax,1
 0052DD5F    call        00560854
>0052DD64    jmp         0052DD70
 0052DD66    mov         dl,1
 0052DD68    mov         eax,dword ptr [ebp-70]
 0052DD6B    call        0056070C
 0052DD70    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0052DD75    cmp         byte ptr [eax],0
>0052DD78    je          0052DD81
 0052DD7A    call        005600F0
>0052DD7F    jmp         0052DD86
 0052DD81    call        00560080
 0052DD86    call        0056032C
 0052DD8B    mov         dl,1
 0052DD8D    mov         eax,dword ptr [ebp-70]
 0052DD90    call        00560678
 0052DD95    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0052DD9A    cmp         byte ptr [eax],0
>0052DD9D    je          0052DDA6
 0052DD9F    call        005600F0
>0052DDA4    jmp         0052DDAB
 0052DDA6    call        00560080
 0052DDAB    mov         eax,[0056E3F8];^gvar_0059BF4C
 0052DDB0    cmp         byte ptr [eax],0
>0052DDB3    jne         0052DDC4
 0052DDB5    lea         eax,[ebp-7C]
 0052DDB8    mov         edx,52E3E4;'Write OK'
 0052DDBD    call        @LStrLAsg
>0052DDC2    jmp         0052DDD1
 0052DDC4    lea         eax,[ebp-7C]
 0052DDC7    mov         edx,52E3F8;'Write Error'
 0052DDCC    call        @LStrLAsg
 0052DDD1    push        dword ptr [ebp-6C]
 0052DDD4    push        dword ptr [ebp-70]
 0052DDD7    lea         eax,[ebp-10C]
 0052DDDD    call        IntToStr
 0052DDE2    push        dword ptr [ebp-10C]
 0052DDE8    push        52E40C;' - '
 0052DDED    push        dword ptr [ebp-7C]
 0052DDF0    lea         eax,[ebp-108]
 0052DDF6    mov         edx,3
 0052DDFB    call        @LStrCatN
 0052DE00    mov         edx,dword ptr [ebp-108]
 0052DE06    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052DE0B    mov         eax,dword ptr [eax]
 0052DE0D    mov         eax,dword ptr [eax+2F8]
 0052DE13    mov         eax,dword ptr [eax+248]
 0052DE19    mov         ecx,dword ptr [eax]
 0052DE1B    call        dword ptr [ecx+38]
 0052DE1E    inc         dword ptr [ebp-74]
 0052DE21    lea         edx,[ebp-114]
 0052DE27    mov         eax,dword ptr [ebp-74]
 0052DE2A    call        IntToStr
 0052DE2F    mov         ecx,dword ptr [ebp-114]
 0052DE35    lea         eax,[ebp-110]
 0052DE3B    mov         edx,52E364;'BAD:'
 0052DE40    call        @LStrCat3
 0052DE45    mov         edx,dword ptr [ebp-110]
 0052DE4B    mov         eax,dword ptr [ebp-4]
 0052DE4E    mov         eax,dword ptr [eax+320]
 0052DE54    call        TPanel.SetCaption
 0052DE59    mov         eax,[0056E3C0];^Application:TApplication
 0052DE5E    mov         eax,dword ptr [eax]
 0052DE60    call        004AB51C
 0052DE65    sub         dword ptr [ebp-60],1
 0052DE69    sbb         dword ptr [ebp-5C],0
 0052DE6D    cmp         dword ptr [ebp-5C],0
>0052DE71    jne         0052DE7B
 0052DE73    cmp         dword ptr [ebp-60],0
>0052DE77    jbe         0052DE8B
>0052DE79    jmp         0052DE7D
>0052DE7B    jle         0052DE8B
 0052DE7D    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DE82    cmp         byte ptr [eax],0
>0052DE85    je          0052DB99
 0052DE8B    cmp         byte ptr [ebp-75],0
>0052DE8F    je          0052DEA4
 0052DE91    mov         eax,dword ptr [ebp-4]
 0052DE94    mov         eax,dword ptr [eax+348]
 0052DE9A    mov         edx,dword ptr [eax]
 0052DE9C    call        dword ptr [edx+0C8]
 0052DEA2    test        al,al
 0052DEA4    cmp         dword ptr [ebp-54],0
>0052DEA8    jne         0052DEB2
 0052DEAA    cmp         dword ptr [ebp-58],0
>0052DEAE    jbe         0052DEC8
>0052DEB0    jmp         0052DEB4
>0052DEB2    jle         0052DEC8
 0052DEB4    mov         eax,[0056E5A4];^gvar_0056DF04
 0052DEB9    cmp         byte ptr [eax],0
>0052DEBC    jne         0052DEC8
 0052DEBE    cmp         byte ptr [ebp-3E],0
>0052DEC2    je          0052D88A
 0052DEC8    xor         eax,eax
 0052DECA    pop         edx
 0052DECB    pop         ecx
 0052DECC    pop         ecx
 0052DECD    mov         dword ptr fs:[eax],edx
 0052DED0    push        52E143
 0052DED5    push        20
 0052DED7    call        kernel32.GetCurrentProcess
 0052DEDC    push        eax
 0052DEDD    call        kernel32.SetPriorityClass
 0052DEE2    push        0
 0052DEE4    call        kernel32.GetCurrentThread
 0052DEE9    push        eax
 0052DEEA    call        kernel32.SetThreadPriority
 0052DEEF    cmp         byte ptr [ebp-75],0
>0052DEF3    je          0052DF0B
 0052DEF5    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052DEFA    cmp         dword ptr [eax],0
>0052DEFD    je          0052DF0B
 0052DEFF    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052DF04    mov         eax,dword ptr [eax]
 0052DF06    call        004A7264
 0052DF0B    mov         eax,dword ptr [ebp-4]
 0052DF0E    mov         eax,dword ptr [eax+30C]
 0052DF14    call        TProgressBar.GetMin
 0052DF19    mov         edx,eax
 0052DF1B    test        edx,edx
>0052DF1D    jns         0052DF22
 0052DF1F    add         edx,7
 0052DF22    sar         edx,3
 0052DF25    mov         eax,dword ptr [ebp-4]
 0052DF28    mov         eax,dword ptr [eax+30C]
 0052DF2E    call        TProgressBar.SetPosition
 0052DF33    xor         eax,eax
 0052DF35    mov         dword ptr [ebp-80],eax
 0052DF38    mov         eax,dword ptr [ebp-80]
 0052DF3B    cmp         eax,0C
>0052DF3E    ja          0052E0C2
 0052DF44    jmp         dword ptr [eax*4+52DF4B]
 0052DF44    dd          0052DF7F
 0052DF44    dd          0052DF99
 0052DF44    dd          0052DFB3
 0052DF44    dd          0052DFCD
 0052DF44    dd          0052DFE7
 0052DF44    dd          0052E001
 0052DF44    dd          0052E01B
 0052DF44    dd          0052E035
 0052DF44    dd          0052E04F
 0052DF44    dd          0052E066
 0052DF44    dd          0052E07D
 0052DF44    dd          0052E094
 0052DF44    dd          0052E0AB
 0052DF7F    mov         eax,dword ptr [ebp-4]
 0052DF82    mov         edx,dword ptr [eax+410]
 0052DF88    mov         dword ptr [ebp-70],edx
 0052DF8B    mov         edx,dword ptr [eax+414]
 0052DF91    mov         dword ptr [ebp-6C],edx
>0052DF94    jmp         0052E0D7
 0052DF99    mov         eax,dword ptr [ebp-4]
 0052DF9C    mov         edx,dword ptr [eax+418]
 0052DFA2    mov         dword ptr [ebp-70],edx
 0052DFA5    mov         edx,dword ptr [eax+41C]
 0052DFAB    mov         dword ptr [ebp-6C],edx
>0052DFAE    jmp         0052E0D7
 0052DFB3    mov         eax,dword ptr [ebp-4]
 0052DFB6    mov         edx,dword ptr [eax+420]
 0052DFBC    mov         dword ptr [ebp-70],edx
 0052DFBF    mov         edx,dword ptr [eax+424]
 0052DFC5    mov         dword ptr [ebp-6C],edx
>0052DFC8    jmp         0052E0D7
 0052DFCD    mov         eax,dword ptr [ebp-4]
 0052DFD0    mov         edx,dword ptr [eax+428]
 0052DFD6    mov         dword ptr [ebp-70],edx
 0052DFD9    mov         edx,dword ptr [eax+42C]
 0052DFDF    mov         dword ptr [ebp-6C],edx
>0052DFE2    jmp         0052E0D7
 0052DFE7    mov         eax,dword ptr [ebp-4]
 0052DFEA    mov         edx,dword ptr [eax+430]
 0052DFF0    mov         dword ptr [ebp-70],edx
 0052DFF3    mov         edx,dword ptr [eax+434]
 0052DFF9    mov         dword ptr [ebp-6C],edx
>0052DFFC    jmp         0052E0D7
 0052E001    mov         eax,dword ptr [ebp-4]
 0052E004    mov         edx,dword ptr [eax+438]
 0052E00A    mov         dword ptr [ebp-70],edx
 0052E00D    mov         edx,dword ptr [eax+43C]
 0052E013    mov         dword ptr [ebp-6C],edx
>0052E016    jmp         0052E0D7
 0052E01B    mov         eax,dword ptr [ebp-4]
 0052E01E    mov         edx,dword ptr [eax+440]
 0052E024    mov         dword ptr [ebp-70],edx
 0052E027    mov         edx,dword ptr [eax+444]
 0052E02D    mov         dword ptr [ebp-6C],edx
>0052E030    jmp         0052E0D7
 0052E035    mov         eax,dword ptr [ebp-4]
 0052E038    mov         edx,dword ptr [eax+448]
 0052E03E    mov         dword ptr [ebp-70],edx
 0052E041    mov         edx,dword ptr [eax+44C]
 0052E047    mov         dword ptr [ebp-6C],edx
>0052E04A    jmp         0052E0D7
 0052E04F    mov         eax,dword ptr [ebp-4]
 0052E052    mov         edx,dword ptr [eax+450]
 0052E058    mov         dword ptr [ebp-70],edx
 0052E05B    mov         edx,dword ptr [eax+454]
 0052E061    mov         dword ptr [ebp-6C],edx
>0052E064    jmp         0052E0D7
 0052E066    mov         eax,dword ptr [ebp-4]
 0052E069    mov         edx,dword ptr [eax+458]
 0052E06F    mov         dword ptr [ebp-70],edx
 0052E072    mov         edx,dword ptr [eax+45C]
 0052E078    mov         dword ptr [ebp-6C],edx
>0052E07B    jmp         0052E0D7
 0052E07D    mov         eax,dword ptr [ebp-4]
 0052E080    mov         edx,dword ptr [eax+460]
 0052E086    mov         dword ptr [ebp-70],edx
 0052E089    mov         edx,dword ptr [eax+464]
 0052E08F    mov         dword ptr [ebp-6C],edx
>0052E092    jmp         0052E0D7
 0052E094    mov         eax,dword ptr [ebp-4]
 0052E097    mov         edx,dword ptr [eax+468]
 0052E09D    mov         dword ptr [ebp-70],edx
 0052E0A0    mov         edx,dword ptr [eax+46C]
 0052E0A6    mov         dword ptr [ebp-6C],edx
>0052E0A9    jmp         0052E0D7
 0052E0AB    mov         eax,dword ptr [ebp-4]
 0052E0AE    mov         edx,dword ptr [eax+470]
 0052E0B4    mov         dword ptr [ebp-70],edx
 0052E0B7    mov         edx,dword ptr [eax+474]
 0052E0BD    mov         dword ptr [ebp-6C],edx
>0052E0C0    jmp         0052E0D7
 0052E0C2    mov         eax,dword ptr [ebp-4]
 0052E0C5    mov         edx,dword ptr [eax+470]
 0052E0CB    mov         dword ptr [ebp-70],edx
 0052E0CE    mov         edx,dword ptr [eax+474]
 0052E0D4    mov         dword ptr [ebp-6C],edx
 0052E0D7    mov         eax,dword ptr [ebp-80]
 0052E0DA    push        dword ptr [eax*4+597BF4];gvar_00597BF4:array[15] of ?
 0052E0E1    push        52E40C;' - '
 0052E0E6    push        dword ptr [ebp-6C]
 0052E0E9    push        dword ptr [ebp-70]
 0052E0EC    lea         eax,[ebp-11C]
 0052E0F2    call        IntToStr
 0052E0F7    push        dword ptr [ebp-11C]
 0052E0FD    lea         eax,[ebp-118]
 0052E103    mov         edx,3
 0052E108    call        @LStrCatN
 0052E10D    mov         edx,dword ptr [ebp-118]
 0052E113    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052E118    mov         eax,dword ptr [eax]
 0052E11A    mov         eax,dword ptr [eax+2F8]
 0052E120    mov         eax,dword ptr [eax+248]
 0052E126    mov         ecx,dword ptr [eax]
 0052E128    call        dword ptr [ecx+38]
 0052E12B    inc         dword ptr [ebp-80]
 0052E12E    cmp         dword ptr [ebp-80],0D
>0052E132    jne         0052DF38
 0052E138    ret
>0052E139    jmp         @HandleFinally
>0052E13E    jmp         0052DED5
 0052E143    xor         eax,eax
 0052E145    pop         edx
 0052E146    pop         ecx
 0052E147    pop         ecx
 0052E148    mov         dword ptr fs:[eax],edx
 0052E14B    push        52E236
 0052E150    lea         eax,[ebp-11C]
 0052E156    mov         edx,6
 0052E15B    call        @LStrArrayClr
 0052E160    lea         eax,[ebp-0F4]
 0052E166    mov         edx,3
 0052E16B    call        @LStrArrayClr
 0052E170    lea         eax,[ebp-0E8]
 0052E176    mov         edx,5
 0052E17B    call        @LStrArrayClr
 0052E180    lea         eax,[ebp-0D4]
 0052E186    call        @LStrClr
 0052E18B    lea         eax,[ebp-0D0]
 0052E191    call        @LStrClr
 0052E196    lea         eax,[ebp-0CC]
 0052E19C    call        @LStrClr
 0052E1A1    lea         eax,[ebp-0C8]
 0052E1A7    call        @LStrClr
 0052E1AC    lea         eax,[ebp-0C4]
 0052E1B2    call        @LStrClr
 0052E1B7    lea         eax,[ebp-0C0]
 0052E1BD    mov         edx,3
 0052E1C2    call        @LStrArrayClr
 0052E1C7    lea         eax,[ebp-0B4]
 0052E1CD    call        @LStrClr
 0052E1D2    lea         eax,[ebp-0B0]
 0052E1D8    mov         edx,3
 0052E1DD    call        @LStrArrayClr
 0052E1E2    lea         eax,[ebp-0A4]
 0052E1E8    call        @LStrClr
 0052E1ED    lea         eax,[ebp-0A0]
 0052E1F3    mov         edx,3
 0052E1F8    call        @LStrArrayClr
 0052E1FD    lea         eax,[ebp-94]
 0052E203    call        @LStrClr
 0052E208    lea         eax,[ebp-90]
 0052E20E    mov         edx,3
 0052E213    call        @LStrArrayClr
 0052E218    lea         eax,[ebp-84]
 0052E21E    call        @LStrClr
 0052E223    lea         eax,[ebp-7C]
 0052E226    call        @LStrClr
 0052E22B    ret
>0052E22C    jmp         @HandleFinally
>0052E231    jmp         0052E150
 0052E236    mov         esp,ebp
 0052E238    pop         ebp
 0052E239    ret
*}
end;

//0052E410
{*function sub_0052E410:?;
begin
 0052E410    push        ebp
 0052E411    mov         ebp,esp
 0052E413    add         esp,0FFFFFFF0
 0052E416    push        ebx
 0052E417    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E41C    mov         byte ptr [eax],0
 0052E41F    mov         dword ptr [ebp-4],0FFFFFFFF
 0052E426    mov         dl,1
 0052E428    mov         eax,[0041DE14];TMemoryStream
 0052E42D    call        TObject.Create;TMemoryStream.Create
 0052E432    mov         dword ptr [ebp-8],eax
 0052E435    xor         eax,eax
 0052E437    push        ebp
 0052E438    push        52E4CE
 0052E43D    push        dword ptr fs:[eax]
 0052E440    mov         dword ptr fs:[eax],esp
 0052E443    mov         edx,dword ptr [ebp-8]
 0052E446    mov         ax,34
 0052E44A    call        004CF5C8
 0052E44F    test        al,al
>0052E451    je          0052E4B8
 0052E453    xor         ecx,ecx
 0052E455    xor         edx,edx
 0052E457    mov         eax,dword ptr [ebp-8]
 0052E45A    mov         ebx,dword ptr [eax]
 0052E45C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0052E45F    mov         eax,dword ptr [ebp-8]
 0052E462    call        004CE56C
 0052E467    mov         dword ptr [ebp-0C],eax
 0052E46A    cmp         dword ptr [ebp-0C],4C594F52
>0052E471    jne         0052E49E
 0052E473    xor         ecx,ecx
 0052E475    mov         edx,6
 0052E47A    mov         eax,dword ptr [ebp-8]
 0052E47D    mov         ebx,dword ptr [eax]
 0052E47F    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0052E482    mov         eax,dword ptr [ebp-8]
 0052E485    call        004CE548
 0052E48A    mov         word ptr [ebp-0E],ax
 0052E48E    movzx       edx,word ptr [ebp-0E]
 0052E492    xor         ecx,ecx
 0052E494    mov         eax,dword ptr [ebp-8]
 0052E497    mov         ebx,dword ptr [eax]
 0052E499    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>0052E49C    jmp         0052E4AD
 0052E49E    xor         ecx,ecx
 0052E4A0    mov         edx,18
 0052E4A5    mov         eax,dword ptr [ebp-8]
 0052E4A8    mov         ebx,dword ptr [eax]
 0052E4AA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0052E4AD    mov         eax,dword ptr [ebp-8]
 0052E4B0    call        004CE56C
 0052E4B5    mov         dword ptr [ebp-4],eax
 0052E4B8    xor         eax,eax
 0052E4BA    pop         edx
 0052E4BB    pop         ecx
 0052E4BC    pop         ecx
 0052E4BD    mov         dword ptr fs:[eax],edx
 0052E4C0    push        52E4D5
 0052E4C5    mov         eax,dword ptr [ebp-8]
 0052E4C8    call        TObject.Free
 0052E4CD    ret
>0052E4CE    jmp         @HandleFinally
>0052E4D3    jmp         0052E4C5
 0052E4D5    mov         eax,dword ptr [ebp-4]
 0052E4D8    pop         ebx
 0052E4D9    mov         esp,ebp
 0052E4DB    pop         ebp
 0052E4DC    ret
end;*}

//0052E4E0
procedure TfmLogicalTest.btGoClick(Sender:TObject);
begin
{*
 0052E4E0    push        ebp
 0052E4E1    mov         ebp,esp
 0052E4E3    mov         ecx,6
 0052E4E8    push        0
 0052E4EA    push        0
 0052E4EC    dec         ecx
>0052E4ED    jne         0052E4E8
 0052E4EF    mov         dword ptr [ebp-0C],edx
 0052E4F2    mov         dword ptr [ebp-4],eax
 0052E4F5    xor         eax,eax
 0052E4F7    push        ebp
 0052E4F8    push        52E853
 0052E4FD    push        dword ptr fs:[eax]
 0052E500    mov         dword ptr fs:[eax],esp
 0052E503    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E508    mov         byte ptr [eax],0
 0052E50B    lea         edx,[ebp-10]
 0052E50E    mov         eax,dword ptr [ebp-4]
 0052E511    mov         eax,dword ptr [eax+2F8];TfmLogicalTest.btGo:TButton
 0052E517    call        TPanel.GetCaption
 0052E51C    mov         eax,dword ptr [ebp-10]
 0052E51F    mov         edx,52E868;'STOP'
 0052E524    call        @LStrCmp
>0052E529    jne         0052E54B
 0052E52B    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E530    mov         byte ptr [eax],1
 0052E533    mov         edx,52E878;'GO'
 0052E538    mov         eax,dword ptr [ebp-4]
 0052E53B    mov         eax,dword ptr [eax+2F8];TfmLogicalTest.btGo:TButton
 0052E541    call        TPanel.SetCaption
>0052E546    jmp         0052E830
 0052E54B    mov         dword ptr [ebp-8],0FFFFFFFF
 0052E552    mov         edx,52E868;'STOP'
 0052E557    mov         eax,dword ptr [ebp-4]
 0052E55A    mov         eax,dword ptr [eax+2F8];TfmLogicalTest.btGo:TButton
 0052E560    call        TPanel.SetCaption
 0052E565    mov         eax,dword ptr [ebp-4]
 0052E568    mov         eax,dword ptr [eax+344];TfmLogicalTest.cbScan:TCheckBox
 0052E56E    mov         edx,dword ptr [eax]
 0052E570    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052E576    test        al,al
>0052E578    je          0052E65E
 0052E57E    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E583    cmp         byte ptr [eax],0
>0052E586    jne         0052E65E
 0052E58C    call        0040E3F0
 0052E591    add         esp,0FFFFFFF8
 0052E594    fstp        qword ptr [esp]
 0052E597    wait
 0052E598    lea         eax,[ebp-18]
 0052E59B    call        0040F100
 0052E5A0    push        dword ptr [ebp-18]
 0052E5A3    push        52E884;' '
 0052E5A8    call        0040E41C
 0052E5AD    add         esp,0FFFFFFF8
 0052E5B0    fstp        qword ptr [esp]
 0052E5B3    wait
 0052E5B4    lea         eax,[ebp-1C]
 0052E5B7    call        0040F120
 0052E5BC    push        dword ptr [ebp-1C]
 0052E5BF    push        52E884;' '
 0052E5C4    push        52E890;'Logical Scan - Start'
 0052E5C9    lea         eax,[ebp-14]
 0052E5CC    mov         edx,5
 0052E5D1    call        @LStrCatN
 0052E5D6    mov         edx,dword ptr [ebp-14]
 0052E5D9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052E5DE    mov         eax,dword ptr [eax]
 0052E5E0    mov         eax,dword ptr [eax+2F8]
 0052E5E6    mov         eax,dword ptr [eax+248]
 0052E5EC    mov         ecx,dword ptr [eax]
 0052E5EE    call        dword ptr [ecx+38]
 0052E5F1    mov         eax,dword ptr [ebp-4]
 0052E5F4    call        0052CEF0
 0052E5F9    call        0040E3F0
 0052E5FE    add         esp,0FFFFFFF8
 0052E601    fstp        qword ptr [esp]
 0052E604    wait
 0052E605    lea         eax,[ebp-24]
 0052E608    call        0040F100
 0052E60D    push        dword ptr [ebp-24]
 0052E610    push        52E884;' '
 0052E615    call        0040E41C
 0052E61A    add         esp,0FFFFFFF8
 0052E61D    fstp        qword ptr [esp]
 0052E620    wait
 0052E621    lea         eax,[ebp-28]
 0052E624    call        0040F120
 0052E629    push        dword ptr [ebp-28]
 0052E62C    push        52E884;' '
 0052E631    push        52E8B0;'Logical Scan - End'
 0052E636    lea         eax,[ebp-20]
 0052E639    mov         edx,5
 0052E63E    call        @LStrCatN
 0052E643    mov         edx,dword ptr [ebp-20]
 0052E646    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052E64B    mov         eax,dword ptr [eax]
 0052E64D    mov         eax,dword ptr [eax+2F8]
 0052E653    mov         eax,dword ptr [eax+248]
 0052E659    mov         ecx,dword ptr [eax]
 0052E65B    call        dword ptr [ecx+38]
 0052E65E    push        7D0
 0052E663    call        kernel32.Sleep
 0052E668    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E66D    cmp         byte ptr [eax],0
>0052E670    jne         0052E67A
 0052E672    call        0052E410
 0052E677    mov         dword ptr [ebp-8],eax
 0052E67A    cmp         dword ptr [ebp-8],0FFFFFFFF
>0052E67E    je          0052E6A7
 0052E680    mov         eax,dword ptr [ebp-8]
 0052E683    xor         edx,edx
 0052E685    push        edx
 0052E686    push        eax
 0052E687    lea         eax,[ebp-30]
 0052E68A    call        IntToStr
 0052E68F    mov         ecx,dword ptr [ebp-30]
 0052E692    lea         eax,[ebp-2C]
 0052E695    mov         edx,52E8CC;'In G-List :'
 0052E69A    call        @LStrCat3
 0052E69F    mov         eax,dword ptr [ebp-2C]
 0052E6A2    call        00544EB4
 0052E6A7    cmp         dword ptr [ebp-8],0FFFFFFFF
>0052E6AB    je          0052E7C3
 0052E6B1    cmp         dword ptr [ebp-8],0
>0052E6B5    je          0052E7C3
 0052E6BB    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E6C0    cmp         byte ptr [eax],0
>0052E6C3    jne         0052E7C3
 0052E6C9    mov         eax,dword ptr [ebp-4]
 0052E6CC    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052E6D2    mov         edx,dword ptr [eax]
 0052E6D4    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052E6DA    test        al,al
>0052E6DC    je          0052E7C3
 0052E6E2    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E6E7    cmp         byte ptr [eax],0
>0052E6EA    jne         0052E7C3
 0052E6F0    mov         eax,52E8E0;'Move G 2 P - Start'
 0052E6F5    call        00544EB4
 0052E6FA    call        004CF444
 0052E6FF    call        004CCA5C
 0052E704    mov         eax,52E8FC;'Move G 2 P - '
 0052E709    call        00544F6C
 0052E70E    mov         eax,dword ptr [ebp-4]
 0052E711    mov         eax,dword ptr [eax+340];TfmLogicalTest.cbReset:TCheckBox
 0052E717    mov         edx,dword ptr [eax]
 0052E719    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052E71F    test        al,al
>0052E721    je          0052E74A
 0052E723    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E728    cmp         byte ptr [eax],0
>0052E72B    jne         0052E74A
 0052E72D    mov         eax,52E914;'Restart FW - Start'
 0052E732    call        00544EB4
 0052E737    mov         ax,1
 0052E73B    call        004CF350
 0052E740    mov         eax,52E930;'Restart FW - '
 0052E745    call        00544F6C
 0052E74A    push        2710
 0052E74F    call        kernel32.Sleep
 0052E754    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E759    cmp         byte ptr [eax],0
>0052E75C    jne         0052E7B9
 0052E75E    mov         eax,dword ptr [ebp-4]
 0052E761    mov         eax,dword ptr [eax+338];TfmLogicalTest.rbFormat:TRadioButton
 0052E767    mov         edx,dword ptr [eax]
 0052E769    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0052E76F    test        al,al
>0052E771    je          0052E797
 0052E773    mov         eax,52E948;'Format Unit - Start'
 0052E778    call        00544EB4
 0052E77D    mov         ax,2
 0052E781    call        004CF408
 0052E786    call        004CCA5C
 0052E78B    mov         eax,52E964;'Format Unit - '
 0052E790    call        00544F6C
>0052E795    jmp         0052E7B9
 0052E797    mov         eax,52E97C;'Quick Erase - Start'
 0052E79C    call        00544EB4
 0052E7A1    mov         ax,2
 0052E7A5    call        004CF590
 0052E7AA    call        004CCA5C
 0052E7AF    mov         eax,52E998;'Quick Erase - '
 0052E7B4    call        00544F6C
 0052E7B9    push        2710
 0052E7BE    call        kernel32.Sleep
 0052E7C3    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E7C8    cmp         byte ptr [eax],0
>0052E7CB    jne         0052E7EC
 0052E7CD    cmp         dword ptr [ebp-8],0
>0052E7D1    je          0052E7EC
 0052E7D3    mov         eax,dword ptr [ebp-4]
 0052E7D6    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052E7DC    mov         edx,dword ptr [eax]
 0052E7DE    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052E7E4    test        al,al
>0052E7E6    jne         0052E565
 0052E7EC    mov         edx,52E878;'GO'
 0052E7F1    mov         eax,dword ptr [ebp-4]
 0052E7F4    mov         eax,dword ptr [eax+2F8];TfmLogicalTest.btGo:TButton
 0052E7FA    call        TPanel.SetCaption
 0052E7FF    call        005451D0
 0052E804    mov         eax,dword ptr [ebp-4]
 0052E807    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052E80D    mov         edx,dword ptr [eax]
 0052E80F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052E815    test        al,al
>0052E817    je          0052E830
 0052E819    mov         eax,[0056E5A4];^gvar_0056DF04
 0052E81E    cmp         byte ptr [eax],0
>0052E821    jne         0052E830
 0052E823    mov         dx,0FFFF
 0052E827    mov         ax,0FFFF
 0052E82B    call        004D0A50
 0052E830    xor         eax,eax
 0052E832    pop         edx
 0052E833    pop         ecx
 0052E834    pop         ecx
 0052E835    mov         dword ptr fs:[eax],edx
 0052E838    push        52E85A
 0052E83D    lea         eax,[ebp-30]
 0052E840    mov         edx,8
 0052E845    call        @LStrArrayClr
 0052E84A    lea         eax,[ebp-10]
 0052E84D    call        @LStrClr
 0052E852    ret
>0052E853    jmp         @HandleFinally
>0052E858    jmp         0052E83D
 0052E85A    mov         esp,ebp
 0052E85C    pop         ebp
 0052E85D    ret
*}
end;

//0052E9A8
procedure TfmLogicalTest.cbMakeAutoReassignClick(Sender:TObject);
begin
{*
 0052E9A8    push        ebp
 0052E9A9    mov         ebp,esp
 0052E9AB    add         esp,0FFFFFFF8
 0052E9AE    mov         dword ptr [ebp-8],edx
 0052E9B1    mov         dword ptr [ebp-4],eax
 0052E9B4    pop         ecx
 0052E9B5    pop         ecx
 0052E9B6    pop         ebp
 0052E9B7    ret
*}
end;

//0052E9B8
procedure TfmLogicalTest.btGetMaxLbaClick(Sender:TObject);
begin
{*
 0052E9B8    push        ebp
 0052E9B9    mov         ebp,esp
 0052E9BB    add         esp,0FFFFFFF4
 0052E9BE    xor         ecx,ecx
 0052E9C0    mov         dword ptr [ebp-0C],ecx
 0052E9C3    mov         dword ptr [ebp-8],edx
 0052E9C6    mov         dword ptr [ebp-4],eax
 0052E9C9    xor         eax,eax
 0052E9CB    push        ebp
 0052E9CC    push        52EA3F
 0052E9D1    push        dword ptr fs:[eax]
 0052E9D4    mov         dword ptr fs:[eax],esp
 0052E9D7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052E9DC    mov         eax,dword ptr [eax]
 0052E9DE    xor         edx,edx
 0052E9E0    call        TfmHDD.miIdentifyClick
 0052E9E5    mov         eax,[0056E4E4];^gvar_0056DE78
 0052E9EA    mov         edx,dword ptr [eax+4]
 0052E9ED    mov         eax,dword ptr [eax]
 0052E9EF    sub         eax,1
 0052E9F2    sbb         edx,0
 0052E9F5    push        edx
 0052E9F6    push        eax
 0052E9F7    lea         eax,[ebp-0C]
 0052E9FA    call        IntToStr
 0052E9FF    mov         edx,dword ptr [ebp-0C]
 0052EA02    mov         eax,dword ptr [ebp-4]
 0052EA05    mov         eax,dword ptr [eax+300];TfmLogicalTest.edEnd:TLabeledEdit
 0052EA0B    call        TPanel.SetCaption
 0052EA10    mov         edx,dword ptr ds:[56E1C4];^gvar_0056DF08
 0052EA16    mov         dl,byte ptr [edx]
 0052EA18    mov         eax,dword ptr [ebp-4]
 0052EA1B    mov         eax,dword ptr [eax+310];TfmLogicalTest.cbLBA48:TCheckBox
 0052EA21    mov         ecx,dword ptr [eax]
 0052EA23    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0052EA29    xor         eax,eax
 0052EA2B    pop         edx
 0052EA2C    pop         ecx
 0052EA2D    pop         ecx
 0052EA2E    mov         dword ptr fs:[eax],edx
 0052EA31    push        52EA46
 0052EA36    lea         eax,[ebp-0C]
 0052EA39    call        @LStrClr
 0052EA3E    ret
>0052EA3F    jmp         @HandleFinally
>0052EA44    jmp         0052EA36
 0052EA46    mov         esp,ebp
 0052EA48    pop         ebp
 0052EA49    ret
*}
end;

//0052EA4C
procedure TfmLogicalTest.cbLoopClick(Sender:TObject);
begin
{*
 0052EA4C    push        ebp
 0052EA4D    mov         ebp,esp
 0052EA4F    add         esp,0FFFFFFF8
 0052EA52    mov         dword ptr [ebp-8],edx
 0052EA55    mov         dword ptr [ebp-4],eax
 0052EA58    mov         eax,dword ptr [ebp-4]
 0052EA5B    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052EA61    mov         edx,dword ptr [eax]
 0052EA63    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052EA69    mov         edx,eax
 0052EA6B    mov         eax,dword ptr [ebp-4]
 0052EA6E    mov         eax,dword ptr [eax+340];TfmLogicalTest.cbReset:TCheckBox
 0052EA74    mov         ecx,dword ptr [eax]
 0052EA76    call        dword ptr [ecx+64];TImage.SetEnabled
 0052EA79    mov         eax,dword ptr [ebp-4]
 0052EA7C    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052EA82    mov         edx,dword ptr [eax]
 0052EA84    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052EA8A    mov         edx,eax
 0052EA8C    mov         eax,dword ptr [ebp-4]
 0052EA8F    mov         eax,dword ptr [eax+338];TfmLogicalTest.rbFormat:TRadioButton
 0052EA95    mov         ecx,dword ptr [eax]
 0052EA97    call        dword ptr [ecx+64];TImage.SetEnabled
 0052EA9A    mov         eax,dword ptr [ebp-4]
 0052EA9D    mov         eax,dword ptr [eax+334];TfmLogicalTest.cbLoop:TCheckBox
 0052EAA3    mov         edx,dword ptr [eax]
 0052EAA5    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052EAAB    mov         edx,eax
 0052EAAD    mov         eax,dword ptr [ebp-4]
 0052EAB0    mov         eax,dword ptr [eax+33C];TfmLogicalTest.rbErase:TRadioButton
 0052EAB6    mov         ecx,dword ptr [eax]
 0052EAB8    call        dword ptr [ecx+64];TImage.SetEnabled
 0052EABB    pop         ecx
 0052EABC    pop         ecx
 0052EABD    pop         ebp
 0052EABE    ret
*}
end;

//0052EAC0
procedure TfmLogicalTest.rgSkinClick(Sender:TObject);
begin
{*
 0052EAC0    push        ebp
 0052EAC1    mov         ebp,esp
 0052EAC3    add         esp,0FFFFFFF8
 0052EAC6    mov         dword ptr [ebp-8],edx
 0052EAC9    mov         dword ptr [ebp-4],eax
 0052EACC    mov         eax,[0056E2F4];^gvar_0056D4F4:TfmScanGrid
 0052EAD1    cmp         dword ptr [eax],0
>0052EAD4    je          0052EAF3
 0052EAD6    mov         eax,dword ptr [ebp-4]
 0052EAD9    mov         eax,dword ptr [eax+364];TfmLogicalTest.rgSkin:TRadioGroup
 0052EADF    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0052EAE5    mov         edx,dword ptr ds:[56E2F4];^gvar_0056D4F4:TfmScanGrid
 0052EAEB    mov         edx,dword ptr [edx]
 0052EAED    mov         dword ptr [edx+310],eax;TfmScanGrid.?f310:Integer
 0052EAF3    pop         ecx
 0052EAF4    pop         ecx
 0052EAF5    pop         ebp
 0052EAF6    ret
*}
end;

Initialization
Finalization
//0052EAF8
{*
 0052EAF8    push        ebp
 0052EAF9    mov         ebp,esp
 0052EAFB    xor         eax,eax
 0052EAFD    push        ebp
 0052EAFE    push        52EB34
 0052EB03    push        dword ptr fs:[eax]
 0052EB06    mov         dword ptr fs:[eax],esp
 0052EB09    inc         dword ptr ds:[597BE0]
>0052EB0F    jne         0052EB26
 0052EB11    mov         eax,597BF4;gvar_00597BF4:array[15] of ?
 0052EB16    mov         ecx,0F
 0052EB1B    mov         edx,dword ptr ds:[4010C0];String
 0052EB21    call        @FinalizeArray
 0052EB26    xor         eax,eax
 0052EB28    pop         edx
 0052EB29    pop         ecx
 0052EB2A    pop         ecx
 0052EB2B    mov         dword ptr fs:[eax],edx
 0052EB2E    push        52EB3B
 0052EB33    ret
>0052EB34    jmp         @HandleFinally
>0052EB39    jmp         0052EB33
 0052EB3B    pop         ebp
 0052EB3C    ret
*}
end.