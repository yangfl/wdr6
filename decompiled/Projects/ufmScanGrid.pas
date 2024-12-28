//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ufmScanGrid;

interface

uses
  SysUtils, Classes, Controls;

type
  TfmScanGrid = class(TForm)
  published
    ilBlocks2:TImageList;//f2F8
    ilBlocks3:TImageList;//f2FC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0052C094
    procedure FormShow(Sender:TObject);//0052BEF4
    procedure FormCanResize(Sender:TObject; var NewWidth:Integer; var NewHeight:Integer; var Resize:Boolean);//0052BE84
  public
    f300:dword;//f300
    f304:dword;//f304
    f308:dword;//f308
    f30C:dword;//f30C
    f310:Integer;//f310
  end;
    //procedure sub_0052BD54(?:TfmScanGrid; ?:?);//0052BD54
    procedure sub_0052BF68(?:TfmScanGrid; ?:TfmLogicalTest);//0052BF68

implementation

{$R *.DFM}

//0052BD54
{*procedure sub_0052BD54(?:TfmScanGrid; ?:?);
begin
 0052BD54    push        ebp
 0052BD55    mov         ebp,esp
 0052BD57    add         esp,0FFFFFFF4
 0052BD5A    mov         dword ptr [ebp-8],edx
 0052BD5D    mov         dword ptr [ebp-4],eax
 0052BD60    cmp         dword ptr ds:[56D4F4],0;gvar_0056D4F4:TfmScanGrid
>0052BD67    je          0052BE7D
 0052BD6D    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BD72    call        TWinControl.GetHandle
 0052BD77    push        eax
 0052BD78    call        user32.GetDC
 0052BD7D    mov         dword ptr [ebp-0C],eax
 0052BD80    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0052BD84    je          0052BE7D
 0052BD8A    mov         eax,dword ptr [ebp-4]
 0052BD8D    mov         eax,dword ptr [eax+310]
 0052BD93    sub         eax,1
>0052BD96    jb          0052BD9C
>0052BD98    je          0052BDD1
>0052BD9A    jmp         0052BE04
 0052BD9C    mov         eax,dword ptr [ebp-4]
 0052BD9F    mov         eax,dword ptr [eax+304]
 0052BDA5    push        eax
 0052BDA6    mov         eax,dword ptr [ebp-8]
 0052BDA9    push        eax
 0052BDAA    push        1
 0052BDAC    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BDB1    call        004A40F4
 0052BDB6    mov         edx,eax
 0052BDB8    mov         eax,dword ptr [ebp-4]
 0052BDBB    mov         ecx,dword ptr [eax+300]
 0052BDC1    mov         eax,dword ptr [ebp-4]
 0052BDC4    mov         eax,dword ptr [eax+2F8]
 0052BDCA    call        00495958
>0052BDCF    jmp         0052BE04
 0052BDD1    mov         eax,dword ptr [ebp-4]
 0052BDD4    mov         eax,dword ptr [eax+304]
 0052BDDA    push        eax
 0052BDDB    mov         eax,dword ptr [ebp-8]
 0052BDDE    push        eax
 0052BDDF    push        1
 0052BDE1    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BDE6    call        004A40F4
 0052BDEB    mov         edx,eax
 0052BDED    mov         eax,dword ptr [ebp-4]
 0052BDF0    mov         ecx,dword ptr [eax+300]
 0052BDF6    mov         eax,dword ptr [ebp-4]
 0052BDF9    mov         eax,dword ptr [eax+2FC]
 0052BDFF    call        00495958
 0052BE04    mov         eax,dword ptr [ebp-4]
 0052BE07    add         dword ptr [eax+300],8
 0052BE0E    mov         eax,dword ptr [ebp-4]
 0052BE11    mov         eax,dword ptr [eax+300]
 0052BE17    mov         edx,dword ptr [ebp-4]
 0052BE1A    cmp         eax,dword ptr [edx+308]
>0052BE20    jl          0052BE6B
 0052BE22    mov         eax,dword ptr [ebp-4]
 0052BE25    xor         edx,edx
 0052BE27    mov         dword ptr [eax+300],edx
 0052BE2D    mov         eax,dword ptr [ebp-4]
 0052BE30    add         dword ptr [eax+304],0C
 0052BE37    mov         eax,dword ptr [ebp-4]
 0052BE3A    mov         eax,dword ptr [eax+304]
 0052BE40    mov         edx,dword ptr [ebp-4]
 0052BE43    cmp         eax,dword ptr [edx+30C]
>0052BE49    jl          0052BE6B
 0052BE4B    mov         eax,dword ptr [ebp-4]
 0052BE4E    sub         dword ptr [eax+304],0C
 0052BE55    push        0
 0052BE57    push        0
 0052BE59    push        0F4
 0052BE5B    push        0
 0052BE5D    mov         eax,dword ptr [ebp-4]
 0052BE60    call        TWinControl.GetHandle
 0052BE65    push        eax
 0052BE66    call        user32.ScrollWindow
 0052BE6B    mov         eax,dword ptr [ebp-0C]
 0052BE6E    push        eax
 0052BE6F    mov         eax,dword ptr [ebp-4]
 0052BE72    call        TWinControl.GetHandle
 0052BE77    push        eax
 0052BE78    call        user32.ReleaseDC
 0052BE7D    mov         esp,ebp
 0052BE7F    pop         ebp
 0052BE80    ret
end;*}

