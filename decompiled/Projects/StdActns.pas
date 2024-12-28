//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdActns;

interface

uses
  SysUtils, Classes, StdCtrls, Forms;

type
  THintAction = class(TCustomAction)
  public
    constructor Create; virtual;//v2C//0047BB5C
  end;
  TEditAction = class(TAction)
  public
    ......FControl:TCustomEdit;//fA0
    destructor Destroy; virtual;//0047BBAC
    //procedure v10(?:?; ?:?); virtual;//v10//0047BC88
    //function v38(?:?):?; virtual;//v38//0047BC20
    //procedure v3C(?:?); virtual;//v3C//0047BCC8
    //function v54(?:?):?; virtual;//v54//0047BBFC
  end;
  TEditCopy = class(TEditAction)
  public
    //procedure v40(?:?); virtual;//v40//0047BD58
  end;
  TEditSelectAll = class(TEditAction)
  public
    //procedure v3C(?:?); virtual;//v3C//0047BD98
    //procedure v40(?:?); virtual;//v40//0047BD78
  end;
  TWindowAction = class(TAction)
  public
    ............FForm:TCustomForm;//fA0
    //procedure v10(?:?; ?:?); virtual;//v10//0047BE84
    constructor Create; virtual;//v2C//0047BF30
    //function v38(?:?):?; virtual;//v38//0047BE24
    //procedure v3C(?:?); virtual;//v3C//0047BEC4
    //function v54(?:?):?; virtual;//v54//0047BE00
  end;
  TFileExit = class(TCustomAction)
  public
    //function v38(?:?):?; virtual;//v38//0047BFD0
    //procedure v40(?:?); virtual;//v40//0047BF90
  end;
    constructor Create;//0047BB5C
    destructor Destroy;//0047BBAC
    //function sub_0047BBFC(?:?):?;//0047BBFC
    //function sub_0047BC20(?:?):?;//0047BC20
    //procedure sub_0047BC88(?:?; ?:?);//0047BC88
    //procedure sub_0047BCC8(?:?);//0047BCC8
    //procedure sub_0047BD1C(?:TEditAction; ?:?);//0047BD1C
    //procedure sub_0047BD58(?:?);//0047BD58
    //procedure sub_0047BD78(?:?);//0047BD78
    //procedure sub_0047BD98(?:?);//0047BD98
    //function sub_0047BE00(?:?):?;//0047BE00
    //function sub_0047BE24(?:?):?;//0047BE24
    //procedure sub_0047BE84(?:?; ?:?);//0047BE84
    //procedure sub_0047BEC4(?:?);//0047BEC4
    //procedure sub_0047BEF4(?:TWindowAction; ?:?);//0047BEF4
    constructor Create;//0047BF30
    //procedure sub_0047BF90(?:?);//0047BF90
    //function sub_0047BFD0(?:?):?;//0047BFD0

implementation

//0047BB5C
constructor THintAction.Create;
begin
{*
 0047BB5C    push        ebp
 0047BB5D    mov         ebp,esp
 0047BB5F    add         esp,0FFFFFFF4
 0047BB62    test        dl,dl
>0047BB64    je          0047BB6E
 0047BB66    add         esp,0FFFFFFF0
 0047BB69    call        @ClassCreate
 0047BB6E    mov         dword ptr [ebp-0C],ecx
 0047BB71    mov         byte ptr [ebp-5],dl
 0047BB74    mov         dword ptr [ebp-4],eax
 0047BB77    mov         ecx,dword ptr [ebp-0C]
 0047BB7A    xor         edx,edx
 0047BB7C    mov         eax,dword ptr [ebp-4]
 0047BB7F    call        TCustomAction.Create
 0047BB84    mov         eax,dword ptr [ebp-4]
 0047BB87    mov         byte ptr [eax+60],0;THintAction.FDisableIfNoHandler:Boolean
 0047BB8B    mov         eax,dword ptr [ebp-4]
 0047BB8E    cmp         byte ptr [ebp-5],0
>0047BB92    je          0047BBA3
 0047BB94    call        @AfterConstruction
 0047BB99    pop         dword ptr fs:[0]
 0047BBA0    add         esp,0C
 0047BBA3    mov         eax,dword ptr [ebp-4]
 0047BBA6    mov         esp,ebp
 0047BBA8    pop         ebp
 0047BBA9    ret
*}
end;

