//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uProgres;

interface

uses
  SysUtils, Classes, StdCtrls, ComCtrls;

type
  TfmProgres = class(TForm)
  published
    btCancel:TButton;//f2F8
    pbProgres:TProgressBar;//f2FC
    laProgres:TLabel;//f300
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004F7E7C
    procedure btCancelClick(Sender:TObject);//004F7E58
    procedure FormShow(Sender:TObject);//004F7DBC
  end;
    //procedure sub_004F7D0C(?:TfmProgres; ?:AnsiString; ?:?; ?:?);//004F7D0C
    //procedure sub_004F7E2C(?:TfmProgres; ?:?);//004F7E2C

implementation

{$R *.DFM}

//004F7D0C
{*procedure sub_004F7D0C(?:TfmProgres; ?:AnsiString; ?:?; ?:?);
begin
 004F7D0C    push        ebp
 004F7D0D    mov         ebp,esp
 004F7D0F    add         esp,0FFFFFFF4
 004F7D12    mov         dword ptr [ebp-0C],ecx
 004F7D15    mov         dword ptr [ebp-8],edx
 004F7D18    mov         dword ptr [ebp-4],eax
 004F7D1B    mov         eax,dword ptr [ebp-8]
 004F7D1E    call        @LStrAddRef
 004F7D23    xor         eax,eax
 004F7D25    push        ebp
 004F7D26    push        4F7DAD
 004F7D2B    push        dword ptr fs:[eax]
 004F7D2E    mov         dword ptr fs:[eax],esp
 004F7D31    cmp         dword ptr ds:[56D3DC],0;gvar_0056D3DC:TfmProgres
>004F7D38    jne         004F7D53
 004F7D3A    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 004F7D40    mov         ecx,dword ptr [ecx]
 004F7D42    mov         dl,1
 004F7D44    mov         eax,[004F7B20];TfmProgres
 004F7D49    call        TfmProgress.Create;TfmProgres.Create
 004F7D4E    mov         [0056D3DC],eax;gvar_0056D3DC:TfmProgres
 004F7D53    mov         eax,[0056D3DC];0x0 gvar_0056D3DC:TfmProgres
 004F7D58    cmp         byte ptr [eax+1A6],0;TfmProgres.FShowing:Boolean
>004F7D5F    je          004F7D70
 004F7D61    mov         eax,[0056D3DC];0x0 gvar_0056D3DC:TfmProgres
 004F7D66    mov         edx,dword ptr [eax]
 004F7D68    call        dword ptr [edx+0C4];TfmProgres.sub_004A746C
>004F7D6E    jmp         004F7D97
 004F7D70    mov         eax,572648;gvar_00572648
 004F7D75    mov         edx,dword ptr [ebp-8]
 004F7D78    call        @LStrAsg
 004F7D7D    mov         eax,dword ptr [ebp+8]
 004F7D80    mov         [0056D3E4],eax;gvar_0056D3E4
 004F7D85    mov         eax,dword ptr [ebp-0C]
 004F7D88    mov         [0056D3E0],eax;gvar_0056D3E0
 004F7D8D    mov         eax,[0056D3DC];0x0 gvar_0056D3DC:TfmProgres
 004F7D92    call        004A7450
 004F7D97    xor         eax,eax
 004F7D99    pop         edx
 004F7D9A    pop         ecx
 004F7D9B    pop         ecx
 004F7D9C    mov         dword ptr fs:[eax],edx
 004F7D9F    push        4F7DB4
 004F7DA4    lea         eax,[ebp-8]
 004F7DA7    call        @LStrClr
 004F7DAC    ret
>004F7DAD    jmp         @HandleFinally
>004F7DB2    jmp         004F7DA4
 004F7DB4    mov         esp,ebp
 004F7DB6    pop         ebp
 004F7DB7    ret         4
end;*}

