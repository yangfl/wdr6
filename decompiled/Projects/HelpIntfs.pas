//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit HelpIntfs;

interface

uses
  SysUtils, Classes, Contnrs;

type
  EHelpSystemException = class(Exception)
  end;
  THelpViewerNode = class(TObject)
  public
    FViewer:ICustomHelpViewer;//f4
    FViewerID:Integer;//f8
    constructor Create;//0043906C
  end;
  THelpManager = class(TInterfacedObject)
  public
    FHelpSelector:IHelpSelector;//fC
    FViewerList:TObjectList;//f10
    FExtendedViewerList:TObjectList;//f14
    FSpecialWinHelpViewerList:TObjectList;//f18
    FMinCookie:Integer;//f1C
    FHandle:Longint;//f20
    FHelpFile:String;//f24
    constructor Create;//004390B4
  end;
    function RegisterViewer(const newViewer:ICustomHelpViewer; var Manager:IHelpManager):Integer;//00438F80
    //function sub_00439008(?:?):?;//00439008
    //procedure sub_00439140(?:?; ?:?; ?:?);//00439140
    //procedure sub_004392F8(?:?);//004392F8
    //procedure sub_0043933C(?:?);//0043933C
    //function sub_00439504(?:?; ?:?; ?:?; ?:?; ?:?):?;//00439504
    //procedure sub_00439634(?:?; ?:?; ?:?);//00439634
    //procedure sub_00439894(?:?; ?:?; ?:?);//00439894
    //procedure sub_004399B8(?:?);//004399B8
    //procedure sub_004399CC(?:?; ?:?; ?:?);//004399CC
    //procedure sub_00439AE8(?:?; ?:?);//00439AE8
    //function sub_00439B50(?:?; ?:?; ?:?; ?:?; ?:?):?;//00439B50
    //function sub_00439C04(?:?):?;//00439C04
    //procedure sub_00439C20(?:?; ?:?);//00439C20
    //procedure sub_00439C40(?:?; ?:?);//00439C40

implementation

//00438F80
function RegisterViewer(const newViewer:ICustomHelpViewer; var Manager:IHelpManager):Integer;
begin
{*
 00438F80    push        ebp
 00438F81    mov         ebp,esp
 00438F83    add         esp,0FFFFFFF0
 00438F86    xor         ecx,ecx
 00438F88    mov         dword ptr [ebp-10],ecx
 00438F8B    mov         dword ptr [ebp-8],edx
 00438F8E    mov         dword ptr [ebp-4],eax
 00438F91    mov         eax,dword ptr [ebp-8]
 00438F94    test        eax,eax
>00438F96    je          00438F9C
 00438F98    xor         edx,edx
 00438F9A    mov         dword ptr [eax],edx
 00438F9C    xor         eax,eax
 00438F9E    push        ebp
 00438F9F    push        438FFA
 00438FA4    push        dword ptr fs:[eax]
 00438FA7    mov         dword ptr fs:[eax],esp
 00438FAA    cmp         dword ptr ds:[571B68],0;HelpManager:THelpManager
>00438FB1    jne         00438FC4
 00438FB3    mov         dl,1
 00438FB5    mov         eax,[00438EEC];THelpManager
 00438FBA    call        THelpManager.Create
 00438FBF    mov         [00571B68],eax;HelpManager:THelpManager
 00438FC4    lea         ecx,[ebp-10]
 00438FC7    mov         edx,dword ptr [ebp-4]
 00438FCA    mov         eax,[00571B68];HelpManager:THelpManager
 00438FCF    call        00439140
 00438FD4    mov         edx,dword ptr [ebp-10]
 00438FD7    mov         eax,dword ptr [ebp-8]
 00438FDA    call        @IntfCopy
 00438FDF    xor         eax,eax
 00438FE1    mov         dword ptr [ebp-0C],eax
 00438FE4    xor         eax,eax
 00438FE6    pop         edx
 00438FE7    pop         ecx
 00438FE8    pop         ecx
 00438FE9    mov         dword ptr fs:[eax],edx
 00438FEC    push        439001
 00438FF1    lea         eax,[ebp-10]
 00438FF4    call        @IntfClear
 00438FF9    ret
>00438FFA    jmp         @HandleFinally
>00438FFF    jmp         00438FF1
 00439001    mov         eax,dword ptr [ebp-0C]
 00439004    mov         esp,ebp
 00439006    pop         ebp
 00439007    ret
*}
end;

//00439008
{*function sub_00439008(?:?):?;
begin
 00439008    push        ebp
 00439009    mov         ebp,esp
 0043900B    add         esp,0FFFFFFF8
 0043900E    mov         dword ptr [ebp-4],eax
 00439011    mov         eax,dword ptr [ebp-4]
 00439014    test        eax,eax
>00439016    je          0043901C
 00439018    xor         edx,edx
 0043901A    mov         dword ptr [eax],edx
 0043901C    cmp         dword ptr ds:[571B68],0;HelpManager:THelpManager
>00439023    jne         00439036
 00439025    mov         dl,1
 00439027    mov         eax,[00438EEC];THelpManager
 0043902C    call        THelpManager.Create;THelpManager.Create
 00439031    mov         [00571B68],eax;HelpManager:THelpManager
 00439036    mov         eax,dword ptr [ebp-4]
 00439039    mov         edx,dword ptr ds:[571B68];0x0 HelpManager:THelpManager
 0043903F    test        edx,edx
>00439041    je          00439046
 00439043    sub         edx,0FFFFFFF8
 00439046    mov         ecx,43905C;['{B0FC9353-5F0E-11D3-A3B9-00C04F79AD3A}']
 0043904B    call        @IntfCast
 00439050    xor         eax,eax
 00439052    mov         dword ptr [ebp-8],eax
 00439055    mov         eax,dword ptr [ebp-8]
 00439058    pop         ecx
 00439059    pop         ecx
 0043905A    pop         ebp
 0043905B    ret
end;*}

//0043906C
constructor THelpViewerNode.Create;
begin
{*
 0043906C    push        ebp
 0043906D    mov         ebp,esp
 0043906F    add         esp,0FFFFFFF4
 00439072    test        dl,dl
>00439074    je          0043907E
 00439076    add         esp,0FFFFFFF0
 00439079    call        @ClassCreate
 0043907E    mov         dword ptr [ebp-0C],ecx
 00439081    mov         byte ptr [ebp-5],dl
 00439084    mov         dword ptr [ebp-4],eax
 00439087    mov         eax,dword ptr [ebp-4]
 0043908A    add         eax,4
 0043908D    mov         edx,dword ptr [ebp-0C]
 00439090    call        @IntfCopy
 00439095    mov         eax,dword ptr [ebp-4]
 00439098    cmp         byte ptr [ebp-5],0
>0043909C    je          004390AD
 0043909E    call        @AfterConstruction
 004390A3    pop         dword ptr fs:[0]
 004390AA    add         esp,0C
 004390AD    mov         eax,dword ptr [ebp-4]
 004390B0    mov         esp,ebp
 004390B2    pop         ebp
 004390B3    ret
*}
end;

