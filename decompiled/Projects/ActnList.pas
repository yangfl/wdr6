//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnList;

interface

uses
  SysUtils, Classes, ActnList, ImgList, system;

type
  TContainedAction = class(TBasicAction)
  public
    Category:String;//f58
    FActionList:TCustomActionList;//f5C
    destructor Destroy; virtual;//00493108
    //procedure v14(?:?); virtual;//v14//004931F8
    //function v44:?; virtual;//v44//004933DC
    procedure sub_0042B128; dynamic;//00493370
    procedure sub_0042A774; dynamic;//004931CC
    procedure sub_0042A81C; dynamic;//0049319C
    //procedure sub_0042A834(?:?); dynamic;//00493338
    function IsStoredCategory(Value:String):Boolean;//00493188
    procedure SetCategory(Value:String);//004932B0
  end;
  TActionEvent = procedure(Action:TBasicAction; var Handled:Boolean) of object;;
  TActionListState = (asNormal, asSuspended, asSuspendedEnabled);
  TCustomActionList = class(TComponent)
  public
    FActions:TList;//f30
    FImageChangeLink:TChangeLink;//f34
    FImages:TCustomImageList;//f38
    FOnChange:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnExecute:TActionEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnUpdate:TActionEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FState:TActionListState;//f58
    FOnStateChange:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    destructor Destroy; virtual;//004934D0
    //procedure v10(?:?; ?:?); virtual;//v10//00493690
    constructor v2C; virtual;//v2C//00493448
    procedure v30; virtual;//v30//0049374C
    procedure SetImages(Value:TCustomImageList); virtual;//v34//00493610
    //procedure sub_0042ACC8(?:?); dynamic;//004938E0
    //procedure sub_0042AC94(?:?); dynamic;//004938AC
    //procedure sub_0042A808(?:?; ?:?); dynamic;//00493594
    //procedure sub_0042A788(?:?; ?:?); dynamic;//00493538
  end;
  TActionList = class(TCustomActionList)
    procedure SetState(Value:TActionListState);//00493914
  end;
  TShortCutList = class(TStringList)
  public
    //function v38(?:?):?; virtual;//v38//00494714
  end;
  THintEvent = procedure(var HintStr:String; var CanShow:Boolean) of object;;
  TCustomAction = class(TContainedAction)
  public
    FDisableIfNoHandler:Boolean;//f60
    FCaption:String;//f64
    FChecking:Boolean;//f68
    FChecked:Boolean;//f69
    FEnabled:Boolean;//f6A
    FGroupIndex:Integer;//f6C
    FHelpType:THelpType;//f70
    FHelpContext:THelpContext;//f74
    FHelpKeyword:String;//f78
    FHint:String;//f7C
    FImageIndex:TImageIndex;//f80
    FShortCut:TShortCut;//f84
    FVisible:Boolean;//f86
    FOnHint:THintEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    FSecondaryShortCuts:TShortCutList;//f90
    FSavedEnabledState:Boolean;//f94
    FAutoCheck:Boolean;//f95
    FImage:TObject;//f98
    FMask:TObject;//f9C
    destructor Destroy; virtual;//00493C94
    //procedure v0(?:?); virtual;//v0//00493CFC
    //procedure v18(?:?); virtual;//v18//004944FC
    constructor Create; virtual;//v2C//00493C24
    procedure SetHelpContext(Value:THelpContext); virtual;//v48//00494260
    procedure SetHelpKeyword(Value:String); virtual;//v4C//004941D4
    //function v50:?; virtual;//v50//004946F0
    //procedure sub_00494568(?:?); dynamic;//00494568
    procedure sub_0042B128; dynamic;//004945A4
  end;
  TAction = class(TCustomAction)
  public
    constructor v2C; virtual;//v2C//00494750
    procedure SetAutoCheck(Value:Boolean);//00493DE0
    procedure SetChecked(Value:Boolean);//00493EF0
    procedure SetGroupIndex(Value:Integer);//004940D8
  end;
  TActionLink = class(TBasicActionLink)
  public
    //function v20:?; virtual;//v20//004939F8
    //function v24:?; virtual;//v24//00493A1C
    //function v28:?; virtual;//v28//00493A40
    //function v2C:?; virtual;//v2C//00493A64
    //function v30:?; virtual;//v30//00493A88
    //function v34:?; virtual;//v34//00493AAC
    //function v38:?; virtual;//v38//00493AD0
    //function v3C:?; virtual;//v3C//00493AF4
    //function v40:?; virtual;//v40//00493B18
    //function v44:?; virtual;//v44//00493B3C
    //procedure v48(?:?); virtual;//v48//00493B60
    //procedure v4C(?:?); virtual;//v4C//00493B70
    //procedure v50(?:?); virtual;//v50//00493B80
    //procedure v54(?:?); virtual;//v54//00493B90
    //procedure v58(?:?); virtual;//v58//00493BA0
    //procedure v5C(?:?); virtual;//v5C//00493BB0
    //procedure v60(?:?); virtual;//v60//00493BC0
    //procedure v64(?:?); virtual;//v64//00493BD0
    //procedure v68(?:?); virtual;//v68//00493BE0
    //procedure v6C(?:?); virtual;//v6C//00493BF0
    //procedure v70(?:?); virtual;//v70//00493C00
    //procedure v74(?:?); virtual;//v74//00493C14
  end;
    destructor Destroy;//00493108
    //function sub_00493150(?:?):?;//00493150
    procedure sub_0042A81C;//0049319C
    procedure sub_0042A774;//004931CC
    //procedure sub_004931F8(?:?);//004931F8
    //procedure sub_00493238(?:TContainedAction; ?:?);//00493238
    //procedure sub_004932F4(?:TContainedAction; ?:?);//004932F4
    //procedure sub_0042A834(?:?);//00493338
    procedure sub_0042B128;//00493370
    //function sub_004933DC:?;//004933DC
    constructor sub_00493448;//00493448
    destructor Destroy;//004934D0
    //procedure sub_0042A788(?:?; ?:?);//00493538
    //procedure sub_0042A808(?:?; ?:?);//00493594
    //function sub_004935D0(?:TCustomActionList; ?:?):?;//004935D0
    //function sub_004935F4(?:TCustomActionList):?;//004935F4
    procedure SetImages(Value:TCustomImageList);//00493610
    //procedure sub_0049366C(?:?; ?:?);//0049366C
    //procedure sub_00493690(?:?; ?:?);//00493690
    //procedure sub_004936EC(?:?; ?:TContainedAction);//004936EC
    procedure sub_00493720(?:TCustomActionList; ?:TContainedAction);//00493720
    procedure sub_0049374C;//0049374C
    //function sub_004937E4(?:Pointer; ?:?):?;//004937E4
    //procedure sub_0042AC94(?:?);//004938AC
    //procedure sub_0042ACC8(?:?);//004938E0
    //function sub_004939F8:?;//004939F8
    //function sub_00493A1C:?;//00493A1C
    //function sub_00493A40:?;//00493A40
    //function sub_00493A64:?;//00493A64
    //function sub_00493A88:?;//00493A88
    //function sub_00493AAC:?;//00493AAC
    //function sub_00493AD0:?;//00493AD0
    //function sub_00493AF4:?;//00493AF4
    //function sub_00493B18:?;//00493B18
    //function sub_00493B3C:?;//00493B3C
    //procedure sub_00493B60(?:?);//00493B60
    //procedure sub_00493B70(?:?);//00493B70
    //procedure sub_00493B80(?:?);//00493B80
    //procedure sub_00493B90(?:?);//00493B90
    //procedure sub_00493BA0(?:?);//00493BA0
    //procedure sub_00493BB0(?:?);//00493BB0
    //procedure sub_00493BC0(?:?);//00493BC0
    //procedure sub_00493BD0(?:?);//00493BD0
    //procedure sub_00493BE0(?:?);//00493BE0
    //procedure sub_00493BF0(?:?);//00493BF0
    //procedure sub_00493C00(?:?);//00493C00
    //procedure sub_00493C14(?:?);//00493C14
    constructor Create;//00493C24
    destructor Destroy;//00493C94
    //procedure sub_00493CFC(?:?);//00493CFC
    procedure SetCaption(Value:String);//00493E68
    procedure SetEnabled(Value:Boolean);//00494028
    procedure SetHelpType(Value:THelpType);//00494154
    procedure SetHelpKeyword(Value:String);//004941D4
    procedure SetHelpContext(Value:THelpContext);//00494260
    procedure SetHint(Value:String);//004942DC
    procedure SetImageIndex(Value:TImageIndex);//00494364
    procedure SetShortCut(Value:TShortCut);//004943E8
    procedure SetVisible(Value:Boolean);//00494470
    //procedure sub_004944FC(?:?);//004944FC
    //procedure sub_00494568(?:?);//00494568
    procedure sub_0042B128;//004945A4
    //function GetSecondaryShortCuts:?;//00494634
    procedure SetSecondaryShortCuts(Value:TShortCutList);//00494674
    function IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;//004946B8
    //function sub_004946F0:?;//004946F0
    //function sub_00494714(?:?):?;//00494714
    constructor sub_00494750;//00494750
    //function sub_004947A0(?:?; ?:?):?;//004947A0

implementation

//00493108
destructor TContainedAction.Destroy;
begin
{*
 00493108    push        ebp
 00493109    mov         ebp,esp
 0049310B    add         esp,0FFFFFFF8
 0049310E    call        @BeforeDestruction
 00493113    mov         byte ptr [ebp-5],dl
 00493116    mov         dword ptr [ebp-4],eax
 00493119    mov         eax,dword ptr [ebp-4]
 0049311C    cmp         dword ptr [eax+5C],0
>00493120    je          00493130
 00493122    mov         eax,dword ptr [ebp-4]
 00493125    mov         eax,dword ptr [eax+5C]
 00493128    mov         edx,dword ptr [ebp-4]
 0049312B    call        00493720
 00493130    mov         dl,byte ptr [ebp-5]
 00493133    and         dl,0FC
 00493136    mov         eax,dword ptr [ebp-4]
 00493139    call        TBasicAction.Destroy
 0049313E    cmp         byte ptr [ebp-5],0
>00493142    jle         0049314C
 00493144    mov         eax,dword ptr [ebp-4]
 00493147    call        @ClassDestroy
 0049314C    pop         ecx
 0049314D    pop         ecx
 0049314E    pop         ebp
 0049314F    ret
*}
end;

//00493150
{*function sub_00493150(?:?):?;
begin
 00493150    push        ebp
 00493151    mov         ebp,esp
 00493153    add         esp,0FFFFFFF8
 00493156    mov         dword ptr [ebp-4],eax
 00493159    mov         eax,dword ptr [ebp-4]
 0049315C    cmp         dword ptr [eax+5C],0
>00493160    je          00493178
 00493162    mov         eax,dword ptr [ebp-4]
 00493165    mov         eax,dword ptr [eax+5C]
 00493168    mov         eax,dword ptr [eax+30]
 0049316B    mov         edx,dword ptr [ebp-4]
 0049316E    call        004202BC
 00493173    mov         dword ptr [ebp-8],eax
>00493176    jmp         0049317F
 00493178    mov         dword ptr [ebp-8],0FFFFFFFF
 0049317F    mov         eax,dword ptr [ebp-8]
 00493182    pop         ecx
 00493183    pop         ecx
 00493184    pop         ebp
 00493185    ret
end;*}

//00493188
function TContainedAction.IsStoredCategory(Value:String):Boolean;
begin
{*
 00493188    push        ebp
 00493189    mov         ebp,esp
 0049318B    add         esp,0FFFFFFF8
 0049318E    mov         dword ptr [ebp-4],eax
 00493191    mov         byte ptr [ebp-5],1
 00493195    mov         al,byte ptr [ebp-5]
 00493198    pop         ecx
 00493199    pop         ecx
 0049319A    pop         ebp
 0049319B    ret
*}
end;

//0049319C
procedure TContainedAction.sub_0042A81C;
begin
{*
 0049319C    push        ebp
 0049319D    mov         ebp,esp
 0049319F    add         esp,0FFFFFFF8
 004931A2    mov         dword ptr [ebp-4],eax
 004931A5    mov         eax,dword ptr [ebp-4]
 004931A8    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004931AC    je          004931B9
 004931AE    mov         eax,dword ptr [ebp-4]
 004931B1    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004931B4    mov         dword ptr [ebp-8],eax
>004931B7    jmp         004931C4
 004931B9    mov         eax,dword ptr [ebp-4]
 004931BC    call        TComponent.sub_0042A81C
 004931C1    mov         dword ptr [ebp-8],eax
 004931C4    mov         eax,dword ptr [ebp-8]
 004931C7    pop         ecx
 004931C8    pop         ecx
 004931C9    pop         ebp
 004931CA    ret
*}
end;

//004931CC
procedure TContainedAction.sub_0042A774;
begin
{*
 004931CC    push        ebp
 004931CD    mov         ebp,esp
 004931CF    add         esp,0FFFFFFF8
 004931D2    mov         dword ptr [ebp-4],eax
 004931D5    mov         eax,dword ptr [ebp-4]
 004931D8    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004931DC    je          004931E4
 004931DE    mov         byte ptr [ebp-5],1
>004931E2    jmp         004931EF
 004931E4    mov         eax,dword ptr [ebp-4]
 004931E7    call        TComponent.sub_0042A774
 004931EC    mov         byte ptr [ebp-5],al
 004931EF    mov         al,byte ptr [ebp-5]
 004931F2    pop         ecx
 004931F3    pop         ecx
 004931F4    pop         ebp
 004931F5    ret
*}
end;

//004931F8
{*procedure sub_004931F8(?:?);
begin
 004931F8    push        ebp
 004931F9    mov         ebp,esp
 004931FB    add         esp,0FFFFFFF8
 004931FE    mov         dword ptr [ebp-8],edx
 00493201    mov         dword ptr [ebp-4],eax
 00493204    mov         edx,dword ptr [ebp-8]
 00493207    mov         eax,dword ptr [ebp-4]
 0049320A    call        0042A88C
 0049320F    mov         eax,dword ptr [ebp-8]
 00493212    mov         eax,dword ptr [eax+2C]
 00493215    mov         edx,dword ptr ds:[492868];TCustomActionList
 0049321B    call        @IsClass
 00493220    test        al,al
>00493222    je          00493232
 00493224    mov         eax,dword ptr [ebp-8]
 00493227    mov         edx,dword ptr [eax+2C]
 0049322A    mov         eax,dword ptr [ebp-4]
 0049322D    call        004932F4
 00493232    pop         ecx
 00493233    pop         ecx
 00493234    pop         ebp
 00493235    ret
end;*}