//0052BE84
procedure TfmScanGrid.FormCanResize(Sender:TObject; var NewWidth:Integer; var NewHeight:Integer; var Resize:Boolean);
begin
{*
 0052BE84    push        ebp
 0052BE85    mov         ebp,esp
 0052BE87    add         esp,0FFFFFFF4
 0052BE8A    mov         dword ptr [ebp-8],ecx
 0052BE8D    mov         dword ptr [ebp-0C],edx
 0052BE90    mov         dword ptr [ebp-4],eax
 0052BE93    mov         eax,dword ptr [ebp-8]
 0052BE96    mov         eax,dword ptr [eax]
 0052BE98    test        eax,eax
>0052BE9A    jns         0052BE9F
 0052BE9C    add         eax,7
 0052BE9F    sar         eax,3
 0052BEA2    shl         eax,3
 0052BEA5    sub         eax,8
 0052BEA8    mov         edx,dword ptr [ebp-4]
 0052BEAB    mov         dword ptr [edx+308],eax;TfmScanGrid.?f308:dword
 0052BEB1    mov         eax,dword ptr [ebp+0C]
 0052BEB4    mov         eax,dword ptr [eax]
 0052BEB6    mov         ecx,0C
 0052BEBB    cdq
 0052BEBC    idiv        eax,ecx
 0052BEBE    shl         eax,2
 0052BEC1    lea         eax,[eax+eax*2]
 0052BEC4    sub         eax,30
 0052BEC7    mov         edx,dword ptr [ebp-4]
 0052BECA    mov         dword ptr [edx+30C],eax;TfmScanGrid.?f30C:dword
 0052BED0    mov         eax,dword ptr [ebp-4]
 0052BED3    xor         edx,edx
 0052BED5    mov         dword ptr [eax+300],edx;TfmScanGrid.?f300:dword
 0052BEDB    mov         eax,dword ptr [ebp-4]
 0052BEDE    xor         edx,edx
 0052BEE0    mov         dword ptr [eax+304],edx;TfmScanGrid.?f304:dword
 0052BEE6    mov         eax,dword ptr [ebp-4]
 0052BEE9    mov         edx,dword ptr [eax]
 0052BEEB    call        dword ptr [edx+7C];TfmScanGrid.sub_0048BE68
 0052BEEE    mov         esp,ebp
 0052BEF0    pop         ebp
 0052BEF1    ret         8
*}
end;

