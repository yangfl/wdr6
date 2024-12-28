//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Printers;

interface

uses
  SysUtils, Classes, Graphics, Printers;

type
  EPrinter = class(Exception)
  end;
  TPrinter = class(TObject)
  public
    FCanvas:TCanvas;//f4
    FFonts:TStrings;//f8
    FPageNumber:Integer;//fC
    FPrinters:TStrings;//f10
    FPrinterIndex:Integer;//f14
    FTitle:String;//f18
    FPrinting:Boolean;//f1C
    FAborted:Boolean;//f1D
    FCapabilities:TPrinterCapabilities;//f1E
    State:TPrinterState;//f1F
    DC:HDC;//f20
    DevMode:PDeviceMode;//f24
    DeviceMode:THandle;//f28
    FPrinterHandle:THandle;//f2C
    constructor Create;//0043A320
  end;
  TPrinterDevice = class(TObject)
  public
    Driver:String;//f4
    Device:String;//f8
    Port:String;//fC
    //constructor Create(?:?; ?:?);//0043A01C
  end;
  TPrinterCanvas = class(TCanvas)
  published
    procedure UpdateFont;//0043A2C0
    procedure Changing;//0043A298
    procedure CreateHandle;//0043A268
  public
    .....Printer:TPrinter;//f58
    procedure Changing; virtual;//v10//0043A298
    procedure CreateHandle; virtual;//v14//0043A268
    constructor Create;//0043A218
  end;
    //function sub_00439EE4(?:?):?;//00439EE4
    //procedure sub_00439F50(?:?);//00439F50
    //function sub_0043A08C(?:?; ?:?; ?:?; ?:?):?;//0043A08C
    //procedure sub_0043A414(?:TPrinter; ?:?);//0043A414
    //procedure sub_0043A594(?:TPrinter; ?:?);//0043A594
    //procedure sub_0043A61C(?:?);//0043A61C
    //procedure sub_0043A6C0(?:?);//0043A6C0
    //procedure sub_0043A70C(?:?);//0043A70C
    //procedure sub_0043A74C(?:?; ?:?);//0043A74C
    //procedure sub_0043A794(?:TPrinter; ?:PChar; ?:?; ?:?; ?:?);//0043A794
    //function sub_0043AA74(?:?):?;//0043AA74
    //function sub_0043AAAC(?:?):?;//0043AAAC
    //function sub_0043AAD0(?:?):?;//0043AAD0
    //function sub_0043AAFC(?:?):?;//0043AAFC
    //function sub_0043AB28(?:TPrinter):?;//0043AB28
    //function sub_0043AB54(?:TPrinter):?;//0043AB54
    procedure sub_0043ADDC(?:TPrinter);//0043ADDC
    //procedure sub_0043B04C(?:?);//0043B04C
    //function sub_0043B064:?;//0043B064

implementation

//00439EE4
{*function sub_00439EE4(?:?):?;
begin
 00439EE4    push        ebp
 00439EE5    mov         ebp,esp
 00439EE7    add         esp,0FFFFFFF4
 00439EEA    mov         dword ptr [ebp-4],eax
 00439EED    mov         eax,dword ptr [ebp-4]
 00439EF0    mov         eax,dword ptr [eax]
 00439EF2    mov         dword ptr [ebp-8],eax
 00439EF5    mov         eax,dword ptr [ebp-4]
 00439EF8    cmp         dword ptr [eax],0
>00439EFB    je          00439F46
 00439EFD    mov         eax,dword ptr [ebp-4]
 00439F00    mov         eax,dword ptr [eax]
 00439F02    mov         dword ptr [ebp-0C],eax
>00439F05    jmp         00439F0A
 00439F07    inc         dword ptr [ebp-0C]
 00439F0A    mov         eax,dword ptr [ebp-0C]
 00439F0D    cmp         byte ptr [eax],20
>00439F10    je          00439F07
 00439F12    mov         eax,dword ptr [ebp-0C]
 00439F15    mov         dword ptr [ebp-8],eax
>00439F18    jmp         00439F1D
 00439F1A    inc         dword ptr [ebp-0C]
 00439F1D    mov         eax,dword ptr [ebp-0C]
 00439F20    cmp         byte ptr [eax],0
>00439F23    je          00439F2D
 00439F25    mov         eax,dword ptr [ebp-0C]
 00439F28    cmp         byte ptr [eax],2C
>00439F2B    jne         00439F1A
 00439F2D    mov         eax,dword ptr [ebp-0C]
 00439F30    cmp         byte ptr [eax],2C
>00439F33    jne         00439F3E
 00439F35    mov         eax,dword ptr [ebp-0C]
 00439F38    mov         byte ptr [eax],0
 00439F3B    inc         dword ptr [ebp-0C]
 00439F3E    mov         eax,dword ptr [ebp-4]
 00439F41    mov         edx,dword ptr [ebp-0C]
 00439F44    mov         dword ptr [eax],edx
 00439F46    mov         eax,dword ptr [ebp-8]
 00439F49    mov         esp,ebp
 00439F4B    pop         ebp
 00439F4C    ret
end;*}

//00439F50
{*procedure sub_00439F50(?:?);
begin
 00439F50    push        ebp
 00439F51    mov         ebp,esp
 00439F53    push        ecx
 00439F54    mov         dword ptr [ebp-4],eax
 00439F57    mov         ecx,dword ptr [ebp-4]
 00439F5A    mov         dl,1
 00439F5C    mov         eax,[00439E24];EPrinter
 00439F61    call        Exception.Create;EPrinter.Create
 00439F66    call        @RaiseExcept
 00439F6B    pop         ecx
 00439F6C    pop         ebp
 00439F6D    ret
end;*}

//0043A01C
{*constructor TPrinterDevice.Create(?:?; ?:?);
begin
 0043A01C    push        ebp
 0043A01D    mov         ebp,esp
 0043A01F    add         esp,0FFFFFFF4
 0043A022    test        dl,dl
>0043A024    je          0043A02E
 0043A026    add         esp,0FFFFFFF0
 0043A029    call        @ClassCreate
 0043A02E    mov         dword ptr [ebp-0C],ecx
 0043A031    mov         byte ptr [ebp-5],dl
 0043A034    mov         dword ptr [ebp-4],eax
 0043A037    xor         edx,edx
 0043A039    mov         eax,dword ptr [ebp-4]
 0043A03C    call        TObject.Create
 0043A041    mov         eax,dword ptr [ebp-4]
 0043A044    add         eax,4
 0043A047    mov         edx,dword ptr [ebp-0C]
 0043A04A    call        @LStrFromPChar
 0043A04F    mov         eax,dword ptr [ebp-4]
 0043A052    add         eax,8
 0043A055    mov         edx,dword ptr [ebp+0C]
 0043A058    call        @LStrFromPChar
 0043A05D    mov         eax,dword ptr [ebp-4]
 0043A060    add         eax,0C
 0043A063    mov         edx,dword ptr [ebp+8]
 0043A066    call        @LStrFromPChar
 0043A06B    mov         eax,dword ptr [ebp-4]
 0043A06E    cmp         byte ptr [ebp-5],0
>0043A072    je          0043A083
 0043A074    call        @AfterConstruction
 0043A079    pop         dword ptr fs:[0]
 0043A080    add         esp,0C
 0043A083    mov         eax,dword ptr [ebp-4]
 0043A086    mov         esp,ebp
 0043A088    pop         ebp
 0043A089    ret         8
end;*}

//0043A08C
{*function sub_0043A08C(?:?; ?:?; ?:?; ?:?):?;
begin
 0043A08C    push        ebp
 0043A08D    mov         ebp,esp
 0043A08F    add         esp,0FFFFFFE8
 0043A092    push        ebx
 0043A093    xor         ebx,ebx
 0043A095    mov         dword ptr [ebp-18],ebx
 0043A098    mov         dword ptr [ebp-14],ebx
 0043A09B    mov         dword ptr [ebp-8],ecx
 0043A09E    mov         dword ptr [ebp-10],edx
 0043A0A1    mov         dword ptr [ebp-4],eax
 0043A0A4    xor         eax,eax
 0043A0A6    push        ebp
 0043A0A7    push        43A115
 0043A0AC    push        dword ptr fs:[eax]
 0043A0AF    mov         dword ptr fs:[eax],esp
 0043A0B2    lea         eax,[ebp-14]
 0043A0B5    mov         edx,dword ptr [ebp-8]
 0043A0B8    call        @LStrFromPChar
 0043A0BD    mov         edx,dword ptr [ebp-14]
 0043A0C0    mov         eax,dword ptr [ebp-4]
 0043A0C3    mov         eax,dword ptr [eax+8]
 0043A0C6    call        @LStrCmp
>0043A0CB    jne         0043A0F1
 0043A0CD    mov         eax,dword ptr [ebp-4]
 0043A0D0    cmp         dword ptr [eax+0C],0
>0043A0D4    je          0043A0F5
 0043A0D6    lea         eax,[ebp-18]
 0043A0D9    mov         edx,dword ptr [ebp+8]
 0043A0DC    call        @LStrFromPChar
 0043A0E1    mov         edx,dword ptr [ebp-18]
 0043A0E4    mov         eax,dword ptr [ebp-4]
 0043A0E7    mov         eax,dword ptr [eax+0C]
 0043A0EA    call        @LStrCmp
>0043A0EF    je          0043A0F5
 0043A0F1    xor         eax,eax
>0043A0F3    jmp         0043A0F7
 0043A0F5    mov         al,1
 0043A0F7    mov         byte ptr [ebp-9],al
 0043A0FA    xor         eax,eax
 0043A0FC    pop         edx
 0043A0FD    pop         ecx
 0043A0FE    pop         ecx
 0043A0FF    mov         dword ptr fs:[eax],edx
 0043A102    push        43A11C
 0043A107    lea         eax,[ebp-18]
 0043A10A    mov         edx,2
 0043A10F    call        @LStrArrayClr
 0043A114    ret
>0043A115    jmp         @HandleFinally
>0043A11A    jmp         0043A107
 0043A11C    mov         al,byte ptr [ebp-9]
 0043A11F    pop         ebx
 0043A120    mov         esp,ebp
 0043A122    pop         ebp
 0043A123    ret         4
end;*}