//0047BBAC
destructor TEditAction.Destroy;
begin
{*
 0047BBAC    push        ebp
 0047BBAD    mov         ebp,esp
 0047BBAF    add         esp,0FFFFFFF8
 0047BBB2    call        @BeforeDestruction
 0047BBB7    mov         byte ptr [ebp-5],dl
 0047BBBA    mov         dword ptr [ebp-4],eax
 0047BBBD    mov         eax,dword ptr [ebp-4]
 0047BBC0    cmp         dword ptr [eax+0A0],0
>0047BBC7    je          0047BBDA
 0047BBC9    mov         eax,dword ptr [ebp-4]
 0047BBCC    mov         eax,dword ptr [eax+0A0]
 0047BBD2    mov         edx,dword ptr [ebp-4]
 0047BBD5    call        0042A61C
 0047BBDA    mov         dl,byte ptr [ebp-5]
 0047BBDD    and         dl,0FC
 0047BBE0    mov         eax,dword ptr [ebp-4]
 0047BBE3    call        TCustomAction.Destroy
 0047BBE8    cmp         byte ptr [ebp-5],0
>0047BBEC    jle         0047BBF6
 0047BBEE    mov         eax,dword ptr [ebp-4]
 0047BBF1    call        @ClassDestroy
 0047BBF6    pop         ecx
 0047BBF7    pop         ecx
 0047BBF8    pop         ebp
 0047BBF9    ret
*}
end;

//0047BBFC
{*function sub_0047BBFC(?:?):?;
begin
 0047BBFC    push        ebp
 0047BBFD    mov         ebp,esp
 0047BBFF    add         esp,0FFFFFFF4
 0047BC02    mov         dword ptr [ebp-8],edx
 0047BC05    mov         dword ptr [ebp-4],eax
 0047BC08    mov         eax,dword ptr [ebp-8]
 0047BC0B    mov         edx,dword ptr ds:[46DF18];TCustomEdit
 0047BC11    call        @AsClass
 0047BC16    mov         dword ptr [ebp-0C],eax
 0047BC19    mov         eax,dword ptr [ebp-0C]
 0047BC1C    mov         esp,ebp
 0047BC1E    pop         ebp
 0047BC1F    ret
end;*}

//0047BC20
{*function sub_0047BC20(?:?):?;
begin
 0047BC20    push        ebp
 0047BC21    mov         ebp,esp
 0047BC23    add         esp,0FFFFFFF4
 0047BC26    push        esi
 0047BC27    mov         dword ptr [ebp-8],edx
 0047BC2A    mov         dword ptr [ebp-4],eax
 0047BC2D    mov         eax,dword ptr [ebp-4]
 0047BC30    cmp         dword ptr [eax+0A0],0;TEditAction........FControl:TCustomEdit
>0047BC37    je          0047BC47
 0047BC39    mov         eax,dword ptr [ebp-8]
 0047BC3C    mov         edx,dword ptr [ebp-4]
 0047BC3F    cmp         eax,dword ptr [edx+0A0];TEditAction.........FControl:TCustomEdit
>0047BC45    je          0047BC65
 0047BC47    mov         eax,dword ptr [ebp-4]
 0047BC4A    cmp         dword ptr [eax+0A0],0;TEditAction..........FControl:TCustomEdit
>0047BC51    jne         0047BC75
 0047BC53    mov         eax,dword ptr [ebp-8]
 0047BC56    mov         edx,dword ptr ds:[46DF18];TCustomEdit
 0047BC5C    call        @IsClass
 0047BC61    test        al,al
>0047BC63    je          0047BC75
 0047BC65    mov         eax,dword ptr [ebp-8]
 0047BC68    mov         si,0FFB5
 0047BC6C    call        @CallDynaInst
 0047BC71    test        al,al
>0047BC73    jne         0047BC79
 0047BC75    xor         eax,eax
>0047BC77    jmp         0047BC7B
 0047BC79    mov         al,1
 0047BC7B    mov         byte ptr [ebp-9],al
 0047BC7E    mov         al,byte ptr [ebp-9]
 0047BC81    pop         esi
 0047BC82    mov         esp,ebp
 0047BC84    pop         ebp
 0047BC85    ret
end;*}

