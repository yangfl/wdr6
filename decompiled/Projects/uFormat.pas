//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uFormat;

interface

uses
  SysUtils, Classes, StdCtrls;

type
  TfmFormat = class(TForm)
  published
    btGo:TButton;//f2F8
    GroupBox1:TGroupBox;//f2FC
    cbBit0:TCheckBox;//f300
    cbBit1:TCheckBox;//f304
    cbBit2:TCheckBox;//f308
    cbBit3:TCheckBox;//f30C
    cbBit4:TCheckBox;//f310
    cbBit5:TCheckBox;//f314
    cbBit6:TCheckBox;//f318
    cbBit7:TCheckBox;//f31C
    btCancel:TButton;//f320
    cbBit8:TCheckBox;//f324
    cbBit9:TCheckBox;//f328
    cbBitA:TCheckBox;//f32C
    cbBitB:TCheckBox;//f330
    cbBitC:TCheckBox;//f334
    cbBitD:TCheckBox;//f338
    cbBitE:TCheckBox;//f33C
    cbBitF:TCheckBox;//f340
    procedure btGoClick(Sender:TObject);//0053E964
    procedure btCancelClick(Sender:TObject);//0053E948
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053E928
  end;
    procedure sub_0053E8D4(?:TfmFormat);//0053E8D4

implementation

{$R *.DFM}

//0053E8D4
procedure sub_0053E8D4(?:TfmFormat);
begin
{*
 0053E8D4    push        ebp
 0053E8D5    mov         ebp,esp
 0053E8D7    push        ecx
 0053E8D8    mov         dword ptr [ebp-4],eax
 0053E8DB    cmp         dword ptr ds:[56DE40],0;gvar_0056DE40:TfmFormat
>0053E8E2    jne         0053E8FD
 0053E8E4    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0053E8EA    mov         ecx,dword ptr [ecx]
 0053E8EC    mov         dl,1
 0053E8EE    mov         eax,[0053E620];TfmFormat
 0053E8F3    call        TfmProgress.Create;TfmFormat.Create
 0053E8F8    mov         [0056DE40],eax;gvar_0056DE40:TfmFormat
 0053E8FD    mov         eax,[0056DE40];0x0 gvar_0056DE40:TfmFormat
 0053E902    cmp         byte ptr [eax+1A6],0;TfmFormat.FShowing:Boolean
>0053E909    je          0053E91B
 0053E90B    mov         eax,[0056DE40];0x0 gvar_0056DE40:TfmFormat
 0053E910    mov         edx,dword ptr [eax]
 0053E912    call        dword ptr [edx+0C4];TfmFormat.sub_004A746C
 0053E918    pop         ecx
 0053E919    pop         ebp
 0053E91A    ret
 0053E91B    mov         eax,[0056DE40];0x0 gvar_0056DE40:TfmFormat
 0053E920    call        004A7450
 0053E925    pop         ecx
 0053E926    pop         ebp
 0053E927    ret
*}
end;

//0053E928
procedure TfmFormat.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053E928    push        ebp
 0053E929    mov         ebp,esp
 0053E92B    add         esp,0FFFFFFF4
 0053E92E    mov         dword ptr [ebp-8],ecx
 0053E931    mov         dword ptr [ebp-0C],edx
 0053E934    mov         dword ptr [ebp-4],eax
 0053E937    xor         eax,eax
 0053E939    mov         [0056DE40],eax;gvar_0056DE40:TfmFormat
 0053E93E    mov         eax,dword ptr [ebp-8]
 0053E941    mov         byte ptr [eax],2
 0053E944    mov         esp,ebp
 0053E946    pop         ebp
 0053E947    ret
*}
end;

//0053E948
procedure TfmFormat.btCancelClick(Sender:TObject);
begin
{*
 0053E948    push        ebp
 0053E949    mov         ebp,esp
 0053E94B    add         esp,0FFFFFFF8
 0053E94E    mov         dword ptr [ebp-8],edx
 0053E951    mov         dword ptr [ebp-4],eax
 0053E954    mov         eax,[0056DE40];0x0 gvar_0056DE40:TfmFormat
 0053E959    call        004A7264
 0053E95E    pop         ecx
 0053E95F    pop         ecx
 0053E960    pop         ebp
 0053E961    ret
*}
end;