//0043A218
constructor TPrinterCanvas.Create;
begin
{*
 0043A218    push        ebp
 0043A219    mov         ebp,esp
 0043A21B    add         esp,0FFFFFFF4
 0043A21E    test        dl,dl
>0043A220    je          0043A22A
 0043A222    add         esp,0FFFFFFF0
 0043A225    call        @ClassCreate
 0043A22A    mov         dword ptr [ebp-0C],ecx
 0043A22D    mov         byte ptr [ebp-5],dl
 0043A230    mov         dword ptr [ebp-4],eax
 0043A233    xor         edx,edx
 0043A235    mov         eax,dword ptr [ebp-4]
 0043A238    call        TCanvas.Create
 0043A23D    mov         eax,dword ptr [ebp-4]
 0043A240    mov         edx,dword ptr [ebp-0C]
 0043A243    mov         dword ptr [eax+58],edx
 0043A246    mov         eax,dword ptr [ebp-4]
 0043A249    cmp         byte ptr [ebp-5],0
>0043A24D    je          0043A25E
 0043A24F    call        @AfterConstruction
 0043A254    pop         dword ptr fs:[0]
 0043A25B    add         esp,0C
 0043A25E    mov         eax,dword ptr [ebp-4]
 0043A261    mov         esp,ebp
 0043A263    pop         ebp
 0043A264    ret
*}
end;

//0043A268
procedure TPrinterCanvas.CreateHandle;
begin
{*
 0043A268    push        ebp
 0043A269    mov         ebp,esp
 0043A26B    push        ecx
 0043A26C    mov         dword ptr [ebp-4],eax
 0043A26F    mov         dl,1
 0043A271    mov         eax,dword ptr [ebp-4]
 0043A274    mov         eax,dword ptr [eax+58];TPrinterCanvas.......Printer:TPrinter
 0043A277    call        0043A414
 0043A27C    mov         eax,dword ptr [ebp-4]
 0043A27F    call        TPrinterCanvas.UpdateFont
 0043A284    mov         eax,dword ptr [ebp-4]
 0043A287    mov         eax,dword ptr [eax+58];TPrinterCanvas........Printer:TPrinter
 0043A28A    mov         edx,dword ptr [eax+20];TPrinter.DC:HDC
 0043A28D    mov         eax,dword ptr [ebp-4]
 0043A290    call        TCanvas.SetHandle
 0043A295    pop         ecx
 0043A296    pop         ebp
 0043A297    ret
*}
end;

//0043A298
procedure TPrinterCanvas.Changing;
begin
{*
 0043A298    push        ebp
 0043A299    mov         ebp,esp
 0043A29B    push        ecx
 0043A29C    mov         dword ptr [ebp-4],eax
 0043A29F    mov         dl,1
 0043A2A1    mov         eax,dword ptr [ebp-4]
 0043A2A4    mov         eax,dword ptr [eax+58];TPrinterCanvas.........Printer:TPrinter
 0043A2A7    call        0043A594
 0043A2AC    mov         eax,dword ptr [ebp-4]
 0043A2AF    call        0042F868
 0043A2B4    mov         eax,dword ptr [ebp-4]
 0043A2B7    call        TPrinterCanvas.UpdateFont
 0043A2BC    pop         ecx
 0043A2BD    pop         ebp
 0043A2BE    ret
*}
end;

//0043A2C0
procedure TPrinterCanvas.UpdateFont;
begin
{*
 0043A2C0    push        ebp
 0043A2C1    mov         ebp,esp
 0043A2C3    add         esp,0FFFFFFF8
 0043A2C6    mov         dword ptr [ebp-4],eax
 0043A2C9    push        5A
 0043A2CB    mov         eax,dword ptr [ebp-4]
 0043A2CE    mov         eax,dword ptr [eax+58];TPrinterCanvas..........Printer:TPrinter
 0043A2D1    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 0043A2D4    push        eax
 0043A2D5    call        gdi32.GetDeviceCaps
 0043A2DA    mov         edx,dword ptr [ebp-4]
 0043A2DD    mov         edx,dword ptr [edx+0C];TPrinterCanvas.Font:TFont
 0043A2E0    cmp         eax,dword ptr [edx+1C];TFont.FPixelsPerInch:Integer
>0043A2E3    je          0043A31B
 0043A2E5    mov         eax,dword ptr [ebp-4]
 0043A2E8    mov         eax,dword ptr [eax+0C];TPrinterCanvas.Font:TFont
 0043A2EB    call        TFont.GetSize
 0043A2F0    mov         dword ptr [ebp-8],eax
 0043A2F3    push        5A
 0043A2F5    mov         eax,dword ptr [ebp-4]
 0043A2F8    mov         eax,dword ptr [eax+58];TPrinterCanvas...........Printer:TPrinter
 0043A2FB    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 0043A2FE    push        eax
 0043A2FF    call        gdi32.GetDeviceCaps
 0043A304    mov         edx,dword ptr [ebp-4]
 0043A307    mov         edx,dword ptr [edx+0C];TPrinterCanvas.Font:TFont
 0043A30A    mov         dword ptr [edx+1C],eax;TFont.FPixelsPerInch:Integer
 0043A30D    mov         edx,dword ptr [ebp-8]
 0043A310    mov         eax,dword ptr [ebp-4]
 0043A313    mov         eax,dword ptr [eax+0C];TPrinterCanvas.Font:TFont
 0043A316    call        TFont.SetSize
 0043A31B    pop         ecx
 0043A31C    pop         ecx
 0043A31D    pop         ebp
 0043A31E    ret
*}
end;

//0043A320
constructor TPrinter.Create;
begin
{*
 0043A320    push        ebp
 0043A321    mov         ebp,esp
 0043A323    add         esp,0FFFFFFF8
 0043A326    test        dl,dl
>0043A328    je          0043A332
 0043A32A    add         esp,0FFFFFFF0
 0043A32D    call        @ClassCreate
 0043A332    mov         byte ptr [ebp-5],dl
 0043A335    mov         dword ptr [ebp-4],eax
 0043A338    xor         edx,edx
 0043A33A    mov         eax,dword ptr [ebp-4]
 0043A33D    call        TObject.Create
 0043A342    mov         eax,dword ptr [ebp-4]
 0043A345    mov         dword ptr [eax+14],0FFFFFFFF
 0043A34C    mov         eax,dword ptr [ebp-4]
 0043A34F    cmp         byte ptr [ebp-5],0
>0043A353    je          0043A364
 0043A355    call        @AfterConstruction
 0043A35A    pop         dword ptr fs:[0]
 0043A361    add         esp,0C
 0043A364    mov         eax,dword ptr [ebp-4]
 0043A367    pop         ecx
 0043A368    pop         ecx
 0043A369    pop         ebp
 0043A36A    ret
*}
end;