//0047BC88
{*procedure sub_0047BC88(?:?; ?:?);
begin
 0047BC88    push        ebp
 0047BC89    mov         ebp,esp
 0047BC8B    add         esp,0FFFFFFF4
 0047BC8E    mov         byte ptr [ebp-9],cl
 0047BC91    mov         dword ptr [ebp-8],edx
 0047BC94    mov         dword ptr [ebp-4],eax
 0047BC97    mov         cl,byte ptr [ebp-9]
 0047BC9A    mov         edx,dword ptr [ebp-8]
 0047BC9D    mov         eax,dword ptr [ebp-4]
 0047BCA0    call        0042B0DC
 0047BCA5    cmp         byte ptr [ebp-9],1
>0047BCA9    jne         0047BCC3
 0047BCAB    mov         eax,dword ptr [ebp-8]
 0047BCAE    mov         edx,dword ptr [ebp-4]
 0047BCB1    cmp         eax,dword ptr [edx+0A0];TEditAction...........FControl:TCustomEdit
>0047BCB7    jne         0047BCC3
 0047BCB9    xor         edx,edx
 0047BCBB    mov         eax,dword ptr [ebp-4]
 0047BCBE    call        0047BD1C
 0047BCC3    mov         esp,ebp
 0047BCC5    pop         ebp
 0047BCC6    ret
end;*}

//0047BCC8
{*procedure sub_0047BCC8(?:?);
begin
 0047BCC8    push        ebp
 0047BCC9    mov         ebp,esp
 0047BCCB    add         esp,0FFFFFFF8
 0047BCCE    mov         dword ptr [ebp-8],edx
 0047BCD1    mov         dword ptr [ebp-4],eax
 0047BCD4    mov         eax,dword ptr [ebp-4]
 0047BCD7    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 0047BCDD    call        @IsClass
 0047BCE2    test        al,al
>0047BCE4    jne         0047BCF8
 0047BCE6    mov         eax,dword ptr [ebp-4]
 0047BCE9    mov         edx,dword ptr ds:[47B670];TEditCopy
 0047BCEF    call        @IsClass
 0047BCF4    test        al,al
>0047BCF6    je          0047BD18
 0047BCF8    mov         edx,dword ptr [ebp-8]
 0047BCFB    mov         eax,dword ptr [ebp-4]
 0047BCFE    mov         ecx,dword ptr [eax]
 0047BD00    call        dword ptr [ecx+54];TEditAction.sub_0047BBFC
 0047BD03    mov         edx,dword ptr [eax]
 0047BD05    call        dword ptr [edx+0CC]
 0047BD0B    test        eax,eax
 0047BD0D    setg        dl
 0047BD10    mov         eax,dword ptr [ebp-4]
 0047BD13    call        TVirtualListAction.SetEnabled
 0047BD18    pop         ecx
 0047BD19    pop         ecx
 0047BD1A    pop         ebp
 0047BD1B    ret
end;*}

//0047BD1C
{*procedure sub_0047BD1C(?:TEditAction; ?:?);
begin
 0047BD1C    push        ebp
 0047BD1D    mov         ebp,esp
 0047BD1F    add         esp,0FFFFFFF8
 0047BD22    mov         dword ptr [ebp-8],edx
 0047BD25    mov         dword ptr [ebp-4],eax
 0047BD28    mov         eax,dword ptr [ebp-8]
 0047BD2B    mov         edx,dword ptr [ebp-4]
 0047BD2E    cmp         eax,dword ptr [edx+0A0];TEditAction............FControl:TCustomEdit
>0047BD34    je          0047BD53
 0047BD36    mov         eax,dword ptr [ebp-8]
 0047BD39    mov         edx,dword ptr [ebp-4]
 0047BD3C    mov         dword ptr [edx+0A0],eax;TEditAction.............FControl:TCustomEdit
 0047BD42    cmp         dword ptr [ebp-8],0
>0047BD46    je          0047BD53
 0047BD48    mov         edx,dword ptr [ebp-4]
 0047BD4B    mov         eax,dword ptr [ebp-8]
 0047BD4E    call        0042A2CC
 0047BD53    pop         ecx
 0047BD54    pop         ecx
 0047BD55    pop         ebp
 0047BD56    ret
end;*}

