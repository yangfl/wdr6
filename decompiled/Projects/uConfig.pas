//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uConfig;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmConfig = class(TForm)
  published
    lbConfig:TListBox;//f2F8
    Panel1:TPanel;//f2FC
    btRun:TButton;//f300
    procedure lbConfigDblClick(Sender:TObject);//0053995C
    procedure FormShow(Sender:TObject);//005398FC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//005398DC
  end;
    procedure sub_00539888(?:TfmConfig; ?:TfmHDD);//00539888

implementation

{$R *.DFM}

//00539888
procedure sub_00539888(?:TfmConfig; ?:TfmHDD);
begin
{*
 00539888    push        ebp
 00539889    mov         ebp,esp
 0053988B    add         esp,0FFFFFFF8
 0053988E    mov         dword ptr [ebp-8],edx
 00539891    mov         dword ptr [ebp-4],eax
 00539894    cmp         dword ptr ds:[59BEA4],0;gvar_0059BEA4:TfmConfig
>0053989B    jne         005398B1
 0053989D    mov         ecx,dword ptr [ebp-8]
 005398A0    mov         dl,1
 005398A2    mov         eax,[005387C0];TfmConfig
 005398A7    call        TfmProgress.Create;TfmConfig.Create
 005398AC    mov         [0059BEA4],eax;gvar_0059BEA4:TfmConfig
 005398B1    mov         eax,[0059BEA4];0x0 gvar_0059BEA4:TfmConfig
 005398B6    cmp         byte ptr [eax+1A6],0;TfmConfig.FShowing:Boolean
>005398BD    je          005398CE
 005398BF    mov         eax,[0059BEA4];0x0 gvar_0059BEA4:TfmConfig
 005398C4    mov         edx,dword ptr [eax]
 005398C6    call        dword ptr [edx+0C4];TfmConfig.sub_004A746C
>005398CC    jmp         005398D8
 005398CE    mov         eax,[0059BEA4];0x0 gvar_0059BEA4:TfmConfig
 005398D3    call        004A7450
 005398D8    pop         ecx
 005398D9    pop         ecx
 005398DA    pop         ebp
 005398DB    ret
*}
end;

//005398DC
procedure TfmConfig.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 005398DC    push        ebp
 005398DD    mov         ebp,esp
 005398DF    add         esp,0FFFFFFF4
 005398E2    mov         dword ptr [ebp-8],ecx
 005398E5    mov         dword ptr [ebp-0C],edx
 005398E8    mov         dword ptr [ebp-4],eax
 005398EB    xor         eax,eax
 005398ED    mov         [0059BEA4],eax;gvar_0059BEA4:TfmConfig
 005398F2    mov         eax,dword ptr [ebp-8]
 005398F5    mov         byte ptr [eax],2
 005398F8    mov         esp,ebp
 005398FA    pop         ebp
 005398FB    ret
*}
end;

//005398FC
procedure TfmConfig.FormShow(Sender:TObject);
begin
{*
 005398FC    push        ebp
 005398FD    mov         ebp,esp
 005398FF    add         esp,0FFFFFFF4
 00539902    mov         dword ptr [ebp-0C],edx
 00539905    mov         dword ptr [ebp-4],eax
 00539908    xor         eax,eax
 0053990A    mov         dword ptr [ebp-8],eax
 0053990D    mov         eax,dword ptr [ebp-8]
 00539910    mov         edx,dword ptr [eax*4+56D52C];^'Enabled Jumper Setting SSC Transmit'
 00539917    mov         eax,dword ptr [ebp-4]
 0053991A    mov         eax,dword ptr [eax+2F8];TfmConfig.lbConfig:TListBox
 00539920    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00539926    mov         ecx,dword ptr [eax]
 00539928    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053992B    inc         dword ptr [ebp-8]
 0053992E    cmp         dword ptr [ebp-8],6F
>00539932    jne         0053990D
 00539934    mov         eax,dword ptr [ebp-4]
 00539937    mov         eax,dword ptr [eax+2F8];TfmConfig.lbConfig:TListBox
 0053993D    mov         edx,dword ptr [eax]
 0053993F    call        dword ptr [edx+0C4];TListBox.sub_0048C028
 00539945    xor         edx,edx
 00539947    mov         eax,dword ptr [ebp-4]
 0053994A    mov         eax,dword ptr [eax+2F8];TfmConfig.lbConfig:TListBox
 00539950    mov         ecx,dword ptr [eax]
 00539952    call        dword ptr [ecx+0D0];TListBox.sub_00479840
 00539958    mov         esp,ebp
 0053995A    pop         ebp
 0053995B    ret
*}
end;

