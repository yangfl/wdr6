//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uTracks;

interface

uses
  SysUtils, Classes, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmTracks = class(TForm)
  published
    gbAdress:TGroupBox;//f2F8
    gbOperations:TGroupBox;//f2FC
    cbArea:TComboBox;//f300
    StaticText1:TStaticText;//f304
    pbTracks:TProgressBar;//f308
    btRead:TButton;//f30C
    btWrite:TButton;//f310
    btView:TButton;//f314
    edStart:TLabeledEdit;//f318
    edEnd:TLabeledEdit;//f31C
    edSpt:TLabeledEdit;//f320
    btScan:TButton;//f324
    rgHeads:TRadioGroup;//f328
    btGetSpt:TButton;//f32C
    pbSectors:TProgressBar;//f330
    gbSetting:TGroupBox;//f334
    cbReadLong:TCheckBox;//f338
    cbReadLong2:TCheckBox;//f33C
    cbWrite:TCheckBox;//f340
    cbRead:TCheckBox;//f344
    btTrk:TButton;//f348
    btFromZoneMap:TButton;//f34C
    cbSelectFile:TCheckBox;//f350
    cbSecondCopy:TCheckBox;//f354
    cbErase:TCheckBox;//f358
    cbAddToList:TCheckBox;//f35C
    procedure btScanClick(Sender:TObject);//004FB2A8
    procedure btWriteClick(Sender:TObject);//004FAEF4
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004FC838
    procedure btFromZoneMapClick(Sender:TObject);//004FC980
    procedure btTrkClick(Sender:TObject);//004FC860
    procedure btGetSptClick(Sender:TObject);//004FB488
    procedure btReadClick(Sender:TObject);//004FADDC
    procedure FormShow(Sender:TObject);//004FB5FC
    procedure btViewClick(Sender:TObject);//004FC400
    procedure cbReadLongClick(Sender:TObject);//004FC394
  end;
    procedure sub_004FAD08(?:TfmTracks; ?:TfmHDD);//004FAD08
    //function sub_004FB62C(?:?; ?:?; ?:?; ?:?; ?:?):?;//004FB62C
    //function sub_004FBA6C(?:?; ?:?; ?:?; ?:?; ?:?):?;//004FBA6C
    //function sub_004FBE78(?:?; ?:?; ?:?; ?:?; ?:?):?;//004FBE78
    //function sub_004FC100(?:?; ?:?; ?:?; ?:?; ?:?):?;//004FC100
    //procedure sub_004FC4C0(?:?; ?:?; ?:?; ?:?; ?:?);//004FC4C0

implementation

{$R *.DFM}

//004FAD08
procedure sub_004FAD08(?:TfmTracks; ?:TfmHDD);
begin
{*
 004FAD08    push        ebp
 004FAD09    mov         ebp,esp
 004FAD0B    add         esp,0FFFFFFF0
 004FAD0E    xor         ecx,ecx
 004FAD10    mov         dword ptr [ebp-0C],ecx
 004FAD13    mov         dword ptr [ebp-10],ecx
 004FAD16    mov         dword ptr [ebp-8],edx
 004FAD19    mov         dword ptr [ebp-4],eax
 004FAD1C    xor         eax,eax
 004FAD1E    push        ebp
 004FAD1F    push        4FADC5
 004FAD24    push        dword ptr fs:[eax]
 004FAD27    mov         dword ptr fs:[eax],esp
 004FAD2A    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FAD31    jne         004FAD83
 004FAD33    mov         ecx,dword ptr [ebp-8]
 004FAD36    mov         dl,1
 004FAD38    mov         eax,[004FA928];TfmTracks
 004FAD3D    call        TfmProgress.Create;TfmTracks.Create
 004FAD42    mov         [0056D3EC],eax;gvar_0056D3EC:TfmTracks
 004FAD47    lea         edx,[ebp-10]
 004FAD4A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAD4F    call        TPanel.GetCaption
 004FAD54    push        dword ptr [ebp-10]
 004FAD57    push        4FADD8;' '
 004FAD5C    mov         eax,[0056E284];^gvar_0056DF34
 004FAD61    mov         eax,dword ptr [eax]
 004FAD63    push        dword ptr [eax+420]
 004FAD69    lea         eax,[ebp-0C]
 004FAD6C    mov         edx,3
 004FAD71    call        @LStrCatN
 004FAD76    mov         edx,dword ptr [ebp-0C]
 004FAD79    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAD7E    call        TPanel.SetCaption
 004FAD83    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAD88    cmp         byte ptr [eax+1A6],0;TfmTracks.FShowing:Boolean
>004FAD8F    je          004FADA0
 004FAD91    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAD96    mov         edx,dword ptr [eax]
 004FAD98    call        dword ptr [edx+0C4];TfmTracks.sub_004A746C
>004FAD9E    jmp         004FADAA
 004FADA0    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FADA5    call        004A7450
 004FADAA    xor         eax,eax
 004FADAC    pop         edx
 004FADAD    pop         ecx
 004FADAE    pop         ecx
 004FADAF    mov         dword ptr fs:[eax],edx
 004FADB2    push        4FADCC
 004FADB7    lea         eax,[ebp-10]
 004FADBA    mov         edx,2
 004FADBF    call        @LStrArrayClr
 004FADC4    ret
>004FADC5    jmp         @HandleFinally
>004FADCA    jmp         004FADB7
 004FADCC    mov         esp,ebp
 004FADCE    pop         ebp
 004FADCF    ret
*}
end;

//004FADDC
procedure TfmTracks.btReadClick(Sender:TObject);
begin
{*
 004FADDC    push        ebp
 004FADDD    mov         ebp,esp
 004FADDF    xor         ecx,ecx
 004FADE1    push        ecx
 004FADE2    push        ecx
 004FADE3    push        ecx
 004FADE4    push        ecx
 004FADE5    push        ecx
 004FADE6    mov         dword ptr [ebp-8],edx
 004FADE9    mov         dword ptr [ebp-4],eax
 004FADEC    xor         eax,eax
 004FADEE    push        ebp
 004FADEF    push        4FAEE8
 004FADF4    push        dword ptr fs:[eax]
 004FADF7    mov         dword ptr fs:[eax],esp
 004FADFA    xor         edx,edx
 004FADFC    mov         eax,dword ptr [ebp-4]
 004FADFF    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FAE05    mov         ecx,dword ptr [eax]
 004FAE07    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAE0A    xor         edx,edx
 004FAE0C    mov         eax,dword ptr [ebp-4]
 004FAE0F    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FAE15    mov         ecx,dword ptr [eax]
 004FAE17    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAE1A    xor         edx,edx
 004FAE1C    mov         eax,dword ptr [ebp-4]
 004FAE1F    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FAE25    mov         ecx,dword ptr [eax]
 004FAE27    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAE2A    lea         edx,[ebp-0C]
 004FAE2D    mov         eax,dword ptr [ebp-4]
 004FAE30    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FAE36    call        TPanel.GetCaption
 004FAE3B    mov         eax,dword ptr [ebp-0C]
 004FAE3E    xor         edx,edx
 004FAE40    call        0040C4A8
 004FAE45    push        eax
 004FAE46    mov         eax,dword ptr [ebp-4]
 004FAE49    mov         eax,dword ptr [eax+328];TfmTracks.rgHeads:TRadioGroup
 004FAE4F    mov         ax,word ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004FAE56    push        eax
 004FAE57    lea         edx,[ebp-10]
 004FAE5A    mov         eax,dword ptr [ebp-4]
 004FAE5D    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FAE63    call        TPanel.GetCaption
 004FAE68    mov         eax,dword ptr [ebp-10]
 004FAE6B    xor         edx,edx
 004FAE6D    call        0040C4A8
 004FAE72    push        eax
 004FAE73    lea         edx,[ebp-14]
 004FAE76    mov         eax,dword ptr [ebp-4]
 004FAE79    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FAE7F    call        TPanel.GetCaption
 004FAE84    mov         eax,dword ptr [ebp-14]
 004FAE87    xor         edx,edx
 004FAE89    call        0040C4A8
 004FAE8E    mov         cx,1
 004FAE92    pop         edx
 004FAE93    call        004FBE78
 004FAE98    mov         dl,1
 004FAE9A    mov         eax,dword ptr [ebp-4]
 004FAE9D    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FAEA3    mov         ecx,dword ptr [eax]
 004FAEA5    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAEA8    mov         dl,1
 004FAEAA    mov         eax,dword ptr [ebp-4]
 004FAEAD    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FAEB3    mov         ecx,dword ptr [eax]
 004FAEB5    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAEB8    mov         dl,1
 004FAEBA    mov         eax,dword ptr [ebp-4]
 004FAEBD    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FAEC3    mov         ecx,dword ptr [eax]
 004FAEC5    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAEC8    call        005451D0
 004FAECD    xor         eax,eax
 004FAECF    pop         edx
 004FAED0    pop         ecx
 004FAED1    pop         ecx
 004FAED2    mov         dword ptr fs:[eax],edx
 004FAED5    push        4FAEEF
 004FAEDA    lea         eax,[ebp-14]
 004FAEDD    mov         edx,3
 004FAEE2    call        @LStrArrayClr
 004FAEE7    ret
>004FAEE8    jmp         @HandleFinally
>004FAEED    jmp         004FAEDA
 004FAEEF    mov         esp,ebp
 004FAEF1    pop         ebp
 004FAEF2    ret
*}
end;

