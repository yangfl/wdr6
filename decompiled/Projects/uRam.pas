//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uRam;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmRam = class(TForm)
  published
    edStart:TLabeledEdit;//f2F8
    edEnd:TLabeledEdit;//f2FC
    btRead:TButton;//f300
    btWrite:TButton;//f304
    btDump:TButton;//f308
    cbPage:TComboBox;//f30C
    StaticText1:TStaticText;//f310
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00511EE8
    procedure btWriteClick(Sender:TObject);//00511F10
    procedure btReadClick(Sender:TObject);//00511CD0
    procedure btDumpClick(Sender:TObject);//00511DC0
  end;
    procedure sub_00511820(?:TfmRam; ?:TfmHDD);//00511820
    //function sub_00511874(?:Integer; ?:?; ?:?):?;//00511874
    //function sub_00511AE8(?:Integer; ?:?; ?:?):?;//00511AE8

implementation

{$R *.DFM}

//00511820
procedure sub_00511820(?:TfmRam; ?:TfmHDD);
begin
{*
 00511820    push        ebp
 00511821    mov         ebp,esp
 00511823    add         esp,0FFFFFFF8
 00511826    mov         dword ptr [ebp-8],edx
 00511829    mov         dword ptr [ebp-4],eax
 0051182C    cmp         dword ptr ds:[56D450],0;gvar_0056D450:TfmRam
>00511833    jne         00511849
 00511835    mov         ecx,dword ptr [ebp-8]
 00511838    mov         dl,1
 0051183A    mov         eax,[005115F4];TfmRam
 0051183F    call        TfmProgress.Create;TfmRam.Create
 00511844    mov         [0056D450],eax;gvar_0056D450:TfmRam
 00511849    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 0051184E    cmp         byte ptr [eax+1A6],0;TfmRam.FShowing:Boolean
>00511855    je          00511866
 00511857    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 0051185C    mov         edx,dword ptr [eax]
 0051185E    call        dword ptr [edx+0C4];TfmRam.sub_004A746C
>00511864    jmp         00511870
 00511866    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 0051186B    call        004A7450
 00511870    pop         ecx
 00511871    pop         ecx
 00511872    pop         ebp
 00511873    ret
*}
end;