//00493238
{*procedure sub_00493238(?:TContainedAction; ?:?);
begin
 00493238    push        ebp
 00493239    mov         ebp,esp
 0049323B    add         esp,0FFFFFFF0
 0049323E    mov         dword ptr [ebp-8],edx
 00493241    mov         dword ptr [ebp-4],eax
 00493244    mov         eax,dword ptr [ebp-4]
 00493247    call        00493150
 0049324C    mov         dword ptr [ebp-0C],eax
 0049324F    cmp         dword ptr [ebp-0C],0
>00493253    jl          004932AB
 00493255    mov         eax,dword ptr [ebp-4]
 00493258    mov         eax,dword ptr [eax+5C]
 0049325B    mov         eax,dword ptr [eax+30]
 0049325E    mov         eax,dword ptr [eax+8]
 00493261    mov         dword ptr [ebp-10],eax
 00493264    cmp         dword ptr [ebp-8],0
>00493268    jge         0049326F
 0049326A    xor         eax,eax
 0049326C    mov         dword ptr [ebp-8],eax
 0049326F    mov         eax,dword ptr [ebp-8]
 00493272    cmp         eax,dword ptr [ebp-10]
>00493275    jl          0049327E
 00493277    mov         eax,dword ptr [ebp-10]
 0049327A    dec         eax
 0049327B    mov         dword ptr [ebp-8],eax
 0049327E    mov         eax,dword ptr [ebp-8]
 00493281    cmp         eax,dword ptr [ebp-0C]
>00493284    je          004932AB
 00493286    mov         eax,dword ptr [ebp-4]
 00493289    mov         eax,dword ptr [eax+5C]
 0049328C    mov         eax,dword ptr [eax+30]
 0049328F    mov         edx,dword ptr [ebp-0C]
 00493292    call        00420094
 00493297    mov         eax,dword ptr [ebp-4]
 0049329A    mov         eax,dword ptr [eax+5C]
 0049329D    mov         eax,dword ptr [eax+30]
 004932A0    mov         ecx,dword ptr [ebp-4]
 004932A3    mov         edx,dword ptr [ebp-8]
 004932A6    call        00420308
 004932AB    mov         esp,ebp
 004932AD    pop         ebp
 004932AE    ret
end;*}

//004932B0
procedure TContainedAction.SetCategory(Value:String);
begin
{*
 004932B0    push        ebp
 004932B1    mov         ebp,esp
 004932B3    add         esp,0FFFFFFF8
 004932B6    mov         dword ptr [ebp-8],edx
 004932B9    mov         dword ptr [ebp-4],eax
 004932BC    mov         eax,dword ptr [ebp-8]
 004932BF    mov         edx,dword ptr [ebp-4]
 004932C2    mov         edx,dword ptr [edx+58];TContainedAction.Category:String
 004932C5    call        @LStrCmp
>004932CA    je          004932EE
 004932CC    mov         eax,dword ptr [ebp-4]
 004932CF    add         eax,58;TContainedAction.Category:String
 004932D2    mov         edx,dword ptr [ebp-8]
 004932D5    call        @LStrAsg
 004932DA    mov         eax,dword ptr [ebp-4]
 004932DD    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004932E1    je          004932EE
 004932E3    mov         eax,dword ptr [ebp-4]
 004932E6    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004932E9    mov         edx,dword ptr [eax]
 004932EB    call        dword ptr [edx+30];TCustomActionList.sub_0049374C
 004932EE    pop         ecx
 004932EF    pop         ecx
 004932F0    pop         ebp
 004932F1    ret
*}
end;

//004932F4
{*procedure sub_004932F4(?:TContainedAction; ?:?);
begin
 004932F4    push        ebp
 004932F5    mov         ebp,esp
 004932F7    add         esp,0FFFFFFF8
 004932FA    mov         dword ptr [ebp-8],edx
 004932FD    mov         dword ptr [ebp-4],eax
 00493300    mov         eax,dword ptr [ebp-8]
 00493303    mov         edx,dword ptr [ebp-4]
 00493306    cmp         eax,dword ptr [edx+5C];TContainedAction.FActionList:TCustomActionList
>00493309    je          00493333
 0049330B    mov         eax,dword ptr [ebp-4]
 0049330E    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>00493312    je          00493322
 00493314    mov         edx,dword ptr [ebp-4]
 00493317    mov         eax,dword ptr [ebp-4]
 0049331A    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0049331D    call        00493720
 00493322    cmp         dword ptr [ebp-8],0
>00493326    je          00493333
 00493328    mov         edx,dword ptr [ebp-4]
 0049332B    mov         eax,dword ptr [ebp-8]
 0049332E    call        004936EC
 00493333    pop         ecx
 00493334    pop         ecx
 00493335    pop         ebp
 00493336    ret
end;*}

//00493338
{*procedure TContainedAction.sub_0042A834(?:?);
begin
 00493338    push        ebp
 00493339    mov         ebp,esp
 0049333B    add         esp,0FFFFFFF8
 0049333E    mov         dword ptr [ebp-8],edx
 00493341    mov         dword ptr [ebp-4],eax
 00493344    mov         eax,dword ptr [ebp-4]
 00493347    test        byte ptr [eax+1C],1;TContainedAction.FComponentState:TComponentState
>0049334B    jne         0049336A
 0049334D    mov         eax,dword ptr [ebp-8]
 00493350    mov         edx,dword ptr ds:[492868];TCustomActionList
 00493356    call        @IsClass
 0049335B    test        al,al
>0049335D    je          0049336A
 0049335F    mov         edx,dword ptr [ebp-8]
 00493362    mov         eax,dword ptr [ebp-4]
 00493365    call        004932F4
 0049336A    pop         ecx
 0049336B    pop         ecx
 0049336C    pop         ebp
 0049336D    ret
end;*}

//00493370
procedure TContainedAction.sub_0042B128;
begin
{*
 00493370    push        ebp
 00493371    mov         ebp,esp
 00493373    add         esp,0FFFFFFF8
 00493376    push        esi
 00493377    mov         dword ptr [ebp-4],eax
 0049337A    mov         eax,dword ptr [ebp-4]
 0049337D    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>00493381    je          00493399
 00493383    mov         edx,dword ptr [ebp-4]
 00493386    mov         eax,dword ptr [ebp-4]
 00493389    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0049338C    mov         si,0FFF3
 00493390    call        @CallDynaInst;TCustomActionList.sub_0042AC94
 00493395    test        al,al
>00493397    jne         004933CE
 00493399    mov         eax,[0056E3C0];^Application:TApplication
 0049339E    mov         eax,dword ptr [eax]
 004933A0    mov         edx,dword ptr [ebp-4]
 004933A3    call        004ACE90
 004933A8    test        al,al
>004933AA    jne         004933CE
 004933AC    mov         eax,dword ptr [ebp-4]
 004933AF    call        TBasicAction.sub_0042B128
 004933B4    test        al,al
>004933B6    jne         004933CE
 004933B8    mov         ecx,dword ptr [ebp-4]
 004933BB    xor         edx,edx
 004933BD    mov         eax,0B040
 004933C2    call        0047F80C
 004933C7    dec         eax
>004933C8    je          004933CE
 004933CA    xor         eax,eax
>004933CC    jmp         004933D0
 004933CE    mov         al,1
 004933D0    mov         byte ptr [ebp-5],al
 004933D3    mov         al,byte ptr [ebp-5]
 004933D6    pop         esi
 004933D7    pop         ecx
 004933D8    pop         ecx
 004933D9    pop         ebp
 004933DA    ret
*}
end;

//004933DC
{*function sub_004933DC:?;
begin
 004933DC    push        ebp
 004933DD    mov         ebp,esp
 004933DF    add         esp,0FFFFFFF8
 004933E2    push        esi
 004933E3    mov         dword ptr [ebp-4],eax
 004933E6    mov         eax,dword ptr [ebp-4]
 004933E9    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004933ED    je          00493405
 004933EF    mov         edx,dword ptr [ebp-4]
 004933F2    mov         eax,dword ptr [ebp-4]
 004933F5    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004933F8    mov         si,0FFF0
 004933FC    call        @CallDynaInst;TCustomActionList.sub_0042ACC8
 00493401    test        al,al
>00493403    jne         0049343A
 00493405    mov         eax,[0056E3C0];^Application:TApplication
 0049340A    mov         eax,dword ptr [eax]
 0049340C    mov         edx,dword ptr [ebp-4]
 0049340F    call        004ACECC
 00493414    test        al,al
>00493416    jne         0049343A
 00493418    mov         eax,dword ptr [ebp-4]
 0049341B    call        0042B15C
 00493420    test        al,al
>00493422    jne         0049343A
 00493424    mov         ecx,dword ptr [ebp-4]
 00493427    xor         edx,edx
 00493429    mov         eax,0B03F
 0049342E    call        0047F80C
 00493433    dec         eax
>00493434    je          0049343A
 00493436    xor         eax,eax
>00493438    jmp         0049343C
 0049343A    mov         al,1
 0049343C    mov         byte ptr [ebp-5],al
 0049343F    mov         al,byte ptr [ebp-5]
 00493442    pop         esi
 00493443    pop         ecx
 00493444    pop         ecx
 00493445    pop         ebp
 00493446    ret
end;*}

//00493448
constructor sub_00493448;
begin
{*
 00493448    push        ebp
 00493449    mov         ebp,esp
 0049344B    add         esp,0FFFFFFF4
 0049344E    test        dl,dl
>00493450    je          0049345A
 00493452    add         esp,0FFFFFFF0
 00493455    call        @ClassCreate
 0049345A    mov         dword ptr [ebp-0C],ecx
 0049345D    mov         byte ptr [ebp-5],dl
 00493460    mov         dword ptr [ebp-4],eax
 00493463    mov         ecx,dword ptr [ebp-0C]
 00493466    xor         edx,edx
 00493468    mov         eax,dword ptr [ebp-4]
 0049346B    call        0042A1B0
 00493470    mov         dl,1
 00493472    mov         eax,[0041D46C];TList
 00493477    call        TObject.Create;TList.Create
 0049347C    mov         edx,dword ptr [ebp-4]
 0049347F    mov         dword ptr [edx+30],eax;TCustomActionList.FActions:TList
 00493482    mov         dl,1
 00493484    mov         eax,[00494854];TChangeLink
 00493489    call        TObject.Create;TChangeLink.Create
 0049348E    mov         edx,dword ptr [ebp-4]
 00493491    mov         dword ptr [edx+34],eax;TCustomActionList.FImageChangeLink:TChangeLink
 00493494    mov         eax,dword ptr [ebp-4]
 00493497    mov         eax,dword ptr [eax+34];TCustomActionList.FImageChangeLink:TChangeLink
 0049349A    mov         edx,dword ptr [ebp-4]
 0049349D    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomListView
 004934A0    mov         dword ptr [eax+8],49366C;TChangeLink.FOnChange:TNotifyEvent sub_0049366C
 004934A7    mov         eax,dword ptr [ebp-4]
 004934AA    mov         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
 004934AE    mov         eax,dword ptr [ebp-4]
 004934B1    cmp         byte ptr [ebp-5],0
>004934B5    je          004934C6
 004934B7    call        @AfterConstruction
 004934BC    pop         dword ptr fs:[0]
 004934C3    add         esp,0C
 004934C6    mov         eax,dword ptr [ebp-4]
 004934C9    mov         esp,ebp
 004934CB    pop         ebp
 004934CC    ret
*}
end;

//004934D0
destructor TCustomActionList.Destroy;
begin
{*
 004934D0    push        ebp
 004934D1    mov         ebp,esp
 004934D3    add         esp,0FFFFFFF8
 004934D6    call        @BeforeDestruction
 004934DB    mov         byte ptr [ebp-5],dl
 004934DE    mov         dword ptr [ebp-4],eax
 004934E1    mov         eax,dword ptr [ebp-4]
 004934E4    mov         eax,dword ptr [eax+34]
 004934E7    call        TObject.Free
>004934EC    jmp         004934FE
 004934EE    mov         eax,dword ptr [ebp-4]
 004934F1    mov         eax,dword ptr [eax+30]
 004934F4    call        004203B8
 004934F9    call        TObject.Free
 004934FE    mov         eax,dword ptr [ebp-4]
 00493501    mov         eax,dword ptr [eax+30]
 00493504    cmp         dword ptr [eax+8],0
>00493508    jg          004934EE
 0049350A    mov         eax,dword ptr [ebp-4]
 0049350D    mov         eax,dword ptr [eax+30]
 00493510    call        TObject.Free
 00493515    mov         dl,byte ptr [ebp-5]
 00493518    and         dl,0FC
 0049351B    mov         eax,dword ptr [ebp-4]
 0049351E    call        TComponent.Destroy
 00493523    cmp         byte ptr [ebp-5],0
>00493527    jle         00493531
 00493529    mov         eax,dword ptr [ebp-4]
 0049352C    call        @ClassDestroy
 00493531    pop         ecx
 00493532    pop         ecx
 00493533    pop         ebp
 00493534    ret
*}
end;

//00493538
{*procedure TCustomActionList.sub_0042A788(?:?; ?:?);
begin
 00493538    push        ebp
 00493539    mov         ebp,esp
 0049353B    add         esp,0FFFFFFEC
 0049353E    mov         dword ptr [ebp-8],edx
 00493541    mov         dword ptr [ebp-4],eax
 00493544    mov         eax,dword ptr [ebp-4]
 00493547    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0049354A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049354D    dec         eax
 0049354E    test        eax,eax
>00493550    jl          0049358B
 00493552    inc         eax
 00493553    mov         dword ptr [ebp-14],eax
 00493556    mov         dword ptr [ebp-0C],0
 0049355D    mov         eax,dword ptr [ebp-4]
 00493560    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 00493563    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00493566    mov         edx,dword ptr [ebp-0C]
 00493569    mov         eax,dword ptr [eax+edx*4]
 0049356C    mov         dword ptr [ebp-10],eax
 0049356F    mov         eax,dword ptr [ebp-10]
 00493572    mov         eax,dword ptr [eax+4]
 00493575    cmp         eax,dword ptr [ebp-8]
>00493578    jne         00493583
 0049357A    mov         edx,dword ptr [ebp-10]
 0049357D    mov         eax,dword ptr [ebp+0C]
 00493580    call        dword ptr [ebp+8]
 00493583    inc         dword ptr [ebp-0C]
 00493586    dec         dword ptr [ebp-14]
>00493589    jne         0049355D
 0049358B    mov         esp,ebp
 0049358D    pop         ebp
 0049358E    ret         8
end;*}