//0043A414
{*procedure sub_0043A414(?:TPrinter; ?:?);
begin
 0043A414    push        ebp
 0043A415    mov         ebp,esp
 0043A417    add         esp,0FFFFFFEC
 0043A41A    xor         ecx,ecx
 0043A41C    mov         dword ptr [ebp-14],ecx
 0043A41F    mov         byte ptr [ebp-5],dl
 0043A422    mov         dword ptr [ebp-4],eax
 0043A425    xor         eax,eax
 0043A427    push        ebp
 0043A428    push        43A588
 0043A42D    push        dword ptr fs:[eax]
 0043A430    mov         dword ptr fs:[eax],esp
 0043A433    mov         al,byte ptr [ebp-5]
 0043A436    mov         edx,dword ptr [ebp-4]
 0043A439    cmp         al,byte ptr [edx+1F];TPrinter.State:TPrinterState
>0043A43C    je          0043A572
 0043A442    xor         eax,eax
 0043A444    mov         dword ptr [ebp-0C],eax
 0043A447    mov         al,byte ptr [ebp-5]
 0043A44A    sub         al,1
>0043A44C    jb          0043A459
>0043A44E    je          0043A48F
 0043A450    dec         al
>0043A452    je          0043A4A6
>0043A454    jmp         0043A4D9
 0043A459    xor         edx,edx
 0043A45B    mov         eax,dword ptr [ebp-4]
 0043A45E    call        0043A594
 0043A463    mov         eax,dword ptr [ebp-4]
 0043A466    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>0043A46A    je          0043A479
 0043A46C    xor         edx,edx
 0043A46E    mov         eax,dword ptr [ebp-4]
 0043A471    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 0043A474    call        TCanvas.SetHandle
 0043A479    mov         eax,dword ptr [ebp-4]
 0043A47C    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 0043A47F    push        eax
 0043A480    call        gdi32.DeleteDC
 0043A485    mov         eax,dword ptr [ebp-4]
 0043A488    xor         edx,edx
 0043A48A    mov         dword ptr [eax+20],edx;TPrinter.DC:HDC
>0043A48D    jmp         0043A4D9
 0043A48F    mov         eax,dword ptr [ebp-4]
 0043A492    cmp         byte ptr [eax+1F],2;TPrinter.State:TPrinterState
>0043A496    je          0043A572
 0043A49C    mov         eax,407BD4;gdi32.CreateICA:HDC
 0043A4A1    mov         dword ptr [ebp-0C],eax
>0043A4A4    jmp         0043A4D9
 0043A4A6    mov         eax,dword ptr [ebp-4]
 0043A4A9    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>0043A4AD    je          0043A4BC
 0043A4AF    xor         edx,edx
 0043A4B1    mov         eax,dword ptr [ebp-4]
 0043A4B4    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 0043A4B7    call        TCanvas.SetHandle
 0043A4BC    mov         eax,dword ptr [ebp-4]
 0043A4BF    cmp         dword ptr [eax+20],0;TPrinter.DC:HDC
>0043A4C3    je          0043A4D1
 0043A4C5    mov         eax,dword ptr [ebp-4]
 0043A4C8    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 0043A4CB    push        eax
 0043A4CC    call        gdi32.DeleteDC
 0043A4D1    mov         eax,407BAC;gdi32.CreateDCA:HDC
 0043A4D6    mov         dword ptr [ebp-0C],eax
 0043A4D9    cmp         dword ptr [ebp-0C],0
>0043A4DD    je          0043A569
 0043A4E3    mov         eax,dword ptr [ebp-4]
 0043A4E6    call        0043AB28
 0043A4EB    push        eax
 0043A4EC    mov         eax,dword ptr [ebp-4]
 0043A4EF    call        0043AB54
 0043A4F4    pop         edx
 0043A4F5    mov         ecx,dword ptr [eax]
 0043A4F7    call        dword ptr [ecx+18]
 0043A4FA    mov         dword ptr [ebp-10],eax
 0043A4FD    mov         eax,dword ptr [ebp-4]
 0043A500    mov         eax,dword ptr [eax+24];TPrinter.DevMode:PDeviceMode
 0043A503    push        eax
 0043A504    mov         eax,dword ptr [ebp-10]
 0043A507    mov         eax,dword ptr [eax+0C]
 0043A50A    call        @LStrToPChar
 0043A50F    push        eax
 0043A510    mov         eax,dword ptr [ebp-10]
 0043A513    mov         eax,dword ptr [eax+8]
 0043A516    call        @LStrToPChar
 0043A51B    push        eax
 0043A51C    mov         eax,dword ptr [ebp-10]
 0043A51F    mov         eax,dword ptr [eax+4]
 0043A522    call        @LStrToPChar
 0043A527    push        eax
 0043A528    call        dword ptr [ebp-0C]
 0043A52B    mov         edx,dword ptr [ebp-4]
 0043A52E    mov         dword ptr [edx+20],eax;TPrinter.DC:HDC
 0043A531    mov         eax,dword ptr [ebp-4]
 0043A534    cmp         dword ptr [eax+20],0;TPrinter.DC:HDC
>0043A538    jne         0043A54F
 0043A53A    lea         edx,[ebp-14]
 0043A53D    mov         eax,[0056E4B4];^SInvalidPrinter:TResStringRec
 0043A542    call        LoadResString
 0043A547    mov         eax,dword ptr [ebp-14]
 0043A54A    call        00439F50
 0043A54F    mov         eax,dword ptr [ebp-4]
 0043A552    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>0043A556    je          0043A569
 0043A558    mov         eax,dword ptr [ebp-4]
 0043A55B    mov         edx,dword ptr [eax+20];TPrinter.DC:HDC
 0043A55E    mov         eax,dword ptr [ebp-4]
 0043A561    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 0043A564    call        TCanvas.SetHandle
 0043A569    mov         al,byte ptr [ebp-5]
 0043A56C    mov         edx,dword ptr [ebp-4]
 0043A56F    mov         byte ptr [edx+1F],al;TPrinter.State:TPrinterState
 0043A572    xor         eax,eax
 0043A574    pop         edx
 0043A575    pop         ecx
 0043A576    pop         ecx
 0043A577    mov         dword ptr fs:[eax],edx
 0043A57A    push        43A58F
 0043A57F    lea         eax,[ebp-14]
 0043A582    call        @LStrClr
 0043A587    ret
>0043A588    jmp         @HandleFinally
>0043A58D    jmp         0043A57F
 0043A58F    mov         esp,ebp
 0043A591    pop         ebp
 0043A592    ret
end;*}

//0043A594
{*procedure sub_0043A594(?:TPrinter; ?:?);
begin
 0043A594    push        ebp
 0043A595    mov         ebp,esp
 0043A597    add         esp,0FFFFFFF0
 0043A59A    xor         ecx,ecx
 0043A59C    mov         dword ptr [ebp-10],ecx
 0043A59F    mov         dword ptr [ebp-0C],ecx
 0043A5A2    mov         byte ptr [ebp-5],dl
 0043A5A5    mov         dword ptr [ebp-4],eax
 0043A5A8    xor         eax,eax
 0043A5AA    push        ebp
 0043A5AB    push        43A60E
 0043A5B0    push        dword ptr fs:[eax]
 0043A5B3    mov         dword ptr fs:[eax],esp
 0043A5B6    mov         eax,dword ptr [ebp-4]
 0043A5B9    mov         al,byte ptr [eax+1C];TPrinter.FPrinting:Boolean
 0043A5BC    cmp         al,byte ptr [ebp-5]
>0043A5BF    je          0043A5F3
 0043A5C1    cmp         byte ptr [ebp-5],0
>0043A5C5    je          0043A5DE
 0043A5C7    lea         edx,[ebp-0C]
 0043A5CA    mov         eax,[0056E560];^SNotPrinting:TResStringRec
 0043A5CF    call        LoadResString
 0043A5D4    mov         eax,dword ptr [ebp-0C]
 0043A5D7    call        00439F50
>0043A5DC    jmp         0043A5F3
 0043A5DE    lea         edx,[ebp-10]
 0043A5E1    mov         eax,[0056E2E4];^SPrinting:TResStringRec
 0043A5E6    call        LoadResString
 0043A5EB    mov         eax,dword ptr [ebp-10]
 0043A5EE    call        00439F50
 0043A5F3    xor         eax,eax
 0043A5F5    pop         edx
 0043A5F6    pop         ecx
 0043A5F7    pop         ecx
 0043A5F8    mov         dword ptr fs:[eax],edx
 0043A5FB    push        43A615
 0043A600    lea         eax,[ebp-10]
 0043A603    mov         edx,2
 0043A608    call        @LStrArrayClr
 0043A60D    ret
>0043A60E    jmp         @HandleFinally
>0043A613    jmp         0043A600
 0043A615    mov         esp,ebp
 0043A617    pop         ebp
 0043A618    ret
end;*}

