//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Themes;

interface

uses
  SysUtils, Classes;

type
  TThemeServices = class(TObject)
  public
    FNewComCtrls:Boolean;//f4
    FThemesAvailable:Boolean;//f5
    FUseThemes:Boolean;//f6
    FThemeData:TThemeData;//f8
    FOnThemeChange:TNotifyEvent;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    destructor Destroy; virtual;//0046C04C
    procedure v0; virtual;//v0//0046C120
    constructor v4; virtual;//v4//0046BFEC
  end;
    //function sub_0046BFC0:?;//0046BFC0
    constructor sub_0046BFEC;//0046BFEC
    destructor Destroy;//0046C04C
    //function sub_0046C08C(?:?; ?:?):?;//0046C08C
    //function sub_0046C0EC(?:?):?;//0046C0EC
    procedure sub_0046C120;//0046C120
    procedure sub_0046C144(?:TThemeServices);//0046C144
    //procedure sub_0046C194(?:?);//0046C194
    //procedure sub_0046C1B0(?:?; ?:?; ?:?; ?:?; ?:?);//0046C1B0
    //procedure sub_0046C204(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0046C204
    //procedure sub_0046C254(?:?; ?:HDC; ?:?; ?:?; ?:?);//0046C254
    //procedure sub_0046C29C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0046C29C
    //procedure sub_0046C2E8(?:?; ?:HWND; ?:?; ?:?; ?:?; ?:?);//0046C2E8
    //procedure sub_0046C360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0046C360
    //procedure sub_0046C3C8(?:?; ?:?; ?:?);//0046C3C8
    //procedure sub_0046C488(?:?; ?:?; ?:?);//0046C488
    //procedure sub_0046C4F0(?:?; ?:?; ?:?);//0046C4F0
    //procedure sub_0046C570(?:?; ?:?; ?:?);//0046C570
    //procedure sub_0046C64C(?:?; ?:?; ?:?);//0046C64C
    //procedure sub_0046C7B4(?:?; ?:?; ?:?);//0046C7B4
    //procedure sub_0046CC20(?:?; ?:TWinControl; ?:?);//0046CC20
    procedure sub_0046CD94(?:TThemeServices);//0046CD94

implementation

//0046BFC0
{*function sub_0046BFC0:?;
begin
 0046BFC0    push        ebp
 0046BFC1    mov         ebp,esp
 0046BFC3    push        ecx
 0046BFC4    cmp         dword ptr ds:[571D7C],0;InternalServices:TThemeServices
>0046BFCB    jne         0046BFDC
 0046BFCD    mov         dl,1
 0046BFCF    mov         eax,[0056C590];^gvar_0046BDE4
 0046BFD4    call        dword ptr [eax+4]
 0046BFD7    mov         [00571D7C],eax;InternalServices:TThemeServices
 0046BFDC    mov         eax,[00571D7C];0x0 InternalServices:TThemeServices
 0046BFE1    mov         dword ptr [ebp-4],eax
 0046BFE4    mov         eax,dword ptr [ebp-4]
 0046BFE7    pop         ecx
 0046BFE8    pop         ebp
 0046BFE9    ret
end;*}

//0046BFEC
constructor sub_0046BFEC;
begin
{*
 0046BFEC    push        ebp
 0046BFED    mov         ebp,esp
 0046BFEF    add         esp,0FFFFFFF8
 0046BFF2    test        dl,dl
>0046BFF4    je          0046BFFE
 0046BFF6    add         esp,0FFFFFFF0
 0046BFF9    call        @ClassCreate
 0046BFFE    mov         byte ptr [ebp-5],dl
 0046C001    mov         dword ptr [ebp-4],eax
 0046C004    call        0043B808
 0046C009    mov         edx,dword ptr [ebp-4]
 0046C00C    mov         byte ptr [edx+5],al;TThemeServices.FThemesAvailable:Boolean
 0046C00F    call        GetComCtlVersion
 0046C014    cmp         eax,60000
 0046C019    setge       al
 0046C01C    mov         edx,dword ptr [ebp-4]
 0046C01F    mov         byte ptr [edx+4],al;TThemeServices.FNewComCtrls:Boolean
 0046C022    mov         eax,dword ptr [ebp-4]
 0046C025    call        0046CD94
 0046C02A    mov         eax,dword ptr [ebp-4]
 0046C02D    cmp         byte ptr [ebp-5],0
>0046C031    je          0046C042
 0046C033    call        @AfterConstruction
 0046C038    pop         dword ptr fs:[0]
 0046C03F    add         esp,0C
 0046C042    mov         eax,dword ptr [ebp-4]
 0046C045    pop         ecx
 0046C046    pop         ecx
 0046C047    pop         ebp
 0046C048    ret
*}
end;

//0046C04C
destructor TThemeServices.Destroy;
begin
{*
 0046C04C    push        ebp
 0046C04D    mov         ebp,esp
 0046C04F    add         esp,0FFFFFFF8
 0046C052    call        @BeforeDestruction
 0046C057    mov         byte ptr [ebp-5],dl
 0046C05A    mov         dword ptr [ebp-4],eax
 0046C05D    mov         eax,dword ptr [ebp-4]
 0046C060    call        0046C144
 0046C065    call        0043B648
 0046C06A    mov         dl,byte ptr [ebp-5]
 0046C06D    and         dl,0FC
 0046C070    mov         eax,dword ptr [ebp-4]
 0046C073    call        TObject.Destroy
 0046C078    cmp         byte ptr [ebp-5],0
>0046C07C    jle         0046C086
 0046C07E    mov         eax,dword ptr [ebp-4]
 0046C081    call        @ClassDestroy
 0046C086    pop         ecx
 0046C087    pop         ecx
 0046C088    pop         ebp
 0046C089    ret
*}
end;

//0046C08C
{*function sub_0046C08C(?:?; ?:?):?;
begin
 0046C08C    push        ebp
 0046C08D    mov         ebp,esp
 0046C08F    add         esp,0FFFFFFF4
 0046C092    mov         byte ptr [ebp-5],dl
 0046C095    mov         dword ptr [ebp-4],eax
 0046C098    mov         eax,dword ptr [ebp-4]
 0046C09B    cmp         byte ptr [eax+6],0
>0046C09F    je          0046C0D4
 0046C0A1    xor         eax,eax
 0046C0A3    mov         al,byte ptr [ebp-5]
 0046C0A6    mov         edx,dword ptr [ebp-4]
 0046C0A9    cmp         dword ptr [edx+eax*4+8],0
>0046C0AE    jne         0046C0D4
 0046C0B0    xor         eax,eax
 0046C0B2    mov         al,byte ptr [ebp-5]
 0046C0B5    mov         eax,dword ptr [eax*4+56C598]
 0046C0BC    push        eax
 0046C0BD    push        0
 0046C0BF    mov         eax,[0056E148];^gvar_00571BAC:Pointer
 0046C0C4    mov         eax,dword ptr [eax]
 0046C0C6    call        eax
 0046C0C8    xor         edx,edx
 0046C0CA    mov         dl,byte ptr [ebp-5]
 0046C0CD    mov         ecx,dword ptr [ebp-4]
 0046C0D0    mov         dword ptr [ecx+edx*4+8],eax
 0046C0D4    xor         eax,eax
 0046C0D6    mov         al,byte ptr [ebp-5]
 0046C0D9    mov         edx,dword ptr [ebp-4]
 0046C0DC    mov         eax,dword ptr [edx+eax*4+8]
 0046C0E0    mov         dword ptr [ebp-0C],eax
 0046C0E3    mov         eax,dword ptr [ebp-0C]
 0046C0E6    mov         esp,ebp
 0046C0E8    pop         ebp
 0046C0E9    ret
end;*}