//00493594
{*procedure TCustomActionList.sub_0042A808(?:?; ?:?);
begin
 00493594    push        ebp
 00493595    mov         ebp,esp
 00493597    add         esp,0FFFFFFF4
 0049359A    mov         dword ptr [ebp-0C],ecx
 0049359D    mov         dword ptr [ebp-8],edx
 004935A0    mov         dword ptr [ebp-4],eax
 004935A3    mov         edx,dword ptr [ebp-8]
 004935A6    mov         eax,dword ptr [ebp-4]
 004935A9    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004935AC    call        004202BC
 004935B1    test        eax,eax
>004935B3    jl          004935CB
 004935B5    mov         eax,dword ptr [ebp-8]
 004935B8    mov         edx,dword ptr ds:[4926AC];TContainedAction
 004935BE    call        @AsClass
 004935C3    mov         edx,dword ptr [ebp-0C]
 004935C6    call        00493238
 004935CB    mov         esp,ebp
 004935CD    pop         ebp
 004935CE    ret
end;*}

//004935D0
{*function sub_004935D0(?:TCustomActionList; ?:?):?;
begin
 004935D0    push        ebp
 004935D1    mov         ebp,esp
 004935D3    add         esp,0FFFFFFF4
 004935D6    mov         dword ptr [ebp-8],edx
 004935D9    mov         dword ptr [ebp-4],eax
 004935DC    mov         edx,dword ptr [ebp-8]
 004935DF    mov         eax,dword ptr [ebp-4]
 004935E2    mov         eax,dword ptr [eax+30]
 004935E5    call        TList.Get
 004935EA    mov         dword ptr [ebp-0C],eax
 004935ED    mov         eax,dword ptr [ebp-0C]
 004935F0    mov         esp,ebp
 004935F2    pop         ebp
 004935F3    ret
end;*}

//004935F4
{*function sub_004935F4(?:TCustomActionList):?;
begin
 004935F4    push        ebp
 004935F5    mov         ebp,esp
 004935F7    add         esp,0FFFFFFF8
 004935FA    mov         dword ptr [ebp-4],eax
 004935FD    mov         eax,dword ptr [ebp-4]
 00493600    mov         eax,dword ptr [eax+30]
 00493603    mov         eax,dword ptr [eax+8]
 00493606    mov         dword ptr [ebp-8],eax
 00493609    mov         eax,dword ptr [ebp-8]
 0049360C    pop         ecx
 0049360D    pop         ecx
 0049360E    pop         ebp
 0049360F    ret
end;*}

//00493610
procedure TActionList.SetImages(Value:TCustomImageList);
begin
{*
 00493610    push        ebp
 00493611    mov         ebp,esp
 00493613    add         esp,0FFFFFFF8
 00493616    mov         dword ptr [ebp-8],edx
 00493619    mov         dword ptr [ebp-4],eax
 0049361C    mov         eax,dword ptr [ebp-4]
 0049361F    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>00493623    je          00493636
 00493625    mov         eax,dword ptr [ebp-4]
 00493628    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 0049362B    mov         eax,dword ptr [ebp-4]
 0049362E    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 00493631    call        00495F18
 00493636    mov         eax,dword ptr [ebp-8]
 00493639    mov         edx,dword ptr [ebp-4]
 0049363C    mov         dword ptr [edx+38],eax;TActionList.FImages:TCustomImageList
 0049363F    mov         eax,dword ptr [ebp-4]
 00493642    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>00493646    je          00493667
 00493648    mov         eax,dword ptr [ebp-4]
 0049364B    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 0049364E    mov         eax,dword ptr [ebp-4]
 00493651    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 00493654    call        00495F80
 00493659    mov         edx,dword ptr [ebp-4]
 0049365C    mov         eax,dword ptr [ebp-4]
 0049365F    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 00493662    call        0042A2CC
 00493667    pop         ecx
 00493668    pop         ecx
 00493669    pop         ebp
 0049366A    ret
*}
end;

//0049366C
{*procedure sub_0049366C(?:?; ?:?);
begin
 0049366C    push        ebp
 0049366D    mov         ebp,esp
 0049366F    add         esp,0FFFFFFF8
 00493672    mov         dword ptr [ebp-8],edx
 00493675    mov         dword ptr [ebp-4],eax
 00493678    mov         eax,dword ptr [ebp-8]
 0049367B    mov         edx,dword ptr [ebp-4]
 0049367E    cmp         eax,dword ptr [edx+38]
>00493681    jne         0049368B
 00493683    mov         eax,dword ptr [ebp-4]
 00493686    mov         edx,dword ptr [eax]
 00493688    call        dword ptr [edx+30]
 0049368B    pop         ecx
 0049368C    pop         ecx
 0049368D    pop         ebp
 0049368E    ret
end;*}

//00493690
{*procedure sub_00493690(?:?; ?:?);
begin
 00493690    push        ebp
 00493691    mov         ebp,esp
 00493693    add         esp,0FFFFFFF4
 00493696    mov         byte ptr [ebp-9],cl
 00493699    mov         dword ptr [ebp-8],edx
 0049369C    mov         dword ptr [ebp-4],eax
 0049369F    mov         cl,byte ptr [ebp-9]
 004936A2    mov         edx,dword ptr [ebp-8]
 004936A5    mov         eax,dword ptr [ebp-4]
 004936A8    call        0042A644
 004936AD    cmp         byte ptr [ebp-9],1
>004936B1    jne         004936E7
 004936B3    mov         eax,dword ptr [ebp-8]
 004936B6    mov         edx,dword ptr [ebp-4]
 004936B9    cmp         eax,dword ptr [edx+38];TCustomActionList.FImages:TCustomImageList
>004936BC    jne         004936CA
 004936BE    xor         edx,edx
 004936C0    mov         eax,dword ptr [ebp-4]
 004936C3    mov         ecx,dword ptr [eax]
 004936C5    call        dword ptr [ecx+34];TActionList.SetImages
>004936C8    jmp         004936E7
 004936CA    mov         eax,dword ptr [ebp-8]
 004936CD    mov         edx,dword ptr ds:[4926AC];TContainedAction
 004936D3    call        @IsClass
 004936D8    test        al,al
>004936DA    je          004936E7
 004936DC    mov         edx,dword ptr [ebp-8]
 004936DF    mov         eax,dword ptr [ebp-4]
 004936E2    call        00493720
 004936E7    mov         esp,ebp
 004936E9    pop         ebp
 004936EA    ret
end;*}

//004936EC
{*procedure sub_004936EC(?:?; ?:TContainedAction);
begin
 004936EC    push        ebp
 004936ED    mov         ebp,esp
 004936EF    add         esp,0FFFFFFF8
 004936F2    mov         dword ptr [ebp-8],edx
 004936F5    mov         dword ptr [ebp-4],eax
 004936F8    mov         edx,dword ptr [ebp-8]
 004936FB    mov         eax,dword ptr [ebp-4]
 004936FE    mov         eax,dword ptr [eax+30]
 00493701    call        TList.Add
 00493706    mov         eax,dword ptr [ebp-4]
 00493709    mov         edx,dword ptr [ebp-8]
 0049370C    mov         dword ptr [edx+5C],eax;TContainedAction.FActionList:TCustomActionList
 0049370F    mov         edx,dword ptr [ebp-4]
 00493712    mov         eax,dword ptr [ebp-8]
 00493715    call        0042A2CC
 0049371A    pop         ecx
 0049371B    pop         ecx
 0049371C    pop         ebp
 0049371D    ret
end;*}

//00493720
procedure sub_00493720(?:TCustomActionList; ?:TContainedAction);
begin
{*
 00493720    push        ebp
 00493721    mov         ebp,esp
 00493723    add         esp,0FFFFFFF8
 00493726    mov         dword ptr [ebp-8],edx
 00493729    mov         dword ptr [ebp-4],eax
 0049372C    mov         edx,dword ptr [ebp-8]
 0049372F    mov         eax,dword ptr [ebp-4]
 00493732    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 00493735    call        004204F0
 0049373A    test        eax,eax
>0049373C    jl          00493746
 0049373E    mov         eax,dword ptr [ebp-8]
 00493741    xor         edx,edx
 00493743    mov         dword ptr [eax+5C],edx;TContainedAction.FActionList:TCustomActionList
 00493746    pop         ecx
 00493747    pop         ecx
 00493748    pop         ebp
 00493749    ret
*}
end;

//0049374C
procedure sub_0049374C;
begin
{*
 0049374C    push        ebp
 0049374D    mov         ebp,esp
 0049374F    add         esp,0FFFFFFF4
 00493752    push        ebx
 00493753    mov         dword ptr [ebp-4],eax
 00493756    mov         eax,dword ptr [ebp-4]
 00493759    cmp         word ptr [eax+42],0;TCustomActionList.?f42:word
>0049375E    je          0049376C
 00493760    mov         ebx,dword ptr [ebp-4]
 00493763    mov         edx,dword ptr [ebp-4]
 00493766    mov         eax,dword ptr [ebx+44];TCustomActionList.?f44:dword
 00493769    call        dword ptr [ebx+40];TCustomActionList.FOnChange
 0049376C    mov         eax,dword ptr [ebp-4]
 0049376F    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 00493772    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00493775    dec         eax
 00493776    test        eax,eax
>00493778    jl          004937A1
 0049377A    inc         eax
 0049377B    mov         dword ptr [ebp-0C],eax
 0049377E    mov         dword ptr [ebp-8],0
 00493785    mov         eax,dword ptr [ebp-4]
 00493788    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0049378B    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0049378E    mov         edx,dword ptr [ebp-8]
 00493791    mov         eax,dword ptr [eax+edx*4]
 00493794    mov         edx,dword ptr [eax]
 00493796    call        dword ptr [edx+30]
 00493799    inc         dword ptr [ebp-8]
 0049379C    dec         dword ptr [ebp-0C]
>0049379F    jne         00493785
 004937A1    mov         eax,dword ptr [ebp-4]
 004937A4    test        byte ptr [eax+1C],10;TCustomActionList.FComponentState:TComponentState
>004937A8    je          004937DF
 004937AA    mov         eax,dword ptr [ebp-4]
 004937AD    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004937B0    mov         edx,dword ptr ds:[49EF70];TForm
 004937B6    call        @IsClass
 004937BB    test        al,al
>004937BD    je          004937DF
 004937BF    mov         eax,dword ptr [ebp-4]
 004937C2    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004937C5    cmp         dword ptr [eax+250],0
>004937CC    je          004937DF
 004937CE    mov         eax,dword ptr [ebp-4]
 004937D1    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004937D4    mov         eax,dword ptr [eax+250]
 004937DA    mov         edx,dword ptr [eax]
 004937DC    call        dword ptr [edx+0C]
 004937DF    pop         ebx
 004937E0    mov         esp,ebp
 004937E2    pop         ebp
 004937E3    ret
*}
end;

//004937E4
{*function sub_004937E4(?:Pointer; ?:?):?;
begin
 004937E4    push        ebp
 004937E5    mov         ebp,esp
 004937E7    add         esp,0FFFFFFE4
 004937EA    mov         dword ptr [ebp-8],edx
 004937ED    mov         dword ptr [ebp-4],eax
 004937F0    mov         eax,dword ptr [ebp-8]
 004937F3    mov         eax,dword ptr [eax+8]
 004937F6    call        004A05E8
 004937FB    mov         byte ptr [ebp-13],al
 004937FE    mov         eax,dword ptr [ebp-8]
 00493801    mov         ax,word ptr [eax+4]
 00493805    mov         dl,byte ptr [ebp-13]
 00493808    call        004978AC
 0049380D    mov         word ptr [ebp-12],ax
 00493811    cmp         word ptr [ebp-12],0
>00493816    je          0049389E
 0049381C    mov         eax,dword ptr [ebp-4]
 0049381F    mov         eax,dword ptr [eax+30]
 00493822    mov         eax,dword ptr [eax+8]
 00493825    dec         eax
 00493826    test        eax,eax
>00493828    jl          0049389E
 0049382A    inc         eax
 0049382B    mov         dword ptr [ebp-1C],eax
 0049382E    mov         dword ptr [ebp-10],0
 00493835    mov         eax,dword ptr [ebp-4]
 00493838    mov         eax,dword ptr [eax+30]
 0049383B    mov         eax,dword ptr [eax+4]
 0049383E    mov         edx,dword ptr [ebp-10]
 00493841    mov         eax,dword ptr [eax+edx*4]
 00493844    mov         dword ptr [ebp-18],eax
 00493847    mov         eax,dword ptr [ebp-18]
 0049384A    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493850    call        @IsClass
 00493855    test        al,al
>00493857    je          00493896
 00493859    mov         eax,dword ptr [ebp-18]
 0049385C    mov         ax,word ptr [eax+84]
 00493863    cmp         ax,word ptr [ebp-12]
>00493867    je          00493889
 00493869    mov         eax,dword ptr [ebp-18]
 0049386C    cmp         dword ptr [eax+90],0
>00493873    je          00493896
 00493875    mov         eax,dword ptr [ebp-18]
 00493878    call        TVirtualListAction.GetSecondaryShortCuts
 0049387D    mov         dx,word ptr [ebp-12]
 00493881    call        004947A0
 00493886    inc         eax
>00493887    je          00493896
 00493889    mov         eax,dword ptr [ebp-18]
 0049388C    mov         edx,dword ptr [eax]
 0049388E    call        dword ptr [edx+50]
 00493891    mov         byte ptr [ebp-9],al
>00493894    jmp         004938A2
 00493896    inc         dword ptr [ebp-10]
 00493899    dec         dword ptr [ebp-1C]
>0049389C    jne         00493835
 0049389E    mov         byte ptr [ebp-9],0
 004938A2    mov         al,byte ptr [ebp-9]
 004938A5    mov         esp,ebp
 004938A7    pop         ebp
 004938A8    ret
end;*}

