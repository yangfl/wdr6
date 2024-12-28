//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Clipbrd;

interface

uses
  SysUtils, Classes;

type
  TClipboard = class(TPersistent)
  public
    FOpenRefCount:Integer;//f4
    FClipboardWindow:HWND;//f8
    FAllocated:Boolean;//fC
    FEmptied:Boolean;//fD
    destructor Destroy; virtual;//00446748
    //procedure v0(?:?); virtual;//v0//004464DC
    //procedure v8(?:?); virtual;//v8//0044665C
    //procedure vC(?:?); virtual;//vC//0044616C
    procedure Clear; virtual;//v10//0044603C
    procedure v14; virtual;//v14//004460AC
    procedure v18; virtual;//v18//004460F0
  end;
    procedure Clear;//0044603C
    //procedure sub_00446080(?:?);//00446080
    procedure sub_004460AC;//004460AC
    procedure sub_004460F0;//004460F0
    //procedure sub_0044616C(?:?);//0044616C
    //procedure sub_004461A4(?:?; ?:?; ?:PChar; ?:?);//004461A4
    //procedure sub_00446290(?:?; ?:?);//00446290
    //procedure sub_00446310(?:?; ?:AnsiString);//00446310
    //procedure sub_00446340(?:TClipboard; ?:?);//00446340
    //procedure sub_00446404(?:TClipboard; ?:?);//00446404
    //procedure sub_00446470(?:TClipboard; ?:?);//00446470
    //procedure sub_004464DC(?:?);//004464DC
    //procedure sub_00446554(?:TClipboard; ?:?);//00446554
    //procedure sub_004465D8(?:TClipboard; ?:?);//004465D8
    //procedure sub_0044665C(?:?);//0044665C
    //function sub_004466B8:?;//004466B8
    destructor Destroy;//00446748

implementation

//0044603C
procedure TClipboard.Clear;
begin
{*
 0044603C    push        ebp
 0044603D    mov         ebp,esp
 0044603F    push        ecx
 00446040    mov         dword ptr [ebp-4],eax
 00446043    mov         eax,dword ptr [ebp-4]
 00446046    mov         edx,dword ptr [eax]
 00446048    call        dword ptr [edx+18]
 0044604B    xor         eax,eax
 0044604D    push        ebp
 0044604E    push        446074
 00446053    push        dword ptr fs:[eax]
 00446056    mov         dword ptr fs:[eax],esp
 00446059    call        user32.EmptyClipboard
 0044605E    xor         eax,eax
 00446060    pop         edx
 00446061    pop         ecx
 00446062    pop         ecx
 00446063    mov         dword ptr fs:[eax],edx
 00446066    push        44607B
 0044606B    mov         eax,dword ptr [ebp-4]
 0044606E    mov         edx,dword ptr [eax]
 00446070    call        dword ptr [edx+14]
 00446073    ret
>00446074    jmp         @HandleFinally
>00446079    jmp         0044606B
 0044607B    pop         ecx
 0044607C    pop         ebp
 0044607D    ret
*}
end;

//00446080
{*procedure sub_00446080(?:?);
begin
 00446080    push        ebp
 00446081    mov         ebp,esp
 00446083    push        ecx
 00446084    mov         dword ptr [ebp-4],eax
 00446087    mov         eax,dword ptr [ebp-4]
 0044608A    cmp         dword ptr [eax+4],0
>0044608E    je          004460A8
 00446090    mov         eax,dword ptr [ebp-4]
 00446093    cmp         byte ptr [eax+0D],0
>00446097    jne         004460A8
 00446099    mov         eax,dword ptr [ebp-4]
 0044609C    mov         edx,dword ptr [eax]
 0044609E    call        dword ptr [edx+10]
 004460A1    mov         eax,dword ptr [ebp-4]
 004460A4    mov         byte ptr [eax+0D],1
 004460A8    pop         ecx
 004460A9    pop         ebp
 004460AA    ret
end;*}