//004390B4
constructor THelpManager.Create;
begin
{*
 004390B4    push        ebp
 004390B5    mov         ebp,esp
 004390B7    add         esp,0FFFFFFF8
 004390BA    test        dl,dl
>004390BC    je          004390C6
 004390BE    add         esp,0FFFFFFF0
 004390C1    call        @ClassCreate
 004390C6    mov         byte ptr [ebp-5],dl
 004390C9    mov         dword ptr [ebp-4],eax
 004390CC    xor         edx,edx
 004390CE    mov         eax,dword ptr [ebp-4]
 004390D1    call        TObject.Create
 004390D6    mov         dl,1
 004390D8    mov         eax,[00437584];TObjectList
 004390DD    call        TObjectList.Create;TObjectList.Create
 004390E2    mov         edx,dword ptr [ebp-4]
 004390E5    mov         dword ptr [edx+10],eax;THelpManager.FViewerList:TObjectList
 004390E8    mov         dl,1
 004390EA    mov         eax,[00437584];TObjectList
 004390EF    call        TObjectList.Create;TObjectList.Create
 004390F4    mov         edx,dword ptr [ebp-4]
 004390F7    mov         dword ptr [edx+14],eax;THelpManager.FExtendedViewerList:TObjectList
 004390FA    mov         dl,1
 004390FC    mov         eax,[00437584];TObjectList
 00439101    call        TObjectList.Create;TObjectList.Create
 00439106    mov         edx,dword ptr [ebp-4]
 00439109    mov         dword ptr [edx+18],eax;THelpManager.FSpecialWinHelpViewerList:TObjectList
 0043910C    mov         eax,dword ptr [ebp-4]
 0043910F    add         eax,24;THelpManager.FHelpFile:String
 00439112    call        @LStrClr
 00439117    mov         eax,dword ptr [ebp-4]
 0043911A    mov         dword ptr [eax+1C],1;THelpManager.FMinCookie:Integer
 00439121    mov         eax,dword ptr [ebp-4]
 00439124    cmp         byte ptr [ebp-5],0
>00439128    je          00439139
 0043912A    call        @AfterConstruction
 0043912F    pop         dword ptr fs:[0]
 00439136    add         esp,0C
 00439139    mov         eax,dword ptr [ebp-4]
 0043913C    pop         ecx
 0043913D    pop         ecx
 0043913E    pop         ebp
 0043913F    ret
*}
end;

//00439140
{*procedure sub_00439140(?:?; ?:?; ?:?);
begin
 00439140    push        ebp
 00439141    mov         ebp,esp
 00439143    add         esp,0FFFFFFE8
 00439146    push        ebx
 00439147    xor         ebx,ebx
 00439149    mov         dword ptr [ebp-10],ebx
 0043914C    mov         dword ptr [ebp-14],ebx
 0043914F    mov         dword ptr [ebp-0C],ecx
 00439152    mov         dword ptr [ebp-8],edx
 00439155    mov         dword ptr [ebp-4],eax
 00439158    xor         eax,eax
 0043915A    push        ebp
 0043915B    push        439284
 00439160    push        dword ptr fs:[eax]
 00439163    mov         dword ptr fs:[eax],esp
 00439166    mov         ecx,dword ptr [ebp-8]
 00439169    mov         dl,1
 0043916B    mov         eax,[00438D7C];THelpViewerNode
 00439170    call        THelpViewerNode.Create;THelpViewerNode.Create
 00439175    mov         dword ptr [ebp-18],eax
 00439178    mov         eax,dword ptr [ebp-4]
 0043917B    mov         eax,dword ptr [eax+1C]
 0043917E    mov         edx,dword ptr [ebp-18]
 00439181    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 00439184    mov         eax,dword ptr [ebp-4]
 00439187    mov         eax,dword ptr [eax+10]
 0043918A    mov         edx,dword ptr [eax+8]
 0043918D    mov         ecx,dword ptr [ebp-18]
 00439190    mov         eax,dword ptr [ebp-4]
 00439193    mov         eax,dword ptr [eax+10]
 00439196    call        00437720
 0043919B    mov         eax,dword ptr [ebp-18]
 0043919E    mov         edx,dword ptr [eax+8];THelpViewerNode.FViewerID:Integer
 004391A1    mov         eax,dword ptr [ebp-8]
 004391A4    mov         ecx,dword ptr [eax]
 004391A6    call        dword ptr [ecx+24]
 004391A9    lea         eax,[ebp-10]
 004391AC    call        @IntfClear
 004391B1    mov         ecx,eax
 004391B3    mov         edx,439290;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 004391B8    mov         eax,dword ptr [ebp-8]
 004391BB    call        00412854
 004391C0    test        al,al
>004391C2    je          004391F9
 004391C4    mov         ecx,dword ptr [ebp-10]
 004391C7    mov         dl,1
 004391C9    mov         eax,[00438D7C];THelpViewerNode
 004391CE    call        THelpViewerNode.Create;THelpViewerNode.Create
 004391D3    mov         dword ptr [ebp-18],eax
 004391D6    mov         eax,dword ptr [ebp-4]
 004391D9    mov         eax,dword ptr [eax+1C]
 004391DC    mov         edx,dword ptr [ebp-18]
 004391DF    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 004391E2    mov         eax,dword ptr [ebp-4]
 004391E5    mov         eax,dword ptr [eax+14]
 004391E8    mov         edx,dword ptr [eax+8]
 004391EB    mov         ecx,dword ptr [ebp-18]
 004391EE    mov         eax,dword ptr [ebp-4]
 004391F1    mov         eax,dword ptr [eax+14]
 004391F4    call        00437720
 004391F9    lea         eax,[ebp-14]
 004391FC    call        @IntfClear
 00439201    mov         ecx,eax
 00439203    mov         edx,439290;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439208    mov         eax,dword ptr [ebp-8]
 0043920B    call        00412854
 00439210    test        al,al
>00439212    je          00439249
 00439214    mov         ecx,dword ptr [ebp-14]
 00439217    mov         dl,1
 00439219    mov         eax,[00438D7C];THelpViewerNode
 0043921E    call        THelpViewerNode.Create;THelpViewerNode.Create
 00439223    mov         dword ptr [ebp-18],eax
 00439226    mov         eax,dword ptr [ebp-4]
 00439229    mov         eax,dword ptr [eax+1C]
 0043922C    mov         edx,dword ptr [ebp-18]
 0043922F    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 00439232    mov         eax,dword ptr [ebp-4]
 00439235    mov         eax,dword ptr [eax+18]
 00439238    mov         edx,dword ptr [eax+8]
 0043923B    mov         ecx,dword ptr [ebp-18]
 0043923E    mov         eax,dword ptr [ebp-4]
 00439241    mov         eax,dword ptr [eax+18]
 00439244    call        00437720
 00439249    mov         eax,dword ptr [ebp-4]
 0043924C    inc         dword ptr [eax+1C]
 0043924F    mov         eax,dword ptr [ebp-0C]
 00439252    mov         edx,dword ptr [ebp-4]
 00439255    test        edx,edx
>00439257    je          0043925C
 00439259    sub         edx,0FFFFFFF8
 0043925C    mov         ecx,439290;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439261    call        @IntfCast
 00439266    xor         eax,eax
 00439268    pop         edx
 00439269    pop         ecx
 0043926A    pop         ecx
 0043926B    mov         dword ptr fs:[eax],edx
 0043926E    push        43928B
 00439273    lea         eax,[ebp-14]
 00439276    call        @IntfClear
 0043927B    lea         eax,[ebp-10]
 0043927E    call        @IntfClear
 00439283    ret
>00439284    jmp         @HandleFinally
>00439289    jmp         00439273
 0043928B    pop         ebx
 0043928C    mov         esp,ebp
 0043928E    pop         ebp
 0043928F    ret
end;*}