//004938AC
{*procedure TCustomActionList.sub_0042AC94(?:?);
begin
 004938AC    push        ebp
 004938AD    mov         ebp,esp
 004938AF    add         esp,0FFFFFFF4
 004938B2    push        ebx
 004938B3    mov         dword ptr [ebp-8],edx
 004938B6    mov         dword ptr [ebp-4],eax
 004938B9    mov         byte ptr [ebp-9],0
 004938BD    mov         eax,dword ptr [ebp-4]
 004938C0    cmp         word ptr [eax+4A],0;TCustomActionList.?f4A:word
>004938C5    je          004938D6
 004938C7    lea         ecx,[ebp-9]
 004938CA    mov         ebx,dword ptr [ebp-4]
 004938CD    mov         edx,dword ptr [ebp-8]
 004938D0    mov         eax,dword ptr [ebx+4C];TCustomActionList.?f4C:dword
 004938D3    call        dword ptr [ebx+48];TCustomActionList.FOnExecute
 004938D6    mov         al,byte ptr [ebp-9]
 004938D9    pop         ebx
 004938DA    mov         esp,ebp
 004938DC    pop         ebp
 004938DD    ret
end;*}

//004938E0
{*procedure TCustomActionList.sub_0042ACC8(?:?);
begin
 004938E0    push        ebp
 004938E1    mov         ebp,esp
 004938E3    add         esp,0FFFFFFF4
 004938E6    push        ebx
 004938E7    mov         dword ptr [ebp-8],edx
 004938EA    mov         dword ptr [ebp-4],eax
 004938ED    mov         byte ptr [ebp-9],0
 004938F1    mov         eax,dword ptr [ebp-4]
 004938F4    cmp         word ptr [eax+52],0;TCustomActionList.?f52:word
>004938F9    je          0049390A
 004938FB    lea         ecx,[ebp-9]
 004938FE    mov         ebx,dword ptr [ebp-4]
 00493901    mov         edx,dword ptr [ebp-8]
 00493904    mov         eax,dword ptr [ebx+54];TCustomActionList.?f54:dword
 00493907    call        dword ptr [ebx+50];TCustomActionList.FOnUpdate
 0049390A    mov         al,byte ptr [ebp-9]
 0049390D    pop         ebx
 0049390E    mov         esp,ebp
 00493910    pop         ebp
 00493911    ret
end;*}

//00493914
procedure TActionList.SetState(Value:TActionListState);
begin
{*
 00493914    push        ebp
 00493915    mov         ebp,esp
 00493917    add         esp,0FFFFFFE8
 0049391A    push        ebx
 0049391B    mov         byte ptr [ebp-5],dl
 0049391E    mov         dword ptr [ebp-4],eax
 00493921    mov         eax,dword ptr [ebp-4]
 00493924    mov         al,byte ptr [eax+58];TActionList.FState:TActionListState
 00493927    cmp         al,byte ptr [ebp-5]
>0049392A    je          004939F1
 00493930    mov         eax,dword ptr [ebp-4]
 00493933    mov         al,byte ptr [eax+58];TActionList.FState:TActionListState
 00493936    mov         byte ptr [ebp-11],al
 00493939    mov         al,byte ptr [ebp-5]
 0049393C    mov         edx,dword ptr [ebp-4]
 0049393F    mov         byte ptr [edx+58],al;TActionList.FState:TActionListState
 00493942    mov         eax,dword ptr [ebp-4]
 00493945    cmp         byte ptr [eax+58],1;TActionList.FState:TActionListState
>00493949    je          004939F1
 0049394F    mov         eax,dword ptr [ebp-4]
 00493952    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 00493955    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00493958    dec         eax
 00493959    test        eax,eax
>0049395B    jl          004939DB
 0049395D    inc         eax
 0049395E    mov         dword ptr [ebp-18],eax
 00493961    mov         dword ptr [ebp-0C],0
 00493968    mov         eax,dword ptr [ebp-4]
 0049396B    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 0049396E    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00493971    mov         edx,dword ptr [ebp-0C]
 00493974    mov         eax,dword ptr [eax+edx*4]
 00493977    mov         dword ptr [ebp-10],eax
 0049397A    mov         al,byte ptr [ebp-5]
 0049397D    sub         al,1
>0049397F    jb          00493987
 00493981    dec         al
>00493983    je          004939AE
>00493985    jmp         004939D3
 00493987    cmp         dword ptr [ebp-10],0
>0049398B    je          004939A4
 0049398D    cmp         byte ptr [ebp-11],2
>00493991    jne         004939A4
 00493993    mov         eax,dword ptr [ebp-10]
 00493996    mov         dl,byte ptr [eax+94]
 0049399C    mov         eax,dword ptr [ebp-10]
 0049399F    call        TVirtualListAction.SetEnabled
 004939A4    mov         eax,dword ptr [ebp-10]
 004939A7    mov         edx,dword ptr [eax]
 004939A9    call        dword ptr [edx+44]
>004939AC    jmp         004939D3
 004939AE    cmp         dword ptr [ebp-10],0
>004939B2    je          004939D3
 004939B4    cmp         byte ptr [ebp-5],2
>004939B8    jne         004939D3
 004939BA    mov         eax,dword ptr [ebp-10]
 004939BD    mov         al,byte ptr [eax+6A]
 004939C0    mov         edx,dword ptr [ebp-10]
 004939C3    mov         byte ptr [edx+94],al
 004939C9    mov         dl,1
 004939CB    mov         eax,dword ptr [ebp-10]
 004939CE    call        TVirtualListAction.SetEnabled
 004939D3    inc         dword ptr [ebp-0C]
 004939D6    dec         dword ptr [ebp-18]
>004939D9    jne         00493968
 004939DB    mov         eax,dword ptr [ebp-4]
 004939DE    cmp         word ptr [eax+62],0;TActionList.?f62:word
>004939E3    je          004939F1
 004939E5    mov         ebx,dword ptr [ebp-4]
 004939E8    mov         edx,dword ptr [ebp-4]
 004939EB    mov         eax,dword ptr [ebx+64];TActionList.?f64:dword
 004939EE    call        dword ptr [ebx+60];TActionList.FOnStateChange
 004939F1    pop         ebx
 004939F2    mov         esp,ebp
 004939F4    pop         ebp
 004939F5    ret
*}
end;

//004939F8
{*function sub_004939F8:?;
begin
 004939F8    push        ebp
 004939F9    mov         ebp,esp
 004939FB    add         esp,0FFFFFFF8
 004939FE    mov         dword ptr [ebp-4],eax
 00493A01    mov         eax,dword ptr [ebp-4]
 00493A04    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493A07    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493A0D    call        @IsClass
 00493A12    mov         byte ptr [ebp-5],al
 00493A15    mov         al,byte ptr [ebp-5]
 00493A18    pop         ecx
 00493A19    pop         ecx
 00493A1A    pop         ebp
 00493A1B    ret
end;*}

//00493A1C
{*function sub_00493A1C:?;
begin
 00493A1C    push        ebp
 00493A1D    mov         ebp,esp
 00493A1F    add         esp,0FFFFFFF8
 00493A22    mov         dword ptr [ebp-4],eax
 00493A25    mov         eax,dword ptr [ebp-4]
 00493A28    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493A2B    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493A31    call        @IsClass
 00493A36    mov         byte ptr [ebp-5],al
 00493A39    mov         al,byte ptr [ebp-5]
 00493A3C    pop         ecx
 00493A3D    pop         ecx
 00493A3E    pop         ebp
 00493A3F    ret
end;*}

//00493A40
{*function sub_00493A40:?;
begin
 00493A40    push        ebp
 00493A41    mov         ebp,esp
 00493A43    add         esp,0FFFFFFF8
 00493A46    mov         dword ptr [ebp-4],eax
 00493A49    mov         eax,dword ptr [ebp-4]
 00493A4C    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493A4F    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493A55    call        @IsClass
 00493A5A    mov         byte ptr [ebp-5],al
 00493A5D    mov         al,byte ptr [ebp-5]
 00493A60    pop         ecx
 00493A61    pop         ecx
 00493A62    pop         ebp
 00493A63    ret
end;*}

//00493A64
{*function sub_00493A64:?;
begin
 00493A64    push        ebp
 00493A65    mov         ebp,esp
 00493A67    add         esp,0FFFFFFF8
 00493A6A    mov         dword ptr [ebp-4],eax
 00493A6D    mov         eax,dword ptr [ebp-4]
 00493A70    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493A73    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493A79    call        @IsClass
 00493A7E    mov         byte ptr [ebp-5],al
 00493A81    mov         al,byte ptr [ebp-5]
 00493A84    pop         ecx
 00493A85    pop         ecx
 00493A86    pop         ebp
 00493A87    ret
end;*}

//00493A88
{*function sub_00493A88:?;
begin
 00493A88    push        ebp
 00493A89    mov         ebp,esp
 00493A8B    add         esp,0FFFFFFF8
 00493A8E    mov         dword ptr [ebp-4],eax
 00493A91    mov         eax,dword ptr [ebp-4]
 00493A94    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493A97    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493A9D    call        @IsClass
 00493AA2    mov         byte ptr [ebp-5],al
 00493AA5    mov         al,byte ptr [ebp-5]
 00493AA8    pop         ecx
 00493AA9    pop         ecx
 00493AAA    pop         ebp
 00493AAB    ret
end;*}

//00493AAC
{*function sub_00493AAC:?;
begin
 00493AAC    push        ebp
 00493AAD    mov         ebp,esp
 00493AAF    add         esp,0FFFFFFF8
 00493AB2    mov         dword ptr [ebp-4],eax
 00493AB5    mov         eax,dword ptr [ebp-4]
 00493AB8    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493ABB    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493AC1    call        @IsClass
 00493AC6    mov         byte ptr [ebp-5],al
 00493AC9    mov         al,byte ptr [ebp-5]
 00493ACC    pop         ecx
 00493ACD    pop         ecx
 00493ACE    pop         ebp
 00493ACF    ret
end;*}

//00493AD0
{*function sub_00493AD0:?;
begin
 00493AD0    push        ebp
 00493AD1    mov         ebp,esp
 00493AD3    add         esp,0FFFFFFF8
 00493AD6    mov         dword ptr [ebp-4],eax
 00493AD9    mov         eax,dword ptr [ebp-4]
 00493ADC    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493ADF    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493AE5    call        @IsClass
 00493AEA    mov         byte ptr [ebp-5],al
 00493AED    mov         al,byte ptr [ebp-5]
 00493AF0    pop         ecx
 00493AF1    pop         ecx
 00493AF2    pop         ebp
 00493AF3    ret
end;*}

//00493AF4
{*function sub_00493AF4:?;
begin
 00493AF4    push        ebp
 00493AF5    mov         ebp,esp
 00493AF7    add         esp,0FFFFFFF8
 00493AFA    mov         dword ptr [ebp-4],eax
 00493AFD    mov         eax,dword ptr [ebp-4]
 00493B00    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493B03    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493B09    call        @IsClass
 00493B0E    mov         byte ptr [ebp-5],al
 00493B11    mov         al,byte ptr [ebp-5]
 00493B14    pop         ecx
 00493B15    pop         ecx
 00493B16    pop         ebp
 00493B17    ret
end;*}

//00493B18
{*function sub_00493B18:?;
begin
 00493B18    push        ebp
 00493B19    mov         ebp,esp
 00493B1B    add         esp,0FFFFFFF8
 00493B1E    mov         dword ptr [ebp-4],eax
 00493B21    mov         eax,dword ptr [ebp-4]
 00493B24    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493B27    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493B2D    call        @IsClass
 00493B32    mov         byte ptr [ebp-5],al
 00493B35    mov         al,byte ptr [ebp-5]
 00493B38    pop         ecx
 00493B39    pop         ecx
 00493B3A    pop         ebp
 00493B3B    ret
end;*}

//00493B3C
{*function sub_00493B3C:?;
begin
 00493B3C    push        ebp
 00493B3D    mov         ebp,esp
 00493B3F    add         esp,0FFFFFFF8
 00493B42    mov         dword ptr [ebp-4],eax
 00493B45    mov         eax,dword ptr [ebp-4]
 00493B48    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 00493B4B    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493B51    call        @IsClass
 00493B56    mov         byte ptr [ebp-5],al
 00493B59    mov         al,byte ptr [ebp-5]
 00493B5C    pop         ecx
 00493B5D    pop         ecx
 00493B5E    pop         ebp
 00493B5F    ret
end;*}

//00493B60
{*procedure sub_00493B60(?:?);
begin
 00493B60    push        ebp
 00493B61    mov         ebp,esp
 00493B63    add         esp,0FFFFFFF8
 00493B66    mov         byte ptr [ebp-5],dl
 00493B69    mov         dword ptr [ebp-4],eax
 00493B6C    pop         ecx
 00493B6D    pop         ecx
 00493B6E    pop         ebp
 00493B6F    ret
end;*}

//00493B70
{*procedure sub_00493B70(?:?);
begin
 00493B70    push        ebp
 00493B71    mov         ebp,esp
 00493B73    add         esp,0FFFFFFF8
 00493B76    mov         dword ptr [ebp-8],edx
 00493B79    mov         dword ptr [ebp-4],eax
 00493B7C    pop         ecx
 00493B7D    pop         ecx
 00493B7E    pop         ebp
 00493B7F    ret
end;*}

//00493B80
{*procedure sub_00493B80(?:?);
begin
 00493B80    push        ebp
 00493B81    mov         ebp,esp
 00493B83    add         esp,0FFFFFFF8
 00493B86    mov         byte ptr [ebp-5],dl
 00493B89    mov         dword ptr [ebp-4],eax
 00493B8C    pop         ecx
 00493B8D    pop         ecx
 00493B8E    pop         ebp
 00493B8F    ret
end;*}