//004460AC
procedure sub_004460AC;
begin
{*
 004460AC    push        ebp
 004460AD    mov         ebp,esp
 004460AF    push        ecx
 004460B0    mov         dword ptr [ebp-4],eax
 004460B3    mov         eax,dword ptr [ebp-4]
 004460B6    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>004460BA    je          004460EC
 004460BC    mov         eax,dword ptr [ebp-4]
 004460BF    dec         dword ptr [eax+4];TClipboard.FOpenRefCount:Integer
 004460C2    mov         eax,dword ptr [ebp-4]
 004460C5    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>004460C9    jne         004460EC
 004460CB    call        user32.CloseClipboard
 004460D0    mov         eax,dword ptr [ebp-4]
 004460D3    cmp         byte ptr [eax+0C],0;TClipboard.FAllocated:Boolean
>004460D7    je          004460E4
 004460D9    mov         eax,dword ptr [ebp-4]
 004460DC    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 004460DF    call        0042BB7C
 004460E4    mov         eax,dword ptr [ebp-4]
 004460E7    xor         edx,edx
 004460E9    mov         dword ptr [eax+8],edx;TClipboard.FClipboardWindow:HWND
 004460EC    pop         ecx
 004460ED    pop         ebp
 004460EE    ret
*}
end;

//004460F0
procedure sub_004460F0;
begin
{*
 004460F0    push        ebp
 004460F1    mov         ebp,esp
 004460F3    push        ecx
 004460F4    mov         dword ptr [ebp-4],eax
 004460F7    mov         eax,dword ptr [ebp-4]
 004460FA    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>004460FE    jne         00446162
 00446100    mov         eax,[0056E3C0];^Application:TApplication
 00446105    mov         eax,dword ptr [eax]
 00446107    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 0044610A    mov         edx,dword ptr [ebp-4]
 0044610D    mov         dword ptr [edx+8],eax;TClipboard.FClipboardWindow:HWND
 00446110    mov         eax,dword ptr [ebp-4]
 00446113    cmp         dword ptr [eax+8],0;TClipboard.FClipboardWindow:HWND
>00446117    jne         00446134
 00446119    mov         eax,dword ptr [ebp-4]
 0044611C    push        eax
 0044611D    push        4466E4
 00446122    call        0042BAC0
 00446127    mov         edx,dword ptr [ebp-4]
 0044612A    mov         dword ptr [edx+8],eax;TClipboard.FClipboardWindow:HWND
 0044612D    mov         eax,dword ptr [ebp-4]
 00446130    mov         byte ptr [eax+0C],1;TClipboard.FAllocated:Boolean
 00446134    mov         eax,dword ptr [ebp-4]
 00446137    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 0044613A    push        eax
 0044613B    call        user32.OpenClipboard
 00446140    test        eax,eax
>00446142    jne         0044615B
 00446144    mov         ecx,dword ptr ds:[56E05C];^SCannotOpenClipboard:TResStringRec
 0044614A    mov         dl,1
 0044614C    mov         eax,[0040B004];Exception
 00446151    call        Exception.Create;Exception.Create
 00446156    call        @RaiseExcept
 0044615B    mov         eax,dword ptr [ebp-4]
 0044615E    mov         byte ptr [eax+0D],0;TClipboard.FEmptied:Boolean
 00446162    mov         eax,dword ptr [ebp-4]
 00446165    inc         dword ptr [eax+4];TClipboard.FOpenRefCount:Integer
 00446168    pop         ecx
 00446169    pop         ebp
 0044616A    ret
*}
end;

//0044616C
{*procedure sub_0044616C(?:?);
begin
 0044616C    push        ebp
 0044616D    mov         ebp,esp
 0044616F    add         esp,0FFFFFFF8
 00446172    mov         dword ptr [ebp-8],edx
 00446175    mov         dword ptr [ebp-4],eax
 00446178    mov         eax,dword ptr [ebp-8]
 0044617B    mov         eax,dword ptr [eax+8]
 0044617E    push        eax
 0044617F    mov         eax,dword ptr [ebp-8]
 00446182    mov         eax,dword ptr [eax+4]
 00446185    push        eax
 00446186    mov         eax,dword ptr [ebp-8]
 00446189    mov         eax,dword ptr [eax]
 0044618B    push        eax
 0044618C    mov         eax,dword ptr [ebp-4]
 0044618F    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 00446192    push        eax
 00446193    call        user32.DefWindowProcA
 00446198    mov         edx,dword ptr [ebp-8]
 0044619B    mov         dword ptr [edx+0C],eax
 0044619E    pop         ecx
 0044619F    pop         ecx
 004461A0    pop         ebp
 004461A1    ret
end;*}