//004392F8
{*procedure sub_004392F8(?:?);
begin
 004392F8    push        ebp
 004392F9    mov         ebp,esp
 004392FB    add         esp,0FFFFFFF4
 004392FE    mov         dword ptr [ebp-4],eax
 00439301    mov         eax,dword ptr [ebp-4]
 00439304    mov         eax,dword ptr [eax+10]
 00439307    mov         eax,dword ptr [eax+8]
 0043930A    dec         eax
 0043930B    test        eax,eax
>0043930D    jl          00439338
 0043930F    inc         eax
 00439310    mov         dword ptr [ebp-0C],eax
 00439313    mov         dword ptr [ebp-8],0
 0043931A    mov         eax,dword ptr [ebp-4]
 0043931D    mov         eax,dword ptr [eax+10]
 00439320    mov         edx,dword ptr [ebp-8]
 00439323    call        004376FC
 00439328    mov         eax,dword ptr [eax+4]
 0043932B    mov         edx,dword ptr [eax]
 0043932D    call        dword ptr [edx+28]
 00439330    inc         dword ptr [ebp-8]
 00439333    dec         dword ptr [ebp-0C]
>00439336    jne         0043931A
 00439338    mov         esp,ebp
 0043933A    pop         ebp
 0043933B    ret
end;*}

//0043933C
{*procedure sub_0043933C(?:?);
begin
 0043933C    push        ebp
 0043933D    mov         ebp,esp
 0043933F    add         esp,0FFFFFFE8
 00439342    push        ebx
 00439343    xor         edx,edx
 00439345    mov         dword ptr [ebp-18],edx
 00439348    mov         dword ptr [ebp-4],eax
 0043934B    xor         eax,eax
 0043934D    push        ebp
 0043934E    push        4394F6
 00439353    push        dword ptr fs:[eax]
 00439356    mov         dword ptr fs:[eax],esp
 00439359    mov         eax,dword ptr [ebp-4]
 0043935C    mov         eax,dword ptr [eax+10]
 0043935F    cmp         dword ptr [eax+8],1
>00439363    jne         0043939C
 00439365    mov         eax,dword ptr [ebp-4]
 00439368    mov         eax,dword ptr [eax+10]
 0043936B    xor         edx,edx
 0043936D    call        004376FC
 00439372    mov         eax,dword ptr [eax+4]
 00439375    mov         edx,dword ptr [eax]
 00439377    call        dword ptr [edx+18]
 0043937A    test        al,al
>0043937C    je          004394E0
 00439382    mov         eax,dword ptr [ebp-4]
 00439385    mov         eax,dword ptr [eax+10]
 00439388    xor         edx,edx
 0043938A    call        004376FC
 0043938F    mov         eax,dword ptr [eax+4]
 00439392    mov         edx,dword ptr [eax]
 00439394    call        dword ptr [edx+1C]
>00439397    jmp         004394E0
 0043939C    mov         eax,dword ptr [ebp-4]
 0043939F    cmp         dword ptr [eax+0C],0
>004393A3    je          0043948E
 004393A9    mov         dl,1
 004393AB    mov         eax,[0041DB24];TStringList
 004393B0    call        TObject.Create;TStringList.Create
 004393B5    mov         dword ptr [ebp-8],eax
 004393B8    xor         eax,eax
 004393BA    push        ebp
 004393BB    push        439487
 004393C0    push        dword ptr fs:[eax]
 004393C3    mov         dword ptr fs:[eax],esp
 004393C6    mov         eax,dword ptr [ebp-4]
 004393C9    mov         eax,dword ptr [eax+10]
 004393CC    mov         eax,dword ptr [eax+8]
 004393CF    dec         eax
 004393D0    test        eax,eax
>004393D2    jl          00439423
 004393D4    inc         eax
 004393D5    mov         dword ptr [ebp-14],eax
 004393D8    mov         dword ptr [ebp-0C],0
 004393DF    mov         eax,dword ptr [ebp-4]
 004393E2    mov         eax,dword ptr [eax+10]
 004393E5    mov         edx,dword ptr [ebp-0C]
 004393E8    call        004376FC
 004393ED    mov         dword ptr [ebp-10],eax
 004393F0    mov         eax,dword ptr [ebp-10]
 004393F3    mov         eax,dword ptr [eax+4]
 004393F6    mov         edx,dword ptr [eax]
 004393F8    call        dword ptr [edx+18]
 004393FB    test        al,al
>004393FD    je          0043941B
 004393FF    lea         edx,[ebp-18]
 00439402    mov         eax,dword ptr [ebp-10]
 00439405    mov         eax,dword ptr [eax+4]
 00439408    mov         ecx,dword ptr [eax]
 0043940A    call        dword ptr [ecx+0C]
 0043940D    mov         edx,dword ptr [ebp-18]
 00439410    mov         ecx,dword ptr [ebp-10]
 00439413    mov         eax,dword ptr [ebp-8]
 00439416    mov         ebx,dword ptr [eax]
 00439418    call        dword ptr [ebx+3C];TStringList.sub_00422C5C
 0043941B    inc         dword ptr [ebp-0C]
 0043941E    dec         dword ptr [ebp-14]
>00439421    jne         004393DF
 00439423    mov         eax,dword ptr [ebp-8]
 00439426    mov         edx,dword ptr [eax]
 00439428    call        dword ptr [edx+14];TStringList.sub_00423008
 0043942B    dec         eax
>0043942C    jle         0043945F
 0043942E    mov         eax,dword ptr [ebp-8]
 00439431    mov         edx,dword ptr [eax]
 00439433    call        dword ptr [edx+90];TStringList.sub_004234B0
 00439439    mov         eax,dword ptr [ebp-4]
 0043943C    mov         eax,dword ptr [eax+0C]
 0043943F    mov         edx,dword ptr [ebp-8]
 00439442    mov         ecx,dword ptr [eax]
 00439444    call        dword ptr [ecx+10]
 00439447    mov         dword ptr [ebp-0C],eax
 0043944A    mov         edx,dword ptr [ebp-0C]
 0043944D    mov         eax,dword ptr [ebp-8]
 00439450    mov         ecx,dword ptr [eax]
 00439452    call        dword ptr [ecx+18];TStringList.sub_00423024
 00439455    mov         eax,dword ptr [eax+4]
 00439458    mov         edx,dword ptr [eax]
 0043945A    call        dword ptr [edx+1C]
>0043945D    jmp         00439471
 0043945F    xor         edx,edx
 00439461    mov         eax,dword ptr [ebp-8]
 00439464    mov         ecx,dword ptr [eax]
 00439466    call        dword ptr [ecx+18];TStringList.sub_00423024
 00439469    mov         eax,dword ptr [eax+4]
 0043946C    mov         edx,dword ptr [eax]
 0043946E    call        dword ptr [edx+1C]
 00439471    xor         eax,eax
 00439473    pop         edx
 00439474    pop         ecx
 00439475    pop         ecx
 00439476    mov         dword ptr fs:[eax],edx
 00439479    push        4394E0
 0043947E    mov         eax,dword ptr [ebp-8]
 00439481    call        TObject.Free
 00439486    ret
>00439487    jmp         @HandleFinally
>0043948C    jmp         0043947E
 0043948E    mov         eax,dword ptr [ebp-4]
 00439491    mov         eax,dword ptr [eax+10]
 00439494    cmp         dword ptr [eax+8],0
>00439498    jle         004394CA
 0043949A    mov         eax,dword ptr [ebp-4]
 0043949D    mov         eax,dword ptr [eax+10]
 004394A0    xor         edx,edx
 004394A2    call        004376FC
 004394A7    mov         eax,dword ptr [eax+4]
 004394AA    mov         edx,dword ptr [eax]
 004394AC    call        dword ptr [edx+18]
 004394AF    test        al,al
>004394B1    je          004394CA
 004394B3    mov         eax,dword ptr [ebp-4]
 004394B6    mov         eax,dword ptr [eax+10]
 004394B9    xor         edx,edx
 004394BB    call        004376FC
 004394C0    mov         eax,dword ptr [eax+4]
 004394C3    mov         edx,dword ptr [eax]
 004394C5    call        dword ptr [edx+1C]
>004394C8    jmp         004394E0
 004394CA    mov         ecx,438F60;^HInstance:LongWord
 004394CF    mov         dl,1
 004394D1    mov         eax,[00438D18];EHelpSystemException
 004394D6    call        Exception.Create;EHelpSystemException.Create
 004394DB    call        @RaiseExcept
 004394E0    xor         eax,eax
 004394E2    pop         edx
 004394E3    pop         ecx
 004394E4    pop         ecx
 004394E5    mov         dword ptr fs:[eax],edx
 004394E8    push        4394FD
 004394ED    lea         eax,[ebp-18]
 004394F0    call        @LStrClr
 004394F5    ret
>004394F6    jmp         @HandleFinally
>004394FB    jmp         004394ED
 004394FD    pop         ebx
 004394FE    mov         esp,ebp
 00439500    pop         ebp
 00439501    ret
end;*}