//0047BD58
{*procedure sub_0047BD58(?:?);
begin
 0047BD58    push        ebp
 0047BD59    mov         ebp,esp
 0047BD5B    add         esp,0FFFFFFF8
 0047BD5E    mov         dword ptr [ebp-8],edx
 0047BD61    mov         dword ptr [ebp-4],eax
 0047BD64    mov         edx,dword ptr [ebp-8]
 0047BD67    mov         eax,dword ptr [ebp-4]
 0047BD6A    mov         ecx,dword ptr [eax]
 0047BD6C    call        dword ptr [ecx+54];TEditCopy.sub_0047BBFC
 0047BD6F    call        004742B0
 0047BD74    pop         ecx
 0047BD75    pop         ecx
 0047BD76    pop         ebp
 0047BD77    ret
end;*}

//0047BD78
{*procedure sub_0047BD78(?:?);
begin
 0047BD78    push        ebp
 0047BD79    mov         ebp,esp
 0047BD7B    add         esp,0FFFFFFF8
 0047BD7E    mov         dword ptr [ebp-8],edx
 0047BD81    mov         dword ptr [ebp-4],eax
 0047BD84    mov         edx,dword ptr [ebp-8]
 0047BD87    mov         eax,dword ptr [ebp-4]
 0047BD8A    mov         ecx,dword ptr [eax]
 0047BD8C    call        dword ptr [ecx+54];TEditSelectAll.sub_0047BBFC
 0047BD8F    call        004742D4
 0047BD94    pop         ecx
 0047BD95    pop         ecx
 0047BD96    pop         ebp
 0047BD97    ret
end;*}

//0047BD98
{*procedure sub_0047BD98(?:?);
begin
 0047BD98    push        ebp
 0047BD99    mov         ebp,esp
 0047BD9B    add         esp,0FFFFFFF4
 0047BD9E    xor         ecx,ecx
 0047BDA0    mov         dword ptr [ebp-0C],ecx
 0047BDA3    mov         dword ptr [ebp-8],edx
 0047BDA6    mov         dword ptr [ebp-4],eax
 0047BDA9    xor         eax,eax
 0047BDAB    push        ebp
 0047BDAC    push        47BDF5
 0047BDB1    push        dword ptr fs:[eax]
 0047BDB4    mov         dword ptr fs:[eax],esp
 0047BDB7    mov         edx,dword ptr [ebp-8]
 0047BDBA    mov         eax,dword ptr [ebp-4]
 0047BDBD    mov         ecx,dword ptr [eax]
 0047BDBF    call        dword ptr [ecx+54];TEditSelectAll.sub_0047BBFC
 0047BDC2    lea         edx,[ebp-0C]
 0047BDC5    call        TPanel.GetCaption
 0047BDCA    mov         eax,dword ptr [ebp-0C]
 0047BDCD    call        @LStrLen
 0047BDD2    test        eax,eax
 0047BDD4    setg        dl
 0047BDD7    mov         eax,dword ptr [ebp-4]
 0047BDDA    call        TVirtualListAction.SetEnabled
 0047BDDF    xor         eax,eax
 0047BDE1    pop         edx
 0047BDE2    pop         ecx
 0047BDE3    pop         ecx
 0047BDE4    mov         dword ptr fs:[eax],edx
 0047BDE7    push        47BDFC
 0047BDEC    lea         eax,[ebp-0C]
 0047BDEF    call        @LStrClr
 0047BDF4    ret
>0047BDF5    jmp         @HandleFinally
>0047BDFA    jmp         0047BDEC
 0047BDFC    mov         esp,ebp
 0047BDFE    pop         ebp
 0047BDFF    ret
end;*}

//0047BE00
{*function sub_0047BE00(?:?):?;
begin
 0047BE00    push        ebp
 0047BE01    mov         ebp,esp
 0047BE03    add         esp,0FFFFFFF4
 0047BE06    mov         dword ptr [ebp-8],edx
 0047BE09    mov         dword ptr [ebp-4],eax
 0047BE0C    mov         eax,dword ptr [ebp-8]
 0047BE0F    mov         edx,dword ptr ds:[49EF70];TForm
 0047BE15    call        @AsClass
 0047BE1A    mov         dword ptr [ebp-0C],eax
 0047BE1D    mov         eax,dword ptr [ebp-0C]
 0047BE20    mov         esp,ebp
 0047BE22    pop         ebp
 0047BE23    ret
end;*}