//0043A61C
{*procedure sub_0043A61C(?:?);
begin
 0043A61C    push        ebp
 0043A61D    mov         ebp,esp
 0043A61F    add         esp,0FFFFFFE8
 0043A622    mov         dword ptr [ebp-4],eax
 0043A625    xor         edx,edx
 0043A627    mov         eax,dword ptr [ebp-4]
 0043A62A    call        0043A594
 0043A62F    mov         dl,2
 0043A631    mov         eax,dword ptr [ebp-4]
 0043A634    call        0043A414
 0043A639    mov         eax,dword ptr [ebp-4]
 0043A63C    call        0043AA74
 0043A641    call        0042F2A8
 0043A646    mov         eax,dword ptr [ebp-4]
 0043A649    call        0043AA74
 0043A64E    call        TPrinterCanvas.UpdateFont
 0043A653    mov         eax,dword ptr [ebp-4]
 0043A656    mov         byte ptr [eax+1C],1
 0043A65A    mov         eax,dword ptr [ebp-4]
 0043A65D    mov         byte ptr [eax+1D],0
 0043A661    mov         eax,dword ptr [ebp-4]
 0043A664    mov         dword ptr [eax+0C],1
 0043A66B    lea         eax,[ebp-18]
 0043A66E    xor         ecx,ecx
 0043A670    mov         edx,14
 0043A675    call        @FillChar
 0043A67A    mov         dword ptr [ebp-18],14
 0043A681    mov         eax,dword ptr [ebp-4]
 0043A684    mov         eax,dword ptr [eax+18]
 0043A687    call        @LStrToPChar
 0043A68C    mov         dword ptr [ebp-14],eax
 0043A68F    push        439F70
 0043A694    mov         eax,dword ptr [ebp-4]
 0043A697    mov         eax,dword ptr [eax+20]
 0043A69A    push        eax
 0043A69B    call        gdi32.SetAbortProc
 0043A6A0    lea         eax,[ebp-18]
 0043A6A3    push        eax
 0043A6A4    mov         eax,dword ptr [ebp-4]
 0043A6A7    mov         eax,dword ptr [eax+20]
 0043A6AA    push        eax
 0043A6AB    call        gdi32.StartDocA
 0043A6B0    mov         eax,dword ptr [ebp-4]
 0043A6B3    mov         eax,dword ptr [eax+20]
 0043A6B6    push        eax
 0043A6B7    call        gdi32.StartPage
 0043A6BC    mov         esp,ebp
 0043A6BE    pop         ebp
 0043A6BF    ret
end;*}

//0043A6C0
{*procedure sub_0043A6C0(?:?);
begin
 0043A6C0    push        ebp
 0043A6C1    mov         ebp,esp
 0043A6C3    push        ecx
 0043A6C4    mov         dword ptr [ebp-4],eax
 0043A6C7    mov         dl,1
 0043A6C9    mov         eax,dword ptr [ebp-4]
 0043A6CC    call        0043A594
 0043A6D1    mov         eax,dword ptr [ebp-4]
 0043A6D4    mov         eax,dword ptr [eax+20]
 0043A6D7    push        eax
 0043A6D8    call        gdi32.EndPage
 0043A6DD    mov         eax,dword ptr [ebp-4]
 0043A6E0    cmp         byte ptr [eax+1D],0
>0043A6E4    jne         0043A6F2
 0043A6E6    mov         eax,dword ptr [ebp-4]
 0043A6E9    mov         eax,dword ptr [eax+20]
 0043A6EC    push        eax
 0043A6ED    call        gdi32.EndDoc
 0043A6F2    mov         eax,dword ptr [ebp-4]
 0043A6F5    mov         byte ptr [eax+1C],0
 0043A6F9    mov         eax,dword ptr [ebp-4]
 0043A6FC    mov         byte ptr [eax+1D],0
 0043A700    mov         eax,dword ptr [ebp-4]
 0043A703    xor         edx,edx
 0043A705    mov         dword ptr [eax+0C],edx
 0043A708    pop         ecx
 0043A709    pop         ebp
 0043A70A    ret
end;*}

//0043A70C
{*procedure sub_0043A70C(?:?);
begin
 0043A70C    push        ebp
 0043A70D    mov         ebp,esp
 0043A70F    push        ecx
 0043A710    mov         dword ptr [ebp-4],eax
 0043A713    mov         dl,1
 0043A715    mov         eax,dword ptr [ebp-4]
 0043A718    call        0043A594
 0043A71D    mov         eax,dword ptr [ebp-4]
 0043A720    mov         eax,dword ptr [eax+20]
 0043A723    push        eax
 0043A724    call        gdi32.EndPage
 0043A729    mov         eax,dword ptr [ebp-4]
 0043A72C    mov         eax,dword ptr [eax+20]
 0043A72F    push        eax
 0043A730    call        gdi32.StartPage
 0043A735    mov         eax,dword ptr [ebp-4]
 0043A738    inc         dword ptr [eax+0C]
 0043A73B    mov         eax,dword ptr [ebp-4]
 0043A73E    call        0043AA74
 0043A743    call        0042F2A8
 0043A748    pop         ecx
 0043A749    pop         ebp
 0043A74A    ret
end;*}

//0043A74C
{*procedure sub_0043A74C(?:?; ?:?);
begin
 0043A74C    push        ebp
 0043A74D    mov         ebp,esp
 0043A74F    add         esp,0FFFFFFF8
 0043A752    mov         dword ptr [ebp-8],edx
 0043A755    mov         dword ptr [ebp-4],eax
 0043A758    mov         eax,dword ptr [ebp-4]
 0043A75B    mov         dl,byte ptr ds:[43A790];0x0 gvar_0043A790
 0043A761    mov         byte ptr [eax+1E],dl
 0043A764    test        byte ptr [ebp-8],1
>0043A768    je          0043A771
 0043A76A    mov         eax,dword ptr [ebp-4]
 0043A76D    or          byte ptr [eax+1E],2
 0043A771    test        byte ptr [ebp-7],1
>0043A775    je          0043A77E
 0043A777    mov         eax,dword ptr [ebp-4]
 0043A77A    or          byte ptr [eax+1E],1
 0043A77E    test        byte ptr [ebp-7],80
>0043A782    je          0043A78B
 0043A784    mov         eax,dword ptr [ebp-4]
 0043A787    or          byte ptr [eax+1E],4
 0043A78B    pop         ecx
 0043A78C    pop         ecx
 0043A78D    pop         ebp
 0043A78E    ret
end;*}