//0052BEF4
procedure TfmScanGrid.FormShow(Sender:TObject);
begin
{*
 0052BEF4    push        ebp
 0052BEF5    mov         ebp,esp
 0052BEF7    add         esp,0FFFFFFF8
 0052BEFA    mov         dword ptr [ebp-8],edx
 0052BEFD    mov         dword ptr [ebp-4],eax
 0052BF00    mov         eax,dword ptr [ebp-4]
 0052BF03    call        TControl.GetClientWidth
 0052BF08    test        eax,eax
>0052BF0A    jns         0052BF0F
 0052BF0C    add         eax,7
 0052BF0F    sar         eax,3
 0052BF12    shl         eax,3
 0052BF15    sub         eax,8
 0052BF18    mov         edx,dword ptr [ebp-4]
 0052BF1B    mov         dword ptr [edx+308],eax;TfmScanGrid.?f308:dword
 0052BF21    mov         eax,dword ptr [ebp-4]
 0052BF24    call        TControl.GetClientHeight
 0052BF29    mov         ecx,0C
 0052BF2E    cdq
 0052BF2F    idiv        eax,ecx
 0052BF31    shl         eax,2
 0052BF34    lea         eax,[eax+eax*2]
 0052BF37    sub         eax,30
 0052BF3A    mov         edx,dword ptr [ebp-4]
 0052BF3D    mov         dword ptr [edx+30C],eax;TfmScanGrid.?f30C:dword
 0052BF43    mov         eax,dword ptr [ebp-4]
 0052BF46    xor         edx,edx
 0052BF48    mov         dword ptr [eax+300],edx;TfmScanGrid.?f300:dword
 0052BF4E    mov         eax,dword ptr [ebp-4]
 0052BF51    xor         edx,edx
 0052BF53    mov         dword ptr [eax+304],edx;TfmScanGrid.?f304:dword
 0052BF59    mov         eax,dword ptr [ebp-4]
 0052BF5C    mov         edx,dword ptr [eax]
 0052BF5E    call        dword ptr [edx+7C];TfmScanGrid.sub_0048BE68
 0052BF61    pop         ecx
 0052BF62    pop         ecx
 0052BF63    pop         ebp
 0052BF64    ret
*}
end;

//0052BF68
procedure sub_0052BF68(?:TfmScanGrid; ?:TfmLogicalTest);
begin
{*
 0052BF68    push        ebp
 0052BF69    mov         ebp,esp
 0052BF6B    add         esp,0FFFFFFF0
 0052BF6E    xor         ecx,ecx
 0052BF70    mov         dword ptr [ebp-0C],ecx
 0052BF73    mov         dword ptr [ebp-10],ecx
 0052BF76    mov         dword ptr [ebp-8],edx
 0052BF79    mov         dword ptr [ebp-4],eax
 0052BF7C    xor         eax,eax
 0052BF7E    push        ebp
 0052BF7F    push        52C07D
 0052BF84    push        dword ptr fs:[eax]
 0052BF87    mov         dword ptr fs:[eax],esp
 0052BF8A    cmp         dword ptr ds:[56D4F4],0;gvar_0056D4F4:TfmScanGrid
>0052BF91    jne         0052C03B
 0052BF97    mov         ecx,dword ptr [ebp-8]
 0052BF9A    mov         dl,1
 0052BF9C    mov         eax,[0052BB78];TfmScanGrid
 0052BFA1    call        TfmProgress.Create;TfmScanGrid.Create
 0052BFA6    mov         [0056D4F4],eax;gvar_0056D4F4:TfmScanGrid
 0052BFAB    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BFB0    mov         byte ptr [eax+1F8],1;TfmScanGrid.FDoubleBuffered:Boolean
 0052BFB7    mov         edx,dword ptr ds:[56E554];^gvar_0056DF78:Integer
 0052BFBD    mov         edx,dword ptr [edx]
 0052BFBF    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BFC4    call        TControl.SetTop
 0052BFC9    mov         edx,dword ptr ds:[56E4C0];^gvar_0056DF7C:Integer
 0052BFCF    mov         edx,dword ptr [edx]
 0052BFD1    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BFD6    call        TControl.SetLeft
 0052BFDB    mov         edx,dword ptr ds:[56E394];^gvar_0056DF80:Integer
 0052BFE1    mov         edx,dword ptr [edx]
 0052BFE3    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BFE8    call        TToolButton.SetHeight
 0052BFED    mov         edx,dword ptr ds:[56E3A4];^gvar_0056DF84:Integer
 0052BFF3    mov         edx,dword ptr [edx]
 0052BFF5    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052BFFA    call        TSplitter.SetWidth
 0052BFFF    lea         edx,[ebp-10]
 0052C002    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C007    call        TPanel.GetCaption
 0052C00C    push        dword ptr [ebp-10]
 0052C00F    push        52C090;' '
 0052C014    mov         eax,[0056E284];^gvar_0056DF34
 0052C019    mov         eax,dword ptr [eax]
 0052C01B    push        dword ptr [eax+420]
 0052C021    lea         eax,[ebp-0C]
 0052C024    mov         edx,3
 0052C029    call        @LStrCatN
 0052C02E    mov         edx,dword ptr [ebp-0C]
 0052C031    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C036    call        TPanel.SetCaption
 0052C03B    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C040    cmp         byte ptr [eax+1A6],0;TfmScanGrid.FShowing:Boolean
>0052C047    je          0052C058
 0052C049    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C04E    mov         edx,dword ptr [eax]
 0052C050    call        dword ptr [edx+0C4];TfmScanGrid.sub_004A746C
>0052C056    jmp         0052C062
 0052C058    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C05D    call        004A7450
 0052C062    xor         eax,eax
 0052C064    pop         edx
 0052C065    pop         ecx
 0052C066    pop         ecx
 0052C067    mov         dword ptr fs:[eax],edx
 0052C06A    push        52C084
 0052C06F    lea         eax,[ebp-10]
 0052C072    mov         edx,2
 0052C077    call        @LStrArrayClr
 0052C07C    ret
>0052C07D    jmp         @HandleFinally
>0052C082    jmp         0052C06F
 0052C084    mov         esp,ebp
 0052C086    pop         ebp
 0052C087    ret
*}
end;