//0046C0EC
{*function sub_0046C0EC(?:?):?;
begin
 0046C0EC    push        ebp
 0046C0ED    mov         ebp,esp
 0046C0EF    add         esp,0FFFFFFF8
 0046C0F2    mov         dword ptr [ebp-4],eax
 0046C0F5    mov         eax,dword ptr [ebp-4]
 0046C0F8    cmp         byte ptr [eax+5],0
>0046C0FC    je          0046C110
 0046C0FE    mov         eax,dword ptr [ebp-4]
 0046C101    cmp         byte ptr [eax+6],0
>0046C105    je          0046C110
 0046C107    mov         eax,dword ptr [ebp-4]
 0046C10A    cmp         byte ptr [eax+4],0
>0046C10E    jne         0046C114
 0046C110    xor         eax,eax
>0046C112    jmp         0046C116
 0046C114    mov         al,1
 0046C116    mov         byte ptr [ebp-5],al
 0046C119    mov         al,byte ptr [ebp-5]
 0046C11C    pop         ecx
 0046C11D    pop         ecx
 0046C11E    pop         ebp
 0046C11F    ret
end;*}

//0046C120
procedure sub_0046C120;
begin
{*
 0046C120    push        ebp
 0046C121    mov         ebp,esp
 0046C123    push        ecx
 0046C124    push        ebx
 0046C125    mov         dword ptr [ebp-4],eax
 0046C128    mov         eax,dword ptr [ebp-4]
 0046C12B    cmp         word ptr [eax+6A],0;TThemeServices.?f6A:word
>0046C130    je          0046C13E
 0046C132    mov         ebx,dword ptr [ebp-4]
 0046C135    mov         edx,dword ptr [ebp-4]
 0046C138    mov         eax,dword ptr [ebx+6C];TThemeServices.?f6C:dword
 0046C13B    call        dword ptr [ebx+68];TThemeServices.FOnThemeChange
 0046C13E    pop         ebx
 0046C13F    pop         ecx
 0046C140    pop         ebp
 0046C141    ret
*}
end;

//0046C144
procedure sub_0046C144(?:TThemeServices);
begin
{*
 0046C144    push        ebp
 0046C145    mov         ebp,esp
 0046C147    add         esp,0FFFFFFF8
 0046C14A    mov         dword ptr [ebp-4],eax
 0046C14D    mov         byte ptr [ebp-5],0
 0046C151    xor         eax,eax
 0046C153    mov         al,byte ptr [ebp-5]
 0046C156    mov         edx,dword ptr [ebp-4]
 0046C159    cmp         dword ptr [edx+eax*4+8],0
>0046C15E    je          0046C184
 0046C160    xor         eax,eax
 0046C162    mov         al,byte ptr [ebp-5]
 0046C165    mov         edx,dword ptr [ebp-4]
 0046C168    mov         eax,dword ptr [edx+eax*4+8]
 0046C16C    push        eax
 0046C16D    mov         eax,[0056E2CC];^gvar_00571BB0:Pointer
 0046C172    mov         eax,dword ptr [eax]
 0046C174    call        eax
 0046C176    xor         eax,eax
 0046C178    mov         al,byte ptr [ebp-5]
 0046C17B    mov         edx,dword ptr [ebp-4]
 0046C17E    xor         ecx,ecx
 0046C180    mov         dword ptr [edx+eax*4+8],ecx
 0046C184    inc         byte ptr [ebp-5]
 0046C187    cmp         byte ptr [ebp-5],18
>0046C18B    jne         0046C151
 0046C18D    pop         ecx
 0046C18E    pop         ecx
 0046C18F    pop         ebp
 0046C190    ret
*}
end;

//0046C194
{*procedure sub_0046C194(?:?);
begin
 0046C194    push        ebp
 0046C195    mov         ebp,esp
 0046C197    push        ecx
 0046C198    mov         dword ptr [ebp-4],eax
 0046C19B    mov         eax,dword ptr [ebp-4]
 0046C19E    call        0046CD94
 0046C1A3    mov         eax,dword ptr [ebp-4]
 0046C1A6    mov         edx,dword ptr [eax]
 0046C1A8    call        dword ptr [edx]
 0046C1AA    pop         ecx
 0046C1AB    pop         ebp
 0046C1AC    ret
end;*}

//0046C1B0
{*procedure sub_0046C1B0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0046C1B0    push        ebp
 0046C1B1    mov         ebp,esp
 0046C1B3    add         esp,0FFFFFFDC
 0046C1B6    push        esi
 0046C1B7    push        edi
 0046C1B8    mov         esi,dword ptr [ebp+0C]
 0046C1BB    lea         edi,[ebp-24]
 0046C1BE    movs        dword ptr [edi],dword ptr [esi]
 0046C1BF    movs        dword ptr [edi],dword ptr [esi]
 0046C1C0    movs        dword ptr [edi],dword ptr [esi]
 0046C1C1    movs        dword ptr [edi],dword ptr [esi]
 0046C1C2    mov         esi,ecx
 0046C1C4    lea         edi,[ebp-14]
 0046C1C7    movs        dword ptr [edi],dword ptr [esi]
 0046C1C8    movs        dword ptr [edi],dword ptr [esi]
 0046C1C9    movs        dword ptr [edi],dword ptr [esi]
 0046C1CA    mov         dword ptr [ebp-8],edx
 0046C1CD    mov         dword ptr [ebp-4],eax
 0046C1D0    mov         eax,dword ptr [ebp+8]
 0046C1D3    push        eax
 0046C1D4    lea         eax,[ebp-24]
 0046C1D7    push        eax
 0046C1D8    mov         eax,dword ptr [ebp-0C]
 0046C1DB    push        eax
 0046C1DC    mov         eax,dword ptr [ebp-10]
 0046C1DF    push        eax
 0046C1E0    mov         eax,dword ptr [ebp-8]
 0046C1E3    push        eax
 0046C1E4    mov         dl,byte ptr [ebp-14]
 0046C1E7    mov         eax,dword ptr [ebp-4]
 0046C1EA    call        0046C08C
 0046C1EF    push        eax
 0046C1F0    mov         eax,[0056E1D0];^gvar_00571BBC:Pointer
 0046C1F5    mov         eax,dword ptr [eax]
 0046C1F7    call        eax
 0046C1F9    pop         edi
 0046C1FA    pop         esi
 0046C1FB    mov         esp,ebp
 0046C1FD    pop         ebp
 0046C1FE    ret         8
end;*}