//0043A794
{*procedure sub_0043A794(?:TPrinter; ?:PChar; ?:?; ?:?; ?:?);
begin
 0043A794    push        ebp
 0043A795    mov         ebp,esp
 0043A797    add         esp,0FFFFFF30
 0043A79D    push        ebx
 0043A79E    xor         ebx,ebx
 0043A7A0    mov         dword ptr [ebp-0BC],ebx
 0043A7A6    mov         dword ptr [ebp-0C0],ebx
 0043A7AC    mov         dword ptr [ebp-0C],ecx
 0043A7AF    mov         dword ptr [ebp-8],edx
 0043A7B2    mov         dword ptr [ebp-4],eax
 0043A7B5    xor         eax,eax
 0043A7B7    push        ebp
 0043A7B8    push        43AA63
 0043A7BD    push        dword ptr fs:[eax]
 0043A7C0    mov         dword ptr fs:[eax],esp
 0043A7C3    xor         edx,edx
 0043A7C5    mov         eax,dword ptr [ebp-4]
 0043A7C8    call        0043A594
 0043A7CD    mov         eax,dword ptr [ebp+8]
 0043A7D0    mov         edx,dword ptr [ebp-4]
 0043A7D3    cmp         eax,dword ptr [edx+28]
>0043A7D6    je          0043A80A
 0043A7D8    mov         eax,dword ptr [ebp-4]
 0043A7DB    cmp         dword ptr [eax+28],0
>0043A7DF    je          0043A801
 0043A7E1    mov         eax,dword ptr [ebp-4]
 0043A7E4    mov         eax,dword ptr [eax+28]
 0043A7E7    push        eax
 0043A7E8    call        kernel32.GlobalUnlock
 0043A7ED    mov         eax,dword ptr [ebp-4]
 0043A7F0    mov         eax,dword ptr [eax+28]
 0043A7F3    push        eax
 0043A7F4    call        kernel32.GlobalFree
 0043A7F9    mov         eax,dword ptr [ebp-4]
 0043A7FC    xor         edx,edx
 0043A7FE    mov         dword ptr [eax+24],edx
 0043A801    mov         eax,dword ptr [ebp+8]
 0043A804    mov         edx,dword ptr [ebp-4]
 0043A807    mov         dword ptr [edx+28],eax
 0043A80A    mov         eax,dword ptr [ebp-4]
 0043A80D    cmp         dword ptr [eax+28],0
>0043A811    je          0043A836
 0043A813    mov         eax,dword ptr [ebp-4]
 0043A816    mov         eax,dword ptr [eax+28]
 0043A819    push        eax
 0043A81A    call        kernel32.GlobalLock
 0043A81F    mov         edx,dword ptr [ebp-4]
 0043A822    mov         dword ptr [edx+24],eax
 0043A825    mov         eax,dword ptr [ebp-4]
 0043A828    mov         eax,dword ptr [eax+24]
 0043A82B    mov         edx,dword ptr [eax+28]
 0043A82E    mov         eax,dword ptr [ebp-4]
 0043A831    call        0043A74C
 0043A836    mov         eax,dword ptr [ebp-4]
 0043A839    call        0043B04C
 0043A83E    mov         eax,dword ptr [ebp-4]
 0043A841    cmp         dword ptr [eax+2C],0
>0043A845    je          0043A85B
 0043A847    mov         eax,dword ptr [ebp-4]
 0043A84A    mov         eax,dword ptr [eax+2C]
 0043A84D    push        eax
 0043A84E    call        winspool.ClosePrinter
 0043A853    mov         eax,dword ptr [ebp-4]
 0043A856    xor         edx,edx
 0043A858    mov         dword ptr [eax+2C],edx
 0043A85B    xor         edx,edx
 0043A85D    mov         eax,dword ptr [ebp-4]
 0043A860    call        0043A414
 0043A865    mov         dword ptr [ebp-14],0FFFFFFFF
 0043A86C    mov         eax,dword ptr [ebp-4]
 0043A86F    call        0043AB54
 0043A874    mov         dword ptr [ebp-18],eax
 0043A877    mov         eax,dword ptr [ebp-18]
 0043A87A    mov         edx,dword ptr [eax]
 0043A87C    call        dword ptr [edx+14]
 0043A87F    dec         eax
 0043A880    test        eax,eax
>0043A882    jl          0043A8D3
 0043A884    inc         eax
 0043A885    mov         dword ptr [ebp-1C],eax
 0043A888    mov         dword ptr [ebp-10],0
 0043A88F    mov         eax,dword ptr [ebp+0C]
 0043A892    push        eax
 0043A893    mov         edx,dword ptr [ebp-10]
 0043A896    mov         eax,dword ptr [ebp-18]
 0043A899    mov         ecx,dword ptr [eax]
 0043A89B    call        dword ptr [ecx+18]
 0043A89E    mov         ecx,dword ptr [ebp-8]
 0043A8A1    mov         edx,dword ptr [ebp-0C]
 0043A8A4    call        0043A08C
 0043A8A9    test        al,al
>0043A8AB    je          0043A8CB
 0043A8AD    mov         edx,dword ptr [ebp-10]
 0043A8B0    mov         eax,dword ptr [ebp-18]
 0043A8B3    mov         ecx,dword ptr [eax]
 0043A8B5    call        dword ptr [ecx+18]
 0043A8B8    add         eax,0C
 0043A8BB    mov         edx,dword ptr [ebp+0C]
 0043A8BE    call        @LStrFromPChar
 0043A8C3    mov         eax,dword ptr [ebp-10]
 0043A8C6    mov         dword ptr [ebp-14],eax
>0043A8C9    jmp         0043A8D3
 0043A8CB    inc         dword ptr [ebp-10]
 0043A8CE    dec         dword ptr [ebp-1C]
>0043A8D1    jne         0043A88F
 0043A8D3    cmp         dword ptr [ebp-14],0FFFFFFFF
>0043A8D7    jne         0043A962
 0043A8DD    mov         eax,dword ptr [ebp-4]
 0043A8E0    mov         eax,dword ptr [eax+10]
 0043A8E3    mov         edx,dword ptr [eax]
 0043A8E5    call        dword ptr [edx+14]
 0043A8E8    mov         dword ptr [ebp-14],eax
 0043A8EB    mov         eax,dword ptr [ebp-8]
 0043A8EE    push        eax
 0043A8EF    mov         eax,dword ptr [ebp+0C]
 0043A8F2    push        eax
 0043A8F3    mov         ecx,dword ptr [ebp-0C]
 0043A8F6    mov         dl,1
 0043A8F8    mov         eax,[00439F9C];TPrinterDevice
 0043A8FD    call        TPrinterDevice.Create;TPrinterDevice.Create
 0043A902    push        eax
 0043A903    lea         eax,[ebp-0BC]
 0043A909    push        eax
 0043A90A    lea         edx,[ebp-0C0]
 0043A910    mov         eax,[0056E0B0];^SDeviceOnPort:TResStringRec
 0043A915    call        LoadResString
 0043A91A    mov         eax,dword ptr [ebp-0C0]
 0043A920    mov         edx,dword ptr [ebp-8]
 0043A923    mov         dword ptr [ebp-0D0],edx
 0043A929    mov         byte ptr [ebp-0CC],6
 0043A930    mov         edx,dword ptr [ebp+0C]
 0043A933    mov         dword ptr [ebp-0C8],edx
 0043A939    mov         byte ptr [ebp-0C4],6
 0043A940    lea         edx,[ebp-0D0]
 0043A946    mov         ecx,1
 0043A94B    call        0040D630
 0043A950    mov         edx,dword ptr [ebp-0BC]
 0043A956    mov         eax,dword ptr [ebp-4]
 0043A959    mov         eax,dword ptr [eax+10]
 0043A95C    pop         ecx
 0043A95D    mov         ebx,dword ptr [eax]
 0043A95F    call        dword ptr [ebx+3C]
 0043A962    mov         eax,dword ptr [ebp-14]
 0043A965    mov         edx,dword ptr [ebp-4]
 0043A968    mov         dword ptr [edx+14],eax
 0043A96B    push        0
 0043A96D    mov         eax,dword ptr [ebp-4]
 0043A970    add         eax,2C
 0043A973    push        eax
 0043A974    mov         eax,dword ptr [ebp-8]
 0043A977    push        eax
 0043A978    call        winspool.OpenPrinterA
 0043A97D    test        eax,eax
>0043A97F    je          0043AA45
 0043A985    mov         eax,dword ptr [ebp-4]
 0043A988    cmp         dword ptr [eax+28],0
>0043A98C    jne         0043AA2B
 0043A992    push        0
 0043A994    lea         eax,[ebp-0B8]
 0043A99A    push        eax
 0043A99B    lea         eax,[ebp-0B8]
 0043A9A1    push        eax
 0043A9A2    mov         eax,dword ptr [ebp-8]
 0043A9A5    push        eax
 0043A9A6    mov         eax,dword ptr [ebp-4]
 0043A9A9    mov         eax,dword ptr [eax+2C]
 0043A9AC    push        eax
 0043A9AD    push        0
 0043A9AF    call        winspool.DocumentPropertiesA
 0043A9B4    push        eax
 0043A9B5    push        42
 0043A9B7    call        kernel32.GlobalAlloc
 0043A9BC    mov         edx,dword ptr [ebp-4]
 0043A9BF    mov         dword ptr [edx+28],eax
 0043A9C2    mov         eax,dword ptr [ebp-4]
 0043A9C5    cmp         dword ptr [eax+28],0
>0043A9C9    je          0043AA2B
 0043A9CB    mov         eax,dword ptr [ebp-4]
 0043A9CE    mov         eax,dword ptr [eax+28]
 0043A9D1    push        eax
 0043A9D2    call        kernel32.GlobalLock
 0043A9D7    mov         edx,dword ptr [ebp-4]
 0043A9DA    mov         dword ptr [edx+24],eax
 0043A9DD    push        2
 0043A9DF    mov         eax,dword ptr [ebp-4]
 0043A9E2    mov         eax,dword ptr [eax+24]
 0043A9E5    push        eax
 0043A9E6    mov         eax,dword ptr [ebp-4]
 0043A9E9    mov         eax,dword ptr [eax+24]
 0043A9EC    push        eax
 0043A9ED    mov         eax,dword ptr [ebp-8]
 0043A9F0    push        eax
 0043A9F1    mov         eax,dword ptr [ebp-4]
 0043A9F4    mov         eax,dword ptr [eax+2C]
 0043A9F7    push        eax
 0043A9F8    push        0
 0043A9FA    call        winspool.DocumentPropertiesA
 0043A9FF    test        eax,eax
>0043AA01    jge         0043AA2B
 0043AA03    mov         eax,dword ptr [ebp-4]
 0043AA06    mov         eax,dword ptr [eax+28]
 0043AA09    push        eax
 0043AA0A    call        kernel32.GlobalUnlock
 0043AA0F    mov         eax,dword ptr [ebp-4]
 0043AA12    mov         eax,dword ptr [eax+28]
 0043AA15    push        eax
 0043AA16    call        kernel32.GlobalFree
 0043AA1B    mov         eax,dword ptr [ebp-4]
 0043AA1E    xor         edx,edx
 0043AA20    mov         dword ptr [eax+28],edx
 0043AA23    mov         eax,dword ptr [ebp-4]
 0043AA26    xor         edx,edx
 0043AA28    mov         dword ptr [eax+24],edx
 0043AA2B    mov         eax,dword ptr [ebp-4]
 0043AA2E    cmp         dword ptr [eax+28],0
>0043AA32    je          0043AA45
 0043AA34    mov         eax,dword ptr [ebp-4]
 0043AA37    mov         eax,dword ptr [eax+24]
 0043AA3A    mov         edx,dword ptr [eax+28]
 0043AA3D    mov         eax,dword ptr [ebp-4]
 0043AA40    call        0043A74C
 0043AA45    xor         eax,eax
 0043AA47    pop         edx
 0043AA48    pop         ecx
 0043AA49    pop         ecx
 0043AA4A    mov         dword ptr fs:[eax],edx
 0043AA4D    push        43AA6A
 0043AA52    lea         eax,[ebp-0C0]
 0043AA58    mov         edx,2
 0043AA5D    call        @LStrArrayClr
 0043AA62    ret
>0043AA63    jmp         @HandleFinally
>0043AA68    jmp         0043AA52
 0043AA6A    pop         ebx
 0043AA6B    mov         esp,ebp
 0043AA6D    pop         ebp
 0043AA6E    ret         8
end;*}