//00511874
{*function sub_00511874(?:Integer; ?:?; ?:?):?;
begin
 00511874    push        ebp
 00511875    mov         ebp,esp
 00511877    add         esp,0FFFFFFCC
 0051187A    push        ebx
 0051187B    xor         ebx,ebx
 0051187D    mov         dword ptr [ebp-30],ebx
 00511880    mov         dword ptr [ebp-34],ebx
 00511883    mov         dword ptr [ebp-2C],ebx
 00511886    mov         dword ptr [ebp-28],ebx
 00511889    mov         dword ptr [ebp-18],ebx
 0051188C    mov         dword ptr [ebp-0C],ecx
 0051188F    mov         dword ptr [ebp-8],edx
 00511892    mov         word ptr [ebp-2],ax
 00511896    xor         eax,eax
 00511898    push        ebp
 00511899    push        511A89
 0051189E    push        dword ptr fs:[eax]
 005118A1    mov         dword ptr fs:[eax],esp
 005118A4    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005118AA    mov         edx,dword ptr [edx]
 005118AC    lea         eax,[ebp-28]
 005118AF    mov         ecx,511AA0;'Ram'
 005118B4    call        @LStrCat3
 005118B9    mov         eax,dword ptr [ebp-28]
 005118BC    call        0040C9A4
 005118C1    test        al,al
>005118C3    jne         005118F7
 005118C5    push        511AAC;'Cannot create '
 005118CA    mov         eax,[0056E2D0];^gvar_0056DF38
 005118CF    push        dword ptr [eax]
 005118D1    push        511AA0;'Ram'
 005118D6    lea         eax,[ebp-2C]
 005118D9    mov         edx,3
 005118DE    call        @LStrCatN
 005118E3    mov         ecx,dword ptr [ebp-2C]
 005118E6    mov         dl,1
 005118E8    mov         eax,[0040B004];Exception
 005118ED    call        Exception.Create;Exception.Create
 005118F2    call        @RaiseExcept
 005118F7    mov         eax,[0056E5A4];^gvar_0056DF04
 005118FC    mov         byte ptr [eax],0
 005118FF    mov         byte ptr [ebp-0D],0
 00511903    mov         byte ptr [ebp-1D],1
 00511907    mov         eax,[0056E2D0];^gvar_0056DF38
 0051190C    push        dword ptr [eax]
 0051190E    push        511AC4;'Ram\'
 00511913    lea         ecx,[ebp-30]
 00511916    movzx       eax,word ptr [ebp-2]
 0051191A    mov         edx,2
 0051191F    call        IntToHex
 00511924    push        dword ptr [ebp-30]
 00511927    push        511AD4;'_'
 0051192C    mov         eax,dword ptr [ebp-8]
 0051192F    xor         edx,edx
 00511931    push        edx
 00511932    push        eax
 00511933    lea         edx,[ebp-34]
 00511936    mov         eax,8
 0051193B    call        IntToHex
 00511940    push        dword ptr [ebp-34]
 00511943    push        511AE0;'.bin'
 00511948    lea         eax,[ebp-18]
 0051194B    mov         edx,6
 00511950    call        @LStrCatN
 00511955    cmp         dword ptr [ebp-0C],0
>00511959    je          005119BB
 0051195B    mov         dl,1
 0051195D    mov         eax,[0041DE14];TMemoryStream
 00511962    call        TObject.Create;TMemoryStream.Create
 00511967    mov         dword ptr [ebp-14],eax
 0051196A    xor         eax,eax
 0051196C    push        ebp
 0051196D    push        5119B4
 00511972    push        dword ptr fs:[eax]
 00511975    mov         dword ptr fs:[eax],esp
 00511978    mov         eax,dword ptr [ebp-14]
 0051197B    push        eax
 0051197C    mov         ecx,dword ptr [ebp-0C]
 0051197F    mov         edx,dword ptr [ebp-8]
 00511982    mov         ax,word ptr [ebp-2]
 00511986    call        004D0438
 0051198B    test        al,al
>0051198D    je          0051199E
 0051198F    mov         edx,dword ptr [ebp-18]
 00511992    mov         eax,dword ptr [ebp-14]
 00511995    call        00423E84
 0051199A    mov         byte ptr [ebp-0D],1
 0051199E    xor         eax,eax
 005119A0    pop         edx
 005119A1    pop         ecx
 005119A2    pop         ecx
 005119A3    mov         dword ptr fs:[eax],edx
 005119A6    push        511A66
 005119AB    mov         eax,dword ptr [ebp-14]
 005119AE    call        TObject.Free
 005119B3    ret
>005119B4    jmp         @HandleFinally
>005119B9    jmp         005119AB
 005119BB    call        004CED2C
 005119C0    mov         eax,dword ptr [ebp-8]
 005119C3    mov         dword ptr [ebp-24],eax
 005119C6    push        0FFFF
 005119CB    mov         ecx,dword ptr [ebp-18]
 005119CE    mov         dl,1
 005119D0    mov         eax,[0041DD24];TFileStream
 005119D5    call        TFileStream.Create;TFileStream.Create
 005119DA    mov         dword ptr [ebp-1C],eax
 005119DD    xor         eax,eax
 005119DF    push        ebp
 005119E0    push        511A5F
 005119E5    push        dword ptr fs:[eax]
 005119E8    mov         dword ptr fs:[eax],esp
>005119EB    jmp         00511A39
 005119ED    mov         ax,word ptr [ebp-2]
 005119F1    add         eax,eax
 005119F3    inc         eax
 005119F4    mov         cx,1
 005119F8    mov         edx,dword ptr [ebp-24]
 005119FB    call        004CF300
 00511A00    mov         eax,[0056E3F8];^gvar_0059BF4C
 00511A05    cmp         byte ptr [eax],0
>00511A08    jne         00511A32
 00511A0A    mov         eax,[0056E5A4];^gvar_0056DF04
 00511A0F    cmp         byte ptr [eax],0
>00511A12    jne         00511A32
 00511A14    call        004CEAB4
 00511A19    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00511A1F    mov         ecx,200
 00511A24    mov         eax,dword ptr [ebp-1C]
 00511A27    mov         ebx,dword ptr [eax]
 00511A29    call        dword ptr [ebx+10];TFileStream.sub_00423AB0
 00511A2C    mov         byte ptr [ebp-1D],1
>00511A30    jmp         00511A36
 00511A32    mov         byte ptr [ebp-1D],0
 00511A36    inc         dword ptr [ebp-24]
 00511A39    mov         eax,[0056E5A4];^gvar_0056DF04
 00511A3E    cmp         byte ptr [eax],0
>00511A41    jne         00511A49
 00511A43    cmp         byte ptr [ebp-1D],0
>00511A47    jne         005119ED
 00511A49    xor         eax,eax
 00511A4B    pop         edx
 00511A4C    pop         ecx
 00511A4D    pop         ecx
 00511A4E    mov         dword ptr fs:[eax],edx
 00511A51    push        511A66
 00511A56    mov         eax,dword ptr [ebp-1C]
 00511A59    call        TObject.Free
 00511A5E    ret
>00511A5F    jmp         @HandleFinally
>00511A64    jmp         00511A56
 00511A66    xor         eax,eax
 00511A68    pop         edx
 00511A69    pop         ecx
 00511A6A    pop         ecx
 00511A6B    mov         dword ptr fs:[eax],edx
 00511A6E    push        511A90
 00511A73    lea         eax,[ebp-34]
 00511A76    mov         edx,4
 00511A7B    call        @LStrArrayClr
 00511A80    lea         eax,[ebp-18]
 00511A83    call        @LStrClr
 00511A88    ret
>00511A89    jmp         @HandleFinally
>00511A8E    jmp         00511A73
 00511A90    mov         al,byte ptr [ebp-0D]
 00511A93    pop         ebx
 00511A94    mov         esp,ebp
 00511A96    pop         ebp
 00511A97    ret
end;*}