//004FAEF4
procedure TfmTracks.btWriteClick(Sender:TObject);
begin
{*
 004FAEF4    push        ebp
 004FAEF5    mov         ebp,esp
 004FAEF7    mov         ecx,7
 004FAEFC    push        0
 004FAEFE    push        0
 004FAF00    dec         ecx
>004FAF01    jne         004FAEFC
 004FAF03    push        ebx
 004FAF04    mov         dword ptr [ebp-14],edx
 004FAF07    mov         dword ptr [ebp-4],eax
 004FAF0A    xor         eax,eax
 004FAF0C    push        ebp
 004FAF0D    push        4FB280
 004FAF12    push        dword ptr fs:[eax]
 004FAF15    mov         dword ptr fs:[eax],esp
 004FAF18    mov         eax,dword ptr [ebp-4]
 004FAF1B    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FAF21    xor         edx,edx
 004FAF23    mov         ecx,dword ptr [eax]
 004FAF25    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAF28    mov         eax,dword ptr [ebp-4]
 004FAF2B    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FAF31    xor         edx,edx
 004FAF33    mov         ecx,dword ptr [eax]
 004FAF35    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAF38    mov         eax,dword ptr [ebp-4]
 004FAF3B    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FAF41    xor         edx,edx
 004FAF43    mov         ecx,dword ptr [eax]
 004FAF45    call        dword ptr [ecx+64];TImage.SetEnabled
 004FAF48    mov         eax,[0056E5A4];^gvar_0056DF04
 004FAF4D    mov         byte ptr [eax],0
 004FAF50    mov         eax,dword ptr [ebp-4]
 004FAF53    mov         eax,dword ptr [eax+350];TfmTracks.cbSelectFile:TCheckBox
 004FAF59    mov         edx,dword ptr [eax]
 004FAF5B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FAF61    test        al,al
>004FAF63    je          004FB1AD
 004FAF69    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FAF6E    mov         eax,dword ptr [eax]
 004FAF70    mov         eax,dword ptr [eax+35C]
 004FAF76    mov         eax,dword ptr [eax+5C]
 004FAF79    or          eax,dword ptr ds:[4FB28C];0x40 gvar_004FB28C
 004FAF7F    mov         edx,dword ptr ds:[56E32C];^gvar_0056DE74:TfmHDD
 004FAF85    mov         edx,dword ptr [edx]
 004FAF87    mov         edx,dword ptr [edx+35C]
 004FAF8D    mov         dword ptr [edx+5C],eax
 004FAF90    mov         dl,1
 004FAF92    mov         eax,[0041DE14];TMemoryStream
 004FAF97    call        TObject.Create;TMemoryStream.Create
 004FAF9C    mov         dword ptr [ebp-10],eax
 004FAF9F    xor         eax,eax
 004FAFA1    push        ebp
 004FAFA2    push        4FB15A
 004FAFA7    push        dword ptr fs:[eax]
 004FAFAA    mov         dword ptr fs:[eax],esp
 004FAFAD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FAFB2    mov         eax,dword ptr [eax]
 004FAFB4    mov         eax,dword ptr [eax+35C]
 004FAFBA    mov         edx,dword ptr [eax]
 004FAFBC    call        dword ptr [edx+3C]
 004FAFBF    test        al,al
>004FAFC1    je          004FB144
 004FAFC7    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAFCC    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FAFD2    xor         edx,edx
 004FAFD4    call        TProgressBar.SetMin
 004FAFD9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FAFDE    mov         eax,dword ptr [eax]
 004FAFE0    mov         eax,dword ptr [eax+35C]
 004FAFE6    mov         eax,dword ptr [eax+7C]
 004FAFE9    mov         edx,dword ptr [eax]
 004FAFEB    call        dword ptr [edx+14]
 004FAFEE    mov         edx,eax
 004FAFF0    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FAFF5    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FAFFB    call        TProgressBar.SetMax
 004FB000    xor         eax,eax
 004FB002    mov         dword ptr [ebp-8],eax
>004FB005    jmp         004FB11C
 004FB00A    lea         ecx,[ebp-18]
 004FB00D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB012    mov         eax,dword ptr [eax]
 004FB014    mov         eax,dword ptr [eax+35C]
 004FB01A    mov         eax,dword ptr [eax+7C]
 004FB01D    mov         edx,dword ptr [ebp-8]
 004FB020    mov         ebx,dword ptr [eax]
 004FB022    call        dword ptr [ebx+0C]
 004FB025    mov         eax,dword ptr [ebp-18]
 004FB028    lea         edx,[ebp-0C]
 004FB02B    call        0040CC9C
 004FB030    lea         eax,[ebp-20]
 004FB033    push        eax
 004FB034    mov         ecx,4
 004FB039    mov         edx,1
 004FB03E    mov         eax,dword ptr [ebp-0C]
 004FB041    call        @LStrCopy
 004FB046    mov         ecx,dword ptr [ebp-20]
 004FB049    lea         eax,[ebp-1C]
 004FB04C    mov         edx,4FB298;'Write Track: '
 004FB051    call        @LStrCat3
 004FB056    mov         edx,dword ptr [ebp-1C]
 004FB059    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB05E    mov         eax,dword ptr [eax]
 004FB060    mov         eax,dword ptr [eax+2F8]
 004FB066    mov         eax,dword ptr [eax+248]
 004FB06C    mov         ecx,dword ptr [eax]
 004FB06E    call        dword ptr [ecx+38]
 004FB071    mov         eax,dword ptr [ebp-10]
 004FB074    call        00423F20
 004FB079    lea         ecx,[ebp-24]
 004FB07C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB081    mov         eax,dword ptr [eax]
 004FB083    mov         eax,dword ptr [eax+35C]
 004FB089    mov         eax,dword ptr [eax+7C]
 004FB08C    mov         edx,dword ptr [ebp-8]
 004FB08F    mov         ebx,dword ptr [eax]
 004FB091    call        dword ptr [ebx+0C]
 004FB094    mov         edx,dword ptr [ebp-24]
 004FB097    mov         eax,dword ptr [ebp-10]
 004FB09A    call        00423F8C
 004FB09F    mov         eax,dword ptr [ebp-4]
 004FB0A2    mov         eax,dword ptr [eax+328];TfmTracks.rgHeads:TRadioGroup
 004FB0A8    mov         ax,word ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004FB0AF    push        eax
 004FB0B0    mov         eax,dword ptr [ebp-10]
 004FB0B3    push        eax
 004FB0B4    lea         eax,[ebp-28]
 004FB0B7    push        eax
 004FB0B8    mov         ecx,4
 004FB0BD    mov         edx,1
 004FB0C2    mov         eax,dword ptr [ebp-0C]
 004FB0C5    call        @LStrCopy
 004FB0CA    mov         eax,dword ptr [ebp-28]
 004FB0CD    call        0040C468
 004FB0D2    push        eax
 004FB0D3    lea         edx,[ebp-2C]
 004FB0D6    mov         eax,dword ptr [ebp-4]
 004FB0D9    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FB0DF    call        TPanel.GetCaption
 004FB0E4    mov         eax,dword ptr [ebp-2C]
 004FB0E7    xor         edx,edx
 004FB0E9    call        0040C4A8
 004FB0EE    mov         ecx,eax
 004FB0F0    mov         dx,1
 004FB0F4    pop         eax
 004FB0F5    call        004FBA6C
 004FB0FA    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB0FF    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FB105    mov         edx,dword ptr [ebp-8]
 004FB108    call        TProgressBar.SetPosition
 004FB10D    inc         dword ptr [ebp-8]
 004FB110    mov         eax,[0056E3C0];^Application:TApplication
 004FB115    mov         eax,dword ptr [eax]
 004FB117    call        004AB51C
 004FB11C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB121    mov         eax,dword ptr [eax]
 004FB123    mov         eax,dword ptr [eax+35C]
 004FB129    mov         eax,dword ptr [eax+7C]
 004FB12C    mov         edx,dword ptr [eax]
 004FB12E    call        dword ptr [edx+14]
 004FB131    cmp         eax,dword ptr [ebp-8]
>004FB134    jle         004FB144
 004FB136    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB13B    cmp         byte ptr [eax],0
>004FB13E    je          004FB00A
 004FB144    xor         eax,eax
 004FB146    pop         edx
 004FB147    pop         ecx
 004FB148    pop         ecx
 004FB149    mov         dword ptr fs:[eax],edx
 004FB14C    push        4FB161
 004FB151    mov         eax,dword ptr [ebp-10]
 004FB154    call        TObject.Free
 004FB159    ret
>004FB15A    jmp         @HandleFinally
>004FB15F    jmp         004FB151
 004FB161    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB166    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FB16C    call        TProgressBar.GetMin
 004FB171    mov         edx,eax
 004FB173    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB178    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FB17E    call        TProgressBar.SetPosition
 004FB183    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB188    mov         eax,dword ptr [eax]
 004FB18A    mov         eax,dword ptr [eax+35C]
 004FB190    mov         edx,dword ptr ds:[4FB28C];0x40 gvar_004FB28C
 004FB196    not         edx
 004FB198    and         edx,dword ptr [eax+5C]
 004FB19B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB1A0    mov         eax,dword ptr [eax]
 004FB1A2    mov         eax,dword ptr [eax+35C]
 004FB1A8    mov         dword ptr [eax+5C],edx
>004FB1AB    jmp         004FB21B
 004FB1AD    lea         edx,[ebp-30]
 004FB1B0    mov         eax,dword ptr [ebp-4]
 004FB1B3    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FB1B9    call        TPanel.GetCaption
 004FB1BE    mov         eax,dword ptr [ebp-30]
 004FB1C1    xor         edx,edx
 004FB1C3    call        0040C4A8
 004FB1C8    push        eax
 004FB1C9    mov         eax,dword ptr [ebp-4]
 004FB1CC    mov         eax,dword ptr [eax+328];TfmTracks.rgHeads:TRadioGroup
 004FB1D2    mov         ax,word ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004FB1D9    push        eax
 004FB1DA    lea         edx,[ebp-34]
 004FB1DD    mov         eax,dword ptr [ebp-4]
 004FB1E0    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FB1E6    call        TPanel.GetCaption
 004FB1EB    mov         eax,dword ptr [ebp-34]
 004FB1EE    xor         edx,edx
 004FB1F0    call        0040C4A8
 004FB1F5    push        eax
 004FB1F6    lea         edx,[ebp-38]
 004FB1F9    mov         eax,dword ptr [ebp-4]
 004FB1FC    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FB202    call        TPanel.GetCaption
 004FB207    mov         eax,dword ptr [ebp-38]
 004FB20A    xor         edx,edx
 004FB20C    call        0040C4A8
 004FB211    mov         cx,1
 004FB215    pop         edx
 004FB216    call        004FC100
 004FB21B    mov         eax,dword ptr [ebp-4]
 004FB21E    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FB224    mov         dl,1
 004FB226    mov         ecx,dword ptr [eax]
 004FB228    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB22B    mov         eax,dword ptr [ebp-4]
 004FB22E    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FB234    mov         dl,1
 004FB236    mov         ecx,dword ptr [eax]
 004FB238    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB23B    mov         eax,dword ptr [ebp-4]
 004FB23E    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FB244    mov         dl,1
 004FB246    mov         ecx,dword ptr [eax]
 004FB248    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB24B    call        005451D0
 004FB250    xor         eax,eax
 004FB252    pop         edx
 004FB253    pop         ecx
 004FB254    pop         ecx
 004FB255    mov         dword ptr fs:[eax],edx
 004FB258    push        4FB287
 004FB25D    lea         eax,[ebp-38]
 004FB260    mov         edx,4
 004FB265    call        @LStrArrayClr
 004FB26A    lea         eax,[ebp-28]
 004FB26D    mov         edx,5
 004FB272    call        @LStrArrayClr
 004FB277    lea         eax,[ebp-0C]
 004FB27A    call        @LStrClr
 004FB27F    ret
>004FB280    jmp         @HandleFinally
>004FB285    jmp         004FB25D
 004FB287    pop         ebx
 004FB288    mov         esp,ebp
 004FB28A    pop         ebp
 004FB28B    ret
*}
end;

//004FB2A8
procedure TfmTracks.btScanClick(Sender:TObject);
begin
{*
 004FB2A8    push        ebp
 004FB2A9    mov         ebp,esp
 004FB2AB    xor         ecx,ecx
 004FB2AD    push        ecx
 004FB2AE    push        ecx
 004FB2AF    push        ecx
 004FB2B0    push        ecx
 004FB2B1    push        ecx
 004FB2B2    mov         dword ptr [ebp-8],edx
 004FB2B5    mov         dword ptr [ebp-4],eax
 004FB2B8    xor         eax,eax
 004FB2BA    push        ebp
 004FB2BB    push        4FB442
 004FB2C0    push        dword ptr fs:[eax]
 004FB2C3    mov         dword ptr fs:[eax],esp
 004FB2C6    xor         edx,edx
 004FB2C8    mov         eax,dword ptr [ebp-4]
 004FB2CB    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FB2D1    mov         ecx,dword ptr [eax]
 004FB2D3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB2D6    xor         edx,edx
 004FB2D8    mov         eax,dword ptr [ebp-4]
 004FB2DB    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FB2E1    mov         ecx,dword ptr [eax]
 004FB2E3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB2E6    xor         edx,edx
 004FB2E8    mov         eax,dword ptr [ebp-4]
 004FB2EB    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FB2F1    mov         ecx,dword ptr [eax]
 004FB2F3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB2F6    mov         eax,dword ptr [ebp-4]
 004FB2F9    mov         eax,dword ptr [eax+358];TfmTracks.cbErase:TCheckBox
 004FB2FF    mov         edx,dword ptr [eax]
 004FB301    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FB307    test        al,al
>004FB309    je          004FB35A
 004FB30B    push        0
 004FB30D    mov         cx,word ptr ds:[4FB450];0x3 gvar_004FB450
 004FB314    xor         edx,edx
 004FB316    mov         eax,4FB45C;'Service Area will be Erased!'+#10+Are You sure?'
 004FB31B    call        0043F788
 004FB320    cmp         eax,7
>004FB323    jne         004FB35A
 004FB325    mov         dl,1
 004FB327    mov         eax,dword ptr [ebp-4]
 004FB32A    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FB330    mov         ecx,dword ptr [eax]
 004FB332    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB335    mov         dl,1
 004FB337    mov         eax,dword ptr [ebp-4]
 004FB33A    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FB340    mov         ecx,dword ptr [eax]
 004FB342    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB345    mov         dl,1
 004FB347    mov         eax,dword ptr [ebp-4]
 004FB34A    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FB350    mov         ecx,dword ptr [eax]
 004FB352    call        dword ptr [ecx+64];TImage.SetEnabled
>004FB355    jmp         004FB427
 004FB35A    mov         eax,dword ptr [ebp-4]
 004FB35D    mov         eax,dword ptr [eax+35C];TfmTracks.cbAddToList:TCheckBox
 004FB363    mov         edx,dword ptr [eax]
 004FB365    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FB36B    test        al,al
>004FB36D    je          004FB385
 004FB36F    mov         ecx,dword ptr ds:[56E32C];^gvar_0056DE74:TfmHDD
 004FB375    mov         ecx,dword ptr [ecx]
 004FB377    mov         dx,35
 004FB37B    mov         eax,[004F80C0];TfmDefectsEditor
 004FB380    call        004F84F0
 004FB385    lea         edx,[ebp-0C]
 004FB388    mov         eax,dword ptr [ebp-4]
 004FB38B    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FB391    call        TPanel.GetCaption
 004FB396    mov         eax,dword ptr [ebp-0C]
 004FB399    xor         edx,edx
 004FB39B    call        0040C4A8
 004FB3A0    push        eax
 004FB3A1    mov         eax,dword ptr [ebp-4]
 004FB3A4    mov         eax,dword ptr [eax+328];TfmTracks.rgHeads:TRadioGroup
 004FB3AA    mov         al,byte ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004FB3B0    push        eax
 004FB3B1    lea         edx,[ebp-10]
 004FB3B4    mov         eax,dword ptr [ebp-4]
 004FB3B7    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FB3BD    call        TPanel.GetCaption
 004FB3C2    mov         eax,dword ptr [ebp-10]
 004FB3C5    xor         edx,edx
 004FB3C7    call        0040C4A8
 004FB3CC    push        eax
 004FB3CD    lea         edx,[ebp-14]
 004FB3D0    mov         eax,dword ptr [ebp-4]
 004FB3D3    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FB3D9    call        TPanel.GetCaption
 004FB3DE    mov         eax,dword ptr [ebp-14]
 004FB3E1    xor         edx,edx
 004FB3E3    call        0040C4A8
 004FB3E8    mov         cx,1
 004FB3EC    pop         edx
 004FB3ED    call        004FC4C0
 004FB3F2    mov         dl,1
 004FB3F4    mov         eax,dword ptr [ebp-4]
 004FB3F7    mov         eax,dword ptr [eax+324];TfmTracks.btScan:TButton
 004FB3FD    mov         ecx,dword ptr [eax]
 004FB3FF    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB402    mov         dl,1
 004FB404    mov         eax,dword ptr [ebp-4]
 004FB407    mov         eax,dword ptr [eax+30C];TfmTracks.btRead:TButton
 004FB40D    mov         ecx,dword ptr [eax]
 004FB40F    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB412    mov         dl,1
 004FB414    mov         eax,dword ptr [ebp-4]
 004FB417    mov         eax,dword ptr [eax+310];TfmTracks.btWrite:TButton
 004FB41D    mov         ecx,dword ptr [eax]
 004FB41F    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB422    call        005451D0
 004FB427    xor         eax,eax
 004FB429    pop         edx
 004FB42A    pop         ecx
 004FB42B    pop         ecx
 004FB42C    mov         dword ptr fs:[eax],edx
 004FB42F    push        4FB449
 004FB434    lea         eax,[ebp-14]
 004FB437    mov         edx,3
 004FB43C    call        @LStrArrayClr
 004FB441    ret
>004FB442    jmp         @HandleFinally
>004FB447    jmp         004FB434
 004FB449    mov         esp,ebp
 004FB44B    pop         ebp
 004FB44C    ret
*}
end;