//0043AA74
{*function sub_0043AA74(?:?):?;
begin
 0043AA74    push        ebp
 0043AA75    mov         ebp,esp
 0043AA77    add         esp,0FFFFFFF8
 0043AA7A    mov         dword ptr [ebp-4],eax
 0043AA7D    mov         eax,dword ptr [ebp-4]
 0043AA80    cmp         dword ptr [eax+4],0
>0043AA84    jne         0043AA9B
 0043AA86    mov         ecx,dword ptr [ebp-4]
 0043AA89    mov         dl,1
 0043AA8B    mov         eax,[0043A128];TPrinterCanvas
 0043AA90    call        TPrinterCanvas.Create;TPrinterCanvas.Create
 0043AA95    mov         edx,dword ptr [ebp-4]
 0043AA98    mov         dword ptr [edx+4],eax
 0043AA9B    mov         eax,dword ptr [ebp-4]
 0043AA9E    mov         eax,dword ptr [eax+4]
 0043AAA1    mov         dword ptr [ebp-8],eax
 0043AAA4    mov         eax,dword ptr [ebp-8]
 0043AAA7    pop         ecx
 0043AAA8    pop         ecx
 0043AAA9    pop         ebp
 0043AAAA    ret
end;*}

//0043AAAC
{*function sub_0043AAAC(?:?):?;
begin
 0043AAAC    push        ebp
 0043AAAD    mov         ebp,esp
 0043AAAF    add         esp,0FFFFFFF8
 0043AAB2    mov         dword ptr [ebp-4],eax
 0043AAB5    mov         dl,1
 0043AAB7    mov         eax,dword ptr [ebp-4]
 0043AABA    call        0043A414
 0043AABF    mov         eax,dword ptr [ebp-4]
 0043AAC2    mov         eax,dword ptr [eax+20]
 0043AAC5    mov         dword ptr [ebp-8],eax
 0043AAC8    mov         eax,dword ptr [ebp-8]
 0043AACB    pop         ecx
 0043AACC    pop         ecx
 0043AACD    pop         ebp
 0043AACE    ret
end;*}

//0043AAD0
{*function sub_0043AAD0(?:?):?;
begin
 0043AAD0    push        ebp
 0043AAD1    mov         ebp,esp
 0043AAD3    add         esp,0FFFFFFF8
 0043AAD6    mov         dword ptr [ebp-4],eax
 0043AAD9    mov         dl,1
 0043AADB    mov         eax,dword ptr [ebp-4]
 0043AADE    call        0043A414
 0043AAE3    push        0A
 0043AAE5    mov         eax,dword ptr [ebp-4]
 0043AAE8    mov         eax,dword ptr [eax+20]
 0043AAEB    push        eax
 0043AAEC    call        gdi32.GetDeviceCaps
 0043AAF1    mov         dword ptr [ebp-8],eax
 0043AAF4    mov         eax,dword ptr [ebp-8]
 0043AAF7    pop         ecx
 0043AAF8    pop         ecx
 0043AAF9    pop         ebp
 0043AAFA    ret
end;*}

//0043AAFC
{*function sub_0043AAFC(?:?):?;
begin
 0043AAFC    push        ebp
 0043AAFD    mov         ebp,esp
 0043AAFF    add         esp,0FFFFFFF8
 0043AB02    mov         dword ptr [ebp-4],eax
 0043AB05    mov         dl,1
 0043AB07    mov         eax,dword ptr [ebp-4]
 0043AB0A    call        0043A414
 0043AB0F    push        8
 0043AB11    mov         eax,dword ptr [ebp-4]
 0043AB14    mov         eax,dword ptr [eax+20]
 0043AB17    push        eax
 0043AB18    call        gdi32.GetDeviceCaps
 0043AB1D    mov         dword ptr [ebp-8],eax
 0043AB20    mov         eax,dword ptr [ebp-8]
 0043AB23    pop         ecx
 0043AB24    pop         ecx
 0043AB25    pop         ebp
 0043AB26    ret
end;*}

//0043AB28
{*function sub_0043AB28(?:TPrinter):?;
begin
 0043AB28    push        ebp
 0043AB29    mov         ebp,esp
 0043AB2B    add         esp,0FFFFFFF8
 0043AB2E    mov         dword ptr [ebp-4],eax
 0043AB31    mov         eax,dword ptr [ebp-4]
 0043AB34    cmp         dword ptr [eax+14],0FFFFFFFF;TPrinter.FPrinterIndex:Integer
>0043AB38    jne         0043AB42
 0043AB3A    mov         eax,dword ptr [ebp-4]
 0043AB3D    call        0043ADDC
 0043AB42    mov         eax,dword ptr [ebp-4]
 0043AB45    mov         eax,dword ptr [eax+14];TPrinter.FPrinterIndex:Integer
 0043AB48    mov         dword ptr [ebp-8],eax
 0043AB4B    mov         eax,dword ptr [ebp-8]
 0043AB4E    pop         ecx
 0043AB4F    pop         ecx
 0043AB50    pop         ebp
 0043AB51    ret
end;*}