//00511AE8
{*function sub_00511AE8(?:Integer; ?:?; ?:?):?;
begin
 00511AE8    push        ebp
 00511AE9    mov         ebp,esp
 00511AEB    add         esp,0FFFFFFDC
 00511AEE    push        ebx
 00511AEF    xor         ebx,ebx
 00511AF1    mov         dword ptr [ebp-24],ebx
 00511AF4    mov         dword ptr [ebp-20],ebx
 00511AF7    mov         dword ptr [ebp-1C],ebx
 00511AFA    mov         dword ptr [ebp-18],ebx
 00511AFD    mov         dword ptr [ebp-0C],ecx
 00511B00    mov         dword ptr [ebp-8],edx
 00511B03    mov         word ptr [ebp-2],ax
 00511B07    xor         eax,eax
 00511B09    push        ebp
 00511B0A    push        511C9B
 00511B0F    push        dword ptr fs:[eax]
 00511B12    mov         dword ptr fs:[eax],esp
 00511B15    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00511B1B    mov         edx,dword ptr [edx]
 00511B1D    lea         eax,[ebp-18]
 00511B20    mov         ecx,511CB4;'Ram'
 00511B25    call        @LStrCat3
 00511B2A    mov         eax,dword ptr [ebp-18]
 00511B2D    call        0040C9A4
 00511B32    test        al,al
>00511B34    jne         00511B68
 00511B36    push        511CC0;'Cannot create '
 00511B3B    mov         eax,[0056E2D0];^gvar_0056DF38
 00511B40    push        dword ptr [eax]
 00511B42    push        511CB4;'Ram'
 00511B47    lea         eax,[ebp-1C]
 00511B4A    mov         edx,3
 00511B4F    call        @LStrCatN
 00511B54    mov         ecx,dword ptr [ebp-1C]
 00511B57    mov         dl,1
 00511B59    mov         eax,[0040B004];Exception
 00511B5E    call        Exception.Create;Exception.Create
 00511B63    call        @RaiseExcept
 00511B68    mov         eax,[0056E5A4];^gvar_0056DF04
 00511B6D    mov         byte ptr [eax],0
 00511B70    mov         byte ptr [ebp-0D],0
 00511B74    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00511B7A    mov         edx,dword ptr [edx]
 00511B7C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511B81    mov         eax,dword ptr [eax]
 00511B83    mov         eax,dword ptr [eax+35C]
 00511B89    call        TOpenDialog.SetInitialDir
 00511B8E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511B93    mov         eax,dword ptr [eax]
 00511B95    mov         eax,dword ptr [eax+35C]
 00511B9B    add         eax,78
 00511B9E    call        @LStrClr
 00511BA3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511BA8    mov         eax,dword ptr [eax]
 00511BAA    mov         eax,dword ptr [eax+35C]
 00511BB0    mov         edx,dword ptr [eax]
 00511BB2    call        dword ptr [edx+3C]
 00511BB5    test        al,al
>00511BB7    je          00511C73
 00511BBD    lea         edx,[ebp-20]
 00511BC0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511BC5    mov         eax,dword ptr [eax]
 00511BC7    mov         eax,dword ptr [eax+35C]
 00511BCD    call        TOpenDialog.GetFileName
 00511BD2    mov         eax,dword ptr [ebp-20]
 00511BD5    call        0040C94C
 00511BDA    test        al,al
>00511BDC    je          00511C73
 00511BE2    mov         dl,1
 00511BE4    mov         eax,[0041DE14];TMemoryStream
 00511BE9    call        TObject.Create;TMemoryStream.Create
 00511BEE    mov         dword ptr [ebp-14],eax
 00511BF1    xor         eax,eax
 00511BF3    push        ebp
 00511BF4    push        511C6C
 00511BF9    push        dword ptr fs:[eax]
 00511BFC    mov         dword ptr fs:[eax],esp
 00511BFF    lea         edx,[ebp-24]
 00511C02    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511C07    mov         eax,dword ptr [eax]
 00511C09    mov         eax,dword ptr [eax+35C]
 00511C0F    call        TOpenDialog.GetFileName
 00511C14    mov         edx,dword ptr [ebp-24]
 00511C17    mov         eax,dword ptr [ebp-14]
 00511C1A    call        00423F8C
 00511C1F    cmp         dword ptr [ebp-0C],0
>00511C23    jne         00511C3B
 00511C25    push        0
 00511C27    push        200
 00511C2C    mov         eax,dword ptr [ebp-14]
 00511C2F    mov         edx,dword ptr [eax]
 00511C31    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00511C33    call        @_lldiv
 00511C38    mov         dword ptr [ebp-0C],eax
 00511C3B    mov         eax,dword ptr [ebp-14]
 00511C3E    push        eax
 00511C3F    mov         ecx,dword ptr [ebp-0C]
 00511C42    mov         edx,dword ptr [ebp-8]
 00511C45    mov         ax,word ptr [ebp-2]
 00511C49    call        004D05AC
 00511C4E    test        al,al
>00511C50    je          00511C56
 00511C52    mov         byte ptr [ebp-0D],1
 00511C56    xor         eax,eax
 00511C58    pop         edx
 00511C59    pop         ecx
 00511C5A    pop         ecx
 00511C5B    mov         dword ptr fs:[eax],edx
 00511C5E    push        511C73
 00511C63    mov         eax,dword ptr [ebp-14]
 00511C66    call        TObject.Free
 00511C6B    ret
>00511C6C    jmp         @HandleFinally
>00511C71    jmp         00511C63
 00511C73    xor         eax,eax
 00511C75    pop         edx
 00511C76    pop         ecx
 00511C77    pop         ecx
 00511C78    mov         dword ptr fs:[eax],edx
 00511C7B    push        511CA2
 00511C80    lea         eax,[ebp-24]
 00511C83    mov         edx,2
 00511C88    call        @LStrArrayClr
 00511C8D    lea         eax,[ebp-1C]
 00511C90    mov         edx,2
 00511C95    call        @LStrArrayClr
 00511C9A    ret
>00511C9B    jmp         @HandleFinally
>00511CA0    jmp         00511C80
 00511CA2    mov         al,byte ptr [ebp-0D]
 00511CA5    pop         ebx
 00511CA6    mov         esp,ebp
 00511CA8    pop         ebp
 00511CA9    ret
end;*}