//004461A4
{*procedure sub_004461A4(?:?; ?:?; ?:PChar; ?:?);
begin
 004461A4    push        ebp
 004461A5    mov         ebp,esp
 004461A7    add         esp,0FFFFFFEC
 004461AA    push        ebx
 004461AB    push        esi
 004461AC    push        edi
 004461AD    mov         dword ptr [ebp-0C],ecx
 004461B0    mov         word ptr [ebp-6],dx
 004461B4    mov         dword ptr [ebp-4],eax
 004461B7    mov         eax,dword ptr [ebp-4]
 004461BA    mov         edx,dword ptr [eax]
 004461BC    call        dword ptr [edx+18]
 004461BF    xor         eax,eax
 004461C1    push        ebp
 004461C2    push        446280
 004461C7    push        dword ptr fs:[eax]
 004461CA    mov         dword ptr fs:[eax],esp
 004461CD    mov         eax,dword ptr [ebp+8]
 004461D0    push        eax
 004461D1    push        2002
 004461D6    call        kernel32.GlobalAlloc
 004461DB    mov         dword ptr [ebp-10],eax
 004461DE    xor         eax,eax
 004461E0    push        ebp
 004461E1    push        446252
 004461E6    push        dword ptr fs:[eax]
 004461E9    mov         dword ptr fs:[eax],esp
 004461EC    mov         eax,dword ptr [ebp-10]
 004461EF    push        eax
 004461F0    call        kernel32.GlobalLock
 004461F5    mov         dword ptr [ebp-14],eax
 004461F8    xor         eax,eax
 004461FA    push        ebp
 004461FB    push        446241
 00446200    push        dword ptr fs:[eax]
 00446203    mov         dword ptr fs:[eax],esp
 00446206    mov         edx,dword ptr [ebp-14]
 00446209    mov         eax,dword ptr [ebp-0C]
 0044620C    mov         ecx,dword ptr [ebp+8]
 0044620F    call        Move
 00446214    mov         eax,dword ptr [ebp-4]
 00446217    call        00446080
 0044621C    mov         eax,dword ptr [ebp-10]
 0044621F    push        eax
 00446220    movzx       eax,word ptr [ebp-6]
 00446224    push        eax
 00446225    call        user32.SetClipboardData
 0044622A    xor         eax,eax
 0044622C    pop         edx
 0044622D    pop         ecx
 0044622E    pop         ecx
 0044622F    mov         dword ptr fs:[eax],edx
 00446232    push        446248
 00446237    mov         eax,dword ptr [ebp-10]
 0044623A    push        eax
 0044623B    call        kernel32.GlobalUnlock
 00446240    ret
>00446241    jmp         @HandleFinally
>00446246    jmp         00446237
 00446248    xor         eax,eax
 0044624A    pop         edx
 0044624B    pop         ecx
 0044624C    pop         ecx
 0044624D    mov         dword ptr fs:[eax],edx
>00446250    jmp         0044626A
>00446252    jmp         @HandleAnyException
 00446257    mov         eax,dword ptr [ebp-10]
 0044625A    push        eax
 0044625B    call        kernel32.GlobalFree
 00446260    call        @RaiseAgain
 00446265    call        @DoneExcept
 0044626A    xor         eax,eax
 0044626C    pop         edx
 0044626D    pop         ecx
 0044626E    pop         ecx
 0044626F    mov         dword ptr fs:[eax],edx
 00446272    push        446287
 00446277    mov         eax,dword ptr [ebp-4]
 0044627A    mov         edx,dword ptr [eax]
 0044627C    call        dword ptr [edx+14]
 0044627F    ret
>00446280    jmp         @HandleFinally
>00446285    jmp         00446277
 00446287    pop         edi
 00446288    pop         esi
 00446289    pop         ebx
 0044628A    mov         esp,ebp
 0044628C    pop         ebp
 0044628D    ret         4
end;*}