//00493B90
{*procedure sub_00493B90(?:?);
begin
 00493B90    push        ebp
 00493B91    mov         ebp,esp
 00493B93    add         esp,0FFFFFFF8
 00493B96    mov         byte ptr [ebp-5],dl
 00493B99    mov         dword ptr [ebp-4],eax
 00493B9C    pop         ecx
 00493B9D    pop         ecx
 00493B9E    pop         ebp
 00493B9F    ret
end;*}

//00493BA0
{*procedure sub_00493BA0(?:?);
begin
 00493BA0    push        ebp
 00493BA1    mov         ebp,esp
 00493BA3    add         esp,0FFFFFFF8
 00493BA6    mov         dword ptr [ebp-8],edx
 00493BA9    mov         dword ptr [ebp-4],eax
 00493BAC    pop         ecx
 00493BAD    pop         ecx
 00493BAE    pop         ebp
 00493BAF    ret
end;*}

//00493BB0
{*procedure sub_00493BB0(?:?);
begin
 00493BB0    push        ebp
 00493BB1    mov         ebp,esp
 00493BB3    add         esp,0FFFFFFF8
 00493BB6    mov         dword ptr [ebp-8],edx
 00493BB9    mov         dword ptr [ebp-4],eax
 00493BBC    pop         ecx
 00493BBD    pop         ecx
 00493BBE    pop         ebp
 00493BBF    ret
end;*}

//00493BC0
{*procedure sub_00493BC0(?:?);
begin
 00493BC0    push        ebp
 00493BC1    mov         ebp,esp
 00493BC3    add         esp,0FFFFFFF8
 00493BC6    mov         dword ptr [ebp-8],edx
 00493BC9    mov         dword ptr [ebp-4],eax
 00493BCC    pop         ecx
 00493BCD    pop         ecx
 00493BCE    pop         ebp
 00493BCF    ret
end;*}

//00493BD0
{*procedure sub_00493BD0(?:?);
begin
 00493BD0    push        ebp
 00493BD1    mov         ebp,esp
 00493BD3    add         esp,0FFFFFFF8
 00493BD6    mov         byte ptr [ebp-5],dl
 00493BD9    mov         dword ptr [ebp-4],eax
 00493BDC    pop         ecx
 00493BDD    pop         ecx
 00493BDE    pop         ebp
 00493BDF    ret
end;*}

//00493BE0
{*procedure sub_00493BE0(?:?);
begin
 00493BE0    push        ebp
 00493BE1    mov         ebp,esp
 00493BE3    add         esp,0FFFFFFF8
 00493BE6    mov         dword ptr [ebp-8],edx
 00493BE9    mov         dword ptr [ebp-4],eax
 00493BEC    pop         ecx
 00493BED    pop         ecx
 00493BEE    pop         ebp
 00493BEF    ret
end;*}

//00493BF0
{*procedure sub_00493BF0(?:?);
begin
 00493BF0    push        ebp
 00493BF1    mov         ebp,esp
 00493BF3    add         esp,0FFFFFFF8
 00493BF6    mov         dword ptr [ebp-8],edx
 00493BF9    mov         dword ptr [ebp-4],eax
 00493BFC    pop         ecx
 00493BFD    pop         ecx
 00493BFE    pop         ebp
 00493BFF    ret
end;*}

//00493C00
{*procedure sub_00493C00(?:?);
begin
 00493C00    push        ebp
 00493C01    mov         ebp,esp
 00493C03    add         esp,0FFFFFFF8
 00493C06    mov         word ptr [ebp-6],dx
 00493C0A    mov         dword ptr [ebp-4],eax
 00493C0D    pop         ecx
 00493C0E    pop         ecx
 00493C0F    pop         ebp
 00493C10    ret
end;*}

//00493C14
{*procedure sub_00493C14(?:?);
begin
 00493C14    push        ebp
 00493C15    mov         ebp,esp
 00493C17    add         esp,0FFFFFFF8
 00493C1A    mov         byte ptr [ebp-5],dl
 00493C1D    mov         dword ptr [ebp-4],eax
 00493C20    pop         ecx
 00493C21    pop         ecx
 00493C22    pop         ebp
 00493C23    ret
end;*}

//00493C24
constructor TCustomAction.Create;
begin
{*
 00493C24    push        ebp
 00493C25    mov         ebp,esp
 00493C27    add         esp,0FFFFFFF4
 00493C2A    test        dl,dl
>00493C2C    je          00493C36
 00493C2E    add         esp,0FFFFFFF0
 00493C31    call        @ClassCreate
 00493C36    mov         dword ptr [ebp-0C],ecx
 00493C39    mov         byte ptr [ebp-5],dl
 00493C3C    mov         dword ptr [ebp-4],eax
 00493C3F    mov         ecx,dword ptr [ebp-0C]
 00493C42    xor         edx,edx
 00493C44    mov         eax,dword ptr [ebp-4]
 00493C47    call        0042AFE0
 00493C4C    mov         eax,dword ptr [ebp-4]
 00493C4F    mov         byte ptr [eax+6A],1;TCustomAction.FEnabled:Boolean
 00493C53    mov         eax,dword ptr [ebp-4]
 00493C56    mov         dword ptr [eax+80],0FFFFFFFF;TCustomAction.FImageIndex:TImageIndex
 00493C60    mov         eax,dword ptr [ebp-4]
 00493C63    mov         byte ptr [eax+86],1;TCustomAction.FVisible:Boolean
 00493C6A    mov         eax,dword ptr [ebp-4]
 00493C6D    xor         edx,edx
 00493C6F    mov         dword ptr [eax+90],edx;TCustomAction.FSecondaryShortCuts:TShortCutList
 00493C75    mov         eax,dword ptr [ebp-4]
 00493C78    cmp         byte ptr [ebp-5],0
>00493C7C    je          00493C8D
 00493C7E    call        @AfterConstruction
 00493C83    pop         dword ptr fs:[0]
 00493C8A    add         esp,0C
 00493C8D    mov         eax,dword ptr [ebp-4]
 00493C90    mov         esp,ebp
 00493C92    pop         ebp
 00493C93    ret
*}
end;

//00493C94
destructor TCustomAction.Destroy;
begin
{*
 00493C94    push        ebp
 00493C95    mov         ebp,esp
 00493C97    add         esp,0FFFFFFF8
 00493C9A    call        @BeforeDestruction
 00493C9F    mov         byte ptr [ebp-5],dl
 00493CA2    mov         dword ptr [ebp-4],eax
 00493CA5    mov         eax,dword ptr [ebp-4]
 00493CA8    mov         eax,dword ptr [eax+98]
 00493CAE    call        TObject.Free
 00493CB3    mov         eax,dword ptr [ebp-4]
 00493CB6    mov         eax,dword ptr [eax+9C]
 00493CBC    call        TObject.Free
 00493CC1    mov         eax,dword ptr [ebp-4]
 00493CC4    cmp         dword ptr [eax+90],0
>00493CCB    je          00493CDA
 00493CCD    mov         eax,dword ptr [ebp-4]
 00493CD0    add         eax,90
 00493CD5    call        FreeAndNil
 00493CDA    mov         dl,byte ptr [ebp-5]
 00493CDD    and         dl,0FC
 00493CE0    mov         eax,dword ptr [ebp-4]
 00493CE3    call        TContainedAction.Destroy
 00493CE8    cmp         byte ptr [ebp-5],0
>00493CEC    jle         00493CF6
 00493CEE    mov         eax,dword ptr [ebp-4]
 00493CF1    call        @ClassDestroy
 00493CF6    pop         ecx
 00493CF7    pop         ecx
 00493CF8    pop         ebp
 00493CF9    ret
*}
end;

//00493CFC
{*procedure sub_00493CFC(?:?);
begin
 00493CFC    push        ebp
 00493CFD    mov         ebp,esp
 00493CFF    add         esp,0FFFFFFF8
 00493D02    mov         dword ptr [ebp-8],edx
 00493D05    mov         dword ptr [ebp-4],eax
 00493D08    mov         eax,dword ptr [ebp-8]
 00493D0B    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493D11    call        @IsClass
 00493D16    test        al,al
>00493D18    je          00493DCF
 00493D1E    mov         eax,dword ptr [ebp-4]
 00493D21    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 00493D24    mov         eax,dword ptr [ebp-8]
 00493D27    call        TVirtualListAction.SetCaption
 00493D2C    mov         eax,dword ptr [ebp-4]
 00493D2F    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 00493D32    mov         eax,dword ptr [ebp-8]
 00493D35    call        TAction.SetChecked
 00493D3A    mov         eax,dword ptr [ebp-4]
 00493D3D    mov         dl,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 00493D40    mov         eax,dword ptr [ebp-8]
 00493D43    call        TVirtualListAction.SetEnabled
 00493D48    mov         eax,dword ptr [ebp-4]
 00493D4B    mov         edx,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 00493D4E    mov         eax,dword ptr [ebp-8]
 00493D51    mov         ecx,dword ptr [eax]
 00493D53    call        dword ptr [ecx+48]
 00493D56    mov         eax,dword ptr [ebp-4]
 00493D59    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 00493D5C    mov         eax,dword ptr [ebp-8]
 00493D5F    call        TVirtualListAction.SetHint
 00493D64    mov         eax,dword ptr [ebp-4]
 00493D67    mov         edx,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 00493D6D    mov         eax,dword ptr [ebp-8]
 00493D70    call        TFileExit.SetImageIndex
 00493D75    mov         eax,dword ptr [ebp-4]
 00493D78    mov         dx,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 00493D7F    mov         eax,dword ptr [ebp-8]
 00493D82    call        TVirtualListAction.SetShortCut
 00493D87    mov         eax,dword ptr [ebp-4]
 00493D8A    mov         dl,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 00493D90    mov         eax,dword ptr [ebp-8]
 00493D93    call        TVirtualListAction.SetVisible
 00493D98    mov         eax,dword ptr [ebp-4]
 00493D9B    push        dword ptr [eax+44];TCustomAction.?f44:dword
 00493D9E    push        dword ptr [eax+40];TCustomAction.FOnExecute:TNotifyEvent
 00493DA1    mov         eax,dword ptr [ebp-8]
 00493DA4    mov         edx,dword ptr [eax]
 00493DA6    call        dword ptr [edx+34]
 00493DA9    mov         eax,dword ptr [ebp-8]
 00493DAC    mov         edx,dword ptr [ebp-4]
 00493DAF    mov         ecx,dword ptr [edx+48];TCustomAction.FOnUpdate:TNotifyEvent
 00493DB2    mov         dword ptr [eax+48],ecx
 00493DB5    mov         ecx,dword ptr [edx+4C];TCustomAction.?f4C:dword
 00493DB8    mov         dword ptr [eax+4C],ecx
 00493DBB    mov         eax,dword ptr [ebp-8]
 00493DBE    mov         edx,dword ptr [ebp-4]
 00493DC1    mov         ecx,dword ptr [edx+38];TCustomAction.FOnChange:TNotifyEvent
 00493DC4    mov         dword ptr [eax+38],ecx
 00493DC7    mov         ecx,dword ptr [edx+3C];TCustomAction.?f3C:dword
 00493DCA    mov         dword ptr [eax+3C],ecx
>00493DCD    jmp         00493DDA
 00493DCF    mov         edx,dword ptr [ebp-8]
 00493DD2    mov         eax,dword ptr [ebp-4]
 00493DD5    call        00420BD8
 00493DDA    pop         ecx
 00493DDB    pop         ecx
 00493DDC    pop         ebp
 00493DDD    ret
end;*}

//00493DE0
procedure TAction.SetAutoCheck(Value:Boolean);
begin
{*
 00493DE0    push        ebp
 00493DE1    mov         ebp,esp
 00493DE3    add         esp,0FFFFFFF0
 00493DE6    mov         byte ptr [ebp-5],dl
 00493DE9    mov         dword ptr [ebp-4],eax
 00493DEC    mov         al,byte ptr [ebp-5]
 00493DEF    mov         edx,dword ptr [ebp-4]
 00493DF2    cmp         al,byte ptr [edx+95];TAction.FAutoCheck:Boolean
>00493DF8    je          00493E62
 00493DFA    mov         eax,dword ptr [ebp-4]
 00493DFD    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00493E00    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00493E03    dec         eax
 00493E04    test        eax,eax
>00493E06    jl          00493E4E
 00493E08    inc         eax
 00493E09    mov         dword ptr [ebp-10],eax
 00493E0C    mov         dword ptr [ebp-0C],0
 00493E13    mov         edx,dword ptr [ebp-0C]
 00493E16    mov         eax,dword ptr [ebp-4]
 00493E19    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00493E1C    call        TList.Get
 00493E21    mov         edx,dword ptr ds:[493038];TActionLink
 00493E27    call        @IsClass
 00493E2C    test        al,al
>00493E2E    je          00493E46
 00493E30    mov         edx,dword ptr [ebp-0C]
 00493E33    mov         eax,dword ptr [ebp-4]
 00493E36    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00493E39    call        TList.Get
 00493E3E    mov         dl,byte ptr [ebp-5]
 00493E41    mov         ecx,dword ptr [eax]
 00493E43    call        dword ptr [ecx+48]
 00493E46    inc         dword ptr [ebp-0C]
 00493E49    dec         dword ptr [ebp-10]
>00493E4C    jne         00493E13
 00493E4E    mov         al,byte ptr [ebp-5]
 00493E51    mov         edx,dword ptr [ebp-4]
 00493E54    mov         byte ptr [edx+95],al;TAction.FAutoCheck:Boolean
 00493E5A    mov         eax,dword ptr [ebp-4]
 00493E5D    mov         edx,dword ptr [eax]
 00493E5F    call        dword ptr [edx+30];TAction.sub_0042B208
 00493E62    mov         esp,ebp
 00493E64    pop         ebp
 00493E65    ret
*}
end;