//004FB488
procedure TfmTracks.btGetSptClick(Sender:TObject);
begin
{*
 004FB488    push        ebp
 004FB489    mov         ebp,esp
 004FB48B    mov         ecx,4
 004FB490    push        0
 004FB492    push        0
 004FB494    dec         ecx
>004FB495    jne         004FB490
 004FB497    push        ecx
 004FB498    mov         dword ptr [ebp-8],edx
 004FB49B    mov         dword ptr [ebp-4],eax
 004FB49E    xor         eax,eax
 004FB4A0    push        ebp
 004FB4A1    push        4FB5D7
 004FB4A6    push        dword ptr fs:[eax]
 004FB4A9    mov         dword ptr fs:[eax],esp
 004FB4AC    xor         edx,edx
 004FB4AE    mov         eax,dword ptr [ebp-4]
 004FB4B1    mov         eax,dword ptr [eax+32C];TfmTracks.btGetSpt:TButton
 004FB4B7    mov         ecx,dword ptr [eax]
 004FB4B9    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB4BC    mov         eax,dword ptr [ebp-4]
 004FB4BF    mov         eax,dword ptr [eax+300];TfmTracks.cbArea:TComboBox
 004FB4C5    mov         edx,dword ptr [eax]
 004FB4C7    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004FB4CD    test        eax,eax
>004FB4CF    jne         004FB52A
 004FB4D1    lea         eax,[ebp-10]
 004FB4D4    push        eax
 004FB4D5    mov         eax,dword ptr [ebp-4]
 004FB4D8    mov         eax,dword ptr [eax+328];TfmTracks.rgHeads:TRadioGroup
 004FB4DE    mov         dl,byte ptr [eax+218];TRadioGroup.FItemIndex:Integer
 004FB4E4    mov         eax,0FFFFFFFE
 004FB4E9    call        004CEDD4
 004FB4EE    movzx       eax,ax
 004FB4F1    mov         dword ptr [ebp-18],eax
 004FB4F4    mov         byte ptr [ebp-14],0
 004FB4F8    lea         edx,[ebp-18]
 004FB4FB    xor         ecx,ecx
 004FB4FD    mov         eax,4FB5EC;'%x'
 004FB502    call        0040D630
 004FB507    mov         ecx,dword ptr [ebp-10]
 004FB50A    lea         eax,[ebp-0C]
 004FB50D    mov         edx,4FB5F8;'$'
 004FB512    call        @LStrCat3
 004FB517    mov         edx,dword ptr [ebp-0C]
 004FB51A    mov         eax,dword ptr [ebp-4]
 004FB51D    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FB523    call        TPanel.SetCaption
>004FB528    jmp         004FB597
 004FB52A    lea         eax,[ebp-20]
 004FB52D    push        eax
 004FB52E    lea         edx,[ebp-24]
 004FB531    mov         eax,dword ptr [ebp-4]
 004FB534    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FB53A    call        TPanel.GetCaption
 004FB53F    mov         eax,dword ptr [ebp-24]
 004FB542    xor         edx,edx
 004FB544    call        0040C4A8
 004FB549    mov         edx,dword ptr [ebp-4]
 004FB54C    mov         edx,dword ptr [edx+328];TfmTracks.rgHeads:TRadioGroup
 004FB552    mov         dl,byte ptr [edx+218];TRadioGroup.FItemIndex:Integer
 004FB558    call        004CEDD4
 004FB55D    movzx       eax,ax
 004FB560    mov         dword ptr [ebp-18],eax
 004FB563    mov         byte ptr [ebp-14],0
 004FB567    lea         edx,[ebp-18]
 004FB56A    xor         ecx,ecx
 004FB56C    mov         eax,4FB5EC;'%x'
 004FB571    call        0040D630
 004FB576    mov         ecx,dword ptr [ebp-20]
 004FB579    lea         eax,[ebp-1C]
 004FB57C    mov         edx,4FB5F8;'$'
 004FB581    call        @LStrCat3
 004FB586    mov         edx,dword ptr [ebp-1C]
 004FB589    mov         eax,dword ptr [ebp-4]
 004FB58C    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FB592    call        TPanel.SetCaption
 004FB597    mov         dl,1
 004FB599    mov         eax,dword ptr [ebp-4]
 004FB59C    mov         eax,dword ptr [eax+32C];TfmTracks.btGetSpt:TButton
 004FB5A2    mov         ecx,dword ptr [eax]
 004FB5A4    call        dword ptr [ecx+64];TImage.SetEnabled
 004FB5A7    xor         eax,eax
 004FB5A9    pop         edx
 004FB5AA    pop         ecx
 004FB5AB    pop         ecx
 004FB5AC    mov         dword ptr fs:[eax],edx
 004FB5AF    push        4FB5DE
 004FB5B4    lea         eax,[ebp-24]
 004FB5B7    call        @LStrClr
 004FB5BC    lea         eax,[ebp-20]
 004FB5BF    mov         edx,2
 004FB5C4    call        @LStrArrayClr
 004FB5C9    lea         eax,[ebp-10]
 004FB5CC    mov         edx,2
 004FB5D1    call        @LStrArrayClr
 004FB5D6    ret
>004FB5D7    jmp         @HandleFinally
>004FB5DC    jmp         004FB5B4
 004FB5DE    mov         esp,ebp
 004FB5E0    pop         ebp
 004FB5E1    ret
*}
end;

//004FB5FC
procedure TfmTracks.FormShow(Sender:TObject);
begin
{*
 004FB5FC    push        ebp
 004FB5FD    mov         ebp,esp
 004FB5FF    add         esp,0FFFFFFF8
 004FB602    mov         dword ptr [ebp-8],edx
 004FB605    mov         dword ptr [ebp-4],eax
 004FB608    mov         eax,[0056E284];^gvar_0056DF34
 004FB60D    mov         eax,dword ptr [eax]
 004FB60F    mov         eax,dword ptr [eax+408]
 004FB615    cmp         byte ptr [eax+38],0
>004FB619    je          004FB625
 004FB61B    xor         edx,edx
 004FB61D    mov         eax,dword ptr [ebp-4]
 004FB620    call        TfmTracks.btFromZoneMapClick
 004FB625    pop         ecx
 004FB626    pop         ecx
 004FB627    pop         ebp
 004FB628    ret
*}
end;