//00446290
{*procedure sub_00446290(?:?; ?:?);
begin
 00446290    push        ebp
 00446291    mov         ebp,esp
 00446293    add         esp,0FFFFFFF4
 00446296    mov         dword ptr [ebp-8],edx
 00446299    mov         dword ptr [ebp-4],eax
 0044629C    mov         eax,dword ptr [ebp-4]
 0044629F    mov         edx,dword ptr [eax]
 004462A1    call        dword ptr [edx+18]
 004462A4    push        1
 004462A6    call        user32.GetClipboardData
 004462AB    mov         dword ptr [ebp-0C],eax
 004462AE    xor         eax,eax
 004462B0    push        ebp
 004462B1    push        446304
 004462B6    push        dword ptr fs:[eax]
 004462B9    mov         dword ptr fs:[eax],esp
 004462BC    cmp         dword ptr [ebp-0C],0
>004462C0    je          004462D7
 004462C2    mov         eax,dword ptr [ebp-0C]
 004462C5    push        eax
 004462C6    call        kernel32.GlobalLock
 004462CB    mov         edx,eax
 004462CD    mov         eax,dword ptr [ebp-8]
 004462D0    call        @LStrFromPChar
>004462D5    jmp         004462DF
 004462D7    mov         eax,dword ptr [ebp-8]
 004462DA    call        @LStrClr
 004462DF    xor         eax,eax
 004462E1    pop         edx
 004462E2    pop         ecx
 004462E3    pop         ecx
 004462E4    mov         dword ptr fs:[eax],edx
 004462E7    push        44630B
 004462EC    cmp         dword ptr [ebp-0C],0
>004462F0    je          004462FB
 004462F2    mov         eax,dword ptr [ebp-0C]
 004462F5    push        eax
 004462F6    call        kernel32.GlobalUnlock
 004462FB    mov         eax,dword ptr [ebp-4]
 004462FE    mov         edx,dword ptr [eax]
 00446300    call        dword ptr [edx+14]
 00446303    ret
>00446304    jmp         @HandleFinally
>00446309    jmp         004462EC
 0044630B    mov         esp,ebp
 0044630D    pop         ebp
 0044630E    ret
end;*}

//00446310
{*procedure sub_00446310(?:?; ?:AnsiString);
begin
 00446310    push        ebp
 00446311    mov         ebp,esp
 00446313    add         esp,0FFFFFFF8
 00446316    mov         dword ptr [ebp-8],edx
 00446319    mov         dword ptr [ebp-4],eax
 0044631C    mov         eax,dword ptr [ebp-8]
 0044631F    call        @LStrLen
 00446324    inc         eax
 00446325    push        eax
 00446326    mov         eax,dword ptr [ebp-8]
 00446329    call        @LStrToPChar
 0044632E    mov         ecx,eax
 00446330    mov         dx,1
 00446334    mov         eax,dword ptr [ebp-4]
 00446337    call        004461A4
 0044633C    pop         ecx
 0044633D    pop         ecx
 0044633E    pop         ebp
 0044633F    ret
end;*}