//00493E68
procedure TVirtualListAction.SetCaption(Value:String);
begin
{*
 00493E68    push        ebp
 00493E69    mov         ebp,esp
 00493E6B    add         esp,0FFFFFFEC
 00493E6E    mov         dword ptr [ebp-8],edx
 00493E71    mov         dword ptr [ebp-4],eax
 00493E74    mov         eax,dword ptr [ebp-8]
 00493E77    mov         edx,dword ptr [ebp-4]
 00493E7A    mov         edx,dword ptr [edx+64];TVirtualListAction.FCaption:String
 00493E7D    call        @LStrCmp
>00493E82    je          00493EE9
 00493E84    mov         eax,dword ptr [ebp-4]
 00493E87    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00493E8A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00493E8D    dec         eax
 00493E8E    test        eax,eax
>00493E90    jl          00493ED3
 00493E92    inc         eax
 00493E93    mov         dword ptr [ebp-14],eax
 00493E96    mov         dword ptr [ebp-0C],0
 00493E9D    mov         eax,dword ptr [ebp-4]
 00493EA0    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00493EA3    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00493EA6    mov         edx,dword ptr [ebp-0C]
 00493EA9    mov         eax,dword ptr [eax+edx*4]
 00493EAC    mov         edx,dword ptr ds:[493038];TActionLink
 00493EB2    call        @AsClass
 00493EB7    mov         dword ptr [ebp-10],eax
 00493EBA    cmp         dword ptr [ebp-10],0
>00493EBE    je          00493ECB
 00493EC0    mov         edx,dword ptr [ebp-8]
 00493EC3    mov         eax,dword ptr [ebp-10]
 00493EC6    mov         ecx,dword ptr [eax]
 00493EC8    call        dword ptr [ecx+4C];TActionLink.sub_00493B70
 00493ECB    inc         dword ptr [ebp-0C]
 00493ECE    dec         dword ptr [ebp-14]
>00493ED1    jne         00493E9D
 00493ED3    mov         eax,dword ptr [ebp-4]
 00493ED6    add         eax,64;TVirtualListAction.FCaption:String
 00493ED9    mov         edx,dword ptr [ebp-8]
 00493EDC    call        @LStrAsg
 00493EE1    mov         eax,dword ptr [ebp-4]
 00493EE4    mov         edx,dword ptr [eax]
 00493EE6    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 00493EE9    mov         esp,ebp
 00493EEB    pop         ebp
 00493EEC    ret
*}
end;

//00493EF0
procedure TAction.SetChecked(Value:Boolean);
begin
{*
 00493EF0    push        ebp
 00493EF1    mov         ebp,esp
 00493EF3    add         esp,0FFFFFFE8
 00493EF6    mov         byte ptr [ebp-5],dl
 00493EF9    mov         dword ptr [ebp-4],eax
 00493EFC    mov         eax,dword ptr [ebp-4]
 00493EFF    cmp         byte ptr [eax+68],0;TAction.FChecking:Boolean
>00493F03    jne         00494021
 00493F09    mov         eax,dword ptr [ebp-4]
 00493F0C    mov         byte ptr [eax+68],1;TAction.FChecking:Boolean
 00493F10    xor         eax,eax
 00493F12    push        ebp
 00493F13    push        49401A
 00493F18    push        dword ptr fs:[eax]
 00493F1B    mov         dword ptr fs:[eax],esp
 00493F1E    mov         eax,dword ptr [ebp-4]
 00493F21    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 00493F24    cmp         al,byte ptr [ebp-5]
>00493F27    je          00494005
 00493F2D    mov         eax,dword ptr [ebp-4]
 00493F30    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00493F33    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00493F36    dec         eax
 00493F37    test        eax,eax
>00493F39    jl          00493F7C
 00493F3B    inc         eax
 00493F3C    mov         dword ptr [ebp-18],eax
 00493F3F    mov         dword ptr [ebp-0C],0
 00493F46    mov         eax,dword ptr [ebp-4]
 00493F49    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00493F4C    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00493F4F    mov         edx,dword ptr [ebp-0C]
 00493F52    mov         eax,dword ptr [eax+edx*4]
 00493F55    mov         edx,dword ptr ds:[493038];TActionLink
 00493F5B    call        @AsClass
 00493F60    mov         dword ptr [ebp-10],eax
 00493F63    cmp         dword ptr [ebp-10],0
>00493F67    je          00493F74
 00493F69    mov         dl,byte ptr [ebp-5]
 00493F6C    mov         eax,dword ptr [ebp-10]
 00493F6F    mov         ecx,dword ptr [eax]
 00493F71    call        dword ptr [ecx+50];TActionLink.sub_00493B80
 00493F74    inc         dword ptr [ebp-0C]
 00493F77    dec         dword ptr [ebp-18]
>00493F7A    jne         00493F46
 00493F7C    mov         eax,dword ptr [ebp-4]
 00493F7F    mov         dl,byte ptr [ebp-5]
 00493F82    mov         byte ptr [eax+69],dl;TAction.FChecked:Boolean
 00493F85    mov         eax,dword ptr [ebp-4]
 00493F88    cmp         dword ptr [eax+6C],0;TAction.FGroupIndex:Integer
>00493F8C    jle         00493FFD
 00493F8E    mov         eax,dword ptr [ebp-4]
 00493F91    cmp         byte ptr [eax+69],0;TAction.FChecked:Boolean
>00493F95    je          00493FFD
 00493F97    mov         eax,dword ptr [ebp-4]
 00493F9A    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 00493F9D    call        004935F4
 00493FA2    dec         eax
 00493FA3    test        eax,eax
>00493FA5    jl          00493FFD
 00493FA7    inc         eax
 00493FA8    mov         dword ptr [ebp-18],eax
 00493FAB    mov         dword ptr [ebp-0C],0
 00493FB2    mov         eax,dword ptr [ebp-4]
 00493FB5    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 00493FB8    mov         edx,dword ptr [ebp-0C]
 00493FBB    call        004935D0
 00493FC0    mov         dword ptr [ebp-14],eax
 00493FC3    mov         eax,dword ptr [ebp-14]
 00493FC6    cmp         eax,dword ptr [ebp-4]
>00493FC9    je          00493FF5
 00493FCB    mov         eax,dword ptr [ebp-14]
 00493FCE    mov         edx,dword ptr ds:[492C28];TCustomAction
 00493FD4    call        @IsClass
 00493FD9    test        al,al
>00493FDB    je          00493FF5
 00493FDD    mov         eax,dword ptr [ebp-14]
 00493FE0    mov         eax,dword ptr [eax+6C]
 00493FE3    mov         edx,dword ptr [ebp-4]
 00493FE6    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>00493FE9    jne         00493FF5
 00493FEB    xor         edx,edx
 00493FED    mov         eax,dword ptr [ebp-14]
 00493FF0    call        TAction.SetChecked
 00493FF5    inc         dword ptr [ebp-0C]
 00493FF8    dec         dword ptr [ebp-18]
>00493FFB    jne         00493FB2
 00493FFD    mov         eax,dword ptr [ebp-4]
 00494000    mov         edx,dword ptr [eax]
 00494002    call        dword ptr [edx+30];TAction.sub_0042B208
 00494005    xor         eax,eax
 00494007    pop         edx
 00494008    pop         ecx
 00494009    pop         ecx
 0049400A    mov         dword ptr fs:[eax],edx
 0049400D    push        494021
 00494012    mov         eax,dword ptr [ebp-4]
 00494015    mov         byte ptr [eax+68],0;TAction.FChecking:Boolean
 00494019    ret
>0049401A    jmp         @HandleFinally
>0049401F    jmp         00494012
 00494021    mov         esp,ebp
 00494023    pop         ebp
 00494024    ret
*}
end;

//00494028
procedure TVirtualListAction.SetEnabled(Value:Boolean);
begin
{*
 00494028    push        ebp
 00494029    mov         ebp,esp
 0049402B    add         esp,0FFFFFFEC
 0049402E    mov         byte ptr [ebp-5],dl
 00494031    mov         dword ptr [ebp-4],eax
 00494034    mov         al,byte ptr [ebp-5]
 00494037    mov         edx,dword ptr [ebp-4]
 0049403A    cmp         al,byte ptr [edx+6A];TVirtualListAction.FEnabled:Boolean
>0049403D    je          004940D3
 00494043    mov         eax,dword ptr [ebp-4]
 00494046    cmp         dword ptr [eax+5C],0;TVirtualListAction.FActionList:TCustomActionList
>0049404A    je          00494073
 0049404C    mov         eax,dword ptr [ebp-4]
 0049404F    mov         eax,dword ptr [eax+5C];TVirtualListAction.FActionList:TCustomActionList
 00494052    cmp         byte ptr [eax+58],1;TCustomActionList.FState:TActionListState
>00494056    jne         00494063
 00494058    mov         al,byte ptr [ebp-5]
 0049405B    mov         edx,dword ptr [ebp-4]
 0049405E    mov         byte ptr [edx+6A],al;TVirtualListAction.FEnabled:Boolean
>00494061    jmp         004940D3
 00494063    mov         eax,dword ptr [ebp-4]
 00494066    mov         eax,dword ptr [eax+5C];TVirtualListAction.FActionList:TCustomActionList
 00494069    cmp         byte ptr [eax+58],2;TCustomActionList.FState:TActionListState
>0049406D    jne         00494073
 0049406F    mov         byte ptr [ebp-5],1
 00494073    mov         eax,dword ptr [ebp-4]
 00494076    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494079    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049407C    dec         eax
 0049407D    test        eax,eax
>0049407F    jl          004940C2
 00494081    inc         eax
 00494082    mov         dword ptr [ebp-14],eax
 00494085    mov         dword ptr [ebp-0C],0
 0049408C    mov         eax,dword ptr [ebp-4]
 0049408F    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494092    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00494095    mov         edx,dword ptr [ebp-0C]
 00494098    mov         eax,dword ptr [eax+edx*4]
 0049409B    mov         edx,dword ptr ds:[493038];TActionLink
 004940A1    call        @AsClass
 004940A6    mov         dword ptr [ebp-10],eax
 004940A9    cmp         dword ptr [ebp-10],0
>004940AD    je          004940BA
 004940AF    mov         dl,byte ptr [ebp-5]
 004940B2    mov         eax,dword ptr [ebp-10]
 004940B5    mov         ecx,dword ptr [eax]
 004940B7    call        dword ptr [ecx+54];TActionLink.sub_00493B90
 004940BA    inc         dword ptr [ebp-0C]
 004940BD    dec         dword ptr [ebp-14]
>004940C0    jne         0049408C
 004940C2    mov         al,byte ptr [ebp-5]
 004940C5    mov         edx,dword ptr [ebp-4]
 004940C8    mov         byte ptr [edx+6A],al;TVirtualListAction.FEnabled:Boolean
 004940CB    mov         eax,dword ptr [ebp-4]
 004940CE    mov         edx,dword ptr [eax]
 004940D0    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 004940D3    mov         esp,ebp
 004940D5    pop         ebp
 004940D6    ret
*}
end;

//004940D8
procedure TAction.SetGroupIndex(Value:Integer);
begin
{*
 004940D8    push        ebp
 004940D9    mov         ebp,esp
 004940DB    add         esp,0FFFFFFEC
 004940DE    mov         dword ptr [ebp-8],edx
 004940E1    mov         dword ptr [ebp-4],eax
 004940E4    mov         eax,dword ptr [ebp-8]
 004940E7    mov         edx,dword ptr [ebp-4]
 004940EA    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>004940ED    je          0049414F
 004940EF    mov         eax,dword ptr [ebp-8]
 004940F2    mov         edx,dword ptr [ebp-4]
 004940F5    mov         dword ptr [edx+6C],eax;TAction.FGroupIndex:Integer
 004940F8    mov         eax,dword ptr [ebp-4]
 004940FB    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004940FE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494101    dec         eax
 00494102    test        eax,eax
>00494104    jl          00494147
 00494106    inc         eax
 00494107    mov         dword ptr [ebp-14],eax
 0049410A    mov         dword ptr [ebp-0C],0
 00494111    mov         eax,dword ptr [ebp-4]
 00494114    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00494117    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0049411A    mov         edx,dword ptr [ebp-0C]
 0049411D    mov         eax,dword ptr [eax+edx*4]
 00494120    mov         edx,dword ptr ds:[493038];TActionLink
 00494126    call        @AsClass
 0049412B    mov         dword ptr [ebp-10],eax
 0049412E    cmp         dword ptr [ebp-10],0
>00494132    je          0049413F
 00494134    mov         edx,dword ptr [ebp-8]
 00494137    mov         eax,dword ptr [ebp-10]
 0049413A    mov         ecx,dword ptr [eax]
 0049413C    call        dword ptr [ecx+58];TActionLink.sub_00493BA0
 0049413F    inc         dword ptr [ebp-0C]
 00494142    dec         dword ptr [ebp-14]
>00494145    jne         00494111
 00494147    mov         eax,dword ptr [ebp-4]
 0049414A    mov         edx,dword ptr [eax]
 0049414C    call        dword ptr [edx+30];TAction.sub_0042B208
 0049414F    mov         esp,ebp
 00494151    pop         ebp
 00494152    ret
*}
end;

//00494154
procedure TFileExit.SetHelpType(Value:THelpType);
begin
{*
 00494154    push        ebp
 00494155    mov         ebp,esp
 00494157    add         esp,0FFFFFFF0
 0049415A    mov         byte ptr [ebp-5],dl
 0049415D    mov         dword ptr [ebp-4],eax
 00494160    mov         al,byte ptr [ebp-5]
 00494163    mov         edx,dword ptr [ebp-4]
 00494166    cmp         al,byte ptr [edx+70];TFileExit.FHelpType:THelpType
>00494169    je          004941D0
 0049416B    mov         eax,dword ptr [ebp-4]
 0049416E    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 00494171    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494174    dec         eax
 00494175    test        eax,eax
>00494177    jl          004941BF
 00494179    inc         eax
 0049417A    mov         dword ptr [ebp-10],eax
 0049417D    mov         dword ptr [ebp-0C],0
 00494184    mov         edx,dword ptr [ebp-0C]
 00494187    mov         eax,dword ptr [ebp-4]
 0049418A    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 0049418D    call        TList.Get
 00494192    mov         edx,dword ptr ds:[493038];TActionLink
 00494198    call        @IsClass
 0049419D    test        al,al
>0049419F    je          004941B7
 004941A1    mov         edx,dword ptr [ebp-0C]
 004941A4    mov         eax,dword ptr [ebp-4]
 004941A7    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004941AA    call        TList.Get
 004941AF    mov         dl,byte ptr [ebp-5]
 004941B2    mov         ecx,dword ptr [eax]
 004941B4    call        dword ptr [ecx+64]
 004941B7    inc         dword ptr [ebp-0C]
 004941BA    dec         dword ptr [ebp-10]
>004941BD    jne         00494184
 004941BF    mov         al,byte ptr [ebp-5]
 004941C2    mov         edx,dword ptr [ebp-4]
 004941C5    mov         byte ptr [edx+70],al;TFileExit.FHelpType:THelpType
 004941C8    mov         eax,dword ptr [ebp-4]
 004941CB    mov         edx,dword ptr [eax]
 004941CD    call        dword ptr [edx+30];TFileExit.sub_0042B208
 004941D0    mov         esp,ebp
 004941D2    pop         ebp
 004941D3    ret
*}
end;