//004F7DBC
procedure TfmProgres.FormShow(Sender:TObject);
begin
{*
 004F7DBC    push        ebp
 004F7DBD    mov         ebp,esp
 004F7DBF    add         esp,0FFFFFFF8
 004F7DC2    mov         dword ptr [ebp-8],edx
 004F7DC5    mov         dword ptr [ebp-4],eax
 004F7DC8    mov         edx,dword ptr ds:[572648];0x0 gvar_00572648
 004F7DCE    mov         eax,dword ptr [ebp-4]
 004F7DD1    mov         eax,dword ptr [eax+300];TfmProgres.laProgres:TLabel
 004F7DD7    call        TPanel.SetCaption
 004F7DDC    xor         edx,edx
 004F7DDE    mov         eax,dword ptr [ebp-4]
 004F7DE1    mov         eax,dword ptr [eax+2FC];TfmProgres.pbProgres:TProgressBar
 004F7DE7    call        TProgressBar.SetMin
 004F7DEC    mov         edx,dword ptr ds:[56D3E4];0x64 gvar_0056D3E4
 004F7DF2    mov         eax,dword ptr [ebp-4]
 004F7DF5    mov         eax,dword ptr [eax+2FC];TfmProgres.pbProgres:TProgressBar
 004F7DFB    call        TProgressBar.SetMax
 004F7E00    mov         edx,dword ptr ds:[56D3E0];0x0 gvar_0056D3E0
 004F7E06    mov         eax,dword ptr [ebp-4]
 004F7E09    mov         eax,dword ptr [eax+2FC];TfmProgres.pbProgres:TProgressBar
 004F7E0F    call        TProgressBar.SetMin
 004F7E14    mov         edx,dword ptr ds:[56D3E0];0x0 gvar_0056D3E0
 004F7E1A    mov         eax,dword ptr [ebp-4]
 004F7E1D    mov         eax,dword ptr [eax+2FC];TfmProgres.pbProgres:TProgressBar
 004F7E23    call        TProgressBar.SetPosition
 004F7E28    pop         ecx
 004F7E29    pop         ecx
 004F7E2A    pop         ebp
 004F7E2B    ret
*}
end;

//004F7E2C
{*procedure sub_004F7E2C(?:TfmProgres; ?:?);
begin
 004F7E2C    push        ebp
 004F7E2D    mov         ebp,esp
 004F7E2F    add         esp,0FFFFFFF8
 004F7E32    mov         dword ptr [ebp-8],edx
 004F7E35    mov         dword ptr [ebp-4],eax
 004F7E38    cmp         dword ptr ds:[56D3DC],0;gvar_0056D3DC:TfmProgres
>004F7E3F    je          004F7E52
 004F7E41    mov         edx,dword ptr [ebp-8]
 004F7E44    mov         eax,dword ptr [ebp-4]
 004F7E47    mov         eax,dword ptr [eax+2FC]
 004F7E4D    call        TProgressBar.SetPosition
 004F7E52    pop         ecx
 004F7E53    pop         ecx
 004F7E54    pop         ebp
 004F7E55    ret
end;*}

//004F7E58
procedure TfmProgres.btCancelClick(Sender:TObject);
begin
{*
 004F7E58    push        ebp
 004F7E59    mov         ebp,esp
 004F7E5B    add         esp,0FFFFFFF8
 004F7E5E    mov         dword ptr [ebp-8],edx
 004F7E61    mov         dword ptr [ebp-4],eax
 004F7E64    mov         eax,[0056E5A4];^gvar_0056DF04
 004F7E69    mov         byte ptr [eax],1
 004F7E6C    mov         eax,[0056D3DC];0x0 gvar_0056D3DC:TfmProgres
 004F7E71    call        004A7264
 004F7E76    pop         ecx
 004F7E77    pop         ecx
 004F7E78    pop         ebp
 004F7E79    ret
*}
end;

//004F7E7C
procedure TfmProgres.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004F7E7C    push        ebp
 004F7E7D    mov         ebp,esp
 004F7E7F    add         esp,0FFFFFFF4
 004F7E82    mov         dword ptr [ebp-8],ecx
 004F7E85    mov         dword ptr [ebp-0C],edx
 004F7E88    mov         dword ptr [ebp-4],eax
 004F7E8B    xor         eax,eax
 004F7E8D    mov         [0056D3DC],eax;gvar_0056D3DC:TfmProgres
 004F7E92    mov         eax,dword ptr [ebp-8]
 004F7E95    mov         byte ptr [eax],2
 004F7E98    mov         esp,ebp
 004F7E9A    pop         ebp
 004F7E9B    ret
*}
end;

Initialization
Finalization
//004F7E9C
{*
 004F7E9C    push        ebp
 004F7E9D    mov         ebp,esp
 004F7E9F    xor         eax,eax
 004F7EA1    push        ebp
 004F7EA2    push        4F7ECD
 004F7EA7    push        dword ptr fs:[eax]
 004F7EAA    mov         dword ptr fs:[eax],esp
 004F7EAD    inc         dword ptr ds:[57264C]
>004F7EB3    jne         004F7EBF
 004F7EB5    mov         eax,572648;gvar_00572648
 004F7EBA    call        @LStrClr
 004F7EBF    xor         eax,eax
 004F7EC1    pop         edx
 004F7EC2    pop         ecx
 004F7EC3    pop         ecx
 004F7EC4    mov         dword ptr fs:[eax],edx
 004F7EC7    push        4F7ED4
 004F7ECC    ret
>004F7ECD    jmp         @HandleFinally
>004F7ED2    jmp         004F7ECC
 004F7ED4    pop         ebp
 004F7ED5    ret
*}
end.