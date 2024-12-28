//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uServoTest;

interface

uses
  SysUtils, Classes, GR32_Image, ExtCtrls, StdCtrls;

type
  TfmServoTest = class(TForm)
  published
    Im32:TImage32;//f2F8
    Panel1:TPanel;//f2FC
    btGo:TButton;//f300
    edTracks:TLabeledEdit;//f304
    btHeads:TButton;//f308
    btTracks:TButton;//f30C
    edHeads:TLabeledEdit;//f310
    rbAll:TRadioButton;//f314
    rbCurrent:TRadioButton;//f318
    edStep:TLabeledEdit;//f31C
    cbType:TComboBox;//f320
    edStart:TLabeledEdit;//f324
    cbFromZones:TCheckBox;//f328
    procedure FormShow(Sender:TObject);//0052B6A8
    procedure btTracksClick(Sender:TObject);//0052B780
    procedure btHeadsClick(Sender:TObject);//0052BA5C
    procedure FormResize(Sender:TObject);//0052B610
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0052AC20
    procedure btGoClick(Sender:TObject);//0052AEB8
    procedure FormCreate(Sender:TObject);//0052B58C
  public
    f32C:byte;//f32C
    f32D:byte;//f32D
  end;
    procedure sub_0052ABCC(?:TfmServoTest; ?:TfmHDD);//0052ABCC
    procedure sub_0052AC80;//0052AC80

implementation

{$R *.DFM}

//0052ABCC
procedure sub_0052ABCC(?:TfmServoTest; ?:TfmHDD);
begin
{*
 0052ABCC    push        ebp
 0052ABCD    mov         ebp,esp
 0052ABCF    add         esp,0FFFFFFF8
 0052ABD2    mov         dword ptr [ebp-8],edx
 0052ABD5    mov         dword ptr [ebp-4],eax
 0052ABD8    cmp         dword ptr ds:[56D4D0],0;gvar_0056D4D0:TfmServoTest
>0052ABDF    jne         0052ABF5
 0052ABE1    mov         ecx,dword ptr [ebp-8]
 0052ABE4    mov         dl,1
 0052ABE6    mov         eax,[0052A900];TfmServoTest
 0052ABEB    call        TfmProgress.Create;TfmServoTest.Create
 0052ABF0    mov         [0056D4D0],eax;gvar_0056D4D0:TfmServoTest
 0052ABF5    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052ABFA    cmp         byte ptr [eax+1A6],0;TfmServoTest.FShowing:Boolean
>0052AC01    je          0052AC12
 0052AC03    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052AC08    mov         edx,dword ptr [eax]
 0052AC0A    call        dword ptr [edx+0C4];TfmServoTest.sub_004A746C
>0052AC10    jmp         0052AC1C
 0052AC12    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052AC17    call        004A7450
 0052AC1C    pop         ecx
 0052AC1D    pop         ecx
 0052AC1E    pop         ebp
 0052AC1F    ret
*}
end;

//0052AC20
procedure TfmServoTest.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0052AC20    push        ebp
 0052AC21    mov         ebp,esp
 0052AC23    add         esp,0FFFFFFF4
 0052AC26    mov         dword ptr [ebp-8],ecx
 0052AC29    mov         dword ptr [ebp-0C],edx
 0052AC2C    mov         dword ptr [ebp-4],eax
 0052AC2F    push        20
 0052AC31    call        kernel32.GetCurrentProcess
 0052AC36    push        eax
 0052AC37    call        kernel32.SetPriorityClass
 0052AC3C    push        0
 0052AC3E    call        kernel32.GetCurrentThread
 0052AC43    push        eax
 0052AC44    call        kernel32.SetThreadPriority
 0052AC49    mov         eax,dword ptr [ebp-4]
 0052AC4C    cmp         byte ptr [eax+32C],0;TfmServoTest.?f32C:byte
>0052AC53    je          0052AC6F
 0052AC55    mov         eax,[0056E5A4];^gvar_0056DF04
 0052AC5A    mov         byte ptr [eax],1
 0052AC5D    mov         eax,dword ptr [ebp-8]
 0052AC60    mov         byte ptr [eax],1
 0052AC63    mov         eax,dword ptr [ebp-4]
 0052AC66    mov         byte ptr [eax+32D],1;TfmServoTest.?f32D:byte
>0052AC6D    jmp         0052AC7C
 0052AC6F    mov         eax,dword ptr [ebp-8]
 0052AC72    mov         byte ptr [eax],2
 0052AC75    xor         eax,eax
 0052AC77    mov         [0056D4D0],eax;gvar_0056D4D0:TfmServoTest
 0052AC7C    mov         esp,ebp
 0052AC7E    pop         ebp
 0052AC7F    ret
*}
end;