//0046C204
{*procedure sub_0046C204(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0046C204    push        ebp
 0046C205    mov         ebp,esp
 0046C207    add         esp,0FFFFFFEC
 0046C20A    push        esi
 0046C20B    push        edi
 0046C20C    mov         esi,ecx
 0046C20E    lea         edi,[ebp-14]
 0046C211    movs        dword ptr [edi],dword ptr [esi]
 0046C212    movs        dword ptr [edi],dword ptr [esi]
 0046C213    movs        dword ptr [edi],dword ptr [esi]
 0046C214    mov         dword ptr [ebp-8],edx
 0046C217    mov         dword ptr [ebp-4],eax
 0046C21A    mov         eax,dword ptr [ebp+8]
 0046C21D    push        eax
 0046C21E    mov         eax,dword ptr [ebp+0C]
 0046C221    push        eax
 0046C222    mov         eax,dword ptr [ebp+10]
 0046C225    push        eax
 0046C226    mov         eax,dword ptr [ebp+14]
 0046C229    push        eax
 0046C22A    mov         eax,dword ptr [ebp-0C]
 0046C22D    push        eax
 0046C22E    mov         eax,dword ptr [ebp-10]
 0046C231    push        eax
 0046C232    mov         eax,dword ptr [ebp-8]
 0046C235    push        eax
 0046C236    mov         dl,byte ptr [ebp-14]
 0046C239    mov         eax,dword ptr [ebp-4]
 0046C23C    call        0046C08C
 0046C241    push        eax
 0046C242    mov         eax,[0056E314];^gvar_00571BD8:Pointer
 0046C247    mov         eax,dword ptr [eax]
 0046C249    call        eax
 0046C24B    pop         edi
 0046C24C    pop         esi
 0046C24D    mov         esp,ebp
 0046C24F    pop         ebp
 0046C250    ret         10
end;*}

//0046C254
{*procedure sub_0046C254(?:?; ?:HDC; ?:?; ?:?; ?:?);
begin
 0046C254    push        ebp
 0046C255    mov         ebp,esp
 0046C257    add         esp,0FFFFFFEC
 0046C25A    push        esi
 0046C25B    push        edi
 0046C25C    mov         esi,ecx
 0046C25E    lea         edi,[ebp-14]
 0046C261    movs        dword ptr [edi],dword ptr [esi]
 0046C262    movs        dword ptr [edi],dword ptr [esi]
 0046C263    movs        dword ptr [edi],dword ptr [esi]
 0046C264    mov         dword ptr [ebp-8],edx
 0046C267    mov         dword ptr [ebp-4],eax
 0046C26A    mov         eax,dword ptr [ebp+8]
 0046C26D    push        eax
 0046C26E    mov         eax,dword ptr [ebp+0C]
 0046C271    push        eax
 0046C272    mov         eax,dword ptr [ebp-0C]
 0046C275    push        eax
 0046C276    mov         eax,dword ptr [ebp-10]
 0046C279    push        eax
 0046C27A    mov         eax,dword ptr [ebp-8]
 0046C27D    push        eax
 0046C27E    mov         dl,byte ptr [ebp-14]
 0046C281    mov         eax,dword ptr [ebp-4]
 0046C284    call        0046C08C
 0046C289    push        eax
 0046C28A    mov         eax,[0056E2A8];^gvar_00571BB4:Pointer
 0046C28F    mov         eax,dword ptr [eax]
 0046C291    call        eax
 0046C293    pop         edi
 0046C294    pop         esi
 0046C295    mov         esp,ebp
 0046C297    pop         ebp
 0046C298    ret         8
end;*}

//0046C29C
{*procedure sub_0046C29C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0046C29C    push        ebp
 0046C29D    mov         ebp,esp
 0046C29F    add         esp,0FFFFFFEC
 0046C2A2    push        esi
 0046C2A3    push        edi
 0046C2A4    mov         esi,ecx
 0046C2A6    lea         edi,[ebp-14]
 0046C2A9    movs        dword ptr [edi],dword ptr [esi]
 0046C2AA    movs        dword ptr [edi],dword ptr [esi]
 0046C2AB    movs        dword ptr [edi],dword ptr [esi]
 0046C2AC    mov         dword ptr [ebp-8],edx
 0046C2AF    mov         dword ptr [ebp-4],eax
 0046C2B2    mov         eax,dword ptr [ebp+8]
 0046C2B5    push        eax
 0046C2B6    mov         eax,dword ptr [ebp+0C]
 0046C2B9    push        eax
 0046C2BA    mov         eax,dword ptr [ebp+10]
 0046C2BD    push        eax
 0046C2BE    mov         eax,dword ptr [ebp-0C]
 0046C2C1    push        eax
 0046C2C2    mov         eax,dword ptr [ebp-10]
 0046C2C5    push        eax
 0046C2C6    mov         eax,dword ptr [ebp-8]
 0046C2C9    push        eax
 0046C2CA    mov         dl,byte ptr [ebp-14]
 0046C2CD    mov         eax,dword ptr [ebp-4]
 0046C2D0    call        0046C08C
 0046C2D5    push        eax
 0046C2D6    mov         eax,[0056E544];^gvar_00571BDC:Pointer
 0046C2DB    mov         eax,dword ptr [eax]
 0046C2DD    call        eax
 0046C2DF    pop         edi
 0046C2E0    pop         esi
 0046C2E1    mov         esp,ebp
 0046C2E3    pop         ebp
 0046C2E4    ret         0C
end;*}

//0046C2E8
{*procedure sub_0046C2E8(?:?; ?:HWND; ?:?; ?:?; ?:?; ?:?);
begin
 0046C2E8    push        ebp
 0046C2E9    mov         ebp,esp
 0046C2EB    add         esp,0FFFFFFEC
 0046C2EE    mov         dword ptr [ebp-0C],ecx
 0046C2F1    mov         dword ptr [ebp-8],edx
 0046C2F4    mov         dword ptr [ebp-4],eax
 0046C2F7    cmp         byte ptr [ebp+0C],0
>0046C2FB    je          0046C339
 0046C2FD    cmp         dword ptr [ebp+10],0
>0046C301    je          0046C339
 0046C303    mov         eax,dword ptr [ebp+10]
 0046C306    mov         dword ptr [ebp-14],eax
 0046C309    mov         eax,dword ptr [ebp-14]
 0046C30C    mov         eax,dword ptr [eax+8]
 0046C30F    push        eax
 0046C310    mov         eax,dword ptr [ebp-14]
 0046C313    mov         eax,dword ptr [eax+4]
 0046C316    push        eax
 0046C317    mov         eax,dword ptr [ebp-14]
 0046C31A    mov         dl,byte ptr [eax]
 0046C31C    mov         eax,dword ptr [ebp-4]
 0046C31F    call        0046C08C
 0046C324    push        eax
 0046C325    mov         eax,[0056E124];^gvar_00571BE4:Pointer
 0046C32A    mov         eax,dword ptr [eax]
 0046C32C    call        eax
 0046C32E    cmp         eax,1
 0046C331    sbb         eax,eax
 0046C333    inc         eax
 0046C334    mov         byte ptr [ebp-0D],al
>0046C337    jmp         0046C33D
 0046C339    mov         byte ptr [ebp-0D],1
 0046C33D    cmp         byte ptr [ebp-0D],0
>0046C341    je          0046C358
 0046C343    mov         eax,dword ptr [ebp+8]
 0046C346    push        eax
 0046C347    mov         eax,dword ptr [ebp-0C]
 0046C34A    push        eax
 0046C34B    mov         eax,dword ptr [ebp-8]
 0046C34E    push        eax
 0046C34F    mov         eax,[0056E388];^gvar_00571C60:Pointer
 0046C354    mov         eax,dword ptr [eax]
 0046C356    call        eax
 0046C358    mov         esp,ebp
 0046C35A    pop         ebp
 0046C35B    ret         0C
end;*}

//0046C360
{*procedure sub_0046C360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0046C360    push        ebp
 0046C361    mov         ebp,esp
 0046C363    add         esp,0FFFFFFDC
 0046C366    push        esi
 0046C367    push        edi
 0046C368    mov         esi,dword ptr [ebp+10]
 0046C36B    lea         edi,[ebp-24]
 0046C36E    movs        dword ptr [edi],dword ptr [esi]
 0046C36F    movs        dword ptr [edi],dword ptr [esi]
 0046C370    movs        dword ptr [edi],dword ptr [esi]
 0046C371    movs        dword ptr [edi],dword ptr [esi]
 0046C372    mov         esi,ecx
 0046C374    lea         edi,[ebp-14]
 0046C377    movs        dword ptr [edi],dword ptr [esi]
 0046C378    movs        dword ptr [edi],dword ptr [esi]
 0046C379    movs        dword ptr [edi],dword ptr [esi]
 0046C37A    mov         dword ptr [ebp-8],edx
 0046C37D    mov         dword ptr [ebp-4],eax
 0046C380    lea         eax,[ebp-24]
 0046C383    push        eax
 0046C384    mov         eax,dword ptr [ebp+8]
 0046C387    push        eax
 0046C388    mov         eax,dword ptr [ebp+0C]
 0046C38B    push        eax
 0046C38C    mov         eax,dword ptr [ebp+14]
 0046C38F    call        @WStrLen
 0046C394    push        eax
 0046C395    mov         eax,dword ptr [ebp+14]
 0046C398    call        @WStrToPWChar
 0046C39D    push        eax
 0046C39E    mov         eax,dword ptr [ebp-0C]
 0046C3A1    push        eax
 0046C3A2    mov         eax,dword ptr [ebp-10]
 0046C3A5    push        eax
 0046C3A6    mov         eax,dword ptr [ebp-8]
 0046C3A9    push        eax
 0046C3AA    mov         dl,byte ptr [ebp-14]
 0046C3AD    mov         eax,dword ptr [ebp-4]
 0046C3B0    call        0046C08C
 0046C3B5    push        eax
 0046C3B6    mov         eax,[0056E4E8];^gvar_00571BB8:Pointer
 0046C3BB    mov         eax,dword ptr [eax]
 0046C3BD    call        eax
 0046C3BF    pop         edi
 0046C3C0    pop         esi
 0046C3C1    mov         esp,ebp
 0046C3C3    pop         ebp
 0046C3C4    ret         10
end;*}

//0046C3C8
{*procedure sub_0046C3C8(?:?; ?:?; ?:?);
begin
 0046C3C8    push        ebp
 0046C3C9    mov         ebp,esp
 0046C3CB    add         esp,0FFFFFFF0
 0046C3CE    mov         dword ptr [ebp-0C],ecx
 0046C3D1    mov         byte ptr [ebp-5],dl
 0046C3D4    mov         dword ptr [ebp-4],eax
 0046C3D7    mov         eax,dword ptr [ebp-0C]
 0046C3DA    mov         byte ptr [eax],0
 0046C3DD    xor         eax,eax
 0046C3DF    mov         al,byte ptr [ebp-5]
 0046C3E2    cmp         eax,0F
>0046C3E5    jge         0046C3F6
 0046C3E7    add         eax,0FFFFFFFE
 0046C3EA    sub         eax,5
>0046C3ED    jb          0046C407
 0046C3EF    sub         eax,8
>0046C3F2    jb          0046C41A
>0046C3F4    jmp         0046C466
 0046C3F6    add         eax,0FFFFFFF1
 0046C3F9    sub         eax,0C
>0046C3FC    jb          0046C42D
 0046C3FE    sub         eax,2
>0046C401    jb          0046C440
>0046C403    je          0046C453
>0046C405    jmp         0046C466
 0046C407    mov         eax,dword ptr [ebp-0C]
 0046C40A    mov         dword ptr [eax+4],1
 0046C411    mov         dword ptr [ebp-10],2
>0046C418    jmp         0046C473
 0046C41A    mov         eax,dword ptr [ebp-0C]
 0046C41D    mov         dword ptr [eax+4],2
 0046C424    mov         dword ptr [ebp-10],7
>0046C42B    jmp         0046C473
 0046C42D    mov         eax,dword ptr [ebp-0C]
 0046C430    mov         dword ptr [eax+4],3
 0046C437    mov         dword ptr [ebp-10],0F
>0046C43E    jmp         0046C473
 0046C440    mov         eax,dword ptr [ebp-0C]
 0046C443    mov         dword ptr [eax+4],4
 0046C44A    mov         dword ptr [ebp-10],1B
>0046C451    jmp         0046C473
 0046C453    mov         eax,dword ptr [ebp-0C]
 0046C456    mov         dword ptr [eax+4],5
 0046C45D    mov         dword ptr [ebp-10],1D
>0046C464    jmp         0046C473
 0046C466    mov         eax,dword ptr [ebp-0C]
 0046C469    xor         edx,edx
 0046C46B    mov         dword ptr [eax+4],edx
 0046C46E    xor         eax,eax
 0046C470    mov         dword ptr [ebp-10],eax
 0046C473    xor         eax,eax
 0046C475    mov         al,byte ptr [ebp-5]
 0046C478    sub         eax,dword ptr [ebp-10]
 0046C47B    inc         eax
 0046C47C    mov         edx,dword ptr [ebp-0C]
 0046C47F    mov         dword ptr [edx+8],eax
 0046C482    mov         esp,ebp
 0046C484    pop         ebp
 0046C485    ret
end;*}

//0046C488
{*procedure sub_0046C488(?:?; ?:?; ?:?);
begin
 0046C488    push        ebp
 0046C489    mov         ebp,esp
 0046C48B    add         esp,0FFFFFFF0
 0046C48E    mov         dword ptr [ebp-0C],ecx
 0046C491    mov         byte ptr [ebp-5],dl
 0046C494    mov         dword ptr [ebp-4],eax
 0046C497    mov         eax,dword ptr [ebp-0C]
 0046C49A    mov         byte ptr [eax],3
 0046C49D    mov         al,byte ptr [ebp-5]
 0046C4A0    add         al,0FE
 0046C4A2    sub         al,7
>0046C4A4    jb          0046C4AA
>0046C4A6    je          0046C4BD
>0046C4A8    jmp         0046C4D0
 0046C4AA    mov         eax,dword ptr [ebp-0C]
 0046C4AD    mov         dword ptr [eax+4],1
 0046C4B4    mov         dword ptr [ebp-10],2
>0046C4BB    jmp         0046C4DD
 0046C4BD    mov         eax,dword ptr [ebp-0C]
 0046C4C0    mov         dword ptr [eax+4],2
 0046C4C7    mov         dword ptr [ebp-10],9
>0046C4CE    jmp         0046C4DD
 0046C4D0    mov         eax,dword ptr [ebp-0C]
 0046C4D3    xor         edx,edx
 0046C4D5    mov         dword ptr [eax+4],edx
 0046C4D8    xor         eax,eax
 0046C4DA    mov         dword ptr [ebp-10],eax
 0046C4DD    xor         eax,eax
 0046C4DF    mov         al,byte ptr [ebp-5]
 0046C4E2    sub         eax,dword ptr [ebp-10]
 0046C4E5    inc         eax
 0046C4E6    mov         edx,dword ptr [ebp-0C]
 0046C4E9    mov         dword ptr [edx+8],eax
 0046C4EC    mov         esp,ebp
 0046C4EE    pop         ebp
 0046C4EF    ret
end;*}

//0046C4F0
{*procedure sub_0046C4F0(?:?; ?:?; ?:?);
begin
 0046C4F0    push        ebp
 0046C4F1    mov         ebp,esp
 0046C4F3    add         esp,0FFFFFFF0
 0046C4F6    mov         dword ptr [ebp-0C],ecx
 0046C4F9    mov         byte ptr [ebp-5],dl
 0046C4FC    mov         dword ptr [ebp-4],eax
 0046C4FF    mov         eax,dword ptr [ebp-0C]
 0046C502    mov         byte ptr [eax],0E
 0046C505    mov         al,byte ptr [ebp-5]
 0046C508    sub         al,2
>0046C50A    je          0046C516
 0046C50C    dec         al
>0046C50E    je          0046C529
 0046C510    dec         al
>0046C512    je          0046C53C
>0046C514    jmp         0046C54F
 0046C516    mov         eax,dword ptr [ebp-0C]
 0046C519    mov         dword ptr [eax+4],1
 0046C520    mov         dword ptr [ebp-10],2
>0046C527    jmp         0046C55C
 0046C529    mov         eax,dword ptr [ebp-0C]
 0046C52C    mov         dword ptr [eax+4],2
 0046C533    mov         dword ptr [ebp-10],3
>0046C53A    jmp         0046C55C
 0046C53C    mov         eax,dword ptr [ebp-0C]
 0046C53F    mov         dword ptr [eax+4],3
 0046C546    mov         dword ptr [ebp-10],4
>0046C54D    jmp         0046C55C
 0046C54F    mov         eax,dword ptr [ebp-0C]
 0046C552    xor         edx,edx
 0046C554    mov         dword ptr [eax+4],edx
 0046C557    xor         eax,eax
 0046C559    mov         dword ptr [ebp-10],eax
 0046C55C    xor         eax,eax
 0046C55E    mov         al,byte ptr [ebp-5]
 0046C561    sub         eax,dword ptr [ebp-10]
 0046C564    inc         eax
 0046C565    mov         edx,dword ptr [ebp-0C]
 0046C568    mov         dword ptr [edx+8],eax
 0046C56B    mov         esp,ebp
 0046C56D    pop         ebp
 0046C56E    ret
end;*}

//0046C570
{*procedure sub_0046C570(?:?; ?:?; ?:?);
begin
 0046C570    push        ebp
 0046C571    mov         ebp,esp
 0046C573    add         esp,0FFFFFFF0
 0046C576    mov         dword ptr [ebp-0C],ecx
 0046C579    mov         byte ptr [ebp-5],dl
 0046C57C    mov         dword ptr [ebp-4],eax
 0046C57F    mov         eax,dword ptr [ebp-0C]
 0046C582    mov         byte ptr [eax],12
 0046C585    xor         eax,eax
 0046C587    mov         al,byte ptr [ebp-5]
 0046C58A    cmp         eax,14
>0046C58D    jge         0046C5A6
 0046C58F    add         eax,0FFFFFFFE
 0046C592    sub         eax,6
>0046C595    jb          0046C5BA
 0046C597    sub         eax,6
>0046C59A    jb          0046C5CD
 0046C59C    sub         eax,6
>0046C59F    jb          0046C5E0
>0046C5A1    jmp         0046C62C
 0046C5A6    add         eax,0FFFFFFEC
 0046C5A9    sub         eax,6
>0046C5AC    jb          0046C5F3
 0046C5AE    sub         eax,6
>0046C5B1    jb          0046C606
 0046C5B3    sub         eax,6
>0046C5B6    jb          0046C619
>0046C5B8    jmp         0046C62C
 0046C5BA    mov         eax,dword ptr [ebp-0C]
 0046C5BD    mov         dword ptr [eax+4],1
 0046C5C4    mov         dword ptr [ebp-10],2
>0046C5CB    jmp         0046C639
 0046C5CD    mov         eax,dword ptr [ebp-0C]
 0046C5D0    mov         dword ptr [eax+4],2
 0046C5D7    mov         dword ptr [ebp-10],8
>0046C5DE    jmp         0046C639
 0046C5E0    mov         eax,dword ptr [ebp-0C]
 0046C5E3    mov         dword ptr [eax+4],3
 0046C5EA    mov         dword ptr [ebp-10],0E
>0046C5F1    jmp         0046C639
 0046C5F3    mov         eax,dword ptr [ebp-0C]
 0046C5F6    mov         dword ptr [eax+4],4
 0046C5FD    mov         dword ptr [ebp-10],14
>0046C604    jmp         0046C639
 0046C606    mov         eax,dword ptr [ebp-0C]
 0046C609    mov         dword ptr [eax+4],5
 0046C610    mov         dword ptr [ebp-10],1A
>0046C617    jmp         0046C639
 0046C619    mov         eax,dword ptr [ebp-0C]
 0046C61C    mov         dword ptr [eax+4],6
 0046C623    mov         dword ptr [ebp-10],20
>0046C62A    jmp         0046C639
 0046C62C    mov         eax,dword ptr [ebp-0C]
 0046C62F    xor         edx,edx
 0046C631    mov         dword ptr [eax+4],edx
 0046C634    xor         eax,eax
 0046C636    mov         dword ptr [ebp-10],eax
 0046C639    xor         eax,eax
 0046C63B    mov         al,byte ptr [ebp-5]
 0046C63E    sub         eax,dword ptr [ebp-10]
 0046C641    inc         eax
 0046C642    mov         edx,dword ptr [ebp-0C]
 0046C645    mov         dword ptr [edx+8],eax
 0046C648    mov         esp,ebp
 0046C64A    pop         ebp
 0046C64B    ret
end;*}

//0046C64C
{*procedure sub_0046C64C(?:?; ?:?; ?:?);
begin
 0046C64C    push        ebp
 0046C64D    mov         ebp,esp
 0046C64F    add         esp,0FFFFFFF0
 0046C652    mov         dword ptr [ebp-0C],ecx
 0046C655    mov         byte ptr [ebp-5],dl
 0046C658    mov         dword ptr [ebp-4],eax
 0046C65B    mov         eax,dword ptr [ebp-0C]
 0046C65E    mov         byte ptr [eax],14
 0046C661    xor         eax,eax
 0046C663    mov         al,byte ptr [ebp-5]
 0046C666    cmp         eax,23
>0046C669    ja          0046C793
 0046C66F    mov         al,byte ptr [eax+46C67C]
 0046C675    jmp         dword ptr [eax*4+46C6A0]
 0046C675    db          0
 0046C675    db          0
 0046C675    db          1
 0046C675    db          2
 0046C675    db          3
 0046C675    db          3
 0046C675    db          3
 0046C675    db          3
 0046C675    db          3
 0046C675    db          4
 0046C675    db          4
 0046C675    db          4
 0046C675    db          4
 0046C675    db          4
 0046C675    db          5
 0046C675    db          5
 0046C675    db          5
 0046C675    db          5
 0046C675    db          5
 0046C675    db          6
 0046C675    db          6
 0046C675    db          6
 0046C675    db          6
 0046C675    db          6
 0046C675    db          7
 0046C675    db          7
 0046C675    db          7
 0046C675    db          7
 0046C675    db          7
 0046C675    db          8
 0046C675    db          8
 0046C675    db          8
 0046C675    db          8
 0046C675    db          8
 0046C675    db          9
 0046C675    db          10
 0046C675    dd          0046C793
 0046C675    dd          0046C6CC
 0046C675    dd          0046C6E2
 0046C675    dd          0046C6F8
 0046C675    dd          0046C70E
 0046C675    dd          0046C721
 0046C675    dd          0046C734
 0046C675    dd          0046C747
 0046C675    dd          0046C75A
 0046C675    dd          0046C76D
 0046C675    dd          0046C780
 0046C6CC    mov         eax,dword ptr [ebp-0C]
 0046C6CF    mov         dword ptr [eax+4],1
 0046C6D6    mov         dword ptr [ebp-10],2
>0046C6DD    jmp         0046C7A0
 0046C6E2    mov         eax,dword ptr [ebp-0C]
 0046C6E5    mov         dword ptr [eax+4],2
 0046C6EC    mov         dword ptr [ebp-10],3
>0046C6F3    jmp         0046C7A0
 0046C6F8    mov         eax,dword ptr [ebp-0C]
 0046C6FB    mov         dword ptr [eax+4],3
 0046C702    mov         dword ptr [ebp-10],4
>0046C709    jmp         0046C7A0
 0046C70E    mov         eax,dword ptr [ebp-0C]
 0046C711    mov         dword ptr [eax+4],4
 0046C718    mov         dword ptr [ebp-10],9
>0046C71F    jmp         0046C7A0
 0046C721    mov         eax,dword ptr [ebp-0C]
 0046C724    mov         dword ptr [eax+4],5
 0046C72B    mov         dword ptr [ebp-10],0E
>0046C732    jmp         0046C7A0
 0046C734    mov         eax,dword ptr [ebp-0C]
 0046C737    mov         dword ptr [eax+4],6
 0046C73E    mov         dword ptr [ebp-10],13
>0046C745    jmp         0046C7A0
 0046C747    mov         eax,dword ptr [ebp-0C]
 0046C74A    mov         dword ptr [eax+4],7
 0046C751    mov         dword ptr [ebp-10],18
>0046C758    jmp         0046C7A0
 0046C75A    mov         eax,dword ptr [ebp-0C]
 0046C75D    mov         dword ptr [eax+4],8
 0046C764    mov         dword ptr [ebp-10],1D
>0046C76B    jmp         0046C7A0
 0046C76D    mov         eax,dword ptr [ebp-0C]
 0046C770    mov         dword ptr [eax+4],9
 0046C777    mov         dword ptr [ebp-10],22
>0046C77E    jmp         0046C7A0
 0046C780    mov         eax,dword ptr [ebp-0C]
 0046C783    mov         dword ptr [eax+4],0A
 0046C78A    mov         dword ptr [ebp-10],23
>0046C791    jmp         0046C7A0
 0046C793    mov         eax,dword ptr [ebp-0C]
 0046C796    xor         edx,edx
 0046C798    mov         dword ptr [eax+4],edx
 0046C79B    xor         eax,eax
 0046C79D    mov         dword ptr [ebp-10],eax
 0046C7A0    xor         eax,eax
 0046C7A2    mov         al,byte ptr [ebp-5]
 0046C7A5    sub         eax,dword ptr [ebp-10]
 0046C7A8    inc         eax
 0046C7A9    mov         edx,dword ptr [ebp-0C]
 0046C7AC    mov         dword ptr [edx+8],eax
 0046C7AF    mov         esp,ebp
 0046C7B1    pop         ebp
 0046C7B2    ret
end;*}

//0046C7B4
{*procedure sub_0046C7B4(?:?; ?:?; ?:?);
begin
 0046C7B4    push        ebp
 0046C7B5    mov         ebp,esp
 0046C7B7    add         esp,0FFFFFFF0
 0046C7BA    mov         dword ptr [ebp-0C],ecx
 0046C7BD    mov         byte ptr [ebp-5],dl
 0046C7C0    mov         dword ptr [ebp-4],eax
 0046C7C3    mov         eax,dword ptr [ebp-0C]
 0046C7C6    mov         byte ptr [eax],17
 0046C7C9    xor         eax,eax
 0046C7CB    mov         al,byte ptr [ebp-5]
 0046C7CE    cmp         eax,68
>0046C7D1    ja          0046CBFE
 0046C7D7    mov         al,byte ptr [eax+46C7E4]
 0046C7DD    jmp         dword ptr [eax*4+46C84D]
 0046C7DD    db          0
 0046C7DD    db          0
 0046C7DD    db          1
 0046C7DD    db          1
 0046C7DD    db          1
 0046C7DD    db          2
 0046C7DD    db          2
 0046C7DD    db          2
 0046C7DD    db          3
 0046C7DD    db          3
 0046C7DD    db          3
 0046C7DD    db          4
 0046C7DD    db          4
 0046C7DD    db          4
 0046C7DD    db          5
 0046C7DD    db          5
 0046C7DD    db          5
 0046C7DD    db          6
 0046C7DD    db          6
 0046C7DD    db          6
 0046C7DD    db          7
 0046C7DD    db          7
 0046C7DD    db          8
 0046C7DD    db          8
 0046C7DD    db          9
 0046C7DD    db          9
 0046C7DD    db          10
 0046C7DD    db          10
 0046C7DD    db          11
 0046C7DD    db          11
 0046C7DD    db          12
 0046C7DD    db          12
 0046C7DD    db          13
 0046C7DD    db          13
 0046C7DD    db          13
 0046C7DD    db          13
 0046C7DD    db          14
 0046C7DD    db          14
 0046C7DD    db          14
 0046C7DD    db          14
 0046C7DD    db          15
 0046C7DD    db          15
 0046C7DD    db          15
 0046C7DD    db          15
 0046C7DD    db          16
 0046C7DD    db          16
 0046C7DD    db          16
 0046C7DD    db          16
 0046C7DD    db          17
 0046C7DD    db          17
 0046C7DD    db          17
 0046C7DD    db          17
 0046C7DD    db          18
 0046C7DD    db          18
 0046C7DD    db          18
 0046C7DD    db          18
 0046C7DD    db          19
 0046C7DD    db          19
 0046C7DD    db          19
 0046C7DD    db          19
 0046C7DD    db          20
 0046C7DD    db          20
 0046C7DD    db          20
 0046C7DD    db          20
 0046C7DD    db          21
 0046C7DD    db          21
 0046C7DD    db          21
 0046C7DD    db          21
 0046C7DD    db          22
 0046C7DD    db          22
 0046C7DD    db          22
 0046C7DD    db          22
 0046C7DD    db          23
 0046C7DD    db          23
 0046C7DD    db          23
 0046C7DD    db          23
 0046C7DD    db          24
 0046C7DD    db          24
 0046C7DD    db          24
 0046C7DD    db          24
 0046C7DD    db          25
 0046C7DD    db          25
 0046C7DD    db          25
 0046C7DD    db          25
 0046C7DD    db          26
 0046C7DD    db          26
 0046C7DD    db          26
 0046C7DD    db          26
 0046C7DD    db          27
 0046C7DD    db          27
 0046C7DD    db          27
 0046C7DD    db          27
 0046C7DD    db          28
 0046C7DD    db          28
 0046C7DD    db          28
 0046C7DD    db          28
 0046C7DD    db          29
 0046C7DD    db          30
 0046C7DD    db          31
 0046C7DD    db          32
 0046C7DD    db          33
 0046C7DD    db          34
 0046C7DD    db          35
 0046C7DD    db          36
 0046C7DD    db          37
 0046C7DD    dd          0046CBFE
 0046C7DD    dd          0046C8E5
 0046C7DD    dd          0046C8FB
 0046C7DD    dd          0046C911
 0046C7DD    dd          0046C927
 0046C7DD    dd          0046C93D
 0046C7DD    dd          0046C953
 0046C7DD    dd          0046C969
 0046C7DD    dd          0046C97F
 0046C7DD    dd          0046C995
 0046C7DD    dd          0046C9AB
 0046C7DD    dd          0046C9C1
 0046C7DD    dd          0046C9D7
 0046C7DD    dd          0046C9ED
 0046C7DD    dd          0046CA03
 0046C7DD    dd          0046CA19
 0046C7DD    dd          0046CA2F
 0046C7DD    dd          0046CA45
 0046C7DD    dd          0046CA5B
 0046C7DD    dd          0046CA71
 0046C7DD    dd          0046CA87
 0046C7DD    dd          0046CA9D
 0046C7DD    dd          0046CAB3
 0046C7DD    dd          0046CAC9
 0046C7DD    dd          0046CADF
 0046C7DD    dd          0046CAF5
 0046C7DD    dd          0046CB0B
 0046C7DD    dd          0046CB21
 0046C7DD    dd          0046CB37
 0046C7DD    dd          0046CB4D
 0046C7DD    dd          0046CB63
 0046C7DD    dd          0046CB79
 0046C7DD    dd          0046CB8C
 0046C7DD    dd          0046CB9F
 0046C7DD    dd          0046CBB2
 0046C7DD    dd          0046CBC5
 0046C7DD    dd          0046CBD8
 0046C7DD    dd          0046CBEB
 0046C8E5    mov         eax,dword ptr [ebp-0C]
 0046C8E8    mov         dword ptr [eax+4],1
 0046C8EF    mov         dword ptr [ebp-10],2
>0046C8F6    jmp         0046CC0B
 0046C8FB    mov         eax,dword ptr [ebp-0C]
 0046C8FE    mov         dword ptr [eax+4],2
 0046C905    mov         dword ptr [ebp-10],5
>0046C90C    jmp         0046CC0B
 0046C911    mov         eax,dword ptr [ebp-0C]
 0046C914    mov         dword ptr [eax+4],3
 0046C91B    mov         dword ptr [ebp-10],8
>0046C922    jmp         0046CC0B
 0046C927    mov         eax,dword ptr [ebp-0C]
 0046C92A    mov         dword ptr [eax+4],4
 0046C931    mov         dword ptr [ebp-10],0B
>0046C938    jmp         0046CC0B
 0046C93D    mov         eax,dword ptr [ebp-0C]
 0046C940    mov         dword ptr [eax+4],5
 0046C947    mov         dword ptr [ebp-10],0E
>0046C94E    jmp         0046CC0B
 0046C953    mov         eax,dword ptr [ebp-0C]
 0046C956    mov         dword ptr [eax+4],6
 0046C95D    mov         dword ptr [ebp-10],11
>0046C964    jmp         0046CC0B
 0046C969    mov         eax,dword ptr [ebp-0C]
 0046C96C    mov         dword ptr [eax+4],7
 0046C973    mov         dword ptr [ebp-10],14
>0046C97A    jmp         0046CC0B
 0046C97F    mov         eax,dword ptr [ebp-0C]
 0046C982    mov         dword ptr [eax+4],8
 0046C989    mov         dword ptr [ebp-10],16
>0046C990    jmp         0046CC0B
 0046C995    mov         eax,dword ptr [ebp-0C]
 0046C998    mov         dword ptr [eax+4],9
 0046C99F    mov         dword ptr [ebp-10],18
>0046C9A6    jmp         0046CC0B
 0046C9AB    mov         eax,dword ptr [ebp-0C]
 0046C9AE    mov         dword ptr [eax+4],0A
 0046C9B5    mov         dword ptr [ebp-10],1A
>0046C9BC    jmp         0046CC0B
 0046C9C1    mov         eax,dword ptr [ebp-0C]
 0046C9C4    mov         dword ptr [eax+4],0B
 0046C9CB    mov         dword ptr [ebp-10],1C
>0046C9D2    jmp         0046CC0B
 0046C9D7    mov         eax,dword ptr [ebp-0C]
 0046C9DA    mov         dword ptr [eax+4],0C
 0046C9E1    mov         dword ptr [ebp-10],1E
>0046C9E8    jmp         0046CC0B
 0046C9ED    mov         eax,dword ptr [ebp-0C]
 0046C9F0    mov         dword ptr [eax+4],0D
 0046C9F7    mov         dword ptr [ebp-10],20
>0046C9FE    jmp         0046CC0B
 0046CA03    mov         eax,dword ptr [ebp-0C]
 0046CA06    mov         dword ptr [eax+4],0E
 0046CA0D    mov         dword ptr [ebp-10],24
>0046CA14    jmp         0046CC0B
 0046CA19    mov         eax,dword ptr [ebp-0C]
 0046CA1C    mov         dword ptr [eax+4],0F
 0046CA23    mov         dword ptr [ebp-10],28
>0046CA2A    jmp         0046CC0B
 0046CA2F    mov         eax,dword ptr [ebp-0C]
 0046CA32    mov         dword ptr [eax+4],10
 0046CA39    mov         dword ptr [ebp-10],2C
>0046CA40    jmp         0046CC0B
 0046CA45    mov         eax,dword ptr [ebp-0C]
 0046CA48    mov         dword ptr [eax+4],11
 0046CA4F    mov         dword ptr [ebp-10],30
>0046CA56    jmp         0046CC0B
 0046CA5B    mov         eax,dword ptr [ebp-0C]
 0046CA5E    mov         dword ptr [eax+4],12
 0046CA65    mov         dword ptr [ebp-10],34
>0046CA6C    jmp         0046CC0B
 0046CA71    mov         eax,dword ptr [ebp-0C]
 0046CA74    mov         dword ptr [eax+4],13
 0046CA7B    mov         dword ptr [ebp-10],38
>0046CA82    jmp         0046CC0B
 0046CA87    mov         eax,dword ptr [ebp-0C]
 0046CA8A    mov         dword ptr [eax+4],14
 0046CA91    mov         dword ptr [ebp-10],3C
>0046CA98    jmp         0046CC0B
 0046CA9D    mov         eax,dword ptr [ebp-0C]
 0046CAA0    mov         dword ptr [eax+4],15
 0046CAA7    mov         dword ptr [ebp-10],40
>0046CAAE    jmp         0046CC0B
 0046CAB3    mov         eax,dword ptr [ebp-0C]
 0046CAB6    mov         dword ptr [eax+4],16
 0046CABD    mov         dword ptr [ebp-10],44
>0046CAC4    jmp         0046CC0B
 0046CAC9    mov         eax,dword ptr [ebp-0C]
 0046CACC    mov         dword ptr [eax+4],17
 0046CAD3    mov         dword ptr [ebp-10],48
>0046CADA    jmp         0046CC0B
 0046CADF    mov         eax,dword ptr [ebp-0C]
 0046CAE2    mov         dword ptr [eax+4],18
 0046CAE9    mov         dword ptr [ebp-10],4C
>0046CAF0    jmp         0046CC0B
 0046CAF5    mov         eax,dword ptr [ebp-0C]
 0046CAF8    mov         dword ptr [eax+4],19
 0046CAFF    mov         dword ptr [ebp-10],50
>0046CB06    jmp         0046CC0B
 0046CB0B    mov         eax,dword ptr [ebp-0C]
 0046CB0E    mov         dword ptr [eax+4],1A
 0046CB15    mov         dword ptr [ebp-10],54
>0046CB1C    jmp         0046CC0B
 0046CB21    mov         eax,dword ptr [ebp-0C]
 0046CB24    mov         dword ptr [eax+4],1B
 0046CB2B    mov         dword ptr [ebp-10],58
>0046CB32    jmp         0046CC0B
 0046CB37    mov         eax,dword ptr [ebp-0C]
 0046CB3A    mov         dword ptr [eax+4],1C
 0046CB41    mov         dword ptr [ebp-10],5C
>0046CB48    jmp         0046CC0B
 0046CB4D    mov         eax,dword ptr [ebp-0C]
 0046CB50    mov         dword ptr [eax+4],1D
 0046CB57    mov         dword ptr [ebp-10],60
>0046CB5E    jmp         0046CC0B
 0046CB63    mov         eax,dword ptr [ebp-0C]
 0046CB66    mov         dword ptr [eax+4],1E
 0046CB6D    mov         dword ptr [ebp-10],61
>0046CB74    jmp         0046CC0B
 0046CB79    mov         eax,dword ptr [ebp-0C]
 0046CB7C    mov         dword ptr [eax+4],1F
 0046CB83    mov         dword ptr [ebp-10],62
>0046CB8A    jmp         0046CC0B
 0046CB8C    mov         eax,dword ptr [ebp-0C]
 0046CB8F    mov         dword ptr [eax+4],20
 0046CB96    mov         dword ptr [ebp-10],63
>0046CB9D    jmp         0046CC0B
 0046CB9F    mov         eax,dword ptr [ebp-0C]
 0046CBA2    mov         dword ptr [eax+4],21
 0046CBA9    mov         dword ptr [ebp-10],64
>0046CBB0    jmp         0046CC0B
 0046CBB2    mov         eax,dword ptr [ebp-0C]
 0046CBB5    mov         dword ptr [eax+4],22
 0046CBBC    mov         dword ptr [ebp-10],65
>0046CBC3    jmp         0046CC0B
 0046CBC5    mov         eax,dword ptr [ebp-0C]
 0046CBC8    mov         dword ptr [eax+4],23
 0046CBCF    mov         dword ptr [ebp-10],66
>0046CBD6    jmp         0046CC0B
 0046CBD8    mov         eax,dword ptr [ebp-0C]
 0046CBDB    mov         dword ptr [eax+4],24
 0046CBE2    mov         dword ptr [ebp-10],67
>0046CBE9    jmp         0046CC0B
 0046CBEB    mov         eax,dword ptr [ebp-0C]
 0046CBEE    mov         dword ptr [eax+4],25
 0046CBF5    mov         dword ptr [ebp-10],68
>0046CBFC    jmp         0046CC0B
 0046CBFE    mov         eax,dword ptr [ebp-0C]
 0046CC01    xor         edx,edx
 0046CC03    mov         dword ptr [eax+4],edx
 0046CC06    xor         eax,eax
 0046CC08    mov         dword ptr [ebp-10],eax
 0046CC0B    xor         eax,eax
 0046CC0D    mov         al,byte ptr [ebp-5]
 0046CC10    sub         eax,dword ptr [ebp-10]
 0046CC13    inc         eax
 0046CC14    mov         edx,dword ptr [ebp-0C]
 0046CC17    mov         dword ptr [edx+8],eax
 0046CC1A    mov         esp,ebp
 0046CC1C    pop         ebp
 0046CC1D    ret
end;*}

//0046CC20
{*procedure sub_0046CC20(?:?; ?:TWinControl; ?:?);
begin
 0046CC20    push        ebp
 0046CC21    mov         ebp,esp
 0046CC23    add         esp,0FFFFFFA4
 0046CC26    push        esi
 0046CC27    push        edi
 0046CC28    mov         byte ptr [ebp-9],cl
 0046CC2B    mov         dword ptr [ebp-8],edx
 0046CC2E    mov         dword ptr [ebp-4],eax
 0046CC31    push        0EC
 0046CC33    mov         eax,dword ptr [ebp-8]
 0046CC36    call        TWinControl.GetHandle
 0046CC3B    push        eax
 0046CC3C    call        user32.GetWindowLongA
 0046CC41    mov         dword ptr [ebp-20],eax
 0046CC44    test        byte ptr [ebp-1F],2
>0046CC48    je          0046CD8C
 0046CC4E    lea         eax,[ebp-40]
 0046CC51    push        eax
 0046CC52    mov         eax,dword ptr [ebp-8]
 0046CC55    call        TWinControl.GetHandle
 0046CC5A    push        eax
 0046CC5B    call        user32.GetWindowRect
 0046CC60    mov         eax,dword ptr [ebp-3C]
 0046CC63    neg         eax
 0046CC65    push        eax
 0046CC66    mov         eax,dword ptr [ebp-40]
 0046CC69    neg         eax
 0046CC6B    push        eax
 0046CC6C    lea         eax,[ebp-40]
 0046CC6F    push        eax
 0046CC70    call        user32.OffsetRect
 0046CC75    mov         eax,dword ptr [ebp-8]
 0046CC78    call        TWinControl.GetHandle
 0046CC7D    push        eax
 0046CC7E    call        user32.GetWindowDC
 0046CC83    mov         dword ptr [ebp-10],eax
 0046CC86    xor         eax,eax
 0046CC88    push        ebp
 0046CC89    push        46CD85
 0046CC8E    push        dword ptr fs:[eax]
 0046CC91    mov         dword ptr fs:[eax],esp
 0046CC94    lea         esi,[ebp-40]
 0046CC97    lea         edi,[ebp-30]
 0046CC9A    movs        dword ptr [edi],dword ptr [esi]
 0046CC9B    movs        dword ptr [edi],dword ptr [esi]
 0046CC9C    movs        dword ptr [edi],dword ptr [esi]
 0046CC9D    movs        dword ptr [edi],dword ptr [esi]
 0046CC9E    cmp         byte ptr [ebp-9],0
>0046CCA2    je          0046CD1F
 0046CCA4    push        0F0
 0046CCA6    mov         eax,dword ptr [ebp-8]
 0046CCA9    call        TWinControl.GetHandle
 0046CCAE    push        eax
 0046CCAF    call        user32.GetWindowLongA
 0046CCB4    mov         dword ptr [ebp-1C],eax
 0046CCB7    test        byte ptr [ebp-1A],10
>0046CCBB    je          0046CD1F
 0046CCBD    test        byte ptr [ebp-1A],20
>0046CCC1    je          0046CD1F
 0046CCC3    push        2
 0046CCC5    call        user32.GetSystemMetrics
 0046CCCA    mov         dword ptr [ebp-18],eax
 0046CCCD    push        3
 0046CCCF    call        user32.GetSystemMetrics
 0046CCD4    mov         dword ptr [ebp-14],eax
 0046CCD7    push        0FE
 0046CCD9    push        0FE
 0046CCDB    lea         eax,[ebp-30]
 0046CCDE    push        eax
 0046CCDF    call        user32.InflateRect
 0046CCE4    mov         eax,dword ptr [ebp-24]
 0046CCE7    push        eax
 0046CCE8    lea         eax,[ebp-5C]
 0046CCEB    push        eax
 0046CCEC    mov         edx,dword ptr [ebp-24]
 0046CCEF    sub         edx,dword ptr [ebp-14]
 0046CCF2    mov         eax,dword ptr [ebp-28]
 0046CCF5    sub         eax,dword ptr [ebp-18]
 0046CCF8    mov         ecx,dword ptr [ebp-28]
 0046CCFB    call        0041E714
 0046CD00    lea         esi,[ebp-5C]
 0046CD03    lea         edi,[ebp-30]
 0046CD06    movs        dword ptr [edi],dword ptr [esi]
 0046CD07    movs        dword ptr [edi],dword ptr [esi]
 0046CD08    movs        dword ptr [edi],dword ptr [esi]
 0046CD09    movs        dword ptr [edi],dword ptr [esi]
 0046CD0A    push        0F
 0046CD0C    call        user32.GetSysColorBrush
 0046CD11    push        eax
 0046CD12    lea         eax,[ebp-30]
 0046CD15    push        eax
 0046CD16    mov         eax,dword ptr [ebp-10]
 0046CD19    push        eax
 0046CD1A    call        user32.FillRect
 0046CD1F    mov         eax,dword ptr [ebp-34]
 0046CD22    sub         eax,2
 0046CD25    push        eax
 0046CD26    mov         eax,dword ptr [ebp-38]
 0046CD29    sub         eax,2
 0046CD2C    push        eax
 0046CD2D    mov         eax,dword ptr [ebp-3C]
 0046CD30    add         eax,2
 0046CD33    push        eax
 0046CD34    mov         eax,dword ptr [ebp-40]
 0046CD37    add         eax,2;TRect.Left:Longint
 0046CD3A    push        eax
 0046CD3B    mov         eax,dword ptr [ebp-10]
 0046CD3E    push        eax
 0046CD3F    call        gdi32.ExcludeClipRect
 0046CD44    lea         ecx,[ebp-4C]
 0046CD47    mov         dl,2
 0046CD49    mov         eax,dword ptr [ebp-4]
 0046CD4C    call        0046C488
 0046CD51    lea         eax,[ebp-40]
 0046CD54    push        eax
 0046CD55    push        0
 0046CD57    lea         ecx,[ebp-4C]
 0046CD5A    mov         edx,dword ptr [ebp-10]
 0046CD5D    mov         eax,dword ptr [ebp-4]
 0046CD60    call        0046C254
 0046CD65    xor         eax,eax
 0046CD67    pop         edx
 0046CD68    pop         ecx
 0046CD69    pop         ecx
 0046CD6A    mov         dword ptr fs:[eax],edx
 0046CD6D    push        46CD8C
 0046CD72    mov         eax,dword ptr [ebp-10]
 0046CD75    push        eax
 0046CD76    mov         eax,dword ptr [ebp-8]
 0046CD79    call        TWinControl.GetHandle
 0046CD7E    push        eax
 0046CD7F    call        user32.ReleaseDC
 0046CD84    ret
>0046CD85    jmp         @HandleFinally
>0046CD8A    jmp         0046CD72
 0046CD8C    pop         edi
 0046CD8D    pop         esi
 0046CD8E    mov         esp,ebp
 0046CD90    pop         ebp
 0046CD91    ret
end;*}

//0046CD94
procedure sub_0046CD94(?:TThemeServices);
begin
{*
 0046CD94    push        ebp
 0046CD95    mov         ebp,esp
 0046CD97    push        ecx
 0046CD98    mov         dword ptr [ebp-4],eax
 0046CD9B    mov         eax,dword ptr [ebp-4]
 0046CD9E    cmp         byte ptr [eax+6],0;TThemeServices.FUseThemes:Boolean
>0046CDA2    je          0046CDAC
 0046CDA4    mov         eax,dword ptr [ebp-4]
 0046CDA7    call        0046C144
 0046CDAC    call        0043C000
 0046CDB1    mov         edx,dword ptr [ebp-4]
 0046CDB4    mov         byte ptr [edx+6],al;TThemeServices.FUseThemes:Boolean
 0046CDB7    pop         ecx
 0046CDB8    pop         ebp
 0046CDB9    ret
*}
end;

Initialization
//0046CE00
{*
 0046CE00    push        ebp
 0046CE01    mov         ebp,esp
 0046CE03    sub         dword ptr ds:[571D78],1
 0046CE0A    pop         ebp
 0046CE0B    ret
*}
Finalization
//0046CDBC
{*
 0046CDBC    push        ebp
 0046CDBD    mov         ebp,esp
 0046CDBF    xor         eax,eax
 0046CDC1    push        ebp
 0046CDC2    push        46CDF7
 0046CDC7    push        dword ptr fs:[eax]
 0046CDCA    mov         dword ptr fs:[eax],esp
 0046CDCD    inc         dword ptr ds:[571D78]
>0046CDD3    jne         0046CDE9
 0046CDD5    mov         eax,[00571D7C];InternalServices:TThemeServices
 0046CDDA    call        TObject.Free
 0046CDDF    mov         eax,56C594;^'Theme manager © 2001, 2002 Mike Lischke'
 0046CDE4    call        @LStrClr
 0046CDE9    xor         eax,eax
 0046CDEB    pop         edx
 0046CDEC    pop         ecx
 0046CDED    pop         ecx
 0046CDEE    mov         dword ptr fs:[eax],edx
 0046CDF1    push        46CDFE
 0046CDF6    ret
>0046CDF7    jmp         @HandleFinally
>0046CDFC    jmp         0046CDF6
 0046CDFE    pop         ebp
 0046CDFF    ret
*}
end.