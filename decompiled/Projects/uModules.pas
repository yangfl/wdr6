//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uModules;

interface

uses
  SysUtils, Classes, StdCtrls, ComCtrls, Menus, Controls, ActnList, ExtCtrls;

type
  TfmModules = class(TForm)
  published
    gbModules:TGroupBox;//f2F8
    lvModules:TListView;//f2FC
    pmModules:TPopupMenu;//f300
    RoadMap1:TMenuItem;//f304
    miReadRoadMapById:TMenuItem;//f308
    miLoadRoadMapFile:TMenuItem;//f30C
    miRoadMapViaEnumeration:TMenuItem;//f310
    ImageList1:TImageList;//f314
    ActionList1:TActionList;//f318
    acReadModules:TAction;//f31C
    miBlocks:TMenuItem;//f320
    miRead:TMenuItem;//f324
    miReadSelected:TMenuItem;//f328
    miReadAll:TMenuItem;//f32C
    Select1:TMenuItem;//f330
    miAll:TMenuItem;//f334
    miDump:TMenuItem;//f338
    miUnselect:TMenuItem;//f33C
    miInvertSelected:TMenuItem;//f340
    N1:TMenuItem;//f344
    miWrite:TMenuItem;//f348
    miWriteSelected:TMenuItem;//f34C
    N2:TMenuItem;//f350
    miCheck:TMenuItem;//f354
    miCheckSelected:TMenuItem;//f358
    miCheckAll:TMenuItem;//f35C
    miRoadMapClear:TMenuItem;//f360
    Block1:TMenuItem;//f364
    miRecalcCrc:TMenuItem;//f368
    miZerrosCRC:TMenuItem;//f36C
    miModuleClear:TMenuItem;//f370
    miSelectAllonCurrentHead:TMenuItem;//f374
    miUnselectAllonCurentHead:TMenuItem;//f378
    N3:TMenuItem;//f37C
    N4:TMenuItem;//f380
    miSelectUnreaded:TMenuItem;//f384
    miSelectAllwoSS:TMenuItem;//f388
    miWriteMultiSelected:TMenuItem;//f38C
    N5:TMenuItem;//f390
    miSelect8xxxGroup:TMenuItem;//f394
    Select2xxxGroup1:TMenuItem;//f398
    miWriteAll:TMenuItem;//f39C
    Panel1:TPanel;//f3A0
    cbWoMap:TCheckBox;//f3A4
    cbById:TCheckBox;//f3A8
    cbMapSecondCopy:TCheckBox;//f3AC
    cbAltUba2:TCheckBox;//f3B0
    edOffset:TEdit;//f3B4
    btGetOffset:TButton;//f3B8
    pbModules:TProgressBar;//f3BC
    Panel2:TPanel;//f3C0
    Panel3:TPanel;//f3C4
    gbWoRoadMap:TGroupBox;//f3C8
    edModulId:TLabeledEdit;//f3CC
    btRead:TButton;//f3D0
    btCheckModule:TButton;//f3D4
    btView:TButton;//f3D8
    btWriteModule:TButton;//f3DC
    btInitModule:TButton;//f3E0
    btModuleClear:TButton;//f3E4
    btDelete:TButton;//f3E8
    miCheckAllbyIDII:TMenuItem;//f3EC
    procedure miUnselectAllonCurentHeadClick(Sender:TObject);//00507EE4
    procedure miSelectAllonCurrentHeadClick(Sender:TObject);//00507DA8
    procedure btModuleClearClick(Sender:TObject);//00507CB0
    procedure miSelectAllwoSSClick(Sender:TObject);//0050881C
    //procedure lvModulesCustomDrawItem(?:?; ?:?);//0050851C
    procedure miSelectUnreadedClick(Sender:TObject);//00508020
    procedure miRecalcCrcClick(Sender:TObject);//00507684
    procedure lvModulesDblClick(Sender:TObject);//005071C4
    procedure miRoadMapClearClick(Sender:TObject);//00507090
    //procedure miModuleClearSelectedClick(?:?);//00507A28
    procedure miModuleClearClick(Sender:TObject);//00507920
    procedure miZerrosCRCClick(Sender:TObject);//00507718
    //procedure lvModulesColumnClick(?:?; ?:?);//00508968
    procedure miSelect8xxxGroupClick(Sender:TObject);//0050AB3C
    //procedure miDeleteSelectedClick(?:?);//0050A81C
    //procedure miDeleteModuleClick(?:?);//0050A5FC
    procedure miCheckAllbyIDIIClick(Sender:TObject);//0050AF44
    procedure miWriteAllClick(Sender:TObject);//0050AE5C
    procedure Select2xxxGroup1Click(Sender:TObject);//0050ACCC
    procedure cbAltUba2Click(Sender:TObject);//00509B0C
    procedure miWriteMultiSelectedClick(Sender:TObject);//005091B8
    //procedure lvModulesCompare(?:?; ?:?; ?:?; ?:?);//00508A24
    procedure btDeleteClick(Sender:TObject);//0050A498
    //procedure CheckAllbyIDII1Click(?:?);//0050A240
    procedure btGetOffsetClick(Sender:TObject);//00509B38
    //procedure miInitSelectedClick(?:?);//00506DBC
    procedure miAllClick(Sender:TObject);//005040D4
    procedure miReadSelectedClick(Sender:TObject);//00505CB8
    //procedure acReadModulesExecute(?:?);//00505C78
    procedure miUnselectClick(Sender:TObject);//00504520
    procedure miDumpClick(Sender:TObject);//0050437C
    procedure miLoadRoadMapFileClick(Sender:TObject);//00504160
    procedure cbWoMapClick(Sender:TObject);//005025AC
    procedure btCheckModuleClick(Sender:TObject);//005024D4
    procedure btReadClick(Sender:TObject);//0050246C
    procedure miReadRoadMapByIdClick(Sender:TObject);//00503F64
    procedure btViewClick(Sender:TObject);//00502C34
    procedure miRoadMapViaEnumerationClick(Sender:TObject);//00502BFC
    procedure miInvertSelectedClick(Sender:TObject);//005045AC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//005068F0
    procedure miWriteSelectedClick(Sender:TObject);//005067A0
    procedure miWriteClick(Sender:TObject);//00506758
    //procedure miInitClick(?:?);//00506BE8
    procedure btInitModuleClick(Sender:TObject);//00506B0C
    procedure cbByIdClick(Sender:TObject);//00506960
    procedure miCheckClick(Sender:TObject);//00505FE0
    procedure FormShow(Sender:TObject);//00505ED8
    procedure miReadAllClick(Sender:TObject);//00505DF0
    procedure btWriteModuleClick(Sender:TObject);//005066F0
    procedure miCheckSelectedClick(Sender:TObject);//0050642C
    procedure miCheckAllClick(Sender:TObject);//005061D0
  public
    f3F0:Integer;//f3F0
  end;
    procedure sub_0050121C(?:TfmModules; ?:TForm);//0050121C
    //procedure sub_005012E4(?:?; ?:?);//005012E4
    //procedure sub_0050138C(?:?; ?:?);//0050138C
    //function sub_00501404(?:TMemoryStream):?;//00501404
    //procedure sub_005014D0(?:TMemoryStream; ?:?);//005014D0
    procedure sub_00501620(?:TMemoryStream);//00501620
    procedure sub_0050170C(?:TMemoryStream);//0050170C
    //procedure sub_00501850(?:?; ?:?);//00501850
    //procedure sub_00501900(?:?; ?:?);//00501900
    //function sub_00501ED0(?:?):?;//00501ED0
    //function sub_0050211C(?:?):?;//0050211C
    //function sub_00502410(?:?):?;//00502410
    procedure sub_00502640;//00502640
    procedure sub_00502D58;//00502D58
    procedure sub_00503A8C(?:TMemoryStream);//00503A8C
    //procedure sub_0050465C(?:?);//0050465C
    //procedure sub_0050528C(?:?);//0050528C
    //procedure sub_0050753C(?:?; ?:?);//0050753C
    //procedure sub_005077AC(?:?);//005077AC
    //procedure sub_0050782C(?:TMemoryStream; ?:?);//0050782C
    //procedure sub_005078AC(?:?; ?:?);//005078AC
    procedure sub_005080CC(?:TMemoryStream);//005080CC
    procedure sub_005083D8;//005083D8
    //function sub_00508448(?:?):?;//00508448
    //function sub_00508D14(?:?):?;//00508D14
    //procedure sub_00508DF8(?:?; ?:TMemoryStream);//00508DF8
    //function sub_005095B8(?:TfmFlash; ?:TMemoryStream):?;//005095B8
    //function sub_0050980C(?:?; ?:TMemoryStream):?;//0050980C
    //function sub_00509E08(?:?; ?:?; ?:TMemoryStream):?;//00509E08
    //procedure sub_0050A060(?:?; ?:?);//0050A060

implementation

{$R *.DFM}

//0050121C
procedure sub_0050121C(?:TfmModules; ?:TForm);
begin
{*
 0050121C    push        ebp
 0050121D    mov         ebp,esp
 0050121F    add         esp,0FFFFFFF8
 00501222    mov         dword ptr [ebp-8],edx
 00501225    mov         dword ptr [ebp-4],eax
 00501228    cmp         dword ptr ds:[56D404],0;gvar_0056D404:TfmModules
>0050122F    jne         00501245
 00501231    mov         ecx,dword ptr [ebp-8]
 00501234    mov         dl,1
 00501236    mov         eax,[00500738];TfmModules
 0050123B    call        TfmProgress.Create;TfmModules.Create
 00501240    mov         [0056D404],eax;gvar_0056D404:TfmModules
 00501245    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050124A    cmp         byte ptr [eax+1A6],0;TfmModules.FShowing:Boolean
>00501251    je          00501262
 00501253    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00501258    mov         edx,dword ptr [eax]
 0050125A    call        dword ptr [edx+0C4];TfmModules.sub_004A746C
>00501260    jmp         005012C0
 00501262    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00501267    call        004A7450
 0050126C    mov         eax,[0056E040];^gvar_005720C0
 00501271    cmp         byte ptr [eax],0
>00501274    je          005012C0
 00501276    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050127B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00501281    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 00501287    mov         edx,7
 0050128C    call        00459D44
 00501291    mov         edx,5012CC;'Date'
 00501296    call        TListColumn.SetCaption
 0050129B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005012A0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005012A6    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 005012AC    mov         edx,1
 005012B1    call        00459D44
 005012B6    mov         edx,5012DC;'Copy'
 005012BB    call        TListColumn.SetCaption
 005012C0    pop         ecx
 005012C1    pop         ecx
 005012C2    pop         ebp
 005012C3    ret
*}
end;

//005012E4
{*procedure sub_005012E4(?:?; ?:?);
begin
 005012E4    push        ebp
 005012E5    mov         ebp,esp
 005012E7    add         esp,0FFFFFED0
 005012ED    mov         dword ptr [ebp-8],edx
 005012F0    mov         dword ptr [ebp-4],eax
 005012F3    lea         edx,[ebp-114]
 005012F9    mov         eax,dword ptr [ebp-4]
 005012FC    call        @Str0Long
 00501301    lea         edx,[ebp-114]
 00501307    lea         eax,[ebp-14]
 0050130A    mov         cl,0B
 0050130C    call        @PStrNCpy
 00501311    cmp         byte ptr [ebp-14],2
>00501315    jbe         00501341
 00501317    lea         eax,[ebp-120]
 0050131D    push        eax
 0050131E    xor         edx,edx
 00501320    mov         dl,byte ptr [ebp-14]
 00501323    dec         edx
 00501324    mov         ecx,2
 00501329    lea         eax,[ebp-14]
 0050132C    call        @Copy
 00501331    lea         edx,[ebp-120]
 00501337    lea         eax,[ebp-14]
 0050133A    mov         cl,0B
 0050133C    call        @PStrNCpy
 00501341    cmp         byte ptr [ebp-14],2
>00501345    jae         00501377
 00501347    mov         edx,501388;'0'
 0050134C    lea         eax,[ebp-130]
 00501352    call        @PStrCpy
 00501357    lea         edx,[ebp-14]
 0050135A    lea         eax,[ebp-130]
 00501360    mov         cl,0C
 00501362    call        @PStrNCat
 00501367    lea         edx,[ebp-130]
 0050136D    lea         eax,[ebp-14]
 00501370    mov         cl,0B
 00501372    call        @PStrNCpy
 00501377    mov         eax,dword ptr [ebp-8]
 0050137A    lea         edx,[ebp-14]
 0050137D    call        @LStrFromString
 00501382    mov         esp,ebp
 00501384    pop         ebp
 00501385    ret
end;*}

//0050138C
{*procedure sub_0050138C(?:?; ?:?);
begin
 0050138C    push        ebp
 0050138D    mov         ebp,esp
 0050138F    add         esp,0FFFFFEDC
 00501395    mov         dword ptr [ebp-8],edx
 00501398    mov         dword ptr [ebp-4],eax
 0050139B    lea         edx,[ebp-114]
 005013A1    mov         eax,dword ptr [ebp-4]
 005013A4    call        @Str0Long
 005013A9    lea         edx,[ebp-114]
 005013AF    lea         eax,[ebp-14]
 005013B2    mov         cl,0B
 005013B4    call        @PStrNCpy
>005013B9    jmp         005013EB
 005013BB    mov         edx,501400;'0'
 005013C0    lea         eax,[ebp-124]
 005013C6    call        @PStrCpy
 005013CB    lea         edx,[ebp-14]
 005013CE    lea         eax,[ebp-124]
 005013D4    mov         cl,0C
 005013D6    call        @PStrNCat
 005013DB    lea         edx,[ebp-124]
 005013E1    lea         eax,[ebp-14]
 005013E4    mov         cl,0B
 005013E6    call        @PStrNCpy
 005013EB    cmp         byte ptr [ebp-14],4
>005013EF    jb          005013BB
 005013F1    mov         eax,dword ptr [ebp-8]
 005013F4    lea         edx,[ebp-14]
 005013F7    call        @LStrFromString
 005013FC    mov         esp,ebp
 005013FE    pop         ebp
 005013FF    ret
end;*}

//00501404
{*function sub_00501404(?:TMemoryStream):?;
begin
 00501404    push        ebp
 00501405    mov         ebp,esp
 00501407    add         esp,0FFFFFFE4
 0050140A    push        ebx
 0050140B    mov         dword ptr [ebp-4],eax
 0050140E    mov         eax,dword ptr [ebp-4]
 00501411    mov         edx,dword ptr [eax]
 00501413    call        dword ptr [edx]
 00501415    mov         dword ptr [ebp-10],eax
 00501418    xor         ecx,ecx
 0050141A    xor         edx,edx
 0050141C    mov         eax,dword ptr [ebp-4]
 0050141F    mov         ebx,dword ptr [eax]
 00501421    call        dword ptr [ebx+14]
 00501424    mov         eax,dword ptr [ebp-4]
 00501427    call        004CE56C
 0050142C    mov         dword ptr [ebp-14],eax
 0050142F    cmp         dword ptr [ebp-14],4C594F52
>00501436    jne         00501482
 00501438    xor         ecx,ecx
 0050143A    xor         edx,edx
 0050143C    mov         eax,dword ptr [ebp-4]
 0050143F    mov         ebx,dword ptr [eax]
 00501441    call        dword ptr [ebx+14]
 00501444    xor         eax,eax
 00501446    mov         dword ptr [ebp-0C],eax
 00501449    mov         eax,dword ptr [ebp-10]
 0050144C    shr         eax,2
 0050144F    test        eax,eax
>00501451    jbe         00501470
 00501453    mov         dword ptr [ebp-1C],eax
 00501456    mov         dword ptr [ebp-18],1
 0050145D    mov         eax,dword ptr [ebp-4]
 00501460    call        004CE56C
 00501465    add         dword ptr [ebp-0C],eax
 00501468    inc         dword ptr [ebp-18]
 0050146B    dec         dword ptr [ebp-1C]
>0050146E    jne         0050145D
 00501470    cmp         dword ptr [ebp-0C],0
>00501474    jne         0050147C
 00501476    mov         byte ptr [ebp-5],1
>0050147A    jmp         005014C6
 0050147C    mov         byte ptr [ebp-5],0
>00501480    jmp         005014C6
 00501482    xor         ecx,ecx
 00501484    xor         edx,edx
 00501486    mov         eax,dword ptr [ebp-4]
 00501489    mov         ebx,dword ptr [eax]
 0050148B    call        dword ptr [ebx+14]
 0050148E    mov         byte ptr [ebp-6],0
 00501492    mov         eax,dword ptr [ebp-10]
 00501495    test        eax,eax
>00501497    jbe         005014B6
 00501499    mov         dword ptr [ebp-1C],eax
 0050149C    mov         dword ptr [ebp-18],1
 005014A3    mov         eax,dword ptr [ebp-4]
 005014A6    call        004CE528
 005014AB    add         byte ptr [ebp-6],al
 005014AE    inc         dword ptr [ebp-18]
 005014B1    dec         dword ptr [ebp-1C]
>005014B4    jne         005014A3
 005014B6    cmp         byte ptr [ebp-6],0
>005014BA    jne         005014C2
 005014BC    mov         byte ptr [ebp-5],1
>005014C0    jmp         005014C6
 005014C2    mov         byte ptr [ebp-5],0
 005014C6    mov         al,byte ptr [ebp-5]
 005014C9    pop         ebx
 005014CA    mov         esp,ebp
 005014CC    pop         ebp
 005014CD    ret
end;*}

//005014D0
{*procedure sub_005014D0(?:TMemoryStream; ?:?);
begin
 005014D0    push        ebp
 005014D1    mov         ebp,esp
 005014D3    add         esp,0FFFFFFE4
 005014D6    push        ebx
 005014D7    mov         byte ptr [ebp-5],dl
 005014DA    mov         dword ptr [ebp-4],eax
 005014DD    mov         eax,dword ptr [ebp-4]
 005014E0    mov         edx,dword ptr [eax]
 005014E2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005014E4    mov         dword ptr [ebp-10],eax
 005014E7    xor         ecx,ecx
 005014E9    xor         edx,edx
 005014EB    mov         eax,dword ptr [ebp-4]
 005014EE    mov         ebx,dword ptr [eax]
 005014F0    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005014F3    mov         eax,dword ptr [ebp-4]
 005014F6    call        004CE56C
 005014FB    mov         dword ptr [ebp-14],eax
 005014FE    cmp         dword ptr [ebp-14],4C594F52
>00501505    jne         00501592
 0050150B    xor         ecx,ecx
 0050150D    mov         edx,0C
 00501512    mov         eax,dword ptr [ebp-4]
 00501515    mov         ebx,dword ptr [eax]
 00501517    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050151A    xor         eax,eax
 0050151C    mov         dword ptr [ebp-0C],eax
 0050151F    lea         edx,[ebp-0C]
 00501522    mov         ecx,4
 00501527    mov         eax,dword ptr [ebp-4]
 0050152A    call        TStream.WriteBuffer
 0050152F    xor         ecx,ecx
 00501531    xor         edx,edx
 00501533    mov         eax,dword ptr [ebp-4]
 00501536    mov         ebx,dword ptr [eax]
 00501538    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050153B    mov         eax,dword ptr [ebp-10]
 0050153E    shr         eax,2
 00501541    dec         eax
 00501542    test        eax,eax
>00501544    jl          00501564
 00501546    inc         eax
 00501547    mov         dword ptr [ebp-1C],eax
 0050154A    mov         dword ptr [ebp-18],0
 00501551    mov         eax,dword ptr [ebp-4]
 00501554    call        004CE56C
 00501559    add         dword ptr [ebp-0C],eax
 0050155C    inc         dword ptr [ebp-18]
 0050155F    dec         dword ptr [ebp-1C]
>00501562    jne         00501551
 00501564    xor         ecx,ecx
 00501566    mov         edx,0C
 0050156B    mov         eax,dword ptr [ebp-4]
 0050156E    mov         ebx,dword ptr [eax]
 00501570    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00501573    neg         dword ptr [ebp-0C]
 00501576    cmp         byte ptr [ebp-5],0
>0050157A    je          0050160F
 00501580    lea         edx,[ebp-0C]
 00501583    mov         ecx,4
 00501588    mov         eax,dword ptr [ebp-4]
 0050158B    call        TStream.WriteBuffer
>00501590    jmp         0050160F
 00501592    xor         ecx,ecx
 00501594    mov         edx,3
 00501599    mov         eax,dword ptr [ebp-4]
 0050159C    mov         ebx,dword ptr [eax]
 0050159E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005015A1    mov         byte ptr [ebp-6],0
 005015A5    lea         edx,[ebp-6]
 005015A8    mov         ecx,1
 005015AD    mov         eax,dword ptr [ebp-4]
 005015B0    call        TStream.WriteBuffer
 005015B5    xor         ecx,ecx
 005015B7    xor         edx,edx
 005015B9    mov         eax,dword ptr [ebp-4]
 005015BC    mov         ebx,dword ptr [eax]
 005015BE    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005015C1    mov         eax,dword ptr [ebp-10]
 005015C4    dec         eax
 005015C5    test        eax,eax
>005015C7    jl          005015E7
 005015C9    inc         eax
 005015CA    mov         dword ptr [ebp-1C],eax
 005015CD    mov         dword ptr [ebp-18],0
 005015D4    mov         eax,dword ptr [ebp-4]
 005015D7    call        004CE528
 005015DC    add         byte ptr [ebp-6],al
 005015DF    inc         dword ptr [ebp-18]
 005015E2    dec         dword ptr [ebp-1C]
>005015E5    jne         005015D4
 005015E7    xor         ecx,ecx
 005015E9    mov         edx,3
 005015EE    mov         eax,dword ptr [ebp-4]
 005015F1    mov         ebx,dword ptr [eax]
 005015F3    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005015F6    neg         byte ptr [ebp-6]
 005015F9    cmp         byte ptr [ebp-5],0
>005015FD    je          0050160F
 005015FF    lea         edx,[ebp-6]
 00501602    mov         ecx,1
 00501607    mov         eax,dword ptr [ebp-4]
 0050160A    call        TStream.WriteBuffer
 0050160F    xor         ecx,ecx
 00501611    xor         edx,edx
 00501613    mov         eax,dword ptr [ebp-4]
 00501616    mov         ebx,dword ptr [eax]
 00501618    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050161B    pop         ebx
 0050161C    mov         esp,ebp
 0050161E    pop         ebp
 0050161F    ret
end;*}

//00501620
procedure sub_00501620(?:TMemoryStream);
begin
{*
 00501620    push        ebp
 00501621    mov         ebp,esp
 00501623    add         esp,0FFFFFFE0
 00501626    push        ebx
 00501627    mov         dword ptr [ebp-4],eax
 0050162A    mov         eax,dword ptr [ebp-4]
 0050162D    mov         edx,dword ptr [eax]
 0050162F    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00501631    mov         dword ptr [ebp-10],eax
 00501634    xor         ecx,ecx
 00501636    xor         edx,edx
 00501638    mov         eax,dword ptr [ebp-4]
 0050163B    mov         ebx,dword ptr [eax]
 0050163D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00501640    mov         eax,dword ptr [ebp-4]
 00501643    call        004CE56C
 00501648    mov         dword ptr [ebp-14],eax
 0050164B    cmp         dword ptr [ebp-14],4C594F52
>00501652    jne         005016BB
 00501654    xor         ecx,ecx
 00501656    mov         edx,6
 0050165B    mov         eax,dword ptr [ebp-4]
 0050165E    mov         ebx,dword ptr [eax]
 00501660    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00501663    mov         eax,dword ptr [ebp-4]
 00501666    call        004CE548
 0050166B    mov         word ptr [ebp-16],ax
 0050166F    movzx       edx,word ptr [ebp-16]
 00501673    xor         ecx,ecx
 00501675    mov         eax,dword ptr [ebp-4]
 00501678    mov         ebx,dword ptr [eax]
 0050167A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050167D    xor         eax,eax
 0050167F    mov         dword ptr [ebp-0C],eax
 00501682    mov         eax,dword ptr [ebp-10]
 00501685    shr         eax,2
 00501688    movzx       edx,word ptr [ebp-16]
 0050168C    shr         edx,2
 0050168F    sub         eax,edx
 00501691    dec         eax
 00501692    test        eax,eax
>00501694    jl          00501704
 00501696    inc         eax
 00501697    mov         dword ptr [ebp-20],eax
 0050169A    mov         dword ptr [ebp-1C],0
 005016A1    lea         edx,[ebp-0C]
 005016A4    mov         ecx,4
 005016A9    mov         eax,dword ptr [ebp-4]
 005016AC    call        TStream.WriteBuffer
 005016B1    inc         dword ptr [ebp-1C]
 005016B4    dec         dword ptr [ebp-20]
>005016B7    jne         005016A1
>005016B9    jmp         00501704
 005016BB    mov         word ptr [ebp-16],18
 005016C1    movzx       edx,word ptr [ebp-16]
 005016C5    xor         ecx,ecx
 005016C7    mov         eax,dword ptr [ebp-4]
 005016CA    mov         ebx,dword ptr [eax]
 005016CC    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005016CF    mov         byte ptr [ebp-5],0
 005016D3    movzx       eax,word ptr [ebp-16]
 005016D7    mov         edx,dword ptr [ebp-10]
 005016DA    sub         edx,eax
 005016DC    dec         edx
 005016DD    test        edx,edx
>005016DF    jl          00501704
 005016E1    inc         edx
 005016E2    mov         dword ptr [ebp-20],edx
 005016E5    mov         dword ptr [ebp-1C],0
 005016EC    lea         edx,[ebp-5]
 005016EF    mov         ecx,1
 005016F4    mov         eax,dword ptr [ebp-4]
 005016F7    call        TStream.WriteBuffer
 005016FC    inc         dword ptr [ebp-1C]
 005016FF    dec         dword ptr [ebp-20]
>00501702    jne         005016EC
 00501704    pop         ebx
 00501705    mov         esp,ebp
 00501707    pop         ebp
 00501708    ret
*}
end;

//0050170C
procedure sub_0050170C(?:TMemoryStream);
begin
{*
 0050170C    push        ebp
 0050170D    mov         ebp,esp
 0050170F    add         esp,0FFFFFFE0
 00501712    push        ebx
 00501713    mov         dword ptr [ebp-4],eax
 00501716    mov         eax,dword ptr [ebp-4]
 00501719    mov         edx,dword ptr [eax]
 0050171B    call        dword ptr [edx]
 0050171D    mov         dword ptr [ebp-10],eax
 00501720    xor         ecx,ecx
 00501722    xor         edx,edx
 00501724    mov         eax,dword ptr [ebp-4]
 00501727    mov         ebx,dword ptr [eax]
 00501729    call        dword ptr [ebx+14]
 0050172C    mov         eax,dword ptr [ebp-4]
 0050172F    call        004CE56C
 00501734    mov         dword ptr [ebp-14],eax
 00501737    cmp         dword ptr [ebp-14],4C594F52
>0050173E    jne         005017AE
 00501740    xor         ecx,ecx
 00501742    mov         edx,6
 00501747    mov         eax,dword ptr [ebp-4]
 0050174A    mov         ebx,dword ptr [eax]
 0050174C    call        dword ptr [ebx+14]
 0050174F    mov         eax,dword ptr [ebp-4]
 00501752    call        004CE548
 00501757    mov         word ptr [ebp-18],ax
 0050175B    movzx       edx,word ptr [ebp-18]
 0050175F    xor         ecx,ecx
 00501761    mov         eax,dword ptr [ebp-4]
 00501764    mov         ebx,dword ptr [eax]
 00501766    call        dword ptr [ebx+14]
 00501769    xor         eax,eax
 0050176B    mov         dword ptr [ebp-0C],eax
 0050176E    mov         eax,dword ptr [ebp-10]
 00501771    shr         eax,2
 00501774    movzx       edx,word ptr [ebp-18]
 00501778    shr         edx,2
 0050177B    sub         eax,edx
 0050177D    dec         eax
 0050177E    test        eax,eax
>00501780    jl          00501848
 00501786    inc         eax
 00501787    mov         dword ptr [ebp-20],eax
 0050178A    mov         dword ptr [ebp-1C],0
 00501791    lea         edx,[ebp-0C]
 00501794    mov         ecx,4
 00501799    mov         eax,dword ptr [ebp-4]
 0050179C    call        TStream.WriteBuffer
 005017A1    inc         dword ptr [ebp-1C]
 005017A4    dec         dword ptr [ebp-20]
>005017A7    jne         00501791
>005017A9    jmp         00501848
 005017AE    xor         ecx,ecx
 005017B0    mov         edx,4
 005017B5    mov         eax,dword ptr [ebp-4]
 005017B8    mov         ebx,dword ptr [eax]
 005017BA    call        dword ptr [ebx+14]
 005017BD    mov         eax,dword ptr [ebp-4]
 005017C0    call        004CE528
 005017C5    and         eax,0FF
 005017CA    mov         word ptr [ebp-16],ax
 005017CE    mov         word ptr [ebp-18],18
 005017D4    movzx       edx,word ptr [ebp-18]
 005017D8    xor         ecx,ecx
 005017DA    mov         eax,dword ptr [ebp-4]
 005017DD    mov         ebx,dword ptr [eax]
 005017DF    call        dword ptr [ebx+14]
 005017E2    mov         byte ptr [ebp-5],0
 005017E6    movzx       eax,word ptr [ebp-18]
 005017EA    mov         edx,dword ptr [ebp-10]
 005017ED    sub         edx,eax
 005017EF    dec         edx
 005017F0    test        edx,edx
>005017F2    jl          00501848
 005017F4    inc         edx
 005017F5    mov         dword ptr [ebp-20],edx
 005017F8    mov         dword ptr [ebp-1C],0
 005017FF    mov         ax,word ptr [ebp-16]
 00501803    add         eax,0FFFFFF18
 00501808    sub         ax,7
>0050180C    jb          00501817
 0050180E    add         eax,0FFFFFFFD
 00501811    sub         ax,2
>00501815    jae         0050182B
 00501817    mov         eax,dword ptr [ebp-1C]
 0050181A    sub         eax,10
>0050181D    jae         00501825
 0050181F    mov         byte ptr [ebp-5],0FF
>00501823    jmp         00501830
 00501825    mov         byte ptr [ebp-5],0
>00501829    jmp         00501830
 0050182B    xor         eax,eax
 0050182D    mov         dword ptr [ebp-0C],eax
 00501830    lea         edx,[ebp-5]
 00501833    mov         ecx,1
 00501838    mov         eax,dword ptr [ebp-4]
 0050183B    call        TStream.WriteBuffer
 00501840    inc         dword ptr [ebp-1C]
 00501843    dec         dword ptr [ebp-20]
>00501846    jne         005017FF
 00501848    pop         ebx
 00501849    mov         esp,ebp
 0050184B    pop         ebp
 0050184C    ret
*}
end;

//00501850
{*procedure sub_00501850(?:?; ?:?);
begin
 00501850    push        ebp
 00501851    mov         ebp,esp
 00501853    add         esp,0FFFFFFF8
 00501856    mov         dword ptr [ebp-8],edx
 00501859    mov         byte ptr [ebp-1],al
 0050185C    mov         al,byte ptr [ebp-1]
 0050185F    dec         al
>00501861    je          00501871
 00501863    dec         al
>00501865    je          00501880
 00501867    dec         al
>00501869    je          0050188F
 0050186B    dec         al
>0050186D    je          0050189E
>0050186F    jmp         005018AD
 00501871    mov         eax,dword ptr [ebp-8]
 00501874    mov         edx,5018CC;'Generic'
 00501879    call        @LStrAsg
>0050187E    jmp         005018B5
 00501880    mov         eax,dword ptr [ebp-8]
 00501883    mov         edx,5018DC;'PST'
 00501888    call        @LStrAsg
>0050188D    jmp         005018B5
 0050188F    mov         eax,dword ptr [ebp-8]
 00501892    mov         edx,5018E8;'Overlay'
 00501897    call        @LStrAsg
>0050189C    jmp         005018B5
 0050189E    mov         eax,dword ptr [ebp-8]
 005018A1    mov         edx,5018F8;'Flash'
 005018A6    call        @LStrAsg
>005018AB    jmp         005018B5
 005018AD    mov         eax,dword ptr [ebp-8]
 005018B0    call        @LStrClr
 005018B5    mov         eax,dword ptr [ebp-8]
 005018B8    call        @LStrClr
 005018BD    pop         ecx
 005018BE    pop         ecx
 005018BF    pop         ebp
 005018C0    ret
end;*}

//00501900
{*procedure sub_00501900(?:?; ?:?);
begin
 00501900    push        ebp
 00501901    mov         ebp,esp
 00501903    add         esp,0FFFFFFF0
 00501906    xor         ecx,ecx
 00501908    mov         dword ptr [ebp-0C],ecx
 0050190B    mov         dword ptr [ebp-8],edx
 0050190E    mov         dword ptr [ebp-4],eax
 00501911    xor         eax,eax
 00501913    push        ebp
 00501914    push        501C47
 00501919    push        dword ptr fs:[eax]
 0050191C    mov         dword ptr fs:[eax],esp
 0050191F    mov         eax,dword ptr [ebp-8]
 00501922    call        @LStrClr
 00501927    xor         eax,eax
 00501929    mov         dword ptr [ebp-10],eax
 0050192C    mov         ecx,dword ptr [ebp-10]
 0050192F    mov         eax,1
 00501934    shl         eax,cl
 00501936    and         eax,dword ptr [ebp-4]
 00501939    mov         ecx,dword ptr [ebp-10]
 0050193C    mov         edx,1
 00501941    shl         edx,cl
 00501943    cmp         eax,edx
>00501945    jne         00501C1C
 0050194B    mov         eax,dword ptr [ebp-10]
 0050194E    cmp         eax,1F
>00501951    ja          00501C06
 00501957    jmp         dword ptr [eax*4+50195E]
 00501957    dd          005019DE
 00501957    dd          005019F0
 00501957    dd          00501A02
 00501957    dd          00501A14
 00501957    dd          00501A26
 00501957    dd          00501A38
 00501957    dd          00501A4A
 00501957    dd          00501A5C
 00501957    dd          00501A6E
 00501957    dd          00501A80
 00501957    dd          00501A92
 00501957    dd          00501AA4
 00501957    dd          00501AB6
 00501957    dd          00501AC8
 00501957    dd          00501ADA
 00501957    dd          00501AEC
 00501957    dd          00501AFE
 00501957    dd          00501B10
 00501957    dd          00501B22
 00501957    dd          00501B34
 00501957    dd          00501B46
 00501957    dd          00501B58
 00501957    dd          00501B6A
 00501957    dd          00501B7C
 00501957    dd          00501B8E
 00501957    dd          00501B9D
 00501957    dd          00501BAC
 00501957    dd          00501BBB
 00501957    dd          00501BCA
 00501957    dd          00501BD9
 00501957    dd          00501BE8
 00501957    dd          00501BF7
 005019DE    lea         eax,[ebp-0C]
 005019E1    mov         edx,501C5C;'Region0,'
 005019E6    call        @LStrLAsg
>005019EB    jmp         00501C0E
 005019F0    lea         eax,[ebp-0C]
 005019F3    mov         edx,501C70;'Region1,'
 005019F8    call        @LStrLAsg
>005019FD    jmp         00501C0E
 00501A02    lea         eax,[ebp-0C]
 00501A05    mov         edx,501C84;'Region2,'
 00501A0A    call        @LStrLAsg
>00501A0F    jmp         00501C0E
 00501A14    lea         eax,[ebp-0C]
 00501A17    mov         edx,501C98;'Region3,'
 00501A1C    call        @LStrLAsg
>00501A21    jmp         00501C0E
 00501A26    lea         eax,[ebp-0C]
 00501A29    mov         edx,501CAC;'Region4,'
 00501A2E    call        @LStrLAsg
>00501A33    jmp         00501C0E
 00501A38    lea         eax,[ebp-0C]
 00501A3B    mov         edx,501CC0;'Region5,'
 00501A40    call        @LStrLAsg
>00501A45    jmp         00501C0E
 00501A4A    lea         eax,[ebp-0C]
 00501A4D    mov         edx,501CD4;'Region6,'
 00501A52    call        @LStrLAsg
>00501A57    jmp         00501C0E
 00501A5C    lea         eax,[ebp-0C]
 00501A5F    mov         edx,501CE8;'Region7,'
 00501A64    call        @LStrLAsg
>00501A69    jmp         00501C0E
 00501A6E    lea         eax,[ebp-0C]
 00501A71    mov         edx,501CFC;'InFlash,'
 00501A76    call        @LStrLAsg
>00501A7B    jmp         00501C0E
 00501A80    lea         eax,[ebp-0C]
 00501A83    mov         edx,501D10;'Reserved9,'
 00501A88    call        @LStrLAsg
>00501A8D    jmp         00501C0E
 00501A92    lea         eax,[ebp-0C]
 00501A95    mov         edx,501D24;'ReadOn4ly,'
 00501A9A    call        @LStrLAsg
>00501A9F    jmp         00501C0E
 00501AA4    lea         eax,[ebp-0C]
 00501AA7    mov         edx,501D38;'Chksum,'
 00501AAC    call        @LStrLAsg
>00501AB1    jmp         00501C0E
 00501AB6    lea         eax,[ebp-0C]
 00501AB9    mov         edx,501D48;'Header,'
 00501ABE    call        @LStrLAsg
>00501AC3    jmp         00501C0E
 00501AC8    lea         eax,[ebp-0C]
 00501ACB    mov         edx,501D58;'PlaceHolder,'
 00501AD0    call        @LStrLAsg
>00501AD5    jmp         00501C0E
 00501ADA    lea         eax,[ebp-0C]
 00501ADD    mov         edx,501D70;'StaticFile,'
 00501AE2    call        @LStrLAsg
>00501AE7    jmp         00501C0E
 00501AEC    lea         eax,[ebp-0C]
 00501AEF    mov         edx,501D84;'PTM,'
 00501AF4    call        @LStrLAsg
>00501AF9    jmp         00501C0E
 00501AFE    lea         eax,[ebp-0C]
 00501B01    mov         edx,501D94;'SuperPTM,'
 00501B06    call        @LStrLAsg
>00501B0B    jmp         00501C0E
 00501B10    lea         eax,[ebp-0C]
 00501B13    mov         edx,501DA8;'Transient,'
 00501B18    call        @LStrLAsg
>00501B1D    jmp         00501C0E
 00501B22    lea         eax,[ebp-0C]
 00501B25    mov         edx,501DBC;'FileCreate,'
 00501B2A    call        @LStrLAsg
>00501B2F    jmp         00501C0E
 00501B34    lea         eax,[ebp-0C]
 00501B37    mov         edx,501DD0;'Preserved,'
 00501B3C    call        @LStrLAsg
>00501B41    jmp         00501C0E
 00501B46    lea         eax,[ebp-0C]
 00501B49    mov         edx,501DE4;'FieldCode,'
 00501B4E    call        @LStrLAsg
>00501B53    jmp         00501C0E
 00501B58    lea         eax,[ebp-0C]
 00501B5B    mov         edx,501DF8;'LastAvailSpace,'
 00501B60    call        @LStrLAsg
>00501B65    jmp         00501C0E
 00501B6A    lea         eax,[ebp-0C]
 00501B6D    mov         edx,501E10;'Reserved22,'
 00501B72    call        @LStrLAsg
>00501B77    jmp         00501C0E
 00501B7C    lea         eax,[ebp-0C]
 00501B7F    mov         edx,501E24;'Reserved23,'
 00501B84    call        @LStrLAsg
>00501B89    jmp         00501C0E
 00501B8E    lea         eax,[ebp-0C]
 00501B91    mov         edx,501E38;'Reserved24,'
 00501B96    call        @LStrLAsg
>00501B9B    jmp         00501C0E
 00501B9D    lea         eax,[ebp-0C]
 00501BA0    mov         edx,501E4C;'Reserved25,'
 00501BA5    call        @LStrLAsg
>00501BAA    jmp         00501C0E
 00501BAC    lea         eax,[ebp-0C]
 00501BAF    mov         edx,501E60;'Reserved26,'
 00501BB4    call        @LStrLAsg
>00501BB9    jmp         00501C0E
 00501BBB    lea         eax,[ebp-0C]
 00501BBE    mov         edx,501E74;'Reserved27,'
 00501BC3    call        @LStrLAsg
>00501BC8    jmp         00501C0E
 00501BCA    lea         eax,[ebp-0C]
 00501BCD    mov         edx,501E88;'Reserved28,'
 00501BD2    call        @LStrLAsg
>00501BD7    jmp         00501C0E
 00501BD9    lea         eax,[ebp-0C]
 00501BDC    mov         edx,501E9C;'Reserved29,'
 00501BE1    call        @LStrLAsg
>00501BE6    jmp         00501C0E
 00501BE8    lea         eax,[ebp-0C]
 00501BEB    mov         edx,501EB0;'Reserved30,'
 00501BF0    call        @LStrLAsg
>00501BF5    jmp         00501C0E
 00501BF7    lea         eax,[ebp-0C]
 00501BFA    mov         edx,501EC4;'Reserved31,'
 00501BFF    call        @LStrLAsg
>00501C04    jmp         00501C0E
 00501C06    lea         eax,[ebp-0C]
 00501C09    call        @LStrClr
 00501C0E    mov         eax,dword ptr [ebp-8]
 00501C11    mov         edx,dword ptr [ebp-0C]
 00501C14    call        @LStrCat
 00501C19    mov         eax,dword ptr [ebp-8]
 00501C1C    inc         dword ptr [ebp-10]
 00501C1F    cmp         dword ptr [ebp-10],20
>00501C23    jne         0050192C
 00501C29    mov         eax,dword ptr [ebp-8]
 00501C2C    call        @LStrClr
 00501C31    xor         eax,eax
 00501C33    pop         edx
 00501C34    pop         ecx
 00501C35    pop         ecx
 00501C36    mov         dword ptr fs:[eax],edx
 00501C39    push        501C4E
 00501C3E    lea         eax,[ebp-0C]
 00501C41    call        @LStrClr
 00501C46    ret
>00501C47    jmp         @HandleFinally
>00501C4C    jmp         00501C3E
 00501C4E    mov         esp,ebp
 00501C50    pop         ebp
 00501C51    ret
end;*}

//00501ED0
{*function sub_00501ED0(?:?):?;
begin
 00501ED0    push        ebp
 00501ED1    mov         ebp,esp
 00501ED3    mov         ecx,4
 00501ED8    push        0
 00501EDA    push        0
 00501EDC    dec         ecx
>00501EDD    jne         00501ED8
 00501EDF    push        ecx
 00501EE0    mov         word ptr [ebp-2],ax
 00501EE4    xor         eax,eax
 00501EE6    push        ebp
 00501EE7    push        5020AF
 00501EEC    push        dword ptr fs:[eax]
 00501EEF    mov         dword ptr fs:[eax],esp
 00501EF2    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00501EF8    mov         edx,dword ptr [edx]
 00501EFA    lea         eax,[ebp-10]
 00501EFD    mov         ecx,5020C8;'Modules'
 00501F02    call        @LStrCat3
 00501F07    mov         eax,dword ptr [ebp-10]
 00501F0A    call        0040C9A4
 00501F0F    test        al,al
>00501F11    jne         00501F45
 00501F13    push        5020D8;'Cannot create '
 00501F18    mov         eax,[0056E2D0];^gvar_0056DF38
 00501F1D    push        dword ptr [eax]
 00501F1F    push        5020C8;'Modules'
 00501F24    lea         eax,[ebp-14]
 00501F27    mov         edx,3
 00501F2C    call        @LStrCatN
 00501F31    mov         ecx,dword ptr [ebp-14]
 00501F34    mov         dl,1
 00501F36    mov         eax,[0040B004];Exception
 00501F3B    call        Exception.Create;Exception.Create
 00501F40    call        @RaiseExcept
 00501F45    mov         dl,1
 00501F47    mov         eax,[0041DE14];TMemoryStream
 00501F4C    call        TObject.Create;TMemoryStream.Create
 00501F51    mov         dword ptr [ebp-8],eax
 00501F54    mov         eax,[0056E5A4];^gvar_0056DF04
 00501F59    mov         byte ptr [eax],0
 00501F5C    xor         eax,eax
 00501F5E    push        ebp
 00501F5F    push        50208D
 00501F64    push        dword ptr fs:[eax]
 00501F67    mov         dword ptr fs:[eax],esp
 00501F6A    mov         edx,dword ptr [ebp-8]
 00501F6D    mov         ax,word ptr [ebp-2]
 00501F71    call        004CF5C8
 00501F76    mov         byte ptr [ebp-3],al
 00501F79    cmp         byte ptr [ebp-3],0
>00501F7D    je          00501FFC
 00501F7F    mov         eax,[0056E040];^gvar_005720C0
 00501F84    cmp         byte ptr [eax],0
>00501F87    je          00501FBD
 00501F89    mov         eax,[0056E2D0];^gvar_0056DF38
 00501F8E    push        dword ptr [eax]
 00501F90    push        5020F0;'Modules\   '
 00501F95    lea         ecx,[ebp-18]
 00501F98    movzx       eax,word ptr [ebp-2]
 00501F9C    mov         edx,4
 00501FA1    call        IntToHex
 00501FA6    push        dword ptr [ebp-18]
 00501FA9    push        502104;'.rpm'
 00501FAE    lea         eax,[ebp-0C]
 00501FB1    mov         edx,4
 00501FB6    call        @LStrCatN
>00501FBB    jmp         00501FEF
 00501FBD    mov         eax,[0056E2D0];^gvar_0056DF38
 00501FC2    push        dword ptr [eax]
 00501FC4    push        5020F0;'Modules\   '
 00501FC9    lea         ecx,[ebp-1C]
 00501FCC    movzx       eax,word ptr [ebp-2]
 00501FD0    mov         edx,2
 00501FD5    call        IntToHex
 00501FDA    push        dword ptr [ebp-1C]
 00501FDD    push        502104;'.rpm'
 00501FE2    lea         eax,[ebp-0C]
 00501FE5    mov         edx,4
 00501FEA    call        @LStrCatN
 00501FEF    mov         edx,dword ptr [ebp-0C]
 00501FF2    mov         eax,dword ptr [ebp-8]
 00501FF5    call        00423E84
>00501FFA    jmp         00502077
 00501FFC    mov         eax,[0056E040];^gvar_005720C0
 00502001    cmp         byte ptr [eax],0
>00502004    je          0050203A
 00502006    mov         eax,[0056E2D0];^gvar_0056DF38
 0050200B    push        dword ptr [eax]
 0050200D    push        5020F0;'Modules\   '
 00502012    lea         ecx,[ebp-20]
 00502015    movzx       eax,word ptr [ebp-2]
 00502019    mov         edx,4
 0050201E    call        IntToHex
 00502023    push        dword ptr [ebp-20]
 00502026    push        502114;'.bad'
 0050202B    lea         eax,[ebp-0C]
 0050202E    mov         edx,4
 00502033    call        @LStrCatN
>00502038    jmp         0050206C
 0050203A    mov         eax,[0056E2D0];^gvar_0056DF38
 0050203F    push        dword ptr [eax]
 00502041    push        5020F0;'Modules\   '
 00502046    lea         ecx,[ebp-24]
 00502049    movzx       eax,word ptr [ebp-2]
 0050204D    mov         edx,2
 00502052    call        IntToHex
 00502057    push        dword ptr [ebp-24]
 0050205A    push        502114;'.bad'
 0050205F    lea         eax,[ebp-0C]
 00502062    mov         edx,4
 00502067    call        @LStrCatN
 0050206C    mov         edx,dword ptr [ebp-0C]
 0050206F    mov         eax,dword ptr [ebp-8]
 00502072    call        00423E84
 00502077    xor         eax,eax
 00502079    pop         edx
 0050207A    pop         ecx
 0050207B    pop         ecx
 0050207C    mov         dword ptr fs:[eax],edx
 0050207F    push        502094
 00502084    mov         eax,dword ptr [ebp-8]
 00502087    call        TObject.Free
 0050208C    ret
>0050208D    jmp         @HandleFinally
>00502092    jmp         00502084
 00502094    xor         eax,eax
 00502096    pop         edx
 00502097    pop         ecx
 00502098    pop         ecx
 00502099    mov         dword ptr fs:[eax],edx
 0050209C    push        5020B6
 005020A1    lea         eax,[ebp-24]
 005020A4    mov         edx,7
 005020A9    call        @LStrArrayClr
 005020AE    ret
>005020AF    jmp         @HandleFinally
>005020B4    jmp         005020A1
 005020B6    mov         al,byte ptr [ebp-3]
 005020B9    mov         esp,ebp
 005020BB    pop         ebp
 005020BC    ret
end;*}

//0050211C
{*function sub_0050211C(?:?):?;
begin
 0050211C    push        ebp
 0050211D    mov         ebp,esp
 0050211F    mov         ecx,5
 00502124    push        0
 00502126    push        0
 00502128    dec         ecx
>00502129    jne         00502124
 0050212B    push        ecx
 0050212C    mov         word ptr [ebp-2],ax
 00502130    xor         eax,eax
 00502132    push        ebp
 00502133    push        50238C
 00502138    push        dword ptr fs:[eax]
 0050213B    mov         dword ptr fs:[eax],esp
 0050213E    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00502144    mov         edx,dword ptr [edx]
 00502146    lea         eax,[ebp-10]
 00502149    mov         ecx,5023A4;'Modules'
 0050214E    call        @LStrCat3
 00502153    mov         eax,dword ptr [ebp-10]
 00502156    call        0040C9A4
 0050215B    test        al,al
>0050215D    jne         00502191
 0050215F    push        5023B4;'Cannot create '
 00502164    mov         eax,[0056E2D0];^gvar_0056DF38
 00502169    push        dword ptr [eax]
 0050216B    push        5023A4;'Modules'
 00502170    lea         eax,[ebp-14]
 00502173    mov         edx,3
 00502178    call        @LStrCatN
 0050217D    mov         ecx,dword ptr [ebp-14]
 00502180    mov         dl,1
 00502182    mov         eax,[0040B004];Exception
 00502187    call        Exception.Create;Exception.Create
 0050218C    call        @RaiseExcept
 00502191    mov         dl,1
 00502193    mov         eax,[0041DE14];TMemoryStream
 00502198    call        TObject.Create;TMemoryStream.Create
 0050219D    mov         dword ptr [ebp-8],eax
 005021A0    mov         eax,[0056E5A4];^gvar_0056DF04
 005021A5    mov         byte ptr [eax],0
 005021A8    mov         byte ptr [ebp-3],0
 005021AC    xor         eax,eax
 005021AE    push        ebp
 005021AF    push        502355
 005021B4    push        dword ptr fs:[eax]
 005021B7    mov         dword ptr fs:[eax],esp
 005021BA    mov         eax,[0056E040];^gvar_005720C0
 005021BF    cmp         byte ptr [eax],0
>005021C2    je          005021F8
 005021C4    mov         eax,[0056E2D0];^gvar_0056DF38
 005021C9    push        dword ptr [eax]
 005021CB    push        5023CC;'Modules\   '
 005021D0    lea         ecx,[ebp-18]
 005021D3    movzx       eax,word ptr [ebp-2]
 005021D7    mov         edx,4
 005021DC    call        IntToHex
 005021E1    push        dword ptr [ebp-18]
 005021E4    push        5023E0;'.rpm'
 005021E9    lea         eax,[ebp-0C]
 005021EC    mov         edx,4
 005021F1    call        @LStrCatN
>005021F6    jmp         0050222A
 005021F8    mov         eax,[0056E2D0];^gvar_0056DF38
 005021FD    push        dword ptr [eax]
 005021FF    push        5023CC;'Modules\   '
 00502204    lea         ecx,[ebp-1C]
 00502207    movzx       eax,word ptr [ebp-2]
 0050220B    mov         edx,2
 00502210    call        IntToHex
 00502215    push        dword ptr [ebp-1C]
 00502218    push        5023E0;'.rpm'
 0050221D    lea         eax,[ebp-0C]
 00502220    mov         edx,4
 00502225    call        @LStrCatN
 0050222A    push        10
 0050222C    call        user32.GetKeyState
 00502231    test        ax,ax
>00502234    jge         005022EC
 0050223A    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00502240    mov         edx,dword ptr [edx]
 00502242    lea         eax,[ebp-20]
 00502245    mov         ecx,5023F0;'Modules\'
 0050224A    call        @LStrCat3
 0050224F    mov         edx,dword ptr [ebp-20]
 00502252    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502257    mov         eax,dword ptr [eax]
 00502259    mov         eax,dword ptr [eax+35C]
 0050225F    call        TOpenDialog.SetInitialDir
 00502264    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502269    mov         eax,dword ptr [eax]
 0050226B    mov         eax,dword ptr [eax+35C]
 00502271    add         eax,78
 00502274    mov         edx,dword ptr [ebp-0C]
 00502277    call        @LStrAsg
 0050227C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502281    mov         eax,dword ptr [eax]
 00502283    mov         eax,dword ptr [eax+35C]
 00502289    mov         edx,dword ptr [eax]
 0050228B    call        dword ptr [edx+3C]
 0050228E    test        al,al
>00502290    je          0050233F
 00502296    lea         edx,[ebp-24]
 00502299    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050229E    mov         eax,dword ptr [eax]
 005022A0    mov         eax,dword ptr [eax+35C]
 005022A6    call        TOpenDialog.GetFileName
 005022AB    mov         eax,dword ptr [ebp-24]
 005022AE    call        0040C94C
 005022B3    test        al,al
>005022B5    je          0050233F
 005022BB    lea         edx,[ebp-28]
 005022BE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005022C3    mov         eax,dword ptr [eax]
 005022C5    mov         eax,dword ptr [eax+35C]
 005022CB    call        TOpenDialog.GetFileName
 005022D0    mov         edx,dword ptr [ebp-28]
 005022D3    mov         eax,dword ptr [ebp-8]
 005022D6    call        00423F8C
 005022DB    mov         edx,dword ptr [ebp-8]
 005022DE    mov         ax,word ptr [ebp-2]
 005022E2    call        004CF728
 005022E7    mov         byte ptr [ebp-3],al
>005022EA    jmp         0050233F
 005022EC    mov         eax,dword ptr [ebp-0C]
 005022EF    call        0040C94C
 005022F4    test        al,al
>005022F6    je          00502314
 005022F8    mov         edx,dword ptr [ebp-0C]
 005022FB    mov         eax,dword ptr [ebp-8]
 005022FE    call        00423F8C
 00502303    mov         edx,dword ptr [ebp-8]
 00502306    mov         ax,word ptr [ebp-2]
 0050230A    call        004CF728
 0050230F    mov         byte ptr [ebp-3],al
>00502312    jmp         0050233F
 00502314    lea         eax,[ebp-2C]
 00502317    mov         ecx,dword ptr [ebp-0C]
 0050231A    mov         edx,502404;'No File :'
 0050231F    call        @LStrCat3
 00502324    mov         edx,dword ptr [ebp-2C]
 00502327    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050232C    mov         eax,dword ptr [eax]
 0050232E    mov         eax,dword ptr [eax+2F8]
 00502334    mov         eax,dword ptr [eax+248]
 0050233A    mov         ecx,dword ptr [eax]
 0050233C    call        dword ptr [ecx+38]
 0050233F    xor         eax,eax
 00502341    pop         edx
 00502342    pop         ecx
 00502343    pop         ecx
 00502344    mov         dword ptr fs:[eax],edx
 00502347    push        50235C
 0050234C    mov         eax,dword ptr [ebp-8]
 0050234F    call        TObject.Free
 00502354    ret
>00502355    jmp         @HandleFinally
>0050235A    jmp         0050234C
 0050235C    xor         eax,eax
 0050235E    pop         edx
 0050235F    pop         ecx
 00502360    pop         ecx
 00502361    mov         dword ptr fs:[eax],edx
 00502364    push        502393
 00502369    lea         eax,[ebp-2C]
 0050236C    call        @LStrClr
 00502371    lea         eax,[ebp-28]
 00502374    mov         edx,2
 00502379    call        @LStrArrayClr
 0050237E    lea         eax,[ebp-20]
 00502381    mov         edx,6
 00502386    call        @LStrArrayClr
 0050238B    ret
>0050238C    jmp         @HandleFinally
>00502391    jmp         00502369
 00502393    mov         al,byte ptr [ebp-3]
 00502396    mov         esp,ebp
 00502398    pop         ebp
 00502399    ret
end;*}

//00502410
{*function sub_00502410(?:?):?;
begin
 00502410    push        ebp
 00502411    mov         ebp,esp
 00502413    add         esp,0FFFFFFF4
 00502416    mov         word ptr [ebp-2],ax
 0050241A    xor         eax,eax
 0050241C    mov         dword ptr [ebp-0C],eax
>0050241F    jmp         00502424
 00502421    inc         dword ptr [ebp-0C]
 00502424    mov         eax,dword ptr [ebp-0C]
 00502427    add         eax,eax
 00502429    mov         ax,word ptr [eax*8+57266C]
 00502431    cmp         ax,word ptr [ebp-2]
>00502435    je          00502442
 00502437    mov         eax,dword ptr [ebp-0C]
 0050243A    cmp         eax,dword ptr ds:[56D408];0x0 gvar_0056D408
>00502440    jl          00502421
 00502442    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00502449    jle         0050245E
 0050244B    mov         eax,dword ptr [ebp-0C]
 0050244E    cmp         eax,dword ptr ds:[56D408];0x0 gvar_0056D408
>00502454    jge         0050245E
 00502456    mov         eax,dword ptr [ebp-0C]
 00502459    mov         dword ptr [ebp-8],eax
>0050245C    jmp         00502465
 0050245E    mov         dword ptr [ebp-8],0FFFFFFFF
 00502465    mov         eax,dword ptr [ebp-8]
 00502468    mov         esp,ebp
 0050246A    pop         ebp
 0050246B    ret
end;*}

//0050246C
procedure TfmModules.btReadClick(Sender:TObject);
begin
{*
 0050246C    push        ebp
 0050246D    mov         ebp,esp
 0050246F    add         esp,0FFFFFFF0
 00502472    xor         ecx,ecx
 00502474    mov         dword ptr [ebp-10],ecx
 00502477    mov         dword ptr [ebp-0C],edx
 0050247A    mov         dword ptr [ebp-4],eax
 0050247D    xor         eax,eax
 0050247F    push        ebp
 00502480    push        5024C9
 00502485    push        dword ptr fs:[eax]
 00502488    mov         dword ptr fs:[eax],esp
 0050248B    lea         edx,[ebp-10]
 0050248E    mov         eax,dword ptr [ebp-4]
 00502491    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00502497    call        TPanel.GetCaption
 0050249C    mov         eax,dword ptr [ebp-10]
 0050249F    xor         edx,edx
 005024A1    call        0040C4A8
 005024A6    mov         word ptr [ebp-6],ax
 005024AA    mov         ax,word ptr [ebp-6]
 005024AE    call        00501ED0
 005024B3    xor         eax,eax
 005024B5    pop         edx
 005024B6    pop         ecx
 005024B7    pop         ecx
 005024B8    mov         dword ptr fs:[eax],edx
 005024BB    push        5024D0
 005024C0    lea         eax,[ebp-10]
 005024C3    call        @LStrClr
 005024C8    ret
>005024C9    jmp         @HandleFinally
>005024CE    jmp         005024C0
 005024D0    mov         esp,ebp
 005024D2    pop         ebp
 005024D3    ret
*}
end;

//005024D4
procedure TfmModules.btCheckModuleClick(Sender:TObject);
begin
{*
 005024D4    push        ebp
 005024D5    mov         ebp,esp
 005024D7    xor         ecx,ecx
 005024D9    push        ecx
 005024DA    push        ecx
 005024DB    push        ecx
 005024DC    push        ecx
 005024DD    push        ecx
 005024DE    push        ecx
 005024DF    push        ecx
 005024E0    mov         dword ptr [ebp-0C],edx
 005024E3    mov         dword ptr [ebp-4],eax
 005024E6    xor         eax,eax
 005024E8    push        ebp
 005024E9    push        502594
 005024EE    push        dword ptr fs:[eax]
 005024F1    mov         dword ptr fs:[eax],esp
 005024F4    lea         edx,[ebp-10]
 005024F7    mov         eax,dword ptr [ebp-4]
 005024FA    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00502500    call        TPanel.GetCaption
 00502505    mov         eax,dword ptr [ebp-10]
 00502508    xor         edx,edx
 0050250A    call        0040C4A8
 0050250F    mov         word ptr [ebp-6],ax
 00502513    mov         ax,word ptr [ebp-6]
 00502517    call        004CF874
 0050251C    lea         ecx,[ebp-18]
 0050251F    movzx       eax,word ptr [ebp-6]
 00502523    mov         edx,4
 00502528    call        IntToHex
 0050252D    push        dword ptr [ebp-18]
 00502530    push        5025A8;' - '
 00502535    lea         edx,[ebp-1C]
 00502538    mov         eax,[0056E270];^gvar_00571EC0
 0050253D    mov         ax,word ptr [eax+18]
 00502541    call        004CCABC
 00502546    push        dword ptr [ebp-1C]
 00502549    lea         eax,[ebp-14]
 0050254C    mov         edx,3
 00502551    call        @LStrCatN
 00502556    mov         edx,dword ptr [ebp-14]
 00502559    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050255E    mov         eax,dword ptr [eax]
 00502560    mov         eax,dword ptr [eax+2F8]
 00502566    mov         eax,dword ptr [eax+248]
 0050256C    mov         ecx,dword ptr [eax]
 0050256E    call        dword ptr [ecx+38]
 00502571    xor         eax,eax
 00502573    pop         edx
 00502574    pop         ecx
 00502575    pop         ecx
 00502576    mov         dword ptr fs:[eax],edx
 00502579    push        50259B
 0050257E    lea         eax,[ebp-1C]
 00502581    mov         edx,3
 00502586    call        @LStrArrayClr
 0050258B    lea         eax,[ebp-10]
 0050258E    call        @LStrClr
 00502593    ret
>00502594    jmp         @HandleFinally
>00502599    jmp         0050257E
 0050259B    mov         esp,ebp
 0050259D    pop         ebp
 0050259E    ret
*}
end;

//005025AC
procedure TfmModules.cbWoMapClick(Sender:TObject);
begin
{*
 005025AC    push        ebp
 005025AD    mov         ebp,esp
 005025AF    add         esp,0FFFFFFF8
 005025B2    mov         dword ptr [ebp-8],edx
 005025B5    mov         dword ptr [ebp-4],eax
 005025B8    mov         eax,dword ptr [ebp-4]
 005025BB    mov         eax,dword ptr [eax+3A4];TfmModules.cbWoMap:TCheckBox
 005025C1    mov         edx,dword ptr [eax]
 005025C3    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005025C9    test        al,al
>005025CB    je          00502619
 005025CD    xor         edx,edx
 005025CF    mov         eax,dword ptr [ebp-4]
 005025D2    mov         eax,dword ptr [eax+2F8];TfmModules.gbModules:TGroupBox
 005025D8    call        TImage.SetVisible
 005025DD    mov         dl,1
 005025DF    mov         eax,dword ptr [ebp-4]
 005025E2    mov         eax,dword ptr [eax+3C8];TfmModules.gbWoRoadMap:TGroupBox
 005025E8    call        TImage.SetVisible
 005025ED    xor         edx,edx
 005025EF    mov         eax,dword ptr [ebp-4]
 005025F2    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 005025F8    call        TImage.SetVisible
 005025FD    mov         dl,1
 005025FF    mov         eax,dword ptr [ebp-4]
 00502602    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00502608    mov         ecx,dword ptr [eax]
 0050260A    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 00502610    mov         byte ptr ds:[56D40C],1;gvar_0056D40C:Boolean
>00502617    jmp         00502639
 00502619    mov         dl,1
 0050261B    mov         eax,dword ptr [ebp-4]
 0050261E    mov         eax,dword ptr [eax+2F8];TfmModules.gbModules:TGroupBox
 00502624    call        TImage.SetVisible
 00502629    xor         edx,edx
 0050262B    mov         eax,dword ptr [ebp-4]
 0050262E    mov         eax,dword ptr [eax+3C8];TfmModules.gbWoRoadMap:TGroupBox
 00502634    call        TImage.SetVisible
 00502639    pop         ecx
 0050263A    pop         ecx
 0050263B    pop         ebp
 0050263C    ret
*}
end;

//00502640
procedure sub_00502640;
begin
{*
 00502640    push        ebp
 00502641    mov         ebp,esp
 00502643    mov         ecx,0A
 00502648    push        0
 0050264A    push        0
 0050264C    dec         ecx
>0050264D    jne         00502648
 0050264F    push        ecx
 00502650    push        ebx
 00502651    xor         eax,eax
 00502653    push        ebp
 00502654    push        502BC1
 00502659    push        dword ptr fs:[eax]
 0050265C    mov         dword ptr fs:[eax],esp
 0050265F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502664    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050266A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00502670    call        TListItems.Clear
 00502675    mov         eax,[0056E5A4];^gvar_0056DF04
 0050267A    mov         byte ptr [eax],0
 0050267D    xor         eax,eax
 0050267F    mov         [0056D408],eax;gvar_0056D408
 00502684    lea         edx,[ebp-20]
 00502687    xor         eax,eax
 00502689    call        00403214
 0050268E    mov         eax,dword ptr [ebp-20]
 00502691    lea         edx,[ebp-1C]
 00502694    call        0040CC5C
 00502699    lea         eax,[ebp-1C]
 0050269C    mov         edx,502BD8;'wdm.ini'
 005026A1    call        @LStrCat
 005026A6    mov         ecx,dword ptr [ebp-1C]
 005026A9    mov         dl,1
 005026AB    mov         eax,[004497F8];TIniFile
 005026B0    call        TIniFile.Create;TIniFile.Create
 005026B5    mov         dword ptr [ebp-10],eax
 005026B8    xor         eax,eax
 005026BA    push        ebp
 005026BB    push        502B9F
 005026C0    push        dword ptr fs:[eax]
 005026C3    mov         dword ptr fs:[eax],esp
 005026C6    mov         eax,[0056E040];^gvar_005720C0
 005026CB    cmp         byte ptr [eax],0
>005026CE    je          005026D8
 005026D0    mov         word ptr [ebp-0A],4000
>005026D6    jmp         005026DE
 005026D8    mov         word ptr [ebp-0A],100
 005026DE    xor         eax,eax
 005026E0    mov         dword ptr [ebp-8],eax
 005026E3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005026E8    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005026EE    xor         edx,edx
 005026F0    call        TProgressBar.SetMin
 005026F5    movzx       edx,word ptr [ebp-0A]
 005026F9    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005026FE    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502704    call        TProgressBar.SetMax
 00502709    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050270E    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502714    mov         edx,dword ptr [ebp-8]
 00502717    call        TProgressBar.SetMin
>0050271C    jmp         00502910
 00502721    mov         ax,word ptr [ebp-8]
 00502725    call        004CF874
 0050272A    mov         eax,[0056E270];^gvar_00571EC0
 0050272F    cmp         word ptr [eax+18],3701
>00502735    je          005028FA
 0050273B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502740    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00502746    mov         dword ptr [ebp-14],eax
 00502749    mov         eax,dword ptr [ebp-14]
 0050274C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00502752    call        0045AE78
 00502757    mov         dword ptr [ebp-4],eax
 0050275A    mov         eax,[0056E040];^gvar_005720C0
 0050275F    cmp         byte ptr [eax],0
>00502762    je          00502781
 00502764    lea         ecx,[ebp-24]
 00502767    mov         edx,4
 0050276C    mov         eax,dword ptr [ebp-8]
 0050276F    call        IntToHex
 00502774    mov         edx,dword ptr [ebp-24]
 00502777    mov         eax,dword ptr [ebp-4]
 0050277A    call        0045A750
>0050277F    jmp         0050279C
 00502781    lea         ecx,[ebp-28]
 00502784    mov         edx,2
 00502789    mov         eax,dword ptr [ebp-8]
 0050278C    call        IntToHex
 00502791    mov         edx,dword ptr [ebp-28]
 00502794    mov         eax,dword ptr [ebp-4]
 00502797    call        0045A750
 0050279C    xor         ecx,ecx
 0050279E    xor         edx,edx
 005027A0    mov         eax,dword ptr [ebp-4]
 005027A3    call        0045A98C
 005027A8    mov         eax,dword ptr [ebp-4]
 005027AB    mov         eax,dword ptr [eax+8]
 005027AE    xor         edx,edx
 005027B0    mov         ecx,dword ptr [eax]
 005027B2    call        dword ptr [ecx+38]
 005027B5    mov         eax,dword ptr [ebp-4]
 005027B8    mov         eax,dword ptr [eax+8]
 005027BB    xor         edx,edx
 005027BD    mov         ecx,dword ptr [eax]
 005027BF    call        dword ptr [ecx+38]
 005027C2    mov         eax,dword ptr [ebp-4]
 005027C5    mov         eax,dword ptr [eax+8]
 005027C8    xor         edx,edx
 005027CA    mov         ecx,dword ptr [eax]
 005027CC    call        dword ptr [ecx+38]
 005027CF    mov         eax,dword ptr [ebp-4]
 005027D2    mov         eax,dword ptr [eax+8]
 005027D5    xor         edx,edx
 005027D7    mov         ecx,dword ptr [eax]
 005027D9    call        dword ptr [ecx+38]
 005027DC    mov         eax,dword ptr [ebp-4]
 005027DF    mov         eax,dword ptr [eax+8]
 005027E2    xor         edx,edx
 005027E4    mov         ecx,dword ptr [eax]
 005027E6    call        dword ptr [ecx+38]
 005027E9    mov         eax,dword ptr [ebp-4]
 005027EC    mov         eax,dword ptr [eax+8]
 005027EF    xor         edx,edx
 005027F1    mov         ecx,dword ptr [eax]
 005027F3    call        dword ptr [ecx+38]
 005027F6    mov         eax,dword ptr [ebp-4]
 005027F9    mov         eax,dword ptr [eax+8]
 005027FC    xor         edx,edx
 005027FE    mov         ecx,dword ptr [eax]
 00502800    call        dword ptr [ecx+38]
 00502803    cmp         dword ptr [ebp-8],0FF
>0050280A    jle         00502851
 0050280C    push        0
 0050280E    lea         eax,[ebp-2C]
 00502811    push        eax
 00502812    lea         ecx,[ebp-34]
 00502815    mov         edx,4
 0050281A    mov         eax,dword ptr [ebp-8]
 0050281D    call        IntToHex
 00502822    mov         ecx,dword ptr [ebp-34]
 00502825    lea         eax,[ebp-30]
 00502828    mov         edx,502BE8;'ID'
 0050282D    call        @LStrCat3
 00502832    mov         ecx,dword ptr [ebp-30]
 00502835    mov         edx,502BF4;'BLOCKS'
 0050283A    mov         eax,dword ptr [ebp-10]
 0050283D    mov         ebx,dword ptr [eax]
 0050283F    call        dword ptr [ebx];TIniFile.sub_0044A254
 00502841    mov         edx,dword ptr [ebp-2C]
 00502844    mov         eax,dword ptr [ebp-4]
 00502847    mov         eax,dword ptr [eax+8]
 0050284A    mov         ecx,dword ptr [eax]
 0050284C    call        dword ptr [ecx+38]
>0050284F    jmp         00502894
 00502851    push        0
 00502853    lea         eax,[ebp-38]
 00502856    push        eax
 00502857    lea         ecx,[ebp-40]
 0050285A    mov         edx,2
 0050285F    mov         eax,dword ptr [ebp-8]
 00502862    call        IntToHex
 00502867    mov         ecx,dword ptr [ebp-40]
 0050286A    lea         eax,[ebp-3C]
 0050286D    mov         edx,502BE8;'ID'
 00502872    call        @LStrCat3
 00502877    mov         ecx,dword ptr [ebp-3C]
 0050287A    mov         edx,502BF4;'BLOCKS'
 0050287F    mov         eax,dword ptr [ebp-10]
 00502882    mov         ebx,dword ptr [eax]
 00502884    call        dword ptr [ebx];TIniFile.sub_0044A254
 00502886    mov         edx,dword ptr [ebp-38]
 00502889    mov         eax,dword ptr [ebp-4]
 0050288C    mov         eax,dword ptr [eax+8]
 0050288F    mov         ecx,dword ptr [eax]
 00502891    call        dword ptr [ecx+38]
 00502894    mov         eax,dword ptr [ebp-14]
 00502897    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050289D    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 005028A3    call        0045AF80
 005028A8    xor         edx,edx
 005028AA    call        0045A63C
 005028AF    mov         eax,[0056D408];0x0 gvar_0056D408
 005028B4    add         eax,eax
 005028B6    mov         dx,word ptr [ebp-8]
 005028BA    mov         word ptr [eax*8+57266C],dx
 005028C2    mov         eax,[0056D408];0x0 gvar_0056D408
 005028C7    add         eax,eax
 005028C9    mov         word ptr [eax*8+57266E],0
 005028D3    mov         eax,[0056D408];0x0 gvar_0056D408
 005028D8    add         eax,eax
 005028DA    xor         edx,edx
 005028DC    mov         dword ptr [eax*8+572670],edx
 005028E3    mov         eax,[0056D408];0x0 gvar_0056D408
 005028E8    add         eax,eax
 005028EA    mov         word ptr [eax*8+572674],0
 005028F4    inc         dword ptr ds:[56D408];gvar_0056D408
 005028FA    inc         dword ptr [ebp-8]
 005028FD    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502902    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502908    mov         edx,dword ptr [ebp-8]
 0050290B    call        TProgressBar.SetPosition
 00502910    movzx       eax,word ptr [ebp-0A]
 00502914    cmp         eax,dword ptr [ebp-8]
>00502917    jl          00502927
 00502919    mov         eax,[0056E5A4];^gvar_0056DF04
 0050291E    cmp         byte ptr [eax],0
>00502921    je          00502721
 00502927    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050292C    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502932    call        TProgressBar.GetMin
 00502937    mov         edx,eax
 00502939    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050293E    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502944    call        TProgressBar.SetPosition
 00502949    mov         eax,[0056E040];^gvar_005720C0
 0050294E    cmp         byte ptr [eax],0
>00502951    je          00502B67
 00502957    mov         dword ptr [ebp-8],8000
 0050295E    mov         word ptr [ebp-0A],9000
 00502964    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502969    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050296F    xor         edx,edx
 00502971    call        TProgressBar.SetMin
 00502976    movzx       edx,word ptr [ebp-0A]
 0050297A    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050297F    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502985    call        TProgressBar.SetMax
 0050298A    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050298F    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502995    mov         edx,dword ptr [ebp-8]
 00502998    call        TProgressBar.SetMin
>0050299D    jmp         00502B50
 005029A2    mov         ax,word ptr [ebp-8]
 005029A6    call        004CF874
 005029AB    mov         eax,[0056E270];^gvar_00571EC0
 005029B0    cmp         word ptr [eax+18],3701
>005029B6    je          00502B3A
 005029BC    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005029C1    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005029C7    mov         dword ptr [ebp-18],eax
 005029CA    mov         eax,dword ptr [ebp-18]
 005029CD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005029D3    call        0045AE78
 005029D8    mov         dword ptr [ebp-4],eax
 005029DB    mov         eax,[0056E040];^gvar_005720C0
 005029E0    cmp         byte ptr [eax],0
>005029E3    je          00502A02
 005029E5    lea         ecx,[ebp-44]
 005029E8    mov         edx,4
 005029ED    mov         eax,dword ptr [ebp-8]
 005029F0    call        IntToHex
 005029F5    mov         edx,dword ptr [ebp-44]
 005029F8    mov         eax,dword ptr [ebp-4]
 005029FB    call        0045A750
>00502A00    jmp         00502A1D
 00502A02    lea         ecx,[ebp-48]
 00502A05    mov         edx,2
 00502A0A    mov         eax,dword ptr [ebp-8]
 00502A0D    call        IntToHex
 00502A12    mov         edx,dword ptr [ebp-48]
 00502A15    mov         eax,dword ptr [ebp-4]
 00502A18    call        0045A750
 00502A1D    xor         ecx,ecx
 00502A1F    xor         edx,edx
 00502A21    mov         eax,dword ptr [ebp-4]
 00502A24    call        0045A98C
 00502A29    mov         eax,dword ptr [ebp-4]
 00502A2C    mov         eax,dword ptr [eax+8]
 00502A2F    xor         edx,edx
 00502A31    mov         ecx,dword ptr [eax]
 00502A33    call        dword ptr [ecx+38]
 00502A36    mov         eax,dword ptr [ebp-4]
 00502A39    mov         eax,dword ptr [eax+8]
 00502A3C    xor         edx,edx
 00502A3E    mov         ecx,dword ptr [eax]
 00502A40    call        dword ptr [ecx+38]
 00502A43    mov         eax,dword ptr [ebp-4]
 00502A46    mov         eax,dword ptr [eax+8]
 00502A49    xor         edx,edx
 00502A4B    mov         ecx,dword ptr [eax]
 00502A4D    call        dword ptr [ecx+38]
 00502A50    mov         eax,dword ptr [ebp-4]
 00502A53    mov         eax,dword ptr [eax+8]
 00502A56    xor         edx,edx
 00502A58    mov         ecx,dword ptr [eax]
 00502A5A    call        dword ptr [ecx+38]
 00502A5D    mov         eax,dword ptr [ebp-4]
 00502A60    mov         eax,dword ptr [eax+8]
 00502A63    xor         edx,edx
 00502A65    mov         ecx,dword ptr [eax]
 00502A67    call        dword ptr [ecx+38]
 00502A6A    mov         eax,dword ptr [ebp-4]
 00502A6D    mov         eax,dword ptr [eax+8]
 00502A70    xor         edx,edx
 00502A72    mov         ecx,dword ptr [eax]
 00502A74    call        dword ptr [ecx+38]
 00502A77    mov         eax,dword ptr [ebp-4]
 00502A7A    mov         eax,dword ptr [eax+8]
 00502A7D    xor         edx,edx
 00502A7F    mov         ecx,dword ptr [eax]
 00502A81    call        dword ptr [ecx+38]
 00502A84    mov         eax,dword ptr [ebp-4]
 00502A87    mov         eax,dword ptr [eax+8]
 00502A8A    xor         edx,edx
 00502A8C    mov         ecx,dword ptr [eax]
 00502A8E    call        dword ptr [ecx+38]
 00502A91    push        0
 00502A93    lea         eax,[ebp-4C]
 00502A96    push        eax
 00502A97    lea         ecx,[ebp-54]
 00502A9A    mov         edx,4
 00502A9F    mov         eax,dword ptr [ebp-8]
 00502AA2    call        IntToHex
 00502AA7    mov         ecx,dword ptr [ebp-54]
 00502AAA    lea         eax,[ebp-50]
 00502AAD    mov         edx,502BE8;'ID'
 00502AB2    call        @LStrCat3
 00502AB7    mov         ecx,dword ptr [ebp-50]
 00502ABA    mov         edx,502BF4;'BLOCKS'
 00502ABF    mov         eax,dword ptr [ebp-10]
 00502AC2    mov         ebx,dword ptr [eax]
 00502AC4    call        dword ptr [ebx];TIniFile.sub_0044A254
 00502AC6    mov         edx,dword ptr [ebp-4C]
 00502AC9    mov         eax,dword ptr [ebp-4]
 00502ACC    mov         eax,dword ptr [eax+8]
 00502ACF    mov         ecx,dword ptr [eax]
 00502AD1    call        dword ptr [ecx+38]
 00502AD4    mov         eax,dword ptr [ebp-18]
 00502AD7    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00502ADD    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00502AE3    call        0045AF80
 00502AE8    xor         edx,edx
 00502AEA    call        0045A63C
 00502AEF    mov         eax,[0056D408];0x0 gvar_0056D408
 00502AF4    add         eax,eax
 00502AF6    mov         dx,word ptr [ebp-8]
 00502AFA    mov         word ptr [eax*8+57266C],dx
 00502B02    mov         eax,[0056D408];0x0 gvar_0056D408
 00502B07    add         eax,eax
 00502B09    mov         word ptr [eax*8+57266E],0
 00502B13    mov         eax,[0056D408];0x0 gvar_0056D408
 00502B18    add         eax,eax
 00502B1A    xor         edx,edx
 00502B1C    mov         dword ptr [eax*8+572670],edx
 00502B23    mov         eax,[0056D408];0x0 gvar_0056D408
 00502B28    add         eax,eax
 00502B2A    mov         word ptr [eax*8+572674],0
 00502B34    inc         dword ptr ds:[56D408];gvar_0056D408
 00502B3A    inc         dword ptr [ebp-8]
 00502B3D    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502B42    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502B48    mov         edx,dword ptr [ebp-8]
 00502B4B    call        TProgressBar.SetPosition
 00502B50    movzx       eax,word ptr [ebp-0A]
 00502B54    cmp         eax,dword ptr [ebp-8]
>00502B57    jl          00502B67
 00502B59    mov         eax,[0056E5A4];^gvar_0056DF04
 00502B5E    cmp         byte ptr [eax],0
>00502B61    je          005029A2
 00502B67    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502B6C    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502B72    call        TProgressBar.GetMin
 00502B77    mov         edx,eax
 00502B79    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502B7E    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00502B84    call        TProgressBar.SetPosition
 00502B89    xor         eax,eax
 00502B8B    pop         edx
 00502B8C    pop         ecx
 00502B8D    pop         ecx
 00502B8E    mov         dword ptr fs:[eax],edx
 00502B91    push        502BA6
 00502B96    mov         eax,dword ptr [ebp-10]
 00502B99    call        TObject.Free
 00502B9E    ret
>00502B9F    jmp         @HandleFinally
>00502BA4    jmp         00502B96
 00502BA6    xor         eax,eax
 00502BA8    pop         edx
 00502BA9    pop         ecx
 00502BAA    pop         ecx
 00502BAB    mov         dword ptr fs:[eax],edx
 00502BAE    push        502BC8
 00502BB3    lea         eax,[ebp-54]
 00502BB6    mov         edx,0F
 00502BBB    call        @LStrArrayClr
 00502BC0    ret
>00502BC1    jmp         @HandleFinally
>00502BC6    jmp         00502BB3
 00502BC8    pop         ebx
 00502BC9    mov         esp,ebp
 00502BCB    pop         ebp
 00502BCC    ret
*}
end;

//00502BFC
procedure TfmModules.miRoadMapViaEnumerationClick(Sender:TObject);
begin
{*
 00502BFC    push        ebp
 00502BFD    mov         ebp,esp
 00502BFF    add         esp,0FFFFFFF8
 00502C02    mov         dword ptr [ebp-8],edx
 00502C05    mov         dword ptr [ebp-4],eax
 00502C08    mov         dl,1
 00502C0A    mov         eax,dword ptr [ebp-4]
 00502C0D    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00502C13    mov         ecx,dword ptr [eax]
 00502C15    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 00502C1B    xor         edx,edx
 00502C1D    mov         eax,dword ptr [ebp-4]
 00502C20    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00502C26    call        TImage.SetVisible
 00502C2B    call        00502640
 00502C30    pop         ecx
 00502C31    pop         ecx
 00502C32    pop         ebp
 00502C33    ret
*}
end;

//00502C34
procedure TfmModules.btViewClick(Sender:TObject);
begin
{*
 00502C34    push        ebp
 00502C35    mov         ebp,esp
 00502C37    xor         ecx,ecx
 00502C39    push        ecx
 00502C3A    push        ecx
 00502C3B    push        ecx
 00502C3C    push        ecx
 00502C3D    push        ecx
 00502C3E    push        ecx
 00502C3F    push        ecx
 00502C40    mov         dword ptr [ebp-10],edx
 00502C43    mov         dword ptr [ebp-4],eax
 00502C46    xor         eax,eax
 00502C48    push        ebp
 00502C49    push        502D27
 00502C4E    push        dword ptr fs:[eax]
 00502C51    mov         dword ptr fs:[eax],esp
 00502C54    lea         edx,[ebp-14]
 00502C57    mov         eax,dword ptr [ebp-4]
 00502C5A    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00502C60    call        TPanel.GetCaption
 00502C65    mov         eax,dword ptr [ebp-14]
 00502C68    xor         edx,edx
 00502C6A    call        0040C4A8
 00502C6F    mov         word ptr [ebp-6],ax
 00502C73    mov         eax,[0056E040];^gvar_005720C0
 00502C78    cmp         byte ptr [eax],0
>00502C7B    je          00502CB1
 00502C7D    mov         eax,[0056E2D0];^gvar_0056DF38
 00502C82    push        dword ptr [eax]
 00502C84    push        502D3C;'Modules\   '
 00502C89    lea         ecx,[ebp-18]
 00502C8C    movzx       eax,word ptr [ebp-6]
 00502C90    mov         edx,4
 00502C95    call        IntToHex
 00502C9A    push        dword ptr [ebp-18]
 00502C9D    push        502D50;'.rpm'
 00502CA2    lea         eax,[ebp-0C]
 00502CA5    mov         edx,4
 00502CAA    call        @LStrCatN
>00502CAF    jmp         00502CE3
 00502CB1    mov         eax,[0056E2D0];^gvar_0056DF38
 00502CB6    push        dword ptr [eax]
 00502CB8    push        502D3C;'Modules\   '
 00502CBD    lea         ecx,[ebp-1C]
 00502CC0    movzx       eax,word ptr [ebp-6]
 00502CC4    mov         edx,2
 00502CC9    call        IntToHex
 00502CCE    push        dword ptr [ebp-1C]
 00502CD1    push        502D50;'.rpm'
 00502CD6    lea         eax,[ebp-0C]
 00502CD9    mov         edx,4
 00502CDE    call        @LStrCatN
 00502CE3    mov         eax,dword ptr [ebp-0C]
 00502CE6    call        0040C94C
 00502CEB    test        al,al
>00502CED    je          00502CFC
 00502CEF    mov         edx,dword ptr [ebp-0C]
 00502CF2    mov         eax,[004F3EB8];TfmViewer
 00502CF7    call        004F4640
 00502CFC    xor         eax,eax
 00502CFE    pop         edx
 00502CFF    pop         ecx
 00502D00    pop         ecx
 00502D01    mov         dword ptr fs:[eax],edx
 00502D04    push        502D2E
 00502D09    lea         eax,[ebp-1C]
 00502D0C    mov         edx,2
 00502D11    call        @LStrArrayClr
 00502D16    lea         eax,[ebp-14]
 00502D19    call        @LStrClr
 00502D1E    lea         eax,[ebp-0C]
 00502D21    call        @LStrClr
 00502D26    ret
>00502D27    jmp         @HandleFinally
>00502D2C    jmp         00502D09
 00502D2E    mov         esp,ebp
 00502D30    pop         ebp
 00502D31    ret
*}
end;

//00502D58
procedure sub_00502D58;
begin
{*
 00502D58    push        ebp
 00502D59    mov         ebp,esp
 00502D5B    mov         ecx,20
 00502D60    push        0
 00502D62    push        0
 00502D64    dec         ecx
>00502D65    jne         00502D60
 00502D67    push        ecx
 00502D68    push        ebx
 00502D69    xor         eax,eax
 00502D6B    push        ebp
 00502D6C    push        50395E
 00502D71    push        dword ptr fs:[eax]
 00502D74    mov         dword ptr fs:[eax],esp
 00502D77    mov         eax,[0056E5A4];^gvar_0056DF04
 00502D7C    mov         byte ptr [eax],0
 00502D7F    lea         edx,[ebp-28]
 00502D82    xor         eax,eax
 00502D84    call        00403214
 00502D89    mov         eax,dword ptr [ebp-28]
 00502D8C    lea         edx,[ebp-24]
 00502D8F    call        0040CC5C
 00502D94    lea         eax,[ebp-24]
 00502D97    mov         edx,503974;'wdm.ini'
 00502D9C    call        @LStrCat
 00502DA1    mov         ecx,dword ptr [ebp-24]
 00502DA4    mov         dl,1
 00502DA6    mov         eax,[004497F8];TIniFile
 00502DAB    call        TIniFile.Create;TIniFile.Create
 00502DB0    mov         dword ptr [ebp-0C],eax
 00502DB3    xor         eax,eax
 00502DB5    push        ebp
 00502DB6    push        503902
 00502DBB    push        dword ptr fs:[eax]
 00502DBE    mov         dword ptr fs:[eax],esp
 00502DC1    push        11
 00502DC3    call        user32.GetKeyState
 00502DC8    test        ax,ax
>00502DCB    jge         00502E29
 00502DCD    push        503984;'Modules Amount: '
 00502DD2    lea         ecx,[ebp-30]
 00502DD5    mov         edx,4
 00502DDA    mov         eax,[0056D408];0x0 gvar_0056D408
 00502DDF    call        IntToHex
 00502DE4    push        dword ptr [ebp-30]
 00502DE7    push        5039A0;' ('
 00502DEC    lea         edx,[ebp-34]
 00502DEF    mov         eax,[0056D408];0x0 gvar_0056D408
 00502DF4    call        IntToStr
 00502DF9    push        dword ptr [ebp-34]
 00502DFC    push        5039AC;')'
 00502E01    lea         eax,[ebp-2C]
 00502E04    mov         edx,5
 00502E09    call        @LStrCatN
 00502E0E    mov         edx,dword ptr [ebp-2C]
 00502E11    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502E16    mov         eax,dword ptr [eax]
 00502E18    mov         eax,dword ptr [eax+2F8]
 00502E1E    mov         eax,dword ptr [eax+248]
 00502E24    mov         ecx,dword ptr [eax]
 00502E26    call        dword ptr [ecx+38]
 00502E29    mov         eax,[0056E344];^gvar_0059BF5C
 00502E2E    cmp         word ptr [eax],4F52
>00502E33    jne         00502EB1
 00502E35    mov         eax,[0056E344];^gvar_0059BF5C
 00502E3A    cmp         word ptr [eax+2],4C59
>00502E40    jne         00502EB1
 00502E42    mov         eax,[0056E344];^gvar_0059BF5C
 00502E47    cmp         word ptr [eax+12],3130
>00502E4D    jne         00502F09
 00502E53    mov         word ptr [ebp-0E],1A
 00502E59    push        11
 00502E5B    call        user32.GetKeyState
 00502E60    test        ax,ax
>00502E63    jge         00502F09
 00502E69    movzx       eax,word ptr [ebp-0E]
 00502E6D    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00502E73    movzx       eax,word ptr [edx+eax*2]
 00502E77    lea         ecx,[ebp-3C]
 00502E7A    mov         edx,4
 00502E7F    call        IntToHex
 00502E84    mov         ecx,dword ptr [ebp-3C]
 00502E87    lea         eax,[ebp-38]
 00502E8A    mov         edx,5039B8;'SA SPT: '
 00502E8F    call        @LStrCat3
 00502E94    mov         edx,dword ptr [ebp-38]
 00502E97    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502E9C    mov         eax,dword ptr [eax]
 00502E9E    mov         eax,dword ptr [eax+2F8]
 00502EA4    mov         eax,dword ptr [eax+248]
 00502EAA    mov         ecx,dword ptr [eax]
 00502EAC    call        dword ptr [ecx+38]
>00502EAF    jmp         00502F09
 00502EB1    mov         word ptr [ebp-0E],7
 00502EB7    push        11
 00502EB9    call        user32.GetKeyState
 00502EBE    test        ax,ax
>00502EC1    jge         00502F09
 00502EC3    movzx       eax,word ptr [ebp-0E]
 00502EC7    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00502ECD    movzx       eax,word ptr [edx+eax*2]
 00502ED1    lea         ecx,[ebp-44]
 00502ED4    mov         edx,4
 00502ED9    call        IntToHex
 00502EDE    mov         ecx,dword ptr [ebp-44]
 00502EE1    lea         eax,[ebp-40]
 00502EE4    mov         edx,5039CC;'SA SPT:         '
 00502EE9    call        @LStrCat3
 00502EEE    mov         edx,dword ptr [ebp-40]
 00502EF1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502EF6    mov         eax,dword ptr [eax]
 00502EF8    mov         eax,dword ptr [eax+2F8]
 00502EFE    mov         eax,dword ptr [eax+248]
 00502F04    mov         ecx,dword ptr [eax]
 00502F06    call        dword ptr [ecx+38]
 00502F09    push        11
 00502F0B    call        user32.GetKeyState
 00502F10    test        ax,ax
>00502F13    jge         00502F69
 00502F15    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502F1A    mov         eax,dword ptr [eax]
 00502F1C    mov         eax,dword ptr [eax+2F8]
 00502F22    mov         eax,dword ptr [eax+248]
 00502F28    xor         edx,edx
 00502F2A    mov         ecx,dword ptr [eax]
 00502F2C    call        dword ptr [ecx+38]
 00502F2F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502F34    mov         eax,dword ptr [eax]
 00502F36    mov         eax,dword ptr [eax+2F8]
 00502F3C    mov         eax,dword ptr [eax+248]
 00502F42    mov         edx,5039E8;'  #   ID  Tr  Sect  Len   Description'
 00502F47    mov         ecx,dword ptr [eax]
 00502F49    call        dword ptr [ecx+38]
 00502F4C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00502F51    mov         eax,dword ptr [eax]
 00502F53    mov         eax,dword ptr [eax+2F8]
 00502F59    mov         eax,dword ptr [eax+248]
 00502F5F    mov         edx,503A18;'--------------------------------------'
 00502F64    mov         ecx,dword ptr [eax]
 00502F66    call        dword ptr [ecx+38]
 00502F69    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502F6E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00502F74    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00502F7A    call        TListItems.BeginUpdate
 00502F7F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00502F84    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00502F8A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00502F90    call        TListItems.Clear
 00502F95    mov         eax,[0056D408];0x0 gvar_0056D408
 00502F9A    mov         dword ptr [ebp-8],eax
>00502F9D    jmp         005038C2
 00502FA2    mov         eax,[0056D408];0x0 gvar_0056D408
 00502FA7    sub         eax,dword ptr [ebp-8]
 00502FAA    add         eax,eax
 00502FAC    cmp         word ptr [eax*8+57266C],0FF
>00502FB6    jbe         00502FFE
 00502FB8    push        0
 00502FBA    lea         eax,[ebp-14]
 00502FBD    push        eax
 00502FBE    lea         ecx,[ebp-4C]
 00502FC1    mov         eax,[0056D408];0x0 gvar_0056D408
 00502FC6    sub         eax,dword ptr [ebp-8]
 00502FC9    add         eax,eax
 00502FCB    movzx       eax,word ptr [eax*8+57266C]
 00502FD3    mov         edx,4
 00502FD8    call        IntToHex
 00502FDD    mov         ecx,dword ptr [ebp-4C]
 00502FE0    lea         eax,[ebp-48]
 00502FE3    mov         edx,503A48;'ID'
 00502FE8    call        @LStrCat3
 00502FED    mov         ecx,dword ptr [ebp-48]
 00502FF0    mov         edx,503A54;'BLOCKS'
 00502FF5    mov         eax,dword ptr [ebp-0C]
 00502FF8    mov         ebx,dword ptr [eax]
 00502FFA    call        dword ptr [ebx];TIniFile.sub_0044A254
>00502FFC    jmp         00503042
 00502FFE    push        0
 00503000    lea         eax,[ebp-14]
 00503003    push        eax
 00503004    lea         ecx,[ebp-54]
 00503007    mov         eax,[0056D408];0x0 gvar_0056D408
 0050300C    sub         eax,dword ptr [ebp-8]
 0050300F    add         eax,eax
 00503011    movzx       eax,word ptr [eax*8+57266C]
 00503019    mov         edx,2
 0050301E    call        IntToHex
 00503023    mov         ecx,dword ptr [ebp-54]
 00503026    lea         eax,[ebp-50]
 00503029    mov         edx,503A48;'ID'
 0050302E    call        @LStrCat3
 00503033    mov         ecx,dword ptr [ebp-50]
 00503036    mov         edx,503A54;'BLOCKS'
 0050303B    mov         eax,dword ptr [ebp-0C]
 0050303E    mov         ebx,dword ptr [eax]
 00503040    call        dword ptr [ebx];TIniFile.sub_0044A254
 00503042    push        11
 00503044    call        user32.GetKeyState
 00503049    test        ax,ax
>0050304C    jge         005033F8
 00503052    mov         eax,[0056E344];^gvar_0059BF5C
 00503057    cmp         word ptr [eax],4F52
>0050305C    jne         005032DB
 00503062    mov         eax,[0056E344];^gvar_0059BF5C
 00503067    cmp         word ptr [eax+2],4C59
>0050306D    jne         005032DB
 00503073    push        10
 00503075    call        user32.GetKeyState
 0050307A    test        ax,ax
>0050307D    jge         005031A3
 00503083    lea         eax,[ebp-1C]
 00503086    push        eax
 00503087    lea         ecx,[ebp-1A]
 0050308A    lea         edx,[ebp-18]
 0050308D    mov         eax,[0056D408];0x0 gvar_0056D408
 00503092    sub         eax,dword ptr [ebp-8]
 00503095    add         eax,eax
 00503097    mov         eax,dword ptr [eax*8+572670]
 0050309E    call        004D0AB4
 005030A3    lea         eax,[ebp-5C]
 005030A6    push        eax
 005030A7    mov         eax,[0056D408];0x0 gvar_0056D408
 005030AC    sub         eax,dword ptr [ebp-8]
 005030AF    mov         dword ptr [ebp-64],eax
 005030B2    mov         byte ptr [ebp-60],0
 005030B6    lea         edx,[ebp-64]
 005030B9    xor         ecx,ecx
 005030BB    mov         eax,503A64;'%3d'
 005030C0    call        0040D630
 005030C5    push        dword ptr [ebp-5C]
 005030C8    push        503A70;'  '
 005030CD    lea         ecx,[ebp-68]
 005030D0    mov         eax,[0056D408];0x0 gvar_0056D408
 005030D5    sub         eax,dword ptr [ebp-8]
 005030D8    add         eax,eax
 005030DA    movzx       eax,word ptr [eax*8+57266C]
 005030E2    mov         edx,4
 005030E7    call        IntToHex
 005030EC    push        dword ptr [ebp-68]
 005030EF    push        503A70;'  '
 005030F4    mov         eax,dword ptr [ebp-18]
 005030F7    neg         eax
 005030F9    xor         edx,edx
 005030FB    push        edx
 005030FC    push        eax
 005030FD    lea         edx,[ebp-6C]
 00503100    mov         eax,3
 00503105    call        IntToHex
 0050310A    push        dword ptr [ebp-6C]
 0050310D    push        503A70;'  '
 00503112    lea         ecx,[ebp-70]
 00503115    movzx       eax,word ptr [ebp-1A]
 00503119    mov         edx,4
 0050311E    call        IntToHex
 00503123    push        dword ptr [ebp-70]
 00503126    push        503A70;'  '
 0050312B    lea         ecx,[ebp-74]
 0050312E    mov         eax,[0056D408];0x0 gvar_0056D408
 00503133    sub         eax,dword ptr [ebp-8]
 00503136    add         eax,eax
 00503138    movzx       eax,word ptr [eax*8+572674]
 00503140    mov         edx,4
 00503145    call        IntToHex
 0050314A    push        dword ptr [ebp-74]
 0050314D    push        503A70;'  '
 00503152    lea         edx,[ebp-78]
 00503155    mov         eax,[0056D408];0x0 gvar_0056D408
 0050315A    sub         eax,dword ptr [ebp-8]
 0050315D    add         eax,eax
 0050315F    mov         eax,dword ptr [eax*8+572678]
 00503166    call        00501900
 0050316B    push        dword ptr [ebp-78]
 0050316E    push        503A70;'  '
 00503173    push        dword ptr [ebp-14]
 00503176    lea         eax,[ebp-58]
 00503179    mov         edx,0D
 0050317E    call        @LStrCatN
 00503183    mov         edx,dword ptr [ebp-58]
 00503186    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050318B    mov         eax,dword ptr [eax]
 0050318D    mov         eax,dword ptr [eax+2F8]
 00503193    mov         eax,dword ptr [eax+248]
 00503199    mov         ecx,dword ptr [eax]
 0050319B    call        dword ptr [ecx+38]
>0050319E    jmp         005033F8
 005031A3    lea         eax,[ebp-80]
 005031A6    push        eax
 005031A7    mov         eax,[0056D408];0x0 gvar_0056D408
 005031AC    sub         eax,dword ptr [ebp-8]
 005031AF    mov         dword ptr [ebp-64],eax
 005031B2    mov         byte ptr [ebp-60],0
 005031B6    lea         edx,[ebp-64]
 005031B9    xor         ecx,ecx
 005031BB    mov         eax,503A64;'%3d'
 005031C0    call        0040D630
 005031C5    push        dword ptr [ebp-80]
 005031C8    push        503A70;'  '
 005031CD    lea         ecx,[ebp-84]
 005031D3    mov         eax,[0056D408];0x0 gvar_0056D408
 005031D8    sub         eax,dword ptr [ebp-8]
 005031DB    add         eax,eax
 005031DD    movzx       eax,word ptr [eax*8+57266C]
 005031E5    mov         edx,4
 005031EA    call        IntToHex
 005031EF    push        dword ptr [ebp-84]
 005031F5    push        503A70;'  '
 005031FA    lea         ecx,[ebp-88]
 00503200    mov         eax,[0056D408];0x0 gvar_0056D408
 00503205    sub         eax,dword ptr [ebp-8]
 00503208    add         eax,eax
 0050320A    movzx       eax,word ptr [eax*8+57266E]
 00503212    mov         edx,3
 00503217    call        IntToHex
 0050321C    push        dword ptr [ebp-88]
 00503222    push        503A70;'  '
 00503227    mov         eax,[0056D408];0x0 gvar_0056D408
 0050322C    sub         eax,dword ptr [ebp-8]
 0050322F    add         eax,eax
 00503231    mov         eax,dword ptr [eax*8+572670]
 00503238    xor         edx,edx
 0050323A    push        edx
 0050323B    push        eax
 0050323C    lea         edx,[ebp-8C]
 00503242    mov         eax,5
 00503247    call        IntToHex
 0050324C    push        dword ptr [ebp-8C]
 00503252    push        503A70;'  '
 00503257    lea         ecx,[ebp-90]
 0050325D    mov         eax,[0056D408];0x0 gvar_0056D408
 00503262    sub         eax,dword ptr [ebp-8]
 00503265    add         eax,eax
 00503267    movzx       eax,word ptr [eax*8+572674]
 0050326F    mov         edx,4
 00503274    call        IntToHex
 00503279    push        dword ptr [ebp-90]
 0050327F    push        503A70;'  '
 00503284    lea         edx,[ebp-94]
 0050328A    mov         eax,[0056D408];0x0 gvar_0056D408
 0050328F    sub         eax,dword ptr [ebp-8]
 00503292    add         eax,eax
 00503294    mov         eax,dword ptr [eax*8+572678]
 0050329B    call        00501900
 005032A0    push        dword ptr [ebp-94]
 005032A6    push        503A70;'  '
 005032AB    push        dword ptr [ebp-14]
 005032AE    lea         eax,[ebp-7C]
 005032B1    mov         edx,0D
 005032B6    call        @LStrCatN
 005032BB    mov         edx,dword ptr [ebp-7C]
 005032BE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005032C3    mov         eax,dword ptr [eax]
 005032C5    mov         eax,dword ptr [eax+2F8]
 005032CB    mov         eax,dword ptr [eax+248]
 005032D1    mov         ecx,dword ptr [eax]
 005032D3    call        dword ptr [ecx+38]
>005032D6    jmp         005033F8
 005032DB    push        503A70;'  '
 005032E0    lea         eax,[ebp-9C]
 005032E6    push        eax
 005032E7    mov         eax,[0056D408];0x0 gvar_0056D408
 005032EC    sub         eax,dword ptr [ebp-8]
 005032EF    mov         dword ptr [ebp-64],eax
 005032F2    mov         byte ptr [ebp-60],0
 005032F6    lea         edx,[ebp-64]
 005032F9    xor         ecx,ecx
 005032FB    mov         eax,503A64;'%3d'
 00503300    call        0040D630
 00503305    push        dword ptr [ebp-9C]
 0050330B    push        503A70;'  '
 00503310    lea         ecx,[ebp-0A0]
 00503316    mov         eax,[0056D408];0x0 gvar_0056D408
 0050331B    sub         eax,dword ptr [ebp-8]
 0050331E    add         eax,eax
 00503320    movzx       eax,word ptr [eax*8+57266C]
 00503328    mov         edx,2
 0050332D    call        IntToHex
 00503332    push        dword ptr [ebp-0A0]
 00503338    push        503A70;'  '
 0050333D    lea         ecx,[ebp-0A4]
 00503343    mov         eax,[0056D408];0x0 gvar_0056D408
 00503348    sub         eax,dword ptr [ebp-8]
 0050334B    add         eax,eax
 0050334D    movzx       eax,word ptr [eax*8+57266E]
 00503355    mov         edx,3
 0050335A    call        IntToHex
 0050335F    push        dword ptr [ebp-0A4]
 00503365    push        503A70;'  '
 0050336A    mov         eax,[0056D408];0x0 gvar_0056D408
 0050336F    sub         eax,dword ptr [ebp-8]
 00503372    add         eax,eax
 00503374    mov         eax,dword ptr [eax*8+572670]
 0050337B    xor         edx,edx
 0050337D    push        edx
 0050337E    push        eax
 0050337F    lea         edx,[ebp-0A8]
 00503385    mov         eax,4
 0050338A    call        IntToHex
 0050338F    push        dword ptr [ebp-0A8]
 00503395    push        503A70;'  '
 0050339A    lea         ecx,[ebp-0AC]
 005033A0    mov         eax,[0056D408];0x0 gvar_0056D408
 005033A5    sub         eax,dword ptr [ebp-8]
 005033A8    add         eax,eax
 005033AA    movzx       eax,word ptr [eax*8+572674]
 005033B2    mov         edx,4
 005033B7    call        IntToHex
 005033BC    push        dword ptr [ebp-0AC]
 005033C2    push        503A70;'  '
 005033C7    push        dword ptr [ebp-14]
 005033CA    lea         eax,[ebp-98]
 005033D0    mov         edx,0C
 005033D5    call        @LStrCatN
 005033DA    mov         edx,dword ptr [ebp-98]
 005033E0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005033E5    mov         eax,dword ptr [eax]
 005033E7    mov         eax,dword ptr [eax+2F8]
 005033ED    mov         eax,dword ptr [eax+248]
 005033F3    mov         ecx,dword ptr [eax]
 005033F5    call        dword ptr [ecx+38]
 005033F8    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005033FD    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00503403    mov         dword ptr [ebp-20],eax
 00503406    mov         eax,dword ptr [ebp-20]
 00503409    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050340F    call        0045AE78
 00503414    mov         dword ptr [ebp-4],eax
 00503417    mov         eax,[0056E040];^gvar_005720C0
 0050341C    cmp         byte ptr [eax],0
>0050341F    je          00503453
 00503421    lea         ecx,[ebp-0B0]
 00503427    mov         eax,[0056D408];0x0 gvar_0056D408
 0050342C    sub         eax,dword ptr [ebp-8]
 0050342F    add         eax,eax
 00503431    movzx       eax,word ptr [eax*8+57266C]
 00503439    mov         edx,4
 0050343E    call        IntToHex
 00503443    mov         edx,dword ptr [ebp-0B0]
 00503449    mov         eax,dword ptr [ebp-4]
 0050344C    call        0045A750
>00503451    jmp         00503483
 00503453    lea         ecx,[ebp-0B4]
 00503459    mov         eax,[0056D408];0x0 gvar_0056D408
 0050345E    sub         eax,dword ptr [ebp-8]
 00503461    add         eax,eax
 00503463    movzx       eax,word ptr [eax*8+57266C]
 0050346B    mov         edx,2
 00503470    call        IntToHex
 00503475    mov         edx,dword ptr [ebp-0B4]
 0050347B    mov         eax,dword ptr [ebp-4]
 0050347E    call        0045A750
 00503483    xor         ecx,ecx
 00503485    xor         edx,edx
 00503487    mov         eax,dword ptr [ebp-4]
 0050348A    call        0045A98C
 0050348F    lea         ecx,[ebp-0B8]
 00503495    mov         eax,[0056D408];0x0 gvar_0056D408
 0050349A    sub         eax,dword ptr [ebp-8]
 0050349D    add         eax,eax
 0050349F    movzx       eax,word ptr [eax*8+57266E]
 005034A7    mov         edx,2
 005034AC    call        IntToHex
 005034B1    mov         edx,dword ptr [ebp-0B8]
 005034B7    mov         eax,dword ptr [ebp-4]
 005034BA    mov         eax,dword ptr [eax+8]
 005034BD    mov         ecx,dword ptr [eax]
 005034BF    call        dword ptr [ecx+38]
 005034C2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005034C7    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 005034CD    mov         edx,dword ptr [eax]
 005034CF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005034D5    test        al,al
>005034D7    je          005034E8
 005034D9    mov         eax,dword ptr [ebp-4]
 005034DC    mov         eax,dword ptr [eax+8]
 005034DF    xor         edx,edx
 005034E1    mov         ecx,dword ptr [eax]
 005034E3    call        dword ptr [ecx+38]
>005034E6    jmp         005034F8
 005034E8    mov         eax,dword ptr [ebp-4]
 005034EB    mov         eax,dword ptr [eax+8]
 005034EE    mov         edx,503A7C;'0'
 005034F3    mov         ecx,dword ptr [eax]
 005034F5    call        dword ptr [ecx+38]
 005034F8    mov         eax,[0056D408];0x0 gvar_0056D408
 005034FD    sub         eax,dword ptr [ebp-8]
 00503500    add         eax,eax
 00503502    mov         eax,dword ptr [eax*8+572670]
 00503509    xor         edx,edx
 0050350B    push        edx
 0050350C    push        eax
 0050350D    lea         edx,[ebp-0BC]
 00503513    mov         eax,4
 00503518    call        IntToHex
 0050351D    mov         edx,dword ptr [ebp-0BC]
 00503523    mov         eax,dword ptr [ebp-4]
 00503526    mov         eax,dword ptr [eax+8]
 00503529    mov         ecx,dword ptr [eax]
 0050352B    call        dword ptr [ecx+38]
 0050352E    lea         ecx,[ebp-0C0]
 00503534    mov         eax,[0056D408];0x0 gvar_0056D408
 00503539    sub         eax,dword ptr [ebp-8]
 0050353C    add         eax,eax
 0050353E    movzx       eax,word ptr [eax*8+572674]
 00503546    mov         edx,4
 0050354B    call        IntToHex
 00503550    mov         edx,dword ptr [ebp-0C0]
 00503556    mov         eax,dword ptr [ebp-4]
 00503559    mov         eax,dword ptr [eax+8]
 0050355C    mov         ecx,dword ptr [eax]
 0050355E    call        dword ptr [ecx+38]
 00503561    mov         eax,dword ptr [ebp-4]
 00503564    mov         eax,dword ptr [eax+8]
 00503567    xor         edx,edx
 00503569    mov         ecx,dword ptr [eax]
 0050356B    call        dword ptr [ecx+38]
 0050356E    mov         eax,dword ptr [ebp-4]
 00503571    mov         eax,dword ptr [eax+8]
 00503574    xor         edx,edx
 00503576    mov         ecx,dword ptr [eax]
 00503578    call        dword ptr [ecx+38]
 0050357B    mov         eax,dword ptr [ebp-4]
 0050357E    mov         eax,dword ptr [eax+8]
 00503581    xor         edx,edx
 00503583    mov         ecx,dword ptr [eax]
 00503585    call        dword ptr [ecx+38]
 00503588    mov         eax,[0056D408];0x0 gvar_0056D408
 0050358D    sub         eax,dword ptr [ebp-8]
 00503590    add         eax,eax
 00503592    cmp         word ptr [eax*8+57266C],0FF
>0050359C    jbe         00503604
 0050359E    push        0
 005035A0    lea         eax,[ebp-0C4]
 005035A6    push        eax
 005035A7    lea         ecx,[ebp-0CC]
 005035AD    mov         eax,[0056D408];0x0 gvar_0056D408
 005035B2    sub         eax,dword ptr [ebp-8]
 005035B5    add         eax,eax
 005035B7    movzx       eax,word ptr [eax*8+57266C]
 005035BF    mov         edx,4
 005035C4    call        IntToHex
 005035C9    mov         ecx,dword ptr [ebp-0CC]
 005035CF    lea         eax,[ebp-0C8]
 005035D5    mov         edx,503A48;'ID'
 005035DA    call        @LStrCat3
 005035DF    mov         ecx,dword ptr [ebp-0C8]
 005035E5    mov         edx,503A54;'BLOCKS'
 005035EA    mov         eax,dword ptr [ebp-0C]
 005035ED    mov         ebx,dword ptr [eax]
 005035EF    call        dword ptr [ebx];TIniFile.sub_0044A254
 005035F1    mov         edx,dword ptr [ebp-0C4]
 005035F7    mov         eax,dword ptr [ebp-4]
 005035FA    mov         eax,dword ptr [eax+8]
 005035FD    mov         ecx,dword ptr [eax]
 005035FF    call        dword ptr [ecx+38]
>00503602    jmp         00503668
 00503604    push        0
 00503606    lea         eax,[ebp-0D0]
 0050360C    push        eax
 0050360D    lea         ecx,[ebp-0D8]
 00503613    mov         eax,[0056D408];0x0 gvar_0056D408
 00503618    sub         eax,dword ptr [ebp-8]
 0050361B    add         eax,eax
 0050361D    movzx       eax,word ptr [eax*8+57266C]
 00503625    mov         edx,2
 0050362A    call        IntToHex
 0050362F    mov         ecx,dword ptr [ebp-0D8]
 00503635    lea         eax,[ebp-0D4]
 0050363B    mov         edx,503A48;'ID'
 00503640    call        @LStrCat3
 00503645    mov         ecx,dword ptr [ebp-0D4]
 0050364B    mov         edx,503A54;'BLOCKS'
 00503650    mov         eax,dword ptr [ebp-0C]
 00503653    mov         ebx,dword ptr [eax]
 00503655    call        dword ptr [ebx];TIniFile.sub_0044A254
 00503657    mov         edx,dword ptr [ebp-0D0]
 0050365D    mov         eax,dword ptr [ebp-4]
 00503660    mov         eax,dword ptr [eax+8]
 00503663    mov         ecx,dword ptr [eax]
 00503665    call        dword ptr [ecx+38]
 00503668    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050366D    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00503673    mov         edx,dword ptr [eax]
 00503675    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050367B    test        al,al
>0050367D    jne         005038BF
 00503683    mov         eax,dword ptr [ebp-20]
 00503686    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050368C    call        0045AE78
 00503691    mov         dword ptr [ebp-4],eax
 00503694    mov         eax,[0056E040];^gvar_005720C0
 00503699    cmp         byte ptr [eax],0
>0050369C    je          005036D0
 0050369E    lea         ecx,[ebp-0DC]
 005036A4    mov         eax,[0056D408];0x0 gvar_0056D408
 005036A9    sub         eax,dword ptr [ebp-8]
 005036AC    add         eax,eax
 005036AE    movzx       eax,word ptr [eax*8+57266C]
 005036B6    mov         edx,4
 005036BB    call        IntToHex
 005036C0    mov         edx,dword ptr [ebp-0DC]
 005036C6    mov         eax,dword ptr [ebp-4]
 005036C9    call        0045A750
>005036CE    jmp         00503700
 005036D0    lea         ecx,[ebp-0E0]
 005036D6    mov         eax,[0056D408];0x0 gvar_0056D408
 005036DB    sub         eax,dword ptr [ebp-8]
 005036DE    add         eax,eax
 005036E0    movzx       eax,word ptr [eax*8+57266C]
 005036E8    mov         edx,2
 005036ED    call        IntToHex
 005036F2    mov         edx,dword ptr [ebp-0E0]
 005036F8    mov         eax,dword ptr [ebp-4]
 005036FB    call        0045A750
 00503700    xor         ecx,ecx
 00503702    xor         edx,edx
 00503704    mov         eax,dword ptr [ebp-4]
 00503707    call        0045A98C
 0050370C    lea         ecx,[ebp-0E4]
 00503712    mov         eax,[0056D408];0x0 gvar_0056D408
 00503717    sub         eax,dword ptr [ebp-8]
 0050371A    add         eax,eax
 0050371C    movzx       eax,word ptr [eax*8+57266E]
 00503724    mov         edx,2
 00503729    call        IntToHex
 0050372E    mov         edx,dword ptr [ebp-0E4]
 00503734    mov         eax,dword ptr [ebp-4]
 00503737    mov         eax,dword ptr [eax+8]
 0050373A    mov         ecx,dword ptr [eax]
 0050373C    call        dword ptr [ecx+38]
 0050373F    mov         eax,dword ptr [ebp-4]
 00503742    mov         eax,dword ptr [eax+8]
 00503745    mov         edx,503A88;'1'
 0050374A    mov         ecx,dword ptr [eax]
 0050374C    call        dword ptr [ecx+38]
 0050374F    mov         eax,[0056D408];0x0 gvar_0056D408
 00503754    sub         eax,dword ptr [ebp-8]
 00503757    add         eax,eax
 00503759    mov         eax,dword ptr [eax*8+572670]
 00503760    xor         edx,edx
 00503762    push        edx
 00503763    push        eax
 00503764    lea         edx,[ebp-0E8]
 0050376A    mov         eax,4
 0050376F    call        IntToHex
 00503774    mov         edx,dword ptr [ebp-0E8]
 0050377A    mov         eax,dword ptr [ebp-4]
 0050377D    mov         eax,dword ptr [eax+8]
 00503780    mov         ecx,dword ptr [eax]
 00503782    call        dword ptr [ecx+38]
 00503785    lea         ecx,[ebp-0EC]
 0050378B    mov         eax,[0056D408];0x0 gvar_0056D408
 00503790    sub         eax,dword ptr [ebp-8]
 00503793    add         eax,eax
 00503795    movzx       eax,word ptr [eax*8+572674]
 0050379D    mov         edx,4
 005037A2    call        IntToHex
 005037A7    mov         edx,dword ptr [ebp-0EC]
 005037AD    mov         eax,dword ptr [ebp-4]
 005037B0    mov         eax,dword ptr [eax+8]
 005037B3    mov         ecx,dword ptr [eax]
 005037B5    call        dword ptr [ecx+38]
 005037B8    mov         eax,dword ptr [ebp-4]
 005037BB    mov         eax,dword ptr [eax+8]
 005037BE    xor         edx,edx
 005037C0    mov         ecx,dword ptr [eax]
 005037C2    call        dword ptr [ecx+38]
 005037C5    mov         eax,dword ptr [ebp-4]
 005037C8    mov         eax,dword ptr [eax+8]
 005037CB    xor         edx,edx
 005037CD    mov         ecx,dword ptr [eax]
 005037CF    call        dword ptr [ecx+38]
 005037D2    mov         eax,dword ptr [ebp-4]
 005037D5    mov         eax,dword ptr [eax+8]
 005037D8    xor         edx,edx
 005037DA    mov         ecx,dword ptr [eax]
 005037DC    call        dword ptr [ecx+38]
 005037DF    mov         eax,[0056D408];0x0 gvar_0056D408
 005037E4    sub         eax,dword ptr [ebp-8]
 005037E7    add         eax,eax
 005037E9    cmp         word ptr [eax*8+57266C],0FF
>005037F3    jbe         0050385B
 005037F5    push        0
 005037F7    lea         eax,[ebp-0F0]
 005037FD    push        eax
 005037FE    lea         ecx,[ebp-0F8]
 00503804    mov         eax,[0056D408];0x0 gvar_0056D408
 00503809    sub         eax,dword ptr [ebp-8]
 0050380C    add         eax,eax
 0050380E    movzx       eax,word ptr [eax*8+57266C]
 00503816    mov         edx,4
 0050381B    call        IntToHex
 00503820    mov         ecx,dword ptr [ebp-0F8]
 00503826    lea         eax,[ebp-0F4]
 0050382C    mov         edx,503A48;'ID'
 00503831    call        @LStrCat3
 00503836    mov         ecx,dword ptr [ebp-0F4]
 0050383C    mov         edx,503A54;'BLOCKS'
 00503841    mov         eax,dword ptr [ebp-0C]
 00503844    mov         ebx,dword ptr [eax]
 00503846    call        dword ptr [ebx];TIniFile.sub_0044A254
 00503848    mov         edx,dword ptr [ebp-0F0]
 0050384E    mov         eax,dword ptr [ebp-4]
 00503851    mov         eax,dword ptr [eax+8]
 00503854    mov         ecx,dword ptr [eax]
 00503856    call        dword ptr [ecx+38]
>00503859    jmp         005038BF
 0050385B    push        0
 0050385D    lea         eax,[ebp-0FC]
 00503863    push        eax
 00503864    lea         ecx,[ebp-104]
 0050386A    mov         eax,[0056D408];0x0 gvar_0056D408
 0050386F    sub         eax,dword ptr [ebp-8]
 00503872    add         eax,eax
 00503874    movzx       eax,word ptr [eax*8+57266C]
 0050387C    mov         edx,2
 00503881    call        IntToHex
 00503886    mov         ecx,dword ptr [ebp-104]
 0050388C    lea         eax,[ebp-100]
 00503892    mov         edx,503A48;'ID'
 00503897    call        @LStrCat3
 0050389C    mov         ecx,dword ptr [ebp-100]
 005038A2    mov         edx,503A54;'BLOCKS'
 005038A7    mov         eax,dword ptr [ebp-0C]
 005038AA    mov         ebx,dword ptr [eax]
 005038AC    call        dword ptr [ebx];TIniFile.sub_0044A254
 005038AE    mov         edx,dword ptr [ebp-0FC]
 005038B4    mov         eax,dword ptr [ebp-4]
 005038B7    mov         eax,dword ptr [eax+8]
 005038BA    mov         ecx,dword ptr [eax]
 005038BC    call        dword ptr [ecx+38]
 005038BF    dec         dword ptr [ebp-8]
 005038C2    cmp         dword ptr [ebp-8],0
>005038C6    jle         005038D6
 005038C8    mov         eax,[0056E5A4];^gvar_0056DF04
 005038CD    cmp         byte ptr [eax],0
>005038D0    je          00502FA2
 005038D6    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005038DB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005038E1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005038E7    call        TListItems.EndUpdate
 005038EC    xor         eax,eax
 005038EE    pop         edx
 005038EF    pop         ecx
 005038F0    pop         ecx
 005038F1    mov         dword ptr fs:[eax],edx
 005038F4    push        503909
 005038F9    mov         eax,dword ptr [ebp-0C]
 005038FC    call        TObject.Free
 00503901    ret
>00503902    jmp         @HandleFinally
>00503907    jmp         005038F9
 00503909    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050390E    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503914    call        TProgressBar.GetMin
 00503919    mov         edx,eax
 0050391B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503920    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503926    call        TProgressBar.SetPosition
 0050392B    xor         eax,eax
 0050392D    pop         edx
 0050392E    pop         ecx
 0050392F    pop         ecx
 00503930    mov         dword ptr fs:[eax],edx
 00503933    push        503965
 00503938    lea         eax,[ebp-104]
 0050393E    mov         edx,28
 00503943    call        @LStrArrayClr
 00503948    lea         eax,[ebp-5C]
 0050394B    mov         edx,0F
 00503950    call        @LStrArrayClr
 00503955    lea         eax,[ebp-14]
 00503958    call        @LStrClr
 0050395D    ret
>0050395E    jmp         @HandleFinally
>00503963    jmp         00503938
 00503965    pop         ebx
 00503966    mov         esp,ebp
 00503968    pop         ebp
 00503969    ret
*}
end;

//00503A8C
procedure sub_00503A8C(?:TMemoryStream);
begin
{*
 00503A8C    push        ebp
 00503A8D    mov         ebp,esp
 00503A8F    add         esp,0FFFFFFE8
 00503A92    push        ebx
 00503A93    xor         edx,edx
 00503A95    mov         dword ptr [ebp-14],edx
 00503A98    mov         dword ptr [ebp-18],edx
 00503A9B    mov         dword ptr [ebp-4],eax
 00503A9E    xor         eax,eax
 00503AA0    push        ebp
 00503AA1    push        503F47
 00503AA6    push        dword ptr fs:[eax]
 00503AA9    mov         dword ptr fs:[eax],esp
 00503AAC    mov         eax,[0056E5A4];^gvar_0056DF04
 00503AB1    mov         byte ptr [eax],0
 00503AB4    xor         ecx,ecx
 00503AB6    xor         edx,edx
 00503AB8    mov         eax,dword ptr [ebp-4]
 00503ABB    mov         ebx,dword ptr [eax]
 00503ABD    call        dword ptr [ebx+14]
 00503AC0    mov         eax,dword ptr [ebp-4]
 00503AC3    mov         edx,dword ptr [eax]
 00503AC5    call        dword ptr [edx]
 00503AC7    mov         ecx,eax
 00503AC9    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503ACF    mov         eax,dword ptr [ebp-4]
 00503AD2    mov         ebx,dword ptr [eax]
 00503AD4    call        dword ptr [ebx+0C]
 00503AD7    lea         edx,[ebp-18]
 00503ADA    xor         eax,eax
 00503ADC    call        00403214
 00503AE1    mov         eax,dword ptr [ebp-18]
 00503AE4    lea         edx,[ebp-14]
 00503AE7    call        0040CC5C
 00503AEC    lea         eax,[ebp-14]
 00503AEF    mov         edx,503F5C;'wdm.ini'
 00503AF4    call        @LStrCat
 00503AF9    mov         ecx,dword ptr [ebp-14]
 00503AFC    mov         dl,1
 00503AFE    mov         eax,[004497F8];TIniFile
 00503B03    call        TIniFile.Create;TIniFile.Create
 00503B08    mov         dword ptr [ebp-0C],eax
 00503B0B    xor         eax,eax
 00503B0D    push        ebp
 00503B0E    push        503F03
 00503B13    push        dword ptr fs:[eax]
 00503B16    mov         dword ptr fs:[eax],esp
 00503B19    mov         eax,[0056E344];^gvar_0059BF5C
 00503B1E    cmp         word ptr [eax],4F52
>00503B23    jne         00503B3A
 00503B25    mov         eax,[0056E344];^gvar_0059BF5C
 00503B2A    cmp         word ptr [eax+2],4C59
>00503B30    jne         00503B3A
 00503B32    mov         word ptr [ebp-0E],18
>00503B38    jmp         00503B40
 00503B3A    mov         word ptr [ebp-0E],5
 00503B40    movzx       eax,word ptr [ebp-0E]
 00503B44    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503B4A    movzx       eax,word ptr [edx+eax*2]
 00503B4E    mov         [0056D408],eax;gvar_0056D408
 00503B53    cmp         dword ptr ds:[56D408],1F4;gvar_0056D408
>00503B5D    jle         00503B69
 00503B5F    mov         dword ptr ds:[56D408],1F4;gvar_0056D408
 00503B69    mov         eax,[0056D408];0x0 gvar_0056D408
 00503B6E    mov         dword ptr [ebp-8],eax
 00503B71    mov         eax,[0056E344];^gvar_0059BF5C
 00503B76    cmp         word ptr [eax],4F52
>00503B7B    jne         00503DF4
 00503B81    mov         eax,[0056E344];^gvar_0059BF5C
 00503B86    cmp         word ptr [eax+2],4C59
>00503B8C    jne         00503DF4
 00503B92    mov         eax,[0056E344];^gvar_0059BF5C
 00503B97    cmp         word ptr [eax+12],3130
>00503B9D    jne         00503C9D
 00503BA3    mov         word ptr [ebp-0E],1B
 00503BA9    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503BAE    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503BB4    xor         edx,edx
 00503BB6    call        TProgressBar.SetMin
 00503BBB    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503BC0    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503BC6    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503BCC    call        TProgressBar.SetMax
>00503BD1    jmp         00503C80
 00503BD6    movzx       eax,word ptr [ebp-0E]
 00503BDA    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503BE0    mov         ax,word ptr [edx+eax*2+2]
 00503BE5    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503BEB    sub         edx,dword ptr [ebp-8]
 00503BEE    add         edx,edx
 00503BF0    mov         word ptr [edx*8+57266C],ax
 00503BF8    movzx       eax,word ptr [ebp-0E]
 00503BFC    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503C02    movzx       eax,word ptr [edx+eax*2]
 00503C06    shr         eax,8
 00503C09    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503C0F    sub         edx,dword ptr [ebp-8]
 00503C12    add         edx,edx
 00503C14    mov         word ptr [edx*8+57266E],ax
 00503C1C    movzx       eax,word ptr [ebp-0E]
 00503C20    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503C26    movzx       eax,word ptr [edx+eax*2+4]
 00503C2B    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503C31    sub         edx,dword ptr [ebp-8]
 00503C34    add         edx,edx
 00503C36    mov         dword ptr [edx*8+572670],eax
 00503C3D    movzx       eax,word ptr [ebp-0E]
 00503C41    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503C47    mov         ax,word ptr [edx+eax*2+6]
 00503C4C    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503C52    sub         edx,dword ptr [ebp-8]
 00503C55    add         edx,edx
 00503C57    mov         word ptr [edx*8+572674],ax
 00503C5F    add         word ptr [ebp-0E],4
 00503C64    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503C6A    sub         edx,dword ptr [ebp-8]
 00503C6D    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503C72    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503C78    call        TProgressBar.SetPosition
 00503C7D    dec         dword ptr [ebp-8]
 00503C80    cmp         dword ptr [ebp-8],0
>00503C84    jle         00503EE8
 00503C8A    mov         eax,[0056E5A4];^gvar_0056DF04
 00503C8F    cmp         byte ptr [eax],0
>00503C92    je          00503BD6
>00503C98    jmp         00503EE8
 00503C9D    mov         word ptr [ebp-0E],19
 00503CA3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503CA8    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503CAE    xor         edx,edx
 00503CB0    call        TProgressBar.SetMin
 00503CB5    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503CBA    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503CC0    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503CC6    call        TProgressBar.SetMax
>00503CCB    jmp         00503DD7
 00503CD0    movzx       eax,word ptr [ebp-0E]
 00503CD4    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503CDA    mov         ax,word ptr [edx+eax*2+2]
 00503CDF    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503CE5    sub         edx,dword ptr [ebp-8]
 00503CE8    add         edx,edx
 00503CEA    mov         word ptr [edx*8+57266C],ax
 00503CF2    movzx       eax,word ptr [ebp-0E]
 00503CF6    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503CFC    movzx       eax,word ptr [edx+eax*2]
 00503D00    shr         eax,8
 00503D03    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503D09    sub         edx,dword ptr [ebp-8]
 00503D0C    add         edx,edx
 00503D0E    mov         word ptr [edx*8+57266E],ax
 00503D16    movzx       eax,word ptr [ebp-0E]
 00503D1A    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503D20    movzx       eax,word ptr [edx+eax*2+0C]
 00503D25    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503D2B    sub         edx,dword ptr [ebp-8]
 00503D2E    add         edx,edx
 00503D30    mov         dword ptr [edx*8+572670],eax
 00503D37    mov         eax,[0056D408];0x0 gvar_0056D408
 00503D3C    sub         eax,dword ptr [ebp-8]
 00503D3F    add         eax,eax
 00503D41    shl         dword ptr [eax*8+572670],10
 00503D49    movzx       eax,word ptr [ebp-0E]
 00503D4D    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503D53    movzx       eax,word ptr [edx+eax*2+0A]
 00503D58    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503D5E    sub         edx,dword ptr [ebp-8]
 00503D61    add         edx,edx
 00503D63    or          dword ptr [edx*8+572670],eax
 00503D6A    movzx       eax,word ptr [ebp-0E]
 00503D6E    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503D74    mov         ax,word ptr [edx+eax*2+4]
 00503D79    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503D7F    sub         edx,dword ptr [ebp-8]
 00503D82    add         edx,edx
 00503D84    mov         word ptr [edx*8+572674],ax
 00503D8C    movzx       eax,word ptr [ebp-0E]
 00503D90    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503D96    lea         eax,[edx+eax*2+6]
 00503D9A    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503DA0    sub         edx,dword ptr [ebp-8]
 00503DA3    add         edx,edx
 00503DA5    lea         edx,[edx*8+572678]
 00503DAC    mov         ecx,4
 00503DB1    call        Move
 00503DB6    add         word ptr [ebp-0E],9
 00503DBB    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503DC1    sub         edx,dword ptr [ebp-8]
 00503DC4    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503DC9    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503DCF    call        TProgressBar.SetPosition
 00503DD4    dec         dword ptr [ebp-8]
 00503DD7    cmp         dword ptr [ebp-8],0
>00503DDB    jle         00503EE8
 00503DE1    mov         eax,[0056E5A4];^gvar_0056DF04
 00503DE6    cmp         byte ptr [eax],0
>00503DE9    je          00503CD0
>00503DEF    jmp         00503EE8
 00503DF4    mov         word ptr [ebp-0E],0C
 00503DFA    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503DFF    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503E05    xor         edx,edx
 00503E07    call        TProgressBar.SetMin
 00503E0C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503E11    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503E17    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503E1D    call        TProgressBar.SetMax
>00503E22    jmp         00503ED4
 00503E27    movzx       eax,word ptr [ebp-0E]
 00503E2B    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503E31    mov         ax,word ptr [edx+eax*2]
 00503E35    and         ax,0FF
 00503E39    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503E3F    sub         edx,dword ptr [ebp-8]
 00503E42    add         edx,edx
 00503E44    mov         word ptr [edx*8+57266C],ax
 00503E4C    movzx       eax,word ptr [ebp-0E]
 00503E50    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503E56    movzx       eax,word ptr [edx+eax*2]
 00503E5A    shr         eax,8
 00503E5D    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503E63    sub         edx,dword ptr [ebp-8]
 00503E66    add         edx,edx
 00503E68    mov         word ptr [edx*8+57266E],ax
 00503E70    movzx       eax,word ptr [ebp-0E]
 00503E74    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503E7A    movzx       eax,word ptr [edx+eax*2+4]
 00503E7F    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503E85    sub         edx,dword ptr [ebp-8]
 00503E88    add         edx,edx
 00503E8A    mov         dword ptr [edx*8+572670],eax
 00503E91    movzx       eax,word ptr [ebp-0E]
 00503E95    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00503E9B    mov         ax,word ptr [edx+eax*2+6]
 00503EA0    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503EA6    sub         edx,dword ptr [ebp-8]
 00503EA9    add         edx,edx
 00503EAB    mov         word ptr [edx*8+572674],ax
 00503EB3    add         word ptr [ebp-0E],4
 00503EB8    dec         dword ptr [ebp-8]
 00503EBB    mov         edx,dword ptr ds:[56D408];0x0 gvar_0056D408
 00503EC1    sub         edx,dword ptr [ebp-8]
 00503EC4    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503EC9    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503ECF    call        TProgressBar.SetPosition
 00503ED4    cmp         dword ptr [ebp-8],0
>00503ED8    jle         00503EE8
 00503EDA    mov         eax,[0056E5A4];^gvar_0056DF04
 00503EDF    cmp         byte ptr [eax],0
>00503EE2    je          00503E27
 00503EE8    call        00502D58
 00503EED    xor         eax,eax
 00503EEF    pop         edx
 00503EF0    pop         ecx
 00503EF1    pop         ecx
 00503EF2    mov         dword ptr fs:[eax],edx
 00503EF5    push        503F0A
 00503EFA    mov         eax,dword ptr [ebp-0C]
 00503EFD    call        TObject.Free
 00503F02    ret
>00503F03    jmp         @HandleFinally
>00503F08    jmp         00503EFA
 00503F0A    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503F0F    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503F15    call        TProgressBar.GetMin
 00503F1A    mov         edx,eax
 00503F1C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00503F21    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00503F27    call        TProgressBar.SetPosition
 00503F2C    xor         eax,eax
 00503F2E    pop         edx
 00503F2F    pop         ecx
 00503F30    pop         ecx
 00503F31    mov         dword ptr fs:[eax],edx
 00503F34    push        503F4E
 00503F39    lea         eax,[ebp-18]
 00503F3C    mov         edx,2
 00503F41    call        @LStrArrayClr
 00503F46    ret
>00503F47    jmp         @HandleFinally
>00503F4C    jmp         00503F39
 00503F4E    pop         ebx
 00503F4F    mov         esp,ebp
 00503F51    pop         ebp
 00503F52    ret
*}
end;

//00503F64
procedure TfmModules.miReadRoadMapByIdClick(Sender:TObject);
begin
{*
 00503F64    push        ebp
 00503F65    mov         ebp,esp
 00503F67    add         esp,0FFFFFFE8
 00503F6A    xor         ecx,ecx
 00503F6C    mov         dword ptr [ebp-18],ecx
 00503F6F    mov         dword ptr [ebp-14],edx
 00503F72    mov         dword ptr [ebp-4],eax
 00503F75    xor         eax,eax
 00503F77    push        ebp
 00503F78    push        5040C6
 00503F7D    push        dword ptr fs:[eax]
 00503F80    mov         dword ptr fs:[eax],esp
 00503F83    mov         eax,[0056E5A4];^gvar_0056DF04
 00503F88    mov         byte ptr [eax],0
 00503F8B    mov         dl,1
 00503F8D    mov         eax,[0041DE14];TMemoryStream
 00503F92    call        TObject.Create;TMemoryStream.Create
 00503F97    mov         dword ptr [ebp-8],eax
 00503F9A    lea         edx,[ebp-18]
 00503F9D    mov         eax,dword ptr [ebp-4]
 00503FA0    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00503FA6    call        TPanel.GetCaption
 00503FAB    mov         eax,dword ptr [ebp-18]
 00503FAE    mov         edx,10000
 00503FB3    call        0040C4A8
 00503FB8    mov         dword ptr [ebp-10],eax
 00503FBB    xor         eax,eax
 00503FBD    push        ebp
 00503FBE    push        5040A9
 00503FC3    push        dword ptr fs:[eax]
 00503FC6    mov         dword ptr fs:[eax],esp
 00503FC9    mov         eax,dword ptr [ebp-4]
 00503FCC    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00503FD2    mov         edx,dword ptr [eax]
 00503FD4    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00503FDA    test        al,al
>00503FDC    je          00503FFF
 00503FDE    mov         edx,dword ptr [ebp-8]
 00503FE1    mov         ax,1
 00503FE5    call        004CF5C8
 00503FEA    test        al,al
>00503FEC    je          00504093
 00503FF2    mov         eax,dword ptr [ebp-8]
 00503FF5    call        00503A8C
>00503FFA    jmp         00504093
 00503FFF    mov         eax,[0056E040];^gvar_005720C0
 00504004    cmp         byte ptr [eax],0
>00504007    je          00504049
 00504009    mov         eax,dword ptr [ebp-4]
 0050400C    mov         eax,dword ptr [eax+3AC];TfmModules.cbMapSecondCopy:TCheckBox
 00504012    mov         edx,dword ptr [eax]
 00504014    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050401A    test        al,al
>0050401C    jne         00504025
 0050401E    xor         eax,eax
 00504020    mov         dword ptr [ebp-0C],eax
>00504023    jmp         0050402B
 00504025    mov         eax,dword ptr [ebp-10]
 00504028    mov         dword ptr [ebp-0C],eax
 0050402B    mov         ecx,dword ptr [ebp-8]
 0050402E    mov         edx,18
 00504033    mov         eax,dword ptr [ebp-0C]
 00504036    call        004FF1E4
 0050403B    test        al,al
>0050403D    je          00504093
 0050403F    mov         eax,dword ptr [ebp-8]
 00504042    call        00503A8C
>00504047    jmp         00504093
 00504049    mov         eax,dword ptr [ebp-4]
 0050404C    mov         eax,dword ptr [eax+3AC];TfmModules.cbMapSecondCopy:TCheckBox
 00504052    mov         edx,dword ptr [eax]
 00504054    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050405A    test        al,al
>0050405C    jne         00504065
 0050405E    xor         eax,eax
 00504060    mov         dword ptr [ebp-0C],eax
>00504063    jmp         0050406C
 00504065    mov         dword ptr [ebp-0C],1
 0050406C    mov         ax,word ptr [ebp-0C]
 00504070    push        eax
 00504071    mov         eax,dword ptr [ebp-8]
 00504074    push        eax
 00504075    mov         cx,18
 00504079    mov         dx,1
 0050407D    mov         eax,1
 00504082    call        004FB62C
 00504087    test        al,al
>00504089    je          00504093
 0050408B    mov         eax,dword ptr [ebp-8]
 0050408E    call        00503A8C
 00504093    xor         eax,eax
 00504095    pop         edx
 00504096    pop         ecx
 00504097    pop         ecx
 00504098    mov         dword ptr fs:[eax],edx
 0050409B    push        5040B0
 005040A0    mov         eax,dword ptr [ebp-8]
 005040A3    call        TObject.Free
 005040A8    ret
>005040A9    jmp         @HandleFinally
>005040AE    jmp         005040A0
 005040B0    xor         eax,eax
 005040B2    pop         edx
 005040B3    pop         ecx
 005040B4    pop         ecx
 005040B5    mov         dword ptr fs:[eax],edx
 005040B8    push        5040CD
 005040BD    lea         eax,[ebp-18]
 005040C0    call        @LStrClr
 005040C5    ret
>005040C6    jmp         @HandleFinally
>005040CB    jmp         005040BD
 005040CD    mov         esp,ebp
 005040CF    pop         ebp
 005040D0    ret
*}
end;

//005040D4
procedure TfmModules.miAllClick(Sender:TObject);
begin
{*
 005040D4    push        ebp
 005040D5    mov         ebp,esp
 005040D7    add         esp,0FFFFFFF4
 005040DA    mov         dword ptr [ebp-0C],edx
 005040DD    mov         dword ptr [ebp-4],eax
 005040E0    mov         eax,[0056E5A4];^gvar_0056DF04
 005040E5    mov         byte ptr [eax],0
 005040E8    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>005040EF    jle         0050415A
 005040F1    mov         eax,dword ptr [ebp-4]
 005040F4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005040FA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504100    call        0045AF28
 00504105    test        eax,eax
>00504107    jle         0050415A
 00504109    mov         word ptr [ebp-6],0
>0050410F    jmp         00504134
 00504111    movzx       edx,word ptr [ebp-6]
 00504115    mov         eax,dword ptr [ebp-4]
 00504118    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050411E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504124    call        0045AF80
 00504129    mov         dl,1
 0050412B    call        0045A6C8
 00504130    inc         word ptr [ebp-6]
 00504134    mov         eax,dword ptr [ebp-4]
 00504137    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050413D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504143    call        0045AF28
 00504148    movzx       edx,word ptr [ebp-6]
 0050414C    cmp         eax,edx
>0050414E    jle         0050415A
 00504150    mov         eax,[0056E5A4];^gvar_0056DF04
 00504155    cmp         byte ptr [eax],0
>00504158    je          00504111
 0050415A    mov         esp,ebp
 0050415C    pop         ebp
 0050415D    ret
*}
end;

//00504160
procedure TfmModules.miLoadRoadMapFileClick(Sender:TObject);
begin
{*
 00504160    push        ebp
 00504161    mov         ebp,esp
 00504163    add         esp,0FFFFFFE8
 00504166    xor         ecx,ecx
 00504168    mov         dword ptr [ebp-18],ecx
 0050416B    mov         dword ptr [ebp-14],ecx
 0050416E    mov         dword ptr [ebp-10],ecx
 00504171    mov         dword ptr [ebp-0C],edx
 00504174    mov         dword ptr [ebp-4],eax
 00504177    xor         eax,eax
 00504179    push        ebp
 0050417A    push        504307
 0050417F    push        dword ptr fs:[eax]
 00504182    mov         dword ptr fs:[eax],esp
 00504185    mov         eax,dword ptr [ebp-4]
 00504188    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 0050418E    xor         edx,edx
 00504190    call        TImage.SetVisible
 00504195    mov         eax,[0056E5A4];^gvar_0056DF04
 0050419A    mov         byte ptr [eax],0
 0050419D    mov         dl,1
 0050419F    mov         eax,[0041DE14];TMemoryStream
 005041A4    call        TObject.Create;TMemoryStream.Create
 005041A9    mov         dword ptr [ebp-8],eax
 005041AC    xor         eax,eax
 005041AE    push        ebp
 005041AF    push        5042DD
 005041B4    push        dword ptr fs:[eax]
 005041B7    mov         dword ptr fs:[eax],esp
 005041BA    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005041C0    mov         edx,dword ptr [edx]
 005041C2    lea         eax,[ebp-10]
 005041C5    mov         ecx,50431C;'Modules\'
 005041CA    call        @LStrCat3
 005041CF    mov         edx,dword ptr [ebp-10]
 005041D2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005041D7    mov         eax,dword ptr [eax]
 005041D9    mov         eax,dword ptr [eax+35C]
 005041DF    call        TOpenDialog.SetInitialDir
 005041E4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005041E9    mov         eax,dword ptr [eax]
 005041EB    mov         eax,dword ptr [eax+35C]
 005041F1    add         eax,78
 005041F4    call        @LStrClr
 005041F9    mov         eax,[0056E040];^gvar_005720C0
 005041FE    cmp         byte ptr [eax],0
>00504201    je          0050421F
 00504203    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00504208    mov         eax,dword ptr [eax]
 0050420A    mov         eax,dword ptr [eax+35C]
 00504210    add         eax,60
 00504213    mov         edx,504330;'Dir |   0001.rpm|All|*.*'
 00504218    call        @LStrAsg
>0050421D    jmp         00504239
 0050421F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00504224    mov         eax,dword ptr [eax]
 00504226    mov         eax,dword ptr [eax+35C]
 0050422C    add         eax,60
 0050422F    mov         edx,504354;'Dir |   01.rpm|All|*.*'
 00504234    call        @LStrAsg
 00504239    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050423E    mov         eax,dword ptr [eax]
 00504240    mov         eax,dword ptr [eax+35C]
 00504246    mov         edx,dword ptr [eax]
 00504248    call        dword ptr [edx+3C]
 0050424B    test        al,al
>0050424D    je          00504298
 0050424F    lea         edx,[ebp-14]
 00504252    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00504257    mov         eax,dword ptr [eax]
 00504259    mov         eax,dword ptr [eax+35C]
 0050425F    call        TOpenDialog.GetFileName
 00504264    mov         eax,dword ptr [ebp-14]
 00504267    call        0040C94C
 0050426C    test        al,al
>0050426E    je          00504298
 00504270    lea         edx,[ebp-18]
 00504273    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00504278    mov         eax,dword ptr [eax]
 0050427A    mov         eax,dword ptr [eax+35C]
 00504280    call        TOpenDialog.GetFileName
 00504285    mov         edx,dword ptr [ebp-18]
 00504288    mov         eax,dword ptr [ebp-8]
 0050428B    call        00423F8C
 00504290    mov         eax,dword ptr [ebp-8]
 00504293    call        00503A8C
 00504298    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050429D    mov         eax,dword ptr [eax]
 0050429F    mov         eax,dword ptr [eax+35C]
 005042A5    add         eax,78
 005042A8    call        @LStrClr
 005042AD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005042B2    mov         eax,dword ptr [eax]
 005042B4    mov         eax,dword ptr [eax+35C]
 005042BA    add         eax,60
 005042BD    mov         edx,504374;'All|*.*'
 005042C2    call        @LStrAsg
 005042C7    xor         eax,eax
 005042C9    pop         edx
 005042CA    pop         ecx
 005042CB    pop         ecx
 005042CC    mov         dword ptr fs:[eax],edx
 005042CF    push        5042E4
 005042D4    mov         eax,dword ptr [ebp-8]
 005042D7    call        TObject.Free
 005042DC    ret
>005042DD    jmp         @HandleFinally
>005042E2    jmp         005042D4
 005042E4    xor         eax,eax
 005042E6    pop         edx
 005042E7    pop         ecx
 005042E8    pop         ecx
 005042E9    mov         dword ptr fs:[eax],edx
 005042EC    push        50430E
 005042F1    lea         eax,[ebp-18]
 005042F4    mov         edx,2
 005042F9    call        @LStrArrayClr
 005042FE    lea         eax,[ebp-10]
 00504301    call        @LStrClr
 00504306    ret
>00504307    jmp         @HandleFinally
>0050430C    jmp         005042F1
 0050430E    mov         esp,ebp
 00504310    pop         ebp
 00504311    ret
*}
end;

//0050437C
procedure TfmModules.miDumpClick(Sender:TObject);
begin
{*
 0050437C    push        ebp
 0050437D    mov         ebp,esp
 0050437F    xor         ecx,ecx
 00504381    push        ecx
 00504382    push        ecx
 00504383    push        ecx
 00504384    push        ecx
 00504385    push        ecx
 00504386    push        ecx
 00504387    push        ecx
 00504388    mov         dword ptr [ebp-0C],edx
 0050438B    mov         dword ptr [ebp-4],eax
 0050438E    xor         eax,eax
 00504390    push        ebp
 00504391    push        5044E4
 00504396    push        dword ptr fs:[eax]
 00504399    mov         dword ptr fs:[eax],esp
 0050439C    mov         eax,[0056E040];^gvar_005720C0
 005043A1    cmp         byte ptr [eax],0
>005043A4    je          0050442A
 005043AA    mov         eax,[0056E2D0];^gvar_0056DF38
 005043AF    push        dword ptr [eax]
 005043B1    push        5044F8;'Modules\   '
 005043B6    mov         eax,dword ptr [ebp-4]
 005043B9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005043BF    mov         edx,dword ptr [eax]
 005043C1    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005043C7    mov         edx,eax
 005043C9    mov         eax,dword ptr [ebp-4]
 005043CC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005043D2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005043D8    call        0045AF80
 005043DD    mov         ecx,dword ptr [eax+24]
 005043E0    lea         eax,[ebp-14]
 005043E3    mov         edx,50450C;'$'
 005043E8    call        @LStrCat3
 005043ED    mov         eax,dword ptr [ebp-14]
 005043F0    xor         edx,edx
 005043F2    call        0040C4A8
 005043F7    call        00502410
 005043FC    add         eax,eax
 005043FE    movzx       eax,word ptr [eax*8+57266C]
 00504406    lea         ecx,[ebp-10]
 00504409    mov         edx,4
 0050440E    call        IntToHex
 00504413    push        dword ptr [ebp-10]
 00504416    push        504518;'.rpm'
 0050441B    lea         eax,[ebp-8]
 0050441E    mov         edx,4
 00504423    call        @LStrCatN
>00504428    jmp         005044A8
 0050442A    mov         eax,[0056E2D0];^gvar_0056DF38
 0050442F    push        dword ptr [eax]
 00504431    push        5044F8;'Modules\   '
 00504436    mov         eax,dword ptr [ebp-4]
 00504439    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050443F    mov         edx,dword ptr [eax]
 00504441    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00504447    mov         edx,eax
 00504449    mov         eax,dword ptr [ebp-4]
 0050444C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504452    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504458    call        0045AF80
 0050445D    mov         ecx,dword ptr [eax+24]
 00504460    lea         eax,[ebp-1C]
 00504463    mov         edx,50450C;'$'
 00504468    call        @LStrCat3
 0050446D    mov         eax,dword ptr [ebp-1C]
 00504470    xor         edx,edx
 00504472    call        0040C4A8
 00504477    call        00502410
 0050447C    add         eax,eax
 0050447E    movzx       eax,word ptr [eax*8+57266C]
 00504486    lea         ecx,[ebp-18]
 00504489    mov         edx,2
 0050448E    call        IntToHex
 00504493    push        dword ptr [ebp-18]
 00504496    push        504518;'.rpm'
 0050449B    lea         eax,[ebp-8]
 0050449E    mov         edx,4
 005044A3    call        @LStrCatN
 005044A8    mov         eax,dword ptr [ebp-8]
 005044AB    call        0040C94C
 005044B0    test        al,al
>005044B2    je          005044C1
 005044B4    mov         edx,dword ptr [ebp-8]
 005044B7    mov         eax,[004F3EB8];TfmViewer
 005044BC    call        004F4640
 005044C1    xor         eax,eax
 005044C3    pop         edx
 005044C4    pop         ecx
 005044C5    pop         ecx
 005044C6    mov         dword ptr fs:[eax],edx
 005044C9    push        5044EB
 005044CE    lea         eax,[ebp-1C]
 005044D1    mov         edx,4
 005044D6    call        @LStrArrayClr
 005044DB    lea         eax,[ebp-8]
 005044DE    call        @LStrClr
 005044E3    ret
>005044E4    jmp         @HandleFinally
>005044E9    jmp         005044CE
 005044EB    mov         esp,ebp
 005044ED    pop         ebp
 005044EE    ret
*}
end;

//00504520
procedure TfmModules.miUnselectClick(Sender:TObject);
begin
{*
 00504520    push        ebp
 00504521    mov         ebp,esp
 00504523    add         esp,0FFFFFFF4
 00504526    mov         dword ptr [ebp-0C],edx
 00504529    mov         dword ptr [ebp-4],eax
 0050452C    mov         eax,[0056E5A4];^gvar_0056DF04
 00504531    mov         byte ptr [eax],0
 00504534    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050453B    jle         005045A6
 0050453D    mov         eax,dword ptr [ebp-4]
 00504540    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504546    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050454C    call        0045AF28
 00504551    test        eax,eax
>00504553    jle         005045A6
 00504555    mov         word ptr [ebp-6],0
>0050455B    jmp         00504580
 0050455D    movzx       edx,word ptr [ebp-6]
 00504561    mov         eax,dword ptr [ebp-4]
 00504564    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050456A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504570    call        0045AF80
 00504575    xor         edx,edx
 00504577    call        0045A6C8
 0050457C    inc         word ptr [ebp-6]
 00504580    mov         eax,dword ptr [ebp-4]
 00504583    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504589    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050458F    call        0045AF28
 00504594    movzx       edx,word ptr [ebp-6]
 00504598    cmp         eax,edx
>0050459A    jle         005045A6
 0050459C    mov         eax,[0056E5A4];^gvar_0056DF04
 005045A1    cmp         byte ptr [eax],0
>005045A4    je          0050455D
 005045A6    mov         esp,ebp
 005045A8    pop         ebp
 005045A9    ret
*}
end;

//005045AC
procedure TfmModules.miInvertSelectedClick(Sender:TObject);
begin
{*
 005045AC    push        ebp
 005045AD    mov         ebp,esp
 005045AF    add         esp,0FFFFFFF4
 005045B2    mov         dword ptr [ebp-0C],edx
 005045B5    mov         dword ptr [ebp-4],eax
 005045B8    mov         eax,[0056E5A4];^gvar_0056DF04
 005045BD    mov         byte ptr [eax],0
 005045C0    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>005045C7    jle         00504655
 005045CD    mov         eax,dword ptr [ebp-4]
 005045D0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005045D6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005045DC    call        0045AF28
 005045E1    test        eax,eax
>005045E3    jle         00504655
 005045E5    mov         word ptr [ebp-6],0
>005045EB    jmp         0050462F
 005045ED    movzx       edx,word ptr [ebp-6]
 005045F1    mov         eax,dword ptr [ebp-4]
 005045F4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005045FA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504600    call        0045AF80
 00504605    call        0045A66C
 0050460A    xor         al,1
 0050460C    push        eax
 0050460D    movzx       edx,word ptr [ebp-6]
 00504611    mov         eax,dword ptr [ebp-4]
 00504614    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050461A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504620    call        0045AF80
 00504625    pop         edx
 00504626    call        0045A6C8
 0050462B    inc         word ptr [ebp-6]
 0050462F    mov         eax,dword ptr [ebp-4]
 00504632    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504638    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050463E    call        0045AF28
 00504643    movzx       edx,word ptr [ebp-6]
 00504647    cmp         eax,edx
>00504649    jle         00504655
 0050464B    mov         eax,[0056E5A4];^gvar_0056DF04
 00504650    cmp         byte ptr [eax],0
>00504653    je          005045ED
 00504655    mov         esp,ebp
 00504657    pop         ebp
 00504658    ret
*}
end;

//0050465C
{*procedure sub_0050465C(?:?);
begin
 0050465C    push        ebp
 0050465D    mov         ebp,esp
 0050465F    mov         ecx,18
 00504664    push        0
 00504666    push        0
 00504668    dec         ecx
>00504669    jne         00504664
 0050466B    push        ecx
 0050466C    push        ebx
 0050466D    mov         dword ptr [ebp-4],eax
 00504670    xor         eax,eax
 00504672    push        ebp
 00504673    push        5051A6
 00504678    push        dword ptr fs:[eax]
 0050467B    mov         dword ptr fs:[eax],esp
 0050467E    lea         edx,[ebp-2C]
 00504681    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504686    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 0050468C    call        TPanel.GetCaption
 00504691    mov         eax,dword ptr [ebp-2C]
 00504694    mov         edx,10000
 00504699    call        0040C4A8
 0050469E    mov         dword ptr [ebp-28],eax
 005046A1    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005046A7    mov         edx,dword ptr [edx]
 005046A9    lea         eax,[ebp-30]
 005046AC    mov         ecx,5051BC;'Modules'
 005046B1    call        @LStrCat3
 005046B6    mov         eax,dword ptr [ebp-30]
 005046B9    call        0040C9A4
 005046BE    test        al,al
>005046C0    jne         005046F4
 005046C2    push        5051CC;'Cannot create '
 005046C7    mov         eax,[0056E2D0];^gvar_0056DF38
 005046CC    push        dword ptr [eax]
 005046CE    push        5051BC;'Modules'
 005046D3    lea         eax,[ebp-34]
 005046D6    mov         edx,3
 005046DB    call        @LStrCatN
 005046E0    mov         ecx,dword ptr [ebp-34]
 005046E3    mov         dl,1
 005046E5    mov         eax,[0040B004];Exception
 005046EA    call        Exception.Create;Exception.Create
 005046EF    call        @RaiseExcept
 005046F4    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005046F9    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 005046FF    mov         edx,dword ptr [eax]
 00504701    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00504707    test        al,al
>00504709    jne         0050475E
 0050470B    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00504711    mov         edx,dword ptr [edx]
 00504713    lea         eax,[ebp-38]
 00504716    mov         ecx,5051E4;'Modules\Copy1'
 0050471B    call        @LStrCat3
 00504720    mov         eax,dword ptr [ebp-38]
 00504723    call        0040C9A4
 00504728    test        al,al
>0050472A    jne         0050475E
 0050472C    push        5051CC;'Cannot create '
 00504731    mov         eax,[0056E2D0];^gvar_0056DF38
 00504736    push        dword ptr [eax]
 00504738    push        5051BC;'Modules'
 0050473D    lea         eax,[ebp-3C]
 00504740    mov         edx,3
 00504745    call        @LStrCatN
 0050474A    mov         ecx,dword ptr [ebp-3C]
 0050474D    mov         dl,1
 0050474F    mov         eax,[0040B004];Exception
 00504754    call        Exception.Create;Exception.Create
 00504759    call        @RaiseExcept
 0050475E    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00504765    jle         00505170
 0050476B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504770    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504776    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050477C    call        0045AF28
 00504781    test        eax,eax
>00504783    jle         00505170
 00504789    mov         dl,1
 0050478B    mov         eax,[0041DE14];TMemoryStream
 00504790    call        TObject.Create;TMemoryStream.Create
 00504795    mov         dword ptr [ebp-8],eax
 00504798    mov         eax,[0056E5A4];^gvar_0056DF04
 0050479D    mov         byte ptr [eax],0
 005047A0    xor         eax,eax
 005047A2    push        ebp
 005047A3    push        50513D
 005047A8    push        dword ptr fs:[eax]
 005047AB    mov         dword ptr fs:[eax],esp
 005047AE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005047B3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005047B9    xor         edx,edx
 005047BB    call        TImage.SetPopupMenu
 005047C0    cmp         byte ptr ds:[56D40C],0;gvar_0056D40C:Boolean
>005047C7    je          0050480C
 005047C9    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005047CE    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005047D4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005047DA    mov         edx,dword ptr [ebp-4]
 005047DD    call        0045AF80
 005047E2    mov         ecx,dword ptr [eax+24]
 005047E5    lea         eax,[ebp-40]
 005047E8    mov         edx,5051FC;'$'
 005047ED    call        @LStrCat3
 005047F2    mov         eax,dword ptr [ebp-40]
 005047F5    xor         edx,edx
 005047F7    call        0040C4A8
 005047FC    mov         edx,dword ptr [ebp-8]
 005047FF    call        004CF5C8
 00504804    mov         byte ptr [ebp-0D],al
>00504807    jmp         00504A3E
 0050480C    mov         eax,[0056E040];^gvar_005720C0
 00504811    cmp         byte ptr [eax],0
>00504814    je          00504934
 0050481A    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050481F    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504825    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050482B    mov         edx,dword ptr [ebp-4]
 0050482E    call        0045AF80
 00504833    mov         eax,dword ptr [eax+8]
 00504836    lea         ecx,[ebp-44]
 00504839    mov         edx,1
 0050483E    mov         ebx,dword ptr [eax]
 00504840    call        dword ptr [ebx+0C]
 00504843    mov         eax,dword ptr [ebp-44]
 00504846    mov         edx,505208;'1'
 0050484B    call        @LStrCmp
>00504850    jne         0050489B
 00504852    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504857    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050485D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504863    mov         edx,dword ptr [ebp-4]
 00504866    call        0045AF80
 0050486B    mov         ecx,dword ptr [eax+24]
 0050486E    lea         eax,[ebp-48]
 00504871    mov         edx,5051FC;'$'
 00504876    call        @LStrCat3
 0050487B    mov         eax,dword ptr [ebp-48]
 0050487E    xor         edx,edx
 00504880    call        0040C4A8
 00504885    call        00502410
 0050488A    add         eax,eax
 0050488C    mov         eax,dword ptr [eax*8+572670]
 00504893    add         eax,dword ptr [ebp-28]
 00504896    mov         dword ptr [ebp-24],eax
>00504899    jmp         005048DF
 0050489B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005048A0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005048A6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005048AC    mov         edx,dword ptr [ebp-4]
 005048AF    call        0045AF80
 005048B4    mov         ecx,dword ptr [eax+24]
 005048B7    lea         eax,[ebp-4C]
 005048BA    mov         edx,5051FC;'$'
 005048BF    call        @LStrCat3
 005048C4    mov         eax,dword ptr [ebp-4C]
 005048C7    xor         edx,edx
 005048C9    call        0040C4A8
 005048CE    call        00502410
 005048D3    add         eax,eax
 005048D5    mov         eax,dword ptr [eax*8+572670]
 005048DC    mov         dword ptr [ebp-24],eax
 005048DF    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005048E4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005048EA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005048F0    mov         edx,dword ptr [ebp-4]
 005048F3    call        0045AF80
 005048F8    mov         ecx,dword ptr [eax+24]
 005048FB    lea         eax,[ebp-50]
 005048FE    mov         edx,5051FC;'$'
 00504903    call        @LStrCat3
 00504908    mov         eax,dword ptr [ebp-50]
 0050490B    xor         edx,edx
 0050490D    call        0040C4A8
 00504912    call        00502410
 00504917    add         eax,eax
 00504919    movzx       edx,word ptr [eax*8+572674]
 00504921    mov         ecx,dword ptr [ebp-8]
 00504924    mov         eax,dword ptr [ebp-24]
 00504927    call        004FF1E4
 0050492C    mov         byte ptr [ebp-0D],al
>0050492F    jmp         00504A3E
 00504934    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504939    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050493F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504945    mov         edx,dword ptr [ebp-4]
 00504948    call        0045AF80
 0050494D    mov         eax,dword ptr [eax+8]
 00504950    lea         ecx,[ebp-54]
 00504953    mov         edx,1
 00504958    mov         ebx,dword ptr [eax]
 0050495A    call        dword ptr [ebx+0C]
 0050495D    mov         eax,dword ptr [ebp-54]
 00504960    xor         edx,edx
 00504962    call        0040C4A8
 00504967    push        eax
 00504968    mov         eax,dword ptr [ebp-8]
 0050496B    push        eax
 0050496C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504971    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504977    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050497D    mov         edx,dword ptr [ebp-4]
 00504980    call        0045AF80
 00504985    mov         ecx,dword ptr [eax+24]
 00504988    lea         eax,[ebp-58]
 0050498B    mov         edx,5051FC;'$'
 00504990    call        @LStrCat3
 00504995    mov         eax,dword ptr [ebp-58]
 00504998    xor         edx,edx
 0050499A    call        0040C4A8
 0050499F    call        00502410
 005049A4    add         eax,eax
 005049A6    mov         ax,word ptr [eax*8+572674]
 005049AE    push        eax
 005049AF    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005049B4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005049BA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005049C0    mov         edx,dword ptr [ebp-4]
 005049C3    call        0045AF80
 005049C8    mov         ecx,dword ptr [eax+24]
 005049CB    lea         eax,[ebp-5C]
 005049CE    mov         edx,5051FC;'$'
 005049D3    call        @LStrCat3
 005049D8    mov         eax,dword ptr [ebp-5C]
 005049DB    xor         edx,edx
 005049DD    call        0040C4A8
 005049E2    call        00502410
 005049E7    add         eax,eax
 005049E9    mov         ax,word ptr [eax*8+572670]
 005049F1    push        eax
 005049F2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005049F7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005049FD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504A03    mov         edx,dword ptr [ebp-4]
 00504A06    call        0045AF80
 00504A0B    mov         ecx,dword ptr [eax+24]
 00504A0E    lea         eax,[ebp-60]
 00504A11    mov         edx,5051FC;'$'
 00504A16    call        @LStrCat3
 00504A1B    mov         eax,dword ptr [ebp-60]
 00504A1E    xor         edx,edx
 00504A20    call        0040C4A8
 00504A25    call        00502410
 00504A2A    add         eax,eax
 00504A2C    movzx       eax,word ptr [eax*8+57266E]
 00504A34    pop         edx
 00504A35    pop         ecx
 00504A36    call        004FB62C
 00504A3B    mov         byte ptr [ebp-0D],al
 00504A3E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504A43    mov         edx,dword ptr [eax+300];TfmModules.pmModules:TPopupMenu
 00504A49    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504A4E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504A54    call        TImage.SetPopupMenu
 00504A59    cmp         byte ptr [ebp-0D],0
>00504A5D    je          00504C59
 00504A63    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504A68    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504A6E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504A74    mov         edx,dword ptr [ebp-4]
 00504A77    call        0045AF80
 00504A7C    mov         eax,dword ptr [eax+8]
 00504A7F    lea         ecx,[ebp-64]
 00504A82    mov         edx,1
 00504A87    mov         ebx,dword ptr [eax]
 00504A89    call        dword ptr [ebx+0C]
 00504A8C    mov         eax,dword ptr [ebp-64]
 00504A8F    mov         edx,505208;'1'
 00504A94    call        @LStrCmp
>00504A99    jne         00504B75
 00504A9F    mov         eax,[0056E040];^gvar_005720C0
 00504AA4    cmp         byte ptr [eax],0
>00504AA7    je          00504B0F
 00504AA9    mov         eax,[0056E2D0];^gvar_0056DF38
 00504AAE    push        dword ptr [eax]
 00504AB0    push        505214;'Modules\Copy1\   '
 00504AB5    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504ABA    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504AC0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504AC6    mov         edx,dword ptr [ebp-4]
 00504AC9    call        0045AF80
 00504ACE    mov         ecx,dword ptr [eax+24]
 00504AD1    lea         eax,[ebp-6C]
 00504AD4    mov         edx,5051FC;'$'
 00504AD9    call        @LStrCat3
 00504ADE    mov         eax,dword ptr [ebp-6C]
 00504AE1    xor         edx,edx
 00504AE3    call        0040C4A8
 00504AE8    lea         ecx,[ebp-68]
 00504AEB    mov         edx,4
 00504AF0    call        IntToHex
 00504AF5    push        dword ptr [ebp-68]
 00504AF8    push        505230;'.rpm'
 00504AFD    lea         eax,[ebp-0C]
 00504B00    mov         edx,4
 00504B05    call        @LStrCatN
>00504B0A    jmp         00504C49
 00504B0F    mov         eax,[0056E2D0];^gvar_0056DF38
 00504B14    push        dword ptr [eax]
 00504B16    push        505214;'Modules\Copy1\   '
 00504B1B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504B20    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504B26    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504B2C    mov         edx,dword ptr [ebp-4]
 00504B2F    call        0045AF80
 00504B34    mov         ecx,dword ptr [eax+24]
 00504B37    lea         eax,[ebp-74]
 00504B3A    mov         edx,5051FC;'$'
 00504B3F    call        @LStrCat3
 00504B44    mov         eax,dword ptr [ebp-74]
 00504B47    xor         edx,edx
 00504B49    call        0040C4A8
 00504B4E    lea         ecx,[ebp-70]
 00504B51    mov         edx,2
 00504B56    call        IntToHex
 00504B5B    push        dword ptr [ebp-70]
 00504B5E    push        505230;'.rpm'
 00504B63    lea         eax,[ebp-0C]
 00504B66    mov         edx,4
 00504B6B    call        @LStrCatN
>00504B70    jmp         00504C49
 00504B75    mov         eax,[0056E040];^gvar_005720C0
 00504B7A    cmp         byte ptr [eax],0
>00504B7D    je          00504BE2
 00504B7F    mov         eax,[0056E2D0];^gvar_0056DF38
 00504B84    push        dword ptr [eax]
 00504B86    push        505240;'Modules\   '
 00504B8B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504B90    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504B96    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504B9C    mov         edx,dword ptr [ebp-4]
 00504B9F    call        0045AF80
 00504BA4    mov         ecx,dword ptr [eax+24]
 00504BA7    lea         eax,[ebp-7C]
 00504BAA    mov         edx,5051FC;'$'
 00504BAF    call        @LStrCat3
 00504BB4    mov         eax,dword ptr [ebp-7C]
 00504BB7    xor         edx,edx
 00504BB9    call        0040C4A8
 00504BBE    lea         ecx,[ebp-78]
 00504BC1    mov         edx,4
 00504BC6    call        IntToHex
 00504BCB    push        dword ptr [ebp-78]
 00504BCE    push        505230;'.rpm'
 00504BD3    lea         eax,[ebp-0C]
 00504BD6    mov         edx,4
 00504BDB    call        @LStrCatN
>00504BE0    jmp         00504C49
 00504BE2    mov         eax,[0056E2D0];^gvar_0056DF38
 00504BE7    push        dword ptr [eax]
 00504BE9    push        505240;'Modules\   '
 00504BEE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504BF3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504BF9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504BFF    mov         edx,dword ptr [ebp-4]
 00504C02    call        0045AF80
 00504C07    mov         ecx,dword ptr [eax+24]
 00504C0A    lea         eax,[ebp-84]
 00504C10    mov         edx,5051FC;'$'
 00504C15    call        @LStrCat3
 00504C1A    mov         eax,dword ptr [ebp-84]
 00504C20    xor         edx,edx
 00504C22    call        0040C4A8
 00504C27    lea         ecx,[ebp-80]
 00504C2A    mov         edx,2
 00504C2F    call        IntToHex
 00504C34    push        dword ptr [ebp-80]
 00504C37    push        505230;'.rpm'
 00504C3C    lea         eax,[ebp-0C]
 00504C3F    mov         edx,4
 00504C44    call        @LStrCatN
 00504C49    mov         edx,dword ptr [ebp-0C]
 00504C4C    mov         eax,dword ptr [ebp-8]
 00504C4F    call        00423E84
>00504C54    jmp         00504D4A
 00504C59    mov         eax,[0056E040];^gvar_005720C0
 00504C5E    cmp         byte ptr [eax],0
>00504C61    je          00504CD2
 00504C63    mov         eax,[0056E2D0];^gvar_0056DF38
 00504C68    push        dword ptr [eax]
 00504C6A    push        505240;'Modules\   '
 00504C6F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504C74    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504C7A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504C80    mov         edx,dword ptr [ebp-4]
 00504C83    call        0045AF80
 00504C88    mov         ecx,dword ptr [eax+24]
 00504C8B    lea         eax,[ebp-8C]
 00504C91    mov         edx,5051FC;'$'
 00504C96    call        @LStrCat3
 00504C9B    mov         eax,dword ptr [ebp-8C]
 00504CA1    xor         edx,edx
 00504CA3    call        0040C4A8
 00504CA8    lea         ecx,[ebp-88]
 00504CAE    mov         edx,4
 00504CB3    call        IntToHex
 00504CB8    push        dword ptr [ebp-88]
 00504CBE    push        505254;'.bad'
 00504CC3    lea         eax,[ebp-0C]
 00504CC6    mov         edx,4
 00504CCB    call        @LStrCatN
>00504CD0    jmp         00504D3F
 00504CD2    mov         eax,[0056E2D0];^gvar_0056DF38
 00504CD7    push        dword ptr [eax]
 00504CD9    push        505240;'Modules\   '
 00504CDE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504CE3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504CE9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504CEF    mov         edx,dword ptr [ebp-4]
 00504CF2    call        0045AF80
 00504CF7    mov         ecx,dword ptr [eax+24]
 00504CFA    lea         eax,[ebp-94]
 00504D00    mov         edx,5051FC;'$'
 00504D05    call        @LStrCat3
 00504D0A    mov         eax,dword ptr [ebp-94]
 00504D10    xor         edx,edx
 00504D12    call        0040C4A8
 00504D17    lea         ecx,[ebp-90]
 00504D1D    mov         edx,2
 00504D22    call        IntToHex
 00504D27    push        dword ptr [ebp-90]
 00504D2D    push        505254;'.bad'
 00504D32    lea         eax,[ebp-0C]
 00504D35    mov         edx,4
 00504D3A    call        @LStrCatN
 00504D3F    mov         edx,dword ptr [ebp-0C]
 00504D42    mov         eax,dword ptr [ebp-8]
 00504D45    call        00423E84
 00504D4A    cmp         byte ptr [ebp-0D],0
>00504D4E    je          00505102
 00504D54    cmp         dword ptr [ebp-8],0
>00504D58    je          00505102
 00504D5E    mov         eax,dword ptr [ebp-8]
 00504D61    mov         edx,dword ptr [eax]
 00504D63    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00504D65    cmp         edx,0
>00504D68    jne         00504D75
 00504D6A    cmp         eax,0
>00504D6D    jbe         00505102
>00504D73    jmp         00504D7B
>00504D75    jle         00505102
 00504D7B    xor         ecx,ecx
 00504D7D    xor         edx,edx
 00504D7F    mov         eax,dword ptr [ebp-8]
 00504D82    mov         ebx,dword ptr [eax]
 00504D84    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00504D87    mov         eax,dword ptr [ebp-8]
 00504D8A    call        004CE56C
 00504D8F    mov         dword ptr [ebp-14],eax
 00504D92    mov         eax,dword ptr [ebp-8]
 00504D95    call        004CE528
 00504D9A    mov         byte ptr [ebp-15],al
 00504D9D    cmp         dword ptr [ebp-14],4C594F52
>00504DA4    jne         00504F70
 00504DAA    mov         eax,dword ptr [ebp-8]
 00504DAD    call        00501404
 00504DB2    test        al,al
>00504DB4    je          00504DE3
 00504DB6    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504DBB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504DC1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504DC7    mov         edx,dword ptr [ebp-4]
 00504DCA    call        0045AF80
 00504DCF    mov         eax,dword ptr [eax+8]
 00504DD2    mov         ecx,505264;'OK'
 00504DD7    mov         edx,5
 00504DDC    mov         ebx,dword ptr [eax]
 00504DDE    call        dword ptr [ebx+20]
>00504DE1    jmp         00504E0E
 00504DE3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504DE8    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504DEE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504DF4    mov         edx,dword ptr [ebp-4]
 00504DF7    call        0045AF80
 00504DFC    mov         eax,dword ptr [eax+8]
 00504DFF    mov         ecx,505270;'BAD'
 00504E04    mov         edx,5
 00504E09    mov         ebx,dword ptr [eax]
 00504E0B    call        dword ptr [ebx+20]
 00504E0E    xor         ecx,ecx
 00504E10    mov         edx,10
 00504E15    mov         eax,dword ptr [ebp-8]
 00504E18    mov         ebx,dword ptr [eax]
 00504E1A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00504E1D    lea         eax,[ebp-1C]
 00504E20    call        @LStrClr
 00504E25    xor         eax,eax
 00504E27    mov         dword ptr [ebp-20],eax
 00504E2A    mov         eax,dword ptr [ebp-8]
 00504E2D    call        004CE528
 00504E32    mov         edx,eax
 00504E34    lea         eax,[ebp-98]
 00504E3A    call        @LStrFromChar
 00504E3F    mov         edx,dword ptr [ebp-98]
 00504E45    lea         eax,[ebp-1C]
 00504E48    call        @LStrCat
 00504E4D    inc         dword ptr [ebp-20]
 00504E50    cmp         dword ptr [ebp-20],8
>00504E54    jne         00504E2A
 00504E56    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504E5B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504E61    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504E67    mov         edx,dword ptr [ebp-4]
 00504E6A    call        0045AF80
 00504E6F    mov         eax,dword ptr [eax+8]
 00504E72    mov         ecx,dword ptr [ebp-1C]
 00504E75    mov         edx,4
 00504E7A    mov         ebx,dword ptr [eax]
 00504E7C    call        dword ptr [ebx+20]
 00504E7F    xor         ecx,ecx
 00504E81    mov         edx,18
 00504E86    mov         eax,dword ptr [ebp-8]
 00504E89    mov         ebx,dword ptr [eax]
 00504E8B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00504E8E    mov         eax,dword ptr [ebp-8]
 00504E91    call        004CE528
 00504E96    and         eax,0FF
 00504E9B    lea         edx,[ebp-0A0]
 00504EA1    call        005012E4
 00504EA6    push        dword ptr [ebp-0A0]
 00504EAC    push        50527C;'/'
 00504EB1    mov         eax,dword ptr [ebp-8]
 00504EB4    call        004CE528
 00504EB9    and         eax,0FF
 00504EBE    lea         edx,[ebp-0A4]
 00504EC4    call        005012E4
 00504EC9    push        dword ptr [ebp-0A4]
 00504ECF    push        50527C;'/'
 00504ED4    mov         eax,dword ptr [ebp-8]
 00504ED7    call        004CE528
 00504EDC    and         eax,0FF
 00504EE1    lea         edx,[ebp-0A8]
 00504EE7    call        005012E4
 00504EEC    push        dword ptr [ebp-0A8]
 00504EF2    push        505288;' '
 00504EF7    lea         edx,[ebp-0AC]
 00504EFD    mov         al,byte ptr [ebp-15]
 00504F00    call        00501850
 00504F05    push        dword ptr [ebp-0AC]
 00504F0B    push        505288;' '
 00504F10    lea         edx,[ebp-0B0]
 00504F16    mov         eax,dword ptr [ebp-4]
 00504F19    add         eax,eax
 00504F1B    mov         eax,dword ptr [eax*8+572678]
 00504F22    call        00501900
 00504F27    push        dword ptr [ebp-0B0]
 00504F2D    lea         eax,[ebp-9C]
 00504F33    mov         edx,9
 00504F38    call        @LStrCatN
 00504F3D    mov         eax,dword ptr [ebp-9C]
 00504F43    push        eax
 00504F44    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504F49    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504F4F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504F55    mov         edx,dword ptr [ebp-4]
 00504F58    call        0045AF80
 00504F5D    mov         eax,dword ptr [eax+8]
 00504F60    mov         edx,6
 00504F65    pop         ecx
 00504F66    mov         ebx,dword ptr [eax]
 00504F68    call        dword ptr [ebx+20]
>00504F6B    jmp         005050DB
 00504F70    xor         eax,eax
 00504F72    mov         al,byte ptr [ebp-14]
 00504F75    lea         edx,[ebp-0B8]
 00504F7B    call        005012E4
 00504F80    push        dword ptr [ebp-0B8]
 00504F86    push        50527C;'/'
 00504F8B    mov         eax,dword ptr [ebp-14]
 00504F8E    shr         eax,8
 00504F91    and         eax,0FF
 00504F96    lea         edx,[ebp-0BC]
 00504F9C    call        005012E4
 00504FA1    push        dword ptr [ebp-0BC]
 00504FA7    push        50527C;'/'
 00504FAC    mov         eax,dword ptr [ebp-14]
 00504FAF    shr         eax,10
 00504FB2    and         eax,0FF
 00504FB7    lea         edx,[ebp-0C0]
 00504FBD    call        005012E4
 00504FC2    push        dword ptr [ebp-0C0]
 00504FC8    lea         eax,[ebp-0B4]
 00504FCE    mov         edx,5
 00504FD3    call        @LStrCatN
 00504FD8    mov         eax,dword ptr [ebp-0B4]
 00504FDE    push        eax
 00504FDF    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00504FE4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00504FEA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00504FF0    mov         edx,dword ptr [ebp-4]
 00504FF3    call        0045AF80
 00504FF8    mov         eax,dword ptr [eax+8]
 00504FFB    mov         edx,6
 00505000    pop         ecx
 00505001    mov         ebx,dword ptr [eax]
 00505003    call        dword ptr [ebx+20]
 00505006    mov         eax,dword ptr [ebp-8]
 00505009    call        00501404
 0050500E    test        al,al
>00505010    je          0050503F
 00505012    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505017    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050501D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505023    mov         edx,dword ptr [ebp-4]
 00505026    call        0045AF80
 0050502B    mov         eax,dword ptr [eax+8]
 0050502E    mov         ecx,505264;'OK'
 00505033    mov         edx,5
 00505038    mov         ebx,dword ptr [eax]
 0050503A    call        dword ptr [ebx+20]
>0050503D    jmp         0050506A
 0050503F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505044    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050504A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505050    mov         edx,dword ptr [ebp-4]
 00505053    call        0045AF80
 00505058    mov         eax,dword ptr [eax+8]
 0050505B    mov         ecx,505270;'BAD'
 00505060    mov         edx,5
 00505065    mov         ebx,dword ptr [eax]
 00505067    call        dword ptr [ebx+20]
 0050506A    xor         ecx,ecx
 0050506C    mov         edx,5
 00505071    mov         eax,dword ptr [ebp-8]
 00505074    mov         ebx,dword ptr [eax]
 00505076    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00505079    lea         eax,[ebp-1C]
 0050507C    call        @LStrClr
 00505081    xor         eax,eax
 00505083    mov         dword ptr [ebp-20],eax
 00505086    mov         eax,dword ptr [ebp-8]
 00505089    call        004CE528
 0050508E    mov         edx,eax
 00505090    lea         eax,[ebp-0C4]
 00505096    call        @LStrFromChar
 0050509B    mov         edx,dword ptr [ebp-0C4]
 005050A1    lea         eax,[ebp-1C]
 005050A4    call        @LStrCat
 005050A9    inc         dword ptr [ebp-20]
 005050AC    cmp         dword ptr [ebp-20],5
>005050B0    jne         00505086
 005050B2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005050B7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005050BD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005050C3    mov         edx,dword ptr [ebp-4]
 005050C6    call        0045AF80
 005050CB    mov         eax,dword ptr [eax+8]
 005050CE    mov         ecx,dword ptr [ebp-1C]
 005050D1    mov         edx,4
 005050D6    mov         ebx,dword ptr [eax]
 005050D8    call        dword ptr [ebx+20]
 005050DB    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005050E0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005050E6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005050EC    mov         edx,dword ptr [ebp-4]
 005050EF    call        0045AF80
 005050F4    mov         ecx,1
 005050F9    xor         edx,edx
 005050FB    call        0045A98C
>00505100    jmp         00505127
 00505102    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505107    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050510D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505113    mov         edx,dword ptr [ebp-4]
 00505116    call        0045AF80
 0050511B    mov         ecx,2
 00505120    xor         edx,edx
 00505122    call        0045A98C
 00505127    xor         eax,eax
 00505129    pop         edx
 0050512A    pop         ecx
 0050512B    pop         ecx
 0050512C    mov         dword ptr fs:[eax],edx
 0050512F    push        505144
 00505134    mov         eax,dword ptr [ebp-8]
 00505137    call        TObject.Free
 0050513C    ret
>0050513D    jmp         @HandleFinally
>00505142    jmp         00505134
 00505144    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505149    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050514F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505155    mov         edx,dword ptr [ebp-4]
 00505158    call        0045AF80
 0050515D    xor         edx,edx
 0050515F    call        0045A63C
 00505164    mov         eax,[0056E3C0];^Application:TApplication
 00505169    mov         eax,dword ptr [eax]
 0050516B    call        004AB51C
 00505170    xor         eax,eax
 00505172    pop         edx
 00505173    pop         ecx
 00505174    pop         ecx
 00505175    mov         dword ptr fs:[eax],edx
 00505178    push        5051AD
 0050517D    lea         eax,[ebp-0C4]
 00505183    mov         edx,26
 00505188    call        @LStrArrayClr
 0050518D    lea         eax,[ebp-2C]
 00505190    call        @LStrClr
 00505195    lea         eax,[ebp-1C]
 00505198    call        @LStrClr
 0050519D    lea         eax,[ebp-0C]
 005051A0    call        @LStrClr
 005051A5    ret
>005051A6    jmp         @HandleFinally
>005051AB    jmp         0050517D
 005051AD    pop         ebx
 005051AE    mov         esp,ebp
 005051B0    pop         ebp
 005051B1    ret
end;*}

//0050528C
{*procedure sub_0050528C(?:?);
begin
 0050528C    push        ebp
 0050528D    mov         ebp,esp
 0050528F    mov         ecx,11
 00505294    push        0
 00505296    push        0
 00505298    dec         ecx
>00505299    jne         00505294
 0050529B    push        ecx
 0050529C    push        ebx
 0050529D    mov         dword ptr [ebp-4],eax
 005052A0    xor         eax,eax
 005052A2    push        ebp
 005052A3    push        505BCD
 005052A8    push        dword ptr fs:[eax]
 005052AB    mov         dword ptr fs:[eax],esp
 005052AE    mov         eax,[0056E5A4];^gvar_0056DF04
 005052B3    mov         byte ptr [eax],0
 005052B6    lea         edx,[ebp-1C]
 005052B9    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005052BE    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 005052C4    call        TPanel.GetCaption
 005052C9    mov         eax,dword ptr [ebp-1C]
 005052CC    mov         edx,10000
 005052D1    call        0040C4A8
 005052D6    mov         dword ptr [ebp-18],eax
 005052D9    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005052DF    mov         edx,dword ptr [edx]
 005052E1    lea         eax,[ebp-20]
 005052E4    mov         ecx,505BE4;'Modules'
 005052E9    call        @LStrCat3
 005052EE    mov         eax,dword ptr [ebp-20]
 005052F1    call        0040C9A4
 005052F6    test        al,al
>005052F8    jne         0050532C
 005052FA    push        505BF4;'Cannot create '
 005052FF    mov         eax,[0056E2D0];^gvar_0056DF38
 00505304    push        dword ptr [eax]
 00505306    push        505BE4;'Modules'
 0050530B    lea         eax,[ebp-24]
 0050530E    mov         edx,3
 00505313    call        @LStrCatN
 00505318    mov         ecx,dword ptr [ebp-24]
 0050531B    mov         dl,1
 0050531D    mov         eax,[0040B004];Exception
 00505322    call        Exception.Create;Exception.Create
 00505327    call        @RaiseExcept
 0050532C    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00505333    jle         00505B8A
 00505339    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050533E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505344    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050534A    call        0045AF28
 0050534F    test        eax,eax
>00505351    jle         00505B8A
 00505357    mov         dl,1
 00505359    mov         eax,[0041DE14];TMemoryStream
 0050535E    call        TObject.Create;TMemoryStream.Create
 00505363    mov         dword ptr [ebp-8],eax
 00505366    xor         eax,eax
 00505368    push        ebp
 00505369    push        505B57
 0050536E    push        dword ptr fs:[eax]
 00505371    mov         dword ptr fs:[eax],esp
 00505374    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505379    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050537F    xor         edx,edx
 00505381    call        TImage.SetPopupMenu
 00505386    mov         eax,[0056E040];^gvar_005720C0
 0050538B    cmp         byte ptr [eax],0
>0050538E    je          005053F3
 00505390    mov         eax,[0056E2D0];^gvar_0056DF38
 00505395    push        dword ptr [eax]
 00505397    push        505C0C;'Modules\   '
 0050539C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005053A1    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005053A7    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005053AD    mov         edx,dword ptr [ebp-4]
 005053B0    call        0045AF80
 005053B5    mov         ecx,dword ptr [eax+24]
 005053B8    lea         eax,[ebp-2C]
 005053BB    mov         edx,505C20;'$'
 005053C0    call        @LStrCat3
 005053C5    mov         eax,dword ptr [ebp-2C]
 005053C8    xor         edx,edx
 005053CA    call        0040C4A8
 005053CF    lea         ecx,[ebp-28]
 005053D2    mov         edx,4
 005053D7    call        IntToHex
 005053DC    push        dword ptr [ebp-28]
 005053DF    push        505C2C;'.rpm'
 005053E4    lea         eax,[ebp-0C]
 005053E7    mov         edx,4
 005053EC    call        @LStrCatN
>005053F1    jmp         00505454
 005053F3    mov         eax,[0056E2D0];^gvar_0056DF38
 005053F8    push        dword ptr [eax]
 005053FA    push        505C0C;'Modules\   '
 005053FF    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505404    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050540A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505410    mov         edx,dword ptr [ebp-4]
 00505413    call        0045AF80
 00505418    mov         ecx,dword ptr [eax+24]
 0050541B    lea         eax,[ebp-34]
 0050541E    mov         edx,505C20;'$'
 00505423    call        @LStrCat3
 00505428    mov         eax,dword ptr [ebp-34]
 0050542B    xor         edx,edx
 0050542D    call        0040C4A8
 00505432    lea         ecx,[ebp-30]
 00505435    mov         edx,2
 0050543A    call        IntToHex
 0050543F    push        dword ptr [ebp-30]
 00505442    push        505C2C;'.rpm'
 00505447    lea         eax,[ebp-0C]
 0050544A    mov         edx,4
 0050544F    call        @LStrCatN
 00505454    push        10
 00505456    call        user32.GetKeyState
 0050545B    test        ax,ax
>0050545E    jge         005057FC
 00505464    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050546A    mov         edx,dword ptr [edx]
 0050546C    lea         eax,[ebp-38]
 0050546F    mov         ecx,505BE4;'Modules'
 00505474    call        @LStrCat3
 00505479    mov         edx,dword ptr [ebp-38]
 0050547C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00505481    mov         eax,dword ptr [eax]
 00505483    mov         eax,dword ptr [eax+35C]
 00505489    call        TOpenDialog.SetInitialDir
 0050548E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00505493    mov         eax,dword ptr [eax]
 00505495    mov         eax,dword ptr [eax+35C]
 0050549B    add         eax,78
 0050549E    mov         edx,dword ptr [ebp-0C]
 005054A1    call        @LStrAsg
 005054A6    push        505C3C;'Module|'
 005054AB    lea         edx,[ebp-3C]
 005054AE    mov         eax,dword ptr [ebp-0C]
 005054B1    call        0040CC9C
 005054B6    push        dword ptr [ebp-3C]
 005054B9    push        505C4C;'|All|*.*'
 005054BE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005054C3    mov         eax,dword ptr [eax]
 005054C5    mov         eax,dword ptr [eax+35C]
 005054CB    add         eax,60
 005054CE    mov         edx,3
 005054D3    call        @LStrCatN
 005054D8    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005054DD    mov         eax,dword ptr [eax]
 005054DF    mov         eax,dword ptr [eax+35C]
 005054E5    mov         edx,dword ptr [eax]
 005054E7    call        dword ptr [edx+3C]
 005054EA    test        al,al
>005054EC    je          005057E2
 005054F2    lea         edx,[ebp-40]
 005054F5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005054FA    mov         eax,dword ptr [eax]
 005054FC    mov         eax,dword ptr [eax+35C]
 00505502    call        TOpenDialog.GetFileName
 00505507    mov         edx,dword ptr [ebp-40]
 0050550A    mov         eax,dword ptr [ebp-8]
 0050550D    call        00423F8C
 00505512    cmp         byte ptr ds:[56D40C],0;gvar_0056D40C:Boolean
>00505519    je          0050555E
 0050551B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505520    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505526    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050552C    mov         edx,dword ptr [ebp-4]
 0050552F    call        0045AF80
 00505534    mov         ecx,dword ptr [eax+24]
 00505537    lea         eax,[ebp-44]
 0050553A    mov         edx,505C20;'$'
 0050553F    call        @LStrCat3
 00505544    mov         eax,dword ptr [ebp-44]
 00505547    xor         edx,edx
 00505549    call        0040C4A8
 0050554E    mov         edx,dword ptr [ebp-8]
 00505551    call        004CF728
 00505556    mov         byte ptr [ebp-0D],al
>00505559    jmp         00505790
 0050555E    mov         eax,[0056E040];^gvar_005720C0
 00505563    cmp         byte ptr [eax],0
>00505566    je          00505686
 0050556C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505571    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505577    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050557D    mov         edx,dword ptr [ebp-4]
 00505580    call        0045AF80
 00505585    mov         eax,dword ptr [eax+8]
 00505588    lea         ecx,[ebp-48]
 0050558B    mov         edx,1
 00505590    mov         ebx,dword ptr [eax]
 00505592    call        dword ptr [ebx+0C]
 00505595    mov         eax,dword ptr [ebp-48]
 00505598    mov         edx,505C60;'1'
 0050559D    call        @LStrCmp
>005055A2    jne         005055ED
 005055A4    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005055A9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005055AF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005055B5    mov         edx,dword ptr [ebp-4]
 005055B8    call        0045AF80
 005055BD    mov         ecx,dword ptr [eax+24]
 005055C0    lea         eax,[ebp-4C]
 005055C3    mov         edx,505C20;'$'
 005055C8    call        @LStrCat3
 005055CD    mov         eax,dword ptr [ebp-4C]
 005055D0    xor         edx,edx
 005055D2    call        0040C4A8
 005055D7    call        00502410
 005055DC    add         eax,eax
 005055DE    mov         eax,dword ptr [eax*8+572670]
 005055E5    add         eax,dword ptr [ebp-18]
 005055E8    mov         dword ptr [ebp-14],eax
>005055EB    jmp         00505631
 005055ED    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005055F2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005055F8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005055FE    mov         edx,dword ptr [ebp-4]
 00505601    call        0045AF80
 00505606    mov         ecx,dword ptr [eax+24]
 00505609    lea         eax,[ebp-50]
 0050560C    mov         edx,505C20;'$'
 00505611    call        @LStrCat3
 00505616    mov         eax,dword ptr [ebp-50]
 00505619    xor         edx,edx
 0050561B    call        0040C4A8
 00505620    call        00502410
 00505625    add         eax,eax
 00505627    mov         eax,dword ptr [eax*8+572670]
 0050562E    mov         dword ptr [ebp-14],eax
 00505631    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505636    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050563C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505642    mov         edx,dword ptr [ebp-4]
 00505645    call        0045AF80
 0050564A    mov         ecx,dword ptr [eax+24]
 0050564D    lea         eax,[ebp-54]
 00505650    mov         edx,505C20;'$'
 00505655    call        @LStrCat3
 0050565A    mov         eax,dword ptr [ebp-54]
 0050565D    xor         edx,edx
 0050565F    call        0040C4A8
 00505664    call        00502410
 00505669    add         eax,eax
 0050566B    movzx       edx,word ptr [eax*8+572674]
 00505673    mov         ecx,dword ptr [ebp-8]
 00505676    mov         eax,dword ptr [ebp-14]
 00505679    call        004FF4C4
 0050567E    mov         byte ptr [ebp-0D],al
>00505681    jmp         00505790
 00505686    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050568B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505691    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505697    mov         edx,dword ptr [ebp-4]
 0050569A    call        0045AF80
 0050569F    mov         eax,dword ptr [eax+8]
 005056A2    lea         ecx,[ebp-58]
 005056A5    mov         edx,1
 005056AA    mov         ebx,dword ptr [eax]
 005056AC    call        dword ptr [ebx+0C]
 005056AF    mov         eax,dword ptr [ebp-58]
 005056B2    xor         edx,edx
 005056B4    call        0040C4A8
 005056B9    push        eax
 005056BA    mov         eax,dword ptr [ebp-8]
 005056BD    push        eax
 005056BE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005056C3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005056C9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005056CF    mov         edx,dword ptr [ebp-4]
 005056D2    call        0045AF80
 005056D7    mov         ecx,dword ptr [eax+24]
 005056DA    lea         eax,[ebp-5C]
 005056DD    mov         edx,505C20;'$'
 005056E2    call        @LStrCat3
 005056E7    mov         eax,dword ptr [ebp-5C]
 005056EA    xor         edx,edx
 005056EC    call        0040C4A8
 005056F1    call        00502410
 005056F6    add         eax,eax
 005056F8    mov         ax,word ptr [eax*8+572674]
 00505700    push        eax
 00505701    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505706    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050570C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505712    mov         edx,dword ptr [ebp-4]
 00505715    call        0045AF80
 0050571A    mov         ecx,dword ptr [eax+24]
 0050571D    lea         eax,[ebp-60]
 00505720    mov         edx,505C20;'$'
 00505725    call        @LStrCat3
 0050572A    mov         eax,dword ptr [ebp-60]
 0050572D    xor         edx,edx
 0050572F    call        0040C4A8
 00505734    call        00502410
 00505739    add         eax,eax
 0050573B    mov         ax,word ptr [eax*8+572670]
 00505743    push        eax
 00505744    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505749    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050574F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505755    mov         edx,dword ptr [ebp-4]
 00505758    call        0045AF80
 0050575D    mov         ecx,dword ptr [eax+24]
 00505760    lea         eax,[ebp-64]
 00505763    mov         edx,505C20;'$'
 00505768    call        @LStrCat3
 0050576D    mov         eax,dword ptr [ebp-64]
 00505770    xor         edx,edx
 00505772    call        0040C4A8
 00505777    call        00502410
 0050577C    add         eax,eax
 0050577E    movzx       eax,word ptr [eax*8+57266E]
 00505786    pop         edx
 00505787    pop         ecx
 00505788    call        004FBA6C
 0050578D    mov         byte ptr [ebp-0D],al
 00505790    cmp         byte ptr [ebp-0D],0
>00505794    je          005057BD
 00505796    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050579B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005057A1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005057A7    mov         edx,dword ptr [ebp-4]
 005057AA    call        0045AF80
 005057AF    mov         ecx,1
 005057B4    xor         edx,edx
 005057B6    call        0045A98C
>005057BB    jmp         005057E2
 005057BD    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005057C2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005057C8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005057CE    mov         edx,dword ptr [ebp-4]
 005057D1    call        0045AF80
 005057D6    mov         ecx,2
 005057DB    xor         edx,edx
 005057DD    call        0045A98C
 005057E2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005057E7    mov         eax,dword ptr [eax]
 005057E9    mov         eax,dword ptr [eax+35C]
 005057EF    add         eax,60
 005057F2    call        @LStrClr
>005057F7    jmp         00505B26
 005057FC    mov         eax,dword ptr [ebp-0C]
 005057FF    call        0040C94C
 00505804    test        al,al
>00505806    je          00505AF5
 0050580C    mov         edx,dword ptr [ebp-0C]
 0050580F    mov         eax,dword ptr [ebp-8]
 00505812    call        00423F8C
 00505817    cmp         byte ptr ds:[56D40C],0;gvar_0056D40C:Boolean
>0050581E    je          00505863
 00505820    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505825    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050582B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505831    mov         edx,dword ptr [ebp-4]
 00505834    call        0045AF80
 00505839    mov         ecx,dword ptr [eax+24]
 0050583C    lea         eax,[ebp-68]
 0050583F    mov         edx,505C20;'$'
 00505844    call        @LStrCat3
 00505849    mov         eax,dword ptr [ebp-68]
 0050584C    xor         edx,edx
 0050584E    call        0040C4A8
 00505853    mov         edx,dword ptr [ebp-8]
 00505856    call        004CF728
 0050585B    mov         byte ptr [ebp-0D],al
>0050585E    jmp         00505AA1
 00505863    mov         eax,[0056E040];^gvar_005720C0
 00505868    cmp         byte ptr [eax],0
>0050586B    je          0050598B
 00505871    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505876    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050587C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505882    mov         edx,dword ptr [ebp-4]
 00505885    call        0045AF80
 0050588A    mov         eax,dword ptr [eax+8]
 0050588D    lea         ecx,[ebp-6C]
 00505890    mov         edx,1
 00505895    mov         ebx,dword ptr [eax]
 00505897    call        dword ptr [ebx+0C]
 0050589A    mov         eax,dword ptr [ebp-6C]
 0050589D    mov         edx,505C60;'1'
 005058A2    call        @LStrCmp
>005058A7    jne         005058F2
 005058A9    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005058AE    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005058B4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005058BA    mov         edx,dword ptr [ebp-4]
 005058BD    call        0045AF80
 005058C2    mov         ecx,dword ptr [eax+24]
 005058C5    lea         eax,[ebp-70]
 005058C8    mov         edx,505C20;'$'
 005058CD    call        @LStrCat3
 005058D2    mov         eax,dword ptr [ebp-70]
 005058D5    xor         edx,edx
 005058D7    call        0040C4A8
 005058DC    call        00502410
 005058E1    add         eax,eax
 005058E3    mov         eax,dword ptr [eax*8+572670]
 005058EA    add         eax,dword ptr [ebp-18]
 005058ED    mov         dword ptr [ebp-14],eax
>005058F0    jmp         00505936
 005058F2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005058F7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005058FD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505903    mov         edx,dword ptr [ebp-4]
 00505906    call        0045AF80
 0050590B    mov         ecx,dword ptr [eax+24]
 0050590E    lea         eax,[ebp-74]
 00505911    mov         edx,505C20;'$'
 00505916    call        @LStrCat3
 0050591B    mov         eax,dword ptr [ebp-74]
 0050591E    xor         edx,edx
 00505920    call        0040C4A8
 00505925    call        00502410
 0050592A    add         eax,eax
 0050592C    mov         eax,dword ptr [eax*8+572670]
 00505933    mov         dword ptr [ebp-14],eax
 00505936    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050593B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505941    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505947    mov         edx,dword ptr [ebp-4]
 0050594A    call        0045AF80
 0050594F    mov         ecx,dword ptr [eax+24]
 00505952    lea         eax,[ebp-78]
 00505955    mov         edx,505C20;'$'
 0050595A    call        @LStrCat3
 0050595F    mov         eax,dword ptr [ebp-78]
 00505962    xor         edx,edx
 00505964    call        0040C4A8
 00505969    call        00502410
 0050596E    add         eax,eax
 00505970    movzx       edx,word ptr [eax*8+572674]
 00505978    mov         ecx,dword ptr [ebp-8]
 0050597B    mov         eax,dword ptr [ebp-14]
 0050597E    call        004FF4C4
 00505983    mov         byte ptr [ebp-0D],al
>00505986    jmp         00505AA1
 0050598B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505990    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505996    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050599C    mov         edx,dword ptr [ebp-4]
 0050599F    call        0045AF80
 005059A4    mov         eax,dword ptr [eax+8]
 005059A7    lea         ecx,[ebp-7C]
 005059AA    mov         edx,1
 005059AF    mov         ebx,dword ptr [eax]
 005059B1    call        dword ptr [ebx+0C]
 005059B4    mov         eax,dword ptr [ebp-7C]
 005059B7    xor         edx,edx
 005059B9    call        0040C4A8
 005059BE    push        eax
 005059BF    mov         eax,dword ptr [ebp-8]
 005059C2    push        eax
 005059C3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005059C8    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005059CE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005059D4    mov         edx,dword ptr [ebp-4]
 005059D7    call        0045AF80
 005059DC    mov         ecx,dword ptr [eax+24]
 005059DF    lea         eax,[ebp-80]
 005059E2    mov         edx,505C20;'$'
 005059E7    call        @LStrCat3
 005059EC    mov         eax,dword ptr [ebp-80]
 005059EF    xor         edx,edx
 005059F1    call        0040C4A8
 005059F6    call        00502410
 005059FB    add         eax,eax
 005059FD    mov         ax,word ptr [eax*8+572674]
 00505A05    push        eax
 00505A06    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505A0B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505A11    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505A17    mov         edx,dword ptr [ebp-4]
 00505A1A    call        0045AF80
 00505A1F    mov         ecx,dword ptr [eax+24]
 00505A22    lea         eax,[ebp-84]
 00505A28    mov         edx,505C20;'$'
 00505A2D    call        @LStrCat3
 00505A32    mov         eax,dword ptr [ebp-84]
 00505A38    xor         edx,edx
 00505A3A    call        0040C4A8
 00505A3F    call        00502410
 00505A44    add         eax,eax
 00505A46    mov         ax,word ptr [eax*8+572670]
 00505A4E    push        eax
 00505A4F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505A54    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505A5A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505A60    mov         edx,dword ptr [ebp-4]
 00505A63    call        0045AF80
 00505A68    mov         ecx,dword ptr [eax+24]
 00505A6B    lea         eax,[ebp-88]
 00505A71    mov         edx,505C20;'$'
 00505A76    call        @LStrCat3
 00505A7B    mov         eax,dword ptr [ebp-88]
 00505A81    xor         edx,edx
 00505A83    call        0040C4A8
 00505A88    call        00502410
 00505A8D    add         eax,eax
 00505A8F    movzx       eax,word ptr [eax*8+57266E]
 00505A97    pop         edx
 00505A98    pop         ecx
 00505A99    call        004FBA6C
 00505A9E    mov         byte ptr [ebp-0D],al
 00505AA1    cmp         byte ptr [ebp-0D],0
>00505AA5    je          00505ACE
 00505AA7    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505AAC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505AB2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505AB8    mov         edx,dword ptr [ebp-4]
 00505ABB    call        0045AF80
 00505AC0    mov         ecx,1
 00505AC5    xor         edx,edx
 00505AC7    call        0045A98C
>00505ACC    jmp         00505B26
 00505ACE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505AD3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505AD9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505ADF    mov         edx,dword ptr [ebp-4]
 00505AE2    call        0045AF80
 00505AE7    mov         ecx,2
 00505AEC    xor         edx,edx
 00505AEE    call        0045A98C
>00505AF3    jmp         00505B26
 00505AF5    lea         eax,[ebp-8C]
 00505AFB    mov         ecx,dword ptr [ebp-0C]
 00505AFE    mov         edx,505C6C;'No File :'
 00505B03    call        @LStrCat3
 00505B08    mov         edx,dword ptr [ebp-8C]
 00505B0E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00505B13    mov         eax,dword ptr [eax]
 00505B15    mov         eax,dword ptr [eax+2F8]
 00505B1B    mov         eax,dword ptr [eax+248]
 00505B21    mov         ecx,dword ptr [eax]
 00505B23    call        dword ptr [ecx+38]
 00505B26    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505B2B    mov         edx,dword ptr [eax+300];TfmModules.pmModules:TPopupMenu
 00505B31    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505B36    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505B3C    call        TImage.SetPopupMenu
 00505B41    xor         eax,eax
 00505B43    pop         edx
 00505B44    pop         ecx
 00505B45    pop         ecx
 00505B46    mov         dword ptr fs:[eax],edx
 00505B49    push        505B5E
 00505B4E    mov         eax,dword ptr [ebp-8]
 00505B51    call        TObject.Free
 00505B56    ret
>00505B57    jmp         @HandleFinally
>00505B5C    jmp         00505B4E
 00505B5E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505B63    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505B69    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505B6F    mov         edx,dword ptr [ebp-4]
 00505B72    call        0045AF80
 00505B77    xor         edx,edx
 00505B79    call        0045A63C
 00505B7E    mov         eax,[0056E3C0];^Application:TApplication
 00505B83    mov         eax,dword ptr [eax]
 00505B85    call        004AB51C
 00505B8A    xor         eax,eax
 00505B8C    pop         edx
 00505B8D    pop         ecx
 00505B8E    pop         ecx
 00505B8F    mov         dword ptr fs:[eax],edx
 00505B92    push        505BD4
 00505B97    lea         eax,[ebp-8C]
 00505B9D    mov         edx,13
 00505BA2    call        @LStrArrayClr
 00505BA7    lea         eax,[ebp-40]
 00505BAA    call        @LStrClr
 00505BAF    lea         eax,[ebp-3C]
 00505BB2    mov         edx,8
 00505BB7    call        @LStrArrayClr
 00505BBC    lea         eax,[ebp-1C]
 00505BBF    call        @LStrClr
 00505BC4    lea         eax,[ebp-0C]
 00505BC7    call        @LStrClr
 00505BCC    ret
>00505BCD    jmp         @HandleFinally
>00505BD2    jmp         00505B97
 00505BD4    pop         ebx
 00505BD5    mov         esp,ebp
 00505BD7    pop         ebp
 00505BD8    ret
end;*}

//00505C78
{*procedure TfmModules.acReadModulesExecute(?:?);
begin
 00505C78    push        ebp
 00505C79    mov         ebp,esp
 00505C7B    add         esp,0FFFFFFF8
 00505C7E    mov         dword ptr [ebp-8],edx
 00505C81    mov         dword ptr [ebp-4],eax
 00505C84    mov         eax,dword ptr [ebp-4]
 00505C87    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505C8D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505C93    call        0045AF28
 00505C98    test        eax,eax
>00505C9A    jle         00505CB2
 00505C9C    mov         eax,dword ptr [ebp-4]
 00505C9F    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505CA5    mov         edx,dword ptr [eax]
 00505CA7    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00505CAD    call        0050465C
 00505CB2    pop         ecx
 00505CB3    pop         ecx
 00505CB4    pop         ebp
 00505CB5    ret
end;*}

//00505CB8
procedure TfmModules.miReadSelectedClick(Sender:TObject);
begin
{*
 00505CB8    push        ebp
 00505CB9    mov         ebp,esp
 00505CBB    add         esp,0FFFFFFF4
 00505CBE    mov         dword ptr [ebp-0C],edx
 00505CC1    mov         dword ptr [ebp-4],eax
 00505CC4    mov         eax,[0056E5A4];^gvar_0056DF04
 00505CC9    mov         byte ptr [eax],0
 00505CCC    mov         eax,dword ptr [ebp-4]
 00505CCF    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505CD5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505CDB    call        0045AF28
 00505CE0    test        eax,eax
>00505CE2    jle         00505DE9
 00505CE8    mov         word ptr [ebp-6],0
 00505CEE    xor         edx,edx
 00505CF0    mov         eax,dword ptr [ebp-4]
 00505CF3    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505CF9    call        TProgressBar.SetMin
 00505CFE    mov         eax,dword ptr [ebp-4]
 00505D01    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505D07    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505D0D    call        0045AF28
 00505D12    mov         edx,eax
 00505D14    mov         eax,dword ptr [ebp-4]
 00505D17    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505D1D    call        TProgressBar.SetMax
 00505D22    movzx       edx,word ptr [ebp-6]
 00505D26    mov         eax,dword ptr [ebp-4]
 00505D29    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505D2F    call        TProgressBar.SetMin
>00505D34    jmp         00505DA1
 00505D36    movzx       edx,word ptr [ebp-6]
 00505D3A    mov         eax,dword ptr [ebp-4]
 00505D3D    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505D43    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505D49    call        0045AF80
 00505D4E    call        0045A66C
 00505D53    test        al,al
>00505D55    je          00505D7F
 00505D57    movzx       eax,word ptr [ebp-6]
 00505D5B    call        0050465C
 00505D60    movzx       edx,word ptr [ebp-6]
 00505D64    mov         eax,dword ptr [ebp-4]
 00505D67    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505D6D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505D73    call        0045AF80
 00505D78    xor         edx,edx
 00505D7A    call        0045A63C
 00505D7F    mov         eax,[0056E3C0];^Application:TApplication
 00505D84    mov         eax,dword ptr [eax]
 00505D86    call        004AB51C
 00505D8B    movzx       edx,word ptr [ebp-6]
 00505D8F    mov         eax,dword ptr [ebp-4]
 00505D92    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505D98    call        TProgressBar.SetPosition
 00505D9D    inc         word ptr [ebp-6]
 00505DA1    mov         eax,dword ptr [ebp-4]
 00505DA4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505DAA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505DB0    call        0045AF28
 00505DB5    movzx       edx,word ptr [ebp-6]
 00505DB9    cmp         eax,edx
>00505DBB    jle         00505DCB
 00505DBD    mov         eax,[0056E5A4];^gvar_0056DF04
 00505DC2    cmp         byte ptr [eax],0
>00505DC5    je          00505D36
 00505DCB    mov         eax,dword ptr [ebp-4]
 00505DCE    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505DD4    call        TProgressBar.GetMin
 00505DD9    mov         edx,eax
 00505DDB    mov         eax,dword ptr [ebp-4]
 00505DDE    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505DE4    call        TProgressBar.SetPosition
 00505DE9    mov         esp,ebp
 00505DEB    pop         ebp
 00505DEC    ret
*}
end;

//00505DF0
procedure TfmModules.miReadAllClick(Sender:TObject);
begin
{*
 00505DF0    push        ebp
 00505DF1    mov         ebp,esp
 00505DF3    add         esp,0FFFFFFF4
 00505DF6    mov         dword ptr [ebp-0C],edx
 00505DF9    mov         dword ptr [ebp-4],eax
 00505DFC    mov         eax,[0056E5A4];^gvar_0056DF04
 00505E01    mov         byte ptr [eax],0
 00505E04    mov         eax,dword ptr [ebp-4]
 00505E07    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505E0D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505E13    call        0045AF28
 00505E18    test        eax,eax
>00505E1A    jle         00505ED1
 00505E20    mov         word ptr [ebp-6],0
 00505E26    xor         edx,edx
 00505E28    mov         eax,dword ptr [ebp-4]
 00505E2B    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505E31    call        TProgressBar.SetMin
 00505E36    mov         eax,dword ptr [ebp-4]
 00505E39    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505E3F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505E45    call        0045AF28
 00505E4A    mov         edx,eax
 00505E4C    mov         eax,dword ptr [ebp-4]
 00505E4F    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505E55    call        TProgressBar.SetMax
 00505E5A    movzx       edx,word ptr [ebp-6]
 00505E5E    mov         eax,dword ptr [ebp-4]
 00505E61    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505E67    call        TProgressBar.SetMin
>00505E6C    jmp         00505E8D
 00505E6E    movzx       eax,word ptr [ebp-6]
 00505E72    call        0050465C
 00505E77    movzx       edx,word ptr [ebp-6]
 00505E7B    mov         eax,dword ptr [ebp-4]
 00505E7E    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505E84    call        TProgressBar.SetPosition
 00505E89    inc         word ptr [ebp-6]
 00505E8D    mov         eax,dword ptr [ebp-4]
 00505E90    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00505E96    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00505E9C    call        0045AF28
 00505EA1    movzx       edx,word ptr [ebp-6]
 00505EA5    cmp         eax,edx
>00505EA7    jle         00505EB3
 00505EA9    mov         eax,[0056E5A4];^gvar_0056DF04
 00505EAE    cmp         byte ptr [eax],0
>00505EB1    je          00505E6E
 00505EB3    mov         eax,dword ptr [ebp-4]
 00505EB6    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505EBC    call        TProgressBar.GetMin
 00505EC1    mov         edx,eax
 00505EC3    mov         eax,dword ptr [ebp-4]
 00505EC6    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00505ECC    call        TProgressBar.SetPosition
 00505ED1    mov         esp,ebp
 00505ED3    pop         ebp
 00505ED4    ret
*}
end;

//00505ED8
procedure TfmModules.FormShow(Sender:TObject);
begin
{*
 00505ED8    push        ebp
 00505ED9    mov         ebp,esp
 00505EDB    add         esp,0FFFFFFF0
 00505EDE    xor         ecx,ecx
 00505EE0    mov         dword ptr [ebp-0C],ecx
 00505EE3    mov         dword ptr [ebp-10],ecx
 00505EE6    mov         dword ptr [ebp-8],edx
 00505EE9    mov         dword ptr [ebp-4],eax
 00505EEC    xor         eax,eax
 00505EEE    push        ebp
 00505EEF    push        505FC9
 00505EF4    push        dword ptr fs:[eax]
 00505EF7    mov         dword ptr fs:[eax],esp
 00505EFA    mov         edx,dword ptr ds:[56E5C0];^gvar_0056DF68:Integer
 00505F00    mov         edx,dword ptr [edx]
 00505F02    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505F07    call        TControl.SetTop
 00505F0C    mov         edx,dword ptr ds:[56E524];^gvar_0056DF6C:Integer
 00505F12    mov         edx,dword ptr [edx]
 00505F14    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505F19    call        TControl.SetLeft
 00505F1E    mov         edx,dword ptr ds:[56E400];^gvar_0056DF70:Integer
 00505F24    mov         edx,dword ptr [edx]
 00505F26    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505F2B    call        TToolButton.SetHeight
 00505F30    mov         edx,dword ptr ds:[56E420];^gvar_0056DF74:Integer
 00505F36    mov         edx,dword ptr [edx]
 00505F38    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505F3D    call        TSplitter.SetWidth
 00505F42    xor         edx,edx
 00505F44    mov         eax,dword ptr [ebp-4]
 00505F47    mov         eax,dword ptr [eax+3B0];TfmModules.cbAltUba2:TCheckBox
 00505F4D    mov         ecx,dword ptr [eax]
 00505F4F    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 00505F55    mov         eax,[0056E284];^gvar_0056DF34
 00505F5A    mov         eax,dword ptr [eax]
 00505F5C    mov         eax,dword ptr [eax+408]
 00505F62    cmp         byte ptr [eax+38],0
>00505F66    je          00505F72
 00505F68    xor         edx,edx
 00505F6A    mov         eax,dword ptr [ebp-4]
 00505F6D    call        TfmModules.miReadRoadMapByIdClick
 00505F72    lea         edx,[ebp-10]
 00505F75    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505F7A    call        TPanel.GetCaption
 00505F7F    push        dword ptr [ebp-10]
 00505F82    push        505FDC;' '
 00505F87    mov         eax,[0056E284];^gvar_0056DF34
 00505F8C    mov         eax,dword ptr [eax]
 00505F8E    push        dword ptr [eax+420]
 00505F94    lea         eax,[ebp-0C]
 00505F97    mov         edx,3
 00505F9C    call        @LStrCatN
 00505FA1    mov         edx,dword ptr [ebp-0C]
 00505FA4    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00505FA9    call        TPanel.SetCaption
 00505FAE    xor         eax,eax
 00505FB0    pop         edx
 00505FB1    pop         ecx
 00505FB2    pop         ecx
 00505FB3    mov         dword ptr fs:[eax],edx
 00505FB6    push        505FD0
 00505FBB    lea         eax,[ebp-10]
 00505FBE    mov         edx,2
 00505FC3    call        @LStrArrayClr
 00505FC8    ret
>00505FC9    jmp         @HandleFinally
>00505FCE    jmp         00505FBB
 00505FD0    mov         esp,ebp
 00505FD2    pop         ebp
 00505FD3    ret
*}
end;

//00505FE0
procedure TfmModules.miCheckClick(Sender:TObject);
begin
{*
 00505FE0    push        ebp
 00505FE1    mov         ebp,esp
 00505FE3    xor         ecx,ecx
 00505FE5    push        ecx
 00505FE6    push        ecx
 00505FE7    push        ecx
 00505FE8    push        ecx
 00505FE9    push        ecx
 00505FEA    push        ecx
 00505FEB    push        ecx
 00505FEC    mov         dword ptr [ebp-8],edx
 00505FEF    mov         dword ptr [ebp-4],eax
 00505FF2    xor         eax,eax
 00505FF4    push        ebp
 00505FF5    push        5061AC
 00505FFA    push        dword ptr fs:[eax]
 00505FFD    mov         dword ptr fs:[eax],esp
 00506000    mov         eax,dword ptr [ebp-4]
 00506003    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506009    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050600F    call        0045AF28
 00506014    test        eax,eax
>00506016    jle         00506191
 0050601C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506021    mov         eax,dword ptr [eax]
 00506023    mov         eax,dword ptr [eax+2F8]
 00506029    mov         eax,dword ptr [eax+248]
 0050602F    xor         edx,edx
 00506031    mov         ecx,dword ptr [eax]
 00506033    call        dword ptr [ecx+38]
 00506036    mov         eax,dword ptr [ebp-4]
 00506039    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050603F    mov         edx,dword ptr [eax]
 00506041    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506047    mov         edx,eax
 00506049    mov         eax,dword ptr [ebp-4]
 0050604C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506052    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506058    call        0045AF80
 0050605D    mov         ecx,dword ptr [eax+24]
 00506060    lea         eax,[ebp-0C]
 00506063    mov         edx,5061C0;'$'
 00506068    call        @LStrCat3
 0050606D    mov         eax,dword ptr [ebp-0C]
 00506070    xor         edx,edx
 00506072    call        0040C4A8
 00506077    call        004CF874
 0050607C    mov         eax,[0056E270];^gvar_00571EC0
 00506081    cmp         word ptr [eax+18],0
>00506086    jne         005060BD
 00506088    mov         eax,dword ptr [ebp-4]
 0050608B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506091    mov         edx,dword ptr [eax]
 00506093    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506099    mov         edx,eax
 0050609B    mov         eax,dword ptr [ebp-4]
 0050609E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005060A4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005060AA    call        0045AF80
 005060AF    mov         ecx,1
 005060B4    xor         edx,edx
 005060B6    call        0045A98C
>005060BB    jmp         005060F0
 005060BD    mov         eax,dword ptr [ebp-4]
 005060C0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005060C6    mov         edx,dword ptr [eax]
 005060C8    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005060CE    mov         edx,eax
 005060D0    mov         eax,dword ptr [ebp-4]
 005060D3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005060D9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005060DF    call        0045AF80
 005060E4    mov         ecx,2
 005060E9    xor         edx,edx
 005060EB    call        0045A98C
 005060F0    mov         eax,dword ptr [ebp-4]
 005060F3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005060F9    mov         edx,dword ptr [eax]
 005060FB    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506101    mov         edx,eax
 00506103    mov         eax,dword ptr [ebp-4]
 00506106    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050610C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506112    call        0045AF80
 00506117    mov         ecx,dword ptr [eax+24]
 0050611A    lea         eax,[ebp-18]
 0050611D    mov         edx,5061C0;'$'
 00506122    call        @LStrCat3
 00506127    mov         eax,dword ptr [ebp-18]
 0050612A    xor         edx,edx
 0050612C    call        0040C4A8
 00506131    call        00502410
 00506136    add         eax,eax
 00506138    movzx       eax,word ptr [eax*8+57266C]
 00506140    lea         ecx,[ebp-14]
 00506143    mov         edx,4
 00506148    call        IntToHex
 0050614D    push        dword ptr [ebp-14]
 00506150    push        5061CC;' - '
 00506155    lea         edx,[ebp-1C]
 00506158    mov         eax,[0056E270];^gvar_00571EC0
 0050615D    mov         ax,word ptr [eax+18]
 00506161    call        004CCABC
 00506166    push        dword ptr [ebp-1C]
 00506169    lea         eax,[ebp-10]
 0050616C    mov         edx,3
 00506171    call        @LStrCatN
 00506176    mov         edx,dword ptr [ebp-10]
 00506179    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050617E    mov         eax,dword ptr [eax]
 00506180    mov         eax,dword ptr [eax+2F8]
 00506186    mov         eax,dword ptr [eax+248]
 0050618C    mov         ecx,dword ptr [eax]
 0050618E    call        dword ptr [ecx+38]
 00506191    xor         eax,eax
 00506193    pop         edx
 00506194    pop         ecx
 00506195    pop         ecx
 00506196    mov         dword ptr fs:[eax],edx
 00506199    push        5061B3
 0050619E    lea         eax,[ebp-1C]
 005061A1    mov         edx,5
 005061A6    call        @LStrArrayClr
 005061AB    ret
>005061AC    jmp         @HandleFinally
>005061B1    jmp         0050619E
 005061B3    mov         esp,ebp
 005061B5    pop         ebp
 005061B6    ret
*}
end;

//005061D0
procedure TfmModules.miCheckAllClick(Sender:TObject);
begin
{*
 005061D0    push        ebp
 005061D1    mov         ebp,esp
 005061D3    add         esp,0FFFFFFE8
 005061D6    xor         ecx,ecx
 005061D8    mov         dword ptr [ebp-14],ecx
 005061DB    mov         dword ptr [ebp-18],ecx
 005061DE    mov         dword ptr [ebp-10],ecx
 005061E1    mov         dword ptr [ebp-0C],edx
 005061E4    mov         dword ptr [ebp-4],eax
 005061E7    xor         eax,eax
 005061E9    push        ebp
 005061EA    push        506409
 005061EF    push        dword ptr fs:[eax]
 005061F2    mov         dword ptr fs:[eax],esp
 005061F5    mov         eax,[0056E5A4];^gvar_0056DF04
 005061FA    mov         byte ptr [eax],0
 005061FD    xor         edx,edx
 005061FF    mov         eax,dword ptr [ebp-4]
 00506202    call        TfmModules.miRoadMapClearClick
 00506207    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050620E    jle         005063EE
 00506214    mov         eax,dword ptr [ebp-4]
 00506217    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050621D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506223    call        0045AF28
 00506228    test        eax,eax
>0050622A    jle         005063EE
 00506230    xor         eax,eax
 00506232    mov         dword ptr [ebp-8],eax
 00506235    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050623A    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506240    xor         edx,edx
 00506242    call        TProgressBar.SetMin
 00506247    mov         eax,dword ptr [ebp-4]
 0050624A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506250    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506256    call        0045AF28
 0050625B    mov         edx,eax
 0050625D    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506262    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506268    call        TProgressBar.SetMax
 0050626D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506272    mov         eax,dword ptr [eax]
 00506274    mov         eax,dword ptr [eax+2F8]
 0050627A    mov         eax,dword ptr [eax+248]
 00506280    xor         edx,edx
 00506282    mov         ecx,dword ptr [eax]
 00506284    call        dword ptr [ecx+38]
>00506287    jmp         005063A5
 0050628C    mov         eax,dword ptr [ebp-4]
 0050628F    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506295    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050629B    mov         edx,dword ptr [ebp-8]
 0050629E    call        0045AF80
 005062A3    xor         edx,edx
 005062A5    call        0045A63C
 005062AA    mov         eax,dword ptr [ebp-4]
 005062AD    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005062B3    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005062B9    mov         edx,dword ptr [ebp-8]
 005062BC    call        0045AF80
 005062C1    mov         ecx,dword ptr [eax+24]
 005062C4    lea         eax,[ebp-10]
 005062C7    mov         edx,50641C;'$'
 005062CC    call        @LStrCat3
 005062D1    mov         eax,dword ptr [ebp-10]
 005062D4    xor         edx,edx
 005062D6    call        0040C4A8
 005062DB    call        004CF874
 005062E0    mov         eax,[0056E270];^gvar_00571EC0
 005062E5    cmp         word ptr [eax+18],0
>005062EA    jne         00506311
 005062EC    mov         eax,dword ptr [ebp-4]
 005062EF    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005062F5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005062FB    mov         edx,dword ptr [ebp-8]
 005062FE    call        0045AF80
 00506303    mov         ecx,1
 00506308    xor         edx,edx
 0050630A    call        0045A98C
>0050630F    jmp         0050638F
 00506311    mov         eax,dword ptr [ebp-4]
 00506314    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050631A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506320    mov         edx,dword ptr [ebp-8]
 00506323    call        0045AF80
 00506328    mov         ecx,2
 0050632D    xor         edx,edx
 0050632F    call        0045A98C
 00506334    mov         eax,dword ptr [ebp-4]
 00506337    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050633D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506343    mov         edx,dword ptr [ebp-8]
 00506346    call        0045AF80
 0050634B    push        dword ptr [eax+24]
 0050634E    push        506428;' - '
 00506353    lea         edx,[ebp-18]
 00506356    mov         eax,[0056E270];^gvar_00571EC0
 0050635B    mov         ax,word ptr [eax+18]
 0050635F    call        004CCABC
 00506364    push        dword ptr [ebp-18]
 00506367    lea         eax,[ebp-14]
 0050636A    mov         edx,3
 0050636F    call        @LStrCatN
 00506374    mov         edx,dword ptr [ebp-14]
 00506377    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050637C    mov         eax,dword ptr [eax]
 0050637E    mov         eax,dword ptr [eax+2F8]
 00506384    mov         eax,dword ptr [eax+248]
 0050638A    mov         ecx,dword ptr [eax]
 0050638C    call        dword ptr [ecx+38]
 0050638F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506394    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050639A    mov         edx,dword ptr [ebp-8]
 0050639D    call        TProgressBar.SetPosition
 005063A2    inc         dword ptr [ebp-8]
 005063A5    mov         eax,dword ptr [ebp-4]
 005063A8    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005063AE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005063B4    call        0045AF28
 005063B9    cmp         eax,dword ptr [ebp-8]
>005063BC    jle         005063CC
 005063BE    mov         eax,[0056E5A4];^gvar_0056DF04
 005063C3    cmp         byte ptr [eax],0
>005063C6    je          0050628C
 005063CC    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005063D1    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005063D7    call        TProgressBar.GetMin
 005063DC    mov         edx,eax
 005063DE    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005063E3    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005063E9    call        TProgressBar.SetPosition
 005063EE    xor         eax,eax
 005063F0    pop         edx
 005063F1    pop         ecx
 005063F2    pop         ecx
 005063F3    mov         dword ptr fs:[eax],edx
 005063F6    push        506410
 005063FB    lea         eax,[ebp-18]
 005063FE    mov         edx,3
 00506403    call        @LStrArrayClr
 00506408    ret
>00506409    jmp         @HandleFinally
>0050640E    jmp         005063FB
 00506410    mov         esp,ebp
 00506412    pop         ebp
 00506413    ret
*}
end;

//0050642C
procedure TfmModules.miCheckSelectedClick(Sender:TObject);
begin
{*
 0050642C    push        ebp
 0050642D    mov         ebp,esp
 0050642F    add         esp,0FFFFFFE8
 00506432    xor         ecx,ecx
 00506434    mov         dword ptr [ebp-14],ecx
 00506437    mov         dword ptr [ebp-18],ecx
 0050643A    mov         dword ptr [ebp-10],ecx
 0050643D    mov         dword ptr [ebp-0C],edx
 00506440    mov         dword ptr [ebp-4],eax
 00506443    xor         eax,eax
 00506445    push        ebp
 00506446    push        5066CA
 0050644B    push        dword ptr fs:[eax]
 0050644E    mov         dword ptr fs:[eax],esp
 00506451    mov         eax,[0056E5A4];^gvar_0056DF04
 00506456    mov         byte ptr [eax],0
 00506459    xor         edx,edx
 0050645B    mov         eax,dword ptr [ebp-4]
 0050645E    call        TfmModules.miRoadMapClearClick
 00506463    mov         eax,dword ptr [ebp-4]
 00506466    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050646C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506472    call        0045AF28
 00506477    test        eax,eax
>00506479    jle         005066AF
 0050647F    mov         word ptr [ebp-6],0
 00506485    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050648A    mov         eax,dword ptr [eax]
 0050648C    mov         eax,dword ptr [eax+2F8]
 00506492    mov         eax,dword ptr [eax+248]
 00506498    xor         edx,edx
 0050649A    mov         ecx,dword ptr [eax]
 0050649C    call        dword ptr [ecx+38]
 0050649F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005064A4    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005064AA    xor         edx,edx
 005064AC    call        TProgressBar.SetMin
 005064B1    mov         eax,dword ptr [ebp-4]
 005064B4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005064BA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005064C0    call        0045AF28
 005064C5    mov         edx,eax
 005064C7    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005064CC    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005064D2    call        TProgressBar.SetMax
 005064D7    movzx       edx,word ptr [ebp-6]
 005064DB    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005064E0    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005064E6    call        TProgressBar.SetMin
>005064EB    jmp         00506663
 005064F0    movzx       edx,word ptr [ebp-6]
 005064F4    mov         eax,dword ptr [ebp-4]
 005064F7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005064FD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506503    call        0045AF80
 00506508    call        0045A66C
 0050650D    test        al,al
>0050650F    je          0050663F
 00506515    movzx       edx,word ptr [ebp-6]
 00506519    mov         eax,dword ptr [ebp-4]
 0050651C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506522    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506528    call        0045AF80
 0050652D    mov         ecx,dword ptr [eax+24]
 00506530    lea         eax,[ebp-10]
 00506533    mov         edx,5066E0;'$'
 00506538    call        @LStrCat3
 0050653D    mov         eax,dword ptr [ebp-10]
 00506540    xor         edx,edx
 00506542    call        0040C4A8
 00506547    call        004CF874
 0050654C    movzx       edx,word ptr [ebp-6]
 00506550    mov         eax,dword ptr [ebp-4]
 00506553    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506559    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050655F    call        0045AF80
 00506564    xor         edx,edx
 00506566    call        0045A63C
 0050656B    mov         eax,[0056E270];^gvar_00571EC0
 00506570    cmp         word ptr [eax+18],0
>00506575    jne         005065A0
 00506577    movzx       edx,word ptr [ebp-6]
 0050657B    mov         eax,dword ptr [ebp-4]
 0050657E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506584    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050658A    call        0045AF80
 0050658F    mov         ecx,1
 00506594    xor         edx,edx
 00506596    call        0045A98C
>0050659B    jmp         00506620
 005065A0    movzx       edx,word ptr [ebp-6]
 005065A4    mov         eax,dword ptr [ebp-4]
 005065A7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005065AD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005065B3    call        0045AF80
 005065B8    mov         ecx,2
 005065BD    xor         edx,edx
 005065BF    call        0045A98C
 005065C4    movzx       edx,word ptr [ebp-6]
 005065C8    mov         eax,dword ptr [ebp-4]
 005065CB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005065D1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005065D7    call        0045AF80
 005065DC    push        dword ptr [eax+24]
 005065DF    push        5066EC;' - '
 005065E4    lea         edx,[ebp-18]
 005065E7    mov         eax,[0056E270];^gvar_00571EC0
 005065EC    mov         ax,word ptr [eax+18]
 005065F0    call        004CCABC
 005065F5    push        dword ptr [ebp-18]
 005065F8    lea         eax,[ebp-14]
 005065FB    mov         edx,3
 00506600    call        @LStrCatN
 00506605    mov         edx,dword ptr [ebp-14]
 00506608    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050660D    mov         eax,dword ptr [eax]
 0050660F    mov         eax,dword ptr [eax+2F8]
 00506615    mov         eax,dword ptr [eax+248]
 0050661B    mov         ecx,dword ptr [eax]
 0050661D    call        dword ptr [ecx+38]
 00506620    movzx       edx,word ptr [ebp-6]
 00506624    mov         eax,dword ptr [ebp-4]
 00506627    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050662D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506633    call        0045AF80
 00506638    xor         edx,edx
 0050663A    call        0045A63C
 0050663F    mov         eax,[0056E3C0];^Application:TApplication
 00506644    mov         eax,dword ptr [eax]
 00506646    call        004AB51C
 0050664B    movzx       edx,word ptr [ebp-6]
 0050664F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506654    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050665A    call        TProgressBar.SetPosition
 0050665F    inc         word ptr [ebp-6]
 00506663    mov         eax,dword ptr [ebp-4]
 00506666    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050666C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506672    call        0045AF28
 00506677    movzx       edx,word ptr [ebp-6]
 0050667B    cmp         eax,edx
>0050667D    jle         0050668D
 0050667F    mov         eax,[0056E5A4];^gvar_0056DF04
 00506684    cmp         byte ptr [eax],0
>00506687    je          005064F0
 0050668D    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506692    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506698    call        TProgressBar.GetMin
 0050669D    mov         edx,eax
 0050669F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005066A4    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005066AA    call        TProgressBar.SetPosition
 005066AF    xor         eax,eax
 005066B1    pop         edx
 005066B2    pop         ecx
 005066B3    pop         ecx
 005066B4    mov         dword ptr fs:[eax],edx
 005066B7    push        5066D1
 005066BC    lea         eax,[ebp-18]
 005066BF    mov         edx,3
 005066C4    call        @LStrArrayClr
 005066C9    ret
>005066CA    jmp         @HandleFinally
>005066CF    jmp         005066BC
 005066D1    mov         esp,ebp
 005066D3    pop         ebp
 005066D4    ret
*}
end;

//005066F0
procedure TfmModules.btWriteModuleClick(Sender:TObject);
begin
{*
 005066F0    push        ebp
 005066F1    mov         ebp,esp
 005066F3    add         esp,0FFFFFFF0
 005066F6    xor         ecx,ecx
 005066F8    mov         dword ptr [ebp-10],ecx
 005066FB    mov         dword ptr [ebp-0C],edx
 005066FE    mov         dword ptr [ebp-4],eax
 00506701    xor         eax,eax
 00506703    push        ebp
 00506704    push        50674D
 00506709    push        dword ptr fs:[eax]
 0050670C    mov         dword ptr fs:[eax],esp
 0050670F    lea         edx,[ebp-10]
 00506712    mov         eax,dword ptr [ebp-4]
 00506715    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 0050671B    call        TPanel.GetCaption
 00506720    mov         eax,dword ptr [ebp-10]
 00506723    xor         edx,edx
 00506725    call        0040C4A8
 0050672A    mov         word ptr [ebp-6],ax
 0050672E    mov         ax,word ptr [ebp-6]
 00506732    call        0050211C
 00506737    xor         eax,eax
 00506739    pop         edx
 0050673A    pop         ecx
 0050673B    pop         ecx
 0050673C    mov         dword ptr fs:[eax],edx
 0050673F    push        506754
 00506744    lea         eax,[ebp-10]
 00506747    call        @LStrClr
 0050674C    ret
>0050674D    jmp         @HandleFinally
>00506752    jmp         00506744
 00506754    mov         esp,ebp
 00506756    pop         ebp
 00506757    ret
*}
end;

//00506758
procedure TfmModules.miWriteClick(Sender:TObject);
begin
{*
 00506758    push        ebp
 00506759    mov         ebp,esp
 0050675B    add         esp,0FFFFFFF8
 0050675E    mov         dword ptr [ebp-8],edx
 00506761    mov         dword ptr [ebp-4],eax
 00506764    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050676B    jle         0050679B
 0050676D    mov         eax,dword ptr [ebp-4]
 00506770    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506776    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050677C    call        0045AF28
 00506781    test        eax,eax
>00506783    jle         0050679B
 00506785    mov         eax,dword ptr [ebp-4]
 00506788    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050678E    mov         edx,dword ptr [eax]
 00506790    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506796    call        0050528C
 0050679B    pop         ecx
 0050679C    pop         ecx
 0050679D    pop         ebp
 0050679E    ret
*}
end;

//005067A0
procedure TfmModules.miWriteSelectedClick(Sender:TObject);
begin
{*
 005067A0    push        ebp
 005067A1    mov         ebp,esp
 005067A3    add         esp,0FFFFFFF4
 005067A6    mov         dword ptr [ebp-0C],edx
 005067A9    mov         dword ptr [ebp-4],eax
 005067AC    mov         eax,[0056E5A4];^gvar_0056DF04
 005067B1    mov         byte ptr [eax],0
 005067B4    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>005067BB    jle         005068EA
 005067C1    mov         eax,dword ptr [ebp-4]
 005067C4    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005067CA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005067D0    call        0045AF28
 005067D5    test        eax,eax
>005067D7    jle         005068EA
 005067DD    mov         word ptr [ebp-6],0
 005067E3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005067E8    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005067EE    xor         edx,edx
 005067F0    call        TProgressBar.SetMin
 005067F5    mov         eax,dword ptr [ebp-4]
 005067F8    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005067FE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506804    call        0045AF28
 00506809    mov         edx,eax
 0050680B    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506810    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506816    call        TProgressBar.SetMax
 0050681B    movzx       edx,word ptr [ebp-6]
 0050681F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506824    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050682A    call        TProgressBar.SetMin
>0050682F    jmp         0050689E
 00506831    movzx       edx,word ptr [ebp-6]
 00506835    mov         eax,dword ptr [ebp-4]
 00506838    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050683E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506844    call        0045AF80
 00506849    call        0045A66C
 0050684E    test        al,al
>00506850    je          0050687A
 00506852    movzx       eax,word ptr [ebp-6]
 00506856    call        0050528C
 0050685B    movzx       edx,word ptr [ebp-6]
 0050685F    mov         eax,dword ptr [ebp-4]
 00506862    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506868    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050686E    call        0045AF80
 00506873    xor         edx,edx
 00506875    call        0045A63C
 0050687A    mov         eax,[0056E3C0];^Application:TApplication
 0050687F    mov         eax,dword ptr [eax]
 00506881    call        004AB51C
 00506886    movzx       edx,word ptr [ebp-6]
 0050688A    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050688F    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506895    call        TProgressBar.SetPosition
 0050689A    inc         word ptr [ebp-6]
 0050689E    mov         eax,dword ptr [ebp-4]
 005068A1    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005068A7    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005068AD    call        0045AF28
 005068B2    movzx       edx,word ptr [ebp-6]
 005068B6    cmp         eax,edx
>005068B8    jle         005068C8
 005068BA    mov         eax,[0056E5A4];^gvar_0056DF04
 005068BF    cmp         byte ptr [eax],0
>005068C2    je          00506831
 005068C8    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005068CD    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005068D3    call        TProgressBar.GetMin
 005068D8    mov         edx,eax
 005068DA    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005068DF    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005068E5    call        TProgressBar.SetPosition
 005068EA    mov         esp,ebp
 005068EC    pop         ebp
 005068ED    ret
*}
end;

//005068F0
procedure TfmModules.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 005068F0    push        ebp
 005068F1    mov         ebp,esp
 005068F3    add         esp,0FFFFFFF4
 005068F6    mov         dword ptr [ebp-8],ecx
 005068F9    mov         dword ptr [ebp-0C],edx
 005068FC    mov         dword ptr [ebp-4],eax
 005068FF    mov         eax,[0056E5A4];^gvar_0056DF04
 00506904    mov         byte ptr [eax],1
 00506907    mov         byte ptr ds:[56D40C],1;gvar_0056D40C:Boolean
 0050690E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506913    mov         eax,dword ptr [eax+44];TfmModules.Top:Integer
 00506916    mov         edx,dword ptr ds:[56E5C0];^gvar_0056DF68:Integer
 0050691C    mov         dword ptr [edx],eax
 0050691E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506923    mov         eax,dword ptr [eax+40];TfmModules.Left:Integer
 00506926    mov         edx,dword ptr ds:[56E524];^gvar_0056DF6C:Integer
 0050692C    mov         dword ptr [edx],eax
 0050692E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506933    mov         eax,dword ptr [eax+4C];TfmModules.Height:Integer
 00506936    mov         edx,dword ptr ds:[56E400];^gvar_0056DF70:Integer
 0050693C    mov         dword ptr [edx],eax
 0050693E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506943    mov         eax,dword ptr [eax+48];TfmModules.Width:Integer
 00506946    mov         edx,dword ptr ds:[56E420];^gvar_0056DF74:Integer
 0050694C    mov         dword ptr [edx],eax
 0050694E    mov         eax,dword ptr [ebp-8]
 00506951    mov         byte ptr [eax],2
 00506954    xor         eax,eax
 00506956    mov         [0056D404],eax;gvar_0056D404:TfmModules
 0050695B    mov         esp,ebp
 0050695D    pop         ebp
 0050695E    ret
*}
end;

//00506960
procedure TfmModules.cbByIdClick(Sender:TObject);
begin
{*
 00506960    push        ebp
 00506961    mov         ebp,esp
 00506963    add         esp,0FFFFFFF8
 00506966    mov         dword ptr [ebp-8],edx
 00506969    mov         dword ptr [ebp-4],eax
 0050696C    mov         eax,dword ptr [ebp-4]
 0050696F    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00506975    mov         edx,dword ptr [eax]
 00506977    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050697D    mov         [0056D40C],al;gvar_0056D40C:Boolean
 00506982    mov         eax,dword ptr [ebp-4]
 00506985    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 0050698B    mov         edx,dword ptr [eax]
 0050698D    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00506993    test        al,al
>00506995    jne         005069A1
 00506997    mov         eax,[0056E040];^gvar_005720C0
 0050699C    cmp         byte ptr [eax],0
>0050699F    jne         005069A5
 005069A1    xor         edx,edx
>005069A3    jmp         005069A7
 005069A5    mov         dl,1
 005069A7    mov         eax,dword ptr [ebp-4]
 005069AA    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 005069B0    call        TImage.SetVisible
 005069B5    mov         eax,dword ptr [ebp-4]
 005069B8    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 005069BE    mov         edx,dword ptr [eax]
 005069C0    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005069C6    test        al,al
>005069C8    jne         005069D4
 005069CA    mov         eax,[0056E040];^gvar_005720C0
 005069CF    cmp         byte ptr [eax],0
>005069D2    jne         005069D8
 005069D4    xor         edx,edx
>005069D6    jmp         005069DA
 005069D8    mov         dl,1
 005069DA    mov         eax,dword ptr [ebp-4]
 005069DD    mov         eax,dword ptr [eax+3B8];TfmModules.btGetOffset:TButton
 005069E3    call        TImage.SetVisible
 005069E8    mov         eax,dword ptr [ebp-4]
 005069EB    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 005069F1    mov         edx,dword ptr [eax]
 005069F3    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005069F9    test        al,al
>005069FB    jne         00506A07
 005069FD    mov         eax,[0056E040];^gvar_005720C0
 00506A02    cmp         byte ptr [eax],0
>00506A05    jne         00506A0B
 00506A07    xor         edx,edx
>00506A09    jmp         00506A0D
 00506A0B    mov         dl,1
 00506A0D    mov         eax,dword ptr [ebp-4]
 00506A10    mov         eax,dword ptr [eax+3B0];TfmModules.cbAltUba2:TCheckBox
 00506A16    call        TImage.SetVisible
 00506A1B    mov         eax,dword ptr [ebp-4]
 00506A1E    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00506A24    mov         edx,dword ptr [eax]
 00506A26    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00506A2C    mov         edx,eax
 00506A2E    xor         dl,1
 00506A31    mov         eax,dword ptr [ebp-4]
 00506A34    mov         eax,dword ptr [eax+3AC];TfmModules.cbMapSecondCopy:TCheckBox
 00506A3A    call        TImage.SetVisible
 00506A3F    mov         eax,dword ptr [ebp-4]
 00506A42    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00506A48    mov         edx,dword ptr [eax]
 00506A4A    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00506A50    mov         edx,eax
 00506A52    xor         dl,1
 00506A55    mov         eax,dword ptr [ebp-4]
 00506A58    mov         eax,dword ptr [eax+374];TfmModules.miSelectAllonCurrentHead:TMenuItem
 00506A5E    call        TMenuItem.SetVisible
 00506A63    mov         eax,dword ptr [ebp-4]
 00506A66    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00506A6C    mov         edx,dword ptr [eax]
 00506A6E    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00506A74    mov         edx,eax
 00506A76    xor         dl,1
 00506A79    mov         eax,dword ptr [ebp-4]
 00506A7C    mov         eax,dword ptr [eax+378];TfmModules.miUnselectAllonCurentHead:TMenuItem
 00506A82    call        TMenuItem.SetVisible
 00506A87    mov         eax,dword ptr [ebp-4]
 00506A8A    mov         eax,dword ptr [eax+3A8];TfmModules.cbById:TCheckBox
 00506A90    mov         edx,dword ptr [eax]
 00506A92    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00506A98    test        al,al
>00506A9A    je          00506AC0
 00506A9C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506AA1    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506AA7    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 00506AAD    mov         edx,2
 00506AB2    call        00459D44
 00506AB7    xor         edx,edx
 00506AB9    call        TListColumn.SetWidth
>00506ABE    jmp         00506B02
 00506AC0    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506AC5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506ACB    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 00506AD1    mov         edx,2
 00506AD6    call        00459D44
 00506ADB    mov         edx,1E
 00506AE0    call        TListColumn.SetWidth
 00506AE5    mov         eax,[0056E284];^gvar_0056DF34
 00506AEA    mov         eax,dword ptr [eax]
 00506AEC    mov         eax,dword ptr [eax+408]
 00506AF2    cmp         byte ptr [eax+38],0
>00506AF6    je          00506B02
 00506AF8    xor         edx,edx
 00506AFA    mov         eax,dword ptr [ebp-4]
 00506AFD    call        TfmModules.btGetOffsetClick
 00506B02    call        00502D58
 00506B07    pop         ecx
 00506B08    pop         ecx
 00506B09    pop         ebp
 00506B0A    ret
*}
end;

//00506B0C
procedure TfmModules.btInitModuleClick(Sender:TObject);
begin
{*
 00506B0C    push        ebp
 00506B0D    mov         ebp,esp
 00506B0F    xor         ecx,ecx
 00506B11    push        ecx
 00506B12    push        ecx
 00506B13    push        ecx
 00506B14    push        ecx
 00506B15    push        ecx
 00506B16    push        ecx
 00506B17    push        ecx
 00506B18    mov         dword ptr [ebp-0C],edx
 00506B1B    mov         dword ptr [ebp-4],eax
 00506B1E    xor         eax,eax
 00506B20    push        ebp
 00506B21    push        506BD1
 00506B26    push        dword ptr fs:[eax]
 00506B29    mov         dword ptr fs:[eax],esp
 00506B2C    lea         edx,[ebp-10]
 00506B2F    mov         eax,dword ptr [ebp-4]
 00506B32    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00506B38    call        TPanel.GetCaption
 00506B3D    mov         eax,dword ptr [ebp-10]
 00506B40    xor         edx,edx
 00506B42    call        0040C4A8
 00506B47    mov         word ptr [ebp-6],ax
 00506B4B    mov         ax,word ptr [ebp-6]
 00506B4F    call        004CFA34
 00506B54    call        004CEB6C
 00506B59    lea         ecx,[ebp-18]
 00506B5C    movzx       eax,word ptr [ebp-6]
 00506B60    mov         edx,2
 00506B65    call        IntToHex
 00506B6A    push        dword ptr [ebp-18]
 00506B6D    push        506BE4;' - '
 00506B72    lea         edx,[ebp-1C]
 00506B75    mov         eax,[0056E270];^gvar_00571EC0
 00506B7A    mov         ax,word ptr [eax+18]
 00506B7E    call        004CCABC
 00506B83    push        dword ptr [ebp-1C]
 00506B86    lea         eax,[ebp-14]
 00506B89    mov         edx,3
 00506B8E    call        @LStrCatN
 00506B93    mov         edx,dword ptr [ebp-14]
 00506B96    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506B9B    mov         eax,dword ptr [eax]
 00506B9D    mov         eax,dword ptr [eax+2F8]
 00506BA3    mov         eax,dword ptr [eax+248]
 00506BA9    mov         ecx,dword ptr [eax]
 00506BAB    call        dword ptr [ecx+38]
 00506BAE    xor         eax,eax
 00506BB0    pop         edx
 00506BB1    pop         ecx
 00506BB2    pop         ecx
 00506BB3    mov         dword ptr fs:[eax],edx
 00506BB6    push        506BD8
 00506BBB    lea         eax,[ebp-1C]
 00506BBE    mov         edx,3
 00506BC3    call        @LStrArrayClr
 00506BC8    lea         eax,[ebp-10]
 00506BCB    call        @LStrClr
 00506BD0    ret
>00506BD1    jmp         @HandleFinally
>00506BD6    jmp         00506BBB
 00506BD8    mov         esp,ebp
 00506BDA    pop         ebp
 00506BDB    ret
*}
end;

//00506BE8
{*procedure TfmModules.miInitClick(?:?);
begin
 00506BE8    push        ebp
 00506BE9    mov         ebp,esp
 00506BEB    xor         ecx,ecx
 00506BED    push        ecx
 00506BEE    push        ecx
 00506BEF    push        ecx
 00506BF0    push        ecx
 00506BF1    push        ecx
 00506BF2    mov         dword ptr [ebp-8],edx
 00506BF5    mov         dword ptr [ebp-4],eax
 00506BF8    xor         eax,eax
 00506BFA    push        ebp
 00506BFB    push        506D99
 00506C00    push        dword ptr fs:[eax]
 00506C03    mov         dword ptr fs:[eax],esp
 00506C06    mov         eax,[0056E5A4];^gvar_0056DF04
 00506C0B    mov         byte ptr [eax],0
 00506C0E    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00506C15    jle         00506D7E
 00506C1B    mov         eax,dword ptr [ebp-4]
 00506C1E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506C24    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506C2A    call        0045AF28
 00506C2F    test        eax,eax
>00506C31    jle         00506D7E
 00506C37    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506C3C    mov         eax,dword ptr [eax]
 00506C3E    mov         eax,dword ptr [eax+2F8]
 00506C44    mov         eax,dword ptr [eax+248]
 00506C4A    xor         edx,edx
 00506C4C    mov         ecx,dword ptr [eax]
 00506C4E    call        dword ptr [ecx+38]
 00506C51    mov         eax,dword ptr [ebp-4]
 00506C54    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506C5A    mov         edx,dword ptr [eax]
 00506C5C    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506C62    mov         edx,eax
 00506C64    mov         eax,dword ptr [ebp-4]
 00506C67    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506C6D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506C73    call        0045AF80
 00506C78    mov         ecx,dword ptr [eax+24]
 00506C7B    lea         eax,[ebp-0C]
 00506C7E    mov         edx,506DAC;'$'
 00506C83    call        @LStrCat3
 00506C88    mov         eax,dword ptr [ebp-0C]
 00506C8B    xor         edx,edx
 00506C8D    call        0040C4A8
 00506C92    call        004CFA34
 00506C97    call        004CEB6C
 00506C9C    mov         eax,[0056E270];^gvar_00571EC0
 00506CA1    cmp         word ptr [eax+18],0
>00506CA6    jne         00506CE0
 00506CA8    mov         eax,dword ptr [ebp-4]
 00506CAB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506CB1    mov         edx,dword ptr [eax]
 00506CB3    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506CB9    mov         edx,eax
 00506CBB    mov         eax,dword ptr [ebp-4]
 00506CBE    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506CC4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506CCA    call        0045AF80
 00506CCF    mov         ecx,1
 00506CD4    xor         edx,edx
 00506CD6    call        0045A98C
>00506CDB    jmp         00506D7E
 00506CE0    mov         eax,dword ptr [ebp-4]
 00506CE3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506CE9    mov         edx,dword ptr [eax]
 00506CEB    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506CF1    mov         edx,eax
 00506CF3    mov         eax,dword ptr [ebp-4]
 00506CF6    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506CFC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506D02    call        0045AF80
 00506D07    mov         ecx,2
 00506D0C    xor         edx,edx
 00506D0E    call        0045A98C
 00506D13    mov         eax,dword ptr [ebp-4]
 00506D16    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506D1C    mov         edx,dword ptr [eax]
 00506D1E    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00506D24    mov         edx,eax
 00506D26    mov         eax,dword ptr [ebp-4]
 00506D29    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506D2F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506D35    call        0045AF80
 00506D3A    push        dword ptr [eax+24]
 00506D3D    push        506DB8;' - '
 00506D42    lea         edx,[ebp-14]
 00506D45    mov         eax,[0056E270];^gvar_00571EC0
 00506D4A    mov         ax,word ptr [eax+18]
 00506D4E    call        004CCABC
 00506D53    push        dword ptr [ebp-14]
 00506D56    lea         eax,[ebp-10]
 00506D59    mov         edx,3
 00506D5E    call        @LStrCatN
 00506D63    mov         edx,dword ptr [ebp-10]
 00506D66    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506D6B    mov         eax,dword ptr [eax]
 00506D6D    mov         eax,dword ptr [eax+2F8]
 00506D73    mov         eax,dword ptr [eax+248]
 00506D79    mov         ecx,dword ptr [eax]
 00506D7B    call        dword ptr [ecx+38]
 00506D7E    xor         eax,eax
 00506D80    pop         edx
 00506D81    pop         ecx
 00506D82    pop         ecx
 00506D83    mov         dword ptr fs:[eax],edx
 00506D86    push        506DA0
 00506D8B    lea         eax,[ebp-14]
 00506D8E    mov         edx,3
 00506D93    call        @LStrArrayClr
 00506D98    ret
>00506D99    jmp         @HandleFinally
>00506D9E    jmp         00506D8B
 00506DA0    mov         esp,ebp
 00506DA2    pop         ebp
 00506DA3    ret
end;*}

//00506DBC
{*procedure TfmModules.miInitSelectedClick(?:?);
begin
 00506DBC    push        ebp
 00506DBD    mov         ebp,esp
 00506DBF    add         esp,0FFFFFFE8
 00506DC2    xor         ecx,ecx
 00506DC4    mov         dword ptr [ebp-14],ecx
 00506DC7    mov         dword ptr [ebp-18],ecx
 00506DCA    mov         dword ptr [ebp-10],ecx
 00506DCD    mov         dword ptr [ebp-0C],edx
 00506DD0    mov         dword ptr [ebp-4],eax
 00506DD3    xor         eax,eax
 00506DD5    push        ebp
 00506DD6    push        50706C
 00506DDB    push        dword ptr fs:[eax]
 00506DDE    mov         dword ptr fs:[eax],esp
 00506DE1    mov         eax,[0056E5A4];^gvar_0056DF04
 00506DE6    mov         byte ptr [eax],0
 00506DE9    xor         edx,edx
 00506DEB    mov         eax,dword ptr [ebp-4]
 00506DEE    call        TfmModules.miRoadMapClearClick
 00506DF3    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00506DFA    jle         00507051
 00506E00    mov         eax,dword ptr [ebp-4]
 00506E03    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506E09    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506E0F    call        0045AF28
 00506E14    test        eax,eax
>00506E16    jle         00507051
 00506E1C    mov         word ptr [ebp-6],0
 00506E22    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506E27    mov         eax,dword ptr [eax]
 00506E29    mov         eax,dword ptr [eax+2F8]
 00506E2F    mov         eax,dword ptr [eax+248]
 00506E35    xor         edx,edx
 00506E37    mov         ecx,dword ptr [eax]
 00506E39    call        dword ptr [ecx+38]
 00506E3C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506E41    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506E47    xor         edx,edx
 00506E49    call        TProgressBar.SetMin
 00506E4E    mov         eax,dword ptr [ebp-4]
 00506E51    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506E57    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506E5D    call        0045AF28
 00506E62    mov         edx,eax
 00506E64    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506E69    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506E6F    call        TProgressBar.SetMax
 00506E74    movzx       edx,word ptr [ebp-6]
 00506E78    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506E7D    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506E83    call        TProgressBar.SetMin
>00506E88    jmp         00507005
 00506E8D    movzx       edx,word ptr [ebp-6]
 00506E91    mov         eax,dword ptr [ebp-4]
 00506E94    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506E9A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506EA0    call        0045AF80
 00506EA5    call        0045A66C
 00506EAA    test        al,al
>00506EAC    je          00506FE1
 00506EB2    movzx       edx,word ptr [ebp-6]
 00506EB6    mov         eax,dword ptr [ebp-4]
 00506EB9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506EBF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506EC5    call        0045AF80
 00506ECA    mov         ecx,dword ptr [eax+24]
 00506ECD    lea         eax,[ebp-10]
 00506ED0    mov         edx,507080;'$'
 00506ED5    call        @LStrCat3
 00506EDA    mov         eax,dword ptr [ebp-10]
 00506EDD    xor         edx,edx
 00506EDF    call        0040C4A8
 00506EE4    call        004CFA34
 00506EE9    call        004CEB6C
 00506EEE    movzx       edx,word ptr [ebp-6]
 00506EF2    mov         eax,dword ptr [ebp-4]
 00506EF5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506EFB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506F01    call        0045AF80
 00506F06    xor         edx,edx
 00506F08    call        0045A63C
 00506F0D    mov         eax,[0056E270];^gvar_00571EC0
 00506F12    cmp         word ptr [eax+18],0
>00506F17    jne         00506F42
 00506F19    movzx       edx,word ptr [ebp-6]
 00506F1D    mov         eax,dword ptr [ebp-4]
 00506F20    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506F26    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506F2C    call        0045AF80
 00506F31    mov         ecx,1
 00506F36    xor         edx,edx
 00506F38    call        0045A98C
>00506F3D    jmp         00506FC2
 00506F42    movzx       edx,word ptr [ebp-6]
 00506F46    mov         eax,dword ptr [ebp-4]
 00506F49    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506F4F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506F55    call        0045AF80
 00506F5A    mov         ecx,2
 00506F5F    xor         edx,edx
 00506F61    call        0045A98C
 00506F66    movzx       edx,word ptr [ebp-6]
 00506F6A    mov         eax,dword ptr [ebp-4]
 00506F6D    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506F73    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506F79    call        0045AF80
 00506F7E    push        dword ptr [eax+24]
 00506F81    push        50708C;' - '
 00506F86    lea         edx,[ebp-18]
 00506F89    mov         eax,[0056E270];^gvar_00571EC0
 00506F8E    mov         ax,word ptr [eax+18]
 00506F92    call        004CCABC
 00506F97    push        dword ptr [ebp-18]
 00506F9A    lea         eax,[ebp-14]
 00506F9D    mov         edx,3
 00506FA2    call        @LStrCatN
 00506FA7    mov         edx,dword ptr [ebp-14]
 00506FAA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00506FAF    mov         eax,dword ptr [eax]
 00506FB1    mov         eax,dword ptr [eax+2F8]
 00506FB7    mov         eax,dword ptr [eax+248]
 00506FBD    mov         ecx,dword ptr [eax]
 00506FBF    call        dword ptr [ecx+38]
 00506FC2    movzx       edx,word ptr [ebp-6]
 00506FC6    mov         eax,dword ptr [ebp-4]
 00506FC9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00506FCF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00506FD5    call        0045AF80
 00506FDA    xor         edx,edx
 00506FDC    call        0045A63C
 00506FE1    mov         eax,[0056E3C0];^Application:TApplication
 00506FE6    mov         eax,dword ptr [eax]
 00506FE8    call        004AB51C
 00506FED    movzx       edx,word ptr [ebp-6]
 00506FF1    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00506FF6    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00506FFC    call        TProgressBar.SetPosition
 00507001    inc         word ptr [ebp-6]
 00507005    mov         eax,dword ptr [ebp-4]
 00507008    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050700E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507014    call        0045AF28
 00507019    movzx       edx,word ptr [ebp-6]
 0050701D    cmp         eax,edx
>0050701F    jle         0050702F
 00507021    mov         eax,[0056E5A4];^gvar_0056DF04
 00507026    cmp         byte ptr [eax],0
>00507029    je          00506E8D
 0050702F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507034    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050703A    call        TProgressBar.GetMin
 0050703F    mov         edx,eax
 00507041    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507046    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050704C    call        TProgressBar.SetPosition
 00507051    xor         eax,eax
 00507053    pop         edx
 00507054    pop         ecx
 00507055    pop         ecx
 00507056    mov         dword ptr fs:[eax],edx
 00507059    push        507073
 0050705E    lea         eax,[ebp-18]
 00507061    mov         edx,3
 00507066    call        @LStrArrayClr
 0050706B    ret
>0050706C    jmp         @HandleFinally
>00507071    jmp         0050705E
 00507073    mov         esp,ebp
 00507075    pop         ebp
 00507076    ret
end;*}

//00507090
procedure TfmModules.miRoadMapClearClick(Sender:TObject);
begin
{*
 00507090    push        ebp
 00507091    mov         ebp,esp
 00507093    add         esp,0FFFFFFF4
 00507096    push        ebx
 00507097    mov         dword ptr [ebp-0C],edx
 0050709A    mov         dword ptr [ebp-4],eax
 0050709D    mov         eax,[0056E5A4];^gvar_0056DF04
 005070A2    mov         byte ptr [eax],0
 005070A5    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>005070AC    jle         005071BC
 005070B2    mov         eax,dword ptr [ebp-4]
 005070B5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005070BB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005070C1    call        0045AF28
 005070C6    test        eax,eax
>005070C8    jle         005071BC
 005070CE    xor         eax,eax
 005070D0    mov         dword ptr [ebp-8],eax
>005070D3    jmp         00507195
 005070D8    mov         eax,dword ptr [ebp-4]
 005070DB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005070E1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005070E7    mov         edx,dword ptr [ebp-8]
 005070EA    call        0045AF80
 005070EF    call        0045A66C
 005070F4    mov         eax,dword ptr [ebp-4]
 005070F7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005070FD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507103    mov         edx,dword ptr [ebp-8]
 00507106    call        0045AF80
 0050710B    xor         ecx,ecx
 0050710D    xor         edx,edx
 0050710F    call        0045A98C
 00507114    mov         eax,dword ptr [ebp-4]
 00507117    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050711D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507123    mov         edx,dword ptr [ebp-8]
 00507126    call        0045AF80
 0050712B    mov         eax,dword ptr [eax+8]
 0050712E    xor         ecx,ecx
 00507130    mov         edx,4
 00507135    mov         ebx,dword ptr [eax]
 00507137    call        dword ptr [ebx+20]
 0050713A    mov         eax,dword ptr [ebp-4]
 0050713D    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507143    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507149    mov         edx,dword ptr [ebp-8]
 0050714C    call        0045AF80
 00507151    mov         eax,dword ptr [eax+8]
 00507154    xor         ecx,ecx
 00507156    mov         edx,5
 0050715B    mov         ebx,dword ptr [eax]
 0050715D    call        dword ptr [ebx+20]
 00507160    mov         eax,dword ptr [ebp-4]
 00507163    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507169    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050716F    mov         edx,dword ptr [ebp-8]
 00507172    call        0045AF80
 00507177    mov         eax,dword ptr [eax+8]
 0050717A    xor         ecx,ecx
 0050717C    mov         edx,6
 00507181    mov         ebx,dword ptr [eax]
 00507183    call        dword ptr [ebx+20]
 00507186    mov         eax,[0056E3C0];^Application:TApplication
 0050718B    mov         eax,dword ptr [eax]
 0050718D    call        004AB51C
 00507192    inc         dword ptr [ebp-8]
 00507195    mov         eax,dword ptr [ebp-4]
 00507198    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050719E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005071A4    call        0045AF28
 005071A9    cmp         eax,dword ptr [ebp-8]
>005071AC    jle         005071BC
 005071AE    mov         eax,[0056E5A4];^gvar_0056DF04
 005071B3    cmp         byte ptr [eax],0
>005071B6    je          005070D8
 005071BC    pop         ebx
 005071BD    mov         esp,ebp
 005071BF    pop         ebp
 005071C0    ret
*}
end;

//005071C4
procedure TfmModules.lvModulesDblClick(Sender:TObject);
begin
{*
 005071C4    push        ebp
 005071C5    mov         ebp,esp
 005071C7    mov         ecx,6
 005071CC    push        0
 005071CE    push        0
 005071D0    dec         ecx
>005071D1    jne         005071CC
 005071D3    push        ebx
 005071D4    mov         dword ptr [ebp-0C],edx
 005071D7    mov         dword ptr [ebp-4],eax
 005071DA    xor         eax,eax
 005071DC    push        ebp
 005071DD    push        5074D7
 005071E2    push        dword ptr fs:[eax]
 005071E5    mov         dword ptr fs:[eax],esp
 005071E8    mov         eax,[0056E5A4];^gvar_0056DF04
 005071ED    mov         byte ptr [eax],0
 005071F0    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>005071F7    jle         005074B4
 005071FD    mov         eax,dword ptr [ebp-4]
 00507200    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507206    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050720C    call        0045AF28
 00507211    test        eax,eax
>00507213    jle         005074B4
 00507219    mov         eax,dword ptr [ebp-4]
 0050721C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507222    mov         edx,dword ptr [eax]
 00507224    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050722A    mov         edx,eax
 0050722C    mov         eax,dword ptr [ebp-4]
 0050722F    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507235    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050723B    call        0045AF80
 00507240    cmp         dword ptr [eax+10],1
>00507244    jne         0050749E
 0050724A    push        10
 0050724C    call        user32.GetKeyState
 00507251    not         ax
 00507254    test        ax,ax
>00507257    jge         0050749E
 0050725D    mov         eax,dword ptr [ebp-4]
 00507260    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507266    mov         edx,dword ptr [eax]
 00507268    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050726E    mov         edx,eax
 00507270    mov         eax,dword ptr [ebp-4]
 00507273    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507279    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050727F    call        0045AF80
 00507284    mov         eax,dword ptr [eax+8]
 00507287    lea         ecx,[ebp-10]
 0050728A    mov         edx,1
 0050728F    mov         ebx,dword ptr [eax]
 00507291    call        dword ptr [ebx+0C]
 00507294    mov         eax,dword ptr [ebp-10]
 00507297    mov         edx,5074EC;'1'
 0050729C    call        @LStrCmp
>005072A1    jne         00507399
 005072A7    mov         eax,[0056E040];^gvar_005720C0
 005072AC    cmp         byte ptr [eax],0
>005072AF    je          00507325
 005072B1    mov         eax,[0056E2D0];^gvar_0056DF38
 005072B6    push        dword ptr [eax]
 005072B8    push        5074F8;'Modules\Copy1\   '
 005072BD    mov         eax,dword ptr [ebp-4]
 005072C0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005072C6    mov         edx,dword ptr [eax]
 005072C8    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005072CE    mov         edx,eax
 005072D0    mov         eax,dword ptr [ebp-4]
 005072D3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005072D9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005072DF    call        0045AF80
 005072E4    mov         ecx,dword ptr [eax+24]
 005072E7    lea         eax,[ebp-18]
 005072EA    mov         edx,507514;'$'
 005072EF    call        @LStrCat3
 005072F4    mov         eax,dword ptr [ebp-18]
 005072F7    xor         edx,edx
 005072F9    call        0040C4A8
 005072FE    lea         ecx,[ebp-14]
 00507301    mov         edx,4
 00507306    call        IntToHex
 0050730B    push        dword ptr [ebp-14]
 0050730E    push        507520;'.rpm'
 00507313    lea         eax,[ebp-8]
 00507316    mov         edx,4
 0050731B    call        @LStrCatN
>00507320    jmp         00507483
 00507325    mov         eax,[0056E2D0];^gvar_0056DF38
 0050732A    push        dword ptr [eax]
 0050732C    push        5074F8;'Modules\Copy1\   '
 00507331    mov         eax,dword ptr [ebp-4]
 00507334    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050733A    mov         edx,dword ptr [eax]
 0050733C    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507342    mov         edx,eax
 00507344    mov         eax,dword ptr [ebp-4]
 00507347    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050734D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507353    call        0045AF80
 00507358    mov         ecx,dword ptr [eax+24]
 0050735B    lea         eax,[ebp-20]
 0050735E    mov         edx,507514;'$'
 00507363    call        @LStrCat3
 00507368    mov         eax,dword ptr [ebp-20]
 0050736B    xor         edx,edx
 0050736D    call        0040C4A8
 00507372    lea         ecx,[ebp-1C]
 00507375    mov         edx,2
 0050737A    call        IntToHex
 0050737F    push        dword ptr [ebp-1C]
 00507382    push        507520;'.rpm'
 00507387    lea         eax,[ebp-8]
 0050738A    mov         edx,4
 0050738F    call        @LStrCatN
>00507394    jmp         00507483
 00507399    mov         eax,[0056E040];^gvar_005720C0
 0050739E    cmp         byte ptr [eax],0
>005073A1    je          00507414
 005073A3    mov         eax,[0056E2D0];^gvar_0056DF38
 005073A8    push        dword ptr [eax]
 005073AA    push        507530;'Modules\   '
 005073AF    mov         eax,dword ptr [ebp-4]
 005073B2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005073B8    mov         edx,dword ptr [eax]
 005073BA    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005073C0    mov         edx,eax
 005073C2    mov         eax,dword ptr [ebp-4]
 005073C5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005073CB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005073D1    call        0045AF80
 005073D6    mov         ecx,dword ptr [eax+24]
 005073D9    lea         eax,[ebp-28]
 005073DC    mov         edx,507514;'$'
 005073E1    call        @LStrCat3
 005073E6    mov         eax,dword ptr [ebp-28]
 005073E9    xor         edx,edx
 005073EB    call        0040C4A8
 005073F0    lea         ecx,[ebp-24]
 005073F3    mov         edx,4
 005073F8    call        IntToHex
 005073FD    push        dword ptr [ebp-24]
 00507400    push        507520;'.rpm'
 00507405    lea         eax,[ebp-8]
 00507408    mov         edx,4
 0050740D    call        @LStrCatN
>00507412    jmp         00507483
 00507414    mov         eax,[0056E2D0];^gvar_0056DF38
 00507419    push        dword ptr [eax]
 0050741B    push        507530;'Modules\   '
 00507420    mov         eax,dword ptr [ebp-4]
 00507423    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507429    mov         edx,dword ptr [eax]
 0050742B    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507431    mov         edx,eax
 00507433    mov         eax,dword ptr [ebp-4]
 00507436    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050743C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507442    call        0045AF80
 00507447    mov         ecx,dword ptr [eax+24]
 0050744A    lea         eax,[ebp-30]
 0050744D    mov         edx,507514;'$'
 00507452    call        @LStrCat3
 00507457    mov         eax,dword ptr [ebp-30]
 0050745A    xor         edx,edx
 0050745C    call        0040C4A8
 00507461    lea         ecx,[ebp-2C]
 00507464    mov         edx,2
 00507469    call        IntToHex
 0050746E    push        dword ptr [ebp-2C]
 00507471    push        507520;'.rpm'
 00507476    lea         eax,[ebp-8]
 00507479    mov         edx,4
 0050747E    call        @LStrCatN
 00507483    mov         eax,dword ptr [ebp-8]
 00507486    call        0040C94C
 0050748B    test        al,al
>0050748D    je          005074B4
 0050748F    mov         edx,dword ptr [ebp-8]
 00507492    mov         eax,[004F3EB8];TfmViewer
 00507497    call        004F4640
>0050749C    jmp         005074B4
 0050749E    mov         eax,dword ptr [ebp-4]
 005074A1    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005074A7    mov         edx,dword ptr [eax]
 005074A9    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005074AF    call        0050465C
 005074B4    xor         eax,eax
 005074B6    pop         edx
 005074B7    pop         ecx
 005074B8    pop         ecx
 005074B9    mov         dword ptr fs:[eax],edx
 005074BC    push        5074DE
 005074C1    lea         eax,[ebp-30]
 005074C4    mov         edx,9
 005074C9    call        @LStrArrayClr
 005074CE    lea         eax,[ebp-8]
 005074D1    call        @LStrClr
 005074D6    ret
>005074D7    jmp         @HandleFinally
>005074DC    jmp         005074C1
 005074DE    pop         ebx
 005074DF    mov         esp,ebp
 005074E1    pop         ebp
 005074E2    ret
*}
end;

//0050753C
{*procedure sub_0050753C(?:?; ?:?);
begin
 0050753C    push        ebp
 0050753D    mov         ebp,esp
 0050753F    xor         ecx,ecx
 00507541    push        ecx
 00507542    push        ecx
 00507543    push        ecx
 00507544    push        ecx
 00507545    push        ecx
 00507546    mov         byte ptr [ebp-3],dl
 00507549    mov         word ptr [ebp-2],ax
 0050754D    xor         eax,eax
 0050754F    push        ebp
 00507550    push        507655
 00507555    push        dword ptr fs:[eax]
 00507558    mov         dword ptr fs:[eax],esp
 0050755B    mov         eax,[0056E5A4];^gvar_0056DF04
 00507560    mov         byte ptr [eax],0
 00507563    mov         dl,1
 00507565    mov         eax,[0041DE14];TMemoryStream
 0050756A    call        TObject.Create;TMemoryStream.Create
 0050756F    mov         dword ptr [ebp-8],eax
 00507572    xor         eax,eax
 00507574    push        ebp
 00507575    push        507633
 0050757A    push        dword ptr fs:[eax]
 0050757D    mov         dword ptr fs:[eax],esp
 00507580    mov         eax,[0056E040];^gvar_005720C0
 00507585    cmp         byte ptr [eax],0
>00507588    je          005075BE
 0050758A    mov         eax,[0056E2D0];^gvar_0056DF38
 0050758F    push        dword ptr [eax]
 00507591    push        507668;'Modules\   '
 00507596    lea         ecx,[ebp-10]
 00507599    movzx       eax,word ptr [ebp-2]
 0050759D    mov         edx,4
 005075A2    call        IntToHex
 005075A7    push        dword ptr [ebp-10]
 005075AA    push        50767C;'.rpm'
 005075AF    lea         eax,[ebp-0C]
 005075B2    mov         edx,4
 005075B7    call        @LStrCatN
>005075BC    jmp         005075F0
 005075BE    mov         eax,[0056E2D0];^gvar_0056DF38
 005075C3    push        dword ptr [eax]
 005075C5    push        507668;'Modules\   '
 005075CA    lea         ecx,[ebp-14]
 005075CD    movzx       eax,word ptr [ebp-2]
 005075D1    mov         edx,2
 005075D6    call        IntToHex
 005075DB    push        dword ptr [ebp-14]
 005075DE    push        50767C;'.rpm'
 005075E3    lea         eax,[ebp-0C]
 005075E6    mov         edx,4
 005075EB    call        @LStrCatN
 005075F0    mov         eax,dword ptr [ebp-0C]
 005075F3    call        0040C94C
 005075F8    test        al,al
>005075FA    je          0050761D
 005075FC    mov         edx,dword ptr [ebp-0C]
 005075FF    mov         eax,dword ptr [ebp-8]
 00507602    call        00423F8C
 00507607    mov         dl,byte ptr [ebp-3]
 0050760A    mov         eax,dword ptr [ebp-8]
 0050760D    call        005014D0
 00507612    mov         edx,dword ptr [ebp-0C]
 00507615    mov         eax,dword ptr [ebp-8]
 00507618    call        00423E84
 0050761D    xor         eax,eax
 0050761F    pop         edx
 00507620    pop         ecx
 00507621    pop         ecx
 00507622    mov         dword ptr fs:[eax],edx
 00507625    push        50763A
 0050762A    mov         eax,dword ptr [ebp-8]
 0050762D    call        TObject.Free
 00507632    ret
>00507633    jmp         @HandleFinally
>00507638    jmp         0050762A
 0050763A    xor         eax,eax
 0050763C    pop         edx
 0050763D    pop         ecx
 0050763E    pop         ecx
 0050763F    mov         dword ptr fs:[eax],edx
 00507642    push        50765C
 00507647    lea         eax,[ebp-14]
 0050764A    mov         edx,3
 0050764F    call        @LStrArrayClr
 00507654    ret
>00507655    jmp         @HandleFinally
>0050765A    jmp         00507647
 0050765C    mov         esp,ebp
 0050765E    pop         ebp
 0050765F    ret
end;*}

//00507684
procedure TfmModules.miRecalcCrcClick(Sender:TObject);
begin
{*
 00507684    push        ebp
 00507685    mov         ebp,esp
 00507687    add         esp,0FFFFFFF4
 0050768A    xor         ecx,ecx
 0050768C    mov         dword ptr [ebp-0C],ecx
 0050768F    mov         dword ptr [ebp-8],edx
 00507692    mov         dword ptr [ebp-4],eax
 00507695    xor         eax,eax
 00507697    push        ebp
 00507698    push        507701
 0050769D    push        dword ptr fs:[eax]
 005076A0    mov         dword ptr fs:[eax],esp
 005076A3    mov         eax,dword ptr [ebp-4]
 005076A6    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005076AC    mov         edx,dword ptr [eax]
 005076AE    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005076B4    mov         edx,eax
 005076B6    mov         eax,dword ptr [ebp-4]
 005076B9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005076BF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005076C5    call        0045AF80
 005076CA    mov         ecx,dword ptr [eax+24]
 005076CD    lea         eax,[ebp-0C]
 005076D0    mov         edx,507714;'$'
 005076D5    call        @LStrCat3
 005076DA    mov         eax,dword ptr [ebp-0C]
 005076DD    xor         edx,edx
 005076DF    call        0040C4A8
 005076E4    mov         dl,1
 005076E6    call        0050753C
 005076EB    xor         eax,eax
 005076ED    pop         edx
 005076EE    pop         ecx
 005076EF    pop         ecx
 005076F0    mov         dword ptr fs:[eax],edx
 005076F3    push        507708
 005076F8    lea         eax,[ebp-0C]
 005076FB    call        @LStrClr
 00507700    ret
>00507701    jmp         @HandleFinally
>00507706    jmp         005076F8
 00507708    mov         esp,ebp
 0050770A    pop         ebp
 0050770B    ret
*}
end;

//00507718
procedure TfmModules.miZerrosCRCClick(Sender:TObject);
begin
{*
 00507718    push        ebp
 00507719    mov         ebp,esp
 0050771B    add         esp,0FFFFFFF4
 0050771E    xor         ecx,ecx
 00507720    mov         dword ptr [ebp-0C],ecx
 00507723    mov         dword ptr [ebp-8],edx
 00507726    mov         dword ptr [ebp-4],eax
 00507729    xor         eax,eax
 0050772B    push        ebp
 0050772C    push        507795
 00507731    push        dword ptr fs:[eax]
 00507734    mov         dword ptr fs:[eax],esp
 00507737    mov         eax,dword ptr [ebp-4]
 0050773A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507740    mov         edx,dword ptr [eax]
 00507742    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507748    mov         edx,eax
 0050774A    mov         eax,dword ptr [ebp-4]
 0050774D    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507753    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507759    call        0045AF80
 0050775E    mov         ecx,dword ptr [eax+24]
 00507761    lea         eax,[ebp-0C]
 00507764    mov         edx,5077A8;'$'
 00507769    call        @LStrCat3
 0050776E    mov         eax,dword ptr [ebp-0C]
 00507771    xor         edx,edx
 00507773    call        0040C4A8
 00507778    xor         edx,edx
 0050777A    call        0050753C
 0050777F    xor         eax,eax
 00507781    pop         edx
 00507782    pop         ecx
 00507783    pop         ecx
 00507784    mov         dword ptr fs:[eax],edx
 00507787    push        50779C
 0050778C    lea         eax,[ebp-0C]
 0050778F    call        @LStrClr
 00507794    ret
>00507795    jmp         @HandleFinally
>0050779A    jmp         0050778C
 0050779C    mov         esp,ebp
 0050779E    pop         ebp
 0050779F    ret
*}
end;

//005077AC
{*procedure sub_005077AC(?:?);
begin
 005077AC    push        ebp
 005077AD    mov         ebp,esp
 005077AF    add         esp,0FFFFFFF8
 005077B2    mov         word ptr [ebp-2],ax
 005077B6    mov         eax,[0056E5A4];^gvar_0056DF04
 005077BB    mov         byte ptr [eax],0
 005077BE    mov         dl,1
 005077C0    mov         eax,[0041DE14];TMemoryStream
 005077C5    call        TObject.Create;TMemoryStream.Create
 005077CA    mov         dword ptr [ebp-8],eax
 005077CD    xor         eax,eax
 005077CF    push        ebp
 005077D0    push        50781F
 005077D5    push        dword ptr fs:[eax]
 005077D8    mov         dword ptr fs:[eax],esp
 005077DB    mov         edx,dword ptr [ebp-8]
 005077DE    mov         ax,word ptr [ebp-2]
 005077E2    call        004CF5C8
 005077E7    test        al,al
>005077E9    je          00507809
 005077EB    mov         eax,dword ptr [ebp-8]
 005077EE    call        0050170C
 005077F3    mov         dl,1
 005077F5    mov         eax,dword ptr [ebp-8]
 005077F8    call        005014D0
 005077FD    mov         edx,dword ptr [ebp-8]
 00507800    mov         ax,word ptr [ebp-2]
 00507804    call        004CF728
 00507809    xor         eax,eax
 0050780B    pop         edx
 0050780C    pop         ecx
 0050780D    pop         ecx
 0050780E    mov         dword ptr fs:[eax],edx
 00507811    push        507826
 00507816    mov         eax,dword ptr [ebp-8]
 00507819    call        TObject.Free
 0050781E    ret
>0050781F    jmp         @HandleFinally
>00507824    jmp         00507816
 00507826    pop         ecx
 00507827    pop         ecx
 00507828    pop         ebp
 00507829    ret
end;*}

//0050782C
{*procedure sub_0050782C(?:TMemoryStream; ?:?);
begin
 0050782C    push        ebp
 0050782D    mov         ebp,esp
 0050782F    add         esp,0FFFFFFF4
 00507832    push        ebx
 00507833    mov         word ptr [ebp-6],dx
 00507837    mov         dword ptr [ebp-4],eax
 0050783A    xor         ecx,ecx
 0050783C    xor         edx,edx
 0050783E    mov         eax,dword ptr [ebp-4]
 00507841    mov         ebx,dword ptr [eax]
 00507843    call        dword ptr [ebx+14]
 00507846    mov         eax,dword ptr [ebp-4]
 00507849    call        004CE56C
 0050784E    mov         dword ptr [ebp-0C],eax
 00507851    cmp         dword ptr [ebp-0C],4C594F52
>00507858    jne         0050787B
 0050785A    xor         ecx,ecx
 0050785C    mov         edx,8
 00507861    mov         eax,dword ptr [ebp-4]
 00507864    mov         ebx,dword ptr [eax]
 00507866    call        dword ptr [ebx+14]
 00507869    lea         edx,[ebp-6]
 0050786C    mov         ecx,2
 00507871    mov         eax,dword ptr [ebp-4]
 00507874    call        TStream.WriteBuffer
>00507879    jmp         0050789A
 0050787B    xor         ecx,ecx
 0050787D    mov         edx,4
 00507882    mov         eax,dword ptr [ebp-4]
 00507885    mov         ebx,dword ptr [eax]
 00507887    call        dword ptr [ebx+14]
 0050788A    lea         edx,[ebp-6]
 0050788D    mov         ecx,1
 00507892    mov         eax,dword ptr [ebp-4]
 00507895    call        TStream.WriteBuffer
 0050789A    mov         dl,1
 0050789C    mov         eax,dword ptr [ebp-4]
 0050789F    call        005014D0
 005078A4    pop         ebx
 005078A5    mov         esp,ebp
 005078A7    pop         ebp
 005078A8    ret
end;*}

//005078AC
{*procedure sub_005078AC(?:?; ?:?);
begin
 005078AC    push        ebp
 005078AD    mov         ebp,esp
 005078AF    add         esp,0FFFFFFF8
 005078B2    mov         word ptr [ebp-4],dx
 005078B6    mov         word ptr [ebp-2],ax
 005078BA    mov         dl,1
 005078BC    mov         eax,[0041DE14];TMemoryStream
 005078C1    call        TObject.Create;TMemoryStream.Create
 005078C6    mov         dword ptr [ebp-8],eax
 005078C9    xor         eax,eax
 005078CB    push        ebp
 005078CC    push        507915
 005078D1    push        dword ptr fs:[eax]
 005078D4    mov         dword ptr fs:[eax],esp
 005078D7    mov         edx,dword ptr [ebp-8]
 005078DA    mov         ax,word ptr [ebp-2]
 005078DE    call        004CF5C8
 005078E3    test        al,al
>005078E5    je          005078FF
 005078E7    mov         dx,word ptr [ebp-4]
 005078EB    mov         eax,dword ptr [ebp-8]
 005078EE    call        0050782C
 005078F3    mov         edx,dword ptr [ebp-8]
 005078F6    mov         ax,word ptr [ebp-4]
 005078FA    call        004CF728
 005078FF    xor         eax,eax
 00507901    pop         edx
 00507902    pop         ecx
 00507903    pop         ecx
 00507904    mov         dword ptr fs:[eax],edx
 00507907    push        50791C
 0050790C    mov         eax,dword ptr [ebp-8]
 0050790F    call        TObject.Free
 00507914    ret
>00507915    jmp         @HandleFinally
>0050791A    jmp         0050790C
 0050791C    pop         ecx
 0050791D    pop         ecx
 0050791E    pop         ebp
 0050791F    ret
end;*}

//00507920
procedure TfmModules.miModuleClearClick(Sender:TObject);
begin
{*
 00507920    push        ebp
 00507921    mov         ebp,esp
 00507923    add         esp,0FFFFFFF4
 00507926    xor         ecx,ecx
 00507928    mov         dword ptr [ebp-0C],ecx
 0050792B    mov         dword ptr [ebp-8],edx
 0050792E    mov         dword ptr [ebp-4],eax
 00507931    xor         eax,eax
 00507933    push        ebp
 00507934    push        507A0F
 00507939    push        dword ptr fs:[eax]
 0050793C    mov         dword ptr fs:[eax],esp
 0050793F    mov         eax,dword ptr [ebp-4]
 00507942    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507948    mov         edx,dword ptr [eax]
 0050794A    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507950    mov         edx,eax
 00507952    mov         eax,dword ptr [ebp-4]
 00507955    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050795B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507961    call        0045AF80
 00507966    mov         ecx,dword ptr [eax+24]
 00507969    lea         eax,[ebp-0C]
 0050796C    mov         edx,507A24;'$'
 00507971    call        @LStrCat3
 00507976    mov         eax,dword ptr [ebp-0C]
 00507979    xor         edx,edx
 0050797B    call        0040C4A8
 00507980    call        005077AC
 00507985    mov         eax,[0056E270];^gvar_00571EC0
 0050798A    cmp         word ptr [eax+18],0
>0050798F    jne         005079C6
 00507991    mov         eax,dword ptr [ebp-4]
 00507994    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050799A    mov         edx,dword ptr [eax]
 0050799C    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005079A2    mov         edx,eax
 005079A4    mov         eax,dword ptr [ebp-4]
 005079A7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005079AD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005079B3    call        0045AF80
 005079B8    mov         ecx,1
 005079BD    xor         edx,edx
 005079BF    call        0045A98C
>005079C4    jmp         005079F9
 005079C6    mov         eax,dword ptr [ebp-4]
 005079C9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005079CF    mov         edx,dword ptr [eax]
 005079D1    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005079D7    mov         edx,eax
 005079D9    mov         eax,dword ptr [ebp-4]
 005079DC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005079E2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005079E8    call        0045AF80
 005079ED    mov         ecx,2
 005079F2    xor         edx,edx
 005079F4    call        0045A98C
 005079F9    xor         eax,eax
 005079FB    pop         edx
 005079FC    pop         ecx
 005079FD    pop         ecx
 005079FE    mov         dword ptr fs:[eax],edx
 00507A01    push        507A16
 00507A06    lea         eax,[ebp-0C]
 00507A09    call        @LStrClr
 00507A0E    ret
>00507A0F    jmp         @HandleFinally
>00507A14    jmp         00507A06
 00507A16    mov         esp,ebp
 00507A18    pop         ebp
 00507A19    ret
*}
end;

//00507A28
{*procedure TfmModules.miModuleClearSelectedClick(?:?);
begin
 00507A28    push        ebp
 00507A29    mov         ebp,esp
 00507A2B    add         esp,0FFFFFFE8
 00507A2E    xor         ecx,ecx
 00507A30    mov         dword ptr [ebp-14],ecx
 00507A33    mov         dword ptr [ebp-18],ecx
 00507A36    mov         dword ptr [ebp-10],ecx
 00507A39    mov         dword ptr [ebp-0C],edx
 00507A3C    mov         dword ptr [ebp-4],eax
 00507A3F    xor         eax,eax
 00507A41    push        ebp
 00507A42    push        507C8D
 00507A47    push        dword ptr fs:[eax]
 00507A4A    mov         dword ptr fs:[eax],esp
 00507A4D    mov         eax,[0056E5A4];^gvar_0056DF04
 00507A52    mov         byte ptr [eax],0
 00507A55    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00507A5C    jle         00507C72
 00507A62    mov         eax,dword ptr [ebp-4]
 00507A65    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507A6B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507A71    call        0045AF28
 00507A76    test        eax,eax
>00507A78    jle         00507C72
 00507A7E    mov         word ptr [ebp-6],0
 00507A84    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507A89    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507A8F    xor         edx,edx
 00507A91    call        TProgressBar.SetMin
 00507A96    mov         eax,dword ptr [ebp-4]
 00507A99    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507A9F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507AA5    call        0045AF28
 00507AAA    mov         edx,eax
 00507AAC    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507AB1    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507AB7    call        TProgressBar.SetMax
 00507ABC    movzx       edx,word ptr [ebp-6]
 00507AC0    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507AC5    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507ACB    call        TProgressBar.SetMin
>00507AD0    jmp         00507C26
 00507AD5    movzx       edx,word ptr [ebp-6]
 00507AD9    mov         eax,dword ptr [ebp-4]
 00507ADC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507AE2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507AE8    call        0045AF80
 00507AED    call        0045A66C
 00507AF2    test        al,al
>00507AF4    je          00507C02
 00507AFA    movzx       edx,word ptr [ebp-6]
 00507AFE    mov         eax,dword ptr [ebp-4]
 00507B01    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507B07    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507B0D    call        0045AF80
 00507B12    mov         ecx,dword ptr [eax+24]
 00507B15    lea         eax,[ebp-10]
 00507B18    mov         edx,507CA0;'$'
 00507B1D    call        @LStrCat3
 00507B22    mov         eax,dword ptr [ebp-10]
 00507B25    xor         edx,edx
 00507B27    call        0040C4A8
 00507B2C    call        005077AC
 00507B31    mov         eax,[0056E270];^gvar_00571EC0
 00507B36    cmp         word ptr [eax+18],0
>00507B3B    jne         00507B63
 00507B3D    movzx       edx,word ptr [ebp-6]
 00507B41    mov         eax,dword ptr [ebp-4]
 00507B44    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507B4A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507B50    call        0045AF80
 00507B55    mov         ecx,1
 00507B5A    xor         edx,edx
 00507B5C    call        0045A98C
>00507B61    jmp         00507B87
 00507B63    movzx       edx,word ptr [ebp-6]
 00507B67    mov         eax,dword ptr [ebp-4]
 00507B6A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507B70    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507B76    call        0045AF80
 00507B7B    mov         ecx,2
 00507B80    xor         edx,edx
 00507B82    call        0045A98C
 00507B87    movzx       edx,word ptr [ebp-6]
 00507B8B    mov         eax,dword ptr [ebp-4]
 00507B8E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507B94    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507B9A    call        0045AF80
 00507B9F    push        dword ptr [eax+24]
 00507BA2    push        507CAC;' - '
 00507BA7    lea         edx,[ebp-18]
 00507BAA    mov         eax,[0056E270];^gvar_00571EC0
 00507BAF    mov         ax,word ptr [eax+18]
 00507BB3    call        004CCABC
 00507BB8    push        dword ptr [ebp-18]
 00507BBB    lea         eax,[ebp-14]
 00507BBE    mov         edx,3
 00507BC3    call        @LStrCatN
 00507BC8    mov         edx,dword ptr [ebp-14]
 00507BCB    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00507BD0    mov         eax,dword ptr [eax]
 00507BD2    mov         eax,dword ptr [eax+2F8]
 00507BD8    mov         eax,dword ptr [eax+248]
 00507BDE    mov         ecx,dword ptr [eax]
 00507BE0    call        dword ptr [ecx+38]
 00507BE3    movzx       edx,word ptr [ebp-6]
 00507BE7    mov         eax,dword ptr [ebp-4]
 00507BEA    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507BF0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507BF6    call        0045AF80
 00507BFB    xor         edx,edx
 00507BFD    call        0045A63C
 00507C02    mov         eax,[0056E3C0];^Application:TApplication
 00507C07    mov         eax,dword ptr [eax]
 00507C09    call        004AB51C
 00507C0E    movzx       edx,word ptr [ebp-6]
 00507C12    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507C17    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507C1D    call        TProgressBar.SetPosition
 00507C22    inc         word ptr [ebp-6]
 00507C26    mov         eax,dword ptr [ebp-4]
 00507C29    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507C2F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507C35    call        0045AF28
 00507C3A    movzx       edx,word ptr [ebp-6]
 00507C3E    cmp         eax,edx
>00507C40    jle         00507C50
 00507C42    mov         eax,[0056E5A4];^gvar_0056DF04
 00507C47    cmp         byte ptr [eax],0
>00507C4A    je          00507AD5
 00507C50    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507C55    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507C5B    call        TProgressBar.GetMin
 00507C60    mov         edx,eax
 00507C62    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00507C67    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 00507C6D    call        TProgressBar.SetPosition
 00507C72    xor         eax,eax
 00507C74    pop         edx
 00507C75    pop         ecx
 00507C76    pop         ecx
 00507C77    mov         dword ptr fs:[eax],edx
 00507C7A    push        507C94
 00507C7F    lea         eax,[ebp-18]
 00507C82    mov         edx,3
 00507C87    call        @LStrArrayClr
 00507C8C    ret
>00507C8D    jmp         @HandleFinally
>00507C92    jmp         00507C7F
 00507C94    mov         esp,ebp
 00507C96    pop         ebp
 00507C97    ret
end;*}

//00507CB0
procedure TfmModules.btModuleClearClick(Sender:TObject);
begin
{*
 00507CB0    push        ebp
 00507CB1    mov         ebp,esp
 00507CB3    add         esp,0FFFFFFE8
 00507CB6    xor         ecx,ecx
 00507CB8    mov         dword ptr [ebp-14],ecx
 00507CBB    mov         dword ptr [ebp-18],ecx
 00507CBE    mov         dword ptr [ebp-10],ecx
 00507CC1    mov         dword ptr [ebp-0C],edx
 00507CC4    mov         dword ptr [ebp-4],eax
 00507CC7    xor         eax,eax
 00507CC9    push        ebp
 00507CCA    push        507D66
 00507CCF    push        dword ptr fs:[eax]
 00507CD2    mov         dword ptr fs:[eax],esp
 00507CD5    lea         edx,[ebp-10]
 00507CD8    mov         eax,dword ptr [ebp-4]
 00507CDB    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00507CE1    call        TPanel.GetCaption
 00507CE6    mov         eax,dword ptr [ebp-10]
 00507CE9    xor         edx,edx
 00507CEB    call        0040C4A8
 00507CF0    mov         word ptr [ebp-6],ax
 00507CF4    push        0
 00507CF6    push        507D7C;'Clear Module '
 00507CFB    lea         edx,[ebp-18]
 00507CFE    mov         eax,dword ptr [ebp-4]
 00507D01    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 00507D07    call        TPanel.GetCaption
 00507D0C    push        dword ptr [ebp-18]
 00507D0F    push        507D94;#10+Are You sure?'
 00507D14    lea         eax,[ebp-14]
 00507D17    mov         edx,3
 00507D1C    call        @LStrCatN
 00507D21    mov         eax,dword ptr [ebp-14]
 00507D24    mov         cx,word ptr ds:[507DA4];0x3 gvar_00507DA4
 00507D2B    xor         edx,edx
 00507D2D    call        0043F788
 00507D32    cmp         eax,6
>00507D35    jne         00507D40
 00507D37    mov         ax,word ptr [ebp-6]
 00507D3B    call        005077AC
 00507D40    xor         eax,eax
 00507D42    pop         edx
 00507D43    pop         ecx
 00507D44    pop         ecx
 00507D45    mov         dword ptr fs:[eax],edx
 00507D48    push        507D6D
 00507D4D    lea         eax,[ebp-18]
 00507D50    call        @LStrClr
 00507D55    lea         eax,[ebp-14]
 00507D58    call        @LStrClr
 00507D5D    lea         eax,[ebp-10]
 00507D60    call        @LStrClr
 00507D65    ret
>00507D66    jmp         @HandleFinally
>00507D6B    jmp         00507D4D
 00507D6D    mov         esp,ebp
 00507D6F    pop         ebp
 00507D70    ret
*}
end;

//00507DA8
procedure TfmModules.miSelectAllonCurrentHeadClick(Sender:TObject);
begin
{*
 00507DA8    push        ebp
 00507DA9    mov         ebp,esp
 00507DAB    add         esp,0FFFFFFEC
 00507DAE    push        ebx
 00507DAF    xor         ecx,ecx
 00507DB1    mov         dword ptr [ebp-14],ecx
 00507DB4    mov         dword ptr [ebp-0C],ecx
 00507DB7    mov         dword ptr [ebp-10],edx
 00507DBA    mov         dword ptr [ebp-4],eax
 00507DBD    xor         eax,eax
 00507DBF    push        ebp
 00507DC0    push        507ED7
 00507DC5    push        dword ptr fs:[eax]
 00507DC8    mov         dword ptr fs:[eax],esp
 00507DCB    mov         eax,[0056E5A4];^gvar_0056DF04
 00507DD0    mov         byte ptr [eax],0
 00507DD3    mov         eax,dword ptr [ebp-4]
 00507DD6    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507DDC    mov         edx,dword ptr [eax]
 00507DDE    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507DE4    mov         edx,eax
 00507DE6    mov         eax,dword ptr [ebp-4]
 00507DE9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507DEF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507DF5    call        0045AF80
 00507DFA    mov         eax,dword ptr [eax+8]
 00507DFD    lea         ecx,[ebp-0C]
 00507E00    mov         edx,1
 00507E05    mov         ebx,dword ptr [eax]
 00507E07    call        dword ptr [ebx+0C]
 00507E0A    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00507E11    jle         00507EB9
 00507E17    mov         eax,dword ptr [ebp-4]
 00507E1A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507E20    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507E26    call        0045AF28
 00507E2B    test        eax,eax
>00507E2D    jle         00507EB9
 00507E33    mov         word ptr [ebp-6],0
>00507E39    jmp         00507E93
 00507E3B    movzx       edx,word ptr [ebp-6]
 00507E3F    mov         eax,dword ptr [ebp-4]
 00507E42    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507E48    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507E4E    call        0045AF80
 00507E53    mov         eax,dword ptr [eax+8]
 00507E56    lea         ecx,[ebp-14]
 00507E59    mov         edx,1
 00507E5E    mov         ebx,dword ptr [eax]
 00507E60    call        dword ptr [ebx+0C]
 00507E63    mov         eax,dword ptr [ebp-14]
 00507E66    mov         edx,dword ptr [ebp-0C]
 00507E69    call        @LStrCmp
>00507E6E    jne         00507E8F
 00507E70    movzx       edx,word ptr [ebp-6]
 00507E74    mov         eax,dword ptr [ebp-4]
 00507E77    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507E7D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507E83    call        0045AF80
 00507E88    mov         dl,1
 00507E8A    call        0045A6C8
 00507E8F    inc         word ptr [ebp-6]
 00507E93    mov         eax,dword ptr [ebp-4]
 00507E96    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507E9C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507EA2    call        0045AF28
 00507EA7    movzx       edx,word ptr [ebp-6]
 00507EAB    cmp         eax,edx
>00507EAD    jle         00507EB9
 00507EAF    mov         eax,[0056E5A4];^gvar_0056DF04
 00507EB4    cmp         byte ptr [eax],0
>00507EB7    je          00507E3B
 00507EB9    xor         eax,eax
 00507EBB    pop         edx
 00507EBC    pop         ecx
 00507EBD    pop         ecx
 00507EBE    mov         dword ptr fs:[eax],edx
 00507EC1    push        507EDE
 00507EC6    lea         eax,[ebp-14]
 00507EC9    call        @LStrClr
 00507ECE    lea         eax,[ebp-0C]
 00507ED1    call        @LStrClr
 00507ED6    ret
>00507ED7    jmp         @HandleFinally
>00507EDC    jmp         00507EC6
 00507EDE    pop         ebx
 00507EDF    mov         esp,ebp
 00507EE1    pop         ebp
 00507EE2    ret
*}
end;

//00507EE4
procedure TfmModules.miUnselectAllonCurentHeadClick(Sender:TObject);
begin
{*
 00507EE4    push        ebp
 00507EE5    mov         ebp,esp
 00507EE7    add         esp,0FFFFFFEC
 00507EEA    push        ebx
 00507EEB    xor         ecx,ecx
 00507EED    mov         dword ptr [ebp-14],ecx
 00507EF0    mov         dword ptr [ebp-0C],ecx
 00507EF3    mov         dword ptr [ebp-10],edx
 00507EF6    mov         dword ptr [ebp-4],eax
 00507EF9    xor         eax,eax
 00507EFB    push        ebp
 00507EFC    push        508013
 00507F01    push        dword ptr fs:[eax]
 00507F04    mov         dword ptr fs:[eax],esp
 00507F07    mov         eax,[0056E5A4];^gvar_0056DF04
 00507F0C    mov         byte ptr [eax],0
 00507F0F    mov         eax,dword ptr [ebp-4]
 00507F12    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507F18    mov         edx,dword ptr [eax]
 00507F1A    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00507F20    mov         edx,eax
 00507F22    mov         eax,dword ptr [ebp-4]
 00507F25    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507F2B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507F31    call        0045AF80
 00507F36    mov         eax,dword ptr [eax+8]
 00507F39    lea         ecx,[ebp-0C]
 00507F3C    mov         edx,1
 00507F41    mov         ebx,dword ptr [eax]
 00507F43    call        dword ptr [ebx+0C]
 00507F46    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00507F4D    jle         00507FF5
 00507F53    mov         eax,dword ptr [ebp-4]
 00507F56    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507F5C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507F62    call        0045AF28
 00507F67    test        eax,eax
>00507F69    jle         00507FF5
 00507F6F    mov         word ptr [ebp-6],0
>00507F75    jmp         00507FCF
 00507F77    movzx       edx,word ptr [ebp-6]
 00507F7B    mov         eax,dword ptr [ebp-4]
 00507F7E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507F84    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507F8A    call        0045AF80
 00507F8F    mov         eax,dword ptr [eax+8]
 00507F92    lea         ecx,[ebp-14]
 00507F95    mov         edx,1
 00507F9A    mov         ebx,dword ptr [eax]
 00507F9C    call        dword ptr [ebx+0C]
 00507F9F    mov         eax,dword ptr [ebp-14]
 00507FA2    mov         edx,dword ptr [ebp-0C]
 00507FA5    call        @LStrCmp
>00507FAA    jne         00507FCB
 00507FAC    movzx       edx,word ptr [ebp-6]
 00507FB0    mov         eax,dword ptr [ebp-4]
 00507FB3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507FB9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507FBF    call        0045AF80
 00507FC4    xor         edx,edx
 00507FC6    call        0045A6C8
 00507FCB    inc         word ptr [ebp-6]
 00507FCF    mov         eax,dword ptr [ebp-4]
 00507FD2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00507FD8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00507FDE    call        0045AF28
 00507FE3    movzx       edx,word ptr [ebp-6]
 00507FE7    cmp         eax,edx
>00507FE9    jle         00507FF5
 00507FEB    mov         eax,[0056E5A4];^gvar_0056DF04
 00507FF0    cmp         byte ptr [eax],0
>00507FF3    je          00507F77
 00507FF5    xor         eax,eax
 00507FF7    pop         edx
 00507FF8    pop         ecx
 00507FF9    pop         ecx
 00507FFA    mov         dword ptr fs:[eax],edx
 00507FFD    push        50801A
 00508002    lea         eax,[ebp-14]
 00508005    call        @LStrClr
 0050800A    lea         eax,[ebp-0C]
 0050800D    call        @LStrClr
 00508012    ret
>00508013    jmp         @HandleFinally
>00508018    jmp         00508002
 0050801A    pop         ebx
 0050801B    mov         esp,ebp
 0050801D    pop         ebp
 0050801E    ret
*}
end;

//00508020
procedure TfmModules.miSelectUnreadedClick(Sender:TObject);
begin
{*
 00508020    push        ebp
 00508021    mov         ebp,esp
 00508023    add         esp,0FFFFFFF4
 00508026    mov         dword ptr [ebp-0C],edx
 00508029    mov         dword ptr [ebp-4],eax
 0050802C    mov         eax,[0056E5A4];^gvar_0056DF04
 00508031    mov         byte ptr [eax],0
 00508034    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050803B    jle         005080C8
 00508041    mov         eax,dword ptr [ebp-4]
 00508044    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050804A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508050    call        0045AF28
 00508055    test        eax,eax
>00508057    jle         005080C8
 00508059    mov         word ptr [ebp-6],0
>0050805F    jmp         005080A2
 00508061    movzx       edx,word ptr [ebp-6]
 00508065    mov         eax,dword ptr [ebp-4]
 00508068    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050806E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508074    call        0045AF80
 00508079    cmp         dword ptr [eax+10],1
>0050807D    je          0050809E
 0050807F    movzx       edx,word ptr [ebp-6]
 00508083    mov         eax,dword ptr [ebp-4]
 00508086    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050808C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508092    call        0045AF80
 00508097    mov         dl,1
 00508099    call        0045A6C8
 0050809E    inc         word ptr [ebp-6]
 005080A2    mov         eax,dword ptr [ebp-4]
 005080A5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005080AB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005080B1    call        0045AF28
 005080B6    movzx       edx,word ptr [ebp-6]
 005080BA    cmp         eax,edx
>005080BC    jle         005080C8
 005080BE    mov         eax,[0056E5A4];^gvar_0056DF04
 005080C3    cmp         byte ptr [eax],0
>005080C6    je          00508061
 005080C8    mov         esp,ebp
 005080CA    pop         ebp
 005080CB    ret
*}
end;

//005080CC
procedure sub_005080CC(?:TMemoryStream);
begin
{*
 005080CC    push        ebp
 005080CD    mov         ebp,esp
 005080CF    mov         ecx,5
 005080D4    push        0
 005080D6    push        0
 005080D8    dec         ecx
>005080D9    jne         005080D4
 005080DB    push        ebx
 005080DC    mov         dword ptr [ebp-4],eax
 005080DF    xor         eax,eax
 005080E1    push        ebp
 005080E2    push        508367
 005080E7    push        dword ptr fs:[eax]
 005080EA    mov         dword ptr fs:[eax],esp
 005080ED    xor         ecx,ecx
 005080EF    xor         edx,edx
 005080F1    mov         eax,dword ptr [ebp-4]
 005080F4    mov         ebx,dword ptr [eax]
 005080F6    call        dword ptr [ebx+14]
 005080F9    mov         eax,dword ptr [ebp-4]
 005080FC    call        004CE56C
 00508101    mov         dword ptr [ebp-0C],eax
 00508104    cmp         dword ptr [ebp-0C],4C594F52
>0050810B    jne         0050812F
 0050810D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00508112    mov         eax,dword ptr [eax]
 00508114    mov         eax,dword ptr [eax+2F8]
 0050811A    mov         eax,dword ptr [eax+248]
 00508120    mov         edx,50837C;'Not Supported ROYL style now'
 00508125    mov         ecx,dword ptr [eax]
 00508127    call        dword ptr [ecx+38]
>0050812A    jmp         0050834C
 0050812F    xor         ecx,ecx
 00508131    mov         edx,0C
 00508136    mov         eax,dword ptr [ebp-4]
 00508139    mov         ebx,dword ptr [eax]
 0050813B    call        dword ptr [ebx+14]
 0050813E    mov         eax,dword ptr [ebp-4]
 00508141    call        004CE548
 00508146    mov         word ptr [ebp-6],ax
 0050814A    xor         ecx,ecx
 0050814C    mov         edx,0A
 00508151    mov         eax,dword ptr [ebp-4]
 00508154    mov         ebx,dword ptr [eax]
 00508156    call        dword ptr [ebx+14]
 00508159    mov         eax,dword ptr [ebp-4]
 0050815C    call        004CE548
 00508161    mov         word ptr [ebp-8],ax
 00508165    movzx       edx,word ptr [ebp-6]
 00508169    xor         ecx,ecx
 0050816B    mov         eax,dword ptr [ebp-4]
 0050816E    mov         ebx,dword ptr [eax]
 00508170    call        dword ptr [ebx+14]
>00508173    jmp         00508337
 00508178    mov         eax,dword ptr [ebp-4]
 0050817B    call        004CE548
 00508180    mov         word ptr [ebp-0E],ax
 00508184    cmp         word ptr [ebp-0E],0AE1
>0050818A    je          005081B8
 0050818C    cmp         word ptr [ebp-0E],0BE2
>00508192    je          005081B8
 00508194    cmp         word ptr [ebp-0E],0CE3
>0050819A    je          005081B8
 0050819C    cmp         word ptr [ebp-0E],0DE4
>005081A2    je          005081B8
 005081A4    cmp         word ptr [ebp-0E],0EE5
>005081AA    je          005081B8
 005081AC    cmp         word ptr [ebp-0E],9E9
>005081B2    jne         00508243
 005081B8    lea         ecx,[ebp-18]
 005081BB    mov         ax,word ptr [ebp-0E]
 005081BF    and         ax,0FF
 005081C3    movzx       eax,ax
 005081C6    mov         edx,2
 005081CB    call        IntToHex
 005081D0    push        dword ptr [ebp-18]
 005081D3    push        5083A4;' '
 005081D8    lea         ecx,[ebp-1C]
 005081DB    movzx       eax,word ptr [ebp-0E]
 005081DF    shr         eax,8
 005081E2    mov         edx,2
 005081E7    call        IntToHex
 005081EC    push        dword ptr [ebp-1C]
 005081EF    push        5083B0;' Mammoth Replaced'
 005081F4    lea         eax,[ebp-14]
 005081F7    mov         edx,4
 005081FC    call        @LStrCatN
 00508201    mov         edx,dword ptr [ebp-14]
 00508204    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00508209    mov         eax,dword ptr [eax]
 0050820B    mov         eax,dword ptr [eax+2F8]
 00508211    mov         eax,dword ptr [eax+248]
 00508217    mov         ecx,dword ptr [eax]
 00508219    call        dword ptr [ecx+38]
 0050821C    mov         cx,1
 00508220    mov         edx,0FFFFFFFE
 00508225    mov         eax,dword ptr [ebp-4]
 00508228    mov         ebx,dword ptr [eax]
 0050822A    call        dword ptr [ebx+14]
 0050822D    add         word ptr [ebp-0E],800
 00508233    lea         edx,[ebp-0E]
 00508236    mov         ecx,2
 0050823B    mov         eax,dword ptr [ebp-4]
 0050823E    call        TStream.WriteBuffer
 00508243    cmp         word ptr [ebp-0E],21E1
>00508249    je          00508297
 0050824B    cmp         word ptr [ebp-0E],22E2
>00508251    je          00508297
 00508253    cmp         word ptr [ebp-0E],23E3
>00508259    je          00508297
 0050825B    cmp         word ptr [ebp-0E],24E4
>00508261    je          00508297
 00508263    cmp         word ptr [ebp-0E],25E5
>00508269    je          00508297
 0050826B    cmp         word ptr [ebp-0E],26E9
>00508271    je          00508297
 00508273    cmp         word ptr [ebp-0E],27EA
>00508279    je          00508297
 0050827B    cmp         word ptr [ebp-0E],28EB
>00508281    je          00508297
 00508283    cmp         word ptr [ebp-0E],29EC
>00508289    je          00508297
 0050828B    cmp         word ptr [ebp-0E],2AED
>00508291    jne         00508322
 00508297    lea         ecx,[ebp-24]
 0050829A    mov         ax,word ptr [ebp-0E]
 0050829E    and         ax,0FF
 005082A2    movzx       eax,ax
 005082A5    mov         edx,2
 005082AA    call        IntToHex
 005082AF    push        dword ptr [ebp-24]
 005082B2    push        5083A4;' '
 005082B7    lea         ecx,[ebp-28]
 005082BA    movzx       eax,word ptr [ebp-0E]
 005082BE    shr         eax,8
 005082C1    mov         edx,2
 005082C6    call        IntToHex
 005082CB    push        dword ptr [ebp-28]
 005082CE    push        5083CC;' Replaced'
 005082D3    lea         eax,[ebp-20]
 005082D6    mov         edx,4
 005082DB    call        @LStrCatN
 005082E0    mov         edx,dword ptr [ebp-20]
 005082E3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005082E8    mov         eax,dword ptr [eax]
 005082EA    mov         eax,dword ptr [eax+2F8]
 005082F0    mov         eax,dword ptr [eax+248]
 005082F6    mov         ecx,dword ptr [eax]
 005082F8    call        dword ptr [ecx+38]
 005082FB    mov         cx,1
 005082FF    mov         edx,0FFFFFFFE
 00508304    mov         eax,dword ptr [ebp-4]
 00508307    mov         ebx,dword ptr [eax]
 00508309    call        dword ptr [ebx+14]
 0050830C    sub         word ptr [ebp-0E],1000
 00508312    lea         edx,[ebp-0E]
 00508315    mov         ecx,2
 0050831A    mov         eax,dword ptr [ebp-4]
 0050831D    call        TStream.WriteBuffer
 00508322    dec         word ptr [ebp-8]
 00508326    mov         cx,1
 0050832A    mov         edx,6
 0050832F    mov         eax,dword ptr [ebp-4]
 00508332    mov         ebx,dword ptr [eax]
 00508334    call        dword ptr [ebx+14]
 00508337    mov         eax,[0056E5A4];^gvar_0056DF04
 0050833C    cmp         byte ptr [eax],0
>0050833F    jne         0050834C
 00508341    cmp         word ptr [ebp-8],0
>00508346    ja          00508178
 0050834C    xor         eax,eax
 0050834E    pop         edx
 0050834F    pop         ecx
 00508350    pop         ecx
 00508351    mov         dword ptr fs:[eax],edx
 00508354    push        50836E
 00508359    lea         eax,[ebp-28]
 0050835C    mov         edx,6
 00508361    call        @LStrArrayClr
 00508366    ret
>00508367    jmp         @HandleFinally
>0050836C    jmp         00508359
 0050836E    pop         ebx
 0050836F    mov         esp,ebp
 00508371    pop         ebp
 00508372    ret
*}
end;

//005083D8
procedure sub_005083D8;
begin
{*
 005083D8    push        ebp
 005083D9    mov         ebp,esp
 005083DB    push        ecx
 005083DC    mov         eax,[0056E5A4];^gvar_0056DF04
 005083E1    mov         byte ptr [eax],0
 005083E4    mov         dl,1
 005083E6    mov         eax,[0041DE14];TMemoryStream
 005083EB    call        TObject.Create;TMemoryStream.Create
 005083F0    mov         dword ptr [ebp-4],eax
 005083F3    xor         eax,eax
 005083F5    push        ebp
 005083F6    push        50843B
 005083FB    push        dword ptr fs:[eax]
 005083FE    mov         dword ptr fs:[eax],esp
 00508401    mov         edx,dword ptr [ebp-4]
 00508404    mov         ax,1
 00508408    call        005095B8
 0050840D    test        al,al
>0050840F    je          00508425
 00508411    mov         eax,dword ptr [ebp-4]
 00508414    call        005080CC
 00508419    mov         edx,dword ptr [ebp-4]
 0050841C    mov         ax,1
 00508420    call        0050980C
 00508425    xor         eax,eax
 00508427    pop         edx
 00508428    pop         ecx
 00508429    pop         ecx
 0050842A    mov         dword ptr fs:[eax],edx
 0050842D    push        508442
 00508432    mov         eax,dword ptr [ebp-4]
 00508435    call        TObject.Free
 0050843A    ret
>0050843B    jmp         @HandleFinally
>00508440    jmp         00508432
 00508442    pop         ecx
 00508443    pop         ebp
 00508444    ret
*}
end;

//00508448
{*function sub_00508448(?:?):?;
begin
 00508448    push        ebp
 00508449    mov         ebp,esp
 0050844B    add         esp,0FFFFFFF4
 0050844E    push        ebx
 0050844F    mov         word ptr [ebp-2],ax
 00508453    mov         eax,[0056E5A4];^gvar_0056DF04
 00508458    mov         byte ptr [eax],0
 0050845B    mov         dl,1
 0050845D    mov         eax,[0041DE14];TMemoryStream
 00508462    call        TObject.Create;TMemoryStream.Create
 00508467    mov         dword ptr [ebp-8],eax
 0050846A    xor         eax,eax
 0050846C    push        ebp
 0050846D    push        50850C
 00508472    push        dword ptr fs:[eax]
 00508475    mov         dword ptr fs:[eax],esp
 00508478    mov         edx,dword ptr [ebp-8]
 0050847B    mov         ax,28
 0050847F    call        004CF5C8
 00508484    mov         byte ptr [ebp-3],al
 00508487    cmp         byte ptr [ebp-3],0
>0050848B    je          005084F6
 0050848D    xor         ecx,ecx
 0050848F    xor         edx,edx
 00508491    mov         eax,dword ptr [ebp-8]
 00508494    mov         ebx,dword ptr [eax]
 00508496    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00508499    mov         eax,dword ptr [ebp-8]
 0050849C    call        004CE56C
 005084A1    mov         dword ptr [ebp-0C],eax
 005084A4    cmp         dword ptr [ebp-0C],4C594F52
>005084AB    jne         005084BE
 005084AD    xor         ecx,ecx
 005084AF    mov         edx,30
 005084B4    mov         eax,dword ptr [ebp-8]
 005084B7    mov         ebx,dword ptr [eax]
 005084B9    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>005084BC    jmp         005084CD
 005084BE    xor         ecx,ecx
 005084C0    mov         edx,18
 005084C5    mov         eax,dword ptr [ebp-8]
 005084C8    mov         ebx,dword ptr [eax]
 005084CA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005084CD    lea         edx,[ebp-2]
 005084D0    mov         ecx,2
 005084D5    mov         eax,dword ptr [ebp-8]
 005084D8    call        TStream.WriteBuffer
 005084DD    mov         dl,1
 005084DF    mov         eax,dword ptr [ebp-8]
 005084E2    call        005014D0
 005084E7    mov         edx,dword ptr [ebp-8]
 005084EA    mov         ax,28
 005084EE    call        004CF728
 005084F3    mov         byte ptr [ebp-3],al
 005084F6    xor         eax,eax
 005084F8    pop         edx
 005084F9    pop         ecx
 005084FA    pop         ecx
 005084FB    mov         dword ptr fs:[eax],edx
 005084FE    push        508513
 00508503    mov         eax,dword ptr [ebp-8]
 00508506    call        TObject.Free
 0050850B    ret
>0050850C    jmp         @HandleFinally
>00508511    jmp         00508503
 00508513    mov         al,byte ptr [ebp-3]
 00508516    pop         ebx
 00508517    mov         esp,ebp
 00508519    pop         ebp
 0050851A    ret
end;*}

//0050851C
{*procedure TfmModules.lvModulesCustomDrawItem(?:?; ?:?);
begin
 0050851C    push        ebp
 0050851D    mov         ebp,esp
 0050851F    add         esp,0FFFFFFEC
 00508522    push        ebx
 00508523    xor         ebx,ebx
 00508525    mov         dword ptr [ebp-14],ebx
 00508528    mov         dword ptr [ebp-0C],ecx
 0050852B    mov         dword ptr [ebp-8],edx
 0050852E    mov         dword ptr [ebp-4],eax
 00508531    xor         eax,eax
 00508533    push        ebp
 00508534    push        508800
 00508539    push        dword ptr fs:[eax]
 0050853C    mov         dword ptr fs:[eax],esp
 0050853F    mov         eax,dword ptr [ebp-4]
 00508542    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508548    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050854E    call        0045AF28
 00508553    test        eax,eax
>00508555    je          005087EA
 0050855B    mov         eax,dword ptr [ebp-8]
 0050855E    mov         eax,dword ptr [eax+210]
 00508564    mov         dword ptr [ebp-10],eax
 00508567    mov         eax,dword ptr [ebp-0C]
 0050856A    mov         ecx,dword ptr [eax+24]
 0050856D    lea         eax,[ebp-14]
 00508570    mov         edx,508818;'$'
 00508575    call        @LStrCat3
 0050857A    mov         eax,dword ptr [ebp-14]
 0050857D    xor         edx,edx
 0050857F    call        0040C4A8
 00508584    cmp         eax,40
>00508587    jge         00508657
 0050858D    cmp         eax,28
>00508590    jg          005085E8
>00508592    je          0050875E
 00508598    cmp         eax,19
>0050859B    jg          005085C4
>0050859D    je          00508710
 005085A3    sub         eax,1
>005085A6    jb          00508782
 005085AC    add         eax,0FFFFFFF0
 005085AF    sub         eax,5
>005085B2    jb          00508710
 005085B8    dec         eax
>005085B9    je          00508710
>005085BF    jmp         005087B8
 005085C4    add         eax,0FFFFFFE5
 005085C7    sub         eax,2
>005085CA    jb          00508710
 005085D0    dec         eax
 005085D1    sub         eax,2
>005085D4    jb          00508710
 005085DA    sub         eax,7
>005085DD    jb          0050873A
>005085E3    jmp         005087B8
 005085E8    add         eax,0FFFFFFD7
 005085EB    cmp         eax,16
>005085EE    ja          005087B8
 005085F4    jmp         dword ptr [eax*4+5085FB]
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          005087B8
 005085F4    dd          005087B8
 005085F4    dd          0050873A
 005085F4    dd          0050873A
 005085F4    dd          005087B8
 005085F4    dd          005087B8
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          00508725
 005085F4    dd          0050874C
 005085F4    dd          0050873A
 005085F4    dd          0050873A
 005085F4    dd          005087B8
 005085F4    dd          0050875E
 005085F4    dd          0050875E
 005085F4    dd          0050875E
 005085F4    dd          0050875E
 005085F4    dd          0050875E
 00508657    cmp         eax,6B
>0050865A    jg          005086B9
>0050865C    je          00508710
 00508662    cmp         eax,4C
>00508665    jg          00508694
>00508667    je          00508710
 0050866D    add         eax,0FFFFFFC0
 00508670    sub         eax,4
>00508673    jb          0050874C
 00508679    add         eax,0FFFFFFFE
 0050867C    sub         eax,2
>0050867F    jb          0050874C
 00508685    dec         eax
 00508686    sub         eax,2
>00508689    jb          0050874C
>0050868F    jmp         005087B8
 00508694    add         eax,0FFFFFFB3
 00508697    sub         eax,2
>0050869A    jb          0050874C
 005086A0    add         eax,0FFFFFFEE
 005086A3    sub         eax,2
>005086A6    jb          00508710
 005086A8    add         eax,0FFFFFFFB
 005086AB    sub         eax,3
>005086AE    jb          0050873A
>005086B4    jmp         005087B8
 005086B9    cmp         eax,100
>005086BE    jge         005086DB
 005086C0    sub         eax,6C
>005086C3    je          0050873A
 005086C5    sub         eax,14
>005086C8    je          00508710
 005086CA    add         eax,0FFFFFFF0
 005086CD    sub         eax,70
>005086D0    jb          00508770
>005086D6    jmp         005087B8
 005086DB    add         eax,0FFFFFF00
 005086E0    sub         eax,100
>005086E5    jb          00508782
 005086EB    add         eax,0FFFFF200
 005086F0    sub         eax,3000
>005086F5    jb          00508794
 005086FB    add         eax,0FFFFC000
 00508700    sub         eax,1000
>00508705    jb          005087A6
>0050870B    jmp         005087B8
 00508710    mov         edx,0FF0000
 00508715    mov         eax,dword ptr [ebp-10]
 00508718    mov         eax,dword ptr [eax+0C]
 0050871B    call        TFont.SetColor
>00508720    jmp         005087C8
 00508725    mov         edx,8000
 0050872A    mov         eax,dword ptr [ebp-10]
 0050872D    mov         eax,dword ptr [eax+0C]
 00508730    call        TFont.SetColor
>00508735    jmp         005087C8
 0050873A    mov         edx,80
 0050873F    mov         eax,dword ptr [ebp-10]
 00508742    mov         eax,dword ptr [eax+0C]
 00508745    call        TFont.SetColor
>0050874A    jmp         005087C8
 0050874C    mov         edx,0FF
 00508751    mov         eax,dword ptr [ebp-10]
 00508754    mov         eax,dword ptr [eax+0C]
 00508757    call        TFont.SetColor
>0050875C    jmp         005087C8
 0050875E    mov         edx,0FF000011
 00508763    mov         eax,dword ptr [ebp-10]
 00508766    mov         eax,dword ptr [eax+0C]
 00508769    call        TFont.SetColor
>0050876E    jmp         005087C8
 00508770    mov         edx,808080
 00508775    mov         eax,dword ptr [ebp-10]
 00508778    mov         eax,dword ptr [eax+0C]
 0050877B    call        TFont.SetColor
>00508780    jmp         005087C8
 00508782    mov         edx,8080
 00508787    mov         eax,dword ptr [ebp-10]
 0050878A    mov         eax,dword ptr [eax+0C]
 0050878D    call        TFont.SetColor
>00508792    jmp         005087C8
 00508794    mov         edx,808080
 00508799    mov         eax,dword ptr [ebp-10]
 0050879C    mov         eax,dword ptr [eax+0C]
 0050879F    call        TFont.SetColor
>005087A4    jmp         005087C8
 005087A6    mov         edx,0C0C0C0
 005087AB    mov         eax,dword ptr [ebp-10]
 005087AE    mov         eax,dword ptr [eax+0C]
 005087B1    call        TFont.SetColor
>005087B6    jmp         005087C8
 005087B8    mov         edx,0FF000008
 005087BD    mov         eax,dword ptr [ebp-10]
 005087C0    mov         eax,dword ptr [eax+0C]
 005087C3    call        TFont.SetColor
 005087C8    mov         eax,dword ptr [ebp-4]
 005087CB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005087D1    mov         edx,dword ptr [eax]
 005087D3    call        dword ptr [edx+50];TImage.GetEnabled
 005087D6    test        al,al
>005087D8    jne         005087EA
 005087DA    mov         edx,0FF00000F
 005087DF    mov         eax,dword ptr [ebp-10]
 005087E2    mov         eax,dword ptr [eax+14]
 005087E5    call        TBrush.SetColor
 005087EA    xor         eax,eax
 005087EC    pop         edx
 005087ED    pop         ecx
 005087EE    pop         ecx
 005087EF    mov         dword ptr fs:[eax],edx
 005087F2    push        508807
 005087F7    lea         eax,[ebp-14]
 005087FA    call        @LStrClr
 005087FF    ret
>00508800    jmp         @HandleFinally
>00508805    jmp         005087F7
 00508807    pop         ebx
 00508808    mov         esp,ebp
 0050880A    pop         ebp
 0050880B    ret         8
end;*}

//0050881C
procedure TfmModules.miSelectAllwoSSClick(Sender:TObject);
begin
{*
 0050881C    push        ebp
 0050881D    mov         ebp,esp
 0050881F    add         esp,0FFFFFFEC
 00508822    push        ebx
 00508823    xor         ecx,ecx
 00508825    mov         dword ptr [ebp-14],ecx
 00508828    mov         dword ptr [ebp-0C],ecx
 0050882B    mov         dword ptr [ebp-10],edx
 0050882E    mov         dword ptr [ebp-4],eax
 00508831    xor         eax,eax
 00508833    push        ebp
 00508834    push        50894D
 00508839    push        dword ptr fs:[eax]
 0050883C    mov         dword ptr fs:[eax],esp
 0050883F    mov         eax,[0056E5A4];^gvar_0056DF04
 00508844    mov         byte ptr [eax],0
 00508847    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050884E    jle         0050892F
 00508854    mov         eax,dword ptr [ebp-4]
 00508857    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050885D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508863    call        0045AF28
 00508868    test        eax,eax
>0050886A    jle         0050892F
 00508870    mov         eax,dword ptr [ebp-4]
 00508873    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508879    mov         edx,dword ptr [eax]
 0050887B    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00508881    mov         edx,eax
 00508883    mov         eax,dword ptr [ebp-4]
 00508886    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050888C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508892    call        0045AF80
 00508897    mov         eax,dword ptr [eax+8]
 0050889A    lea         ecx,[ebp-0C]
 0050889D    mov         edx,1
 005088A2    mov         ebx,dword ptr [eax]
 005088A4    call        dword ptr [ebx+0C]
 005088A7    mov         word ptr [ebp-6],0
>005088AD    jmp         00508909
 005088AF    movzx       edx,word ptr [ebp-6]
 005088B3    mov         eax,dword ptr [ebp-4]
 005088B6    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005088BC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005088C2    call        0045AF80
 005088C7    mov         ecx,dword ptr [eax+24]
 005088CA    lea         eax,[ebp-14]
 005088CD    mov         edx,508964;'$'
 005088D2    call        @LStrCat3
 005088D7    mov         eax,dword ptr [ebp-14]
 005088DA    call        0040C468
 005088DF    cmp         eax,90
>005088E4    jge         00508905
 005088E6    movzx       edx,word ptr [ebp-6]
 005088EA    mov         eax,dword ptr [ebp-4]
 005088ED    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005088F3    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005088F9    call        0045AF80
 005088FE    mov         dl,1
 00508900    call        0045A6C8
 00508905    inc         word ptr [ebp-6]
 00508909    mov         eax,dword ptr [ebp-4]
 0050890C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508912    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508918    call        0045AF28
 0050891D    movzx       edx,word ptr [ebp-6]
 00508921    cmp         eax,edx
>00508923    jle         0050892F
 00508925    mov         eax,[0056E5A4];^gvar_0056DF04
 0050892A    cmp         byte ptr [eax],0
>0050892D    je          005088AF
 0050892F    xor         eax,eax
 00508931    pop         edx
 00508932    pop         ecx
 00508933    pop         ecx
 00508934    mov         dword ptr fs:[eax],edx
 00508937    push        508954
 0050893C    lea         eax,[ebp-14]
 0050893F    call        @LStrClr
 00508944    lea         eax,[ebp-0C]
 00508947    call        @LStrClr
 0050894C    ret
>0050894D    jmp         @HandleFinally
>00508952    jmp         0050893C
 00508954    pop         ebx
 00508955    mov         esp,ebp
 00508957    pop         ebp
 00508958    ret
*}
end;

//00508968
{*procedure TfmModules.lvModulesColumnClick(?:?; ?:?);
begin
 00508968    push        ebp
 00508969    mov         ebp,esp
 0050896B    add         esp,0FFFFFFF4
 0050896E    mov         dword ptr [ebp-8],ecx
 00508971    mov         dword ptr [ebp-0C],edx
 00508974    mov         dword ptr [ebp-4],eax
 00508977    mov         eax,dword ptr [ebp-8]
 0050897A    call        TCollectionItem.GetIndex
 0050897F    mov         edx,dword ptr [ebp-4]
 00508982    mov         dword ptr [edx+3F0],eax;TfmModules.?f3F0:Integer
 00508988    mov         eax,dword ptr [ebp-4]
 0050898B    mov         eax,dword ptr [eax+3F0];TfmModules.?f3F0:Integer
 00508991    sub         eax,6
>00508994    jb          0050899F
 00508996    sub         eax,2
>00508999    jne         00508A1F
 0050899F    mov         eax,dword ptr [ebp-4]
 005089A2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005089A8    cmp         byte ptr [eax+229],0;TListView.FSortType:TSortType
>005089AF    jne         005089E8
 005089B1    mov         eax,dword ptr [ebp-4]
 005089B4    mov         eax,dword ptr [eax+3F0];TfmModules.?f3F0:Integer
 005089BA    sub         eax,5
>005089BD    je          005089C4
 005089BF    sub         eax,3
>005089C2    jne         005089D6
 005089C4    mov         dl,2
 005089C6    mov         eax,dword ptr [ebp-4]
 005089C9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005089CF    call        TListView.SetSortType
>005089D4    jmp         005089F8
 005089D6    mov         dl,1
 005089D8    mov         eax,dword ptr [ebp-4]
 005089DB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005089E1    call        TListView.SetSortType
>005089E6    jmp         005089F8
 005089E8    xor         edx,edx
 005089EA    mov         eax,dword ptr [ebp-4]
 005089ED    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005089F3    call        TListView.SetSortType
 005089F8    mov         eax,dword ptr [ebp-4]
 005089FB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508A01    cmp         byte ptr [eax+229],0;TListView.FSortType:TSortType
>00508A08    jne         00508A11
 00508A0A    call        00502D58
>00508A0F    jmp         00508A1F
 00508A11    mov         eax,dword ptr [ebp-4]
 00508A14    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508A1A    call        0045F064
 00508A1F    mov         esp,ebp
 00508A21    pop         ebp
 00508A22    ret
end;*}

//00508A24
{*procedure TfmModules.lvModulesCompare(?:?; ?:?; ?:?; ?:?);
begin
 00508A24    push        ebp
 00508A25    mov         ebp,esp
 00508A27    push        ecx
 00508A28    mov         ecx,0C
 00508A2D    push        0
 00508A2F    push        0
 00508A31    dec         ecx
>00508A32    jne         00508A2D
 00508A34    xchg        ecx,dword ptr [ebp-4]
 00508A37    push        ebx
 00508A38    push        esi
 00508A39    mov         dword ptr [ebp-8],ecx
 00508A3C    mov         dword ptr [ebp-0C],edx
 00508A3F    mov         dword ptr [ebp-4],eax
 00508A42    xor         eax,eax
 00508A44    push        ebp
 00508A45    push        508CF9
 00508A4A    push        dword ptr fs:[eax]
 00508A4D    mov         dword ptr fs:[eax],esp
 00508A50    mov         eax,dword ptr [ebp-4]
 00508A53    mov         eax,dword ptr [eax+3F0];TfmModules.?f3F0:Integer
 00508A59    cmp         eax,8
>00508A5C    ja          00508CDE
 00508A62    jmp         dword ptr [eax*4+508A69]
 00508A62    dd          00508A8D
 00508A62    dd          00508AD5
 00508A62    dd          00508B37
 00508A62    dd          00508B9F
 00508A62    dd          00508C07
 00508A62    dd          00508C6C
 00508A62    dd          00508CDE
 00508A62    dd          00508CDE
 00508A62    dd          00508CA6
 00508A8D    lea         eax,[ebp-10]
 00508A90    mov         edx,dword ptr [ebp-8]
 00508A93    mov         ecx,dword ptr [edx+24]
 00508A96    mov         edx,508D10;'$'
 00508A9B    call        @LStrCat3
 00508AA0    mov         eax,dword ptr [ebp-10]
 00508AA3    xor         edx,edx
 00508AA5    call        0040C4A8
 00508AAA    mov         ebx,eax
 00508AAC    mov         eax,dword ptr [ebp+10]
 00508AAF    mov         ecx,dword ptr [eax+24]
 00508AB2    lea         eax,[ebp-14]
 00508AB5    mov         edx,508D10;'$'
 00508ABA    call        @LStrCat3
 00508ABF    mov         eax,dword ptr [ebp-14]
 00508AC2    xor         edx,edx
 00508AC4    call        0040C4A8
 00508AC9    sub         ebx,eax
 00508ACB    mov         eax,dword ptr [ebp+8]
 00508ACE    mov         dword ptr [eax],ebx
>00508AD0    jmp         00508CDE
 00508AD5    lea         ecx,[ebp-1C]
 00508AD8    xor         edx,edx
 00508ADA    mov         eax,dword ptr [ebp-8]
 00508ADD    mov         eax,dword ptr [eax+8]
 00508AE0    mov         ebx,dword ptr [eax]
 00508AE2    call        dword ptr [ebx+0C]
 00508AE5    mov         ecx,dword ptr [ebp-1C]
 00508AE8    lea         eax,[ebp-18]
 00508AEB    mov         edx,508D10;'$'
 00508AF0    call        @LStrCat3
 00508AF5    mov         eax,dword ptr [ebp-18]
 00508AF8    xor         edx,edx
 00508AFA    call        0040C4A8
 00508AFF    mov         ebx,eax
 00508B01    lea         ecx,[ebp-24]
 00508B04    mov         eax,dword ptr [ebp+10]
 00508B07    mov         eax,dword ptr [eax+8]
 00508B0A    xor         edx,edx
 00508B0C    mov         esi,dword ptr [eax]
 00508B0E    call        dword ptr [esi+0C]
 00508B11    mov         ecx,dword ptr [ebp-24]
 00508B14    lea         eax,[ebp-20]
 00508B17    mov         edx,508D10;'$'
 00508B1C    call        @LStrCat3
 00508B21    mov         eax,dword ptr [ebp-20]
 00508B24    xor         edx,edx
 00508B26    call        0040C4A8
 00508B2B    sub         ebx,eax
 00508B2D    mov         eax,dword ptr [ebp+8]
 00508B30    mov         dword ptr [eax],ebx
>00508B32    jmp         00508CDE
 00508B37    lea         ecx,[ebp-2C]
 00508B3A    mov         edx,1
 00508B3F    mov         eax,dword ptr [ebp-8]
 00508B42    mov         eax,dword ptr [eax+8]
 00508B45    mov         ebx,dword ptr [eax]
 00508B47    call        dword ptr [ebx+0C]
 00508B4A    mov         ecx,dword ptr [ebp-2C]
 00508B4D    lea         eax,[ebp-28]
 00508B50    mov         edx,508D10;'$'
 00508B55    call        @LStrCat3
 00508B5A    mov         eax,dword ptr [ebp-28]
 00508B5D    xor         edx,edx
 00508B5F    call        0040C4A8
 00508B64    mov         ebx,eax
 00508B66    lea         ecx,[ebp-34]
 00508B69    mov         eax,dword ptr [ebp+10]
 00508B6C    mov         eax,dword ptr [eax+8]
 00508B6F    mov         edx,1
 00508B74    mov         esi,dword ptr [eax]
 00508B76    call        dword ptr [esi+0C]
 00508B79    mov         ecx,dword ptr [ebp-34]
 00508B7C    lea         eax,[ebp-30]
 00508B7F    mov         edx,508D10;'$'
 00508B84    call        @LStrCat3
 00508B89    mov         eax,dword ptr [ebp-30]
 00508B8C    xor         edx,edx
 00508B8E    call        0040C4A8
 00508B93    sub         ebx,eax
 00508B95    mov         eax,dword ptr [ebp+8]
 00508B98    mov         dword ptr [eax],ebx
>00508B9A    jmp         00508CDE
 00508B9F    lea         ecx,[ebp-3C]
 00508BA2    mov         edx,2
 00508BA7    mov         eax,dword ptr [ebp-8]
 00508BAA    mov         eax,dword ptr [eax+8]
 00508BAD    mov         ebx,dword ptr [eax]
 00508BAF    call        dword ptr [ebx+0C]
 00508BB2    mov         ecx,dword ptr [ebp-3C]
 00508BB5    lea         eax,[ebp-38]
 00508BB8    mov         edx,508D10;'$'
 00508BBD    call        @LStrCat3
 00508BC2    mov         eax,dword ptr [ebp-38]
 00508BC5    xor         edx,edx
 00508BC7    call        0040C4A8
 00508BCC    mov         ebx,eax
 00508BCE    lea         ecx,[ebp-44]
 00508BD1    mov         eax,dword ptr [ebp+10]
 00508BD4    mov         eax,dword ptr [eax+8]
 00508BD7    mov         edx,2
 00508BDC    mov         esi,dword ptr [eax]
 00508BDE    call        dword ptr [esi+0C]
 00508BE1    mov         ecx,dword ptr [ebp-44]
 00508BE4    lea         eax,[ebp-40]
 00508BE7    mov         edx,508D10;'$'
 00508BEC    call        @LStrCat3
 00508BF1    mov         eax,dword ptr [ebp-40]
 00508BF4    xor         edx,edx
 00508BF6    call        0040C4A8
 00508BFB    sub         ebx,eax
 00508BFD    mov         eax,dword ptr [ebp+8]
 00508C00    mov         dword ptr [eax],ebx
>00508C02    jmp         00508CDE
 00508C07    lea         ecx,[ebp-4C]
 00508C0A    mov         edx,3
 00508C0F    mov         eax,dword ptr [ebp-8]
 00508C12    mov         eax,dword ptr [eax+8]
 00508C15    mov         ebx,dword ptr [eax]
 00508C17    call        dword ptr [ebx+0C]
 00508C1A    mov         ecx,dword ptr [ebp-4C]
 00508C1D    lea         eax,[ebp-48]
 00508C20    mov         edx,508D10;'$'
 00508C25    call        @LStrCat3
 00508C2A    mov         eax,dword ptr [ebp-48]
 00508C2D    xor         edx,edx
 00508C2F    call        0040C4A8
 00508C34    mov         ebx,eax
 00508C36    lea         ecx,[ebp-54]
 00508C39    mov         eax,dword ptr [ebp+10]
 00508C3C    mov         eax,dword ptr [eax+8]
 00508C3F    mov         edx,3
 00508C44    mov         esi,dword ptr [eax]
 00508C46    call        dword ptr [esi+0C]
 00508C49    mov         ecx,dword ptr [ebp-54]
 00508C4C    lea         eax,[ebp-50]
 00508C4F    mov         edx,508D10;'$'
 00508C54    call        @LStrCat3
 00508C59    mov         eax,dword ptr [ebp-50]
 00508C5C    xor         edx,edx
 00508C5E    call        0040C4A8
 00508C63    sub         ebx,eax
 00508C65    mov         eax,dword ptr [ebp+8]
 00508C68    mov         dword ptr [eax],ebx
>00508C6A    jmp         00508CDE
 00508C6C    lea         ecx,[ebp-58]
 00508C6F    mov         eax,dword ptr [ebp+10]
 00508C72    mov         eax,dword ptr [eax+8]
 00508C75    mov         edx,4
 00508C7A    mov         ebx,dword ptr [eax]
 00508C7C    call        dword ptr [ebx+0C]
 00508C7F    mov         eax,dword ptr [ebp-58]
 00508C82    push        eax
 00508C83    lea         ecx,[ebp-5C]
 00508C86    mov         edx,4
 00508C8B    mov         eax,dword ptr [ebp-8]
 00508C8E    mov         eax,dword ptr [eax+8]
 00508C91    mov         ebx,dword ptr [eax]
 00508C93    call        dword ptr [ebx+0C]
 00508C96    mov         eax,dword ptr [ebp-5C]
 00508C99    pop         edx
 00508C9A    call        0040BEF8
 00508C9F    mov         edx,dword ptr [ebp+8]
 00508CA2    mov         dword ptr [edx],eax
>00508CA4    jmp         00508CDE
 00508CA6    lea         ecx,[ebp-60]
 00508CA9    mov         eax,dword ptr [ebp+10]
 00508CAC    mov         eax,dword ptr [eax+8]
 00508CAF    mov         edx,7
 00508CB4    mov         ebx,dword ptr [eax]
 00508CB6    call        dword ptr [ebx+0C]
 00508CB9    mov         eax,dword ptr [ebp-60]
 00508CBC    push        eax
 00508CBD    lea         ecx,[ebp-64]
 00508CC0    mov         edx,7
 00508CC5    mov         eax,dword ptr [ebp-8]
 00508CC8    mov         eax,dword ptr [eax+8]
 00508CCB    mov         ebx,dword ptr [eax]
 00508CCD    call        dword ptr [ebx+0C]
 00508CD0    mov         eax,dword ptr [ebp-64]
 00508CD3    pop         edx
 00508CD4    call        0040BEF8
 00508CD9    mov         edx,dword ptr [ebp+8]
 00508CDC    mov         dword ptr [edx],eax
 00508CDE    xor         eax,eax
 00508CE0    pop         edx
 00508CE1    pop         ecx
 00508CE2    pop         ecx
 00508CE3    mov         dword ptr fs:[eax],edx
 00508CE6    push        508D00
 00508CEB    lea         eax,[ebp-64]
 00508CEE    mov         edx,16
 00508CF3    call        @LStrArrayClr
 00508CF8    ret
>00508CF9    jmp         @HandleFinally
>00508CFE    jmp         00508CEB
 00508D00    pop         esi
 00508D01    pop         ebx
 00508D02    mov         esp,ebp
 00508D04    pop         ebp
 00508D05    ret         0C
end;*}

//00508D14
{*function sub_00508D14(?:?):?;
begin
 00508D14    push        ebp
 00508D15    mov         ebp,esp
 00508D17    add         esp,0FFFFFFEC
 00508D1A    xor         edx,edx
 00508D1C    mov         dword ptr [ebp-14],edx
 00508D1F    mov         word ptr [ebp-2],ax
 00508D23    xor         eax,eax
 00508D25    push        ebp
 00508D26    push        508DDB
 00508D2B    push        dword ptr fs:[eax]
 00508D2E    mov         dword ptr fs:[eax],esp
 00508D31    mov         dword ptr [ebp-8],0FFFFFFFF
 00508D38    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508D3D    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508D43    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508D49    call        0045AF28
 00508D4E    test        eax,eax
>00508D50    jle         00508DC5
 00508D52    xor         eax,eax
 00508D54    mov         dword ptr [ebp-0C],eax
 00508D57    mov         byte ptr [ebp-0D],1
>00508D5B    jmp         00508DA3
 00508D5D    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508D62    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508D68    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508D6E    mov         edx,dword ptr [ebp-0C]
 00508D71    call        0045AF80
 00508D76    mov         ecx,dword ptr [eax+24]
 00508D79    lea         eax,[ebp-14]
 00508D7C    mov         edx,508DF4;'$'
 00508D81    call        @LStrCat3
 00508D86    mov         eax,dword ptr [ebp-14]
 00508D89    call        0040C468
 00508D8E    movzx       edx,word ptr [ebp-2]
 00508D92    cmp         eax,edx
>00508D94    jne         00508DA0
 00508D96    mov         byte ptr [ebp-0D],0
 00508D9A    mov         eax,dword ptr [ebp-0C]
 00508D9D    mov         dword ptr [ebp-8],eax
 00508DA0    inc         dword ptr [ebp-0C]
 00508DA3    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508DA8    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508DAE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508DB4    call        0045AF28
 00508DB9    dec         eax
 00508DBA    cmp         eax,dword ptr [ebp-0C]
>00508DBD    jle         00508DC5
 00508DBF    cmp         byte ptr [ebp-0D],0
>00508DC3    jne         00508D5D
 00508DC5    xor         eax,eax
 00508DC7    pop         edx
 00508DC8    pop         ecx
 00508DC9    pop         ecx
 00508DCA    mov         dword ptr fs:[eax],edx
 00508DCD    push        508DE2
 00508DD2    lea         eax,[ebp-14]
 00508DD5    call        @LStrClr
 00508DDA    ret
>00508DDB    jmp         @HandleFinally
>00508DE0    jmp         00508DD2
 00508DE2    mov         eax,dword ptr [ebp-8]
 00508DE5    mov         esp,ebp
 00508DE7    pop         ebp
 00508DE8    ret
end;*}

//00508DF8
{*procedure sub_00508DF8(?:?; ?:TMemoryStream);
begin
 00508DF8    push        ebp
 00508DF9    mov         ebp,esp
 00508DFB    mov         ecx,7
 00508E00    push        0
 00508E02    push        0
 00508E04    dec         ecx
>00508E05    jne         00508E00
 00508E07    push        ecx
 00508E08    push        ebx
 00508E09    mov         dword ptr [ebp-8],edx
 00508E0C    mov         dword ptr [ebp-4],eax
 00508E0F    xor         eax,eax
 00508E11    push        ebp
 00508E12    push        509192
 00508E17    push        dword ptr fs:[eax]
 00508E1A    mov         dword ptr fs:[eax],esp
 00508E1D    mov         eax,[0056E5A4];^gvar_0056DF04
 00508E22    mov         byte ptr [eax],0
 00508E25    lea         edx,[ebp-18]
 00508E28    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508E2D    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00508E33    call        TPanel.GetCaption
 00508E38    mov         eax,dword ptr [ebp-18]
 00508E3B    mov         edx,10000
 00508E40    call        0040C4A8
 00508E45    mov         dword ptr [ebp-14],eax
 00508E48    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>00508E4F    jle         0050916F
 00508E55    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508E5A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508E60    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508E66    call        0045AF28
 00508E6B    test        eax,eax
>00508E6D    jle         0050916F
 00508E73    cmp         byte ptr ds:[56D40C],0;gvar_0056D40C:Boolean
>00508E7A    je          00508EBF
 00508E7C    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508E81    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508E87    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508E8D    mov         edx,dword ptr [ebp-4]
 00508E90    call        0045AF80
 00508E95    mov         ecx,dword ptr [eax+24]
 00508E98    lea         eax,[ebp-1C]
 00508E9B    mov         edx,5091A8;'$'
 00508EA0    call        @LStrCat3
 00508EA5    mov         eax,dword ptr [ebp-1C]
 00508EA8    xor         edx,edx
 00508EAA    call        0040C4A8
 00508EAF    mov         edx,dword ptr [ebp-8]
 00508EB2    call        004CF728
 00508EB7    mov         byte ptr [ebp-9],al
>00508EBA    jmp         005090F1
 00508EBF    mov         eax,[0056E040];^gvar_005720C0
 00508EC4    cmp         byte ptr [eax],0
>00508EC7    je          00508FE7
 00508ECD    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508ED2    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508ED8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508EDE    mov         edx,dword ptr [ebp-4]
 00508EE1    call        0045AF80
 00508EE6    mov         eax,dword ptr [eax+8]
 00508EE9    lea         ecx,[ebp-20]
 00508EEC    mov         edx,1
 00508EF1    mov         ebx,dword ptr [eax]
 00508EF3    call        dword ptr [ebx+0C]
 00508EF6    mov         eax,dword ptr [ebp-20]
 00508EF9    mov         edx,5091B4;'1'
 00508EFE    call        @LStrCmp
>00508F03    jne         00508F4E
 00508F05    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508F0A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508F10    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508F16    mov         edx,dword ptr [ebp-4]
 00508F19    call        0045AF80
 00508F1E    mov         ecx,dword ptr [eax+24]
 00508F21    lea         eax,[ebp-24]
 00508F24    mov         edx,5091A8;'$'
 00508F29    call        @LStrCat3
 00508F2E    mov         eax,dword ptr [ebp-24]
 00508F31    xor         edx,edx
 00508F33    call        0040C4A8
 00508F38    call        00502410
 00508F3D    add         eax,eax
 00508F3F    mov         eax,dword ptr [eax*8+572670]
 00508F46    add         eax,dword ptr [ebp-14]
 00508F49    mov         dword ptr [ebp-10],eax
>00508F4C    jmp         00508F92
 00508F4E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508F53    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508F59    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508F5F    mov         edx,dword ptr [ebp-4]
 00508F62    call        0045AF80
 00508F67    mov         ecx,dword ptr [eax+24]
 00508F6A    lea         eax,[ebp-28]
 00508F6D    mov         edx,5091A8;'$'
 00508F72    call        @LStrCat3
 00508F77    mov         eax,dword ptr [ebp-28]
 00508F7A    xor         edx,edx
 00508F7C    call        0040C4A8
 00508F81    call        00502410
 00508F86    add         eax,eax
 00508F88    mov         eax,dword ptr [eax*8+572670]
 00508F8F    mov         dword ptr [ebp-10],eax
 00508F92    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508F97    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508F9D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508FA3    mov         edx,dword ptr [ebp-4]
 00508FA6    call        0045AF80
 00508FAB    mov         ecx,dword ptr [eax+24]
 00508FAE    lea         eax,[ebp-2C]
 00508FB1    mov         edx,5091A8;'$'
 00508FB6    call        @LStrCat3
 00508FBB    mov         eax,dword ptr [ebp-2C]
 00508FBE    xor         edx,edx
 00508FC0    call        0040C4A8
 00508FC5    call        00502410
 00508FCA    add         eax,eax
 00508FCC    movzx       edx,word ptr [eax*8+572674]
 00508FD4    mov         ecx,dword ptr [ebp-8]
 00508FD7    mov         eax,dword ptr [ebp-10]
 00508FDA    call        004FF4C4
 00508FDF    mov         byte ptr [ebp-9],al
>00508FE2    jmp         005090F1
 00508FE7    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00508FEC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00508FF2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00508FF8    mov         edx,dword ptr [ebp-4]
 00508FFB    call        0045AF80
 00509000    mov         eax,dword ptr [eax+8]
 00509003    lea         ecx,[ebp-30]
 00509006    mov         edx,1
 0050900B    mov         ebx,dword ptr [eax]
 0050900D    call        dword ptr [ebx+0C]
 00509010    mov         eax,dword ptr [ebp-30]
 00509013    xor         edx,edx
 00509015    call        0040C4A8
 0050901A    push        eax
 0050901B    mov         eax,dword ptr [ebp-8]
 0050901E    push        eax
 0050901F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00509024    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050902A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00509030    mov         edx,dword ptr [ebp-4]
 00509033    call        0045AF80
 00509038    mov         ecx,dword ptr [eax+24]
 0050903B    lea         eax,[ebp-34]
 0050903E    mov         edx,5091A8;'$'
 00509043    call        @LStrCat3
 00509048    mov         eax,dword ptr [ebp-34]
 0050904B    xor         edx,edx
 0050904D    call        0040C4A8
 00509052    call        00502410
 00509057    add         eax,eax
 00509059    mov         ax,word ptr [eax*8+572674]
 00509061    push        eax
 00509062    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00509067    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050906D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00509073    mov         edx,dword ptr [ebp-4]
 00509076    call        0045AF80
 0050907B    mov         ecx,dword ptr [eax+24]
 0050907E    lea         eax,[ebp-38]
 00509081    mov         edx,5091A8;'$'
 00509086    call        @LStrCat3
 0050908B    mov         eax,dword ptr [ebp-38]
 0050908E    xor         edx,edx
 00509090    call        0040C4A8
 00509095    call        00502410
 0050909A    add         eax,eax
 0050909C    mov         ax,word ptr [eax*8+572670]
 005090A4    push        eax
 005090A5    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005090AA    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 005090B0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005090B6    mov         edx,dword ptr [ebp-4]
 005090B9    call        0045AF80
 005090BE    mov         ecx,dword ptr [eax+24]
 005090C1    lea         eax,[ebp-3C]
 005090C4    mov         edx,5091A8;'$'
 005090C9    call        @LStrCat3
 005090CE    mov         eax,dword ptr [ebp-3C]
 005090D1    xor         edx,edx
 005090D3    call        0040C4A8
 005090D8    call        00502410
 005090DD    add         eax,eax
 005090DF    movzx       eax,word ptr [eax*8+57266E]
 005090E7    pop         edx
 005090E8    pop         ecx
 005090E9    call        004FBA6C
 005090EE    mov         byte ptr [ebp-9],al
 005090F1    cmp         byte ptr [ebp-9],0
>005090F5    je          0050911E
 005090F7    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 005090FC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00509102    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00509108    mov         edx,dword ptr [ebp-4]
 0050910B    call        0045AF80
 00509110    mov         ecx,1
 00509115    xor         edx,edx
 00509117    call        0045A98C
>0050911C    jmp         00509143
 0050911E    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00509123    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 00509129    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050912F    mov         edx,dword ptr [ebp-4]
 00509132    call        0045AF80
 00509137    mov         ecx,2
 0050913C    xor         edx,edx
 0050913E    call        0045A98C
 00509143    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 00509148    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050914E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00509154    mov         edx,dword ptr [ebp-4]
 00509157    call        0045AF80
 0050915C    xor         edx,edx
 0050915E    call        0045A63C
 00509163    mov         eax,[0056E3C0];^Application:TApplication
 00509168    mov         eax,dword ptr [eax]
 0050916A    call        004AB51C
 0050916F    xor         eax,eax
 00509171    pop         edx
 00509172    pop         ecx
 00509173    pop         ecx
 00509174    mov         dword ptr fs:[eax],edx
 00509177    push        509199
 0050917C    lea         eax,[ebp-3C]
 0050917F    mov         edx,9
 00509184    call        @LStrArrayClr
 00509189    lea         eax,[ebp-18]
 0050918C    call        @LStrClr
 00509191    ret
>00509192    jmp         @HandleFinally
>00509197    jmp         0050917C
 00509199    pop         ebx
 0050919A    mov         esp,ebp
 0050919C    pop         ebp
 0050919D    ret
end;*}

//005091B8
procedure TfmModules.miWriteMultiSelectedClick(Sender:TObject);
begin
{*
 005091B8    push        ebp
 005091B9    mov         ebp,esp
 005091BB    mov         ecx,9
 005091C0    push        0
 005091C2    push        0
 005091C4    dec         ecx
>005091C5    jne         005091C0
 005091C7    push        ecx
 005091C8    push        ebx
 005091C9    mov         dword ptr [ebp-1C],edx
 005091CC    mov         dword ptr [ebp-4],eax
 005091CF    xor         eax,eax
 005091D1    push        ebp
 005091D2    push        509521
 005091D7    push        dword ptr fs:[eax]
 005091DA    mov         dword ptr fs:[eax],esp
 005091DD    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005091E3    mov         edx,dword ptr [edx]
 005091E5    lea         eax,[ebp-20]
 005091E8    mov         ecx,509538;'Modules'
 005091ED    call        @LStrCat3
 005091F2    mov         eax,dword ptr [ebp-20]
 005091F5    call        0040C9A4
 005091FA    test        al,al
>005091FC    jne         00509230
 005091FE    push        509548;'Cannot create '
 00509203    mov         eax,[0056E2D0];^gvar_0056DF38
 00509208    push        dword ptr [eax]
 0050920A    push        509538;'Modules'
 0050920F    lea         eax,[ebp-24]
 00509212    mov         edx,3
 00509217    call        @LStrCatN
 0050921C    mov         ecx,dword ptr [ebp-24]
 0050921F    mov         dl,1
 00509221    mov         eax,[0040B004];Exception
 00509226    call        Exception.Create;Exception.Create
 0050922B    call        @RaiseExcept
 00509230    mov         eax,[0056E5A4];^gvar_0056DF04
 00509235    mov         byte ptr [eax],0
 00509238    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050923D    mov         eax,dword ptr [eax]
 0050923F    mov         eax,dword ptr [eax+35C]
 00509245    mov         eax,dword ptr [eax+5C]
 00509248    or          eax,dword ptr ds:[509558];0x40 gvar_00509558
 0050924E    mov         edx,dword ptr ds:[56E32C];^gvar_0056DE74:TfmHDD
 00509254    mov         edx,dword ptr [edx]
 00509256    mov         edx,dword ptr [edx+35C]
 0050925C    mov         dword ptr [edx+5C],eax
 0050925F    mov         dl,1
 00509261    mov         eax,[0041DE14];TMemoryStream
 00509266    call        TObject.Create;TMemoryStream.Create
 0050926B    mov         dword ptr [ebp-10],eax
 0050926E    xor         eax,eax
 00509270    push        ebp
 00509271    push        5094B1
 00509276    push        dword ptr fs:[eax]
 00509279    mov         dword ptr fs:[eax],esp
 0050927C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00509282    mov         edx,dword ptr [edx]
 00509284    lea         eax,[ebp-28]
 00509287    mov         ecx,509564;'Modules\'
 0050928C    call        @LStrCat3
 00509291    mov         edx,dword ptr [ebp-28]
 00509294    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509299    mov         eax,dword ptr [eax]
 0050929B    mov         eax,dword ptr [eax+35C]
 005092A1    call        TOpenDialog.SetInitialDir
 005092A6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005092AB    mov         eax,dword ptr [eax]
 005092AD    mov         eax,dword ptr [eax+35C]
 005092B3    mov         edx,dword ptr [eax]
 005092B5    call        dword ptr [edx+3C]
 005092B8    test        al,al
>005092BA    je          0050949B
 005092C0    mov         eax,dword ptr [ebp-4]
 005092C3    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005092C9    xor         edx,edx
 005092CB    call        TProgressBar.SetMin
 005092D0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005092D5    mov         eax,dword ptr [eax]
 005092D7    mov         eax,dword ptr [eax+35C]
 005092DD    mov         eax,dword ptr [eax+7C]
 005092E0    mov         edx,dword ptr [eax]
 005092E2    call        dword ptr [edx+14]
 005092E5    mov         edx,eax
 005092E7    mov         eax,dword ptr [ebp-4]
 005092EA    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005092F0    call        TProgressBar.SetMax
 005092F5    xor         eax,eax
 005092F7    mov         dword ptr [ebp-8],eax
>005092FA    jmp         00509473
 005092FF    lea         ecx,[ebp-2C]
 00509302    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509307    mov         eax,dword ptr [eax]
 00509309    mov         eax,dword ptr [eax+35C]
 0050930F    mov         eax,dword ptr [eax+7C]
 00509312    mov         edx,dword ptr [ebp-8]
 00509315    mov         ebx,dword ptr [eax]
 00509317    call        dword ptr [ebx+0C]
 0050931A    mov         eax,dword ptr [ebp-2C]
 0050931D    lea         edx,[ebp-0C]
 00509320    call        0040CC9C
 00509325    lea         ecx,[ebp-30]
 00509328    xor         edx,edx
 0050932A    mov         eax,dword ptr [ebp-0C]
 0050932D    call        0040CBBC
 00509332    mov         edx,dword ptr [ebp-30]
 00509335    lea         eax,[ebp-0C]
 00509338    call        @LStrLAsg
 0050933D    lea         eax,[ebp-0C]
 00509340    push        eax
 00509341    mov         eax,dword ptr [ebp-0C]
 00509344    call        @LStrLen
 00509349    mov         ecx,eax
 0050934B    sub         ecx,3
 0050934E    mov         edx,4
 00509353    mov         eax,dword ptr [ebp-0C]
 00509356    call        @LStrCopy
 0050935B    lea         edx,[ebp-38]
 0050935E    mov         eax,dword ptr [ebp-0C]
 00509361    call        0040BFEC
 00509366    mov         ecx,dword ptr [ebp-38]
 00509369    lea         eax,[ebp-34]
 0050936C    mov         edx,509578;'$'
 00509371    call        @LStrCat3
 00509376    mov         eax,dword ptr [ebp-34]
 00509379    xor         edx,edx
 0050937B    call        0040C4A8
 00509380    mov         word ptr [ebp-12],ax
 00509384    mov         eax,dword ptr [ebp-10]
 00509387    call        00423F20
 0050938C    lea         ecx,[ebp-3C]
 0050938F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509394    mov         eax,dword ptr [eax]
 00509396    mov         eax,dword ptr [eax+35C]
 0050939C    mov         eax,dword ptr [eax+7C]
 0050939F    mov         edx,dword ptr [ebp-8]
 005093A2    mov         ebx,dword ptr [eax]
 005093A4    call        dword ptr [ebx+0C]
 005093A7    mov         edx,dword ptr [ebp-3C]
 005093AA    mov         eax,dword ptr [ebp-10]
 005093AD    call        00423F8C
 005093B2    mov         ax,word ptr [ebp-12]
 005093B6    call        00508D14
 005093BB    mov         dword ptr [ebp-18],eax
 005093BE    cmp         dword ptr [ebp-18],0FFFFFFFF
>005093C2    je          0050940D
 005093C4    mov         edx,dword ptr [ebp-10]
 005093C7    mov         eax,dword ptr [ebp-18]
 005093CA    call        00508DF8
 005093CF    lea         ecx,[ebp-44]
 005093D2    movzx       eax,word ptr [ebp-12]
 005093D6    mov         edx,1
 005093DB    call        IntToHex
 005093E0    mov         ecx,dword ptr [ebp-44]
 005093E3    lea         eax,[ebp-40]
 005093E6    mov         edx,509584;'Write Module: '
 005093EB    call        @LStrCat3
 005093F0    mov         edx,dword ptr [ebp-40]
 005093F3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005093F8    mov         eax,dword ptr [eax]
 005093FA    mov         eax,dword ptr [eax+2F8]
 00509400    mov         eax,dword ptr [eax+248]
 00509406    mov         ecx,dword ptr [eax]
 00509408    call        dword ptr [ecx+38]
>0050940B    jmp         00509453
 0050940D    push        50959C;'No Module: '
 00509412    lea         ecx,[ebp-4C]
 00509415    movzx       eax,word ptr [ebp-12]
 00509419    mov         edx,1
 0050941E    call        IntToHex
 00509423    push        dword ptr [ebp-4C]
 00509426    push        5095B0;' in Map'
 0050942B    lea         eax,[ebp-48]
 0050942E    mov         edx,3
 00509433    call        @LStrCatN
 00509438    mov         edx,dword ptr [ebp-48]
 0050943B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509440    mov         eax,dword ptr [eax]
 00509442    mov         eax,dword ptr [eax+2F8]
 00509448    mov         eax,dword ptr [eax+248]
 0050944E    mov         ecx,dword ptr [eax]
 00509450    call        dword ptr [ecx+38]
 00509453    mov         eax,dword ptr [ebp-4]
 00509456    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050945C    mov         edx,dword ptr [ebp-8]
 0050945F    call        TProgressBar.SetPosition
 00509464    inc         dword ptr [ebp-8]
 00509467    mov         eax,[0056E3C0];^Application:TApplication
 0050946C    mov         eax,dword ptr [eax]
 0050946E    call        004AB51C
 00509473    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509478    mov         eax,dword ptr [eax]
 0050947A    mov         eax,dword ptr [eax+35C]
 00509480    mov         eax,dword ptr [eax+7C]
 00509483    mov         edx,dword ptr [eax]
 00509485    call        dword ptr [edx+14]
 00509488    cmp         eax,dword ptr [ebp-8]
>0050948B    jle         0050949B
 0050948D    mov         eax,[0056E5A4];^gvar_0056DF04
 00509492    cmp         byte ptr [eax],0
>00509495    je          005092FF
 0050949B    xor         eax,eax
 0050949D    pop         edx
 0050949E    pop         ecx
 0050949F    pop         ecx
 005094A0    mov         dword ptr fs:[eax],edx
 005094A3    push        5094B8
 005094A8    mov         eax,dword ptr [ebp-10]
 005094AB    call        TObject.Free
 005094B0    ret
>005094B1    jmp         @HandleFinally
>005094B6    jmp         005094A8
 005094B8    mov         eax,dword ptr [ebp-4]
 005094BB    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005094C1    call        TProgressBar.GetMin
 005094C6    mov         edx,eax
 005094C8    mov         eax,dword ptr [ebp-4]
 005094CB    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 005094D1    call        TProgressBar.SetPosition
 005094D6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005094DB    mov         eax,dword ptr [eax]
 005094DD    mov         eax,dword ptr [eax+35C]
 005094E3    mov         edx,dword ptr ds:[509558];0x40 gvar_00509558
 005094E9    not         edx
 005094EB    and         edx,dword ptr [eax+5C]
 005094EE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005094F3    mov         eax,dword ptr [eax]
 005094F5    mov         eax,dword ptr [eax+35C]
 005094FB    mov         dword ptr [eax+5C],edx
 005094FE    xor         eax,eax
 00509500    pop         edx
 00509501    pop         ecx
 00509502    pop         ecx
 00509503    mov         dword ptr fs:[eax],edx
 00509506    push        509528
 0050950B    lea         eax,[ebp-4C]
 0050950E    mov         edx,0C
 00509513    call        @LStrArrayClr
 00509518    lea         eax,[ebp-0C]
 0050951B    call        @LStrClr
 00509520    ret
>00509521    jmp         @HandleFinally
>00509526    jmp         0050950B
 00509528    pop         ebx
 00509529    mov         esp,ebp
 0050952B    pop         ebp
 0050952C    ret
*}
end;

//005095B8
{*function sub_005095B8(?:TfmFlash; ?:TMemoryStream):?;
begin
 005095B8    push        ebp
 005095B9    mov         ebp,esp
 005095BB    mov         ecx,4
 005095C0    push        0
 005095C2    push        0
 005095C4    dec         ecx
>005095C5    jne         005095C0
 005095C7    push        ecx
 005095C8    mov         dword ptr [ebp-8],edx
 005095CB    mov         word ptr [ebp-2],ax
 005095CF    xor         eax,eax
 005095D1    push        ebp
 005095D2    push        50977E
 005095D7    push        dword ptr fs:[eax]
 005095DA    mov         dword ptr fs:[eax],esp
 005095DD    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005095E3    mov         edx,dword ptr [edx]
 005095E5    lea         eax,[ebp-10]
 005095E8    mov         ecx,509794;'Modules'
 005095ED    call        @LStrCat3
 005095F2    mov         eax,dword ptr [ebp-10]
 005095F5    call        0040C9A4
 005095FA    test        al,al
>005095FC    jne         00509630
 005095FE    push        5097A4;'Cannot create '
 00509603    mov         eax,[0056E2D0];^gvar_0056DF38
 00509608    push        dword ptr [eax]
 0050960A    push        509794;'Modules'
 0050960F    lea         eax,[ebp-14]
 00509612    mov         edx,3
 00509617    call        @LStrCatN
 0050961C    mov         ecx,dword ptr [ebp-14]
 0050961F    mov         dl,1
 00509621    mov         eax,[0040B004];Exception
 00509626    call        Exception.Create;Exception.Create
 0050962B    call        @RaiseExcept
 00509630    mov         byte ptr [ebp-9],0
 00509634    mov         eax,dword ptr [ebp-8]
 00509637    call        00423F20
 0050963C    push        10
 0050963E    call        user32.GetKeyState
 00509643    test        ax,ax
>00509646    jge         00509747
 0050964C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00509652    mov         edx,dword ptr [edx]
 00509654    lea         eax,[ebp-18]
 00509657    mov         ecx,5097BC;'Modules\'
 0050965C    call        @LStrCat3
 00509661    mov         edx,dword ptr [ebp-18]
 00509664    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509669    mov         eax,dword ptr [eax]
 0050966B    mov         eax,dword ptr [eax+35C]
 00509671    call        TOpenDialog.SetInitialDir
 00509676    push        5097D0;'Module '
 0050967B    lea         ecx,[ebp-1C]
 0050967E    movzx       eax,word ptr [ebp-2]
 00509682    mov         edx,2
 00509687    call        IntToHex
 0050968C    push        dword ptr [ebp-1C]
 0050968F    push        5097E0;'|*'
 00509694    lea         ecx,[ebp-20]
 00509697    movzx       eax,word ptr [ebp-2]
 0050969B    mov         edx,2
 005096A0    call        IntToHex
 005096A5    push        dword ptr [ebp-20]
 005096A8    push        5097EC;'*.rpm|All|*.*'
 005096AD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005096B2    mov         eax,dword ptr [eax]
 005096B4    mov         eax,dword ptr [eax+35C]
 005096BA    add         eax,60
 005096BD    mov         edx,5
 005096C2    call        @LStrCatN
 005096C7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005096CC    mov         eax,dword ptr [eax]
 005096CE    mov         eax,dword ptr [eax+35C]
 005096D4    add         eax,78
 005096D7    call        @LStrClr
 005096DC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005096E1    mov         eax,dword ptr [eax]
 005096E3    mov         eax,dword ptr [eax+35C]
 005096E9    mov         edx,dword ptr [eax]
 005096EB    call        dword ptr [edx+3C]
 005096EE    test        al,al
>005096F0    je          00509716
 005096F2    lea         edx,[ebp-24]
 005096F5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005096FA    mov         eax,dword ptr [eax]
 005096FC    mov         eax,dword ptr [eax+35C]
 00509702    call        TOpenDialog.GetFileName
 00509707    mov         edx,dword ptr [ebp-24]
 0050970A    mov         eax,dword ptr [ebp-8]
 0050970D    call        00423F8C
 00509712    mov         byte ptr [ebp-9],1
 00509716    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050971B    mov         eax,dword ptr [eax]
 0050971D    mov         eax,dword ptr [eax+35C]
 00509723    add         eax,78
 00509726    call        @LStrClr
 0050972B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509730    mov         eax,dword ptr [eax]
 00509732    mov         eax,dword ptr [eax+35C]
 00509738    add         eax,60
 0050973B    mov         edx,509804;'All|*.*'
 00509740    call        @LStrAsg
>00509745    jmp         0050975B
 00509747    mov         edx,dword ptr [ebp-8]
 0050974A    mov         ax,word ptr [ebp-2]
 0050974E    call        004CF5C8
 00509753    test        al,al
>00509755    je          0050975B
 00509757    mov         byte ptr [ebp-9],1
 0050975B    xor         eax,eax
 0050975D    pop         edx
 0050975E    pop         ecx
 0050975F    pop         ecx
 00509760    mov         dword ptr fs:[eax],edx
 00509763    push        509785
 00509768    lea         eax,[ebp-24]
 0050976B    call        @LStrClr
 00509770    lea         eax,[ebp-20]
 00509773    mov         edx,5
 00509778    call        @LStrArrayClr
 0050977D    ret
>0050977E    jmp         @HandleFinally
>00509783    jmp         00509768
 00509785    mov         al,byte ptr [ebp-9]
 00509788    mov         esp,ebp
 0050978A    pop         ebp
 0050978B    ret
end;*}

//0050980C
{*function sub_0050980C(?:?; ?:TMemoryStream):?;
begin
 0050980C    push        ebp
 0050980D    mov         ebp,esp
 0050980F    mov         ecx,6
 00509814    push        0
 00509816    push        0
 00509818    dec         ecx
>00509819    jne         00509814
 0050981B    push        ecx
 0050981C    mov         dword ptr [ebp-8],edx
 0050981F    mov         word ptr [ebp-2],ax
 00509823    xor         eax,eax
 00509825    push        ebp
 00509826    push        509A54
 0050982B    push        dword ptr fs:[eax]
 0050982E    mov         dword ptr fs:[eax],esp
 00509831    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00509837    mov         edx,dword ptr [edx]
 00509839    lea         eax,[ebp-14]
 0050983C    mov         ecx,509A6C;'Modules'
 00509841    call        @LStrCat3
 00509846    mov         eax,dword ptr [ebp-14]
 00509849    call        0040C9A4
 0050984E    test        al,al
>00509850    jne         00509884
 00509852    push        509A7C;'Cannot create '
 00509857    mov         eax,[0056E2D0];^gvar_0056DF38
 0050985C    push        dword ptr [eax]
 0050985E    push        509A6C;'Modules'
 00509863    lea         eax,[ebp-18]
 00509866    mov         edx,3
 0050986B    call        @LStrCatN
 00509870    mov         ecx,dword ptr [ebp-18]
 00509873    mov         dl,1
 00509875    mov         eax,[0040B004];Exception
 0050987A    call        Exception.Create;Exception.Create
 0050987F    call        @RaiseExcept
 00509884    mov         byte ptr [ebp-9],0
 00509888    mov         dl,1
 0050988A    mov         eax,dword ptr [ebp-8]
 0050988D    call        005014D0
 00509892    push        10
 00509894    call        user32.GetKeyState
 00509899    test        ax,ax
>0050989C    jge         005099B8
 005098A2    mov         eax,[0056E040];^gvar_005720C0
 005098A7    cmp         byte ptr [eax],0
>005098AA    je          005098D9
 005098AC    push        509A94;'   '
 005098B1    lea         ecx,[ebp-1C]
 005098B4    movzx       eax,word ptr [ebp-2]
 005098B8    mov         edx,4
 005098BD    call        IntToHex
 005098C2    push        dword ptr [ebp-1C]
 005098C5    push        509AA0;'.rpm'
 005098CA    lea         eax,[ebp-10]
 005098CD    mov         edx,3
 005098D2    call        @LStrCatN
>005098D7    jmp         00509904
 005098D9    push        509A94;'   '
 005098DE    lea         ecx,[ebp-20]
 005098E1    movzx       eax,word ptr [ebp-2]
 005098E5    mov         edx,2
 005098EA    call        IntToHex
 005098EF    push        dword ptr [ebp-20]
 005098F2    push        509AA0;'.rpm'
 005098F7    lea         eax,[ebp-10]
 005098FA    mov         edx,3
 005098FF    call        @LStrCatN
 00509904    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050990A    mov         edx,dword ptr [edx]
 0050990C    lea         eax,[ebp-24]
 0050990F    mov         ecx,509AB0;'Modules\'
 00509914    call        @LStrCat3
 00509919    mov         edx,dword ptr [ebp-24]
 0050991C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509921    mov         eax,dword ptr [eax]
 00509923    mov         eax,dword ptr [eax+364]
 00509929    call        TOpenDialog.SetInitialDir
 0050992E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509933    mov         eax,dword ptr [eax]
 00509935    mov         eax,dword ptr [eax+364]
 0050993B    add         eax,78
 0050993E    mov         edx,dword ptr [ebp-10]
 00509941    call        @LStrAsg
 00509946    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050994B    mov         eax,dword ptr [eax]
 0050994D    mov         eax,dword ptr [eax+364]
 00509953    mov         edx,dword ptr [eax]
 00509955    call        dword ptr [edx+3C]
 00509958    test        al,al
>0050995A    je          0050999D
 0050995C    lea         edx,[ebp-28]
 0050995F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509964    mov         eax,dword ptr [eax]
 00509966    mov         eax,dword ptr [eax+364]
 0050996C    call        TOpenDialog.GetFileName
 00509971    cmp         dword ptr [ebp-28],0
>00509975    je          0050999D
 00509977    lea         edx,[ebp-2C]
 0050997A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050997F    mov         eax,dword ptr [eax]
 00509981    mov         eax,dword ptr [eax+364]
 00509987    call        TOpenDialog.GetFileName
 0050998C    mov         edx,dword ptr [ebp-2C]
 0050998F    mov         eax,dword ptr [ebp-8]
 00509992    call        00423E84
 00509997    mov         byte ptr [ebp-9],1
>0050999B    jmp         005099A1
 0050999D    mov         byte ptr [ebp-9],0
 005099A1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005099A6    mov         eax,dword ptr [eax]
 005099A8    mov         eax,dword ptr [eax+364]
 005099AE    add         eax,78
 005099B1    call        @LStrClr
>005099B6    jmp         00509A1F
 005099B8    push        0
 005099BA    mov         cx,word ptr ds:[509ABC];0x3 gvar_00509ABC
 005099C1    xor         edx,edx
 005099C3    mov         eax,509AC8;'Write to HDD !'+#10+Are You sure?'
 005099C8    call        0043F788
 005099CD    cmp         eax,6
>005099D0    jne         00509A1F
 005099D2    mov         edx,dword ptr [ebp-8]
 005099D5    mov         ax,word ptr [ebp-2]
 005099D9    call        004CF728
 005099DE    test        al,al
>005099E0    je          005099E8
 005099E2    mov         byte ptr [ebp-9],1
>005099E6    jmp         00509A1F
 005099E8    mov         byte ptr [ebp-9],0
 005099EC    push        509AF0;'Write Module: '
 005099F1    lea         ecx,[ebp-34]
 005099F4    movzx       eax,word ptr [ebp-2]
 005099F8    mov         edx,2
 005099FD    call        IntToHex
 00509A02    push        dword ptr [ebp-34]
 00509A05    push        509B08;' - '
 00509A0A    lea         eax,[ebp-30]
 00509A0D    mov         edx,3
 00509A12    call        @LStrCatN
 00509A17    mov         eax,dword ptr [ebp-30]
 00509A1A    call        00544F6C
 00509A1F    xor         eax,eax
 00509A21    pop         edx
 00509A22    pop         ecx
 00509A23    pop         ecx
 00509A24    mov         dword ptr fs:[eax],edx
 00509A27    push        509A5B
 00509A2C    lea         eax,[ebp-34]
 00509A2F    mov         edx,2
 00509A34    call        @LStrArrayClr
 00509A39    lea         eax,[ebp-2C]
 00509A3C    mov         edx,2
 00509A41    call        @LStrArrayClr
 00509A46    lea         eax,[ebp-24]
 00509A49    mov         edx,6
 00509A4E    call        @LStrArrayClr
 00509A53    ret
>00509A54    jmp         @HandleFinally
>00509A59    jmp         00509A2C
 00509A5B    mov         al,byte ptr [ebp-9]
 00509A5E    mov         esp,ebp
 00509A60    pop         ebp
 00509A61    ret
end;*}

//00509B0C
procedure TfmModules.cbAltUba2Click(Sender:TObject);
begin
{*
 00509B0C    push        ebp
 00509B0D    mov         ebp,esp
 00509B0F    add         esp,0FFFFFFF8
 00509B12    mov         dword ptr [ebp-8],edx
 00509B15    mov         dword ptr [ebp-4],eax
 00509B18    mov         eax,dword ptr [ebp-4]
 00509B1B    mov         eax,dword ptr [eax+3B0];TfmModules.cbAltUba2:TCheckBox
 00509B21    mov         edx,dword ptr [eax]
 00509B23    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00509B29    mov         edx,dword ptr ds:[56E4C4];^gvar_0056CC3C:Boolean
 00509B2F    mov         byte ptr [edx],al
 00509B31    pop         ecx
 00509B32    pop         ecx
 00509B33    pop         ebp
 00509B34    ret
*}
end;

//00509B38
procedure TfmModules.btGetOffsetClick(Sender:TObject);
begin
{*
 00509B38    push        ebp
 00509B39    mov         ebp,esp
 00509B3B    add         esp,0FFFFFFC8
 00509B3E    push        ebx
 00509B3F    xor         ecx,ecx
 00509B41    mov         dword ptr [ebp-34],ecx
 00509B44    mov         dword ptr [ebp-38],ecx
 00509B47    mov         dword ptr [ebp-2C],ecx
 00509B4A    mov         dword ptr [ebp-30],ecx
 00509B4D    mov         dword ptr [ebp-1C],ecx
 00509B50    mov         dword ptr [ebp-20],ecx
 00509B53    mov         dword ptr [ebp-18],ecx
 00509B56    mov         dword ptr [ebp-14],edx
 00509B59    mov         dword ptr [ebp-4],eax
 00509B5C    xor         eax,eax
 00509B5E    push        ebp
 00509B5F    push        509DD1
 00509B64    push        dword ptr fs:[eax]
 00509B67    mov         dword ptr fs:[eax],esp
 00509B6A    mov         eax,dword ptr [ebp-4]
 00509B6D    mov         eax,dword ptr [eax+3B8];TfmModules.btGetOffset:TButton
 00509B73    xor         edx,edx
 00509B75    mov         ecx,dword ptr [eax]
 00509B77    call        dword ptr [ecx+64];TImage.SetEnabled
 00509B7A    push        10
 00509B7C    call        user32.GetKeyState
 00509B81    test        ax,ax
>00509B84    jge         00509D51
 00509B8A    lea         edx,[ebp-18]
 00509B8D    mov         eax,dword ptr [ebp-4]
 00509B90    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00509B96    call        TPanel.GetCaption
 00509B9B    mov         eax,dword ptr [ebp-18]
 00509B9E    mov         edx,10000
 00509BA3    call        0040C4A8
 00509BA8    cmp         eax,10000
>00509BAD    jne         00509D3C
 00509BB3    mov         dl,1
 00509BB5    mov         eax,[0041DE14];TMemoryStream
 00509BBA    call        TObject.Create;TMemoryStream.Create
 00509BBF    mov         dword ptr [ebp-8],eax
 00509BC2    xor         eax,eax
 00509BC4    push        ebp
 00509BC5    push        509D35
 00509BCA    push        dword ptr fs:[eax]
 00509BCD    mov         dword ptr fs:[eax],esp
 00509BD0    mov         eax,[0056E040];^gvar_005720C0
 00509BD5    cmp         byte ptr [eax],0
>00509BD8    jne         00509BFE
 00509BDA    mov         eax,[0056E304];^gvar_0056DF54
 00509BDF    cmp         word ptr [eax],65
>00509BE3    je          00509BFE
 00509BE5    mov         eax,[0056E304];^gvar_0056DF54
 00509BEA    cmp         word ptr [eax],73
>00509BEE    je          00509BFE
 00509BF0    mov         eax,[0056E01C];^gvar_005720C1
 00509BF5    cmp         byte ptr [eax],0
>00509BF8    je          00509C93
 00509BFE    mov         ecx,dword ptr [ebp-8]
 00509C01    xor         edx,edx
 00509C03    mov         ax,0D
 00509C07    call        004CFEC8
 00509C0C    test        al,al
>00509C0E    je          00509D1F
 00509C14    xor         ecx,ecx
 00509C16    mov         edx,32
 00509C1B    mov         eax,dword ptr [ebp-8]
 00509C1E    mov         ebx,dword ptr [eax]
 00509C20    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00509C23    mov         eax,dword ptr [ebp-8]
 00509C26    call        004CE56C
 00509C2B    not         eax
 00509C2D    inc         eax
 00509C2E    mov         dword ptr [ebp-0C],eax
 00509C31    xor         ecx,ecx
 00509C33    mov         edx,42
 00509C38    mov         eax,dword ptr [ebp-8]
 00509C3B    mov         ebx,dword ptr [eax]
 00509C3D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00509C40    mov         eax,dword ptr [ebp-8]
 00509C43    call        004CE548
 00509C48    mov         word ptr [ebp-0E],ax
 00509C4C    lea         eax,[ebp-20]
 00509C4F    push        eax
 00509C50    movzx       eax,word ptr [ebp-0E]
 00509C54    imul        dword ptr [ebp-0C]
 00509C57    mov         dword ptr [ebp-28],eax
 00509C5A    mov         byte ptr [ebp-24],0
 00509C5E    lea         edx,[ebp-28]
 00509C61    xor         ecx,ecx
 00509C63    mov         eax,509DE8;'%x'
 00509C68    call        0040D630
 00509C6D    mov         ecx,dword ptr [ebp-20]
 00509C70    lea         eax,[ebp-1C]
 00509C73    mov         edx,509DF4;'$'
 00509C78    call        @LStrCat3
 00509C7D    mov         edx,dword ptr [ebp-1C]
 00509C80    mov         eax,dword ptr [ebp-4]
 00509C83    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00509C89    call        TPanel.SetCaption
>00509C8E    jmp         00509D1F
 00509C93    mov         ecx,dword ptr [ebp-8]
 00509C96    xor         edx,edx
 00509C98    mov         ax,5
 00509C9C    call        004CFEC8
 00509CA1    test        al,al
>00509CA3    je          00509D1F
 00509CA5    xor         ecx,ecx
 00509CA7    mov         edx,14
 00509CAC    mov         eax,dword ptr [ebp-8]
 00509CAF    mov         ebx,dword ptr [eax]
 00509CB1    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00509CB4    mov         eax,dword ptr [ebp-8]
 00509CB7    call        004CE56C
 00509CBC    not         eax
 00509CBE    inc         eax
 00509CBF    mov         dword ptr [ebp-0C],eax
 00509CC2    xor         ecx,ecx
 00509CC4    mov         edx,28
 00509CC9    mov         eax,dword ptr [ebp-8]
 00509CCC    mov         ebx,dword ptr [eax]
 00509CCE    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00509CD1    mov         eax,dword ptr [ebp-8]
 00509CD4    call        004CE548
 00509CD9    mov         word ptr [ebp-0E],ax
 00509CDD    lea         eax,[ebp-30]
 00509CE0    push        eax
 00509CE1    movzx       eax,word ptr [ebp-0E]
 00509CE5    imul        dword ptr [ebp-0C]
 00509CE8    mov         dword ptr [ebp-28],eax
 00509CEB    mov         byte ptr [ebp-24],0
 00509CEF    lea         edx,[ebp-28]
 00509CF2    xor         ecx,ecx
 00509CF4    mov         eax,509DE8;'%x'
 00509CF9    call        0040D630
 00509CFE    mov         ecx,dword ptr [ebp-30]
 00509D01    lea         eax,[ebp-2C]
 00509D04    mov         edx,509DF4;'$'
 00509D09    call        @LStrCat3
 00509D0E    mov         edx,dword ptr [ebp-2C]
 00509D11    mov         eax,dword ptr [ebp-4]
 00509D14    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00509D1A    call        TPanel.SetCaption
 00509D1F    xor         eax,eax
 00509D21    pop         edx
 00509D22    pop         ecx
 00509D23    pop         ecx
 00509D24    mov         dword ptr fs:[eax],edx
 00509D27    push        509D91
 00509D2C    mov         eax,dword ptr [ebp-8]
 00509D2F    call        TObject.Free
 00509D34    ret
>00509D35    jmp         @HandleFinally
>00509D3A    jmp         00509D2C
 00509D3C    mov         eax,dword ptr [ebp-4]
 00509D3F    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00509D45    mov         edx,509E00;'$10000'
 00509D4A    call        TPanel.SetCaption
>00509D4F    jmp         00509D91
 00509D51    lea         eax,[ebp-38]
 00509D54    push        eax
 00509D55    call        004FEC80
 00509D5A    mov         dword ptr [ebp-28],eax
 00509D5D    mov         byte ptr [ebp-24],0
 00509D61    lea         edx,[ebp-28]
 00509D64    xor         ecx,ecx
 00509D66    mov         eax,509DE8;'%x'
 00509D6B    call        0040D630
 00509D70    mov         ecx,dword ptr [ebp-38]
 00509D73    lea         eax,[ebp-34]
 00509D76    mov         edx,509DF4;'$'
 00509D7B    call        @LStrCat3
 00509D80    mov         edx,dword ptr [ebp-34]
 00509D83    mov         eax,dword ptr [ebp-4]
 00509D86    mov         eax,dword ptr [eax+3B4];TfmModules.edOffset:TEdit
 00509D8C    call        TPanel.SetCaption
 00509D91    mov         eax,dword ptr [ebp-4]
 00509D94    mov         eax,dword ptr [eax+3B8];TfmModules.btGetOffset:TButton
 00509D9A    mov         dl,1
 00509D9C    mov         ecx,dword ptr [eax]
 00509D9E    call        dword ptr [ecx+64];TImage.SetEnabled
 00509DA1    xor         eax,eax
 00509DA3    pop         edx
 00509DA4    pop         ecx
 00509DA5    pop         ecx
 00509DA6    mov         dword ptr fs:[eax],edx
 00509DA9    push        509DD8
 00509DAE    lea         eax,[ebp-38]
 00509DB1    mov         edx,4
 00509DB6    call        @LStrArrayClr
 00509DBB    lea         eax,[ebp-20]
 00509DBE    mov         edx,2
 00509DC3    call        @LStrArrayClr
 00509DC8    lea         eax,[ebp-18]
 00509DCB    call        @LStrClr
 00509DD0    ret
>00509DD1    jmp         @HandleFinally
>00509DD6    jmp         00509DAE
 00509DD8    pop         ebx
 00509DD9    mov         esp,ebp
 00509DDB    pop         ebp
 00509DDC    ret
*}
end;

//00509E08
{*function sub_00509E08(?:?; ?:?; ?:TMemoryStream):?;
begin
 00509E08    push        ebp
 00509E09    mov         ebp,esp
 00509E0B    push        ecx
 00509E0C    mov         ecx,4
 00509E11    push        0
 00509E13    push        0
 00509E15    dec         ecx
>00509E16    jne         00509E11
 00509E18    xchg        ecx,dword ptr [ebp-4]
 00509E1B    push        ebx
 00509E1C    mov         dword ptr [ebp-8],ecx
 00509E1F    mov         word ptr [ebp-4],dx
 00509E23    mov         word ptr [ebp-2],ax
 00509E27    xor         eax,eax
 00509E29    push        ebp
 00509E2A    push        509FDA
 00509E2F    push        dword ptr fs:[eax]
 00509E32    mov         dword ptr fs:[eax],esp
 00509E35    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00509E3B    mov         edx,dword ptr [edx]
 00509E3D    lea         eax,[ebp-10]
 00509E40    mov         ecx,509FF4;'CPs'
 00509E45    call        @LStrCat3
 00509E4A    mov         eax,dword ptr [ebp-10]
 00509E4D    call        0040C9A4
 00509E52    test        al,al
>00509E54    jne         00509E88
 00509E56    push        50A000;'Cannot create '
 00509E5B    mov         eax,[0056E2D0];^gvar_0056DF38
 00509E60    push        dword ptr [eax]
 00509E62    push        509FF4;'CPs'
 00509E67    lea         eax,[ebp-14]
 00509E6A    mov         edx,3
 00509E6F    call        @LStrCatN
 00509E74    mov         ecx,dword ptr [ebp-14]
 00509E77    mov         dl,1
 00509E79    mov         eax,[0040B004];Exception
 00509E7E    call        Exception.Create;Exception.Create
 00509E83    call        @RaiseExcept
 00509E88    mov         byte ptr [ebp-9],0
 00509E8C    mov         eax,dword ptr [ebp-8]
 00509E8F    call        00423F20
 00509E94    push        10
 00509E96    call        user32.GetKeyState
 00509E9B    test        ax,ax
>00509E9E    jge         00509F9F
 00509EA4    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00509EAA    mov         edx,dword ptr [edx]
 00509EAC    lea         eax,[ebp-18]
 00509EAF    mov         ecx,50A018;'CPs\'
 00509EB4    call        @LStrCat3
 00509EB9    mov         edx,dword ptr [ebp-18]
 00509EBC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509EC1    mov         eax,dword ptr [eax]
 00509EC3    mov         eax,dword ptr [eax+35C]
 00509EC9    call        TOpenDialog.SetInitialDir
 00509ECE    push        50A028;'CP'
 00509ED3    lea         ecx,[ebp-1C]
 00509ED6    movzx       eax,word ptr [ebp-2]
 00509EDA    mov         edx,2
 00509EDF    call        IntToHex
 00509EE4    push        dword ptr [ebp-1C]
 00509EE7    push        50A034;'|*'
 00509EEC    lea         ecx,[ebp-20]
 00509EEF    movzx       eax,word ptr [ebp-2]
 00509EF3    mov         edx,2
 00509EF8    call        IntToHex
 00509EFD    push        dword ptr [ebp-20]
 00509F00    push        50A040;'*.bin|All|*.*'
 00509F05    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F0A    mov         eax,dword ptr [eax]
 00509F0C    mov         eax,dword ptr [eax+35C]
 00509F12    add         eax,60
 00509F15    mov         edx,5
 00509F1A    call        @LStrCatN
 00509F1F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F24    mov         eax,dword ptr [eax]
 00509F26    mov         eax,dword ptr [eax+35C]
 00509F2C    add         eax,78
 00509F2F    call        @LStrClr
 00509F34    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F39    mov         eax,dword ptr [eax]
 00509F3B    mov         eax,dword ptr [eax+35C]
 00509F41    mov         edx,dword ptr [eax]
 00509F43    call        dword ptr [edx+3C]
 00509F46    test        al,al
>00509F48    je          00509F6E
 00509F4A    lea         edx,[ebp-24]
 00509F4D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F52    mov         eax,dword ptr [eax]
 00509F54    mov         eax,dword ptr [eax+35C]
 00509F5A    call        TOpenDialog.GetFileName
 00509F5F    mov         edx,dword ptr [ebp-24]
 00509F62    mov         eax,dword ptr [ebp-8]
 00509F65    call        00423F8C
 00509F6A    mov         byte ptr [ebp-9],1
 00509F6E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F73    mov         eax,dword ptr [eax]
 00509F75    mov         eax,dword ptr [eax+35C]
 00509F7B    add         eax,60
 00509F7E    mov         edx,50A058;'All|*.*'
 00509F83    call        @LStrAsg
 00509F88    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00509F8D    mov         eax,dword ptr [eax]
 00509F8F    mov         eax,dword ptr [eax+35C]
 00509F95    add         eax,78
 00509F98    call        @LStrClr
>00509F9D    jmp         00509FB7
 00509F9F    mov         ecx,dword ptr [ebp-8]
 00509FA2    mov         dx,word ptr [ebp-4]
 00509FA6    mov         ax,word ptr [ebp-2]
 00509FAA    call        004CFEC8
 00509FAF    test        al,al
>00509FB1    je          00509FB7
 00509FB3    mov         byte ptr [ebp-9],1
 00509FB7    xor         eax,eax
 00509FB9    pop         edx
 00509FBA    pop         ecx
 00509FBB    pop         ecx
 00509FBC    mov         dword ptr fs:[eax],edx
 00509FBF    push        509FE1
 00509FC4    lea         eax,[ebp-24]
 00509FC7    call        @LStrClr
 00509FCC    lea         eax,[ebp-20]
 00509FCF    mov         edx,5
 00509FD4    call        @LStrArrayClr
 00509FD9    ret
>00509FDA    jmp         @HandleFinally
>00509FDF    jmp         00509FC4
 00509FE1    mov         al,byte ptr [ebp-9]
 00509FE4    pop         ebx
 00509FE5    mov         esp,ebp
 00509FE7    pop         ebp
 00509FE8    ret
end;*}

//0050A060
{*procedure sub_0050A060(?:?; ?:?);
begin
 0050A060    push        ebp
 0050A061    mov         ebp,esp
 0050A063    add         esp,0FFFFFFF0
 0050A066    mov         dword ptr [ebp-8],edx
 0050A069    mov         byte ptr [ebp-1],al
 0050A06C    xor         eax,eax
 0050A06E    mov         al,byte ptr [ebp-1]
 0050A071    cmp         eax,7
>0050A074    ja          0050A11C
 0050A07A    jmp         dword ptr [eax*4+50A081]
 0050A07A    dd          0050A0A1
 0050A07A    dd          0050A0B3
 0050A07A    dd          0050A0C2
 0050A07A    dd          0050A0D1
 0050A07A    dd          0050A0E0
 0050A07A    dd          0050A0EF
 0050A07A    dd          0050A0FE
 0050A07A    dd          0050A10D
 0050A0A1    mov         eax,dword ptr [ebp-8]
 0050A0A4    mov         edx,50A148;'Good'
 0050A0A9    call        @LStrAsg
>0050A0AE    jmp         0050A13B
 0050A0B3    mov         eax,dword ptr [ebp-8]
 0050A0B6    mov         edx,50A158;'Invalid Header'
 0050A0BB    call        @LStrAsg
>0050A0C0    jmp         0050A13B
 0050A0C2    mov         eax,dword ptr [ebp-8]
 0050A0C5    mov         edx,50A170;'Error Data Reading File'
 0050A0CA    call        @LStrAsg
>0050A0CF    jmp         0050A13B
 0050A0D1    mov         eax,dword ptr [ebp-8]
 0050A0D4    mov         edx,50A190;'Servo Error Reading File'
 0050A0D9    call        @LStrAsg
>0050A0DE    jmp         0050A13B
 0050A0E0    mov         eax,dword ptr [ebp-8]
 0050A0E3    mov         edx,50A1B4;'InCompatible file'
 0050A0E8    call        @LStrAsg
>0050A0ED    jmp         0050A13B
 0050A0EF    mov         eax,dword ptr [ebp-8]
 0050A0F2    mov         edx,50A1D0;'Checksums Different'
 0050A0F7    call        @LStrAsg
>0050A0FC    jmp         0050A13B
 0050A0FE    mov         eax,dword ptr [ebp-8]
 0050A101    mov         edx,50A1EC;'Checksum Error'
 0050A106    call        @LStrAsg
>0050A10B    jmp         0050A13B
 0050A10D    mov         eax,dword ptr [ebp-8]
 0050A110    mov         edx,50A204;'Error Request Condition File'
 0050A115    call        @LStrAsg
>0050A11A    jmp         0050A13B
 0050A11C    mov         eax,dword ptr [ebp-8]
 0050A11F    push        eax
 0050A120    xor         eax,eax
 0050A122    mov         al,byte ptr [ebp-1]
 0050A125    mov         dword ptr [ebp-10],eax
 0050A128    mov         byte ptr [ebp-0C],0
 0050A12C    lea         edx,[ebp-10]
 0050A12F    xor         ecx,ecx
 0050A131    mov         eax,50A22C;'Unknown Error %02x'
 0050A136    call        0040D630
 0050A13B    mov         esp,ebp
 0050A13D    pop         ebp
 0050A13E    ret
end;*}

//0050A240
{*procedure TfmModules.CheckAllbyIDII1Click(?:?);
begin
 0050A240    push        ebp
 0050A241    mov         ebp,esp
 0050A243    mov         ecx,4
 0050A248    push        0
 0050A24A    push        0
 0050A24C    dec         ecx
>0050A24D    jne         0050A248
 0050A24F    push        ecx
 0050A250    mov         dword ptr [ebp-10],edx
 0050A253    mov         dword ptr [ebp-4],eax
 0050A256    xor         eax,eax
 0050A258    push        ebp
 0050A259    push        50A460
 0050A25E    push        dword ptr fs:[eax]
 0050A261    mov         dword ptr fs:[eax],esp
 0050A264    mov         eax,[0056D408];0x0 gvar_0056D408
 0050A269    mov         dword ptr [ebp-0C],eax
 0050A26C    mov         eax,[0056E5A4];^gvar_0056DF04
 0050A271    mov         byte ptr [eax],0
 0050A274    xor         edx,edx
 0050A276    mov         eax,dword ptr [ebp-4]
 0050A279    call        TfmModules.miRoadMapClearClick
 0050A27E    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050A285    jle         0050A445
 0050A28B    xor         eax,eax
 0050A28D    mov         dword ptr [ebp-8],eax
 0050A290    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A295    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A29B    xor         edx,edx
 0050A29D    call        TProgressBar.SetMin
 0050A2A2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A2A7    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A2AD    mov         edx,dword ptr [ebp-0C]
 0050A2B0    call        TProgressBar.SetMax
 0050A2B5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A2BA    mov         eax,dword ptr [eax]
 0050A2BC    mov         eax,dword ptr [eax+2F8]
 0050A2C2    mov         eax,dword ptr [eax+248]
 0050A2C8    xor         edx,edx
 0050A2CA    mov         ecx,dword ptr [eax]
 0050A2CC    call        dword ptr [ecx+38]
>0050A2CF    jmp         0050A40D
 0050A2D4    mov         eax,dword ptr [ebp-8]
 0050A2D7    add         eax,eax
 0050A2D9    mov         ax,word ptr [eax*8+57266C]
 0050A2E1    call        004CF954
 0050A2E6    mov         eax,dword ptr [ebp-4]
 0050A2E9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A2EF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A2F5    mov         edx,dword ptr [ebp-8]
 0050A2F8    call        0045AF80
 0050A2FD    xor         edx,edx
 0050A2FF    call        0045A63C
 0050A304    mov         eax,[0056E270];^gvar_00571EC0
 0050A309    cmp         word ptr [eax+18],0
>0050A30E    jne         0050A338
 0050A310    mov         eax,dword ptr [ebp-4]
 0050A313    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A319    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A31F    mov         edx,dword ptr [ebp-8]
 0050A322    call        0045AF80
 0050A327    mov         ecx,1
 0050A32C    xor         edx,edx
 0050A32E    call        0045A98C
>0050A333    jmp         0050A3F7
 0050A338    mov         eax,dword ptr [ebp-4]
 0050A33B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A341    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A347    mov         edx,dword ptr [ebp-8]
 0050A34A    call        0045AF80
 0050A34F    mov         ecx,2
 0050A354    xor         edx,edx
 0050A356    call        0045A98C
 0050A35B    lea         ecx,[ebp-18]
 0050A35E    mov         eax,dword ptr [ebp-8]
 0050A361    add         eax,eax
 0050A363    movzx       eax,word ptr [eax*8+57266C]
 0050A36B    mov         edx,4
 0050A370    call        IntToHex
 0050A375    push        dword ptr [ebp-18]
 0050A378    push        50A474;' Copy 0 - '
 0050A37D    lea         edx,[ebp-1C]
 0050A380    mov         eax,[0056E270];^gvar_00571EC0
 0050A385    mov         al,byte ptr [eax+18]
 0050A388    call        0050A060
 0050A38D    push        dword ptr [ebp-1C]
 0050A390    lea         eax,[ebp-14]
 0050A393    mov         edx,3
 0050A398    call        @LStrCatN
 0050A39D    mov         edx,dword ptr [ebp-14]
 0050A3A0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A3A5    mov         eax,dword ptr [eax]
 0050A3A7    mov         eax,dword ptr [eax+2F8]
 0050A3AD    mov         eax,dword ptr [eax+248]
 0050A3B3    mov         ecx,dword ptr [eax]
 0050A3B5    call        dword ptr [ecx+38]
 0050A3B8    mov         eax,[0056E270];^gvar_00571EC0
 0050A3BD    movzx       eax,word ptr [eax+18]
 0050A3C1    shr         eax,8
 0050A3C4    lea         edx,[ebp-24]
 0050A3C7    call        0050A060
 0050A3CC    mov         ecx,dword ptr [ebp-24]
 0050A3CF    lea         eax,[ebp-20]
 0050A3D2    mov         edx,50A488;'     Copy 1 - '
 0050A3D7    call        @LStrCat3
 0050A3DC    mov         edx,dword ptr [ebp-20]
 0050A3DF    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A3E4    mov         eax,dword ptr [eax]
 0050A3E6    mov         eax,dword ptr [eax+2F8]
 0050A3EC    mov         eax,dword ptr [eax+248]
 0050A3F2    mov         ecx,dword ptr [eax]
 0050A3F4    call        dword ptr [ecx+38]
 0050A3F7    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A3FC    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A402    mov         edx,dword ptr [ebp-8]
 0050A405    call        TProgressBar.SetPosition
 0050A40A    inc         dword ptr [ebp-8]
 0050A40D    mov         eax,dword ptr [ebp-8]
 0050A410    cmp         eax,dword ptr [ebp-0C]
>0050A413    jge         0050A423
 0050A415    mov         eax,[0056E5A4];^gvar_0056DF04
 0050A41A    cmp         byte ptr [eax],0
>0050A41D    je          0050A2D4
 0050A423    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A428    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A42E    call        TProgressBar.GetMin
 0050A433    mov         edx,eax
 0050A435    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A43A    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A440    call        TProgressBar.SetPosition
 0050A445    xor         eax,eax
 0050A447    pop         edx
 0050A448    pop         ecx
 0050A449    pop         ecx
 0050A44A    mov         dword ptr fs:[eax],edx
 0050A44D    push        50A467
 0050A452    lea         eax,[ebp-24]
 0050A455    mov         edx,5
 0050A45A    call        @LStrArrayClr
 0050A45F    ret
>0050A460    jmp         @HandleFinally
>0050A465    jmp         0050A452
 0050A467    mov         esp,ebp
 0050A469    pop         ebp
 0050A46A    ret
end;*}

//0050A498
procedure TfmModules.btDeleteClick(Sender:TObject);
begin
{*
 0050A498    push        ebp
 0050A499    mov         ebp,esp
 0050A49B    mov         ecx,5
 0050A4A0    push        0
 0050A4A2    push        0
 0050A4A4    dec         ecx
>0050A4A5    jne         0050A4A0
 0050A4A7    push        ecx
 0050A4A8    mov         dword ptr [ebp-0C],edx
 0050A4AB    mov         dword ptr [ebp-4],eax
 0050A4AE    xor         eax,eax
 0050A4B0    push        ebp
 0050A4B1    push        50A5B7
 0050A4B6    push        dword ptr fs:[eax]
 0050A4B9    mov         dword ptr fs:[eax],esp
 0050A4BC    lea         edx,[ebp-10]
 0050A4BF    mov         eax,dword ptr [ebp-4]
 0050A4C2    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 0050A4C8    call        TPanel.GetCaption
 0050A4CD    mov         eax,dword ptr [ebp-10]
 0050A4D0    xor         edx,edx
 0050A4D2    call        0040C4A8
 0050A4D7    mov         word ptr [ebp-6],ax
 0050A4DB    push        0
 0050A4DD    lea         eax,[ebp-14]
 0050A4E0    push        eax
 0050A4E1    lea         edx,[ebp-20]
 0050A4E4    mov         eax,dword ptr [ebp-4]
 0050A4E7    mov         eax,dword ptr [eax+3CC];TfmModules.edModulId:TLabeledEdit
 0050A4ED    call        TPanel.GetCaption
 0050A4F2    mov         eax,dword ptr [ebp-20]
 0050A4F5    mov         dword ptr [ebp-1C],eax
 0050A4F8    mov         byte ptr [ebp-18],0B
 0050A4FC    lea         edx,[ebp-1C]
 0050A4FF    xor         ecx,ecx
 0050A501    mov         eax,50A5CC;'Delete Module %s!'+#10+Are You sure?'
 0050A506    call        0040D630
 0050A50B    mov         eax,dword ptr [ebp-14]
 0050A50E    mov         cx,word ptr ds:[50A5EC];0x3 gvar_0050A5EC
 0050A515    xor         edx,edx
 0050A517    call        0043F788
 0050A51C    cmp         eax,6
>0050A51F    jne         0050A584
 0050A521    mov         ax,word ptr [ebp-6]
 0050A525    call        004CFB3C
 0050A52A    call        004CEB6C
 0050A52F    lea         ecx,[ebp-28]
 0050A532    movzx       eax,word ptr [ebp-6]
 0050A536    mov         edx,2
 0050A53B    call        IntToHex
 0050A540    push        dword ptr [ebp-28]
 0050A543    push        50A5F8;' - '
 0050A548    lea         edx,[ebp-2C]
 0050A54B    mov         eax,[0056E270];^gvar_00571EC0
 0050A550    mov         ax,word ptr [eax+18]
 0050A554    call        004CCABC
 0050A559    push        dword ptr [ebp-2C]
 0050A55C    lea         eax,[ebp-24]
 0050A55F    mov         edx,3
 0050A564    call        @LStrCatN
 0050A569    mov         edx,dword ptr [ebp-24]
 0050A56C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A571    mov         eax,dword ptr [eax]
 0050A573    mov         eax,dword ptr [eax+2F8]
 0050A579    mov         eax,dword ptr [eax+248]
 0050A57F    mov         ecx,dword ptr [eax]
 0050A581    call        dword ptr [ecx+38]
 0050A584    xor         eax,eax
 0050A586    pop         edx
 0050A587    pop         ecx
 0050A588    pop         ecx
 0050A589    mov         dword ptr fs:[eax],edx
 0050A58C    push        50A5BE
 0050A591    lea         eax,[ebp-2C]
 0050A594    mov         edx,3
 0050A599    call        @LStrArrayClr
 0050A59E    lea         eax,[ebp-20]
 0050A5A1    call        @LStrClr
 0050A5A6    lea         eax,[ebp-14]
 0050A5A9    call        @LStrClr
 0050A5AE    lea         eax,[ebp-10]
 0050A5B1    call        @LStrClr
 0050A5B6    ret
>0050A5B7    jmp         @HandleFinally
>0050A5BC    jmp         0050A591
 0050A5BE    mov         esp,ebp
 0050A5C0    pop         ebp
 0050A5C1    ret
*}
end;

//0050A5FC
{*procedure TfmModules.miDeleteModuleClick(?:?);
begin
 0050A5FC    push        ebp
 0050A5FD    mov         ebp,esp
 0050A5FF    xor         ecx,ecx
 0050A601    push        ecx
 0050A602    push        ecx
 0050A603    push        ecx
 0050A604    push        ecx
 0050A605    push        ecx
 0050A606    mov         dword ptr [ebp-8],edx
 0050A609    mov         dword ptr [ebp-4],eax
 0050A60C    xor         eax,eax
 0050A60E    push        ebp
 0050A60F    push        50A7CB
 0050A614    push        dword ptr fs:[eax]
 0050A617    mov         dword ptr fs:[eax],esp
 0050A61A    mov         eax,[0056E5A4];^gvar_0056DF04
 0050A61F    mov         byte ptr [eax],0
 0050A622    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050A629    jle         0050A7B0
 0050A62F    mov         eax,dword ptr [ebp-4]
 0050A632    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A638    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A63E    call        0045AF28
 0050A643    test        eax,eax
>0050A645    jle         0050A7B0
 0050A64B    push        0
 0050A64D    mov         cx,word ptr ds:[50A7D8];0x3 gvar_0050A7D8
 0050A654    xor         edx,edx
 0050A656    mov         eax,50A7E4;'Delete Module !'+#10+Are You sure?'
 0050A65B    call        0043F788
 0050A660    cmp         eax,6
>0050A663    jne         0050A7B0
 0050A669    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A66E    mov         eax,dword ptr [eax]
 0050A670    mov         eax,dword ptr [eax+2F8]
 0050A676    mov         eax,dword ptr [eax+248]
 0050A67C    xor         edx,edx
 0050A67E    mov         ecx,dword ptr [eax]
 0050A680    call        dword ptr [ecx+38]
 0050A683    mov         eax,dword ptr [ebp-4]
 0050A686    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A68C    mov         edx,dword ptr [eax]
 0050A68E    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050A694    mov         edx,eax
 0050A696    mov         eax,dword ptr [ebp-4]
 0050A699    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A69F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A6A5    call        0045AF80
 0050A6AA    mov         ecx,dword ptr [eax+24]
 0050A6AD    lea         eax,[ebp-0C]
 0050A6B0    mov         edx,50A80C;'$'
 0050A6B5    call        @LStrCat3
 0050A6BA    mov         eax,dword ptr [ebp-0C]
 0050A6BD    xor         edx,edx
 0050A6BF    call        0040C4A8
 0050A6C4    call        004CFB3C
 0050A6C9    call        004CEB6C
 0050A6CE    mov         eax,[0056E270];^gvar_00571EC0
 0050A6D3    cmp         word ptr [eax+18],0
>0050A6D8    jne         0050A712
 0050A6DA    mov         eax,dword ptr [ebp-4]
 0050A6DD    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A6E3    mov         edx,dword ptr [eax]
 0050A6E5    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050A6EB    mov         edx,eax
 0050A6ED    mov         eax,dword ptr [ebp-4]
 0050A6F0    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A6F6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A6FC    call        0045AF80
 0050A701    mov         ecx,1
 0050A706    xor         edx,edx
 0050A708    call        0045A98C
>0050A70D    jmp         0050A7B0
 0050A712    mov         eax,dword ptr [ebp-4]
 0050A715    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A71B    mov         edx,dword ptr [eax]
 0050A71D    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050A723    mov         edx,eax
 0050A725    mov         eax,dword ptr [ebp-4]
 0050A728    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A72E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A734    call        0045AF80
 0050A739    mov         ecx,2
 0050A73E    xor         edx,edx
 0050A740    call        0045A98C
 0050A745    mov         eax,dword ptr [ebp-4]
 0050A748    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A74E    mov         edx,dword ptr [eax]
 0050A750    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050A756    mov         edx,eax
 0050A758    mov         eax,dword ptr [ebp-4]
 0050A75B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A761    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A767    call        0045AF80
 0050A76C    push        dword ptr [eax+24]
 0050A76F    push        50A818;' - '
 0050A774    lea         edx,[ebp-14]
 0050A777    mov         eax,[0056E270];^gvar_00571EC0
 0050A77C    mov         ax,word ptr [eax+18]
 0050A780    call        004CCABC
 0050A785    push        dword ptr [ebp-14]
 0050A788    lea         eax,[ebp-10]
 0050A78B    mov         edx,3
 0050A790    call        @LStrCatN
 0050A795    mov         edx,dword ptr [ebp-10]
 0050A798    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A79D    mov         eax,dword ptr [eax]
 0050A79F    mov         eax,dword ptr [eax+2F8]
 0050A7A5    mov         eax,dword ptr [eax+248]
 0050A7AB    mov         ecx,dword ptr [eax]
 0050A7AD    call        dword ptr [ecx+38]
 0050A7B0    xor         eax,eax
 0050A7B2    pop         edx
 0050A7B3    pop         ecx
 0050A7B4    pop         ecx
 0050A7B5    mov         dword ptr fs:[eax],edx
 0050A7B8    push        50A7D2
 0050A7BD    lea         eax,[ebp-14]
 0050A7C0    mov         edx,3
 0050A7C5    call        @LStrArrayClr
 0050A7CA    ret
>0050A7CB    jmp         @HandleFinally
>0050A7D0    jmp         0050A7BD
 0050A7D2    mov         esp,ebp
 0050A7D4    pop         ebp
 0050A7D5    ret
end;*}

//0050A81C
{*procedure TfmModules.miDeleteSelectedClick(?:?);
begin
 0050A81C    push        ebp
 0050A81D    mov         ebp,esp
 0050A81F    add         esp,0FFFFFFE8
 0050A822    xor         ecx,ecx
 0050A824    mov         dword ptr [ebp-14],ecx
 0050A827    mov         dword ptr [ebp-18],ecx
 0050A82A    mov         dword ptr [ebp-10],ecx
 0050A82D    mov         dword ptr [ebp-0C],edx
 0050A830    mov         dword ptr [ebp-4],eax
 0050A833    xor         eax,eax
 0050A835    push        ebp
 0050A836    push        50AAEA
 0050A83B    push        dword ptr fs:[eax]
 0050A83E    mov         dword ptr fs:[eax],esp
 0050A841    mov         eax,[0056E5A4];^gvar_0056DF04
 0050A846    mov         byte ptr [eax],0
 0050A849    xor         edx,edx
 0050A84B    mov         eax,dword ptr [ebp-4]
 0050A84E    call        TfmModules.miRoadMapClearClick
 0050A853    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050A85A    jle         0050AACF
 0050A860    mov         eax,dword ptr [ebp-4]
 0050A863    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A869    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A86F    call        0045AF28
 0050A874    test        eax,eax
>0050A876    jle         0050AACF
 0050A87C    push        0
 0050A87E    mov         cx,word ptr ds:[50AAF8];0x3 gvar_0050AAF8
 0050A885    xor         edx,edx
 0050A887    mov         eax,50AB04;'Delete Modules !'+#10+Are You sure?'
 0050A88C    call        0043F788
 0050A891    cmp         eax,6
>0050A894    jne         0050AAAD
 0050A89A    mov         word ptr [ebp-6],0
 0050A8A0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050A8A5    mov         eax,dword ptr [eax]
 0050A8A7    mov         eax,dword ptr [eax+2F8]
 0050A8AD    mov         eax,dword ptr [eax+248]
 0050A8B3    xor         edx,edx
 0050A8B5    mov         ecx,dword ptr [eax]
 0050A8B7    call        dword ptr [ecx+38]
 0050A8BA    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A8BF    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A8C5    xor         edx,edx
 0050A8C7    call        TProgressBar.SetMin
 0050A8CC    mov         eax,dword ptr [ebp-4]
 0050A8CF    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A8D5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A8DB    call        0045AF28
 0050A8E0    mov         edx,eax
 0050A8E2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A8E7    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A8ED    call        TProgressBar.SetMax
 0050A8F2    movzx       edx,word ptr [ebp-6]
 0050A8F6    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050A8FB    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050A901    call        TProgressBar.SetMin
>0050A906    jmp         0050AA83
 0050A90B    movzx       edx,word ptr [ebp-6]
 0050A90F    mov         eax,dword ptr [ebp-4]
 0050A912    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A918    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A91E    call        0045AF80
 0050A923    call        0045A66C
 0050A928    test        al,al
>0050A92A    je          0050AA5F
 0050A930    movzx       edx,word ptr [ebp-6]
 0050A934    mov         eax,dword ptr [ebp-4]
 0050A937    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A93D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A943    call        0045AF80
 0050A948    mov         ecx,dword ptr [eax+24]
 0050A94B    lea         eax,[ebp-10]
 0050A94E    mov         edx,50AB2C;'$'
 0050A953    call        @LStrCat3
 0050A958    mov         eax,dword ptr [ebp-10]
 0050A95B    xor         edx,edx
 0050A95D    call        0040C4A8
 0050A962    call        004CFB3C
 0050A967    call        004CEB6C
 0050A96C    movzx       edx,word ptr [ebp-6]
 0050A970    mov         eax,dword ptr [ebp-4]
 0050A973    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A979    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A97F    call        0045AF80
 0050A984    xor         edx,edx
 0050A986    call        0045A63C
 0050A98B    mov         eax,[0056E270];^gvar_00571EC0
 0050A990    cmp         word ptr [eax+18],0
>0050A995    jne         0050A9C0
 0050A997    movzx       edx,word ptr [ebp-6]
 0050A99B    mov         eax,dword ptr [ebp-4]
 0050A99E    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A9A4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A9AA    call        0045AF80
 0050A9AF    mov         ecx,1
 0050A9B4    xor         edx,edx
 0050A9B6    call        0045A98C
>0050A9BB    jmp         0050AA40
 0050A9C0    movzx       edx,word ptr [ebp-6]
 0050A9C4    mov         eax,dword ptr [ebp-4]
 0050A9C7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A9CD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A9D3    call        0045AF80
 0050A9D8    mov         ecx,2
 0050A9DD    xor         edx,edx
 0050A9DF    call        0045A98C
 0050A9E4    movzx       edx,word ptr [ebp-6]
 0050A9E8    mov         eax,dword ptr [ebp-4]
 0050A9EB    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050A9F1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050A9F7    call        0045AF80
 0050A9FC    push        dword ptr [eax+24]
 0050A9FF    push        50AB38;' - '
 0050AA04    lea         edx,[ebp-18]
 0050AA07    mov         eax,[0056E270];^gvar_00571EC0
 0050AA0C    mov         ax,word ptr [eax+18]
 0050AA10    call        004CCABC
 0050AA15    push        dword ptr [ebp-18]
 0050AA18    lea         eax,[ebp-14]
 0050AA1B    mov         edx,3
 0050AA20    call        @LStrCatN
 0050AA25    mov         edx,dword ptr [ebp-14]
 0050AA28    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050AA2D    mov         eax,dword ptr [eax]
 0050AA2F    mov         eax,dword ptr [eax+2F8]
 0050AA35    mov         eax,dword ptr [eax+248]
 0050AA3B    mov         ecx,dword ptr [eax]
 0050AA3D    call        dword ptr [ecx+38]
 0050AA40    movzx       edx,word ptr [ebp-6]
 0050AA44    mov         eax,dword ptr [ebp-4]
 0050AA47    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AA4D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AA53    call        0045AF80
 0050AA58    xor         edx,edx
 0050AA5A    call        0045A63C
 0050AA5F    mov         eax,[0056E3C0];^Application:TApplication
 0050AA64    mov         eax,dword ptr [eax]
 0050AA66    call        004AB51C
 0050AA6B    movzx       edx,word ptr [ebp-6]
 0050AA6F    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050AA74    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AA7A    call        TProgressBar.SetPosition
 0050AA7F    inc         word ptr [ebp-6]
 0050AA83    mov         eax,dword ptr [ebp-4]
 0050AA86    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AA8C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AA92    call        0045AF28
 0050AA97    movzx       edx,word ptr [ebp-6]
 0050AA9B    cmp         eax,edx
>0050AA9D    jle         0050AAAD
 0050AA9F    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AAA4    cmp         byte ptr [eax],0
>0050AAA7    je          0050A90B
 0050AAAD    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050AAB2    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AAB8    call        TProgressBar.GetMin
 0050AABD    mov         edx,eax
 0050AABF    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050AAC4    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AACA    call        TProgressBar.SetPosition
 0050AACF    xor         eax,eax
 0050AAD1    pop         edx
 0050AAD2    pop         ecx
 0050AAD3    pop         ecx
 0050AAD4    mov         dword ptr fs:[eax],edx
 0050AAD7    push        50AAF1
 0050AADC    lea         eax,[ebp-18]
 0050AADF    mov         edx,3
 0050AAE4    call        @LStrArrayClr
 0050AAE9    ret
>0050AAEA    jmp         @HandleFinally
>0050AAEF    jmp         0050AADC
 0050AAF1    mov         esp,ebp
 0050AAF3    pop         ebp
 0050AAF4    ret
end;*}

//0050AB3C
procedure TfmModules.miSelect8xxxGroupClick(Sender:TObject);
begin
{*
 0050AB3C    push        ebp
 0050AB3D    mov         ebp,esp
 0050AB3F    add         esp,0FFFFFFE8
 0050AB42    push        ebx
 0050AB43    xor         ecx,ecx
 0050AB45    mov         dword ptr [ebp-18],ecx
 0050AB48    mov         dword ptr [ebp-14],ecx
 0050AB4B    mov         dword ptr [ebp-0C],ecx
 0050AB4E    mov         dword ptr [ebp-10],edx
 0050AB51    mov         dword ptr [ebp-4],eax
 0050AB54    xor         eax,eax
 0050AB56    push        ebp
 0050AB57    push        50ACB3
 0050AB5C    push        dword ptr fs:[eax]
 0050AB5F    mov         dword ptr fs:[eax],esp
 0050AB62    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AB67    mov         byte ptr [eax],0
 0050AB6A    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050AB71    jle         0050AC90
 0050AB77    mov         eax,dword ptr [ebp-4]
 0050AB7A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AB80    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AB86    call        0045AF28
 0050AB8B    test        eax,eax
>0050AB8D    jle         0050AC90
 0050AB93    mov         eax,dword ptr [ebp-4]
 0050AB96    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AB9C    mov         edx,dword ptr [eax]
 0050AB9E    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050ABA4    mov         edx,eax
 0050ABA6    mov         eax,dword ptr [ebp-4]
 0050ABA9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050ABAF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050ABB5    call        0045AF80
 0050ABBA    mov         eax,dword ptr [eax+8]
 0050ABBD    lea         ecx,[ebp-0C]
 0050ABC0    mov         edx,1
 0050ABC5    mov         ebx,dword ptr [eax]
 0050ABC7    call        dword ptr [ebx+0C]
 0050ABCA    mov         word ptr [ebp-6],0
>0050ABD0    jmp         0050AC66
 0050ABD5    movzx       edx,word ptr [ebp-6]
 0050ABD9    mov         eax,dword ptr [ebp-4]
 0050ABDC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050ABE2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050ABE8    call        0045AF80
 0050ABED    mov         ecx,dword ptr [eax+24]
 0050ABF0    lea         eax,[ebp-14]
 0050ABF3    mov         edx,50ACC8;'$'
 0050ABF8    call        @LStrCat3
 0050ABFD    mov         eax,dword ptr [ebp-14]
 0050AC00    call        0040C468
 0050AC05    cmp         eax,9000
>0050AC0A    jge         0050AC62
 0050AC0C    movzx       edx,word ptr [ebp-6]
 0050AC10    mov         eax,dword ptr [ebp-4]
 0050AC13    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AC19    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AC1F    call        0045AF80
 0050AC24    mov         ecx,dword ptr [eax+24]
 0050AC27    lea         eax,[ebp-18]
 0050AC2A    mov         edx,50ACC8;'$'
 0050AC2F    call        @LStrCat3
 0050AC34    mov         eax,dword ptr [ebp-18]
 0050AC37    call        0040C468
 0050AC3C    cmp         eax,7FFF
>0050AC41    jle         0050AC62
 0050AC43    movzx       edx,word ptr [ebp-6]
 0050AC47    mov         eax,dword ptr [ebp-4]
 0050AC4A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AC50    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AC56    call        0045AF80
 0050AC5B    mov         dl,1
 0050AC5D    call        0045A6C8
 0050AC62    inc         word ptr [ebp-6]
 0050AC66    mov         eax,dword ptr [ebp-4]
 0050AC69    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AC6F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AC75    call        0045AF28
 0050AC7A    movzx       edx,word ptr [ebp-6]
 0050AC7E    cmp         eax,edx
>0050AC80    jle         0050AC90
 0050AC82    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AC87    cmp         byte ptr [eax],0
>0050AC8A    je          0050ABD5
 0050AC90    xor         eax,eax
 0050AC92    pop         edx
 0050AC93    pop         ecx
 0050AC94    pop         ecx
 0050AC95    mov         dword ptr fs:[eax],edx
 0050AC98    push        50ACBA
 0050AC9D    lea         eax,[ebp-18]
 0050ACA0    mov         edx,2
 0050ACA5    call        @LStrArrayClr
 0050ACAA    lea         eax,[ebp-0C]
 0050ACAD    call        @LStrClr
 0050ACB2    ret
>0050ACB3    jmp         @HandleFinally
>0050ACB8    jmp         0050AC9D
 0050ACBA    pop         ebx
 0050ACBB    mov         esp,ebp
 0050ACBD    pop         ebp
 0050ACBE    ret
*}
end;

//0050ACCC
procedure TfmModules.Select2xxxGroup1Click(Sender:TObject);
begin
{*
 0050ACCC    push        ebp
 0050ACCD    mov         ebp,esp
 0050ACCF    add         esp,0FFFFFFE8
 0050ACD2    push        ebx
 0050ACD3    xor         ecx,ecx
 0050ACD5    mov         dword ptr [ebp-18],ecx
 0050ACD8    mov         dword ptr [ebp-14],ecx
 0050ACDB    mov         dword ptr [ebp-0C],ecx
 0050ACDE    mov         dword ptr [ebp-10],edx
 0050ACE1    mov         dword ptr [ebp-4],eax
 0050ACE4    xor         eax,eax
 0050ACE6    push        ebp
 0050ACE7    push        50AE43
 0050ACEC    push        dword ptr fs:[eax]
 0050ACEF    mov         dword ptr fs:[eax],esp
 0050ACF2    mov         eax,[0056E5A4];^gvar_0056DF04
 0050ACF7    mov         byte ptr [eax],0
 0050ACFA    cmp         dword ptr ds:[56D408],0;gvar_0056D408
>0050AD01    jle         0050AE20
 0050AD07    mov         eax,dword ptr [ebp-4]
 0050AD0A    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AD10    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AD16    call        0045AF28
 0050AD1B    test        eax,eax
>0050AD1D    jle         0050AE20
 0050AD23    mov         eax,dword ptr [ebp-4]
 0050AD26    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AD2C    mov         edx,dword ptr [eax]
 0050AD2E    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0050AD34    mov         edx,eax
 0050AD36    mov         eax,dword ptr [ebp-4]
 0050AD39    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AD3F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AD45    call        0045AF80
 0050AD4A    mov         eax,dword ptr [eax+8]
 0050AD4D    lea         ecx,[ebp-0C]
 0050AD50    mov         edx,1
 0050AD55    mov         ebx,dword ptr [eax]
 0050AD57    call        dword ptr [ebx+0C]
 0050AD5A    mov         word ptr [ebp-6],0
>0050AD60    jmp         0050ADF6
 0050AD65    movzx       edx,word ptr [ebp-6]
 0050AD69    mov         eax,dword ptr [ebp-4]
 0050AD6C    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AD72    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AD78    call        0045AF80
 0050AD7D    mov         ecx,dword ptr [eax+24]
 0050AD80    lea         eax,[ebp-14]
 0050AD83    mov         edx,50AE58;'$'
 0050AD88    call        @LStrCat3
 0050AD8D    mov         eax,dword ptr [ebp-14]
 0050AD90    call        0040C468
 0050AD95    cmp         eax,3000
>0050AD9A    jge         0050ADF2
 0050AD9C    movzx       edx,word ptr [ebp-6]
 0050ADA0    mov         eax,dword ptr [ebp-4]
 0050ADA3    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050ADA9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050ADAF    call        0045AF80
 0050ADB4    mov         ecx,dword ptr [eax+24]
 0050ADB7    lea         eax,[ebp-18]
 0050ADBA    mov         edx,50AE58;'$'
 0050ADBF    call        @LStrCat3
 0050ADC4    mov         eax,dword ptr [ebp-18]
 0050ADC7    call        0040C468
 0050ADCC    cmp         eax,1FFF
>0050ADD1    jle         0050ADF2
 0050ADD3    movzx       edx,word ptr [ebp-6]
 0050ADD7    mov         eax,dword ptr [ebp-4]
 0050ADDA    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050ADE0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050ADE6    call        0045AF80
 0050ADEB    mov         dl,1
 0050ADED    call        0045A6C8
 0050ADF2    inc         word ptr [ebp-6]
 0050ADF6    mov         eax,dword ptr [ebp-4]
 0050ADF9    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050ADFF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AE05    call        0045AF28
 0050AE0A    movzx       edx,word ptr [ebp-6]
 0050AE0E    cmp         eax,edx
>0050AE10    jle         0050AE20
 0050AE12    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AE17    cmp         byte ptr [eax],0
>0050AE1A    je          0050AD65
 0050AE20    xor         eax,eax
 0050AE22    pop         edx
 0050AE23    pop         ecx
 0050AE24    pop         ecx
 0050AE25    mov         dword ptr fs:[eax],edx
 0050AE28    push        50AE4A
 0050AE2D    lea         eax,[ebp-18]
 0050AE30    mov         edx,2
 0050AE35    call        @LStrArrayClr
 0050AE3A    lea         eax,[ebp-0C]
 0050AE3D    call        @LStrClr
 0050AE42    ret
>0050AE43    jmp         @HandleFinally
>0050AE48    jmp         0050AE2D
 0050AE4A    pop         ebx
 0050AE4B    mov         esp,ebp
 0050AE4D    pop         ebp
 0050AE4E    ret
*}
end;

//0050AE5C
procedure TfmModules.miWriteAllClick(Sender:TObject);
begin
{*
 0050AE5C    push        ebp
 0050AE5D    mov         ebp,esp
 0050AE5F    add         esp,0FFFFFFF4
 0050AE62    mov         dword ptr [ebp-0C],edx
 0050AE65    mov         dword ptr [ebp-4],eax
 0050AE68    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AE6D    mov         byte ptr [eax],0
 0050AE70    mov         eax,dword ptr [ebp-4]
 0050AE73    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AE79    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AE7F    call        0045AF28
 0050AE84    test        eax,eax
>0050AE86    jle         0050AF3D
 0050AE8C    mov         word ptr [ebp-6],0
 0050AE92    xor         edx,edx
 0050AE94    mov         eax,dword ptr [ebp-4]
 0050AE97    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AE9D    call        TProgressBar.SetMin
 0050AEA2    mov         eax,dword ptr [ebp-4]
 0050AEA5    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AEAB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AEB1    call        0045AF28
 0050AEB6    mov         edx,eax
 0050AEB8    mov         eax,dword ptr [ebp-4]
 0050AEBB    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AEC1    call        TProgressBar.SetMax
 0050AEC6    movzx       edx,word ptr [ebp-6]
 0050AECA    mov         eax,dword ptr [ebp-4]
 0050AECD    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AED3    call        TProgressBar.SetMin
>0050AED8    jmp         0050AEF9
 0050AEDA    movzx       eax,word ptr [ebp-6]
 0050AEDE    call        0050528C
 0050AEE3    movzx       edx,word ptr [ebp-6]
 0050AEE7    mov         eax,dword ptr [ebp-4]
 0050AEEA    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AEF0    call        TProgressBar.SetPosition
 0050AEF5    inc         word ptr [ebp-6]
 0050AEF9    mov         eax,dword ptr [ebp-4]
 0050AEFC    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AF02    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AF08    call        0045AF28
 0050AF0D    movzx       edx,word ptr [ebp-6]
 0050AF11    cmp         eax,edx
>0050AF13    jle         0050AF1F
 0050AF15    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AF1A    cmp         byte ptr [eax],0
>0050AF1D    je          0050AEDA
 0050AF1F    mov         eax,dword ptr [ebp-4]
 0050AF22    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AF28    call        TProgressBar.GetMin
 0050AF2D    mov         edx,eax
 0050AF2F    mov         eax,dword ptr [ebp-4]
 0050AF32    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AF38    call        TProgressBar.SetPosition
 0050AF3D    mov         esp,ebp
 0050AF3F    pop         ebp
 0050AF40    ret
*}
end;

//0050AF44
procedure TfmModules.miCheckAllbyIDIIClick(Sender:TObject);
begin
{*
 0050AF44    push        ebp
 0050AF45    mov         ebp,esp
 0050AF47    mov         ecx,5
 0050AF4C    push        0
 0050AF4E    push        0
 0050AF50    dec         ecx
>0050AF51    jne         0050AF4C
 0050AF53    push        ecx
 0050AF54    mov         dword ptr [ebp-14],edx
 0050AF57    mov         dword ptr [ebp-4],eax
 0050AF5A    xor         eax,eax
 0050AF5C    push        ebp
 0050AF5D    push        50B19D
 0050AF62    push        dword ptr fs:[eax]
 0050AF65    mov         dword ptr fs:[eax],esp
 0050AF68    mov         eax,dword ptr [ebp-4]
 0050AF6B    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AF71    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AF77    call        0045AF28
 0050AF7C    mov         dword ptr [ebp-0C],eax
 0050AF7F    mov         eax,[0056E5A4];^gvar_0056DF04
 0050AF84    mov         byte ptr [eax],0
 0050AF87    xor         edx,edx
 0050AF89    mov         eax,dword ptr [ebp-4]
 0050AF8C    call        TfmModules.miRoadMapClearClick
 0050AF91    cmp         dword ptr [ebp-0C],0
>0050AF95    jle         0050B182
 0050AF9B    xor         eax,eax
 0050AF9D    mov         dword ptr [ebp-8],eax
 0050AFA0    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050AFA5    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AFAB    xor         edx,edx
 0050AFAD    call        TProgressBar.SetMin
 0050AFB2    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050AFB7    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050AFBD    mov         edx,dword ptr [ebp-0C]
 0050AFC0    call        TProgressBar.SetMax
 0050AFC5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050AFCA    mov         eax,dword ptr [eax]
 0050AFCC    mov         eax,dword ptr [eax+2F8]
 0050AFD2    mov         eax,dword ptr [eax+248]
 0050AFD8    xor         edx,edx
 0050AFDA    mov         ecx,dword ptr [eax]
 0050AFDC    call        dword ptr [ecx+38]
>0050AFDF    jmp         0050B14A
 0050AFE4    mov         eax,dword ptr [ebp-4]
 0050AFE7    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050AFED    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050AFF3    mov         edx,dword ptr [ebp-8]
 0050AFF6    call        0045AF80
 0050AFFB    xor         edx,edx
 0050AFFD    call        0045A63C
 0050B002    mov         eax,dword ptr [ebp-4]
 0050B005    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050B00B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050B011    mov         edx,dword ptr [ebp-8]
 0050B014    call        0045AF80
 0050B019    mov         ecx,dword ptr [eax+24]
 0050B01C    lea         eax,[ebp-18]
 0050B01F    mov         edx,50B1B0;'$'
 0050B024    call        @LStrCat3
 0050B029    mov         eax,dword ptr [ebp-18]
 0050B02C    xor         edx,edx
 0050B02E    call        0040C4A8
 0050B033    mov         word ptr [ebp-0E],ax
 0050B037    mov         ax,word ptr [ebp-0E]
 0050B03B    call        004CF954
 0050B040    mov         eax,[0056E270];^gvar_00571EC0
 0050B045    cmp         word ptr [eax+18],0
>0050B04A    jne         0050B074
 0050B04C    mov         eax,dword ptr [ebp-4]
 0050B04F    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050B055    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050B05B    mov         edx,dword ptr [ebp-8]
 0050B05E    call        0045AF80
 0050B063    mov         ecx,1
 0050B068    xor         edx,edx
 0050B06A    call        0045A98C
>0050B06F    jmp         0050B134
 0050B074    mov         eax,dword ptr [ebp-4]
 0050B077    mov         eax,dword ptr [eax+2FC];TfmModules.lvModules:TListView
 0050B07D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0050B083    mov         edx,dword ptr [ebp-8]
 0050B086    call        0045AF80
 0050B08B    mov         ecx,2
 0050B090    xor         edx,edx
 0050B092    call        0045A98C
 0050B097    lea         ecx,[ebp-20]
 0050B09A    movzx       eax,word ptr [ebp-0E]
 0050B09E    mov         edx,4
 0050B0A3    call        IntToHex
 0050B0A8    push        dword ptr [ebp-20]
 0050B0AB    push        50B1BC;' Copy 0 - '
 0050B0B0    lea         edx,[ebp-24]
 0050B0B3    mov         eax,[0056E270];^gvar_00571EC0
 0050B0B8    mov         al,byte ptr [eax+18]
 0050B0BB    call        0050A060
 0050B0C0    push        dword ptr [ebp-24]
 0050B0C3    lea         eax,[ebp-1C]
 0050B0C6    mov         edx,3
 0050B0CB    call        @LStrCatN
 0050B0D0    mov         edx,dword ptr [ebp-1C]
 0050B0D3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050B0D8    mov         eax,dword ptr [eax]
 0050B0DA    mov         eax,dword ptr [eax+2F8]
 0050B0E0    mov         eax,dword ptr [eax+248]
 0050B0E6    mov         ecx,dword ptr [eax]
 0050B0E8    call        dword ptr [ecx+38]
 0050B0EB    push        50B1D0;'     Copy 1 - '
 0050B0F0    mov         eax,[0056E270];^gvar_00571EC0
 0050B0F5    movzx       eax,word ptr [eax+18]
 0050B0F9    shr         eax,8
 0050B0FC    lea         edx,[ebp-2C]
 0050B0FF    call        0050A060
 0050B104    push        dword ptr [ebp-2C]
 0050B107    push        50B1E8;#10
 0050B10C    lea         eax,[ebp-28]
 0050B10F    mov         edx,3
 0050B114    call        @LStrCatN
 0050B119    mov         edx,dword ptr [ebp-28]
 0050B11C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050B121    mov         eax,dword ptr [eax]
 0050B123    mov         eax,dword ptr [eax+2F8]
 0050B129    mov         eax,dword ptr [eax+248]
 0050B12F    mov         ecx,dword ptr [eax]
 0050B131    call        dword ptr [ecx+38]
 0050B134    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050B139    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050B13F    mov         edx,dword ptr [ebp-8]
 0050B142    call        TProgressBar.SetPosition
 0050B147    inc         dword ptr [ebp-8]
 0050B14A    mov         eax,dword ptr [ebp-8]
 0050B14D    cmp         eax,dword ptr [ebp-0C]
>0050B150    jge         0050B160
 0050B152    mov         eax,[0056E5A4];^gvar_0056DF04
 0050B157    cmp         byte ptr [eax],0
>0050B15A    je          0050AFE4
 0050B160    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050B165    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050B16B    call        TProgressBar.GetMin
 0050B170    mov         edx,eax
 0050B172    mov         eax,[0056D404];0x0 gvar_0056D404:TfmModules
 0050B177    mov         eax,dword ptr [eax+3BC];TfmModules.pbModules:TProgressBar
 0050B17D    call        TProgressBar.SetPosition
 0050B182    xor         eax,eax
 0050B184    pop         edx
 0050B185    pop         ecx
 0050B186    pop         ecx
 0050B187    mov         dword ptr fs:[eax],edx
 0050B18A    push        50B1A4
 0050B18F    lea         eax,[ebp-2C]
 0050B192    mov         edx,6
 0050B197    call        @LStrArrayClr
 0050B19C    ret
>0050B19D    jmp         @HandleFinally
>0050B1A2    jmp         0050B18F
 0050B1A4    mov         esp,ebp
 0050B1A6    pop         ebp
 0050B1A7    ret
*}
end;

end.