//00446340
{*procedure sub_00446340(?:TClipboard; ?:?);
begin
 00446340    push        ebp
 00446341    mov         ebp,esp
 00446343    add         esp,0FFFFFFEC
 00446346    mov         dword ptr [ebp-8],edx
 00446349    mov         dword ptr [ebp-4],eax
 0044634C    mov         eax,dword ptr [ebp-4]
 0044634F    mov         edx,dword ptr [eax]
 00446351    call        dword ptr [edx+18]
 00446354    xor         eax,eax
 00446356    push        ebp
 00446357    push        4463F9
 0044635C    push        dword ptr fs:[eax]
 0044635F    mov         dword ptr fs:[eax],esp
 00446362    push        0
 00446364    call        user32.EnumClipboardFormats
 00446369    mov         word ptr [ebp-0E],ax
 0044636D    cmp         word ptr [ebp-0E],0
>00446372    je          004463CC
 00446374    mov         dx,word ptr [ebp-0E]
 00446378    mov         eax,[0042CC9C];TPicture
 0044637D    call        00431DDC
 00446382    test        al,al
>00446384    je          004463B7
 00446386    movzx       eax,word ptr [ebp-0E]
 0044638A    push        eax
 0044638B    call        user32.GetClipboardData
 00446390    mov         dword ptr [ebp-0C],eax
 00446393    push        9
 00446395    call        user32.GetClipboardData
 0044639A    mov         dword ptr [ebp-14],eax
 0044639D    mov         eax,dword ptr [ebp-14]
 004463A0    push        eax
 004463A1    mov         ecx,dword ptr [ebp-0C]
 004463A4    mov         dx,word ptr [ebp-0E]
 004463A8    mov         eax,dword ptr [ebp-8]
 004463AB    call        00431CBC
 004463B0    call        @TryFinallyExit
>004463B5    jmp         00446400
 004463B7    movzx       eax,word ptr [ebp-0E]
 004463BB    push        eax
 004463BC    call        user32.EnumClipboardFormats
 004463C1    mov         word ptr [ebp-0E],ax
 004463C5    cmp         word ptr [ebp-0E],0
>004463CA    jne         00446374
 004463CC    mov         ecx,dword ptr ds:[56E0E0];^SInvalidClipFmt:TResStringRec
 004463D2    mov         dl,1
 004463D4    mov         eax,[0040B004];Exception
 004463D9    call        Exception.Create;Exception.Create
 004463DE    call        @RaiseExcept
 004463E3    xor         eax,eax
 004463E5    pop         edx
 004463E6    pop         ecx
 004463E7    pop         ecx
 004463E8    mov         dword ptr fs:[eax],edx
 004463EB    push        446400
 004463F0    mov         eax,dword ptr [ebp-4]
 004463F3    mov         edx,dword ptr [eax]
 004463F5    call        dword ptr [edx+14]
 004463F8    ret
>004463F9    jmp         @HandleFinally
>004463FE    jmp         004463F0
 00446400    mov         esp,ebp
 00446402    pop         ebp
 00446403    ret
end;*}

//00446404
{*procedure sub_00446404(?:TClipboard; ?:?);
begin
 00446404    push        ebp
 00446405    mov         ebp,esp
 00446407    add         esp,0FFFFFFF0
 0044640A    push        ebx
 0044640B    mov         dword ptr [ebp-8],edx
 0044640E    mov         dword ptr [ebp-4],eax
 00446411    mov         eax,dword ptr [ebp-4]
 00446414    mov         edx,dword ptr [eax]
 00446416    call        dword ptr [edx+18]
 00446419    xor         eax,eax
 0044641B    push        ebp
 0044641C    push        446464
 00446421    push        dword ptr fs:[eax]
 00446424    mov         dword ptr fs:[eax],esp
 00446427    push        2
 00446429    call        user32.GetClipboardData
 0044642E    mov         dword ptr [ebp-0C],eax
 00446431    push        9
 00446433    call        user32.GetClipboardData
 00446438    mov         dword ptr [ebp-10],eax
 0044643B    mov         eax,dword ptr [ebp-10]
 0044643E    push        eax
 0044643F    mov         ecx,dword ptr [ebp-0C]
 00446442    mov         dx,2
 00446446    mov         eax,dword ptr [ebp-8]
 00446449    mov         ebx,dword ptr [eax]
 0044644B    call        dword ptr [ebx+5C]
 0044644E    xor         eax,eax
 00446450    pop         edx
 00446451    pop         ecx
 00446452    pop         ecx
 00446453    mov         dword ptr fs:[eax],edx
 00446456    push        44646B
 0044645B    mov         eax,dword ptr [ebp-4]
 0044645E    mov         edx,dword ptr [eax]
 00446460    call        dword ptr [edx+14]
 00446463    ret
>00446464    jmp         @HandleFinally
>00446469    jmp         0044645B
 0044646B    pop         ebx
 0044646C    mov         esp,ebp
 0044646E    pop         ebp
 0044646F    ret
end;*}