//0052AC80
procedure sub_0052AC80;
begin
{*
 0052AC80    push        ebp
 0052AC81    mov         ebp,esp
 0052AC83    add         esp,0FFFFFFCC
 0052AC86    xor         eax,eax
 0052AC88    mov         dword ptr [ebp-34],eax
 0052AC8B    mov         dword ptr [ebp-30],eax
 0052AC8E    mov         dword ptr [ebp-2C],eax
 0052AC91    xor         eax,eax
 0052AC93    push        ebp
 0052AC94    push        52AE94
 0052AC99    push        dword ptr fs:[eax]
 0052AC9C    mov         dword ptr fs:[eax],esp
 0052AC9F    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052ACA4    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052ACAA    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052ACB0    mov         dword ptr [ebp-28],eax
 0052ACB3    mov         eax,dword ptr [ebp-28]
 0052ACB6    mov         edx,dword ptr [eax]
 0052ACB8    call        dword ptr [edx+10];TBitmap32.sub_0051E1E4
 0052ACBB    mov         edx,0FF000000
 0052ACC0    mov         eax,dword ptr [ebp-28]
 0052ACC3    call        0051E97C
 0052ACC8    mov         eax,dword ptr [ebp-28]
 0052ACCB    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052ACCE    push        eax
 0052ACCF    mov         eax,dword ptr [ebp-28]
 0052ACD2    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0052ACD5    push        eax
 0052ACD6    push        0FF000000
 0052ACDB    xor         ecx,ecx
 0052ACDD    xor         edx,edx
 0052ACDF    mov         eax,dword ptr [ebp-28]
 0052ACE2    call        0052203C
 0052ACE7    mov         eax,dword ptr [ebp-28]
 0052ACEA    mov         dword ptr [eax+0BC],0FF007F00;TBitmap32.?fBC:dword
 0052ACF4    xor         ecx,ecx
 0052ACF6    xor         edx,edx
 0052ACF8    xor         eax,eax
 0052ACFA    call        004085C4
 0052ACFF    mov         eax,dword ptr [ebp-28]
 0052AD02    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052AD05    mov         dword ptr [ebp-1C],eax
 0052AD08    mov         eax,dword ptr [ebp-28]
 0052AD0B    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0052AD0E    mov         dword ptr [ebp-20],eax
 0052AD11    xor         eax,eax
 0052AD13    mov         dword ptr [ebp-10],eax
 0052AD16    mov         eax,dword ptr [ebp-1C]
 0052AD19    dec         eax
 0052AD1A    mov         dword ptr [ebp-4],eax
 0052AD1D    mov         eax,dword ptr [ebp-20]
 0052AD20    sub         eax,14
 0052AD23    mov         dword ptr [ebp-8],eax
 0052AD26    cmp         dword ptr [ebp-8],0
>0052AD2A    jle         0052AD8F
 0052AD2C    lea         edx,[ebp-2C]
 0052AD2F    mov         eax,dword ptr [ebp-10]
 0052AD32    call        IntToStr
 0052AD37    lea         eax,[ebp-2C]
 0052AD3A    mov         edx,52AEA8;'ms'
 0052AD3F    call        @LStrCat
 0052AD44    mov         eax,dword ptr [ebp-2C]
 0052AD47    push        eax
 0052AD48    push        0
 0052AD4A    push        0FF7F7F7F
 0052AD4F    mov         ecx,dword ptr [ebp-8]
 0052AD52    add         ecx,2
 0052AD55    mov         edx,5
 0052AD5A    mov         eax,dword ptr [ebp-28]
 0052AD5D    call        00522C30
 0052AD62    mov         eax,dword ptr [ebp-4]
 0052AD65    push        eax
 0052AD66    mov         eax,dword ptr [ebp-8]
 0052AD69    push        eax
 0052AD6A    push        0FF7F7F7F
 0052AD6F    push        0
 0052AD71    mov         ecx,dword ptr [ebp-8]
 0052AD74    mov         edx,1
 0052AD79    mov         eax,dword ptr [ebp-28]
 0052AD7C    call        00520880
 0052AD81    sub         dword ptr [ebp-8],64
 0052AD85    add         dword ptr [ebp-10],64
 0052AD89    cmp         dword ptr [ebp-8],0
>0052AD8D    jg          0052AD2C
 0052AD8F    mov         dword ptr [ebp-4],1
 0052AD96    mov         eax,dword ptr [ebp-1C]
 0052AD99    mov         dword ptr [ebp-10],eax
 0052AD9C    mov         eax,dword ptr [ebp-20]
 0052AD9F    mov         dword ptr [ebp-8],eax
 0052ADA2    mov         dword ptr [ebp-0C],0A
 0052ADA9    lea         edx,[ebp-30]
 0052ADAC    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052ADB1    mov         eax,dword ptr [eax+304];TfmServoTest.edTracks:TLabeledEdit
 0052ADB7    call        TPanel.GetCaption
 0052ADBC    mov         eax,dword ptr [ebp-30]
 0052ADBF    mov         edx,186A0
 0052ADC4    call        0040C4A8
 0052ADC9    mov         dword ptr [ebp-24],eax
 0052ADCC    cmp         dword ptr [ebp-24],0
>0052ADD0    jne         0052ADD9
 0052ADD2    mov         dword ptr [ebp-24],186A0
 0052ADD9    mov         eax,dword ptr [ebp-24]
 0052ADDC    cdq
 0052ADDD    idiv        eax,dword ptr [ebp-1C]
 0052ADE0    mov         dword ptr [ebp-18],eax
 0052ADE3    cmp         dword ptr [ebp-18],0
>0052ADE7    jne         0052ADF0
 0052ADE9    mov         dword ptr [ebp-18],1
 0052ADF0    mov         eax,2710
 0052ADF5    cdq
 0052ADF6    idiv        eax,dword ptr [ebp-18]
 0052ADF9    mov         dword ptr [ebp-14],eax
 0052ADFC    mov         eax,dword ptr [ebp-4]
 0052ADFF    cmp         eax,dword ptr [ebp-10]
>0052AE02    jge         0052AE66
 0052AE04    mov         eax,dword ptr [ebp-4]
 0052AE07    push        eax
 0052AE08    push        1
 0052AE0A    push        0FF7F7F7F
 0052AE0F    push        0
 0052AE11    mov         ecx,dword ptr [ebp-8]
 0052AE14    mov         edx,dword ptr [ebp-4]
 0052AE17    mov         eax,dword ptr [ebp-28]
 0052AE1A    call        00520880
 0052AE1F    mov         eax,dword ptr [ebp-14]
 0052AE22    add         dword ptr [ebp-4],eax
 0052AE25    lea         edx,[ebp-34]
 0052AE28    mov         eax,dword ptr [ebp-0C]
 0052AE2B    call        IntToStr
 0052AE30    lea         eax,[ebp-34]
 0052AE33    mov         edx,52AEB4;'k'
 0052AE38    call        @LStrCat
 0052AE3D    mov         eax,dword ptr [ebp-34]
 0052AE40    push        eax
 0052AE41    push        0
 0052AE43    push        0FF7F7F7F
 0052AE48    mov         ecx,dword ptr [ebp-8]
 0052AE4B    sub         ecx,12
 0052AE4E    mov         edx,dword ptr [ebp-4]
 0052AE51    inc         edx
 0052AE52    mov         eax,dword ptr [ebp-28]
 0052AE55    call        00522C30
 0052AE5A    add         dword ptr [ebp-0C],0A
 0052AE5E    mov         eax,dword ptr [ebp-4]
 0052AE61    cmp         eax,dword ptr [ebp-10]
>0052AE64    jl          0052AE04
 0052AE66    mov         eax,dword ptr [ebp-28]
 0052AE69    mov         edx,dword ptr [eax]
 0052AE6B    call        dword ptr [edx+14];TBitmap32.sub_0051E220
 0052AE6E    xor         eax,eax
 0052AE70    pop         edx
 0052AE71    pop         ecx
 0052AE72    pop         ecx
 0052AE73    mov         dword ptr fs:[eax],edx
 0052AE76    push        52AE9B
 0052AE7B    lea         eax,[ebp-34]
 0052AE7E    call        @LStrClr
 0052AE83    lea         eax,[ebp-30]
 0052AE86    call        @LStrClr
 0052AE8B    lea         eax,[ebp-2C]
 0052AE8E    call        @LStrClr
 0052AE93    ret
>0052AE94    jmp         @HandleFinally
>0052AE99    jmp         0052AE7B
 0052AE9B    mov         esp,ebp
 0052AE9D    pop         ebp
 0052AE9E    ret
*}
end;