//0047BE24
{*function sub_0047BE24(?:?):?;
begin
 0047BE24    push        ebp
 0047BE25    mov         ebp,esp
 0047BE27    add         esp,0FFFFFFF4
 0047BE2A    mov         dword ptr [ebp-8],edx
 0047BE2D    mov         dword ptr [ebp-4],eax
 0047BE30    mov         eax,dword ptr [ebp-4]
 0047BE33    cmp         dword ptr [eax+0A0],0;TWindowAction..............FForm:TCustomForm
>0047BE3A    je          0047BE4A
 0047BE3C    mov         eax,dword ptr [ebp-8]
 0047BE3F    mov         edx,dword ptr [ebp-4]
 0047BE42    cmp         eax,dword ptr [edx+0A0];TWindowAction...............FForm:TCustomForm
>0047BE48    je          0047BE68
 0047BE4A    mov         eax,dword ptr [ebp-4]
 0047BE4D    cmp         dword ptr [eax+0A0],0;TWindowAction................FForm:TCustomForm
>0047BE54    jne         0047BE74
 0047BE56    mov         eax,dword ptr [ebp-8]
 0047BE59    mov         edx,dword ptr ds:[49EF70];TForm
 0047BE5F    call        @IsClass
 0047BE64    test        al,al
>0047BE66    je          0047BE74
 0047BE68    mov         eax,dword ptr [ebp-8]
 0047BE6B    cmp         byte ptr [eax+22F],2
>0047BE72    je          0047BE78
 0047BE74    xor         eax,eax
>0047BE76    jmp         0047BE7A
 0047BE78    mov         al,1
 0047BE7A    mov         byte ptr [ebp-9],al
 0047BE7D    mov         al,byte ptr [ebp-9]
 0047BE80    mov         esp,ebp
 0047BE82    pop         ebp
 0047BE83    ret
end;*}

//0047BE84
{*procedure sub_0047BE84(?:?; ?:?);
begin
 0047BE84    push        ebp
 0047BE85    mov         ebp,esp
 0047BE87    add         esp,0FFFFFFF4
 0047BE8A    mov         byte ptr [ebp-9],cl
 0047BE8D    mov         dword ptr [ebp-8],edx
 0047BE90    mov         dword ptr [ebp-4],eax
 0047BE93    mov         cl,byte ptr [ebp-9]
 0047BE96    mov         edx,dword ptr [ebp-8]
 0047BE99    mov         eax,dword ptr [ebp-4]
 0047BE9C    call        0042B0DC
 0047BEA1    cmp         byte ptr [ebp-9],1
>0047BEA5    jne         0047BEBF
 0047BEA7    mov         eax,dword ptr [ebp-8]
 0047BEAA    mov         edx,dword ptr [ebp-4]
 0047BEAD    cmp         eax,dword ptr [edx+0A0];TWindowAction.................FForm:TCustomForm
>0047BEB3    jne         0047BEBF
 0047BEB5    xor         edx,edx
 0047BEB7    mov         eax,dword ptr [ebp-4]
 0047BEBA    call        0047BEF4
 0047BEBF    mov         esp,ebp
 0047BEC1    pop         ebp
 0047BEC2    ret
end;*}

//0047BEC4
{*procedure sub_0047BEC4(?:?);
begin
 0047BEC4    push        ebp
 0047BEC5    mov         ebp,esp
 0047BEC7    add         esp,0FFFFFFF8
 0047BECA    mov         dword ptr [ebp-8],edx
 0047BECD    mov         dword ptr [ebp-4],eax
 0047BED0    mov         edx,dword ptr [ebp-8]
 0047BED3    mov         eax,dword ptr [ebp-4]
 0047BED6    mov         ecx,dword ptr [eax]
 0047BED8    call        dword ptr [ecx+54];TWindowAction.sub_0047BE00
 0047BEDB    call        TCustomForm.GetMDIChildCount
 0047BEE0    test        eax,eax
 0047BEE2    setg        dl
 0047BEE5    mov         eax,dword ptr [ebp-4]
 0047BEE8    call        TVirtualListAction.SetEnabled
 0047BEED    pop         ecx
 0047BEEE    pop         ecx
 0047BEEF    pop         ebp
 0047BEF0    ret
end;*}