//00446470
{*procedure sub_00446470(?:TClipboard; ?:?);
begin
 00446470    push        ebp
 00446471    mov         ebp,esp
 00446473    add         esp,0FFFFFFF0
 00446476    push        ebx
 00446477    mov         dword ptr [ebp-8],edx
 0044647A    mov         dword ptr [ebp-4],eax
 0044647D    mov         eax,dword ptr [ebp-4]
 00446480    mov         edx,dword ptr [eax]
 00446482    call        dword ptr [edx+18]
 00446485    xor         eax,eax
 00446487    push        ebp
 00446488    push        4464D0
 0044648D    push        dword ptr fs:[eax]
 00446490    mov         dword ptr fs:[eax],esp
 00446493    push        3
 00446495    call        user32.GetClipboardData
 0044649A    mov         dword ptr [ebp-0C],eax
 0044649D    push        9
 0044649F    call        user32.GetClipboardData
 004464A4    mov         dword ptr [ebp-10],eax
 004464A7    mov         eax,dword ptr [ebp-10]
 004464AA    push        eax
 004464AB    mov         ecx,dword ptr [ebp-0C]
 004464AE    mov         dx,3
 004464B2    mov         eax,dword ptr [ebp-8]
 004464B5    mov         ebx,dword ptr [eax]
 004464B7    call        dword ptr [ebx+5C]
 004464BA    xor         eax,eax
 004464BC    pop         edx
 004464BD    pop         ecx
 004464BE    pop         ecx
 004464BF    mov         dword ptr fs:[eax],edx
 004464C2    push        4464D7
 004464C7    mov         eax,dword ptr [ebp-4]
 004464CA    mov         edx,dword ptr [eax]
 004464CC    call        dword ptr [edx+14]
 004464CF    ret
>004464D0    jmp         @HandleFinally
>004464D5    jmp         004464C7
 004464D7    pop         ebx
 004464D8    mov         esp,ebp
 004464DA    pop         ebp
 004464DB    ret
end;*}

//004464DC
{*procedure sub_004464DC(?:?);
begin
 004464DC    push        ebp
 004464DD    mov         ebp,esp
 004464DF    add         esp,0FFFFFFF8
 004464E2    mov         dword ptr [ebp-8],edx
 004464E5    mov         dword ptr [ebp-4],eax
 004464E8    mov         eax,dword ptr [ebp-8]
 004464EB    mov         edx,dword ptr ds:[42CC9C];TPicture
 004464F1    call        @IsClass
 004464F6    test        al,al
>004464F8    je          00446507
 004464FA    mov         edx,dword ptr [ebp-8]
 004464FD    mov         eax,dword ptr [ebp-4]
 00446500    call        00446340
>00446505    jmp         00446550
 00446507    mov         eax,dword ptr [ebp-8]
 0044650A    mov         edx,dword ptr ds:[42CF48];TBitmap
 00446510    call        @IsClass
 00446515    test        al,al
>00446517    je          00446526
 00446519    mov         edx,dword ptr [ebp-8]
 0044651C    mov         eax,dword ptr [ebp-4]
 0044651F    call        00446404
>00446524    jmp         00446550
 00446526    mov         eax,dword ptr [ebp-8]
 00446529    mov         edx,dword ptr ds:[42CE08];TMetafile
 0044652F    call        @IsClass
 00446534    test        al,al
>00446536    je          00446545
 00446538    mov         edx,dword ptr [ebp-8]
 0044653B    mov         eax,dword ptr [ebp-4]
 0044653E    call        00446470
>00446543    jmp         00446550
 00446545    mov         edx,dword ptr [ebp-8]
 00446548    mov         eax,dword ptr [ebp-4]
 0044654B    call        00420BD8
 00446550    pop         ecx
 00446551    pop         ecx
 00446552    pop         ebp
 00446553    ret
end;*}

//00446554
{*procedure sub_00446554(?:TClipboard; ?:?);
begin
 00446554    push        ebp
 00446555    mov         ebp,esp
 00446557    add         esp,0FFFFFFEC
 0044655A    mov         dword ptr [ebp-8],edx
 0044655D    mov         dword ptr [ebp-4],eax
 00446560    mov         eax,dword ptr [ebp-4]
 00446563    mov         edx,dword ptr [eax]
 00446565    call        dword ptr [edx+18]
 00446568    xor         eax,eax
 0044656A    push        ebp
 0044656B    push        4465CA
 00446570    push        dword ptr fs:[eax]
 00446573    mov         dword ptr fs:[eax],esp
 00446576    mov         eax,dword ptr [ebp-4]
 00446579    call        00446080
 0044657E    xor         eax,eax
 00446580    mov         dword ptr [ebp-14],eax
 00446583    lea         eax,[ebp-14]
 00446586    push        eax
 00446587    lea         ecx,[ebp-0C]
 0044658A    lea         edx,[ebp-0E]
 0044658D    mov         eax,dword ptr [ebp-8]
 00446590    call        00431DA4
 00446595    mov         eax,dword ptr [ebp-0C]
 00446598    push        eax
 00446599    movzx       eax,word ptr [ebp-0E]
 0044659D    push        eax
 0044659E    call        user32.SetClipboardData
 004465A3    cmp         dword ptr [ebp-14],0
>004465A7    je          004465B4
 004465A9    mov         eax,dword ptr [ebp-14]
 004465AC    push        eax
 004465AD    push        9
 004465AF    call        user32.SetClipboardData
 004465B4    xor         eax,eax
 004465B6    pop         edx
 004465B7    pop         ecx
 004465B8    pop         ecx
 004465B9    mov         dword ptr fs:[eax],edx
 004465BC    push        4465D1
 004465C1    mov         eax,dword ptr [ebp-4]
 004465C4    mov         edx,dword ptr [eax]
 004465C6    call        dword ptr [edx+14]
 004465C9    ret
>004465CA    jmp         @HandleFinally
>004465CF    jmp         004465C1
 004465D1    mov         esp,ebp
 004465D3    pop         ebp
 004465D4    ret
end;*}