//00511CD0
procedure TfmRam.btReadClick(Sender:TObject);
begin
{*
 00511CD0    push        ebp
 00511CD1    mov         ebp,esp
 00511CD3    add         esp,0FFFFFFE4
 00511CD6    xor         ecx,ecx
 00511CD8    mov         dword ptr [ebp-1C],ecx
 00511CDB    mov         dword ptr [ebp-18],ecx
 00511CDE    mov         dword ptr [ebp-14],edx
 00511CE1    mov         dword ptr [ebp-4],eax
 00511CE4    xor         eax,eax
 00511CE6    push        ebp
 00511CE7    push        511DB3
 00511CEC    push        dword ptr fs:[eax]
 00511CEF    mov         dword ptr fs:[eax],esp
 00511CF2    xor         edx,edx
 00511CF4    mov         eax,dword ptr [ebp-4]
 00511CF7    mov         eax,dword ptr [eax+300];TfmRam.btRead:TButton
 00511CFD    mov         ecx,dword ptr [eax]
 00511CFF    call        dword ptr [ecx+64];TImage.SetEnabled
 00511D02    xor         edx,edx
 00511D04    mov         eax,dword ptr [ebp-4]
 00511D07    mov         eax,dword ptr [eax+304];TfmRam.btWrite:TButton
 00511D0D    mov         ecx,dword ptr [eax]
 00511D0F    call        dword ptr [ecx+64];TImage.SetEnabled
 00511D12    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511D17    mov         eax,dword ptr [eax+30C];TfmRam.cbPage:TComboBox
 00511D1D    mov         edx,dword ptr [eax]
 00511D1F    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00511D25    mov         word ptr [ebp-6],ax
 00511D29    lea         edx,[ebp-18]
 00511D2C    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511D31    mov         eax,dword ptr [eax+2F8];TfmRam.edStart:TLabeledEdit
 00511D37    call        TPanel.GetCaption
 00511D3C    mov         eax,dword ptr [ebp-18]
 00511D3F    xor         edx,edx
 00511D41    call        0040C4A8
 00511D46    mov         dword ptr [ebp-0C],eax
 00511D49    lea         edx,[ebp-1C]
 00511D4C    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511D51    mov         eax,dword ptr [eax+2FC];TfmRam.edEnd:TLabeledEdit
 00511D57    call        TPanel.GetCaption
 00511D5C    mov         eax,dword ptr [ebp-1C]
 00511D5F    xor         edx,edx
 00511D61    call        0040C4A8
 00511D66    mov         dword ptr [ebp-10],eax
 00511D69    mov         ecx,dword ptr [ebp-10]
 00511D6C    mov         edx,dword ptr [ebp-0C]
 00511D6F    mov         ax,word ptr [ebp-6]
 00511D73    call        00511874
 00511D78    mov         dl,1
 00511D7A    mov         eax,dword ptr [ebp-4]
 00511D7D    mov         eax,dword ptr [eax+300];TfmRam.btRead:TButton
 00511D83    mov         ecx,dword ptr [eax]
 00511D85    call        dword ptr [ecx+64];TImage.SetEnabled
 00511D88    mov         dl,1
 00511D8A    mov         eax,dword ptr [ebp-4]
 00511D8D    mov         eax,dword ptr [eax+304];TfmRam.btWrite:TButton
 00511D93    mov         ecx,dword ptr [eax]
 00511D95    call        dword ptr [ecx+64];TImage.SetEnabled
 00511D98    xor         eax,eax
 00511D9A    pop         edx
 00511D9B    pop         ecx
 00511D9C    pop         ecx
 00511D9D    mov         dword ptr fs:[eax],edx
 00511DA0    push        511DBA
 00511DA5    lea         eax,[ebp-1C]
 00511DA8    mov         edx,2
 00511DAD    call        @LStrArrayClr
 00511DB2    ret
>00511DB3    jmp         @HandleFinally
>00511DB8    jmp         00511DA5
 00511DBA    mov         esp,ebp
 00511DBC    pop         ebp
 00511DBD    ret
*}
end;