//0052AEB8
procedure TfmServoTest.btGoClick(Sender:TObject);
begin
{*
 0052AEB8    push        ebp
 0052AEB9    mov         ebp,esp
 0052AEBB    mov         ecx,15
 0052AEC0    push        0
 0052AEC2    push        0
 0052AEC4    dec         ecx
>0052AEC5    jne         0052AEC0
 0052AEC7    push        ecx
 0052AEC8    mov         dword ptr [ebp-74],edx
 0052AECB    mov         dword ptr [ebp-4],eax
 0052AECE    xor         eax,eax
 0052AED0    push        ebp
 0052AED1    push        52B51F
 0052AED6    push        dword ptr fs:[eax]
 0052AED9    mov         dword ptr fs:[eax],esp
 0052AEDC    lea         eax,[ebp-48]
 0052AEDF    push        eax
 0052AEE0    call        kernel32.QueryPerformanceFrequency
 0052AEE5    test        eax,eax
>0052AEE7    je          0052B4E1
 0052AEED    push        0
 0052AEEF    push        3E8
 0052AEF4    mov         eax,dword ptr [ebp-48]
 0052AEF7    mov         edx,dword ptr [ebp-44]
 0052AEFA    call        @_lldiv
 0052AEFF    mov         dword ptr [ebp-48],eax
 0052AF02    mov         dword ptr [ebp-44],edx
 0052AF05    lea         edx,[ebp-78]
 0052AF08    mov         eax,dword ptr [ebp-4]
 0052AF0B    mov         eax,dword ptr [eax+300];TfmServoTest.btGo:TButton
 0052AF11    call        TPanel.GetCaption
 0052AF16    mov         eax,dword ptr [ebp-78]
 0052AF19    mov         edx,52B534;'STOP'
 0052AF1E    call        @LStrCmp
>0052AF23    jne         0052AF45
 0052AF25    mov         eax,[0056E5A4];^gvar_0056DF04
 0052AF2A    mov         byte ptr [eax],1
 0052AF2D    mov         eax,dword ptr [ebp-4]
 0052AF30    mov         eax,dword ptr [eax+300];TfmServoTest.btGo:TButton
 0052AF36    mov         edx,52B544;'GO'
 0052AF3B    call        TPanel.SetCaption
>0052AF40    jmp         0052B4E1
 0052AF45    mov         eax,dword ptr [ebp-4]
 0052AF48    mov         eax,dword ptr [eax+300];TfmServoTest.btGo:TButton
 0052AF4E    mov         edx,52B534;'STOP'
 0052AF53    call        TPanel.SetCaption
 0052AF58    mov         eax,dword ptr [ebp-4]
 0052AF5B    mov         byte ptr [eax+32D],0;TfmServoTest.?f32D:byte
 0052AF62    mov         eax,dword ptr [ebp-4]
 0052AF65    mov         byte ptr [eax+32C],1;TfmServoTest.?f32C:byte
 0052AF6C    xor         eax,eax
 0052AF6E    push        ebp
 0052AF6F    push        52B4DA
 0052AF74    push        dword ptr fs:[eax]
 0052AF77    mov         dword ptr fs:[eax],esp
 0052AF7A    call        0052AC80
 0052AF7F    mov         eax,dword ptr [ebp-4]
 0052AF82    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052AF88    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052AF8E    mov         dword ptr [ebp-6C],eax
 0052AF91    mov         eax,dword ptr [ebp-6C]
 0052AF94    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052AF97    mov         dword ptr [ebp-20],eax
 0052AF9A    mov         eax,dword ptr [ebp-6C]
 0052AF9D    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0052AFA0    mov         dword ptr [ebp-24],eax
 0052AFA3    call        004CED2C
 0052AFA8    mov         eax,[0056E5A4];^gvar_0056DF04
 0052AFAD    mov         byte ptr [eax],0
 0052AFB0    lea         edx,[ebp-7C]
 0052AFB3    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052AFB8    mov         eax,dword ptr [eax+31C];TfmServoTest.edStep:TLabeledEdit
 0052AFBE    call        TPanel.GetCaption
 0052AFC3    mov         eax,dword ptr [ebp-7C]
 0052AFC6    mov         edx,64
 0052AFCB    call        0040C4A8
 0052AFD0    mov         dword ptr [ebp-14],eax
 0052AFD3    lea         edx,[ebp-80]
 0052AFD6    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052AFDB    mov         eax,dword ptr [eax+304];TfmServoTest.edTracks:TLabeledEdit
 0052AFE1    call        TPanel.GetCaption
 0052AFE6    mov         eax,dword ptr [ebp-80]
 0052AFE9    mov         edx,186A0
 0052AFEE    call        0040C4A8
 0052AFF3    mov         dword ptr [ebp-38],eax
 0052AFF6    lea         edx,[ebp-84]
 0052AFFC    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052B001    mov         eax,dword ptr [eax+324];TfmServoTest.edStart:TLabeledEdit
 0052B007    call        TPanel.GetCaption
 0052B00C    mov         eax,dword ptr [ebp-84]
 0052B012    xor         edx,edx
 0052B014    call        0040C4A8
 0052B019    mov         dword ptr [ebp-3C],eax
 0052B01C    mov         eax,dword ptr [ebp-38]
 0052B01F    cmp         eax,dword ptr [ebp-3C]
>0052B022    jne         0052B02B
 0052B024    mov         dword ptr [ebp-38],186A0
 0052B02B    lea         edx,[ebp-88]
 0052B031    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052B036    mov         eax,dword ptr [eax+310];TfmServoTest.edHeads:TLabeledEdit
 0052B03C    call        TPanel.GetCaption
 0052B041    mov         eax,dword ptr [ebp-88]
 0052B047    xor         edx,edx
 0052B049    call        0040C4A8
 0052B04E    mov         word ptr [ebp-3E],ax
 0052B052    mov         eax,dword ptr [ebp-4]
 0052B055    mov         eax,dword ptr [eax+320];TfmServoTest.cbType:TComboBox
 0052B05B    mov         edx,dword ptr [eax]
 0052B05D    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0052B063    mov         dword ptr [ebp-34],eax
 0052B066    mov         eax,dword ptr [ebp-38]
 0052B069    cdq
 0052B06A    idiv        eax,dword ptr [ebp-20]
 0052B06D    mov         dword ptr [ebp-8],eax
 0052B070    cmp         dword ptr [ebp-8],0
>0052B074    jne         0052B07D
 0052B076    mov         dword ptr [ebp-8],1
 0052B07D    mov         eax,dword ptr [ebp-4]
 0052B080    mov         eax,dword ptr [eax+314];TfmServoTest.rbAll:TRadioButton
 0052B086    mov         edx,dword ptr [eax]
 0052B088    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0052B08E    test        al,al
>0052B090    je          0052B108
 0052B092    xor         eax,eax
 0052B094    mov         dword ptr [ebp-10],eax
 0052B097    movzx       eax,word ptr [ebp-3E]
 0052B09B    dec         eax
 0052B09C    test        eax,eax
>0052B09E    jl          0052B113
 0052B0A0    inc         eax
 0052B0A1    mov         dword ptr [ebp-70],eax
 0052B0A4    mov         dword ptr [ebp-0C],0
 0052B0AB    lea         edx,[ebp-90]
 0052B0B1    mov         eax,dword ptr [ebp-0C]
 0052B0B4    call        IntToStr
 0052B0B9    mov         ecx,dword ptr [ebp-90]
 0052B0BF    lea         eax,[ebp-8C]
 0052B0C5    mov         edx,52B550;'Head '
 0052B0CA    call        @LStrCat3
 0052B0CF    mov         eax,dword ptr [ebp-8C]
 0052B0D5    push        eax
 0052B0D6    push        0
 0052B0D8    mov         eax,dword ptr [ebp-0C]
 0052B0DB    mov         eax,dword ptr [eax*4+56D4D4]
 0052B0E2    push        eax
 0052B0E3    mov         ecx,dword ptr [ebp-0C]
 0052B0E6    mov         eax,ecx
 0052B0E8    shl         ecx,4
 0052B0EB    sub         ecx,eax
 0052B0ED    add         ecx,5
 0052B0F0    mov         edx,dword ptr [ebp-20]
 0052B0F3    sub         edx,28
 0052B0F6    mov         eax,dword ptr [ebp-6C]
 0052B0F9    call        00522C30
 0052B0FE    inc         dword ptr [ebp-0C]
 0052B101    dec         dword ptr [ebp-70]
>0052B104    jne         0052B0AB
>0052B106    jmp         0052B113
 0052B108    movzx       eax,word ptr [ebp-3E]
 0052B10C    mov         dword ptr [ebp-10],eax
 0052B10F    inc         word ptr [ebp-3E]
 0052B113    mov         eax,dword ptr [ebp-24]
 0052B116    sub         eax,14
 0052B119    mov         dword ptr [ebp-28],eax
>0052B11C    jmp         0052B47D
 0052B121    mov         eax,dword ptr [ebp-4]
 0052B124    mov         eax,dword ptr [eax+328];TfmServoTest.cbFromZones:TCheckBox
 0052B12A    mov         edx,dword ptr [eax]
 0052B12C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052B132    test        al,al
>0052B134    je          0052B27D
 0052B13A    mov         eax,[0056E040];^gvar_005720C0
 0052B13F    cmp         byte ptr [eax],0
>0052B142    jne         0052B168
 0052B144    mov         eax,[0056E304];^gvar_0056DF54
 0052B149    cmp         word ptr [eax],65
>0052B14D    je          0052B168
 0052B14F    mov         eax,[0056E304];^gvar_0056DF54
 0052B154    cmp         word ptr [eax],73
>0052B158    je          0052B168
 0052B15A    mov         eax,[0056E01C];^gvar_005720C1
 0052B15F    cmp         byte ptr [eax],0
>0052B162    je          0052B27D
 0052B168    mov         eax,dword ptr [ebp-4]
 0052B16B    mov         eax,dword ptr [eax+314];TfmServoTest.rbAll:TRadioButton
 0052B171    mov         edx,dword ptr [eax]
 0052B173    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0052B179    test        al,al
>0052B17B    je          0052B27D
 0052B181    mov         dl,1
 0052B183    mov         eax,[0041DE14];TMemoryStream
 0052B188    call        TObject.Create;TMemoryStream.Create
 0052B18D    mov         dword ptr [ebp-64],eax
 0052B190    xor         eax,eax
 0052B192    push        ebp
 0052B193    push        52B276
 0052B198    push        dword ptr fs:[eax]
 0052B19B    mov         dword ptr fs:[eax],esp
 0052B19E    mov         ecx,dword ptr [ebp-64]
 0052B1A1    mov         dx,word ptr [ebp-10]
 0052B1A5    mov         ax,0D
 0052B1A9    call        004CFEC8
 0052B1AE    test        al,al
>0052B1B0    je          0052B260
 0052B1B6    mov         eax,dword ptr [ebp-64]
 0052B1B9    call        0054DA18
 0052B1BE    mov         dword ptr [ebp-68],eax
 0052B1C1    mov         eax,dword ptr [ebp-68]
 0052B1C4    lea         eax,[eax+eax*2]
 0052B1C7    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0052B1CD    mov         eax,dword ptr [edx+eax*4-8]
 0052B1D1    mov         dword ptr [ebp-38],eax
 0052B1D4    lea         eax,[ebp-94]
 0052B1DA    push        eax
 0052B1DB    mov         eax,[0056E214];^gvar_005720C4
 0052B1E0    mov         eax,dword ptr [eax+0C]
 0052B1E3    mov         dword ptr [ebp-9C],eax
 0052B1E9    mov         byte ptr [ebp-98],0
 0052B1F0    lea         edx,[ebp-9C]
 0052B1F6    xor         ecx,ecx
 0052B1F8    mov         eax,52B560;'$%x'
 0052B1FD    call        0040D630
 0052B202    mov         edx,dword ptr [ebp-94]
 0052B208    mov         eax,dword ptr [ebp-4]
 0052B20B    mov         eax,dword ptr [eax+324];TfmServoTest.edStart:TLabeledEdit
 0052B211    call        TPanel.SetCaption
 0052B216    lea         eax,[ebp-0A0]
 0052B21C    push        eax
 0052B21D    mov         eax,dword ptr [ebp-68]
 0052B220    lea         eax,[eax+eax*2]
 0052B223    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0052B229    mov         eax,dword ptr [edx+eax*4-8]
 0052B22D    mov         dword ptr [ebp-9C],eax
 0052B233    mov         byte ptr [ebp-98],0
 0052B23A    lea         edx,[ebp-9C]
 0052B240    xor         ecx,ecx
 0052B242    mov         eax,52B560;'$%x'
 0052B247    call        0040D630
 0052B24C    mov         edx,dword ptr [ebp-0A0]
 0052B252    mov         eax,dword ptr [ebp-4]
 0052B255    mov         eax,dword ptr [eax+304];TfmServoTest.edTracks:TLabeledEdit
 0052B25B    call        TPanel.SetCaption
 0052B260    xor         eax,eax
 0052B262    pop         edx
 0052B263    pop         ecx
 0052B264    pop         ecx
 0052B265    mov         dword ptr fs:[eax],edx
 0052B268    push        52B27D
 0052B26D    mov         eax,dword ptr [ebp-64]
 0052B270    call        TObject.Free
 0052B275    ret
>0052B276    jmp         @HandleFinally
>0052B27B    jmp         0052B26D
 0052B27D    mov         eax,dword ptr [ebp-3C]
 0052B280    cdq
 0052B281    idiv        eax,dword ptr [ebp-8]
 0052B284    mov         edx,eax
 0052B286    mov         ecx,dword ptr [ebp-28]
 0052B289    mov         eax,dword ptr [ebp-6C]
 0052B28C    call        00521EA4
 0052B291    mov         eax,dword ptr [ebp-3C]
 0052B294    mov         dword ptr [ebp-0C],eax
 0052B297    mov         cl,byte ptr [ebp-34]
 0052B29A    mov         dl,byte ptr [ebp-10]
 0052B29D    mov         eax,dword ptr [ebp-0C]
 0052B2A0    call        004CF190
 0052B2A5    xor         eax,eax
 0052B2A7    mov         dword ptr [ebp-18],eax
 0052B2AA    xor         eax,eax
 0052B2AC    mov         dword ptr [ebp-1C],eax
>0052B2AF    jmp         0052B460
 0052B2B4    lea         eax,[ebp-50]
 0052B2B7    push        eax
 0052B2B8    call        kernel32.QueryPerformanceCounter
 0052B2BD    mov         cl,byte ptr [ebp-34]
 0052B2C0    mov         dl,byte ptr [ebp-10]
 0052B2C3    mov         eax,dword ptr [ebp-0C]
 0052B2C6    call        004CF190
 0052B2CB    mov         byte ptr [ebp-2D],al
 0052B2CE    mov         eax,[0056E5A4];^gvar_0056DF04
 0052B2D3    cmp         byte ptr [eax],0
>0052B2D6    jne         0052B476
 0052B2DC    lea         eax,[ebp-58]
 0052B2DF    push        eax
 0052B2E0    call        kernel32.QueryPerformanceCounter
 0052B2E5    push        dword ptr [ebp-44]
 0052B2E8    push        dword ptr [ebp-48]
 0052B2EB    mov         eax,dword ptr [ebp-58]
 0052B2EE    mov         edx,dword ptr [ebp-54]
 0052B2F1    sub         eax,dword ptr [ebp-50]
 0052B2F4    sbb         edx,dword ptr [ebp-4C]
 0052B2F7    call        @_lldiv
 0052B2FC    mov         dword ptr [ebp-60],eax
 0052B2FF    mov         dword ptr [ebp-5C],edx
 0052B302    mov         eax,dword ptr [ebp-0C]
 0052B305    cdq
 0052B306    idiv        eax,dword ptr [ebp-8]
 0052B309    mov         dword ptr [ebp-2C],eax
 0052B30C    cmp         byte ptr [ebp-2D],0
>0052B310    je          0052B379
 0052B312    mov         eax,dword ptr [ebp-10]
 0052B315    mov         eax,dword ptr [eax*4+56D4D4]
 0052B31C    mov         edx,dword ptr [ebp-6C]
 0052B31F    mov         dword ptr [edx+0BC],eax;TBitmap32.?fBC:dword
 0052B325    mov         eax,dword ptr [ebp-2C]
 0052B328    cmp         eax,dword ptr [ebp-18]
>0052B32B    jne         0052B353
 0052B32D    push        0
 0052B32F    push        5
 0052B331    mov         eax,dword ptr [ebp-60]
 0052B334    mov         edx,dword ptr [ebp-5C]
 0052B337    call        @_lldiv
 0052B33C    push        edx
 0052B33D    push        eax
 0052B33E    mov         eax,dword ptr [ebp-1C]
 0052B341    cdq
 0052B342    cmp         edx,dword ptr [esp+4]
>0052B346    jne         0052B34B
 0052B348    cmp         eax,dword ptr [esp]
 0052B34B    pop         edx
 0052B34C    pop         eax
>0052B34D    je          0052B432
 0052B353    mov         eax,dword ptr [ebp-60]
 0052B356    mov         edx,dword ptr [ebp-5C]
 0052B359    test        edx,edx
>0052B35B    jge         0052B364
 0052B35D    neg         eax
 0052B35F    adc         edx,0
 0052B362    neg         edx
 0052B364    mov         ecx,dword ptr [ebp-28]
 0052B367    sub         ecx,eax
 0052B369    mov         edx,dword ptr [ebp-2C]
 0052B36C    mov         eax,dword ptr [ebp-6C]
 0052B36F    call        00521ED0
>0052B374    jmp         0052B432
 0052B379    mov         eax,dword ptr [ebp-6C]
 0052B37C    mov         dword ptr [eax+0BC],0FFFFFF00;TBitmap32.?fBC:dword
 0052B386    mov         eax,dword ptr [ebp-2C]
 0052B389    cmp         eax,dword ptr [ebp-18]
>0052B38C    jne         0052B3B0
 0052B38E    push        0
 0052B390    push        5
 0052B392    mov         eax,dword ptr [ebp-60]
 0052B395    mov         edx,dword ptr [ebp-5C]
 0052B398    call        @_lldiv
 0052B39D    push        edx
 0052B39E    push        eax
 0052B39F    mov         eax,dword ptr [ebp-1C]
 0052B3A2    cdq
 0052B3A3    cmp         edx,dword ptr [esp+4]
>0052B3A7    jne         0052B3AC
 0052B3A9    cmp         eax,dword ptr [esp]
 0052B3AC    pop         edx
 0052B3AD    pop         eax
>0052B3AE    je          0052B3D2
 0052B3B0    mov         ecx,dword ptr [ebp-28]
 0052B3B3    sub         ecx,3C
 0052B3B6    mov         edx,dword ptr [ebp-2C]
 0052B3B9    mov         eax,dword ptr [ebp-6C]
 0052B3BC    call        00521ED0
 0052B3C1    mov         ecx,dword ptr [ebp-28]
 0052B3C4    sub         ecx,dword ptr [ebp-1C]
 0052B3C7    mov         edx,dword ptr [ebp-2C]
 0052B3CA    mov         eax,dword ptr [ebp-6C]
 0052B3CD    call        00521EA4
 0052B3D2    push        52B56C;'Error Track: '
 0052B3D7    lea         edx,[ebp-0A8]
 0052B3DD    mov         eax,dword ptr [ebp-0C]
 0052B3E0    call        IntToStr
 0052B3E5    push        dword ptr [ebp-0A8]
 0052B3EB    push        52B584;' Head: '
 0052B3F0    lea         edx,[ebp-0AC]
 0052B3F6    mov         eax,dword ptr [ebp-10]
 0052B3F9    call        IntToStr
 0052B3FE    push        dword ptr [ebp-0AC]
 0052B404    lea         eax,[ebp-0A4]
 0052B40A    mov         edx,4
 0052B40F    call        @LStrCatN
 0052B414    mov         edx,dword ptr [ebp-0A4]
 0052B41A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B41F    mov         eax,dword ptr [eax]
 0052B421    mov         eax,dword ptr [eax+2F8]
 0052B427    mov         eax,dword ptr [eax+248]
 0052B42D    mov         ecx,dword ptr [eax]
 0052B42F    call        dword ptr [ecx+38]
 0052B432    mov         eax,dword ptr [ebp-0C]
 0052B435    cdq
 0052B436    idiv        eax,dword ptr [ebp-8]
 0052B439    mov         dword ptr [ebp-18],eax
 0052B43C    push        0
 0052B43E    push        0A
 0052B440    mov         eax,dword ptr [ebp-60]
 0052B443    mov         edx,dword ptr [ebp-5C]
 0052B446    call        @_lldiv
 0052B44B    mov         dword ptr [ebp-1C],eax
 0052B44E    mov         eax,dword ptr [ebp-14]
 0052B451    add         dword ptr [ebp-0C],eax
 0052B454    mov         eax,[0056E3C0];^Application:TApplication
 0052B459    mov         eax,dword ptr [eax]
 0052B45B    call        004AB51C
 0052B460    mov         eax,dword ptr [ebp-0C]
 0052B463    cmp         eax,dword ptr [ebp-38]
>0052B466    jge         0052B476
 0052B468    mov         eax,[0056E5A4];^gvar_0056DF04
 0052B46D    cmp         byte ptr [eax],0
>0052B470    je          0052B2B4
 0052B476    inc         dword ptr [ebp-10]
 0052B479    sub         dword ptr [ebp-28],46
 0052B47D    movzx       eax,word ptr [ebp-3E]
 0052B481    cmp         eax,dword ptr [ebp-10]
>0052B484    jle         0052B494
 0052B486    mov         eax,[0056E5A4];^gvar_0056DF04
 0052B48B    cmp         byte ptr [eax],0
>0052B48E    je          0052B121
 0052B494    xor         eax,eax
 0052B496    pop         edx
 0052B497    pop         ecx
 0052B498    pop         ecx
 0052B499    mov         dword ptr fs:[eax],edx
 0052B49C    push        52B4E1
 0052B4A1    mov         eax,dword ptr [ebp-4]
 0052B4A4    mov         byte ptr [eax+32C],0;TfmServoTest.?f32C:byte
 0052B4AB    mov         eax,dword ptr [ebp-4]
 0052B4AE    cmp         byte ptr [eax+32D],0;TfmServoTest.?f32D:byte
>0052B4B5    je          0052B4C6
 0052B4B7    mov         eax,dword ptr [ebp-4]
 0052B4BA    call        TCustomForm.Release
 0052B4BF    xor         eax,eax
 0052B4C1    mov         [0056D4D0],eax;gvar_0056D4D0:TfmServoTest
 0052B4C6    mov         eax,dword ptr [ebp-4]
 0052B4C9    mov         eax,dword ptr [eax+300];TfmServoTest.btGo:TButton
 0052B4CF    mov         edx,52B544;'GO'
 0052B4D4    call        TPanel.SetCaption
 0052B4D9    ret
>0052B4DA    jmp         @HandleFinally
>0052B4DF    jmp         0052B4A1
 0052B4E1    xor         eax,eax
 0052B4E3    pop         edx
 0052B4E4    pop         ecx
 0052B4E5    pop         ecx
 0052B4E6    mov         dword ptr fs:[eax],edx
 0052B4E9    push        52B526
 0052B4EE    lea         eax,[ebp-0AC]
 0052B4F4    mov         edx,4
 0052B4F9    call        @LStrArrayClr
 0052B4FE    lea         eax,[ebp-94]
 0052B504    mov         edx,3
 0052B509    call        @LStrArrayClr
 0052B50E    lea         eax,[ebp-88]
 0052B514    mov         edx,5
 0052B519    call        @LStrArrayClr
 0052B51E    ret
>0052B51F    jmp         @HandleFinally
>0052B524    jmp         0052B4EE
 0052B526    mov         esp,ebp
 0052B528    pop         ebp
 0052B529    ret
*}
end;