//004465D8
{*procedure sub_004465D8(?:TClipboard; ?:?);
begin
 004465D8    push        ebp
 004465D9    mov         ebp,esp
 004465DB    add         esp,0FFFFFFEC
 004465DE    push        ebx
 004465DF    mov         dword ptr [ebp-8],edx
 004465E2    mov         dword ptr [ebp-4],eax
 004465E5    mov         eax,dword ptr [ebp-4]
 004465E8    mov         edx,dword ptr [eax]
 004465EA    call        dword ptr [edx+18]
 004465ED    xor         eax,eax
 004465EF    push        ebp
 004465F0    push        44664F
 004465F5    push        dword ptr fs:[eax]
 004465F8    mov         dword ptr fs:[eax],esp
 004465FB    mov         eax,dword ptr [ebp-4]
 004465FE    call        00446080
 00446603    xor         eax,eax
 00446605    mov         dword ptr [ebp-14],eax
 00446608    lea         eax,[ebp-14]
 0044660B    push        eax
 0044660C    lea         ecx,[ebp-0C]
 0044660F    lea         edx,[ebp-0E]
 00446612    mov         eax,dword ptr [ebp-8]
 00446615    mov         ebx,dword ptr [eax]
 00446617    call        dword ptr [ebx+60]
 0044661A    mov         eax,dword ptr [ebp-0C]
 0044661D    push        eax
 0044661E    movzx       eax,word ptr [ebp-0E]
 00446622    push        eax
 00446623    call        user32.SetClipboardData
 00446628    cmp         dword ptr [ebp-14],0
>0044662C    je          00446639
 0044662E    mov         eax,dword ptr [ebp-14]
 00446631    push        eax
 00446632    push        9
 00446634    call        user32.SetClipboardData
 00446639    xor         eax,eax
 0044663B    pop         edx
 0044663C    pop         ecx
 0044663D    pop         ecx
 0044663E    mov         dword ptr fs:[eax],edx
 00446641    push        446656
 00446646    mov         eax,dword ptr [ebp-4]
 00446649    mov         edx,dword ptr [eax]
 0044664B    call        dword ptr [edx+14]
 0044664E    ret
>0044664F    jmp         @HandleFinally
>00446654    jmp         00446646
 00446656    pop         ebx
 00446657    mov         esp,ebp
 00446659    pop         ebp
 0044665A    ret
end;*}

//0044665C
{*procedure sub_0044665C(?:?);
begin
 0044665C    push        ebp
 0044665D    mov         ebp,esp
 0044665F    add         esp,0FFFFFFF8
 00446662    mov         dword ptr [ebp-8],edx
 00446665    mov         dword ptr [ebp-4],eax
 00446668    mov         eax,dword ptr [ebp-8]
 0044666B    mov         edx,dword ptr ds:[42CC9C];TPicture
 00446671    call        @IsClass
 00446676    test        al,al
>00446678    je          00446687
 0044667A    mov         edx,dword ptr [ebp-8]
 0044667D    mov         eax,dword ptr [ebp-4]
 00446680    call        00446554
>00446685    jmp         004466B1
 00446687    mov         eax,dword ptr [ebp-8]
 0044668A    mov         edx,dword ptr ds:[42CB48];TGraphic
 00446690    call        @IsClass
 00446695    test        al,al
>00446697    je          004466A6
 00446699    mov         edx,dword ptr [ebp-8]
 0044669C    mov         eax,dword ptr [ebp-4]
 0044669F    call        004465D8
>004466A4    jmp         004466B1
 004466A6    mov         edx,dword ptr [ebp-8]
 004466A9    mov         eax,dword ptr [ebp-4]
 004466AC    call        00420AD4
 004466B1    pop         ecx
 004466B2    pop         ecx
 004466B3    pop         ebp
 004466B4    ret
end;*}