//0043AB54
{*function sub_0043AB54(?:TPrinter):?;
begin
 0043AB54    push        ebp
 0043AB55    mov         ebp,esp
 0043AB57    add         esp,0FFFFFFAC
 0043AB5A    push        ebx
 0043AB5B    push        esi
 0043AB5C    push        edi
 0043AB5D    xor         edx,edx
 0043AB5F    mov         dword ptr [ebp-40],edx
 0043AB62    mov         dword ptr [ebp-44],edx
 0043AB65    mov         dword ptr [ebp-3C],edx
 0043AB68    mov         dword ptr [ebp-4],eax
 0043AB6B    xor         eax,eax
 0043AB6D    push        ebp
 0043AB6E    push        43ADC9
 0043AB73    push        dword ptr fs:[eax]
 0043AB76    mov         dword ptr fs:[eax],esp
 0043AB79    mov         eax,dword ptr [ebp-4]
 0043AB7C    cmp         dword ptr [eax+10],0;TPrinter.FPrinters:TStrings
>0043AB80    jne         0043ADA5
 0043AB86    mov         dl,1
 0043AB88    mov         eax,[0041DB24];TStringList
 0043AB8D    call        TObject.Create;TStringList.Create
 0043AB92    mov         edx,dword ptr [ebp-4]
 0043AB95    mov         dword ptr [edx+10],eax;TPrinter.FPrinters:TStrings
 0043AB98    mov         eax,dword ptr [ebp-4]
 0043AB9B    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 0043AB9E    mov         dword ptr [ebp-8],eax
 0043ABA1    xor         eax,eax
 0043ABA3    push        ebp
 0043ABA4    push        43AD83
 0043ABA9    push        dword ptr fs:[eax]
 0043ABAC    mov         dword ptr fs:[eax],esp
 0043ABAF    mov         eax,[0056E624];^gvar_0056B7D8
 0043ABB4    cmp         dword ptr [eax],2
>0043ABB7    jne         0043ABC6
 0043ABB9    mov         dword ptr [ebp-1C],6
 0043ABC0    mov         byte ptr [ebp-29],4
>0043ABC4    jmp         0043ABD1
 0043ABC6    mov         dword ptr [ebp-1C],2
 0043ABCD    mov         byte ptr [ebp-29],5
 0043ABD1    xor         eax,eax
 0043ABD3    mov         dword ptr [ebp-20],eax
 0043ABD6    lea         eax,[ebp-24]
 0043ABD9    push        eax
 0043ABDA    lea         eax,[ebp-20]
 0043ABDD    push        eax
 0043ABDE    push        0
 0043ABE0    push        0
 0043ABE2    xor         eax,eax
 0043ABE4    mov         al,byte ptr [ebp-29]
 0043ABE7    push        eax
 0043ABE8    push        0
 0043ABEA    mov         eax,dword ptr [ebp-1C]
 0043ABED    push        eax
 0043ABEE    call        winspool.EnumPrintersA
 0043ABF3    cmp         dword ptr [ebp-20],0
>0043ABF7    jne         0043AC06
 0043ABF9    xor         eax,eax
 0043ABFB    pop         edx
 0043ABFC    pop         ecx
 0043ABFD    pop         ecx
 0043ABFE    mov         dword ptr fs:[eax],edx
>0043AC01    jmp         0043ADAE
 0043AC06    mov         eax,dword ptr [ebp-20]
 0043AC09    call        @GetMem
 0043AC0E    mov         dword ptr [ebp-14],eax
 0043AC11    xor         eax,eax
 0043AC13    push        ebp
 0043AC14    push        43AD72
 0043AC19    push        dword ptr fs:[eax]
 0043AC1C    mov         dword ptr fs:[eax],esp
 0043AC1F    lea         eax,[ebp-24]
 0043AC22    push        eax
 0043AC23    lea         eax,[ebp-20]
 0043AC26    push        eax
 0043AC27    mov         eax,dword ptr [ebp-20]
 0043AC2A    push        eax
 0043AC2B    mov         eax,dword ptr [ebp-14]
 0043AC2E    push        eax
 0043AC2F    xor         eax,eax
 0043AC31    mov         al,byte ptr [ebp-29]
 0043AC34    push        eax
 0043AC35    push        0
 0043AC37    mov         eax,dword ptr [ebp-1C]
 0043AC3A    push        eax
 0043AC3B    call        winspool.EnumPrintersA
 0043AC40    test        eax,eax
>0043AC42    jne         0043AC56
 0043AC44    call        @TryFinallyExit
 0043AC49    xor         eax,eax
 0043AC4B    pop         edx
 0043AC4C    pop         ecx
 0043AC4D    pop         ecx
 0043AC4E    mov         dword ptr fs:[eax],edx
>0043AC51    jmp         0043ADAE
 0043AC56    mov         eax,dword ptr [ebp-14]
 0043AC59    mov         dword ptr [ebp-18],eax
 0043AC5C    mov         eax,dword ptr [ebp-24]
 0043AC5F    dec         eax
 0043AC60    test        eax,eax
>0043AC62    jl          0043AD59
 0043AC68    inc         eax
 0043AC69    mov         dword ptr [ebp-30],eax
 0043AC6C    mov         dword ptr [ebp-28],0
 0043AC73    cmp         byte ptr [ebp-29],4
>0043AC77    jne         0043ACBB
 0043AC79    mov         eax,dword ptr [ebp-18]
 0043AC7C    mov         dword ptr [ebp-34],eax
 0043AC7F    mov         eax,dword ptr [ebp-34]
 0043AC82    mov         eax,dword ptr [eax]
 0043AC84    push        eax
 0043AC85    push        0
 0043AC87    xor         ecx,ecx
 0043AC89    mov         dl,1
 0043AC8B    mov         eax,[00439F9C];TPrinterDevice
 0043AC90    call        TPrinterDevice.Create;TPrinterDevice.Create
 0043AC95    push        eax
 0043AC96    lea         eax,[ebp-3C]
 0043AC99    mov         edx,dword ptr [ebp-34]
 0043AC9C    mov         edx,dword ptr [edx]
 0043AC9E    call        @LStrFromPChar
 0043ACA3    mov         edx,dword ptr [ebp-3C]
 0043ACA6    mov         eax,dword ptr [ebp-4]
 0043ACA9    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 0043ACAC    pop         ecx
 0043ACAD    mov         ebx,dword ptr [eax]
 0043ACAF    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 0043ACB2    add         dword ptr [ebp-18],0C
>0043ACB6    jmp         0043AD4D
 0043ACBB    mov         eax,dword ptr [ebp-18]
 0043ACBE    mov         dword ptr [ebp-38],eax
 0043ACC1    mov         eax,dword ptr [ebp-38]
 0043ACC4    mov         eax,dword ptr [eax+4]
 0043ACC7    mov         dword ptr [ebp-0C],eax
 0043ACCA    lea         eax,[ebp-0C]
 0043ACCD    call        00439EE4
 0043ACD2    mov         dword ptr [ebp-10],eax
>0043ACD5    jmp         0043AD41
 0043ACD7    mov         eax,dword ptr [ebp-38]
 0043ACDA    mov         eax,dword ptr [eax]
 0043ACDC    push        eax
 0043ACDD    mov         eax,dword ptr [ebp-10]
 0043ACE0    push        eax
 0043ACE1    xor         ecx,ecx
 0043ACE3    mov         dl,1
 0043ACE5    mov         eax,[00439F9C];TPrinterDevice
 0043ACEA    call        TPrinterDevice.Create;TPrinterDevice.Create
 0043ACEF    push        eax
 0043ACF0    lea         eax,[ebp-40]
 0043ACF3    push        eax
 0043ACF4    lea         edx,[ebp-44]
 0043ACF7    mov         eax,[0056E0B0];^SDeviceOnPort:TResStringRec
 0043ACFC    call        LoadResString
 0043AD01    mov         eax,dword ptr [ebp-44]
 0043AD04    mov         edx,dword ptr [ebp-38]
 0043AD07    mov         edx,dword ptr [edx]
 0043AD09    mov         dword ptr [ebp-54],edx
 0043AD0C    mov         byte ptr [ebp-50],6
 0043AD10    mov         edx,dword ptr [ebp-10]
 0043AD13    mov         dword ptr [ebp-4C],edx
 0043AD16    mov         byte ptr [ebp-48],6
 0043AD1A    lea         edx,[ebp-54]
 0043AD1D    mov         ecx,1
 0043AD22    call        0040D630
 0043AD27    mov         edx,dword ptr [ebp-40]
 0043AD2A    mov         eax,dword ptr [ebp-4]
 0043AD2D    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 0043AD30    pop         ecx
 0043AD31    mov         ebx,dword ptr [eax]
 0043AD33    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 0043AD36    lea         eax,[ebp-0C]
 0043AD39    call        00439EE4
 0043AD3E    mov         dword ptr [ebp-10],eax
 0043AD41    mov         eax,dword ptr [ebp-10]
 0043AD44    cmp         byte ptr [eax],0
>0043AD47    jne         0043ACD7
 0043AD49    add         dword ptr [ebp-18],14
 0043AD4D    inc         dword ptr [ebp-28]
 0043AD50    dec         dword ptr [ebp-30]
>0043AD53    jne         0043AC73
 0043AD59    xor         eax,eax
 0043AD5B    pop         edx
 0043AD5C    pop         ecx
 0043AD5D    pop         ecx
 0043AD5E    mov         dword ptr fs:[eax],edx
 0043AD61    push        43AD79
 0043AD66    mov         edx,dword ptr [ebp-20]
 0043AD69    mov         eax,dword ptr [ebp-14]
 0043AD6C    call        @FreeMem
 0043AD71    ret
>0043AD72    jmp         @HandleFinally
>0043AD77    jmp         0043AD66
 0043AD79    xor         eax,eax
 0043AD7B    pop         edx
 0043AD7C    pop         ecx
 0043AD7D    pop         ecx
 0043AD7E    mov         dword ptr fs:[eax],edx
>0043AD81    jmp         0043ADA5
>0043AD83    jmp         @HandleAnyException
 0043AD88    mov         eax,dword ptr [ebp-4]
 0043AD8B    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 0043AD8E    call        TObject.Free
 0043AD93    mov         eax,dword ptr [ebp-4]
 0043AD96    xor         edx,edx
 0043AD98    mov         dword ptr [eax+10],edx;TPrinter.FPrinters:TStrings
 0043AD9B    call        @RaiseAgain
 0043ADA0    call        @DoneExcept
 0043ADA5    mov         eax,dword ptr [ebp-4]
 0043ADA8    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 0043ADAB    mov         dword ptr [ebp-8],eax
 0043ADAE    xor         eax,eax
 0043ADB0    pop         edx
 0043ADB1    pop         ecx
 0043ADB2    pop         ecx
 0043ADB3    mov         dword ptr fs:[eax],edx
 0043ADB6    push        43ADD0
 0043ADBB    lea         eax,[ebp-44]
 0043ADBE    mov         edx,3
 0043ADC3    call        @LStrArrayClr
 0043ADC8    ret
>0043ADC9    jmp         @HandleFinally
>0043ADCE    jmp         0043ADBB
 0043ADD0    mov         eax,dword ptr [ebp-8]
 0043ADD3    pop         edi
 0043ADD4    pop         esi
 0043ADD5    pop         ebx
 0043ADD6    mov         esp,ebp
 0043ADD8    pop         ebp
 0043ADD9    ret
end;*}