//0052B58C
procedure TfmServoTest.FormCreate(Sender:TObject);
begin
{*
 0052B58C    push        ebp
 0052B58D    mov         ebp,esp
 0052B58F    add         esp,0FFFFFFF8
 0052B592    push        ebx
 0052B593    mov         dword ptr [ebp-8],edx
 0052B596    mov         dword ptr [ebp-4],eax
 0052B599    mov         eax,dword ptr [ebp-4]
 0052B59C    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B5A2    mov         edx,dword ptr [eax+48];TImage32.Width:Integer
 0052B5A5    mov         eax,dword ptr [ebp-4]
 0052B5A8    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B5AE    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B5B4    call        0051E4BC
 0052B5B9    mov         eax,dword ptr [ebp-4]
 0052B5BC    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B5C2    mov         edx,dword ptr [eax+4C];TImage32.Height:Integer
 0052B5C5    mov         eax,dword ptr [ebp-4]
 0052B5C8    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B5CE    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B5D4    call        0051E418
 0052B5D9    mov         eax,dword ptr [ebp-4]
 0052B5DC    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B5E2    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B5E8    mov         edx,0FF000000
 0052B5ED    call        0051E97C
 0052B5F2    mov         ecx,0FF000000
 0052B5F7    xor         edx,edx
 0052B5F9    mov         eax,dword ptr [ebp-4]
 0052B5FC    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B602    mov         ebx,dword ptr [eax]
 0052B604    call        dword ptr [ebx+154];TImage32.sub_00529628
 0052B60A    pop         ebx
 0052B60B    pop         ecx
 0052B60C    pop         ecx
 0052B60D    pop         ebp
 0052B60E    ret
*}
end;

