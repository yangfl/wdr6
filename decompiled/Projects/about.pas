//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit about;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TdlgAbout = class(TForm)
  published
    OKBtn:TButton;//f2F8
    StaticText2:TStaticText;//f2FC
    StaticText1:TStaticText;//f300
    Image1:TImage;//f304
    Image2:TImage;//f308
    laAbaut:TLabel;//f30C
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00560BE0
    procedure OKBtnClick(Sender:TObject);//00560BC0
  end;

implementation

{$R *.DFM}

//00560BC0
procedure TdlgAbout.OKBtnClick(Sender:TObject);
begin
{*
 00560BC0    push        ebp
 00560BC1    mov         ebp,esp
 00560BC3    add         esp,0FFFFFFF8
 00560BC6    mov         dword ptr [ebp-8],edx
 00560BC9    mov         dword ptr [ebp-4],eax
 00560BCC    mov         eax,dword ptr [ebp-4]
 00560BCF    mov         dword ptr [eax+24C],1;TdlgAbout.FModalResult:TModalResult
 00560BD9    pop         ecx
 00560BDA    pop         ecx
 00560BDB    pop         ebp
 00560BDC    ret
*}
end;

//00560BE0
procedure TdlgAbout.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00560BE0    push        ebp
 00560BE1    mov         ebp,esp
 00560BE3    add         esp,0FFFFFFF4
 00560BE6    mov         dword ptr [ebp-8],ecx
 00560BE9    mov         dword ptr [ebp-0C],edx
 00560BEC    mov         dword ptr [ebp-4],eax
 00560BEF    mov         eax,dword ptr [ebp-8]
 00560BF2    mov         byte ptr [eax],2
 00560BF5    xor         eax,eax
 00560BF7    mov         [0059F0B4],eax;gvar_0059F0B4
 00560BFC    mov         esp,ebp
 00560BFE    pop         ebp
 00560BFF    ret
*}
end;

end.