//0043ADDC
procedure sub_0043ADDC(?:TPrinter);
begin
{*
 0043ADDC    push        ebp
 0043ADDD    mov         ebp,esp
 0043ADDF    add         esp,0FFFFFBCC
 0043ADE5    xor         edx,edx
 0043ADE7    mov         dword ptr [ebp-434],edx
 0043ADED    mov         dword ptr [ebp-430],edx
 0043ADF3    mov         dword ptr [ebp-42C],edx
 0043ADF9    mov         dword ptr [ebp-4],eax
 0043ADFC    xor         eax,eax
 0043ADFE    push        ebp
 0043ADFF    push        43AFD4
 0043AE04    push        dword ptr fs:[eax]
 0043AE07    mov         dword ptr fs:[eax],esp
 0043AE0A    xor         eax,eax
 0043AE0C    mov         dword ptr [ebp-0C],eax
 0043AE0F    xor         eax,eax
 0043AE11    mov         dword ptr [ebp-10],eax
 0043AE14    lea         eax,[ebp-10]
 0043AE17    push        eax
 0043AE18    lea         eax,[ebp-0C]
 0043AE1B    push        eax
 0043AE1C    push        0
 0043AE1E    push        0
 0043AE20    push        5
 0043AE22    push        0
 0043AE24    push        1
 0043AE26    call        winspool.EnumPrintersA
 0043AE2B    test        eax,eax
>0043AE2D    jne         0043AE65
 0043AE2F    call        kernel32.GetLastError
 0043AE34    cmp         eax,7A
>0043AE37    je          0043AE65
 0043AE39    call        kernel32.GetLastError
 0043AE3E    cmp         eax,7B
>0043AE41    jne         0043AE60
 0043AE43    lea         edx,[ebp-42C]
 0043AE49    mov         eax,[0056E114];^SNoDefaultPrinter:TResStringRec
 0043AE4E    call        LoadResString
 0043AE53    mov         eax,dword ptr [ebp-42C]
 0043AE59    call        00439F50
>0043AE5E    jmp         0043AE65
 0043AE60    call        RaiseLastOSError
 0043AE65    mov         eax,dword ptr [ebp-0C]
 0043AE68    call        0040BC0C
 0043AE6D    mov         dword ptr [ebp-1C],eax
 0043AE70    xor         eax,eax
 0043AE72    push        ebp
 0043AE73    push        43AF94
 0043AE78    push        dword ptr fs:[eax]
 0043AE7B    mov         dword ptr fs:[eax],esp
 0043AE7E    lea         eax,[ebp-10]
 0043AE81    push        eax
 0043AE82    lea         eax,[ebp-0C]
 0043AE85    push        eax
 0043AE86    mov         eax,dword ptr [ebp-0C]
 0043AE89    push        eax
 0043AE8A    mov         eax,dword ptr [ebp-1C]
 0043AE8D    push        eax
 0043AE8E    push        5
 0043AE90    push        0
 0043AE92    push        1
 0043AE94    call        winspool.EnumPrintersA
 0043AE99    cmp         dword ptr [ebp-10],0
>0043AE9D    jbe         0043AEA9
 0043AE9F    mov         eax,dword ptr [ebp-1C]
 0043AEA2    mov         eax,dword ptr [eax]
 0043AEA4    mov         dword ptr [ebp-18],eax
>0043AEA7    jmp         0043AEDD
 0043AEA9    push        3FF
 0043AEAE    lea         eax,[ebp-428]
 0043AEB4    push        eax
 0043AEB5    push        43AFE0;'
 0043AEBA    push        43AFE4;'device'
 0043AEBF    push        43AFEC;'windows'
 0043AEC4    call        kernel32.GetProfileStringA
 0043AEC9    lea         eax,[ebp-428]
 0043AECF    mov         dword ptr [ebp-14],eax
 0043AED2    lea         eax,[ebp-14]
 0043AED5    call        00439EE4
 0043AEDA    mov         dword ptr [ebp-18],eax
 0043AEDD    mov         eax,dword ptr [ebp-4]
 0043AEE0    call        0043AB54
 0043AEE5    mov         dword ptr [ebp-20],eax
 0043AEE8    mov         eax,dword ptr [ebp-20]
 0043AEEB    mov         edx,dword ptr [eax]
 0043AEED    call        dword ptr [edx+14]
 0043AEF0    dec         eax
 0043AEF1    test        eax,eax
>0043AEF3    jl          0043AF7E
 0043AEF9    inc         eax
 0043AEFA    mov         dword ptr [ebp-24],eax
 0043AEFD    mov         dword ptr [ebp-8],0
 0043AF04    mov         edx,dword ptr [ebp-8]
 0043AF07    mov         eax,dword ptr [ebp-20]
 0043AF0A    mov         ecx,dword ptr [eax]
 0043AF0C    call        dword ptr [ecx+18]
 0043AF0F    mov         eax,dword ptr [eax+8]
 0043AF12    push        eax
 0043AF13    lea         eax,[ebp-430]
 0043AF19    mov         edx,dword ptr [ebp-18]
 0043AF1C    call        @LStrFromPChar
 0043AF21    mov         edx,dword ptr [ebp-430]
 0043AF27    pop         eax
 0043AF28    call        0040BF90
 0043AF2D    test        al,al
>0043AF2F    je          0043AF76
 0043AF31    mov         edx,dword ptr [ebp-8]
 0043AF34    mov         eax,dword ptr [ebp-20]
 0043AF37    mov         ecx,dword ptr [eax]
 0043AF39    call        dword ptr [ecx+18]
 0043AF3C    mov         dword ptr [ebp-28],eax
 0043AF3F    mov         eax,dword ptr [ebp-28]
 0043AF42    mov         eax,dword ptr [eax+0C]
 0043AF45    call        @LStrToPChar
 0043AF4A    push        eax
 0043AF4B    push        0
 0043AF4D    mov         eax,dword ptr [ebp-28]
 0043AF50    mov         eax,dword ptr [eax+4]
 0043AF53    call        @LStrToPChar
 0043AF58    push        eax
 0043AF59    mov         eax,dword ptr [ebp-28]
 0043AF5C    mov         eax,dword ptr [eax+8]
 0043AF5F    call        @LStrToPChar
 0043AF64    mov         edx,eax
 0043AF66    mov         eax,dword ptr [ebp-4]
 0043AF69    pop         ecx
 0043AF6A    call        0043A794
 0043AF6F    call        @TryFinallyExit
>0043AF74    jmp         0043AFB6
 0043AF76    inc         dword ptr [ebp-8]
 0043AF79    dec         dword ptr [ebp-24]
>0043AF7C    jne         0043AF04
 0043AF7E    xor         eax,eax
 0043AF80    pop         edx
 0043AF81    pop         ecx
 0043AF82    pop         ecx
 0043AF83    mov         dword ptr fs:[eax],edx
 0043AF86    push        43AF9B
 0043AF8B    mov         eax,dword ptr [ebp-1C]
 0043AF8E    call        @FreeMem
 0043AF93    ret
>0043AF94    jmp         @HandleFinally
>0043AF99    jmp         0043AF8B
 0043AF9B    lea         edx,[ebp-434]
 0043AFA1    mov         eax,[0056E114];^SNoDefaultPrinter:TResStringRec
 0043AFA6    call        LoadResString
 0043AFAB    mov         eax,dword ptr [ebp-434]
 0043AFB1    call        00439F50
 0043AFB6    xor         eax,eax
 0043AFB8    pop         edx
 0043AFB9    pop         ecx
 0043AFBA    pop         ecx
 0043AFBB    mov         dword ptr fs:[eax],edx
 0043AFBE    push        43AFDB
 0043AFC3    lea         eax,[ebp-434]
 0043AFC9    mov         edx,3
 0043AFCE    call        @LStrArrayClr
 0043AFD3    ret
>0043AFD4    jmp         @HandleFinally
>0043AFD9    jmp         0043AFC3
 0043AFDB    mov         esp,ebp
 0043AFDD    pop         ebp
 0043AFDE    ret
*}
end;

//0043B04C
{*procedure sub_0043B04C(?:?);
begin
 0043B04C    push        ebp
 0043B04D    mov         ebp,esp
 0043B04F    push        ecx
 0043B050    mov         dword ptr [ebp-4],eax
 0043B053    mov         eax,dword ptr [ebp-4]
 0043B056    add         eax,8
 0043B059    call        FreeAndNil
 0043B05E    pop         ecx
 0043B05F    pop         ebp
 0043B060    ret
end;*}

//0043B064
{*function sub_0043B064:?;
begin
 0043B064    push        ebp
 0043B065    mov         ebp,esp
 0043B067    push        ecx
 0043B068    cmp         dword ptr ds:[56C078],0;gvar_0056C078:TPrinter
>0043B06F    jne         0043B082
 0043B071    mov         dl,1
 0043B073    mov         eax,[00439E7C];TPrinter
 0043B078    call        TPrinter.Create;TPrinter.Create
 0043B07D    mov         [0056C078],eax;gvar_0056C078:TPrinter
 0043B082    mov         eax,[0056C078];0x0 gvar_0056C078:TPrinter
 0043B087    mov         dword ptr [ebp-4],eax
 0043B08A    mov         eax,dword ptr [ebp-4]
 0043B08D    pop         ecx
 0043B08E    pop         ebp
 0043B08F    ret
end;*}

Initialization
//0043B0CC
{*
 0043B0CC    push        ebp
 0043B0CD    mov         ebp,esp
 0043B0CF    sub         dword ptr ds:[571B70],1
 0043B0D6    pop         ebp
 0043B0D7    ret
*}
Finalization
//0043B090
{*
 0043B090    push        ebp
 0043B091    mov         ebp,esp
 0043B093    xor         eax,eax
 0043B095    push        ebp
 0043B096    push        43B0C1
 0043B09B    push        dword ptr fs:[eax]
 0043B09E    mov         dword ptr fs:[eax],esp
 0043B0A1    inc         dword ptr ds:[571B70]
>0043B0A7    jne         0043B0B3
 0043B0A9    mov         eax,[0056C078];gvar_0056C078:TPrinter
 0043B0AE    call        TObject.Free
 0043B0B3    xor         eax,eax
 0043B0B5    pop         edx
 0043B0B6    pop         ecx
 0043B0B7    pop         ecx
 0043B0B8    mov         dword ptr fs:[eax],edx
 0043B0BB    push        43B0C8
 0043B0C0    ret
>0043B0C1    jmp         @HandleFinally
>0043B0C6    jmp         0043B0C0
 0043B0C8    pop         ebp
 0043B0C9    ret
*}
end.