//0052B610
procedure TfmServoTest.FormResize(Sender:TObject);
begin
{*
 0052B610    push        ebp
 0052B611    mov         ebp,esp
 0052B613    add         esp,0FFFFFFF8
 0052B616    mov         dword ptr [ebp-8],edx
 0052B619    mov         dword ptr [ebp-4],eax
 0052B61C    mov         eax,dword ptr [ebp-4]
 0052B61F    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B625    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B62B    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052B62E    mov         edx,dword ptr [ebp-4]
 0052B631    mov         edx,dword ptr [edx+2F8];TfmServoTest.Im32:TImage32
 0052B637    cmp         eax,dword ptr [edx+48];TImage32.Width:Integer
>0052B63A    jne         0052B65C
 0052B63C    mov         eax,dword ptr [ebp-4]
 0052B63F    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B645    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B64B    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0052B64E    mov         edx,dword ptr [ebp-4]
 0052B651    mov         edx,dword ptr [edx+2F8];TfmServoTest.Im32:TImage32
 0052B657    cmp         eax,dword ptr [edx+4C];TImage32.Height:Integer
>0052B65A    je          0052B6A1
 0052B65C    mov         eax,dword ptr [ebp-4]
 0052B65F    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B665    mov         edx,dword ptr [eax+48];TImage32.Width:Integer
 0052B668    mov         eax,dword ptr [ebp-4]
 0052B66B    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B671    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B677    call        0051E4BC
 0052B67C    mov         eax,dword ptr [ebp-4]
 0052B67F    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B685    mov         edx,dword ptr [eax+4C];TImage32.Height:Integer
 0052B688    mov         eax,dword ptr [ebp-4]
 0052B68B    mov         eax,dword ptr [eax+2F8];TfmServoTest.Im32:TImage32
 0052B691    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052B697    call        0051E418
 0052B69C    call        0052AC80
 0052B6A1    pop         ecx
 0052B6A2    pop         ecx
 0052B6A3    pop         ebp
 0052B6A4    ret
*}
end;