//004941D4
procedure TFileExit.SetHelpKeyword(Value:String);
begin
{*
 004941D4    push        ebp
 004941D5    mov         ebp,esp
 004941D7    add         esp,0FFFFFFF0
 004941DA    mov         dword ptr [ebp-8],edx
 004941DD    mov         dword ptr [ebp-4],eax
 004941E0    mov         eax,dword ptr [ebp-8]
 004941E3    mov         edx,dword ptr [ebp-4]
 004941E6    mov         edx,dword ptr [edx+78];TFileExit.FHelpKeyword:String
 004941E9    call        @LStrCmp
>004941EE    je          0049425A
 004941F0    mov         eax,dword ptr [ebp-4]
 004941F3    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004941F6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004941F9    dec         eax
 004941FA    test        eax,eax
>004941FC    jl          00494244
 004941FE    inc         eax
 004941FF    mov         dword ptr [ebp-10],eax
 00494202    mov         dword ptr [ebp-0C],0
 00494209    mov         edx,dword ptr [ebp-0C]
 0049420C    mov         eax,dword ptr [ebp-4]
 0049420F    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 00494212    call        TList.Get
 00494217    mov         edx,dword ptr ds:[493038];TActionLink
 0049421D    call        @IsClass
 00494222    test        al,al
>00494224    je          0049423C
 00494226    mov         edx,dword ptr [ebp-0C]
 00494229    mov         eax,dword ptr [ebp-4]
 0049422C    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 0049422F    call        TList.Get
 00494234    mov         edx,dword ptr [ebp-8]
 00494237    mov         ecx,dword ptr [eax]
 00494239    call        dword ptr [ecx+60]
 0049423C    inc         dword ptr [ebp-0C]
 0049423F    dec         dword ptr [ebp-10]
>00494242    jne         00494209
 00494244    mov         eax,dword ptr [ebp-4]
 00494247    add         eax,78;TFileExit.FHelpKeyword:String
 0049424A    mov         edx,dword ptr [ebp-8]
 0049424D    call        @LStrAsg
 00494252    mov         eax,dword ptr [ebp-4]
 00494255    mov         edx,dword ptr [eax]
 00494257    call        dword ptr [edx+30];TFileExit.sub_0042B208
 0049425A    mov         esp,ebp
 0049425C    pop         ebp
 0049425D    ret
*}
end;

//00494260
procedure TVirtualListAction.SetHelpContext(Value:THelpContext);
begin
{*
 00494260    push        ebp
 00494261    mov         ebp,esp
 00494263    add         esp,0FFFFFFEC
 00494266    mov         dword ptr [ebp-8],edx
 00494269    mov         dword ptr [ebp-4],eax
 0049426C    mov         eax,dword ptr [ebp-8]
 0049426F    mov         edx,dword ptr [ebp-4]
 00494272    cmp         eax,dword ptr [edx+74];TVirtualListAction.FHelpContext:THelpContext
>00494275    je          004942D7
 00494277    mov         eax,dword ptr [ebp-4]
 0049427A    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0049427D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494280    dec         eax
 00494281    test        eax,eax
>00494283    jl          004942C6
 00494285    inc         eax
 00494286    mov         dword ptr [ebp-14],eax
 00494289    mov         dword ptr [ebp-0C],0
 00494290    mov         eax,dword ptr [ebp-4]
 00494293    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494296    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00494299    mov         edx,dword ptr [ebp-0C]
 0049429C    mov         eax,dword ptr [eax+edx*4]
 0049429F    mov         edx,dword ptr ds:[493038];TActionLink
 004942A5    call        @AsClass
 004942AA    mov         dword ptr [ebp-10],eax
 004942AD    cmp         dword ptr [ebp-10],0
>004942B1    je          004942BE
 004942B3    mov         edx,dword ptr [ebp-8]
 004942B6    mov         eax,dword ptr [ebp-10]
 004942B9    mov         ecx,dword ptr [eax]
 004942BB    call        dword ptr [ecx+5C];TActionLink.sub_00493BB0
 004942BE    inc         dword ptr [ebp-0C]
 004942C1    dec         dword ptr [ebp-14]
>004942C4    jne         00494290
 004942C6    mov         eax,dword ptr [ebp-8]
 004942C9    mov         edx,dword ptr [ebp-4]
 004942CC    mov         dword ptr [edx+74],eax;TVirtualListAction.FHelpContext:THelpContext
 004942CF    mov         eax,dword ptr [ebp-4]
 004942D2    mov         edx,dword ptr [eax]
 004942D4    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 004942D7    mov         esp,ebp
 004942D9    pop         ebp
 004942DA    ret
*}
end;

//004942DC
procedure TVirtualListAction.SetHint(Value:String);
begin
{*
 004942DC    push        ebp
 004942DD    mov         ebp,esp
 004942DF    add         esp,0FFFFFFEC
 004942E2    mov         dword ptr [ebp-8],edx
 004942E5    mov         dword ptr [ebp-4],eax
 004942E8    mov         eax,dword ptr [ebp-8]
 004942EB    mov         edx,dword ptr [ebp-4]
 004942EE    mov         edx,dword ptr [edx+7C];TVirtualListAction.FHint:String
 004942F1    call        @LStrCmp
>004942F6    je          0049435D
 004942F8    mov         eax,dword ptr [ebp-4]
 004942FB    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004942FE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494301    dec         eax
 00494302    test        eax,eax
>00494304    jl          00494347
 00494306    inc         eax
 00494307    mov         dword ptr [ebp-14],eax
 0049430A    mov         dword ptr [ebp-0C],0
 00494311    mov         eax,dword ptr [ebp-4]
 00494314    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494317    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0049431A    mov         edx,dword ptr [ebp-0C]
 0049431D    mov         eax,dword ptr [eax+edx*4]
 00494320    mov         edx,dword ptr ds:[493038];TActionLink
 00494326    call        @AsClass
 0049432B    mov         dword ptr [ebp-10],eax
 0049432E    cmp         dword ptr [ebp-10],0
>00494332    je          0049433F
 00494334    mov         edx,dword ptr [ebp-8]
 00494337    mov         eax,dword ptr [ebp-10]
 0049433A    mov         ecx,dword ptr [eax]
 0049433C    call        dword ptr [ecx+68];TActionLink.sub_00493BE0
 0049433F    inc         dword ptr [ebp-0C]
 00494342    dec         dword ptr [ebp-14]
>00494345    jne         00494311
 00494347    mov         eax,dword ptr [ebp-4]
 0049434A    add         eax,7C;TVirtualListAction.FHint:String
 0049434D    mov         edx,dword ptr [ebp-8]
 00494350    call        @LStrAsg
 00494355    mov         eax,dword ptr [ebp-4]
 00494358    mov         edx,dword ptr [eax]
 0049435A    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 0049435D    mov         esp,ebp
 0049435F    pop         ebp
 00494360    ret
*}
end;

//00494364
procedure TFileExit.SetImageIndex(Value:TImageIndex);
begin
{*
 00494364    push        ebp
 00494365    mov         ebp,esp
 00494367    add         esp,0FFFFFFEC
 0049436A    mov         dword ptr [ebp-8],edx
 0049436D    mov         dword ptr [ebp-4],eax
 00494370    mov         eax,dword ptr [ebp-8]
 00494373    mov         edx,dword ptr [ebp-4]
 00494376    cmp         eax,dword ptr [edx+80];TFileExit.FImageIndex:TImageIndex
>0049437C    je          004943E1
 0049437E    mov         eax,dword ptr [ebp-4]
 00494381    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 00494384    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494387    dec         eax
 00494388    test        eax,eax
>0049438A    jl          004943CD
 0049438C    inc         eax
 0049438D    mov         dword ptr [ebp-14],eax
 00494390    mov         dword ptr [ebp-0C],0
 00494397    mov         eax,dword ptr [ebp-4]
 0049439A    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 0049439D    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004943A0    mov         edx,dword ptr [ebp-0C]
 004943A3    mov         eax,dword ptr [eax+edx*4]
 004943A6    mov         edx,dword ptr ds:[493038];TActionLink
 004943AC    call        @AsClass
 004943B1    mov         dword ptr [ebp-10],eax
 004943B4    cmp         dword ptr [ebp-10],0
>004943B8    je          004943C5
 004943BA    mov         edx,dword ptr [ebp-8]
 004943BD    mov         eax,dword ptr [ebp-10]
 004943C0    mov         ecx,dword ptr [eax]
 004943C2    call        dword ptr [ecx+6C];TActionLink.sub_00493BF0
 004943C5    inc         dword ptr [ebp-0C]
 004943C8    dec         dword ptr [ebp-14]
>004943CB    jne         00494397
 004943CD    mov         eax,dword ptr [ebp-8]
 004943D0    mov         edx,dword ptr [ebp-4]
 004943D3    mov         dword ptr [edx+80],eax;TFileExit.FImageIndex:TImageIndex
 004943D9    mov         eax,dword ptr [ebp-4]
 004943DC    mov         edx,dword ptr [eax]
 004943DE    call        dword ptr [edx+30];TFileExit.sub_0042B208
 004943E1    mov         esp,ebp
 004943E3    pop         ebp
 004943E4    ret
*}
end;

//004943E8
procedure TVirtualListAction.SetShortCut(Value:TShortCut);
begin
{*
 004943E8    push        ebp
 004943E9    mov         ebp,esp
 004943EB    add         esp,0FFFFFFEC
 004943EE    mov         word ptr [ebp-6],dx
 004943F2    mov         dword ptr [ebp-4],eax
 004943F5    mov         ax,word ptr [ebp-6]
 004943F9    mov         edx,dword ptr [ebp-4]
 004943FC    cmp         ax,word ptr [edx+84];TVirtualListAction.FShortCut:TShortCut
>00494403    je          0049446B
 00494405    mov         eax,dword ptr [ebp-4]
 00494408    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0049440B    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049440E    dec         eax
 0049440F    test        eax,eax
>00494411    jl          00494455
 00494413    inc         eax
 00494414    mov         dword ptr [ebp-14],eax
 00494417    mov         dword ptr [ebp-0C],0
 0049441E    mov         eax,dword ptr [ebp-4]
 00494421    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494424    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00494427    mov         edx,dword ptr [ebp-0C]
 0049442A    mov         eax,dword ptr [eax+edx*4]
 0049442D    mov         edx,dword ptr ds:[493038];TActionLink
 00494433    call        @AsClass
 00494438    mov         dword ptr [ebp-10],eax
 0049443B    cmp         dword ptr [ebp-10],0
>0049443F    je          0049444D
 00494441    mov         dx,word ptr [ebp-6]
 00494445    mov         eax,dword ptr [ebp-10]
 00494448    mov         ecx,dword ptr [eax]
 0049444A    call        dword ptr [ecx+70];TActionLink.sub_00493C00
 0049444D    inc         dword ptr [ebp-0C]
 00494450    dec         dword ptr [ebp-14]
>00494453    jne         0049441E
 00494455    mov         ax,word ptr [ebp-6]
 00494459    mov         edx,dword ptr [ebp-4]
 0049445C    mov         word ptr [edx+84],ax;TVirtualListAction.FShortCut:TShortCut
 00494463    mov         eax,dword ptr [ebp-4]
 00494466    mov         edx,dword ptr [eax]
 00494468    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 0049446B    mov         esp,ebp
 0049446D    pop         ebp
 0049446E    ret
*}
end;

//00494470
procedure TVirtualListAction.SetVisible(Value:Boolean);
begin
{*
 00494470    push        ebp
 00494471    mov         ebp,esp
 00494473    add         esp,0FFFFFFEC
 00494476    mov         byte ptr [ebp-5],dl
 00494479    mov         dword ptr [ebp-4],eax
 0049447C    mov         al,byte ptr [ebp-5]
 0049447F    mov         edx,dword ptr [ebp-4]
 00494482    cmp         al,byte ptr [edx+86];TVirtualListAction.FVisible:Boolean
>00494488    je          004944F8
 0049448A    mov         eax,dword ptr [ebp-4]
 0049448D    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 00494490    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00494493    dec         eax
 00494494    test        eax,eax
>00494496    jl          004944E4
 00494498    inc         eax
 00494499    mov         dword ptr [ebp-14],eax
 0049449C    mov         dword ptr [ebp-0C],0
 004944A3    mov         eax,dword ptr [ebp-4]
 004944A6    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004944A9    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004944AC    mov         edx,dword ptr [ebp-0C]
 004944AF    mov         eax,dword ptr [eax+edx*4]
 004944B2    mov         edx,dword ptr ds:[493038];TActionLink
 004944B8    call        @AsClass
 004944BD    mov         dword ptr [ebp-10],eax
 004944C0    cmp         dword ptr [ebp-10],0
>004944C4    je          004944DC
 004944C6    mov         edx,dword ptr [ebp-0C]
 004944C9    mov         eax,dword ptr [ebp-4]
 004944CC    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004944CF    call        TList.Get
 004944D4    mov         dl,byte ptr [ebp-5]
 004944D7    mov         ecx,dword ptr [eax]
 004944D9    call        dword ptr [ecx+74]
 004944DC    inc         dword ptr [ebp-0C]
 004944DF    dec         dword ptr [ebp-14]
>004944E2    jne         004944A3
 004944E4    mov         al,byte ptr [ebp-5]
 004944E7    mov         edx,dword ptr [ebp-4]
 004944EA    mov         byte ptr [edx+86],al;TVirtualListAction.FVisible:Boolean
 004944F0    mov         eax,dword ptr [ebp-4]
 004944F3    mov         edx,dword ptr [eax]
 004944F5    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 004944F8    mov         esp,ebp
 004944FA    pop         ebp
 004944FB    ret
*}
end;