//0053E964
procedure TfmFormat.btGoClick(Sender:TObject);
begin
{*
 0053E964    push        ebp
 0053E965    mov         ebp,esp
 0053E967    add         esp,0FFFFFFF4
 0053E96A    mov         dword ptr [ebp-0C],edx
 0053E96D    mov         dword ptr [ebp-4],eax
 0053E970    push        0
 0053E972    mov         cx,word ptr ds:[53EBE8];0x3 gvar_0053EBE8
 0053E979    xor         edx,edx
 0053E97B    mov         eax,53EBF4;'Format Unit !'+#10+Are You sure?'
 0053E980    call        0043F788
 0053E985    cmp         eax,6
>0053E988    jne         0053EBE4
 0053E98E    mov         eax,53EC18;'Format Unit - Start'
 0053E993    call        00544EB4
 0053E998    mov         word ptr [ebp-6],0
 0053E99E    mov         eax,dword ptr [ebp-4]
 0053E9A1    mov         eax,dword ptr [eax+300];TfmFormat.cbBit0:TCheckBox
 0053E9A7    mov         edx,dword ptr [eax]
 0053E9A9    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053E9AF    test        al,al
>0053E9B1    je          0053E9BA
 0053E9B3    or          word ptr [ebp-6],1
>0053E9B8    jmp         0053E9C0
 0053E9BA    and         word ptr [ebp-6],0FFFE
 0053E9C0    mov         eax,dword ptr [ebp-4]
 0053E9C3    mov         eax,dword ptr [eax+304];TfmFormat.cbBit1:TCheckBox
 0053E9C9    mov         edx,dword ptr [eax]
 0053E9CB    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053E9D1    test        al,al
>0053E9D3    je          0053E9DC
 0053E9D5    or          word ptr [ebp-6],2
>0053E9DA    jmp         0053E9E2
 0053E9DC    and         word ptr [ebp-6],0FFFD
 0053E9E2    mov         eax,dword ptr [ebp-4]
 0053E9E5    mov         eax,dword ptr [eax+308];TfmFormat.cbBit2:TCheckBox
 0053E9EB    mov         edx,dword ptr [eax]
 0053E9ED    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053E9F3    test        al,al
>0053E9F5    je          0053E9FE
 0053E9F7    or          word ptr [ebp-6],4
>0053E9FC    jmp         0053EA04
 0053E9FE    and         word ptr [ebp-6],0FFFB
 0053EA04    mov         eax,dword ptr [ebp-4]
 0053EA07    mov         eax,dword ptr [eax+30C];TfmFormat.cbBit3:TCheckBox
 0053EA0D    mov         edx,dword ptr [eax]
 0053EA0F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EA15    test        al,al
>0053EA17    je          0053EA20
 0053EA19    or          word ptr [ebp-6],8
>0053EA1E    jmp         0053EA26
 0053EA20    and         word ptr [ebp-6],0FFF7
 0053EA26    mov         eax,dword ptr [ebp-4]
 0053EA29    mov         eax,dword ptr [eax+310];TfmFormat.cbBit4:TCheckBox
 0053EA2F    mov         edx,dword ptr [eax]
 0053EA31    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EA37    test        al,al
>0053EA39    je          0053EA42
 0053EA3B    or          word ptr [ebp-6],10
>0053EA40    jmp         0053EA48
 0053EA42    and         word ptr [ebp-6],0FFEF
 0053EA48    mov         eax,dword ptr [ebp-4]
 0053EA4B    mov         eax,dword ptr [eax+314];TfmFormat.cbBit5:TCheckBox
 0053EA51    mov         edx,dword ptr [eax]
 0053EA53    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EA59    test        al,al
>0053EA5B    je          0053EA64
 0053EA5D    or          word ptr [ebp-6],20
>0053EA62    jmp         0053EA6A
 0053EA64    and         word ptr [ebp-6],0FFDF
 0053EA6A    mov         eax,dword ptr [ebp-4]
 0053EA6D    mov         eax,dword ptr [eax+318];TfmFormat.cbBit6:TCheckBox
 0053EA73    mov         edx,dword ptr [eax]
 0053EA75    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EA7B    test        al,al
>0053EA7D    je          0053EA86
 0053EA7F    or          word ptr [ebp-6],40
>0053EA84    jmp         0053EA8C
 0053EA86    and         word ptr [ebp-6],0FFBF
 0053EA8C    mov         eax,dword ptr [ebp-4]
 0053EA8F    mov         eax,dword ptr [eax+31C];TfmFormat.cbBit7:TCheckBox
 0053EA95    mov         edx,dword ptr [eax]
 0053EA97    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EA9D    test        al,al
>0053EA9F    je          0053EAA9
 0053EAA1    or          word ptr [ebp-6],80
>0053EAA7    jmp         0053EAAF
 0053EAA9    and         word ptr [ebp-6],0FF7F
 0053EAAF    mov         eax,dword ptr [ebp-4]
 0053EAB2    mov         eax,dword ptr [eax+324];TfmFormat.cbBit8:TCheckBox
 0053EAB8    mov         edx,dword ptr [eax]
 0053EABA    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EAC0    test        al,al
>0053EAC2    je          0053EACC
 0053EAC4    or          word ptr [ebp-6],100
>0053EACA    jmp         0053EAD2
 0053EACC    and         word ptr [ebp-6],0FEFF
 0053EAD2    mov         eax,dword ptr [ebp-4]
 0053EAD5    mov         eax,dword ptr [eax+328];TfmFormat.cbBit9:TCheckBox
 0053EADB    mov         edx,dword ptr [eax]
 0053EADD    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EAE3    test        al,al
>0053EAE5    je          0053EAEF
 0053EAE7    or          word ptr [ebp-6],200
>0053EAED    jmp         0053EAF5
 0053EAEF    and         word ptr [ebp-6],0FDFF
 0053EAF5    mov         eax,dword ptr [ebp-4]
 0053EAF8    mov         eax,dword ptr [eax+32C];TfmFormat.cbBitA:TCheckBox
 0053EAFE    mov         edx,dword ptr [eax]
 0053EB00    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EB06    test        al,al
>0053EB08    je          0053EB12
 0053EB0A    or          word ptr [ebp-6],400
>0053EB10    jmp         0053EB18
 0053EB12    and         word ptr [ebp-6],0FBFF
 0053EB18    mov         eax,dword ptr [ebp-4]
 0053EB1B    mov         eax,dword ptr [eax+330];TfmFormat.cbBitB:TCheckBox
 0053EB21    mov         edx,dword ptr [eax]
 0053EB23    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EB29    test        al,al
>0053EB2B    je          0053EB35
 0053EB2D    or          word ptr [ebp-6],800
>0053EB33    jmp         0053EB3B
 0053EB35    and         word ptr [ebp-6],0F7FF
 0053EB3B    mov         eax,dword ptr [ebp-4]
 0053EB3E    mov         eax,dword ptr [eax+334];TfmFormat.cbBitC:TCheckBox
 0053EB44    mov         edx,dword ptr [eax]
 0053EB46    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EB4C    test        al,al
>0053EB4E    je          0053EB58
 0053EB50    or          word ptr [ebp-6],1000
>0053EB56    jmp         0053EB5E
 0053EB58    and         word ptr [ebp-6],0EFFF
 0053EB5E    mov         eax,dword ptr [ebp-4]
 0053EB61    mov         eax,dword ptr [eax+338];TfmFormat.cbBitD:TCheckBox
 0053EB67    mov         edx,dword ptr [eax]
 0053EB69    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EB6F    test        al,al
>0053EB71    je          0053EB7B
 0053EB73    or          word ptr [ebp-6],2000
>0053EB79    jmp         0053EB81
 0053EB7B    and         word ptr [ebp-6],0DFFF
 0053EB81    mov         eax,dword ptr [ebp-4]
 0053EB84    mov         eax,dword ptr [eax+33C];TfmFormat.cbBitE:TCheckBox
 0053EB8A    mov         edx,dword ptr [eax]
 0053EB8C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EB92    test        al,al
>0053EB94    je          0053EB9E
 0053EB96    or          word ptr [ebp-6],4000
>0053EB9C    jmp         0053EBA4
 0053EB9E    and         word ptr [ebp-6],0BFFF
 0053EBA4    mov         eax,dword ptr [ebp-4]
 0053EBA7    mov         eax,dword ptr [eax+340];TfmFormat.cbBitF:TCheckBox
 0053EBAD    mov         edx,dword ptr [eax]
 0053EBAF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053EBB5    test        al,al
>0053EBB7    je          0053EBC1
 0053EBB9    or          word ptr [ebp-6],8000
>0053EBBF    jmp         0053EBC7
 0053EBC1    and         word ptr [ebp-6],7FFF
 0053EBC7    mov         ax,word ptr [ebp-6]
 0053EBCB    call        004CF408
 0053EBD0    call        004CCA5C
 0053EBD5    mov         eax,53EC34;'Format Unit Completed - '
 0053EBDA    call        00544F6C
 0053EBDF    call        005451D0
 0053EBE4    mov         esp,ebp
 0053EBE6    pop         ebp
 0053EBE7    ret
*}
end;

end.