//0052B6A8
procedure TfmServoTest.FormShow(Sender:TObject);
begin
{*
 0052B6A8    push        ebp
 0052B6A9    mov         ebp,esp
 0052B6AB    add         esp,0FFFFFFF0
 0052B6AE    xor         ecx,ecx
 0052B6B0    mov         dword ptr [ebp-0C],ecx
 0052B6B3    mov         dword ptr [ebp-10],ecx
 0052B6B6    mov         dword ptr [ebp-8],edx
 0052B6B9    mov         dword ptr [ebp-4],eax
 0052B6BC    xor         eax,eax
 0052B6BE    push        ebp
 0052B6BF    push        52B766
 0052B6C4    push        dword ptr fs:[eax]
 0052B6C7    mov         dword ptr fs:[eax],esp
 0052B6CA    lea         edx,[ebp-10]
 0052B6CD    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052B6D2    call        TPanel.GetCaption
 0052B6D7    push        dword ptr [ebp-10]
 0052B6DA    push        52B77C;' '
 0052B6DF    mov         eax,[0056E284];^gvar_0056DF34
 0052B6E4    mov         eax,dword ptr [eax]
 0052B6E6    push        dword ptr [eax+420]
 0052B6EC    lea         eax,[ebp-0C]
 0052B6EF    mov         edx,3
 0052B6F4    call        @LStrCatN
 0052B6F9    mov         edx,dword ptr [ebp-0C]
 0052B6FC    mov         eax,[0056D4D0];0x0 gvar_0056D4D0:TfmServoTest
 0052B701    call        TPanel.SetCaption
 0052B706    call        0052AC80
 0052B70B    mov         eax,[0056E284];^gvar_0056DF34
 0052B710    mov         eax,dword ptr [eax]
 0052B712    mov         eax,dword ptr [eax+408]
 0052B718    cmp         byte ptr [eax+38],0
>0052B71C    je          0052B74B
 0052B71E    xor         edx,edx
 0052B720    mov         eax,dword ptr [ebp-4]
 0052B723    call        TfmServoTest.btTracksClick
 0052B728    xor         edx,edx
 0052B72A    mov         eax,dword ptr [ebp-4]
 0052B72D    call        TfmServoTest.btHeadsClick
 0052B732    mov         edx,dword ptr ds:[56E040];^gvar_005720C0
 0052B738    mov         dl,byte ptr [edx]
 0052B73A    mov         eax,dword ptr [ebp-4]
 0052B73D    mov         eax,dword ptr [eax+328];TfmServoTest.cbFromZones:TCheckBox
 0052B743    mov         ecx,dword ptr [eax]
 0052B745    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0052B74B    xor         eax,eax
 0052B74D    pop         edx
 0052B74E    pop         ecx
 0052B74F    pop         ecx
 0052B750    mov         dword ptr fs:[eax],edx
 0052B753    push        52B76D
 0052B758    lea         eax,[ebp-10]
 0052B75B    mov         edx,2
 0052B760    call        @LStrArrayClr
 0052B765    ret
>0052B766    jmp         @HandleFinally
>0052B76B    jmp         0052B758
 0052B76D    mov         esp,ebp
 0052B76F    pop         ebp
 0052B770    ret
*}
end;