//0047BEF4
{*procedure sub_0047BEF4(?:TWindowAction; ?:?);
begin
 0047BEF4    push        ebp
 0047BEF5    mov         ebp,esp
 0047BEF7    add         esp,0FFFFFFF8
 0047BEFA    mov         dword ptr [ebp-8],edx
 0047BEFD    mov         dword ptr [ebp-4],eax
 0047BF00    mov         eax,dword ptr [ebp-8]
 0047BF03    mov         edx,dword ptr [ebp-4]
 0047BF06    cmp         eax,dword ptr [edx+0A0];TWindowAction..................FForm:TCustomForm
>0047BF0C    je          0047BF2B
 0047BF0E    mov         eax,dword ptr [ebp-8]
 0047BF11    mov         edx,dword ptr [ebp-4]
 0047BF14    mov         dword ptr [edx+0A0],eax;TWindowAction...................FForm:TCustomForm
 0047BF1A    cmp         dword ptr [ebp-8],0
>0047BF1E    je          0047BF2B
 0047BF20    mov         edx,dword ptr [ebp-4]
 0047BF23    mov         eax,dword ptr [ebp-8]
 0047BF26    call        0042A2CC
 0047BF2B    pop         ecx
 0047BF2C    pop         ecx
 0047BF2D    pop         ebp
 0047BF2E    ret
end;*}

//0047BF30
constructor TInternalMDIAction.Create;
begin
{*
 0047BF30    push        ebp
 0047BF31    mov         ebp,esp
 0047BF33    add         esp,0FFFFFFF4
 0047BF36    test        dl,dl
>0047BF38    je          0047BF42
 0047BF3A    add         esp,0FFFFFFF0
 0047BF3D    call        @ClassCreate
 0047BF42    mov         dword ptr [ebp-0C],ecx
 0047BF45    mov         byte ptr [ebp-5],dl
 0047BF48    mov         dword ptr [ebp-4],eax
 0047BF4B    mov         ecx,dword ptr [ebp-0C]
 0047BF4E    xor         edx,edx
 0047BF50    mov         eax,dword ptr [ebp-4]
 0047BF53    call        00494750
 0047BF58    mov         eax,dword ptr [ebp-4]
 0047BF5B    mov         byte ptr [eax+60],0;TWindowAction.FDisableIfNoHandler:Boolean
 0047BF5F    mov         eax,dword ptr [ebp-4]
 0047BF62    test        byte ptr [eax+1C],10;TWindowAction.FComponentState:TComponentState
 0047BF66    setne       dl
 0047BF69    mov         eax,dword ptr [ebp-4]
 0047BF6C    call        TVirtualListAction.SetEnabled
 0047BF71    mov         eax,dword ptr [ebp-4]
 0047BF74    cmp         byte ptr [ebp-5],0
>0047BF78    je          0047BF89
 0047BF7A    call        @AfterConstruction
 0047BF7F    pop         dword ptr fs:[0]
 0047BF86    add         esp,0C
 0047BF89    mov         eax,dword ptr [ebp-4]
 0047BF8C    mov         esp,ebp
 0047BF8E    pop         ebp
 0047BF8F    ret
*}
end;

//0047BF90
{*procedure sub_0047BF90(?:?);
begin
 0047BF90    push        ebp
 0047BF91    mov         ebp,esp
 0047BF93    add         esp,0FFFFFFF8
 0047BF96    mov         dword ptr [ebp-8],edx
 0047BF99    mov         dword ptr [ebp-4],eax
 0047BF9C    mov         eax,[0056E3C0];^Application:TApplication
 0047BFA1    mov         eax,dword ptr [eax]
 0047BFA3    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>0047BFA7    je          0047BFCB
 0047BFA9    mov         eax,[0056E3C0];^Application:TApplication
 0047BFAE    mov         eax,dword ptr [eax]
 0047BFB0    xor         ecx,ecx
 0047BFB2    mov         edx,2
 0047BFB7    call        004ABEA8
 0047BFBC    mov         eax,[0056E3C0];^Application:TApplication
 0047BFC1    mov         eax,dword ptr [eax]
 0047BFC3    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 0047BFC6    call        004A7264
 0047BFCB    pop         ecx
 0047BFCC    pop         ecx
 0047BFCD    pop         ebp
 0047BFCE    ret
end;*}

//0047BFD0
{*function sub_0047BFD0(?:?):?;
begin
 0047BFD0    push        ebp
 0047BFD1    mov         ebp,esp
 0047BFD3    add         esp,0FFFFFFF4
 0047BFD6    mov         dword ptr [ebp-0C],edx
 0047BFD9    mov         dword ptr [ebp-4],eax
 0047BFDC    mov         byte ptr [ebp-5],1
 0047BFE0    mov         al,byte ptr [ebp-5]
 0047BFE3    mov         esp,ebp
 0047BFE5    pop         ebp
 0047BFE6    ret
end;*}

end.