//00511DC0
procedure TfmRam.btDumpClick(Sender:TObject);
begin
{*
 00511DC0    push        ebp
 00511DC1    mov         ebp,esp
 00511DC3    add         esp,0FFFFFFE0
 00511DC6    xor         ecx,ecx
 00511DC8    mov         dword ptr [ebp-1C],ecx
 00511DCB    mov         dword ptr [ebp-20],ecx
 00511DCE    mov         dword ptr [ebp-18],ecx
 00511DD1    mov         dword ptr [ebp-8],ecx
 00511DD4    mov         dword ptr [ebp-14],edx
 00511DD7    mov         dword ptr [ebp-4],eax
 00511DDA    xor         eax,eax
 00511DDC    push        ebp
 00511DDD    push        511EB1
 00511DE2    push        dword ptr fs:[eax]
 00511DE5    mov         dword ptr fs:[eax],esp
 00511DE8    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511DED    mov         eax,dword ptr [eax+30C];TfmRam.cbPage:TComboBox
 00511DF3    mov         edx,dword ptr [eax]
 00511DF5    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00511DFB    mov         word ptr [ebp-0A],ax
 00511DFF    lea         edx,[ebp-18]
 00511E02    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511E07    mov         eax,dword ptr [eax+2F8];TfmRam.edStart:TLabeledEdit
 00511E0D    call        TPanel.GetCaption
 00511E12    mov         eax,dword ptr [ebp-18]
 00511E15    xor         edx,edx
 00511E17    call        0040C4A8
 00511E1C    mov         dword ptr [ebp-10],eax
 00511E1F    mov         eax,[0056E2D0];^gvar_0056DF38
 00511E24    push        dword ptr [eax]
 00511E26    push        511EC4;'Ram\'
 00511E2B    lea         ecx,[ebp-1C]
 00511E2E    movzx       eax,word ptr [ebp-0A]
 00511E32    mov         edx,2
 00511E37    call        IntToHex
 00511E3C    push        dword ptr [ebp-1C]
 00511E3F    push        511ED4;'_'
 00511E44    mov         eax,dword ptr [ebp-10]
 00511E47    xor         edx,edx
 00511E49    push        edx
 00511E4A    push        eax
 00511E4B    lea         edx,[ebp-20]
 00511E4E    mov         eax,8
 00511E53    call        IntToHex
 00511E58    push        dword ptr [ebp-20]
 00511E5B    push        511EE0;'.bin'
 00511E60    lea         eax,[ebp-8]
 00511E63    mov         edx,6
 00511E68    call        @LStrCatN
 00511E6D    mov         eax,dword ptr [ebp-8]
 00511E70    call        0040C94C
 00511E75    test        al,al
>00511E77    je          00511E86
 00511E79    mov         edx,dword ptr [ebp-8]
 00511E7C    mov         eax,[004F3EB8];TfmViewer
 00511E81    call        004F4640
 00511E86    xor         eax,eax
 00511E88    pop         edx
 00511E89    pop         ecx
 00511E8A    pop         ecx
 00511E8B    mov         dword ptr fs:[eax],edx
 00511E8E    push        511EB8
 00511E93    lea         eax,[ebp-20]
 00511E96    mov         edx,2
 00511E9B    call        @LStrArrayClr
 00511EA0    lea         eax,[ebp-18]
 00511EA3    call        @LStrClr
 00511EA8    lea         eax,[ebp-8]
 00511EAB    call        @LStrClr
 00511EB0    ret
>00511EB1    jmp         @HandleFinally
>00511EB6    jmp         00511E93
 00511EB8    mov         esp,ebp
 00511EBA    pop         ebp
 00511EBB    ret
*}
end;