//004FB62C
{*function sub_004FB62C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004FB62C    push        ebp
 004FB62D    mov         ebp,esp
 004FB62F    push        ecx
 004FB630    mov         ecx,6
 004FB635    push        0
 004FB637    push        0
 004FB639    dec         ecx
>004FB63A    jne         004FB635
 004FB63C    push        ecx
 004FB63D    xchg        ecx,dword ptr [ebp-4]
 004FB640    push        ebx
 004FB641    mov         word ptr [ebp-8],cx
 004FB645    mov         word ptr [ebp-6],dx
 004FB649    mov         dword ptr [ebp-4],eax
 004FB64C    xor         eax,eax
 004FB64E    push        ebp
 004FB64F    push        4FBA0F
 004FB654    push        dword ptr fs:[eax]
 004FB657    mov         dword ptr fs:[eax],esp
 004FB65A    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB65F    mov         byte ptr [eax],0
 004FB662    mov         byte ptr [ebp-9],1
 004FB666    call        004CED2C
 004FB66B    mov         ax,word ptr [ebp-8]
 004FB66F    mov         word ptr [ebp-12],ax
 004FB673    mov         ax,word ptr [ebp-6]
 004FB677    mov         word ptr [ebp-14],ax
 004FB67B    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FB682    je          004FB9AC
 004FB688    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB68D    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB693    xor         edx,edx
 004FB695    call        TProgressBar.SetMin
 004FB69A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB69F    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB6A5    xor         edx,edx
 004FB6A7    call        TProgressBar.SetPosition
 004FB6AC    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB6B1    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB6B7    xor         edx,edx
 004FB6B9    call        TProgressBar.SetMax
 004FB6BE    movzx       edx,word ptr [ebp-6]
 004FB6C2    movzx       eax,word ptr [ebp-8]
 004FB6C6    add         edx,eax
 004FB6C8    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB6CD    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB6D3    call        TProgressBar.SetMax
 004FB6D8    movzx       edx,word ptr [ebp-6]
 004FB6DC    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB6E1    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB6E7    call        TProgressBar.SetPosition
 004FB6EC    movzx       edx,word ptr [ebp-6]
 004FB6F0    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB6F5    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB6FB    call        TProgressBar.SetMin
>004FB700    jmp         004FB9AC
 004FB705    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FB70C    je          004FB73A
 004FB70E    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB713    mov         eax,dword ptr [eax+300];TfmTracks.cbArea:TComboBox
 004FB719    mov         edx,dword ptr [eax]
 004FB71B    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004FB721    dec         eax
>004FB722    jne         004FB73A
 004FB724    mov         al,byte ptr [ebp+0C]
 004FB727    push        eax
 004FB728    mov         ecx,dword ptr [ebp-4]
 004FB72B    mov         dx,word ptr [ebp-14]
 004FB72F    mov         ax,1
 004FB733    call        004CEE3C
>004FB738    jmp         004FB751
 004FB73A    mov         al,byte ptr [ebp+0C]
 004FB73D    push        eax
 004FB73E    mov         ecx,dword ptr [ebp-4]
 004FB741    not         ecx
 004FB743    inc         ecx
 004FB744    mov         dx,word ptr [ebp-14]
 004FB748    mov         ax,1
 004FB74C    call        004CEE3C
 004FB751    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FB756    cmp         byte ptr [eax],0
>004FB759    jne         004FB793
 004FB75B    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB760    cmp         byte ptr [eax],0
>004FB763    jne         004FB793
 004FB765    call        004CEAB4
 004FB76A    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FB76F    cmp         byte ptr [eax],0
>004FB772    jne         004FB945
 004FB778    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB77D    cmp         byte ptr [eax],0
>004FB780    jne         004FB945
 004FB786    mov         eax,dword ptr [ebp+8]
 004FB789    call        00560288
>004FB78E    jmp         004FB945
 004FB793    cmp         byte ptr ds:[56D3F0],0;gvar_0056D3F0:Boolean
>004FB79A    je          004FB8DC
 004FB7A0    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB7A5    mov         eax,dword ptr [eax+300];TfmTracks.cbArea:TComboBox
 004FB7AB    mov         edx,dword ptr [eax]
 004FB7AD    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004FB7B3    test        eax,eax
>004FB7B5    jne         004FB7D0
 004FB7B7    mov         al,byte ptr [ebp+0C]
 004FB7BA    push        eax
 004FB7BB    mov         ecx,dword ptr [ebp-4]
 004FB7BE    not         ecx
 004FB7C0    inc         ecx
 004FB7C1    mov         dx,word ptr [ebp-14]
 004FB7C5    mov         ax,1
 004FB7C9    call        004CEEA4
>004FB7CE    jmp         004FB7E4
 004FB7D0    mov         al,byte ptr [ebp+0C]
 004FB7D3    push        eax
 004FB7D4    mov         ecx,dword ptr [ebp-4]
 004FB7D7    mov         dx,word ptr [ebp-14]
 004FB7DB    mov         ax,1
 004FB7DF    call        004CEEA4
 004FB7E4    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FB7E9    cmp         byte ptr [eax],0
>004FB7EC    jne         004FB875
 004FB7F2    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB7F7    cmp         byte ptr [eax],0
>004FB7FA    jne         004FB875
 004FB7FC    call        004CEAB4
 004FB801    mov         eax,dword ptr [ebp+8]
 004FB804    call        00560288
 004FB809    mov         eax,dword ptr [ebp-4]
 004FB80C    xor         edx,edx
 004FB80E    push        edx
 004FB80F    push        eax
 004FB810    lea         edx,[ebp-18]
 004FB813    mov         eax,4
 004FB818    call        IntToHex
 004FB81D    push        dword ptr [ebp-18]
 004FB820    push        4FBA28;':'
 004FB825    lea         ecx,[ebp-1C]
 004FB828    movzx       eax,word ptr [ebp-14]
 004FB82C    mov         edx,4
 004FB831    call        IntToHex
 004FB836    push        dword ptr [ebp-1C]
 004FB839    push        4FBA34;' RL'
 004FB83E    push        4FBA40;#10
 004FB843    push        4FBA4C;#13
 004FB848    lea         eax,[ebp-10]
 004FB84B    mov         edx,6
 004FB850    call        @LStrCatN
 004FB855    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB85A    mov         eax,dword ptr [eax]
 004FB85C    mov         eax,dword ptr [eax+2F8]
 004FB862    mov         eax,dword ptr [eax+248]
 004FB868    mov         edx,dword ptr [ebp-10]
 004FB86B    mov         ecx,dword ptr [eax]
 004FB86D    call        dword ptr [ecx+38]
>004FB870    jmp         004FB941
 004FB875    mov         eax,dword ptr [ebp+8]
 004FB878    call        005602C8
 004FB87D    mov         eax,dword ptr [ebp-4]
 004FB880    xor         edx,edx
 004FB882    push        edx
 004FB883    push        eax
 004FB884    lea         edx,[ebp-20]
 004FB887    mov         eax,4
 004FB88C    call        IntToHex
 004FB891    push        dword ptr [ebp-20]
 004FB894    push        4FBA28;':'
 004FB899    lea         ecx,[ebp-24]
 004FB89C    movzx       eax,word ptr [ebp-14]
 004FB8A0    mov         edx,4
 004FB8A5    call        IntToHex
 004FB8AA    push        dword ptr [ebp-24]
 004FB8AD    push        4FBA58;' Err'
 004FB8B2    lea         eax,[ebp-10]
 004FB8B5    mov         edx,4
 004FB8BA    call        @LStrCatN
 004FB8BF    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB8C4    mov         eax,dword ptr [eax]
 004FB8C6    mov         eax,dword ptr [eax+2F8]
 004FB8CC    mov         eax,dword ptr [eax+248]
 004FB8D2    mov         edx,dword ptr [ebp-10]
 004FB8D5    mov         ecx,dword ptr [eax]
 004FB8D7    call        dword ptr [ecx+38]
>004FB8DA    jmp         004FB941
 004FB8DC    mov         eax,dword ptr [ebp+8]
 004FB8DF    call        005602C8
 004FB8E4    mov         eax,dword ptr [ebp-4]
 004FB8E7    xor         edx,edx
 004FB8E9    push        edx
 004FB8EA    push        eax
 004FB8EB    lea         edx,[ebp-28]
 004FB8EE    mov         eax,4
 004FB8F3    call        IntToHex
 004FB8F8    push        dword ptr [ebp-28]
 004FB8FB    push        4FBA28;':'
 004FB900    lea         ecx,[ebp-2C]
 004FB903    movzx       eax,word ptr [ebp-14]
 004FB907    mov         edx,4
 004FB90C    call        IntToHex
 004FB911    push        dword ptr [ebp-2C]
 004FB914    push        4FBA58;' Err'
 004FB919    lea         eax,[ebp-10]
 004FB91C    mov         edx,4
 004FB921    call        @LStrCatN
 004FB926    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FB92B    mov         eax,dword ptr [eax]
 004FB92D    mov         eax,dword ptr [eax+2F8]
 004FB933    mov         eax,dword ptr [eax+248]
 004FB939    mov         edx,dword ptr [ebp-10]
 004FB93C    mov         ecx,dword ptr [eax]
 004FB93E    call        dword ptr [ecx+38]
 004FB941    mov         byte ptr [ebp-9],0
 004FB945    inc         word ptr [ebp-14]
 004FB949    dec         word ptr [ebp-12]
 004FB94D    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FB954    je          004FB9AC
 004FB956    lea         eax,[ebp-30]
 004FB959    push        eax
 004FB95A    movzx       eax,word ptr [ebp-14]
 004FB95E    mov         dword ptr [ebp-38],eax
 004FB961    mov         byte ptr [ebp-34],0
 004FB965    lea         edx,[ebp-38]
 004FB968    xor         ecx,ecx
 004FB96A    mov         eax,4FBA68;'%x'
 004FB96F    call        0040D630
 004FB974    mov         edx,dword ptr [ebp-30]
 004FB977    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB97C    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB982    add         eax,80;TProgressBar.Hint:String
 004FB987    call        @LStrAsg
 004FB98C    movzx       edx,word ptr [ebp-14]
 004FB990    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB995    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB99B    call        TProgressBar.SetPosition
 004FB9A0    mov         eax,[0056E3C0];^Application:TApplication
 004FB9A5    mov         eax,dword ptr [eax]
 004FB9A7    call        004AB51C
 004FB9AC    cmp         word ptr [ebp-12],0
>004FB9B1    jbe         004FB9C1
 004FB9B3    mov         eax,[0056E5A4];^gvar_0056DF04
 004FB9B8    cmp         byte ptr [eax],0
>004FB9BB    je          004FB705
 004FB9C1    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FB9C8    je          004FB9EC
 004FB9CA    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB9CF    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB9D5    call        TProgressBar.GetMin
 004FB9DA    mov         edx,eax
 004FB9DC    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FB9E1    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FB9E7    call        TProgressBar.SetPosition
 004FB9EC    xor         eax,eax
 004FB9EE    pop         edx
 004FB9EF    pop         ecx
 004FB9F0    pop         ecx
 004FB9F1    mov         dword ptr fs:[eax],edx
 004FB9F4    push        4FBA16
 004FB9F9    lea         eax,[ebp-30]
 004FB9FC    mov         edx,7
 004FBA01    call        @LStrArrayClr
 004FBA06    lea         eax,[ebp-10]
 004FBA09    call        @LStrClr
 004FBA0E    ret
>004FBA0F    jmp         @HandleFinally
>004FBA14    jmp         004FB9F9
 004FBA16    mov         al,byte ptr [ebp-9]
 004FBA19    pop         ebx
 004FBA1A    mov         esp,ebp
 004FBA1C    pop         ebp
 004FBA1D    ret         8
end;*}

//004FBA6C
{*function sub_004FBA6C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004FBA6C    push        ebp
 004FBA6D    mov         ebp,esp
 004FBA6F    push        ecx
 004FBA70    mov         ecx,7
 004FBA75    push        0
 004FBA77    push        0
 004FBA79    dec         ecx
>004FBA7A    jne         004FBA75
 004FBA7C    push        ecx
 004FBA7D    xchg        ecx,dword ptr [ebp-4]
 004FBA80    push        ebx
 004FBA81    mov         word ptr [ebp-8],cx
 004FBA85    mov         word ptr [ebp-6],dx
 004FBA89    mov         dword ptr [ebp-4],eax
 004FBA8C    xor         eax,eax
 004FBA8E    push        ebp
 004FBA8F    push        4FBDF1
 004FBA94    push        dword ptr fs:[eax]
 004FBA97    mov         dword ptr fs:[eax],esp
 004FBA9A    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBA9F    mov         byte ptr [eax],0
 004FBAA2    mov         byte ptr [ebp-9],1
 004FBAA6    call        004CED2C
 004FBAAB    mov         ax,word ptr [ebp-8]
 004FBAAF    mov         word ptr [ebp-0C],ax
 004FBAB3    mov         ax,word ptr [ebp-6]
 004FBAB7    mov         word ptr [ebp-0E],ax
 004FBABB    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FBAC2    je          004FBD96
 004FBAC8    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBACD    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBAD3    xor         edx,edx
 004FBAD5    call        TProgressBar.SetMin
 004FBADA    movzx       edx,word ptr [ebp-6]
 004FBADE    movzx       eax,word ptr [ebp-8]
 004FBAE2    add         edx,eax
 004FBAE4    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBAE9    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBAEF    call        TProgressBar.SetMax
 004FBAF4    movzx       edx,word ptr [ebp-6]
 004FBAF8    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBAFD    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBB03    call        TProgressBar.SetMin
>004FBB08    jmp         004FBD96
 004FBB0D    mov         eax,dword ptr [ebp+8]
 004FBB10    call        005602A8
 004FBB15    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FBB1C    je          004FBC67
 004FBB22    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBB27    mov         eax,dword ptr [eax+354];TfmTracks.cbSecondCopy:TCheckBox
 004FBB2D    mov         edx,dword ptr [eax]
 004FBB2F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FBB35    test        al,al
>004FBB37    je          004FBC67
 004FBB3D    push        0
 004FBB3F    mov         ecx,dword ptr [ebp-4]
 004FBB42    not         ecx
 004FBB44    inc         ecx
 004FBB45    mov         dx,word ptr [ebp-0E]
 004FBB49    mov         ax,1
 004FBB4D    call        004CEFA4
 004FBB52    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FBB57    cmp         byte ptr [eax],0
>004FBB5A    jne         004FBB6D
 004FBB5C    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBB61    cmp         byte ptr [eax],0
>004FBB64    jne         004FBB6D
 004FBB66    call        004CEC08
>004FBB6B    jmp         004FBBCE
 004FBB6D    mov         byte ptr [ebp-9],0
 004FBB71    push        4FBE0C;'Error Write Hd0 Track: '
 004FBB76    mov         eax,dword ptr [ebp-4]
 004FBB79    xor         edx,edx
 004FBB7B    push        edx
 004FBB7C    push        eax
 004FBB7D    lea         edx,[ebp-18]
 004FBB80    mov         eax,8
 004FBB85    call        IntToHex
 004FBB8A    push        dword ptr [ebp-18]
 004FBB8D    push        4FBE2C;' S:'
 004FBB92    lea         ecx,[ebp-1C]
 004FBB95    movzx       eax,word ptr [ebp-0E]
 004FBB99    mov         edx,4
 004FBB9E    call        IntToHex
 004FBBA3    push        dword ptr [ebp-1C]
 004FBBA6    lea         eax,[ebp-14]
 004FBBA9    mov         edx,4
 004FBBAE    call        @LStrCatN
 004FBBB3    mov         edx,dword ptr [ebp-14]
 004FBBB6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FBBBB    mov         eax,dword ptr [eax]
 004FBBBD    mov         eax,dword ptr [eax+2F8]
 004FBBC3    mov         eax,dword ptr [eax+248]
 004FBBC9    mov         ecx,dword ptr [eax]
 004FBBCB    call        dword ptr [ecx+38]
 004FBBCE    push        1
 004FBBD0    mov         ecx,dword ptr [ebp-4]
 004FBBD3    not         ecx
 004FBBD5    inc         ecx
 004FBBD6    mov         dx,word ptr [ebp-0E]
 004FBBDA    mov         ax,1
 004FBBDE    call        004CEFA4
 004FBBE3    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FBBE8    cmp         byte ptr [eax],0
>004FBBEB    jne         004FBC01
 004FBBED    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBBF2    cmp         byte ptr [eax],0
>004FBBF5    jne         004FBC01
 004FBBF7    call        004CEC08
>004FBBFC    jmp         004FBD2F
 004FBC01    mov         byte ptr [ebp-9],0
 004FBC05    push        4FBE38;'Error Write Hd1 Track: '
 004FBC0A    mov         eax,dword ptr [ebp-4]
 004FBC0D    xor         edx,edx
 004FBC0F    push        edx
 004FBC10    push        eax
 004FBC11    lea         edx,[ebp-24]
 004FBC14    mov         eax,8
 004FBC19    call        IntToHex
 004FBC1E    push        dword ptr [ebp-24]
 004FBC21    push        4FBE2C;' S:'
 004FBC26    lea         ecx,[ebp-28]
 004FBC29    movzx       eax,word ptr [ebp-0E]
 004FBC2D    mov         edx,4
 004FBC32    call        IntToHex
 004FBC37    push        dword ptr [ebp-28]
 004FBC3A    lea         eax,[ebp-20]
 004FBC3D    mov         edx,4
 004FBC42    call        @LStrCatN
 004FBC47    mov         edx,dword ptr [ebp-20]
 004FBC4A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FBC4F    mov         eax,dword ptr [eax]
 004FBC51    mov         eax,dword ptr [eax+2F8]
 004FBC57    mov         eax,dword ptr [eax+248]
 004FBC5D    mov         ecx,dword ptr [eax]
 004FBC5F    call        dword ptr [ecx+38]
>004FBC62    jmp         004FBD2F
 004FBC67    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FBC6E    je          004FBC9C
 004FBC70    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBC75    mov         eax,dword ptr [eax+300];TfmTracks.cbArea:TComboBox
 004FBC7B    mov         edx,dword ptr [eax]
 004FBC7D    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004FBC83    dec         eax
>004FBC84    jne         004FBC9C
 004FBC86    mov         al,byte ptr [ebp+0C]
 004FBC89    push        eax
 004FBC8A    mov         ecx,dword ptr [ebp-4]
 004FBC8D    mov         dx,word ptr [ebp-0E]
 004FBC91    mov         ax,1
 004FBC95    call        004CEFA4
>004FBC9A    jmp         004FBCB3
 004FBC9C    mov         al,byte ptr [ebp+0C]
 004FBC9F    push        eax
 004FBCA0    mov         ecx,dword ptr [ebp-4]
 004FBCA3    not         ecx
 004FBCA5    inc         ecx
 004FBCA6    mov         dx,word ptr [ebp-0E]
 004FBCAA    mov         ax,1
 004FBCAE    call        004CEFA4
 004FBCB3    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FBCB8    cmp         byte ptr [eax],0
>004FBCBB    jne         004FBCCE
 004FBCBD    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBCC2    cmp         byte ptr [eax],0
>004FBCC5    jne         004FBCCE
 004FBCC7    call        004CEC08
>004FBCCC    jmp         004FBD2F
 004FBCCE    mov         byte ptr [ebp-9],0
 004FBCD2    push        4FBE58;'Error Write Track: '
 004FBCD7    mov         eax,dword ptr [ebp-4]
 004FBCDA    xor         edx,edx
 004FBCDC    push        edx
 004FBCDD    push        eax
 004FBCDE    lea         edx,[ebp-30]
 004FBCE1    mov         eax,8
 004FBCE6    call        IntToHex
 004FBCEB    push        dword ptr [ebp-30]
 004FBCEE    push        4FBE2C;' S:'
 004FBCF3    lea         ecx,[ebp-34]
 004FBCF6    movzx       eax,word ptr [ebp-0E]
 004FBCFA    mov         edx,4
 004FBCFF    call        IntToHex
 004FBD04    push        dword ptr [ebp-34]
 004FBD07    lea         eax,[ebp-2C]
 004FBD0A    mov         edx,4
 004FBD0F    call        @LStrCatN
 004FBD14    mov         edx,dword ptr [ebp-2C]
 004FBD17    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FBD1C    mov         eax,dword ptr [eax]
 004FBD1E    mov         eax,dword ptr [eax+2F8]
 004FBD24    mov         eax,dword ptr [eax+248]
 004FBD2A    mov         ecx,dword ptr [eax]
 004FBD2C    call        dword ptr [ecx+38]
 004FBD2F    inc         word ptr [ebp-0E]
 004FBD33    dec         word ptr [ebp-0C]
 004FBD37    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FBD3E    je          004FBD8A
 004FBD40    lea         eax,[ebp-38]
 004FBD43    push        eax
 004FBD44    movzx       eax,word ptr [ebp-0E]
 004FBD48    mov         dword ptr [ebp-40],eax
 004FBD4B    mov         byte ptr [ebp-3C],0
 004FBD4F    lea         edx,[ebp-40]
 004FBD52    xor         ecx,ecx
 004FBD54    mov         eax,4FBE74;'%x'
 004FBD59    call        0040D630
 004FBD5E    mov         edx,dword ptr [ebp-38]
 004FBD61    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBD66    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBD6C    add         eax,80;TProgressBar.Hint:String
 004FBD71    call        @LStrAsg
 004FBD76    movzx       edx,word ptr [ebp-0E]
 004FBD7A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBD7F    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBD85    call        TProgressBar.SetPosition
 004FBD8A    mov         eax,[0056E3C0];^Application:TApplication
 004FBD8F    mov         eax,dword ptr [eax]
 004FBD91    call        004AB51C
 004FBD96    cmp         word ptr [ebp-0C],0
>004FBD9B    jbe         004FBDAB
 004FBD9D    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBDA2    cmp         byte ptr [eax],0
>004FBDA5    je          004FBB0D
 004FBDAB    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FBDB2    je          004FBDD6
 004FBDB4    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBDB9    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBDBF    call        TProgressBar.GetMin
 004FBDC4    mov         edx,eax
 004FBDC6    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBDCB    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FBDD1    call        TProgressBar.SetPosition
 004FBDD6    xor         eax,eax
 004FBDD8    pop         edx
 004FBDD9    pop         ecx
 004FBDDA    pop         ecx
 004FBDDB    mov         dword ptr fs:[eax],edx
 004FBDDE    push        4FBDF8
 004FBDE3    lea         eax,[ebp-38]
 004FBDE6    mov         edx,0A
 004FBDEB    call        @LStrArrayClr
 004FBDF0    ret
>004FBDF1    jmp         @HandleFinally
>004FBDF6    jmp         004FBDE3
 004FBDF8    mov         al,byte ptr [ebp-9]
 004FBDFB    pop         ebx
 004FBDFC    mov         esp,ebp
 004FBDFE    pop         ebp
 004FBDFF    ret         8
end;*}