//0053995C
procedure TfmConfig.lbConfigDblClick(Sender:TObject);
begin
{*
 0053995C    push        ebp
 0053995D    mov         ebp,esp
 0053995F    add         esp,0FFFFFFF0
 00539962    xor         ecx,ecx
 00539964    mov         dword ptr [ebp-10],ecx
 00539967    mov         dword ptr [ebp-0C],edx
 0053996A    mov         dword ptr [ebp-4],eax
 0053996D    xor         eax,eax
 0053996F    push        ebp
 00539970    push        539A40
 00539975    push        dword ptr fs:[eax]
 00539978    mov         dword ptr fs:[eax],esp
 0053997B    mov         eax,dword ptr [ebp-4]
 0053997E    mov         eax,dword ptr [eax+2F8];TfmConfig.lbConfig:TListBox
 00539984    mov         edx,dword ptr [eax]
 00539986    call        dword ptr [edx+0CC];TListBox.sub_00479780
 0053998C    mov         dword ptr [ebp-8],eax
 0053998F    call        004CED2C
 00539994    mov         eax,dword ptr [ebp-8]
 00539997    add         eax,eax
 00539999    mov         ax,word ptr [eax*8+56D6EE]
 005399A1    push        eax
 005399A2    mov         eax,dword ptr [ebp-8]
 005399A5    add         eax,eax
 005399A7    mov         ax,word ptr [eax*8+56D6F0]
 005399AF    push        eax
 005399B0    mov         eax,dword ptr [ebp-8]
 005399B3    add         eax,eax
 005399B5    mov         ax,word ptr [eax*8+56D6F2]
 005399BD    push        eax
 005399BE    mov         eax,dword ptr [ebp-8]
 005399C1    add         eax,eax
 005399C3    mov         ax,word ptr [eax*8+56D6F4]
 005399CB    push        eax
 005399CC    mov         eax,dword ptr [ebp-8]
 005399CF    add         eax,eax
 005399D1    mov         ax,word ptr [eax*8+56D6F6]
 005399D9    push        eax
 005399DA    mov         eax,dword ptr [ebp-8]
 005399DD    add         eax,eax
 005399DF    mov         cx,word ptr [eax*8+56D6EC]
 005399E7    mov         eax,dword ptr [ebp-8]
 005399EA    add         eax,eax
 005399EC    mov         dx,word ptr [eax*8+56D6EA]
 005399F4    mov         eax,dword ptr [ebp-8]
 005399F7    add         eax,eax
 005399F9    mov         ax,word ptr [eax*8+56D6E8]
 00539A01    call        004CE5F4
 00539A06    call        004CEB6C
 00539A0B    mov         eax,dword ptr [ebp-8]
 00539A0E    mov         edx,dword ptr [eax*4+56D52C];^'Enabled Jumper Setting SSC Transmit'
 00539A15    lea         eax,[ebp-10]
 00539A18    mov         ecx,539A54;' - '
 00539A1D    call        @LStrCat3
 00539A22    mov         eax,dword ptr [ebp-10]
 00539A25    call        00544F6C
 00539A2A    xor         eax,eax
 00539A2C    pop         edx
 00539A2D    pop         ecx
 00539A2E    pop         ecx
 00539A2F    mov         dword ptr fs:[eax],edx
 00539A32    push        539A47
 00539A37    lea         eax,[ebp-10]
 00539A3A    call        @LStrClr
 00539A3F    ret
>00539A40    jmp         @HandleFinally
>00539A45    jmp         00539A37
 00539A47    mov         esp,ebp
 00539A49    pop         ebp
 00539A4A    ret
*}
end;

Initialization
Finalization
//00539A58
{*
 00539A58    push        ebp
 00539A59    mov         ebp,esp
 00539A5B    xor         eax,eax
 00539A5D    push        ebp
 00539A5E    push        539A94
 00539A63    push        dword ptr fs:[eax]
 00539A66    mov         dword ptr fs:[eax],esp
 00539A69    inc         dword ptr ds:[59BEA8]
>00539A6F    jne         00539A86
 00539A71    mov         eax,56D52C;^'Enabled Jumper Setting SSC Transmit'
 00539A76    mov         ecx,6F
 00539A7B    mov         edx,dword ptr ds:[4010C0];String
 00539A81    call        @FinalizeArray
 00539A86    xor         eax,eax
 00539A88    pop         edx
 00539A89    pop         ecx
 00539A8A    pop         ecx
 00539A8B    mov         dword ptr fs:[eax],edx
 00539A8E    push        539A9B
 00539A93    ret
>00539A94    jmp         @HandleFinally
>00539A99    jmp         00539A93
 00539A9B    pop         ebp
 00539A9C    ret
*}
end.