//00511EE8
procedure TfmRam.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00511EE8    push        ebp
 00511EE9    mov         ebp,esp
 00511EEB    add         esp,0FFFFFFF4
 00511EEE    mov         dword ptr [ebp-8],ecx
 00511EF1    mov         dword ptr [ebp-0C],edx
 00511EF4    mov         dword ptr [ebp-4],eax
 00511EF7    mov         eax,[0056E5A4];^gvar_0056DF04
 00511EFC    mov         byte ptr [eax],1
 00511EFF    xor         eax,eax
 00511F01    mov         [0056D450],eax;gvar_0056D450:TfmRam
 00511F06    mov         eax,dword ptr [ebp-8]
 00511F09    mov         byte ptr [eax],2
 00511F0C    mov         esp,ebp
 00511F0E    pop         ebp
 00511F0F    ret
*}
end;

//00511F10
procedure TfmRam.btWriteClick(Sender:TObject);
begin
{*
 00511F10    push        ebp
 00511F11    mov         ebp,esp
 00511F13    add         esp,0FFFFFFE4
 00511F16    xor         ecx,ecx
 00511F18    mov         dword ptr [ebp-1C],ecx
 00511F1B    mov         dword ptr [ebp-18],ecx
 00511F1E    mov         dword ptr [ebp-14],edx
 00511F21    mov         dword ptr [ebp-4],eax
 00511F24    xor         eax,eax
 00511F26    push        ebp
 00511F27    push        511FF3
 00511F2C    push        dword ptr fs:[eax]
 00511F2F    mov         dword ptr fs:[eax],esp
 00511F32    xor         edx,edx
 00511F34    mov         eax,dword ptr [ebp-4]
 00511F37    mov         eax,dword ptr [eax+300];TfmRam.btRead:TButton
 00511F3D    mov         ecx,dword ptr [eax]
 00511F3F    call        dword ptr [ecx+64];TImage.SetEnabled
 00511F42    xor         edx,edx
 00511F44    mov         eax,dword ptr [ebp-4]
 00511F47    mov         eax,dword ptr [eax+304];TfmRam.btWrite:TButton
 00511F4D    mov         ecx,dword ptr [eax]
 00511F4F    call        dword ptr [ecx+64];TImage.SetEnabled
 00511F52    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511F57    mov         eax,dword ptr [eax+30C];TfmRam.cbPage:TComboBox
 00511F5D    mov         edx,dword ptr [eax]
 00511F5F    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00511F65    mov         word ptr [ebp-6],ax
 00511F69    lea         edx,[ebp-18]
 00511F6C    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511F71    mov         eax,dword ptr [eax+2F8];TfmRam.edStart:TLabeledEdit
 00511F77    call        TPanel.GetCaption
 00511F7C    mov         eax,dword ptr [ebp-18]
 00511F7F    xor         edx,edx
 00511F81    call        0040C4A8
 00511F86    mov         dword ptr [ebp-0C],eax
 00511F89    lea         edx,[ebp-1C]
 00511F8C    mov         eax,[0056D450];0x0 gvar_0056D450:TfmRam
 00511F91    mov         eax,dword ptr [eax+2FC];TfmRam.edEnd:TLabeledEdit
 00511F97    call        TPanel.GetCaption
 00511F9C    mov         eax,dword ptr [ebp-1C]
 00511F9F    xor         edx,edx
 00511FA1    call        0040C4A8
 00511FA6    mov         dword ptr [ebp-10],eax
 00511FA9    mov         ecx,dword ptr [ebp-10]
 00511FAC    mov         edx,dword ptr [ebp-0C]
 00511FAF    mov         ax,word ptr [ebp-6]
 00511FB3    call        00511AE8
 00511FB8    mov         dl,1
 00511FBA    mov         eax,dword ptr [ebp-4]
 00511FBD    mov         eax,dword ptr [eax+300];TfmRam.btRead:TButton
 00511FC3    mov         ecx,dword ptr [eax]
 00511FC5    call        dword ptr [ecx+64];TImage.SetEnabled
 00511FC8    mov         dl,1
 00511FCA    mov         eax,dword ptr [ebp-4]
 00511FCD    mov         eax,dword ptr [eax+304];TfmRam.btWrite:TButton
 00511FD3    mov         ecx,dword ptr [eax]
 00511FD5    call        dword ptr [ecx+64];TImage.SetEnabled
 00511FD8    xor         eax,eax
 00511FDA    pop         edx
 00511FDB    pop         ecx
 00511FDC    pop         ecx
 00511FDD    mov         dword ptr fs:[eax],edx
 00511FE0    push        511FFA
 00511FE5    lea         eax,[ebp-1C]
 00511FE8    mov         edx,2
 00511FED    call        @LStrArrayClr
 00511FF2    ret
>00511FF3    jmp         @HandleFinally
>00511FF8    jmp         00511FE5
 00511FFA    mov         esp,ebp
 00511FFC    pop         ebp
 00511FFD    ret
*}
end;

end.