//004FBE78
{*function sub_004FBE78(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004FBE78    push        ebp
 004FBE79    mov         ebp,esp
 004FBE7B    add         esp,0FFFFFFCC
 004FBE7E    push        ebx
 004FBE7F    xor         ebx,ebx
 004FBE81    mov         dword ptr [ebp-2C],ebx
 004FBE84    mov         dword ptr [ebp-24],ebx
 004FBE87    mov         dword ptr [ebp-28],ebx
 004FBE8A    mov         dword ptr [ebp-20],ebx
 004FBE8D    mov         dword ptr [ebp-1C],ebx
 004FBE90    mov         dword ptr [ebp-14],ebx
 004FBE93    mov         word ptr [ebp-0A],cx
 004FBE97    mov         dword ptr [ebp-8],edx
 004FBE9A    mov         dword ptr [ebp-4],eax
 004FBE9D    xor         eax,eax
 004FBE9F    push        ebp
 004FBEA0    push        4FC08D
 004FBEA5    push        dword ptr fs:[eax]
 004FBEA8    mov         dword ptr fs:[eax],esp
 004FBEAB    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FBEB1    mov         edx,dword ptr [edx]
 004FBEB3    lea         eax,[ebp-1C]
 004FBEB6    mov         ecx,4FC0A8;'Tracks'
 004FBEBB    call        @LStrCat3
 004FBEC0    mov         eax,dword ptr [ebp-1C]
 004FBEC3    call        0040C9A4
 004FBEC8    test        al,al
>004FBECA    jne         004FBEFE
 004FBECC    push        4FC0B8;'Cannot create '
 004FBED1    mov         eax,[0056E2D0];^gvar_0056DF38
 004FBED6    push        dword ptr [eax]
 004FBED8    push        4FC0A8;'Tracks'
 004FBEDD    lea         eax,[ebp-20]
 004FBEE0    mov         edx,3
 004FBEE5    call        @LStrCatN
 004FBEEA    mov         ecx,dword ptr [ebp-20]
 004FBEED    mov         dl,1
 004FBEEF    mov         eax,[0040B004];Exception
 004FBEF4    call        Exception.Create;Exception.Create
 004FBEF9    call        @RaiseExcept
 004FBEFE    mov         eax,[0056E5A4];^gvar_0056DF04
 004FBF03    mov         byte ptr [eax],0
 004FBF06    mov         byte ptr [ebp-0B],1
 004FBF0A    call        004CED2C
 004FBF0F    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBF14    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FBF1A    xor         edx,edx
 004FBF1C    call        TProgressBar.SetMin
 004FBF21    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBF26    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FBF2C    mov         edx,dword ptr [ebp-8]
 004FBF2F    call        TProgressBar.SetMax
 004FBF34    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FBF39    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FBF3F    mov         edx,dword ptr [ebp-4]
 004FBF42    call        TProgressBar.SetMin
 004FBF47    mov         dl,1
 004FBF49    mov         eax,[0041DE14];TMemoryStream
 004FBF4E    call        TObject.Create;TMemoryStream.Create
 004FBF53    mov         dword ptr [ebp-18],eax
 004FBF56    xor         eax,eax
 004FBF58    push        ebp
 004FBF59    push        4FC063
 004FBF5E    push        dword ptr fs:[eax]
 004FBF61    mov         dword ptr fs:[eax],esp
 004FBF64    mov         eax,dword ptr [ebp-4]
 004FBF67    mov         dword ptr [ebp-10],eax
>004FBF6A    jmp         004FC037
 004FBF6F    mov         eax,dword ptr [ebp-18]
 004FBF72    call        00423F20
 004FBF77    mov         ax,word ptr [ebp+8]
 004FBF7B    push        eax
 004FBF7C    mov         eax,dword ptr [ebp-18]
 004FBF7F    push        eax
 004FBF80    mov         cx,word ptr [ebp+0C]
 004FBF84    mov         dx,word ptr [ebp-0A]
 004FBF88    mov         eax,dword ptr [ebp-10]
 004FBF8B    call        004FB62C
 004FBF90    mov         eax,[0056E2D0];^gvar_0056DF38
 004FBF95    push        dword ptr [eax]
 004FBF97    push        4FC0D0;'Tracks\'
 004FBF9C    lea         edx,[ebp-24]
 004FBF9F    mov         eax,dword ptr [ebp-10]
 004FBFA2    call        0050138C
 004FBFA7    push        dword ptr [ebp-24]
 004FBFAA    push        4FC0E0;'_'
 004FBFAF    lea         ecx,[ebp-28]
 004FBFB2    movzx       eax,word ptr [ebp+8]
 004FBFB6    mov         edx,2
 004FBFBB    call        IntToHex
 004FBFC0    push        dword ptr [ebp-28]
 004FBFC3    push        4FC0EC;'.trk'
 004FBFC8    lea         eax,[ebp-14]
 004FBFCB    mov         edx,6
 004FBFD0    call        @LStrCatN
 004FBFD5    mov         edx,dword ptr [ebp-14]
 004FBFD8    mov         eax,dword ptr [ebp-18]
 004FBFDB    call        00423E84
 004FBFE0    lea         eax,[ebp-2C]
 004FBFE3    push        eax
 004FBFE4    mov         eax,dword ptr [ebp-10]
 004FBFE7    mov         dword ptr [ebp-34],eax
 004FBFEA    mov         byte ptr [ebp-30],0
 004FBFEE    lea         edx,[ebp-34]
 004FBFF1    xor         ecx,ecx
 004FBFF3    mov         eax,4FC0FC;'%x'
 004FBFF8    call        0040D630
 004FBFFD    mov         edx,dword ptr [ebp-2C]
 004FC000    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC005    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC00B    add         eax,80;TProgressBar.Hint:String
 004FC010    call        @LStrAsg
 004FC015    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC01A    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC020    mov         edx,dword ptr [ebp-10]
 004FC023    call        TProgressBar.SetPosition
 004FC028    inc         dword ptr [ebp-10]
 004FC02B    mov         eax,[0056E3C0];^Application:TApplication
 004FC030    mov         eax,dword ptr [eax]
 004FC032    call        004AB51C
 004FC037    mov         eax,dword ptr [ebp-10]
 004FC03A    cmp         eax,dword ptr [ebp-8]
>004FC03D    ja          004FC04D
 004FC03F    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC044    cmp         byte ptr [eax],0
>004FC047    je          004FBF6F
 004FC04D    xor         eax,eax
 004FC04F    pop         edx
 004FC050    pop         ecx
 004FC051    pop         ecx
 004FC052    mov         dword ptr fs:[eax],edx
 004FC055    push        4FC06A
 004FC05A    mov         eax,dword ptr [ebp-18]
 004FC05D    call        TObject.Free
 004FC062    ret
>004FC063    jmp         @HandleFinally
>004FC068    jmp         004FC05A
 004FC06A    xor         eax,eax
 004FC06C    pop         edx
 004FC06D    pop         ecx
 004FC06E    pop         ecx
 004FC06F    mov         dword ptr fs:[eax],edx
 004FC072    push        4FC094
 004FC077    lea         eax,[ebp-2C]
 004FC07A    mov         edx,5
 004FC07F    call        @LStrArrayClr
 004FC084    lea         eax,[ebp-14]
 004FC087    call        @LStrClr
 004FC08C    ret
>004FC08D    jmp         @HandleFinally
>004FC092    jmp         004FC077
 004FC094    mov         al,byte ptr [ebp-0B]
 004FC097    pop         ebx
 004FC098    mov         esp,ebp
 004FC09A    pop         ebp
 004FC09B    ret         8
end;*}

//004FC100
{*function sub_004FC100(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004FC100    push        ebp
 004FC101    mov         ebp,esp
 004FC103    add         esp,0FFFFFFCC
 004FC106    push        ebx
 004FC107    xor         ebx,ebx
 004FC109    mov         dword ptr [ebp-2C],ebx
 004FC10C    mov         dword ptr [ebp-24],ebx
 004FC10F    mov         dword ptr [ebp-28],ebx
 004FC112    mov         dword ptr [ebp-20],ebx
 004FC115    mov         dword ptr [ebp-1C],ebx
 004FC118    mov         dword ptr [ebp-14],ebx
 004FC11B    mov         word ptr [ebp-0A],cx
 004FC11F    mov         dword ptr [ebp-8],edx
 004FC122    mov         dword ptr [ebp-4],eax
 004FC125    xor         eax,eax
 004FC127    push        ebp
 004FC128    push        4FC321
 004FC12D    push        dword ptr fs:[eax]
 004FC130    mov         dword ptr fs:[eax],esp
 004FC133    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FC139    mov         edx,dword ptr [edx]
 004FC13B    lea         eax,[ebp-1C]
 004FC13E    mov         ecx,4FC33C;'Tracks'
 004FC143    call        @LStrCat3
 004FC148    mov         eax,dword ptr [ebp-1C]
 004FC14B    call        0040C9A4
 004FC150    test        al,al
>004FC152    jne         004FC186
 004FC154    push        4FC34C;'Cannot create '
 004FC159    mov         eax,[0056E2D0];^gvar_0056DF38
 004FC15E    push        dword ptr [eax]
 004FC160    push        4FC33C;'Tracks'
 004FC165    lea         eax,[ebp-20]
 004FC168    mov         edx,3
 004FC16D    call        @LStrCatN
 004FC172    mov         ecx,dword ptr [ebp-20]
 004FC175    mov         dl,1
 004FC177    mov         eax,[0040B004];Exception
 004FC17C    call        Exception.Create;Exception.Create
 004FC181    call        @RaiseExcept
 004FC186    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC18B    mov         byte ptr [eax],0
 004FC18E    mov         byte ptr [ebp-0B],1
 004FC192    call        004CED2C
 004FC197    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC19C    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC1A2    xor         edx,edx
 004FC1A4    call        TProgressBar.SetMin
 004FC1A9    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC1AE    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC1B4    mov         edx,dword ptr [ebp-8]
 004FC1B7    call        TProgressBar.SetMax
 004FC1BC    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC1C1    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC1C7    mov         edx,dword ptr [ebp-4]
 004FC1CA    call        TProgressBar.SetMin
 004FC1CF    mov         dl,1
 004FC1D1    mov         eax,[0041DE14];TMemoryStream
 004FC1D6    call        TObject.Create;TMemoryStream.Create
 004FC1DB    mov         dword ptr [ebp-18],eax
 004FC1DE    xor         eax,eax
 004FC1E0    push        ebp
 004FC1E1    push        4FC2F7
 004FC1E6    push        dword ptr fs:[eax]
 004FC1E9    mov         dword ptr fs:[eax],esp
 004FC1EC    mov         eax,dword ptr [ebp-4]
 004FC1EF    mov         dword ptr [ebp-10],eax
>004FC1F2    jmp         004FC2CB
 004FC1F7    mov         eax,dword ptr [ebp-18]
 004FC1FA    call        00423F20
 004FC1FF    mov         eax,[0056E2D0];^gvar_0056DF38
 004FC204    push        dword ptr [eax]
 004FC206    push        4FC364;'Tracks\'
 004FC20B    lea         edx,[ebp-24]
 004FC20E    mov         eax,dword ptr [ebp-10]
 004FC211    call        0050138C
 004FC216    push        dword ptr [ebp-24]
 004FC219    push        4FC374;'_'
 004FC21E    lea         ecx,[ebp-28]
 004FC221    movzx       eax,word ptr [ebp+8]
 004FC225    mov         edx,2
 004FC22A    call        IntToHex
 004FC22F    push        dword ptr [ebp-28]
 004FC232    push        4FC380;'.trk'
 004FC237    lea         eax,[ebp-14]
 004FC23A    mov         edx,6
 004FC23F    call        @LStrCatN
 004FC244    mov         eax,dword ptr [ebp-14]
 004FC247    call        0040C94C
 004FC24C    test        al,al
>004FC24E    je          004FC274
 004FC250    mov         edx,dword ptr [ebp-14]
 004FC253    mov         eax,dword ptr [ebp-18]
 004FC256    call        00423F8C
 004FC25B    mov         ax,word ptr [ebp+8]
 004FC25F    push        eax
 004FC260    mov         eax,dword ptr [ebp-18]
 004FC263    push        eax
 004FC264    mov         cx,word ptr [ebp+0C]
 004FC268    mov         dx,word ptr [ebp-0A]
 004FC26C    mov         eax,dword ptr [ebp-10]
 004FC26F    call        004FBA6C
 004FC274    lea         eax,[ebp-2C]
 004FC277    push        eax
 004FC278    mov         eax,dword ptr [ebp-10]
 004FC27B    mov         dword ptr [ebp-34],eax
 004FC27E    mov         byte ptr [ebp-30],0
 004FC282    lea         edx,[ebp-34]
 004FC285    xor         ecx,ecx
 004FC287    mov         eax,4FC390;'%x'
 004FC28C    call        0040D630
 004FC291    mov         edx,dword ptr [ebp-2C]
 004FC294    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC299    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC29F    add         eax,80;TProgressBar.Hint:String
 004FC2A4    call        @LStrAsg
 004FC2A9    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC2AE    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC2B4    mov         edx,dword ptr [ebp-10]
 004FC2B7    call        TProgressBar.SetPosition
 004FC2BC    inc         dword ptr [ebp-10]
 004FC2BF    mov         eax,[0056E3C0];^Application:TApplication
 004FC2C4    mov         eax,dword ptr [eax]
 004FC2C6    call        004AB51C
 004FC2CB    mov         eax,dword ptr [ebp-10]
 004FC2CE    cmp         eax,dword ptr [ebp-8]
>004FC2D1    ja          004FC2E1
 004FC2D3    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC2D8    cmp         byte ptr [eax],0
>004FC2DB    je          004FC1F7
 004FC2E1    xor         eax,eax
 004FC2E3    pop         edx
 004FC2E4    pop         ecx
 004FC2E5    pop         ecx
 004FC2E6    mov         dword ptr fs:[eax],edx
 004FC2E9    push        4FC2FE
 004FC2EE    mov         eax,dword ptr [ebp-18]
 004FC2F1    call        TObject.Free
 004FC2F6    ret
>004FC2F7    jmp         @HandleFinally
>004FC2FC    jmp         004FC2EE
 004FC2FE    xor         eax,eax
 004FC300    pop         edx
 004FC301    pop         ecx
 004FC302    pop         ecx
 004FC303    mov         dword ptr fs:[eax],edx
 004FC306    push        4FC328
 004FC30B    lea         eax,[ebp-2C]
 004FC30E    mov         edx,5
 004FC313    call        @LStrArrayClr
 004FC318    lea         eax,[ebp-14]
 004FC31B    call        @LStrClr
 004FC320    ret
>004FC321    jmp         @HandleFinally
>004FC326    jmp         004FC30B
 004FC328    mov         al,byte ptr [ebp-0B]
 004FC32B    pop         ebx
 004FC32C    mov         esp,ebp
 004FC32E    pop         ebp
 004FC32F    ret         8
end;*}

//004FC394
procedure TfmTracks.cbReadLongClick(Sender:TObject);
begin
{*
 004FC394    push        ebp
 004FC395    mov         ebp,esp
 004FC397    add         esp,0FFFFFFF8
 004FC39A    mov         dword ptr [ebp-8],edx
 004FC39D    mov         dword ptr [ebp-4],eax
 004FC3A0    mov         eax,dword ptr [ebp-4]
 004FC3A3    mov         eax,dword ptr [eax+338];TfmTracks.cbReadLong:TCheckBox
 004FC3A9    mov         edx,dword ptr [eax]
 004FC3AB    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC3B1    mov         [0056D3F0],al;gvar_0056D3F0:Boolean
 004FC3B6    mov         eax,dword ptr [ebp-4]
 004FC3B9    mov         eax,dword ptr [eax+33C];TfmTracks.cbReadLong2:TCheckBox
 004FC3BF    mov         edx,dword ptr [eax]
 004FC3C1    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC3C7    mov         edx,dword ptr ds:[56E168];^gvar_0056CC40:Boolean
 004FC3CD    mov         byte ptr [edx],al
 004FC3CF    mov         eax,dword ptr [ebp-4]
 004FC3D2    mov         eax,dword ptr [eax+340];TfmTracks.cbWrite:TCheckBox
 004FC3D8    mov         edx,dword ptr [eax]
 004FC3DA    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC3E0    mov         [0056D3F4],al;gvar_0056D3F4:Boolean
 004FC3E5    mov         eax,dword ptr [ebp-4]
 004FC3E8    mov         eax,dword ptr [eax+344];TfmTracks.cbRead:TCheckBox
 004FC3EE    mov         edx,dword ptr [eax]
 004FC3F0    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC3F6    mov         [0056D3F8],al;gvar_0056D3F8:Boolean
 004FC3FB    pop         ecx
 004FC3FC    pop         ecx
 004FC3FD    pop         ebp
 004FC3FE    ret
*}
end;

//004FC400
procedure TfmTracks.btViewClick(Sender:TObject);
begin
{*
 004FC400    push        ebp
 004FC401    mov         ebp,esp
 004FC403    add         esp,0FFFFFFF0
 004FC406    xor         ecx,ecx
 004FC408    mov         dword ptr [ebp-10],ecx
 004FC40B    mov         dword ptr [ebp-0C],ecx
 004FC40E    mov         dword ptr [ebp-8],edx
 004FC411    mov         dword ptr [ebp-4],eax
 004FC414    xor         eax,eax
 004FC416    push        ebp
 004FC417    push        4FC4A2
 004FC41C    push        dword ptr fs:[eax]
 004FC41F    mov         dword ptr fs:[eax],esp
 004FC422    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FC428    mov         edx,dword ptr [edx]
 004FC42A    lea         eax,[ebp-0C]
 004FC42D    mov         ecx,4FC4B8;'Tracks\'
 004FC432    call        @LStrCat3
 004FC437    mov         edx,dword ptr [ebp-0C]
 004FC43A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FC43F    mov         eax,dword ptr [eax]
 004FC441    mov         eax,dword ptr [eax+35C]
 004FC447    call        TOpenDialog.SetInitialDir
 004FC44C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FC451    mov         eax,dword ptr [eax]
 004FC453    mov         eax,dword ptr [eax+35C]
 004FC459    mov         edx,dword ptr [eax]
 004FC45B    call        dword ptr [edx+3C]
 004FC45E    test        al,al
>004FC460    je          004FC484
 004FC462    lea         edx,[ebp-10]
 004FC465    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FC46A    mov         eax,dword ptr [eax]
 004FC46C    mov         eax,dword ptr [eax+35C]
 004FC472    call        TOpenDialog.GetFileName
 004FC477    mov         edx,dword ptr [ebp-10]
 004FC47A    mov         eax,[004F3EB8];TfmViewer
 004FC47F    call        004F4640
 004FC484    xor         eax,eax
 004FC486    pop         edx
 004FC487    pop         ecx
 004FC488    pop         ecx
 004FC489    mov         dword ptr fs:[eax],edx
 004FC48C    push        4FC4A9
 004FC491    lea         eax,[ebp-10]
 004FC494    call        @LStrClr
 004FC499    lea         eax,[ebp-0C]
 004FC49C    call        @LStrClr
 004FC4A1    ret
>004FC4A2    jmp         @HandleFinally
>004FC4A7    jmp         004FC491
 004FC4A9    mov         esp,ebp
 004FC4AB    pop         ebp
 004FC4AC    ret
*}
end;

//004FC4C0
{*procedure sub_004FC4C0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004FC4C0    push        ebp
 004FC4C1    mov         ebp,esp
 004FC4C3    add         esp,0FFFFFFD0
 004FC4C6    push        ebx
 004FC4C7    xor         ebx,ebx
 004FC4C9    mov         dword ptr [ebp-28],ebx
 004FC4CC    mov         dword ptr [ebp-1C],ebx
 004FC4CF    mov         dword ptr [ebp-20],ebx
 004FC4D2    mov         dword ptr [ebp-24],ebx
 004FC4D5    mov         dword ptr [ebp-10],ebx
 004FC4D8    mov         word ptr [ebp-0A],cx
 004FC4DC    mov         dword ptr [ebp-8],edx
 004FC4DF    mov         dword ptr [ebp-4],eax
 004FC4E2    xor         eax,eax
 004FC4E4    push        ebp
 004FC4E5    push        4FC7DE
 004FC4EA    push        dword ptr fs:[eax]
 004FC4ED    mov         dword ptr fs:[eax],esp
 004FC4F0    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC4F5    mov         byte ptr [eax],0
 004FC4F8    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC4FD    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC503    xor         edx,edx
 004FC505    call        TProgressBar.SetMin
 004FC50A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC50F    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC515    mov         edx,dword ptr [ebp-8]
 004FC518    call        TProgressBar.SetMax
 004FC51D    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC522    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC528    mov         edx,dword ptr [ebp-4]
 004FC52B    call        TProgressBar.SetMin
 004FC530    call        004CED2C
 004FC535    mov         eax,dword ptr [ebp-8]
 004FC538    mov         dword ptr [ebp-14],eax
>004FC53B    jmp         004FC7A5
 004FC540    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC545    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FC54B    xor         edx,edx
 004FC54D    call        TProgressBar.SetMin
 004FC552    movzx       edx,word ptr [ebp+0C]
 004FC556    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC55B    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FC561    call        TProgressBar.SetMax
 004FC566    movzx       edx,word ptr [ebp-0A]
 004FC56A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC56F    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FC575    call        TProgressBar.SetMin
 004FC57A    mov         ax,word ptr [ebp+0C]
 004FC57E    mov         word ptr [ebp-16],ax
 004FC582    mov         ax,word ptr [ebp-0A]
 004FC586    mov         word ptr [ebp-18],ax
>004FC58A    jmp         004FC745
 004FC58F    call        004CED2C
 004FC594    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC599    mov         eax,dword ptr [eax+358];TfmTracks.cbErase:TCheckBox
 004FC59F    mov         edx,dword ptr [eax]
 004FC5A1    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC5A7    test        al,al
>004FC5A9    je          004FC5C6
 004FC5AB    mov         al,byte ptr [ebp+8]
 004FC5AE    push        eax
 004FC5AF    mov         ecx,dword ptr [ebp-14]
 004FC5B2    neg         ecx
 004FC5B4    mov         dx,word ptr [ebp-18]
 004FC5B8    mov         ax,1
 004FC5BC    call        004CEFA4
 004FC5C1    call        004CEC90
 004FC5C6    cmp         byte ptr ds:[56D3F8],0;gvar_0056D3F8:Boolean
>004FC5CD    je          004FC5E7
 004FC5CF    mov         al,byte ptr [ebp+8]
 004FC5D2    push        eax
 004FC5D3    mov         ecx,dword ptr [ebp-14]
 004FC5D6    neg         ecx
 004FC5D8    mov         dx,word ptr [ebp-18]
 004FC5DC    mov         ax,1
 004FC5E0    call        004CEE3C
>004FC5E5    jmp         004FC5FD
 004FC5E7    mov         al,byte ptr [ebp+8]
 004FC5EA    push        eax
 004FC5EB    mov         ecx,dword ptr [ebp-14]
 004FC5EE    neg         ecx
 004FC5F0    mov         dx,word ptr [ebp-18]
 004FC5F4    mov         ax,1
 004FC5F8    call        004CEF3C
 004FC5FD    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FC602    cmp         byte ptr [eax],0
>004FC605    je          004FC729
 004FC60B    cmp         byte ptr ds:[56D3F4],0;gvar_0056D3F4:Boolean
>004FC612    je          004FC666
 004FC614    mov         al,byte ptr [ebp+8]
 004FC617    push        eax
 004FC618    mov         ecx,dword ptr [ebp-14]
 004FC61B    neg         ecx
 004FC61D    mov         dx,word ptr [ebp-18]
 004FC621    mov         ax,1
 004FC625    call        004CEFA4
 004FC62A    call        004CEC90
 004FC62F    cmp         byte ptr ds:[56D3F8],0;gvar_0056D3F8:Boolean
>004FC636    je          004FC650
 004FC638    mov         al,byte ptr [ebp+8]
 004FC63B    push        eax
 004FC63C    mov         ecx,dword ptr [ebp-14]
 004FC63F    neg         ecx
 004FC641    mov         dx,word ptr [ebp-18]
 004FC645    mov         ax,1
 004FC649    call        004CEE3C
>004FC64E    jmp         004FC666
 004FC650    mov         al,byte ptr [ebp+8]
 004FC653    push        eax
 004FC654    mov         ecx,dword ptr [ebp-14]
 004FC657    neg         ecx
 004FC659    mov         dx,word ptr [ebp-18]
 004FC65D    mov         ax,1
 004FC661    call        004CEF3C
 004FC666    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FC66B    cmp         byte ptr [eax],0
>004FC66E    jne         004FC67F
 004FC670    lea         eax,[ebp-10]
 004FC673    mov         edx,4FC7F4;'OK '
 004FC678    call        @LStrLAsg
>004FC67D    jmp         004FC6C4
 004FC67F    lea         eax,[ebp-10]
 004FC682    mov         edx,4FC800;'Err'
 004FC687    call        @LStrLAsg
 004FC68C    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC691    mov         eax,dword ptr [eax+35C];TfmTracks.cbAddToList:TCheckBox
 004FC697    mov         edx,dword ptr [eax]
 004FC699    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FC69F    test        al,al
>004FC6A1    je          004FC6C4
 004FC6A3    cmp         dword ptr ds:[56D3EC],0;gvar_0056D3EC:TfmTracks
>004FC6AA    je          004FC6C4
 004FC6AC    mov         ax,word ptr [ebp-18]
 004FC6B0    dec         eax
 004FC6B1    push        eax
 004FC6B2    mov         cx,word ptr [ebp-18]
 004FC6B6    dec         ecx
 004FC6B7    mov         eax,dword ptr [ebp-14]
 004FC6BA    neg         eax
 004FC6BC    mov         dl,byte ptr [ebp+8]
 004FC6BF    call        004F85A0
 004FC6C4    push        4FC80C;'Error: '
 004FC6C9    mov         eax,dword ptr [ebp-14]
 004FC6CC    xor         edx,edx
 004FC6CE    push        edx
 004FC6CF    push        eax
 004FC6D0    lea         edx,[ebp-20]
 004FC6D3    mov         eax,8
 004FC6D8    call        IntToHex
 004FC6DD    push        dword ptr [ebp-20]
 004FC6E0    push        4FC81C;':'
 004FC6E5    lea         ecx,[ebp-24]
 004FC6E8    movzx       eax,word ptr [ebp-18]
 004FC6EC    mov         edx,4
 004FC6F1    call        IntToHex
 004FC6F6    push        dword ptr [ebp-24]
 004FC6F9    push        4FC828;' - '
 004FC6FE    push        dword ptr [ebp-10]
 004FC701    lea         eax,[ebp-1C]
 004FC704    mov         edx,6
 004FC709    call        @LStrCatN
 004FC70E    mov         edx,dword ptr [ebp-1C]
 004FC711    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FC716    mov         eax,dword ptr [eax]
 004FC718    mov         eax,dword ptr [eax+2F8]
 004FC71E    mov         eax,dword ptr [eax+248]
 004FC724    mov         ecx,dword ptr [eax]
 004FC726    call        dword ptr [ecx+38]
 004FC729    inc         word ptr [ebp-18]
 004FC72D    dec         word ptr [ebp-16]
 004FC731    movzx       edx,word ptr [ebp-18]
 004FC735    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC73A    mov         eax,dword ptr [eax+330];TfmTracks.pbSectors:TProgressBar
 004FC740    call        TProgressBar.SetPosition
 004FC745    cmp         word ptr [ebp-16],0
>004FC74A    jbe         004FC75A
 004FC74C    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC751    cmp         byte ptr [eax],0
>004FC754    je          004FC58F
 004FC75A    lea         eax,[ebp-28]
 004FC75D    push        eax
 004FC75E    mov         eax,dword ptr [ebp-14]
 004FC761    mov         dword ptr [ebp-30],eax
 004FC764    mov         byte ptr [ebp-2C],0
 004FC768    lea         edx,[ebp-30]
 004FC76B    xor         ecx,ecx
 004FC76D    mov         eax,4FC834;'%x'
 004FC772    call        0040D630
 004FC777    mov         edx,dword ptr [ebp-28]
 004FC77A    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC77F    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC785    add         eax,80;TProgressBar.Hint:String
 004FC78A    call        @LStrAsg
 004FC78F    mov         eax,[0056D3EC];0x0 gvar_0056D3EC:TfmTracks
 004FC794    mov         eax,dword ptr [eax+308];TfmTracks.pbTracks:TProgressBar
 004FC79A    mov         edx,dword ptr [ebp-14]
 004FC79D    call        TProgressBar.SetPosition
 004FC7A2    dec         dword ptr [ebp-14]
 004FC7A5    mov         eax,dword ptr [ebp-14]
 004FC7A8    cmp         eax,dword ptr [ebp-4]
>004FC7AB    jb          004FC7BB
 004FC7AD    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC7B2    cmp         byte ptr [eax],0
>004FC7B5    je          004FC540
 004FC7BB    xor         eax,eax
 004FC7BD    pop         edx
 004FC7BE    pop         ecx
 004FC7BF    pop         ecx
 004FC7C0    mov         dword ptr fs:[eax],edx
 004FC7C3    push        4FC7E5
 004FC7C8    lea         eax,[ebp-28]
 004FC7CB    mov         edx,4
 004FC7D0    call        @LStrArrayClr
 004FC7D5    lea         eax,[ebp-10]
 004FC7D8    call        @LStrClr
 004FC7DD    ret
>004FC7DE    jmp         @HandleFinally
>004FC7E3    jmp         004FC7C8
 004FC7E5    pop         ebx
 004FC7E6    mov         esp,ebp
 004FC7E8    pop         ebp
 004FC7E9    ret         8
end;*}

//004FC838
procedure TfmTracks.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004FC838    push        ebp
 004FC839    mov         ebp,esp
 004FC83B    add         esp,0FFFFFFF4
 004FC83E    mov         dword ptr [ebp-8],ecx
 004FC841    mov         dword ptr [ebp-0C],edx
 004FC844    mov         dword ptr [ebp-4],eax
 004FC847    mov         eax,[0056E5A4];^gvar_0056DF04
 004FC84C    mov         byte ptr [eax],1
 004FC84F    xor         eax,eax
 004FC851    mov         [0056D3EC],eax;gvar_0056D3EC:TfmTracks
 004FC856    mov         eax,dword ptr [ebp-8]
 004FC859    mov         byte ptr [eax],2
 004FC85C    mov         esp,ebp
 004FC85E    pop         ebp
 004FC85F    ret
*}
end;

//004FC860
procedure TfmTracks.btTrkClick(Sender:TObject);
begin
{*
 004FC860    push        ebp
 004FC861    mov         ebp,esp
 004FC863    add         esp,0FFFFFFE4
 004FC866    push        ebx
 004FC867    xor         ecx,ecx
 004FC869    mov         dword ptr [ebp-10],ecx
 004FC86C    mov         dword ptr [ebp-14],ecx
 004FC86F    mov         dword ptr [ebp-0C],edx
 004FC872    mov         dword ptr [ebp-4],eax
 004FC875    xor         eax,eax
 004FC877    push        ebp
 004FC878    push        4FC95B
 004FC87D    push        dword ptr fs:[eax]
 004FC880    mov         dword ptr fs:[eax],esp
 004FC883    mov         eax,dword ptr [ebp-4]
 004FC886    mov         eax,dword ptr [eax+348];TfmTracks.btTrk:TButton
 004FC88C    xor         edx,edx
 004FC88E    mov         ecx,dword ptr [eax]
 004FC890    call        dword ptr [ecx+64];TImage.SetEnabled
 004FC893    mov         dl,1
 004FC895    mov         eax,[0041DE14];TMemoryStream
 004FC89A    call        TObject.Create;TMemoryStream.Create
 004FC89F    mov         dword ptr [ebp-8],eax
 004FC8A2    xor         eax,eax
 004FC8A4    push        ebp
 004FC8A5    push        4FC929
 004FC8AA    push        dword ptr fs:[eax]
 004FC8AD    mov         dword ptr fs:[eax],esp
 004FC8B0    mov         ecx,dword ptr [ebp-8]
 004FC8B3    xor         edx,edx
 004FC8B5    mov         ax,1
 004FC8B9    call        004CFEC8
 004FC8BE    xor         ecx,ecx
 004FC8C0    mov         edx,24
 004FC8C5    mov         eax,dword ptr [ebp-8]
 004FC8C8    mov         ebx,dword ptr [eax]
 004FC8CA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FC8CD    lea         eax,[ebp-14]
 004FC8D0    push        eax
 004FC8D1    mov         eax,dword ptr [ebp-8]
 004FC8D4    call        004CE548
 004FC8D9    movzx       eax,ax
 004FC8DC    mov         dword ptr [ebp-1C],eax
 004FC8DF    mov         byte ptr [ebp-18],0
 004FC8E3    lea         edx,[ebp-1C]
 004FC8E6    xor         ecx,ecx
 004FC8E8    mov         eax,4FC970;'%x'
 004FC8ED    call        0040D630
 004FC8F2    mov         ecx,dword ptr [ebp-14]
 004FC8F5    lea         eax,[ebp-10]
 004FC8F8    mov         edx,4FC97C;'$'
 004FC8FD    call        @LStrCat3
 004FC902    mov         edx,dword ptr [ebp-10]
 004FC905    mov         eax,dword ptr [ebp-4]
 004FC908    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FC90E    call        TPanel.SetCaption
 004FC913    xor         eax,eax
 004FC915    pop         edx
 004FC916    pop         ecx
 004FC917    pop         ecx
 004FC918    mov         dword ptr fs:[eax],edx
 004FC91B    push        4FC930
 004FC920    mov         eax,dword ptr [ebp-8]
 004FC923    call        TObject.Free
 004FC928    ret
>004FC929    jmp         @HandleFinally
>004FC92E    jmp         004FC920
 004FC930    mov         eax,dword ptr [ebp-4]
 004FC933    mov         eax,dword ptr [eax+348];TfmTracks.btTrk:TButton
 004FC939    mov         dl,1
 004FC93B    mov         ecx,dword ptr [eax]
 004FC93D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FC940    xor         eax,eax
 004FC942    pop         edx
 004FC943    pop         ecx
 004FC944    pop         ecx
 004FC945    mov         dword ptr fs:[eax],edx
 004FC948    push        4FC962
 004FC94D    lea         eax,[ebp-14]
 004FC950    mov         edx,2
 004FC955    call        @LStrArrayClr
 004FC95A    ret
>004FC95B    jmp         @HandleFinally
>004FC960    jmp         004FC94D
 004FC962    pop         ebx
 004FC963    mov         esp,ebp
 004FC965    pop         ebp
 004FC966    ret
*}
end;

//004FC980
procedure TfmTracks.btFromZoneMapClick(Sender:TObject);
begin
{*
 004FC980    push        ebp
 004FC981    mov         ebp,esp
 004FC983    mov         ecx,8
 004FC988    push        0
 004FC98A    push        0
 004FC98C    dec         ecx
>004FC98D    jne         004FC988
 004FC98F    push        ecx
 004FC990    push        ebx
 004FC991    mov         dword ptr [ebp-0C],edx
 004FC994    mov         dword ptr [ebp-4],eax
 004FC997    xor         eax,eax
 004FC999    push        ebp
 004FC99A    push        4FCC84
 004FC99F    push        dword ptr fs:[eax]
 004FC9A2    mov         dword ptr fs:[eax],esp
 004FC9A5    mov         eax,dword ptr [ebp-4]
 004FC9A8    mov         eax,dword ptr [eax+34C];TfmTracks.btFromZoneMap:TButton
 004FC9AE    xor         edx,edx
 004FC9B0    mov         ecx,dword ptr [eax]
 004FC9B2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FC9B5    mov         dl,1
 004FC9B7    mov         eax,[0041DE14];TMemoryStream
 004FC9BC    call        TObject.Create;TMemoryStream.Create
 004FC9C1    mov         dword ptr [ebp-8],eax
 004FC9C4    xor         eax,eax
 004FC9C6    push        ebp
 004FC9C7    push        4FCC45
 004FC9CC    push        dword ptr fs:[eax]
 004FC9CF    mov         dword ptr fs:[eax],esp
 004FC9D2    mov         eax,[0056E040];^gvar_005720C0
 004FC9D7    cmp         byte ptr [eax],0
>004FC9DA    jne         004FCA00
 004FC9DC    mov         eax,[0056E304];^gvar_0056DF54
 004FC9E1    cmp         word ptr [eax],65
>004FC9E5    je          004FCA00
 004FC9E7    mov         eax,[0056E304];^gvar_0056DF54
 004FC9EC    cmp         word ptr [eax],73
>004FC9F0    je          004FCA00
 004FC9F2    mov         eax,[0056E01C];^gvar_005720C1
 004FC9F7    cmp         byte ptr [eax],0
>004FC9FA    je          004FCB1A
 004FCA00    mov         ecx,dword ptr [ebp-8]
 004FCA03    xor         edx,edx
 004FCA05    mov         ax,0D
 004FCA09    call        004CFEC8
 004FCA0E    test        al,al
>004FCA10    je          004FCC2F
 004FCA16    xor         ecx,ecx
 004FCA18    mov         edx,36
 004FCA1D    mov         eax,dword ptr [ebp-8]
 004FCA20    mov         ebx,dword ptr [eax]
 004FCA22    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCA25    lea         eax,[ebp-14]
 004FCA28    push        eax
 004FCA29    mov         eax,dword ptr [ebp-8]
 004FCA2C    call        004CE56C
 004FCA31    not         eax
 004FCA33    inc         eax
 004FCA34    mov         dword ptr [ebp-1C],eax
 004FCA37    mov         byte ptr [ebp-18],0
 004FCA3B    lea         edx,[ebp-1C]
 004FCA3E    xor         ecx,ecx
 004FCA40    mov         eax,4FCC98;'%x'
 004FCA45    call        0040D630
 004FCA4A    mov         ecx,dword ptr [ebp-14]
 004FCA4D    lea         eax,[ebp-10]
 004FCA50    mov         edx,4FCCA4;'$'
 004FCA55    call        @LStrCat3
 004FCA5A    mov         edx,dword ptr [ebp-10]
 004FCA5D    mov         eax,dword ptr [ebp-4]
 004FCA60    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FCA66    call        TPanel.SetCaption
 004FCA6B    xor         ecx,ecx
 004FCA6D    mov         edx,32
 004FCA72    mov         eax,dword ptr [ebp-8]
 004FCA75    mov         ebx,dword ptr [eax]
 004FCA77    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCA7A    lea         eax,[ebp-24]
 004FCA7D    push        eax
 004FCA7E    mov         eax,dword ptr [ebp-8]
 004FCA81    call        004CE56C
 004FCA86    not         eax
 004FCA88    inc         eax
 004FCA89    mov         dword ptr [ebp-1C],eax
 004FCA8C    mov         byte ptr [ebp-18],0
 004FCA90    lea         edx,[ebp-1C]
 004FCA93    xor         ecx,ecx
 004FCA95    mov         eax,4FCC98;'%x'
 004FCA9A    call        0040D630
 004FCA9F    mov         ecx,dword ptr [ebp-24]
 004FCAA2    lea         eax,[ebp-20]
 004FCAA5    mov         edx,4FCCA4;'$'
 004FCAAA    call        @LStrCat3
 004FCAAF    mov         edx,dword ptr [ebp-20]
 004FCAB2    mov         eax,dword ptr [ebp-4]
 004FCAB5    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FCABB    call        TPanel.SetCaption
 004FCAC0    xor         ecx,ecx
 004FCAC2    mov         edx,42
 004FCAC7    mov         eax,dword ptr [ebp-8]
 004FCACA    mov         ebx,dword ptr [eax]
 004FCACC    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCACF    lea         eax,[ebp-2C]
 004FCAD2    push        eax
 004FCAD3    mov         eax,dword ptr [ebp-8]
 004FCAD6    call        004CE548
 004FCADB    movzx       eax,ax
 004FCADE    mov         dword ptr [ebp-1C],eax
 004FCAE1    mov         byte ptr [ebp-18],0
 004FCAE5    lea         edx,[ebp-1C]
 004FCAE8    xor         ecx,ecx
 004FCAEA    mov         eax,4FCC98;'%x'
 004FCAEF    call        0040D630
 004FCAF4    mov         ecx,dword ptr [ebp-2C]
 004FCAF7    lea         eax,[ebp-28]
 004FCAFA    mov         edx,4FCCA4;'$'
 004FCAFF    call        @LStrCat3
 004FCB04    mov         edx,dword ptr [ebp-28]
 004FCB07    mov         eax,dword ptr [ebp-4]
 004FCB0A    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FCB10    call        TPanel.SetCaption
>004FCB15    jmp         004FCC2F
 004FCB1A    mov         ecx,dword ptr [ebp-8]
 004FCB1D    xor         edx,edx
 004FCB1F    mov         ax,5
 004FCB23    call        004CFEC8
 004FCB28    test        al,al
>004FCB2A    je          004FCC2F
 004FCB30    xor         ecx,ecx
 004FCB32    mov         edx,18
 004FCB37    mov         eax,dword ptr [ebp-8]
 004FCB3A    mov         ebx,dword ptr [eax]
 004FCB3C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCB3F    lea         eax,[ebp-34]
 004FCB42    push        eax
 004FCB43    mov         eax,dword ptr [ebp-8]
 004FCB46    call        004CE56C
 004FCB4B    not         eax
 004FCB4D    inc         eax
 004FCB4E    mov         dword ptr [ebp-1C],eax
 004FCB51    mov         byte ptr [ebp-18],0
 004FCB55    lea         edx,[ebp-1C]
 004FCB58    xor         ecx,ecx
 004FCB5A    mov         eax,4FCC98;'%x'
 004FCB5F    call        0040D630
 004FCB64    mov         ecx,dword ptr [ebp-34]
 004FCB67    lea         eax,[ebp-30]
 004FCB6A    mov         edx,4FCCA4;'$'
 004FCB6F    call        @LStrCat3
 004FCB74    mov         edx,dword ptr [ebp-30]
 004FCB77    mov         eax,dword ptr [ebp-4]
 004FCB7A    mov         eax,dword ptr [eax+318];TfmTracks.edStart:TLabeledEdit
 004FCB80    call        TPanel.SetCaption
 004FCB85    xor         ecx,ecx
 004FCB87    mov         edx,14
 004FCB8C    mov         eax,dword ptr [ebp-8]
 004FCB8F    mov         ebx,dword ptr [eax]
 004FCB91    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCB94    lea         eax,[ebp-3C]
 004FCB97    push        eax
 004FCB98    mov         eax,dword ptr [ebp-8]
 004FCB9B    call        004CE56C
 004FCBA0    not         eax
 004FCBA2    inc         eax
 004FCBA3    mov         dword ptr [ebp-1C],eax
 004FCBA6    mov         byte ptr [ebp-18],0
 004FCBAA    lea         edx,[ebp-1C]
 004FCBAD    xor         ecx,ecx
 004FCBAF    mov         eax,4FCC98;'%x'
 004FCBB4    call        0040D630
 004FCBB9    mov         ecx,dword ptr [ebp-3C]
 004FCBBC    lea         eax,[ebp-38]
 004FCBBF    mov         edx,4FCCA4;'$'
 004FCBC4    call        @LStrCat3
 004FCBC9    mov         edx,dword ptr [ebp-38]
 004FCBCC    mov         eax,dword ptr [ebp-4]
 004FCBCF    mov         eax,dword ptr [eax+31C];TfmTracks.edEnd:TLabeledEdit
 004FCBD5    call        TPanel.SetCaption
 004FCBDA    xor         ecx,ecx
 004FCBDC    mov         edx,28
 004FCBE1    mov         eax,dword ptr [ebp-8]
 004FCBE4    mov         ebx,dword ptr [eax]
 004FCBE6    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FCBE9    lea         eax,[ebp-44]
 004FCBEC    push        eax
 004FCBED    mov         eax,dword ptr [ebp-8]
 004FCBF0    call        004CE548
 004FCBF5    movzx       eax,ax
 004FCBF8    mov         dword ptr [ebp-1C],eax
 004FCBFB    mov         byte ptr [ebp-18],0
 004FCBFF    lea         edx,[ebp-1C]
 004FCC02    xor         ecx,ecx
 004FCC04    mov         eax,4FCC98;'%x'
 004FCC09    call        0040D630
 004FCC0E    mov         ecx,dword ptr [ebp-44]
 004FCC11    lea         eax,[ebp-40]
 004FCC14    mov         edx,4FCCA4;'$'
 004FCC19    call        @LStrCat3
 004FCC1E    mov         edx,dword ptr [ebp-40]
 004FCC21    mov         eax,dword ptr [ebp-4]
 004FCC24    mov         eax,dword ptr [eax+320];TfmTracks.edSpt:TLabeledEdit
 004FCC2A    call        TPanel.SetCaption
 004FCC2F    xor         eax,eax
 004FCC31    pop         edx
 004FCC32    pop         ecx
 004FCC33    pop         ecx
 004FCC34    mov         dword ptr fs:[eax],edx
 004FCC37    push        4FCC4C
 004FCC3C    mov         eax,dword ptr [ebp-8]
 004FCC3F    call        TObject.Free
 004FCC44    ret
>004FCC45    jmp         @HandleFinally
>004FCC4A    jmp         004FCC3C
 004FCC4C    mov         eax,dword ptr [ebp-4]
 004FCC4F    mov         eax,dword ptr [eax+34C];TfmTracks.btFromZoneMap:TButton
 004FCC55    mov         dl,1
 004FCC57    mov         ecx,dword ptr [eax]
 004FCC59    call        dword ptr [ecx+64];TImage.SetEnabled
 004FCC5C    xor         eax,eax
 004FCC5E    pop         edx
 004FCC5F    pop         ecx
 004FCC60    pop         ecx
 004FCC61    mov         dword ptr fs:[eax],edx
 004FCC64    push        4FCC8B
 004FCC69    lea         eax,[ebp-44]
 004FCC6C    mov         edx,0A
 004FCC71    call        @LStrArrayClr
 004FCC76    lea         eax,[ebp-14]
 004FCC79    mov         edx,2
 004FCC7E    call        @LStrArrayClr
 004FCC83    ret
>004FCC84    jmp         @HandleFinally
>004FCC89    jmp         004FCC69
 004FCC8B    pop         ebx
 004FCC8C    mov         esp,ebp
 004FCC8E    pop         ebp
 004FCC8F    ret
*}
end;

end.