//004944FC
{*procedure sub_004944FC(?:?);
begin
 004944FC    push        ebp
 004944FD    mov         ebp,esp
 004944FF    add         esp,0FFFFFFF4
 00494502    mov         dword ptr [ebp-8],edx
 00494505    mov         dword ptr [ebp-4],eax
 00494508    mov         eax,dword ptr [ebp-4]
 0049450B    mov         eax,dword ptr [eax+8];TCustomAction.Name:TComponentName
 0049450E    mov         edx,dword ptr [ebp-4]
 00494511    mov         edx,dword ptr [edx+64];TCustomAction.FCaption:String
 00494514    call        @LStrCmp
>00494519    jne         00494530
 0049451B    mov         eax,dword ptr [ebp-4]
 0049451E    cmp         dword ptr [eax+4],0;TCustomAction.FOwner:TComponent
>00494522    je          00494534
 00494524    mov         eax,dword ptr [ebp-4]
 00494527    mov         eax,dword ptr [eax+4];TCustomAction.FOwner:TComponent
 0049452A    test        byte ptr [eax+1C],1;TComponent.FComponentState:TComponentState
>0049452E    je          00494534
 00494530    xor         eax,eax
>00494532    jmp         00494536
 00494534    mov         al,1
 00494536    mov         byte ptr [ebp-9],al
 00494539    mov         edx,dword ptr [ebp-8]
 0049453C    mov         eax,dword ptr [ebp-4]
 0049453F    call        TComponent.SetName
 00494544    cmp         byte ptr [ebp-9],0
>00494548    je          00494561
 0049454A    mov         eax,dword ptr [ebp-4]
 0049454D    mov         eax,dword ptr [eax+50];TCustomAction.FClients:TList
 00494550    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>00494554    jne         00494561
 00494556    mov         edx,dword ptr [ebp-8]
 00494559    mov         eax,dword ptr [ebp-4]
 0049455C    call        TVirtualListAction.SetCaption
 00494561    mov         esp,ebp
 00494563    pop         ebp
 00494564    ret
end;*}

//00494568
{*procedure TCustomAction.sub_00494568(?:?);
begin
 00494568    push        ebp
 00494569    mov         ebp,esp
 0049456B    add         esp,0FFFFFFF4
 0049456E    push        ebx
 0049456F    mov         dword ptr [ebp-8],edx
 00494572    mov         dword ptr [ebp-4],eax
 00494575    mov         byte ptr [ebp-9],1
 00494579    mov         eax,dword ptr [ebp-4]
 0049457C    cmp         word ptr [eax+8A],0;TCustomAction.?f8A:word
>00494584    je          0049459B
 00494586    lea         ecx,[ebp-9]
 00494589    mov         edx,dword ptr [ebp-8]
 0049458C    mov         ebx,dword ptr [ebp-4]
 0049458F    mov         eax,dword ptr [ebx+8C];TCustomAction.?f8C:dword
 00494595    call        dword ptr [ebx+88];TCustomAction.FOnHint
 0049459B    mov         al,byte ptr [ebp-9]
 0049459E    pop         ebx
 0049459F    mov         esp,ebp
 004945A1    pop         ebp
 004945A2    ret
end;*}

//004945A4
procedure TCustomAction.sub_0042B128;
begin
{*
 004945A4    push        ebp
 004945A5    mov         ebp,esp
 004945A7    add         esp,0FFFFFFF8
 004945AA    mov         dword ptr [ebp-4],eax
 004945AD    mov         byte ptr [ebp-5],0
 004945B1    mov         eax,dword ptr [ebp-4]
 004945B4    cmp         dword ptr [eax+5C],0;TCustomAction.FActionList:TCustomActionList
>004945B8    je          004945C6
 004945BA    mov         eax,dword ptr [ebp-4]
 004945BD    mov         eax,dword ptr [eax+5C];TCustomAction.FActionList:TCustomActionList
 004945C0    cmp         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
>004945C4    jne         0049462D
 004945C6    mov         eax,dword ptr [ebp-4]
 004945C9    mov         edx,dword ptr [eax]
 004945CB    call        dword ptr [edx+44];TCustomAction.sub_004933DC
 004945CE    mov         eax,dword ptr [ebp-4]
 004945D1    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>004945D5    je          0049460F
 004945D7    mov         eax,dword ptr [ebp-4]
 004945DA    cmp         byte ptr [eax+95],0;TCustomAction.FAutoCheck:Boolean
>004945E1    je          0049460F
 004945E3    mov         eax,dword ptr [ebp-4]
 004945E6    cmp         byte ptr [eax+69],0;TCustomAction.FChecked:Boolean
>004945EA    je          004945FE
 004945EC    mov         eax,dword ptr [ebp-4]
 004945EF    cmp         byte ptr [eax+69],0;TCustomAction.FChecked:Boolean
>004945F3    je          0049460F
 004945F5    mov         eax,dword ptr [ebp-4]
 004945F8    cmp         dword ptr [eax+6C],0;TCustomAction.FGroupIndex:Integer
>004945FC    jne         0049460F
 004945FE    mov         eax,dword ptr [ebp-4]
 00494601    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 00494604    xor         dl,1
 00494607    mov         eax,dword ptr [ebp-4]
 0049460A    call        TAction.SetChecked
 0049460F    mov         eax,dword ptr [ebp-4]
 00494612    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>00494616    je          00494624
 00494618    mov         eax,dword ptr [ebp-4]
 0049461B    call        TContainedAction.sub_0042B128
 00494620    test        al,al
>00494622    jne         00494628
 00494624    xor         eax,eax
>00494626    jmp         0049462A
 00494628    mov         al,1
 0049462A    mov         byte ptr [ebp-5],al
 0049462D    mov         al,byte ptr [ebp-5]
 00494630    pop         ecx
 00494631    pop         ecx
 00494632    pop         ebp
 00494633    ret
*}
end;

//00494634
{*function TVirtualListAction.GetSecondaryShortCuts:?;
begin
 00494634    push        ebp
 00494635    mov         ebp,esp
 00494637    add         esp,0FFFFFFF8
 0049463A    mov         dword ptr [ebp-4],eax
 0049463D    mov         eax,dword ptr [ebp-4]
 00494640    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>00494647    jne         0049465E
 00494649    mov         dl,1
 0049464B    mov         eax,[00492AD0];TShortCutList
 00494650    call        TObject.Create;TShortCutList.Create
 00494655    mov         edx,dword ptr [ebp-4]
 00494658    mov         dword ptr [edx+90],eax;TVirtualListAction.FSecondaryShortCuts:TShortCutList
 0049465E    mov         eax,dword ptr [ebp-4]
 00494661    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 00494667    mov         dword ptr [ebp-8],eax
 0049466A    mov         eax,dword ptr [ebp-8]
 0049466D    pop         ecx
 0049466E    pop         ecx
 0049466F    pop         ebp
 00494670    ret
end;*}

//00494674
procedure TVirtualListAction.SetSecondaryShortCuts(Value:TShortCutList);
begin
{*
 00494674    push        ebp
 00494675    mov         ebp,esp
 00494677    add         esp,0FFFFFFF8
 0049467A    mov         dword ptr [ebp-8],edx
 0049467D    mov         dword ptr [ebp-4],eax
 00494680    mov         eax,dword ptr [ebp-4]
 00494683    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>0049468A    jne         004946A1
 0049468C    mov         dl,1
 0049468E    mov         eax,[00492AD0];TShortCutList
 00494693    call        TObject.Create;TShortCutList.Create
 00494698    mov         edx,dword ptr [ebp-4]
 0049469B    mov         dword ptr [edx+90],eax;TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004946A1    mov         edx,dword ptr [ebp-8]
 004946A4    mov         eax,dword ptr [ebp-4]
 004946A7    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004946AD    mov         ecx,dword ptr [eax]
 004946AF    call        dword ptr [ecx+8];TShortCutList.sub_00421BB0
 004946B2    pop         ecx
 004946B3    pop         ecx
 004946B4    pop         ebp
 004946B5    ret
*}
end;

//004946B8
function TVirtualListAction.IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;
begin
{*
 004946B8    push        ebp
 004946B9    mov         ebp,esp
 004946BB    add         esp,0FFFFFFF8
 004946BE    mov         dword ptr [ebp-4],eax
 004946C1    mov         eax,dword ptr [ebp-4]
 004946C4    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>004946CB    je          004946DF
 004946CD    mov         eax,dword ptr [ebp-4]
 004946D0    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004946D6    mov         edx,dword ptr [eax]
 004946D8    call        dword ptr [edx+14];TShortCutList.sub_00423008
 004946DB    test        eax,eax
>004946DD    jg          004946E3
 004946DF    xor         eax,eax
>004946E1    jmp         004946E5
 004946E3    mov         al,1
 004946E5    mov         byte ptr [ebp-5],al
 004946E8    mov         al,byte ptr [ebp-5]
 004946EB    pop         ecx
 004946EC    pop         ecx
 004946ED    pop         ebp
 004946EE    ret
*}
end;

//004946F0
{*function sub_004946F0:?;
begin
 004946F0    push        ebp
 004946F1    mov         ebp,esp
 004946F3    add         esp,0FFFFFFF8
 004946F6    push        esi
 004946F7    mov         dword ptr [ebp-4],eax
 004946FA    mov         eax,dword ptr [ebp-4]
 004946FD    mov         si,0FFEF
 00494701    call        @CallDynaInst;TCustomAction.sub_0042B128
 00494706    mov         byte ptr [ebp-5],al
 00494709    mov         al,byte ptr [ebp-5]
 0049470C    pop         esi
 0049470D    pop         ecx
 0049470E    pop         ecx
 0049470F    pop         ebp
 00494710    ret
end;*}

//00494714
{*function sub_00494714(?:?):?;
begin
 00494714    push        ebp
 00494715    mov         ebp,esp
 00494717    add         esp,0FFFFFFF4
 0049471A    push        ebx
 0049471B    mov         dword ptr [ebp-8],edx
 0049471E    mov         dword ptr [ebp-4],eax
 00494721    mov         edx,dword ptr [ebp-8]
 00494724    mov         eax,dword ptr [ebp-4]
 00494727    call        00422C34
 0049472C    mov         dword ptr [ebp-0C],eax
 0049472F    mov         eax,dword ptr [ebp-8]
 00494732    call        00497BF0
 00494737    movzx       ecx,ax
 0049473A    mov         edx,dword ptr [ebp-0C]
 0049473D    mov         eax,dword ptr [ebp-4]
 00494740    mov         ebx,dword ptr [eax]
 00494742    call        dword ptr [ebx+24];TShortCutList.sub_004232C0
 00494745    mov         eax,dword ptr [ebp-0C]
 00494748    pop         ebx
 00494749    mov         esp,ebp
 0049474B    pop         ebp
 0049474C    ret
end;*}

//00494750
constructor sub_00494750;
begin
{*
 00494750    push        ebp
 00494751    mov         ebp,esp
 00494753    add         esp,0FFFFFFF4
 00494756    test        dl,dl
>00494758    je          00494762
 0049475A    add         esp,0FFFFFFF0
 0049475D    call        @ClassCreate
 00494762    mov         dword ptr [ebp-0C],ecx
 00494765    mov         byte ptr [ebp-5],dl
 00494768    mov         dword ptr [ebp-4],eax
 0049476B    mov         ecx,dword ptr [ebp-0C]
 0049476E    xor         edx,edx
 00494770    mov         eax,dword ptr [ebp-4]
 00494773    call        TCustomAction.Create
 00494778    mov         eax,dword ptr [ebp-4]
 0049477B    mov         byte ptr [eax+60],1;TAction.FDisableIfNoHandler:Boolean
 0049477F    mov         eax,dword ptr [ebp-4]
 00494782    cmp         byte ptr [ebp-5],0
>00494786    je          00494797
 00494788    call        @AfterConstruction
 0049478D    pop         dword ptr fs:[0]
 00494794    add         esp,0C
 00494797    mov         eax,dword ptr [ebp-4]
 0049479A    mov         esp,ebp
 0049479C    pop         ebp
 0049479D    ret
*}
end;

//004947A0
{*function sub_004947A0(?:?; ?:?):?;
begin
 004947A0    push        ebp
 004947A1    mov         ebp,esp
 004947A3    add         esp,0FFFFFFEC
 004947A6    mov         word ptr [ebp-6],dx
 004947AA    mov         dword ptr [ebp-4],eax
 004947AD    mov         dword ptr [ebp-0C],0FFFFFFFF
 004947B4    mov         eax,dword ptr [ebp-4]
 004947B7    mov         edx,dword ptr [eax]
 004947B9    call        dword ptr [edx+14]
 004947BC    dec         eax
 004947BD    test        eax,eax
>004947BF    jl          004947ED
 004947C1    inc         eax
 004947C2    mov         dword ptr [ebp-14],eax
 004947C5    mov         dword ptr [ebp-10],0
 004947CC    mov         edx,dword ptr [ebp-10]
 004947CF    mov         eax,dword ptr [ebp-4]
 004947D2    mov         ecx,dword ptr [eax]
 004947D4    call        dword ptr [ecx+18]
 004947D7    cmp         ax,word ptr [ebp-6]
>004947DB    jne         004947E5
 004947DD    mov         eax,dword ptr [ebp-10]
 004947E0    mov         dword ptr [ebp-0C],eax
>004947E3    jmp         004947ED
 004947E5    inc         dword ptr [ebp-10]
 004947E8    dec         dword ptr [ebp-14]
>004947EB    jne         004947CC
 004947ED    mov         eax,dword ptr [ebp-0C]
 004947F0    mov         esp,ebp
 004947F2    pop         ebp
 004947F3    ret
end;*}

Initialization
//00494824
{*
 00494824    push        ebp
 00494825    mov         ebp,esp
 00494827    sub         dword ptr ds:[571E1C],1
>0049482E    jae         00494850
 00494830    mov         edx,dword ptr ds:[47DF94];TControl
 00494836    mov         eax,[00492868];TCustomActionList
 0049483B    call        GroupDescendentsWith
 00494840    mov         edx,dword ptr ds:[47DF94];TControl
 00494846    mov         eax,[004926AC];TContainedAction
 0049484B    call        GroupDescendentsWith
 00494850    pop         ebp
 00494851    ret
*}
Finalization
end.