//004466B8
{*function sub_004466B8:?;
begin
 004466B8    push        ebp
 004466B9    mov         ebp,esp
 004466BB    push        ecx
 004466BC    cmp         dword ptr ds:[571CE4],0;FClipboard:TClipboard
>004466C3    jne         004466D6
 004466C5    mov         dl,1
 004466C7    mov         eax,[00445FA4];TClipboard
 004466CC    call        TObject.Create;TClipboard.Create
 004466D1    mov         [00571CE4],eax;FClipboard:TClipboard
 004466D6    mov         eax,[00571CE4];0x0 FClipboard:TClipboard
 004466DB    mov         dword ptr [ebp-4],eax
 004466DE    mov         eax,dword ptr [ebp-4]
 004466E1    pop         ecx
 004466E2    pop         ebp
 004466E3    ret
end;*}

//00446748
destructor TClipboard.Destroy;
begin
{*
 00446748    push        ebp
 00446749    mov         ebp,esp
 0044674B    add         esp,0FFFFFFF8
 0044674E    call        @BeforeDestruction
 00446753    mov         byte ptr [ebp-5],dl
 00446756    mov         dword ptr [ebp-4],eax
 00446759    mov         eax,[00571CE4];0x0 FClipboard:TClipboard
 0044675E    cmp         eax,dword ptr [ebp-4]
>00446761    jne         0044676A
 00446763    xor         eax,eax
 00446765    mov         [00571CE4],eax;FClipboard:TClipboard
 0044676A    mov         dl,byte ptr [ebp-5]
 0044676D    and         dl,0FC
 00446770    mov         eax,dword ptr [ebp-4]
 00446773    call        TPersistent.Destroy
 00446778    cmp         byte ptr [ebp-5],0
>0044677C    jle         00446786
 0044677E    mov         eax,dword ptr [ebp-4]
 00446781    call        @ClassDestroy
 00446786    pop         ecx
 00446787    pop         ecx
 00446788    pop         ebp
 00446789    ret
*}
end;

Initialization
//004467C8
{*
 004467C8    push        ebp
 004467C9    mov         ebp,esp
 004467CB    sub         dword ptr ds:[571CE0],1
>004467D2    jae         004467FB
 004467D4    push        446800;'Delphi Picture'
 004467D9    call        user32.RegisterClipboardFormatA
 004467DE    mov         [00571CDC],ax;gvar_00571CDC:LongWord
 004467E4    push        446810;'Delphi Component'
 004467E9    call        user32.RegisterClipboardFormatA
 004467EE    mov         [00571CDE],ax;gvar_00571CDE:LongWord
 004467F4    xor         eax,eax
 004467F6    mov         [00571CE4],eax;FClipboard:TClipboard
 004467FB    pop         ebp
 004467FC    ret
*}
Finalization
//0044678C
{*
 0044678C    push        ebp
 0044678D    mov         ebp,esp
 0044678F    xor         eax,eax
 00446791    push        ebp
 00446792    push        4467BD
 00446797    push        dword ptr fs:[eax]
 0044679A    mov         dword ptr fs:[eax],esp
 0044679D    inc         dword ptr ds:[571CE0]
>004467A3    jne         004467AF
 004467A5    mov         eax,[00571CE4];FClipboard:TClipboard
 004467AA    call        TObject.Free
 004467AF    xor         eax,eax
 004467B1    pop         edx
 004467B2    pop         ecx
 004467B3    pop         ecx
 004467B4    mov         dword ptr fs:[eax],edx
 004467B7    push        4467C4
 004467BC    ret
>004467BD    jmp         @HandleFinally
>004467C2    jmp         004467BC
 004467C4    pop         ebp
 004467C5    ret
*}
end.