//0052B780
procedure TfmServoTest.btTracksClick(Sender:TObject);
begin
{*
 0052B780    push        ebp
 0052B781    mov         ebp,esp
 0052B783    mov         ecx,6
 0052B788    push        0
 0052B78A    push        0
 0052B78C    dec         ecx
>0052B78D    jne         0052B788
 0052B78F    push        ecx
 0052B790    mov         dword ptr [ebp-14],edx
 0052B793    mov         dword ptr [ebp-4],eax
 0052B796    xor         eax,eax
 0052B798    push        ebp
 0052B799    push        52BA32
 0052B79E    push        dword ptr fs:[eax]
 0052B7A1    mov         dword ptr fs:[eax],esp
 0052B7A4    mov         eax,dword ptr [ebp-4]
 0052B7A7    mov         eax,dword ptr [eax+30C];TfmServoTest.btTracks:TButton
 0052B7AD    xor         edx,edx
 0052B7AF    mov         ecx,dword ptr [eax]
 0052B7B1    call        dword ptr [ecx+64];TImage.SetEnabled
 0052B7B4    mov         dl,1
 0052B7B6    mov         eax,[0041DE14];TMemoryStream
 0052B7BB    call        TObject.Create;TMemoryStream.Create
 0052B7C0    mov         dword ptr [ebp-8],eax
 0052B7C3    mov         dword ptr [ebp-10],0FFFFFFFF
 0052B7CA    xor         eax,eax
 0052B7CC    push        ebp
 0052B7CD    push        52B9D8
 0052B7D2    push        dword ptr fs:[eax]
 0052B7D5    mov         dword ptr fs:[eax],esp
 0052B7D8    push        10
 0052B7DA    call        user32.GetKeyState
 0052B7DF    test        ax,ax
>0052B7E2    jge         0052B899
 0052B7E8    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0052B7EE    mov         edx,dword ptr [edx]
 0052B7F0    lea         eax,[ebp-18]
 0052B7F3    mov         ecx,52BA48;'CPs\'
 0052B7F8    call        @LStrCat3
 0052B7FD    mov         edx,dword ptr [ebp-18]
 0052B800    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B805    mov         eax,dword ptr [eax]
 0052B807    mov         eax,dword ptr [eax+35C]
 0052B80D    call        TOpenDialog.SetInitialDir
 0052B812    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B817    mov         eax,dword ptr [eax]
 0052B819    mov         eax,dword ptr [eax+35C]
 0052B81F    add         eax,78
 0052B822    mov         edx,dword ptr [ebp-0C]
 0052B825    call        @LStrAsg
 0052B82A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B82F    mov         eax,dword ptr [eax]
 0052B831    mov         eax,dword ptr [eax+35C]
 0052B837    mov         edx,dword ptr [eax]
 0052B839    call        dword ptr [edx+3C]
 0052B83C    test        al,al
>0052B83E    je          0052B94E
 0052B844    lea         edx,[ebp-1C]
 0052B847    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B84C    mov         eax,dword ptr [eax]
 0052B84E    mov         eax,dword ptr [eax+35C]
 0052B854    call        TOpenDialog.GetFileName
 0052B859    mov         eax,dword ptr [ebp-1C]
 0052B85C    call        0040C94C
 0052B861    test        al,al
>0052B863    je          0052B94E
 0052B869    lea         edx,[ebp-20]
 0052B86C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052B871    mov         eax,dword ptr [eax]
 0052B873    mov         eax,dword ptr [eax+35C]
 0052B879    call        TOpenDialog.GetFileName
 0052B87E    mov         edx,dword ptr [ebp-20]
 0052B881    mov         eax,dword ptr [ebp-8]
 0052B884    call        00423F8C
 0052B889    mov         eax,dword ptr [ebp-8]
 0052B88C    call        0054DA18
 0052B891    mov         dword ptr [ebp-10],eax
>0052B894    jmp         0052B94E
 0052B899    mov         eax,[0056E040];^gvar_005720C0
 0052B89E    cmp         byte ptr [eax],0
>0052B8A1    jne         0052B8C3
 0052B8A3    mov         eax,[0056E304];^gvar_0056DF54
 0052B8A8    cmp         word ptr [eax],65
>0052B8AC    je          0052B8C3
 0052B8AE    mov         eax,[0056E304];^gvar_0056DF54
 0052B8B3    cmp         word ptr [eax],73
>0052B8B7    je          0052B8C3
 0052B8B9    mov         eax,[0056E01C];^gvar_005720C1
 0052B8BE    cmp         byte ptr [eax],0
>0052B8C1    je          0052B931
 0052B8C3    mov         eax,dword ptr [ebp-4]
 0052B8C6    mov         eax,dword ptr [eax+314];TfmServoTest.rbAll:TRadioButton
 0052B8CC    mov         edx,dword ptr [eax]
 0052B8CE    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0052B8D4    test        al,al
>0052B8D6    je          0052B8F7
 0052B8D8    mov         ecx,dword ptr [ebp-8]
 0052B8DB    xor         edx,edx
 0052B8DD    mov         ax,0D
 0052B8E1    call        004CFEC8
 0052B8E6    test        al,al
>0052B8E8    je          0052B94E
 0052B8EA    mov         eax,dword ptr [ebp-8]
 0052B8ED    call        0054DA18
 0052B8F2    mov         dword ptr [ebp-10],eax
>0052B8F5    jmp         0052B94E
 0052B8F7    lea         edx,[ebp-24]
 0052B8FA    mov         eax,dword ptr [ebp-4]
 0052B8FD    mov         eax,dword ptr [eax+310];TfmServoTest.edHeads:TLabeledEdit
 0052B903    call        TPanel.GetCaption
 0052B908    mov         eax,dword ptr [ebp-24]
 0052B90B    xor         edx,edx
 0052B90D    call        0040C4A8
 0052B912    mov         edx,eax
 0052B914    mov         ecx,dword ptr [ebp-8]
 0052B917    mov         ax,0D
 0052B91B    call        004CFEC8
 0052B920    test        al,al
>0052B922    je          0052B94E
 0052B924    mov         eax,dword ptr [ebp-8]
 0052B927    call        0054DA18
 0052B92C    mov         dword ptr [ebp-10],eax
>0052B92F    jmp         0052B94E
 0052B931    mov         ecx,dword ptr [ebp-8]
 0052B934    xor         edx,edx
 0052B936    mov         ax,5
 0052B93A    call        004CFEC8
 0052B93F    test        al,al
>0052B941    je          0052B94E
 0052B943    mov         eax,dword ptr [ebp-8]
 0052B946    call        0054DA18
 0052B94B    mov         dword ptr [ebp-10],eax
 0052B94E    cmp         dword ptr [ebp-10],0
>0052B952    jle         0052B9C2
 0052B954    lea         eax,[ebp-28]
 0052B957    push        eax
 0052B958    mov         eax,[0056E214];^gvar_005720C4
 0052B95D    mov         eax,dword ptr [eax+0C]
 0052B960    mov         dword ptr [ebp-30],eax
 0052B963    mov         byte ptr [ebp-2C],0
 0052B967    lea         edx,[ebp-30]
 0052B96A    xor         ecx,ecx
 0052B96C    mov         eax,52BA58;'$%x'
 0052B971    call        0040D630
 0052B976    mov         edx,dword ptr [ebp-28]
 0052B979    mov         eax,dword ptr [ebp-4]
 0052B97C    mov         eax,dword ptr [eax+324];TfmServoTest.edStart:TLabeledEdit
 0052B982    call        TPanel.SetCaption
 0052B987    lea         eax,[ebp-34]
 0052B98A    push        eax
 0052B98B    mov         eax,dword ptr [ebp-10]
 0052B98E    lea         eax,[eax+eax*2]
 0052B991    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0052B997    mov         eax,dword ptr [edx+eax*4-8]
 0052B99B    mov         dword ptr [ebp-30],eax
 0052B99E    mov         byte ptr [ebp-2C],0
 0052B9A2    lea         edx,[ebp-30]
 0052B9A5    xor         ecx,ecx
 0052B9A7    mov         eax,52BA58;'$%x'
 0052B9AC    call        0040D630
 0052B9B1    mov         edx,dword ptr [ebp-34]
 0052B9B4    mov         eax,dword ptr [ebp-4]
 0052B9B7    mov         eax,dword ptr [eax+304];TfmServoTest.edTracks:TLabeledEdit
 0052B9BD    call        TPanel.SetCaption
 0052B9C2    xor         eax,eax
 0052B9C4    pop         edx
 0052B9C5    pop         ecx
 0052B9C6    pop         ecx
 0052B9C7    mov         dword ptr fs:[eax],edx
 0052B9CA    push        52B9DF
 0052B9CF    mov         eax,dword ptr [ebp-8]
 0052B9D2    call        TObject.Free
 0052B9D7    ret
>0052B9D8    jmp         @HandleFinally
>0052B9DD    jmp         0052B9CF
 0052B9DF    mov         eax,dword ptr [ebp-4]
 0052B9E2    mov         eax,dword ptr [eax+30C];TfmServoTest.btTracks:TButton
 0052B9E8    mov         dl,1
 0052B9EA    mov         ecx,dword ptr [eax]
 0052B9EC    call        dword ptr [ecx+64];TImage.SetEnabled
 0052B9EF    xor         eax,eax
 0052B9F1    pop         edx
 0052B9F2    pop         ecx
 0052B9F3    pop         ecx
 0052B9F4    mov         dword ptr fs:[eax],edx
 0052B9F7    push        52BA39
 0052B9FC    lea         eax,[ebp-34]
 0052B9FF    call        @LStrClr
 0052BA04    lea         eax,[ebp-28]
 0052BA07    call        @LStrClr
 0052BA0C    lea         eax,[ebp-24]
 0052BA0F    call        @LStrClr
 0052BA14    lea         eax,[ebp-20]
 0052BA17    mov         edx,2
 0052BA1C    call        @LStrArrayClr
 0052BA21    lea         eax,[ebp-18]
 0052BA24    call        @LStrClr
 0052BA29    lea         eax,[ebp-0C]
 0052BA2C    call        @LStrClr
 0052BA31    ret
>0052BA32    jmp         @HandleFinally
>0052BA37    jmp         0052B9FC
 0052BA39    mov         esp,ebp
 0052BA3B    pop         ebp
 0052BA3C    ret
*}
end;

