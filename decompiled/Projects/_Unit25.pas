//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit25;

interface

uses
  SysUtils, Classes;

type
  TSynchroObject = class(TObject)
  public
    procedure v0; virtual;//v0//0043B510
    procedure v4; virtual;//v4//0043B51C
  end;
  TCriticalSection = class(TSynchroObject)
  public
    //..:?;//f4
    destructor Destroy; virtual;//0043B578
    procedure v0; virtual;//v0//0043B5B8
    procedure v4; virtual;//v4//0043B5D0
    constructor Create;//0043B528
  end;
    procedure sub_0043B510;//0043B510
    procedure sub_0043B51C;//0043B51C
    destructor Destroy;//0043B578
    procedure sub_0043B5B8;//0043B5B8
    procedure sub_0043B5D0;//0043B5D0
    //procedure sub_0043B5E8(?:?);//0043B5E8
    //procedure sub_0043B5FC(?:?);//0043B5FC

implementation

//0043B510
procedure sub_0043B510;
begin
{*
 0043B510    push        ebp
 0043B511    mov         ebp,esp
 0043B513    push        ecx
 0043B514    mov         dword ptr [ebp-4],eax
 0043B517    pop         ecx
 0043B518    pop         ebp
 0043B519    ret
*}
end;

//0043B51C
procedure sub_0043B51C;
begin
{*
 0043B51C    push        ebp
 0043B51D    mov         ebp,esp
 0043B51F    push        ecx
 0043B520    mov         dword ptr [ebp-4],eax
 0043B523    pop         ecx
 0043B524    pop         ebp
 0043B525    ret
*}
end;

//0043B528
constructor TCriticalSection.Create;
begin
{*
 0043B528    push        ebp
 0043B529    mov         ebp,esp
 0043B52B    add         esp,0FFFFFFF8
 0043B52E    test        dl,dl
>0043B530    je          0043B53A
 0043B532    add         esp,0FFFFFFF0
 0043B535    call        @ClassCreate
 0043B53A    mov         byte ptr [ebp-5],dl
 0043B53D    mov         dword ptr [ebp-4],eax
 0043B540    xor         edx,edx
 0043B542    mov         eax,dword ptr [ebp-4]
 0043B545    call        TObject.Create
 0043B54A    mov         eax,dword ptr [ebp-4]
 0043B54D    add         eax,4
 0043B550    push        eax
 0043B551    call        kernel32.InitializeCriticalSection
 0043B556    mov         eax,dword ptr [ebp-4]
 0043B559    cmp         byte ptr [ebp-5],0
>0043B55D    je          0043B56E
 0043B55F    call        @AfterConstruction
 0043B564    pop         dword ptr fs:[0]
 0043B56B    add         esp,0C
 0043B56E    mov         eax,dword ptr [ebp-4]
 0043B571    pop         ecx
 0043B572    pop         ecx
 0043B573    pop         ebp
 0043B574    ret
*}
end;

//0043B578
destructor TCriticalSection.Destroy;
begin
{*
 0043B578    push        ebp
 0043B579    mov         ebp,esp
 0043B57B    add         esp,0FFFFFFF8
 0043B57E    call        @BeforeDestruction
 0043B583    mov         byte ptr [ebp-5],dl
 0043B586    mov         dword ptr [ebp-4],eax
 0043B589    mov         eax,dword ptr [ebp-4]
 0043B58C    add         eax,4;TCriticalSection....:?
 0043B58F    push        eax
 0043B590    call        kernel32.DeleteCriticalSection
 0043B595    mov         dl,byte ptr [ebp-5]
 0043B598    and         dl,0FC
 0043B59B    mov         eax,dword ptr [ebp-4]
 0043B59E    call        TObject.Destroy
 0043B5A3    cmp         byte ptr [ebp-5],0
>0043B5A7    jle         0043B5B1
 0043B5A9    mov         eax,dword ptr [ebp-4]
 0043B5AC    call        @ClassDestroy
 0043B5B1    pop         ecx
 0043B5B2    pop         ecx
 0043B5B3    pop         ebp
 0043B5B4    ret
*}
end;

//0043B5B8
procedure sub_0043B5B8;
begin
{*
 0043B5B8    push        ebp
 0043B5B9    mov         ebp,esp
 0043B5BB    push        ecx
 0043B5BC    mov         dword ptr [ebp-4],eax
 0043B5BF    mov         eax,dword ptr [ebp-4]
 0043B5C2    add         eax,4;TCriticalSection.....:?
 0043B5C5    push        eax
 0043B5C6    call        kernel32.EnterCriticalSection
 0043B5CB    pop         ecx
 0043B5CC    pop         ebp
 0043B5CD    ret
*}
end;

//0043B5D0
procedure sub_0043B5D0;
begin
{*
 0043B5D0    push        ebp
 0043B5D1    mov         ebp,esp
 0043B5D3    push        ecx
 0043B5D4    mov         dword ptr [ebp-4],eax
 0043B5D7    mov         eax,dword ptr [ebp-4]
 0043B5DA    add         eax,4;TCriticalSection......:?
 0043B5DD    push        eax
 0043B5DE    call        kernel32.LeaveCriticalSection
 0043B5E3    pop         ecx
 0043B5E4    pop         ebp
 0043B5E5    ret
*}
end;

//0043B5E8
{*procedure sub_0043B5E8(?:?);
begin
 0043B5E8    push        ebp
 0043B5E9    mov         ebp,esp
 0043B5EB    push        ecx
 0043B5EC    mov         dword ptr [ebp-4],eax
 0043B5EF    mov         eax,dword ptr [ebp-4]
 0043B5F2    mov         edx,dword ptr [eax]
 0043B5F4    call        dword ptr [edx]
 0043B5F6    pop         ecx
 0043B5F7    pop         ebp
 0043B5F8    ret
end;*}

//0043B5FC
{*procedure sub_0043B5FC(?:?);
begin
 0043B5FC    push        ebp
 0043B5FD    mov         ebp,esp
 0043B5FF    push        ecx
 0043B600    mov         dword ptr [ebp-4],eax
 0043B603    mov         eax,dword ptr [ebp-4]
 0043B606    mov         edx,dword ptr [eax]
 0043B608    call        dword ptr [edx+4]
 0043B60B    pop         ecx
 0043B60C    pop         ebp
 0043B60D    ret
end;*}

end.