//0052C094
procedure TfmScanGrid.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0052C094    push        ebp
 0052C095    mov         ebp,esp
 0052C097    add         esp,0FFFFFFF4
 0052C09A    mov         dword ptr [ebp-8],ecx
 0052C09D    mov         dword ptr [ebp-0C],edx
 0052C0A0    mov         dword ptr [ebp-4],eax
 0052C0A3    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C0A8    mov         eax,dword ptr [eax+44];TfmScanGrid.Top:Integer
 0052C0AB    mov         edx,dword ptr ds:[56E554];^gvar_0056DF78:Integer
 0052C0B1    mov         dword ptr [edx],eax
 0052C0B3    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C0B8    mov         eax,dword ptr [eax+40];TfmScanGrid.Left:Integer
 0052C0BB    mov         edx,dword ptr ds:[56E4C0];^gvar_0056DF7C:Integer
 0052C0C1    mov         dword ptr [edx],eax
 0052C0C3    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C0C8    mov         eax,dword ptr [eax+4C];TfmScanGrid.Height:Integer
 0052C0CB    mov         edx,dword ptr ds:[56E394];^gvar_0056DF80:Integer
 0052C0D1    mov         dword ptr [edx],eax
 0052C0D3    mov         eax,[0056D4F4];0x0 gvar_0056D4F4:TfmScanGrid
 0052C0D8    mov         eax,dword ptr [eax+48];TfmScanGrid.Width:Integer
 0052C0DB    mov         edx,dword ptr ds:[56E3A4];^gvar_0056DF84:Integer
 0052C0E1    mov         dword ptr [edx],eax
 0052C0E3    xor         eax,eax
 0052C0E5    mov         [0056D4F4],eax;gvar_0056D4F4:TfmScanGrid
 0052C0EA    mov         eax,dword ptr [ebp-8]
 0052C0ED    mov         byte ptr [eax],2
 0052C0F0    mov         esp,ebp
 0052C0F2    pop         ebp
 0052C0F3    ret
*}
end;

end.