//0052BA5C
procedure TfmServoTest.btHeadsClick(Sender:TObject);
begin
{*
 0052BA5C    push        ebp
 0052BA5D    mov         ebp,esp
 0052BA5F    add         esp,0FFFFFFF0
 0052BA62    push        ebx
 0052BA63    xor         ecx,ecx
 0052BA65    mov         dword ptr [ebp-10],ecx
 0052BA68    mov         dword ptr [ebp-0C],edx
 0052BA6B    mov         dword ptr [ebp-4],eax
 0052BA6E    xor         eax,eax
 0052BA70    push        ebp
 0052BA71    push        52BB33
 0052BA76    push        dword ptr fs:[eax]
 0052BA79    mov         dword ptr fs:[eax],esp
 0052BA7C    mov         eax,dword ptr [ebp-4]
 0052BA7F    mov         eax,dword ptr [eax+308];TfmServoTest.btHeads:TButton
 0052BA85    xor         edx,edx
 0052BA87    mov         ecx,dword ptr [eax]
 0052BA89    call        dword ptr [ecx+64];TImage.SetEnabled
 0052BA8C    mov         dl,1
 0052BA8E    mov         eax,[0041DE14];TMemoryStream
 0052BA93    call        TObject.Create;TMemoryStream.Create
 0052BA98    mov         dword ptr [ebp-8],eax
 0052BA9B    xor         eax,eax
 0052BA9D    push        ebp
 0052BA9E    push        52BB06
 0052BAA3    push        dword ptr fs:[eax]
 0052BAA6    mov         dword ptr fs:[eax],esp
 0052BAA9    mov         ecx,dword ptr [ebp-8]
 0052BAAC    xor         edx,edx
 0052BAAE    mov         ax,1
 0052BAB2    call        004CFEC8
 0052BAB7    test        al,al
>0052BAB9    je          0052BAF0
 0052BABB    xor         ecx,ecx
 0052BABD    mov         edx,1E
 0052BAC2    mov         eax,dword ptr [ebp-8]
 0052BAC5    mov         ebx,dword ptr [eax]
 0052BAC7    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0052BACA    mov         eax,dword ptr [ebp-8]
 0052BACD    call        004CE528
 0052BAD2    and         eax,0FF
 0052BAD7    lea         edx,[ebp-10]
 0052BADA    call        IntToStr
 0052BADF    mov         edx,dword ptr [ebp-10]
 0052BAE2    mov         eax,dword ptr [ebp-4]
 0052BAE5    mov         eax,dword ptr [eax+310];TfmServoTest.edHeads:TLabeledEdit
 0052BAEB    call        TPanel.SetCaption
 0052BAF0    xor         eax,eax
 0052BAF2    pop         edx
 0052BAF3    pop         ecx
 0052BAF4    pop         ecx
 0052BAF5    mov         dword ptr fs:[eax],edx
 0052BAF8    push        52BB0D
 0052BAFD    mov         eax,dword ptr [ebp-8]
 0052BB00    call        TObject.Free
 0052BB05    ret
>0052BB06    jmp         @HandleFinally
>0052BB0B    jmp         0052BAFD
 0052BB0D    mov         eax,dword ptr [ebp-4]
 0052BB10    mov         eax,dword ptr [eax+308];TfmServoTest.btHeads:TButton
 0052BB16    mov         dl,1
 0052BB18    mov         ecx,dword ptr [eax]
 0052BB1A    call        dword ptr [ecx+64];TImage.SetEnabled
 0052BB1D    xor         eax,eax
 0052BB1F    pop         edx
 0052BB20    pop         ecx
 0052BB21    pop         ecx
 0052BB22    mov         dword ptr fs:[eax],edx
 0052BB25    push        52BB3A
 0052BB2A    lea         eax,[ebp-10]
 0052BB2D    call        @LStrClr
 0052BB32    ret
>0052BB33    jmp         @HandleFinally
>0052BB38    jmp         0052BB2A
 0052BB3A    pop         ebx
 0052BB3B    mov         esp,ebp
 0052BB3D    pop         ebp
 0052BB3E    ret
*}
end;

end.