//00439504
{*function sub_00439504(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00439504    push        ebp
 00439505    mov         ebp,esp
 00439507    add         esp,0FFFFFFE4
 0043950A    push        ebx
 0043950B    xor         ebx,ebx
 0043950D    mov         dword ptr [ebp-1C],ebx
 00439510    mov         dword ptr [ebp-18],ebx
 00439513    mov         dword ptr [ebp-14],ebx
 00439516    mov         dword ptr [ebp-0C],ecx
 00439519    mov         dword ptr [ebp-8],edx
 0043951C    mov         dword ptr [ebp-4],eax
 0043951F    xor         eax,eax
 00439521    push        ebp
 00439522    push        439610
 00439527    push        dword ptr fs:[eax]
 0043952A    mov         dword ptr fs:[eax],esp
 0043952D    mov         byte ptr [ebp-0D],0
 00439531    cmp         dword ptr [ebp-0C],0
>00439535    je          00439545
 00439537    mov         eax,dword ptr [ebp-4]
 0043953A    add         eax,24
 0043953D    mov         edx,dword ptr [ebp-0C]
 00439540    call        @LStrAsg
 00439545    mov         eax,dword ptr [ebp-4]
 00439548    mov         eax,dword ptr [eax+18]
 0043954B    cmp         dword ptr [eax+8],0
>0043954F    jle         004395E7
 00439555    mov         eax,dword ptr [ebp-4]
 00439558    mov         eax,dword ptr [eax+18]
 0043955B    cmp         dword ptr [eax+8],1
>0043955F    jne         004395A5
 00439561    xor         edx,edx
 00439563    mov         eax,dword ptr [ebp-4]
 00439566    mov         eax,dword ptr [eax+18]
 00439569    call        004376FC
 0043956E    mov         edx,dword ptr [eax+4]
 00439571    lea         eax,[ebp-14]
 00439574    call        @IntfCopy
 00439579    mov         ax,word ptr [ebp+0C]
 0043957D    push        eax
 0043957E    mov         eax,dword ptr [ebp+8]
 00439581    push        eax
 00439582    lea         eax,[ebp-18]
 00439585    mov         edx,dword ptr [ebp-14]
 00439588    mov         ecx,439624;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 0043958D    call        @IntfCast
 00439592    mov         eax,dword ptr [ebp-18]
 00439595    mov         ecx,dword ptr [ebp-0C]
 00439598    mov         edx,dword ptr [ebp-8]
 0043959B    mov         ebx,dword ptr [eax]
 0043959D    call        dword ptr [ebx+40]
 004395A0    mov         byte ptr [ebp-0D],al
>004395A3    jmp         004395E7
 004395A5    xor         edx,edx
 004395A7    mov         eax,dword ptr [ebp-4]
 004395AA    mov         eax,dword ptr [eax+18]
 004395AD    call        004376FC
 004395B2    mov         edx,dword ptr [eax+4]
 004395B5    lea         eax,[ebp-14]
 004395B8    call        @IntfCopy
 004395BD    mov         ax,word ptr [ebp+0C]
 004395C1    push        eax
 004395C2    mov         eax,dword ptr [ebp+8]
 004395C5    push        eax
 004395C6    lea         eax,[ebp-1C]
 004395C9    mov         edx,dword ptr [ebp-14]
 004395CC    mov         ecx,439624;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 004395D1    call        @IntfCast
 004395D6    mov         eax,dword ptr [ebp-1C]
 004395D9    mov         ecx,dword ptr [ebp-0C]
 004395DC    mov         edx,dword ptr [ebp-8]
 004395DF    mov         ebx,dword ptr [eax]
 004395E1    call        dword ptr [ebx+40]
 004395E4    mov         byte ptr [ebp-0D],al
 004395E7    xor         eax,eax
 004395E9    pop         edx
 004395EA    pop         ecx
 004395EB    pop         ecx
 004395EC    mov         dword ptr fs:[eax],edx
 004395EF    push        439617
 004395F4    lea         eax,[ebp-1C]
 004395F7    mov         edx,dword ptr ds:[438CA0];ISpecialWinHelpViewer
 004395FD    mov         ecx,2
 00439602    call        @FinalizeArray
 00439607    lea         eax,[ebp-14]
 0043960A    call        @IntfClear
 0043960F    ret
>00439610    jmp         @HandleFinally
>00439615    jmp         004395F4
 00439617    mov         al,byte ptr [ebp-0D]
 0043961A    pop         ebx
 0043961B    mov         esp,ebp
 0043961D    pop         ebp
 0043961E    ret         8
end;*}

//00439634
{*procedure sub_00439634(?:?; ?:?; ?:?);
begin
 00439634    push        ebp
 00439635    mov         ebp,esp
 00439637    add         esp,0FFFFFFB4
 0043963A    push        ebx
 0043963B    xor         ebx,ebx
 0043963D    mov         dword ptr [ebp-4C],ebx
 00439640    mov         dword ptr [ebp-38],ebx
 00439643    mov         dword ptr [ebp-0C],ecx
 00439646    mov         dword ptr [ebp-8],edx
 00439649    mov         dword ptr [ebp-4],eax
 0043964C    xor         eax,eax
 0043964E    push        ebp
 0043964F    push        439888
 00439654    push        dword ptr fs:[eax]
 00439657    mov         dword ptr fs:[eax],esp
 0043965A    xor         eax,eax
 0043965C    mov         dword ptr [ebp-20],eax
 0043965F    xor         eax,eax
 00439661    mov         dword ptr [ebp-1C],eax
 00439664    cmp         dword ptr [ebp-0C],0
>00439668    je          00439678
 0043966A    mov         eax,dword ptr [ebp-4]
 0043966D    add         eax,24
 00439670    mov         edx,dword ptr [ebp-0C]
 00439673    call        @LStrAsg
 00439678    mov         eax,dword ptr [ebp-4]
 0043967B    mov         eax,dword ptr [eax+10]
 0043967E    cmp         dword ptr [eax+8],0
>00439682    jle         0043986A
 00439688    mov         eax,dword ptr [ebp-4]
 0043968B    mov         eax,dword ptr [eax+10]
 0043968E    mov         eax,dword ptr [eax+8]
 00439691    dec         eax
 00439692    test        eax,eax
>00439694    jl          004396D4
 00439696    inc         eax
 00439697    mov         dword ptr [ebp-3C],eax
 0043969A    mov         dword ptr [ebp-10],0
 004396A1    mov         eax,dword ptr [ebp-4]
 004396A4    mov         eax,dword ptr [eax+10]
 004396A7    mov         edx,dword ptr [ebp-10]
 004396AA    call        004376FC
 004396AF    mov         eax,dword ptr [eax+4]
 004396B2    mov         edx,dword ptr [ebp-8]
 004396B5    mov         ecx,dword ptr [eax]
 004396B7    call        dword ptr [ecx+10]
 004396BA    mov         dword ptr [ebp-18],eax
 004396BD    cmp         dword ptr [ebp-18],0
>004396C1    jle         004396CC
 004396C3    mov         eax,dword ptr [ebp-10]
 004396C6    mov         dword ptr [ebp-20],eax
 004396C9    inc         dword ptr [ebp-1C]
 004396CC    inc         dword ptr [ebp-10]
 004396CF    dec         dword ptr [ebp-3C]
>004396D2    jne         004396A1
 004396D4    cmp         dword ptr [ebp-1C],0
>004396D8    jne         00439705
 004396DA    mov         eax,dword ptr [ebp-8]
 004396DD    call        @LStrToPChar
 004396E2    mov         dword ptr [ebp-48],eax
 004396E5    mov         byte ptr [ebp-44],6
 004396E9    lea         eax,[ebp-48]
 004396EC    push        eax
 004396ED    push        0
 004396EF    mov         ecx,438F68;^HInstance:LongWord
 004396F4    mov         dl,1
 004396F6    mov         eax,[00438D18];EHelpSystemException
 004396FB    call        Exception.CreateResFmt;EHelpSystemException.Create
 00439700    call        @RaiseExcept
 00439705    cmp         dword ptr [ebp-1C],1
>00439709    jne         00439724
 0043970B    mov         eax,dword ptr [ebp-4]
 0043970E    mov         eax,dword ptr [eax+10]
 00439711    mov         edx,dword ptr [ebp-20]
 00439714    call        004376FC
 00439719    mov         eax,dword ptr [eax+4]
 0043971C    mov         edx,dword ptr [ebp-8]
 0043971F    mov         ecx,dword ptr [eax]
 00439721    call        dword ptr [ecx+20]
 00439724    cmp         dword ptr [ebp-1C],1
>00439728    jle         0043986A
 0043972E    mov         dl,1
 00439730    mov         eax,[0041DB24];TStringList
 00439735    call        TObject.Create;TStringList.Create
 0043973A    mov         dword ptr [ebp-24],eax
 0043973D    mov         eax,dword ptr [ebp-4]
 00439740    mov         eax,dword ptr [eax+10]
 00439743    mov         eax,dword ptr [eax+8]
 00439746    dec         eax
 00439747    test        eax,eax
>00439749    jl          004397E3
 0043974F    inc         eax
 00439750    mov         dword ptr [ebp-3C],eax
 00439753    mov         dword ptr [ebp-10],0
 0043975A    mov         eax,dword ptr [ebp-4]
 0043975D    mov         eax,dword ptr [eax+10]
 00439760    mov         edx,dword ptr [ebp-10]
 00439763    call        004376FC
 00439768    mov         dword ptr [ebp-2C],eax
 0043976B    mov         eax,dword ptr [ebp-2C]
 0043976E    mov         eax,dword ptr [eax+4]
 00439771    mov         edx,dword ptr [ebp-8]
 00439774    mov         ecx,dword ptr [eax]
 00439776    call        dword ptr [ecx+10]
 00439779    mov         dword ptr [ebp-18],eax
 0043977C    cmp         dword ptr [ebp-18],0
>00439780    jle         004397D7
 00439782    mov         eax,dword ptr [ebp-2C]
 00439785    mov         eax,dword ptr [eax+4]
 00439788    mov         edx,dword ptr [ebp-8]
 0043978B    mov         ecx,dword ptr [eax]
 0043978D    call        dword ptr [ecx+14]
 00439790    mov         dword ptr [ebp-28],eax
 00439793    mov         eax,dword ptr [ebp-28]
 00439796    mov         edx,dword ptr [eax]
 00439798    call        dword ptr [edx+14]
 0043979B    dec         eax
 0043979C    test        eax,eax
>0043979E    jl          004397CF
 004397A0    inc         eax
 004397A1    mov         dword ptr [ebp-40],eax
 004397A4    mov         dword ptr [ebp-14],0
 004397AB    lea         ecx,[ebp-4C]
 004397AE    mov         edx,dword ptr [ebp-14]
 004397B1    mov         eax,dword ptr [ebp-28]
 004397B4    mov         ebx,dword ptr [eax]
 004397B6    call        dword ptr [ebx+0C]
 004397B9    mov         edx,dword ptr [ebp-4C]
 004397BC    mov         ecx,dword ptr [ebp-2C]
 004397BF    mov         eax,dword ptr [ebp-24]
 004397C2    mov         ebx,dword ptr [eax]
 004397C4    call        dword ptr [ebx+3C];TStringList.sub_00422C5C
 004397C7    inc         dword ptr [ebp-14]
 004397CA    dec         dword ptr [ebp-40]
>004397CD    jne         004397AB
 004397CF    mov         eax,dword ptr [ebp-28]
 004397D2    call        TObject.Free
 004397D7    inc         dword ptr [ebp-10]
 004397DA    dec         dword ptr [ebp-3C]
>004397DD    jne         0043975A
 004397E3    mov         eax,dword ptr [ebp-4]
 004397E6    cmp         dword ptr [eax+0C],0
>004397EA    je          0043983A
 004397EC    mov         eax,dword ptr [ebp-24]
 004397EF    mov         edx,dword ptr [eax]
 004397F1    call        dword ptr [edx+90];TStringList.sub_004234B0
 004397F7    mov         eax,dword ptr [ebp-4]
 004397FA    mov         eax,dword ptr [eax+0C]
 004397FD    mov         edx,dword ptr [ebp-24]
 00439800    mov         ecx,dword ptr [eax]
 00439802    call        dword ptr [ecx+0C]
 00439805    mov         dword ptr [ebp-30],eax
 00439808    cmp         dword ptr [ebp-30],0
>0043980C    jl          00439862
 0043980E    mov         edx,dword ptr [ebp-30]
 00439811    mov         eax,dword ptr [ebp-24]
 00439814    mov         ecx,dword ptr [eax]
 00439816    call        dword ptr [ecx+18];TStringList.sub_00423024
 00439819    mov         dword ptr [ebp-34],eax
 0043981C    lea         ecx,[ebp-38]
 0043981F    mov         edx,dword ptr [ebp-30]
 00439822    mov         eax,dword ptr [ebp-24]
 00439825    mov         ebx,dword ptr [eax]
 00439827    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 0043982A    mov         eax,dword ptr [ebp-34]
 0043982D    mov         eax,dword ptr [eax+4]
 00439830    mov         edx,dword ptr [ebp-38]
 00439833    mov         ecx,dword ptr [eax]
 00439835    call        dword ptr [ecx+20]
>00439838    jmp         00439862
 0043983A    xor         edx,edx
 0043983C    mov         eax,dword ptr [ebp-24]
 0043983F    mov         ecx,dword ptr [eax]
 00439841    call        dword ptr [ecx+18];TStringList.sub_00423024
 00439844    mov         dword ptr [ebp-34],eax
 00439847    lea         ecx,[ebp-38]
 0043984A    xor         edx,edx
 0043984C    mov         eax,dword ptr [ebp-24]
 0043984F    mov         ebx,dword ptr [eax]
 00439851    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 00439854    mov         eax,dword ptr [ebp-34]
 00439857    mov         eax,dword ptr [eax+4]
 0043985A    mov         edx,dword ptr [ebp-38]
 0043985D    mov         ecx,dword ptr [eax]
 0043985F    call        dword ptr [ecx+20]
 00439862    mov         eax,dword ptr [ebp-24]
 00439865    call        TObject.Free
 0043986A    xor         eax,eax
 0043986C    pop         edx
 0043986D    pop         ecx
 0043986E    pop         ecx
 0043986F    mov         dword ptr fs:[eax],edx
 00439872    push        43988F
 00439877    lea         eax,[ebp-4C]
 0043987A    call        @LStrClr
 0043987F    lea         eax,[ebp-38]
 00439882    call        @LStrClr
 00439887    ret
>00439888    jmp         @HandleFinally
>0043988D    jmp         00439877
 0043988F    pop         ebx
 00439890    mov         esp,ebp
 00439892    pop         ebp
 00439893    ret
end;*}

//00439894
{*procedure sub_00439894(?:?; ?:?; ?:?);
begin
 00439894    push        ebp
 00439895    mov         ebp,esp
 00439897    add         esp,0FFFFFFE0
 0043989A    push        ebx
 0043989B    xor         ebx,ebx
 0043989D    mov         dword ptr [ebp-20],ebx
 004398A0    mov         dword ptr [ebp-1C],ebx
 004398A3    mov         dword ptr [ebp-14],ebx
 004398A6    mov         dword ptr [ebp-0C],ecx
 004398A9    mov         dword ptr [ebp-8],edx
 004398AC    mov         dword ptr [ebp-4],eax
 004398AF    xor         eax,eax
 004398B1    push        ebp
 004398B2    push        43999A
 004398B7    push        dword ptr fs:[eax]
 004398BA    mov         dword ptr fs:[eax],esp
 004398BD    cmp         dword ptr [ebp-0C],0
>004398C1    je          004398D1
 004398C3    mov         eax,dword ptr [ebp-4]
 004398C6    add         eax,24
 004398C9    mov         edx,dword ptr [ebp-0C]
 004398CC    call        @LStrAsg
 004398D1    mov         eax,dword ptr [ebp-4]
 004398D4    mov         eax,dword ptr [eax+14]
 004398D7    cmp         dword ptr [eax+8],0
>004398DB    jne         004398F5
 004398DD    mov         ecx,438F70;^HInstance:LongWord
 004398E2    mov         dl,1
 004398E4    mov         eax,[00438D18];EHelpSystemException
 004398E9    call        Exception.Create;EHelpSystemException.Create
 004398EE    call        @RaiseExcept
>004398F3    jmp         00439971
 004398F5    mov         eax,dword ptr [ebp-4]
 004398F8    mov         eax,dword ptr [eax+14]
 004398FB    mov         eax,dword ptr [eax+8]
 004398FE    dec         eax
 004398FF    test        eax,eax
>00439901    jl          00439971
 00439903    inc         eax
 00439904    mov         dword ptr [ebp-18],eax
 00439907    mov         dword ptr [ebp-10],0
 0043990E    mov         edx,dword ptr [ebp-10]
 00439911    mov         eax,dword ptr [ebp-4]
 00439914    mov         eax,dword ptr [eax+14]
 00439917    call        004376FC
 0043991C    mov         edx,dword ptr [eax+4]
 0043991F    lea         eax,[ebp-14]
 00439922    call        @IntfCopy
 00439927    lea         eax,[ebp-1C]
 0043992A    mov         edx,dword ptr [ebp-14]
 0043992D    mov         ecx,4399A8;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439932    call        @IntfCast
 00439937    mov         eax,dword ptr [ebp-1C]
 0043993A    mov         ecx,dword ptr [ebp-0C]
 0043993D    mov         edx,dword ptr [ebp-8]
 00439940    mov         ebx,dword ptr [eax]
 00439942    call        dword ptr [ebx+38]
 00439945    test        al,al
>00439947    je          00439969
 00439949    lea         eax,[ebp-20]
 0043994C    mov         edx,dword ptr [ebp-14]
 0043994F    mov         ecx,4399A8;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439954    call        @IntfCast
 00439959    mov         eax,dword ptr [ebp-20]
 0043995C    mov         ecx,dword ptr [ebp-0C]
 0043995F    mov         edx,dword ptr [ebp-8]
 00439962    mov         ebx,dword ptr [eax]
 00439964    call        dword ptr [ebx+3C]
>00439967    jmp         00439971
 00439969    inc         dword ptr [ebp-10]
 0043996C    dec         dword ptr [ebp-18]
>0043996F    jne         0043990E
 00439971    xor         eax,eax
 00439973    pop         edx
 00439974    pop         ecx
 00439975    pop         ecx
 00439976    mov         dword ptr fs:[eax],edx
 00439979    push        4399A1
 0043997E    lea         eax,[ebp-20]
 00439981    mov         edx,dword ptr ds:[438C64];IExtendedHelpViewer
 00439987    mov         ecx,2
 0043998C    call        @FinalizeArray
 00439991    lea         eax,[ebp-14]
 00439994    call        @IntfClear
 00439999    ret
>0043999A    jmp         @HandleFinally
>0043999F    jmp         0043997E
 004399A1    pop         ebx
 004399A2    mov         esp,ebp
 004399A4    pop         ebp
 004399A5    ret
end;*}

//004399B8
{*procedure sub_004399B8(?:?);
begin
 004399B8    push        ebp
 004399B9    mov         ebp,esp
 004399BB    push        ecx
 004399BC    mov         dword ptr [ebp-4],eax
 004399BF    mov         eax,dword ptr [ebp-4]
 004399C2    call        0043933C
 004399C7    pop         ecx
 004399C8    pop         ebp
 004399C9    ret
end;*}

//004399CC
{*procedure sub_004399CC(?:?; ?:?; ?:?);
begin
 004399CC    push        ebp
 004399CD    mov         ebp,esp
 004399CF    add         esp,0FFFFFFE0
 004399D2    push        ebx
 004399D3    xor         ebx,ebx
 004399D5    mov         dword ptr [ebp-20],ebx
 004399D8    mov         dword ptr [ebp-1C],ebx
 004399DB    mov         dword ptr [ebp-14],ebx
 004399DE    mov         dword ptr [ebp-0C],ecx
 004399E1    mov         dword ptr [ebp-8],edx
 004399E4    mov         dword ptr [ebp-4],eax
 004399E7    xor         eax,eax
 004399E9    push        ebp
 004399EA    push        439ACC
 004399EF    push        dword ptr fs:[eax]
 004399F2    mov         dword ptr fs:[eax],esp
 004399F5    cmp         dword ptr [ebp-0C],0
>004399F9    je          00439A09
 004399FB    mov         eax,dword ptr [ebp-4]
 004399FE    add         eax,24
 00439A01    mov         edx,dword ptr [ebp-0C]
 00439A04    call        @LStrAsg
 00439A09    mov         eax,dword ptr [ebp-4]
 00439A0C    mov         eax,dword ptr [eax+14]
 00439A0F    cmp         dword ptr [eax+8],0
>00439A13    jne         00439A2D
 00439A15    mov         ecx,438F78;^HInstance:LongWord
 00439A1A    mov         dl,1
 00439A1C    mov         eax,[00438D18];EHelpSystemException
 00439A21    call        Exception.Create;EHelpSystemException.Create
 00439A26    call        @RaiseExcept
>00439A2B    jmp         00439AA3
 00439A2D    mov         eax,dword ptr [ebp-4]
 00439A30    mov         eax,dword ptr [eax+14]
 00439A33    mov         eax,dword ptr [eax+8]
 00439A36    dec         eax
 00439A37    test        eax,eax
>00439A39    jl          00439AA3
 00439A3B    inc         eax
 00439A3C    mov         dword ptr [ebp-18],eax
 00439A3F    mov         dword ptr [ebp-10],0
 00439A46    mov         edx,dword ptr [ebp-10]
 00439A49    mov         eax,dword ptr [ebp-4]
 00439A4C    mov         eax,dword ptr [eax+14]
 00439A4F    call        004376FC
 00439A54    mov         edx,dword ptr [eax+4]
 00439A57    lea         eax,[ebp-14]
 00439A5A    call        @IntfCopy
 00439A5F    lea         eax,[ebp-1C]
 00439A62    mov         edx,dword ptr [ebp-14]
 00439A65    mov         ecx,439AD8;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439A6A    call        @IntfCast
 00439A6F    mov         eax,dword ptr [ebp-1C]
 00439A72    mov         edx,dword ptr [ebp-8]
 00439A75    mov         ecx,dword ptr [eax]
 00439A77    call        dword ptr [ecx+30]
 00439A7A    test        al,al
>00439A7C    je          00439A9B
 00439A7E    lea         eax,[ebp-20]
 00439A81    mov         edx,dword ptr [ebp-14]
 00439A84    mov         ecx,439AD8;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00439A89    call        @IntfCast
 00439A8E    mov         eax,dword ptr [ebp-20]
 00439A91    mov         edx,dword ptr [ebp-8]
 00439A94    mov         ecx,dword ptr [eax]
 00439A96    call        dword ptr [ecx+34]
>00439A99    jmp         00439AA3
 00439A9B    inc         dword ptr [ebp-10]
 00439A9E    dec         dword ptr [ebp-18]
>00439AA1    jne         00439A46
 00439AA3    xor         eax,eax
 00439AA5    pop         edx
 00439AA6    pop         ecx
 00439AA7    pop         ecx
 00439AA8    mov         dword ptr fs:[eax],edx
 00439AAB    push        439AD3
 00439AB0    lea         eax,[ebp-20]
 00439AB3    mov         edx,dword ptr ds:[438C64];IExtendedHelpViewer
 00439AB9    mov         ecx,2
 00439ABE    call        @FinalizeArray
 00439AC3    lea         eax,[ebp-14]
 00439AC6    call        @IntfClear
 00439ACB    ret
>00439ACC    jmp         @HandleFinally
>00439AD1    jmp         00439AB0
 00439AD3    pop         ebx
 00439AD4    mov         esp,ebp
 00439AD6    pop         ebp
 00439AD7    ret
end;*}

//00439AE8
{*procedure sub_00439AE8(?:?; ?:?);
begin
 00439AE8    push        ebp
 00439AE9    mov         ebp,esp
 00439AEB    add         esp,0FFFFFFF8
 00439AEE    mov         dword ptr [ebp-8],edx
 00439AF1    mov         dword ptr [ebp-4],eax
 00439AF4    mov         eax,dword ptr [ebp-8]
 00439AF7    call        @IntfAddRef
 00439AFC    xor         eax,eax
 00439AFE    push        ebp
 00439AFF    push        439B42
 00439B04    push        dword ptr fs:[eax]
 00439B07    mov         dword ptr fs:[eax],esp
 00439B0A    mov         eax,dword ptr [ebp-4]
 00439B0D    cmp         dword ptr [eax+0C],0
>00439B11    je          00439B1E
 00439B13    mov         eax,dword ptr [ebp-4]
 00439B16    add         eax,0C
 00439B19    call        @IntfClear
 00439B1E    mov         eax,dword ptr [ebp-4]
 00439B21    add         eax,0C
 00439B24    mov         edx,dword ptr [ebp-8]
 00439B27    call        @IntfCopy
 00439B2C    xor         eax,eax
 00439B2E    pop         edx
 00439B2F    pop         ecx
 00439B30    pop         ecx
 00439B31    mov         dword ptr fs:[eax],edx
 00439B34    push        439B49
 00439B39    lea         eax,[ebp-8]
 00439B3C    call        @IntfClear
 00439B41    ret
>00439B42    jmp         @HandleFinally
>00439B47    jmp         00439B39
 00439B49    pop         ecx
 00439B4A    pop         ecx
 00439B4B    pop         ebp
 00439B4C    ret
end;*}

//00439B50
{*function sub_00439B50(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00439B50    push        ebp
 00439B51    mov         ebp,esp
 00439B53    add         esp,0FFFFFFF0
 00439B56    mov         dword ptr [ebp-0C],ecx
 00439B59    mov         dword ptr [ebp-8],edx
 00439B5C    mov         dword ptr [ebp-4],eax
 00439B5F    mov         eax,dword ptr [ebp-0C]
 00439B62    call        @LStrAddRef
 00439B67    xor         eax,eax
 00439B69    push        ebp
 00439B6A    push        439BF3
 00439B6F    push        dword ptr fs:[eax]
 00439B72    mov         dword ptr fs:[eax],esp
 00439B75    cmp         dword ptr [ebp-0C],0
>00439B79    je          00439B89
 00439B7B    mov         eax,dword ptr [ebp-4]
 00439B7E    add         eax,24
 00439B81    mov         edx,dword ptr [ebp-0C]
 00439B84    call        @LStrAsg
 00439B89    mov         ax,word ptr [ebp+0C]
 00439B8D    dec         ax
>00439B90    je          00439B9E
 00439B92    dec         ax
>00439B95    je          00439BAE
 00439B97    dec         ax
>00439B9A    je          00439BB8
>00439B9C    jmp         00439BC2
 00439B9E    mov         ecx,dword ptr [ebp-0C]
 00439BA1    mov         edx,dword ptr [ebp+8]
 00439BA4    mov         eax,dword ptr [ebp-4]
 00439BA7    call        00439894
>00439BAC    jmp         00439BD9
 00439BAE    mov         eax,dword ptr [ebp-4]
 00439BB1    call        004392F8
>00439BB6    jmp         00439BD9
 00439BB8    mov         eax,dword ptr [ebp-4]
 00439BBB    call        0043933C
>00439BC0    jmp         00439BD9
 00439BC2    mov         ax,word ptr [ebp+0C]
 00439BC6    push        eax
 00439BC7    mov         eax,dword ptr [ebp+8]
 00439BCA    push        eax
 00439BCB    mov         ecx,dword ptr [ebp-0C]
 00439BCE    mov         edx,dword ptr [ebp-8]
 00439BD1    mov         eax,dword ptr [ebp-4]
 00439BD4    call        00439504
 00439BD9    mov         byte ptr [ebp-0D],1
 00439BDD    xor         eax,eax
 00439BDF    pop         edx
 00439BE0    pop         ecx
 00439BE1    pop         ecx
 00439BE2    mov         dword ptr fs:[eax],edx
 00439BE5    push        439BFA
 00439BEA    lea         eax,[ebp-0C]
 00439BED    call        @LStrClr
 00439BF2    ret
>00439BF3    jmp         @HandleFinally
>00439BF8    jmp         00439BEA
 00439BFA    mov         al,byte ptr [ebp-0D]
 00439BFD    mov         esp,ebp
 00439BFF    pop         ebp
 00439C00    ret         8
end;*}

//00439C04
{*function sub_00439C04(?:?):?;
begin
 00439C04    push        ebp
 00439C05    mov         ebp,esp
 00439C07    add         esp,0FFFFFFF8
 00439C0A    mov         dword ptr [ebp-4],eax
 00439C0D    mov         eax,dword ptr [ebp-4]
 00439C10    mov         eax,dword ptr [eax+20]
 00439C13    mov         dword ptr [ebp-8],eax
 00439C16    mov         eax,dword ptr [ebp-8]
 00439C19    pop         ecx
 00439C1A    pop         ecx
 00439C1B    pop         ebp
 00439C1C    ret
end;*}

//00439C20
{*procedure sub_00439C20(?:?; ?:?);
begin
 00439C20    push        ebp
 00439C21    mov         ebp,esp
 00439C23    add         esp,0FFFFFFF8
 00439C26    mov         dword ptr [ebp-8],edx
 00439C29    mov         dword ptr [ebp-4],eax
 00439C2C    mov         eax,dword ptr [ebp-8]
 00439C2F    mov         edx,dword ptr [ebp-4]
 00439C32    mov         edx,dword ptr [edx+24]
 00439C35    call        @LStrAsg
 00439C3A    pop         ecx
 00439C3B    pop         ecx
 00439C3C    pop         ebp
 00439C3D    ret
end;*}

//00439C40
{*procedure sub_00439C40(?:?; ?:?);
begin
 00439C40    push        ebp
 00439C41    mov         ebp,esp
 00439C43    add         esp,0FFFFFFF4
 00439C46    mov         dword ptr [ebp-8],edx
 00439C49    mov         dword ptr [ebp-4],eax
 00439C4C    mov         eax,dword ptr [ebp-4]
 00439C4F    mov         eax,dword ptr [eax+10]
 00439C52    mov         eax,dword ptr [eax+8]
 00439C55    dec         eax
 00439C56    cmp         eax,0
>00439C59    jl          00439C8B
 00439C5B    mov         dword ptr [ebp-0C],eax
 00439C5E    mov         edx,dword ptr [ebp-0C]
 00439C61    mov         eax,dword ptr [ebp-4]
 00439C64    mov         eax,dword ptr [eax+10]
 00439C67    call        004376FC
 00439C6C    mov         eax,dword ptr [eax+8]
 00439C6F    cmp         eax,dword ptr [ebp-8]
>00439C72    jne         00439C82
 00439C74    mov         edx,dword ptr [ebp-0C]
 00439C77    mov         eax,dword ptr [ebp-4]
 00439C7A    mov         eax,dword ptr [eax+10]
 00439C7D    call        00420094
 00439C82    dec         dword ptr [ebp-0C]
 00439C85    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00439C89    jne         00439C5E
 00439C8B    mov         eax,dword ptr [ebp-4]
 00439C8E    mov         eax,dword ptr [eax+14]
 00439C91    mov         eax,dword ptr [eax+8]
 00439C94    dec         eax
 00439C95    cmp         eax,0
>00439C98    jl          00439CCA
 00439C9A    mov         dword ptr [ebp-0C],eax
 00439C9D    mov         edx,dword ptr [ebp-0C]
 00439CA0    mov         eax,dword ptr [ebp-4]
 00439CA3    mov         eax,dword ptr [eax+14]
 00439CA6    call        004376FC
 00439CAB    mov         eax,dword ptr [eax+8]
 00439CAE    cmp         eax,dword ptr [ebp-8]
>00439CB1    jne         00439CC1
 00439CB3    mov         edx,dword ptr [ebp-0C]
 00439CB6    mov         eax,dword ptr [ebp-4]
 00439CB9    mov         eax,dword ptr [eax+14]
 00439CBC    call        00420094
 00439CC1    dec         dword ptr [ebp-0C]
 00439CC4    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00439CC8    jne         00439C9D
 00439CCA    mov         eax,dword ptr [ebp-4]
 00439CCD    mov         eax,dword ptr [eax+18]
 00439CD0    mov         eax,dword ptr [eax+8]
 00439CD3    dec         eax
 00439CD4    cmp         eax,0
>00439CD7    jl          00439D09
 00439CD9    mov         dword ptr [ebp-0C],eax
 00439CDC    mov         edx,dword ptr [ebp-0C]
 00439CDF    mov         eax,dword ptr [ebp-4]
 00439CE2    mov         eax,dword ptr [eax+18]
 00439CE5    call        004376FC
 00439CEA    mov         eax,dword ptr [eax+8]
 00439CED    cmp         eax,dword ptr [ebp-8]
>00439CF0    jne         00439D00
 00439CF2    mov         edx,dword ptr [ebp-0C]
 00439CF5    mov         eax,dword ptr [ebp-4]
 00439CF8    mov         eax,dword ptr [eax+18]
 00439CFB    call        00420094
 00439D00    dec         dword ptr [ebp-0C]
 00439D03    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00439D07    jne         00439CDC
 00439D09    mov         esp,ebp
 00439D0B    pop         ebp
 00439D0C    ret
end;*}

Initialization
//00439DC0
{*
 00439DC0    push        ebp
 00439DC1    mov         ebp,esp
 00439DC3    sub         dword ptr ds:[571B64],1
 00439DCA    pop         ebp
 00439DCB    ret
*}
Finalization
//00439D80
{*
 00439D80    push        ebp
 00439D81    mov         ebp,esp
 00439D83    xor         eax,eax
 00439D85    push        ebp
 00439D86    push        439DB7
 00439D8B    push        dword ptr fs:[eax]
 00439D8E    mov         dword ptr fs:[eax],esp
 00439D91    inc         dword ptr ds:[571B64]
>00439D97    jne         00439DA9
 00439D99    cmp         dword ptr ds:[571B68],0;HelpManager:THelpManager
>00439DA0    je          00439DA9
 00439DA2    xor         eax,eax
 00439DA4    mov         [00571B68],eax;HelpManager:THelpManager
 00439DA9    xor         eax,eax
 00439DAB    pop         edx
 00439DAC    pop         ecx
 00439DAD    pop         ecx
 00439DAE    mov         dword ptr fs:[eax],edx
 00439DB1    push        439DBE
 00439DB6    ret
>00439DB7    jmp         @HandleFinally
>00439DBC    jmp         00439DB6
 00439DBE    pop         ebp
 00439DBF    ret
*}
end.