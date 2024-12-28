//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uHDD;

interface

uses
  SysUtils, Classes, ComCtrls, Menus, Dialogs, ActnList, StdActns, Controls;

type
  TfmHDD = class(TForm)
  published
    reLog:TRichEdit;//f2F8
    pmWdm:TPopupMenu;//f2FC
    miIdentify:TMenuItem;//f300
    miReset:TMenuItem;//f304
    miService:TMenuItem;//f308
    Actions1:TMenuItem;//f30C
    miInfo:TMenuItem;//f310
    miATA1:TMenuItem;//f314
    miSuper1:TMenuItem;//f318
    miStopspindle1:TMenuItem;//f31C
    miStartspindle1:TMenuItem;//f320
    miStructure1:TMenuItem;//f324
    miSuperFormat1:TMenuItem;//f328
    miWithPListandGLIST1:TMenuItem;//f32C
    miWithPList1:TMenuItem;//f330
    miWithGList1:TMenuItem;//f334
    miWithoutlists1:TMenuItem;//f338
    miQuickwithPList1:TMenuItem;//f33C
    miClearSMART1:TMenuItem;//f340
    miFlashOperations1:TMenuItem;//f344
    miClearGList1:TMenuItem;//f348
    miMoveGtoP1:TMenuItem;//f34C
    miInitDrive1:TMenuItem;//f350
    miQuickErase:TMenuItem;//f354
    miViewProgress:TMenuItem;//f358
    OpenDialog1:TOpenDialog;//f35C
    miHeadsMap:TMenuItem;//f360
    SaveDialog1:TSaveDialog;//f364
    N2:TMenuItem;//f368
    N3:TMenuItem;//f36C
    miQuickWithoutLists1:TMenuItem;//f370
    miLog:TMenuItem;//f374
    miLogClear1:TMenuItem;//f378
    miLogSaveToFile:TMenuItem;//f37C
    ActionList1:TActionList;//f380
    EditCopy1:TEditCopy;//f384
    EditSelectAll1:TEditSelectAll;//f388
    miCopy1:TMenuItem;//f38C
    miSelectAll1:TMenuItem;//f390
    miViewATAReg:TMenuItem;//f394
    miDCMcodes:TMenuItem;//f398
    miClearPasswords:TMenuItem;//f39C
    miChangeModelName:TMenuItem;//f3A0
    miChangeSerialNumber1:TMenuItem;//f3A4
    miChangeMaxLBA1:TMenuItem;//f3A8
    miManualEditConfigSector:TMenuItem;//f3AC
    miDefectsList:TMenuItem;//f3B0
    miClearGListManual:TMenuItem;//f3B4
    miClearPListManual:TMenuItem;//f3B8
    miViewSSStatistic:TMenuItem;//f3BC
    miEditPList:TMenuItem;//f3C0
    miEditGList:TMenuItem;//f3C4
    miTest:TMenuItem;//f3C8
    miLogicalTest:TMenuItem;//f3CC
    miViewDefectsGraph1:TMenuItem;//f3D0
    miSelfScan:TMenuItem;//f3D4
    miSelfScanStart:TMenuItem;//f3D8
    miClearSSLogs:TMenuItem;//f3DC
    miRepairSsModules:TMenuItem;//f3E0
    N5:TMenuItem;//f3E4
    miSelectWorkDir1:TMenuItem;//f3E8
    N9:TMenuItem;//f3EC
    N10:TMenuItem;//f3F0
    miDIRRev:TMenuItem;//f3F4
    ImageList1:TImageList;//f3F8
    CoolBar1:TCoolBar;//f3FC
    ToolBar1:TToolBar;//f400
    ToolButton1:TToolButton;//f404
    ToolButton2:TToolButton;//f408
    ToolButton6:TToolButton;//f40C
    ToolButton8:TToolButton;//f410
    ToolButton7:TToolButton;//f414
    ToolButton9:TToolButton;//f418
    ToolButton11:TToolButton;//f41C
    ToolButton13:TToolButton;//f420
    ToolButton15:TToolButton;//f424
    ToolButton19:TToolButton;//f438
    N13:TMenuItem;//f440
    N15:TMenuItem;//f444
    N16:TMenuItem;//f448
    miViewCommonLog:TMenuItem;//f44C
    CanWrite1:TMenuItem;//f450
    ToolButton24:TToolButton;//f454
    N18:TMenuItem;//f45C
    miSelfScanStop:TMenuItem;//f460
    miReMergeGtoP:TMenuItem;//f464
    N20:TMenuItem;//f468
    tbViewSSLogs:TToolButton;//f46C
    miEditSAList:TMenuItem;//f470
    N23:TMenuItem;//f474
    N24:TMenuItem;//f478
    N25:TMenuItem;//f47C
    ToolButton28:TToolButton;//f484
    N26:TMenuItem;//f488
    miChangeFWVersion:TMenuItem;//f48C
    miClearTranslator:TMenuItem;//f490
    miSMART:TMenuItem;//f494
    miEditTList:TMenuItem;//f498
    miClearTList:TMenuItem;//f49C
    miSetDMA100Mode:TMenuItem;//f4A0
    miSetDMA66Mode:TMenuItem;//f4A4
    miSetDMA33Mode:TMenuItem;//f4A8
    ToolButton3:TToolButton;//f4AC
    N1:TMenuItem;//f4B4
    N4:TMenuItem;//f4B8
    miB9_AutoAddtracktoPList:TMenuItem;//f4BC
    miBA_AutoAddBBtoGList:TMenuItem;//f4C0
    miQuickErase1:TMenuItem;//f4C4
    //procedure miControllerRegsClick(?:?);//005594C4
    //procedure miRdChannelRegsClick(?:?);//005592FC
    //procedure miSsClearScriptClick(?:?);//0055974C
    procedure miClearSoftErrorCounterClick(Sender:TObject);//0055968C
    //procedure miReadPreampRegsClick(?:?);//00559138
    procedure miSelfScanStopClick(Sender:TObject);//0054FB18
    //procedure miVscImpMtxClick(?:?);//00555850
    //procedure miVSCStatusClick(?:?);//00555D24
    procedure miReMergeGtoPClick(Sender:TObject);//0054A8B8
    //procedure miReadSocIdClick(?:?);//00559788
    procedure miEditSAListClick(Sender:TObject);//00559BF8
    procedure miValidateFileSystemClick(Sender:TObject);//00559BA4
    procedure miRegionMapEditorClick(Sender:TObject);//00559C78
    procedure ToolButton6Click(Sender:TObject);//00559C1C
    procedure FileManagerDefragment1Click(Sender:TObject);//00559B5C
    //procedure miSSClearScript2Click(?:?);//005599DC
    //procedure ToolButton26Click(?:?);//00559968
    procedure miLoadTransientOverlayClick(Sender:TObject);//00559AB0
    //procedure ViewCurrent1Click(?:?);//005599F4
    procedure miWedgeZoneTableClick(Sender:TObject);//005552C8
    //procedure miMRResistanceClick(?:?);//00553A20
    procedure CanWrite1Click(Sender:TObject);//005536C0
    //procedure miCpuRamOperationsClick(?:?);//00553FB0
    //procedure miTrackperInchClick(?:?);//00553DFC
    //procedure miClearIBIParametersClick(?:?);//00553614
    procedure miCustomConfigClick(Sender:TObject);//005522CC
    //procedure miChangeWriteTimeOutClick(?:?);//00552020
    //procedure miClrIBIAbortCodeClick(?:?);//005533A0
    procedure miViewCommonLogClick(Sender:TObject);//00553208
    //procedure miTableOperationsClick(?:?);//00553FD0
    //procedure miTaaTableClick(?:?);//005540FC
    //procedure ReservedAreaQuick1Click(?:?);//005510D8
    //procedure miWriteSenseTableClick(?:?);//00554794
    //procedure miRroTableClick(?:?);//00554D84
    //procedure miServoParkClick(?:?);//005540BC
    //procedure ToolButton5Click(?:?);//00554010
    procedure miFieldOperationsClick(Sender:TObject);//00553FF0
    //procedure miServoCalibrationClick(?:?);//00554074
    procedure miServoActuatorInitClick(Sender:TObject);//0055402C
    //procedure miWaterMarkClick(?:?);//00559C98
    procedure miClearTListClick(Sender:TObject);//0055F360
    procedure miEditTListClick(Sender:TObject);//0055F33C
    procedure tbViewSSLogsClick(Sender:TObject);//0055F414
    //procedure miClearFactoryFileClick(?:?);//0055F3A0
    procedure miSMARTClick(Sender:TObject);//0055F31C
    //procedure miSetTPIClick(?:?);//0055EA0C
    //procedure miSetHQCapacityClick(?:?);//0055E66C
    procedure miClearTranslatorClick(Sender:TObject);//0055F2A0
    //procedure miSetCapacityClick(?:?);//0055EE4C
    //procedure miViewPreampIDClick(?:?);//0055F468
    procedure miSetDMA33ModeClick(Sender:TObject);//0055FC40
    procedure miSetDMA66ModeClick(Sender:TObject);//0055FBCC
    procedure miBA_AutoAddBBtoGListClick(Sender:TObject);//0055FD50
    procedure miB9_AutoAddtracktoPListClick(Sender:TObject);//0055FCB4
    procedure miSetDMA100ModeClick(Sender:TObject);//0055FB54
    procedure miEditFListClick(Sender:TObject);//0055FB34
    //procedure miViewFieldListClick(?:?);//0055F620
    //procedure miDriveFormatAlt5Click(?:?);//0054A7F4
    //procedure miDriveFormatAlt4Click(?:?);//0054A7A0
    procedure miSetTargetCapacityClick(Sender:TObject);//0055E48C
    //procedure Manual1Click(?:?);//0055AA90
    //procedure miViewRomModelNameClick(?:?);//0055A7DC
    procedure miXlateLBAClick(Sender:TObject);//0055AD00
    //procedure miLoadARCOMainClick(?:?);//0055AAAC
    procedure miChangeHeadsMapInRAMClick(Sender:TObject);//0055A6F4
    //procedure miReinitARCOClick(?:?);//00559CB0
    procedure miTest_6BClick(Sender:TObject);//00550294
    //procedure miShowID46Click(?:?);//0055A454
    procedure miShowID47Click(Sender:TObject);//00559F84
    procedure miBuildLBAHeadMapClick(Sender:TObject);//0055AF04
    //procedure miGetKFCICapacityClick(?:?);//0055DF30
    //procedure miGetDataTPIClick(?:?);//0055DD3C
    procedure miSetDCMClick(Sender:TObject);//0055E2B8
    //procedure miGetCapacityGroupsClick(?:?);//0055E158
    //procedure miGetDCMClick(?:?);//0055DBE0
    procedure miChangeFWVersionClick(Sender:TObject);//0054EC54
    procedure miCreateFileClick(Sender:TObject);//0055AF24
    procedure miGetCurrentClick(Sender:TObject);//0055AF44
    procedure miReinitPermanentOverlayClick(Sender:TObject);//0054A9B4
    procedure miQuickWithoutLists1Click(Sender:TObject);//0054A470
    procedure miFlashOperations1Click(Sender:TObject);//0054AB94
    procedure miLogClear1Click(Sender:TObject);//0054ACF4
    procedure FormShow(Sender:TObject);//0054ABB4
    procedure miHeadsMapClick(Sender:TObject);//0054AB74
    procedure miQuickEraseClick(Sender:TObject);//0054AAD0
    //procedure miUserMode1Click(?:?);//0054AA94
    procedure miTracks1Click(Sender:TObject);//0054AB54
    procedure miViewProgressClick(Sender:TObject);//0054AB3C
    procedure miLogSaveToFileClick(Sender:TObject);//0054AD18
    procedure miViewATARegClick(Sender:TObject);//0054D9F8
    procedure miUbaClick(Sender:TObject);//0054D9D8
    procedure miDCMcodesClick(Sender:TObject);//0054E56C
    procedure miZoneTable1Click(Sender:TObject);//0054DE90
    procedure miRamOperationsClick(Sender:TObject);//0054D9B8
    procedure miCpOperationsClick(Sender:TObject);//0054AE2C
    //procedure FormClose(?:?; ?:?);//0054ADC4
    //procedure miReinitPassportClick(?:?);//0054A970
    procedure miDriveParametrsClick(Sender:TObject);//0054D840
    procedure miInitDrive1Click(Sender:TObject);//0054AA7C
    procedure miWithPListandGLIST1Click(Sender:TObject);//0054A1E8
    procedure miStartspindle1Click(Sender:TObject);//0054A1B0
    procedure miWithGList1Click(Sender:TObject);//0054A2EC
    procedure miWithPList1Click(Sender:TObject);//0054A270
    procedure miStopspindle1Click(Sender:TObject);//0054A174
    procedure miATA1Click(Sender:TObject);//0054A00C
    procedure miIdentifyClick(Sender:TObject);//00547CFC
    procedure miSuper1Click(Sender:TObject);//0054A074
    procedure miStructure1Click(Sender:TObject);//0054A054
    procedure miWithoutlists1Click(Sender:TObject);//0054A368
    procedure miMoveGtoP1Click(Sender:TObject);//0054A848
    //procedure miDriveFormatAlt3Click(?:?);//0054A74C
    procedure miClearGList1Click(Sender:TObject);//0054AA00
    //procedure miReinitRoadMapClick(?:?);//0054A92C
    //procedure miDriveFormatAlt2Click(?:?);//0054A6F8
    procedure miClearSMART1Click(Sender:TObject);//0054A4FC
    procedure miQuickwithPList1Click(Sender:TObject);//0054A3E8
    //procedure miDriveFormatAlt1Click(?:?);//0054A6A4
    //procedure miDriveFormatMainClick(?:?);//0054A64C
    procedure miClearPasswordsClick(Sender:TObject);//0054E5D8
    procedure miFormatSa1Click(Sender:TObject);//00550EC8
    //procedure miGetStatusClick(?:?);//00550E88
    procedure miSelectWorkDir1Click(Sender:TObject);//00551354
    //procedure miClrDebugStopClick(?:?);//005512F8
    //procedure miPSWRROTestClick(?:?);//00550D0C
    procedure miCalibratorClick(Sender:TObject);//00550110
    procedure miSSEditScriptClick(Sender:TObject);//005500F0
    procedure miPSCalTestClick(Sender:TObject);//00550864
    procedure miMiniTestClick(Sender:TObject);//00550130
    procedure miDIRRevClick(Sender:TObject);//005515EC
    //procedure miBlinkLedClick(?:?);//005519C0
    procedure ToolButton19Click(Sender:TObject);//00551944
    //procedure miChangeReadTimeOutClick(?:?);//00551D78
    //procedure miIbiParametersClick(?:?);//00551D14
    procedure ToolButton1Click(Sender:TObject);//00551928
    procedure miSuper3Click(Sender:TObject);//0054A128
    procedure miSuper2Click(Sender:TObject);//0054A0CC
    //procedure sbTools10Click(?:?);//005518AC
    //procedure sbTools1Click(?:?);//00551884
    procedure miRepairSsModulesClick(Sender:TObject);//0054FDFC
    procedure miClearPListManualClick(Sender:TObject);//0054EFCC
    procedure miClearGListManualClick(Sender:TObject);//0054EF90
    procedure miViewSSStatisticClick(Sender:TObject);//0054F604
    procedure miRebuildPListClick(Sender:TObject);//0054F008
    procedure miManualEditConfigSectorClick(Sender:TObject);//0054EF70
    procedure miChangeSerialNumber1Click(Sender:TObject);//0054E8AC
    procedure miChangeModelNameClick(Sender:TObject);//0054E614
    procedure miLoadGenOverlaytoRAMClick(Sender:TObject);//0054EEC4
    procedure miChangeMaxLBA1Click(Sender:TObject);//0054EB34
    procedure miEditPListClick(Sender:TObject);//0054F74C
    procedure miFactoryDcmClick(Sender:TObject);//0054F82C
    procedure miViewDefectsGraph1Click(Sender:TObject);//0054F80C
    procedure miClearSSLogsClick(Sender:TObject);//0054FB88
    procedure miSelfScanStartClick(Sender:TObject);//0054FA40
    //procedure miCorrectRoadMapClick(?:?);//0054F7F4
    procedure miServoTestClick(Sender:TObject);//0054F794
    procedure miEditGListClick(Sender:TObject);//0054F770
    procedure miID47Creater1Click(Sender:TObject);//0054F7D4
    procedure miLogicalTestClick(Sender:TObject);//0054F7B4
  public
    ToolButton4:TToolButton;//f428
    ToolButton12:TToolButton;//f42C
    ToolButton16:TToolButton;//f430
    ToolButton17:TToolButton;//f434
    ToolButton22:TToolButton;//f43C
    ToolButton25:TToolButton;//f458
    ToolButton10:TToolButton;//f480
    ToolButton5:TToolButton;//f4B0
  end;
    //procedure sub_00544E60(?:TfmHDD; ?:?);//00544E60
    procedure sub_00544EB4(?:AnsiString);//00544EB4
    procedure sub_00544F6C(?:AnsiString);//00544F6C
    procedure sub_005451D0;//005451D0
    //procedure sub_005452A0(?:?; ?:AnsiString);//005452A0
    //procedure sub_00547C64(?:?; ?:?);//00547C64
    //procedure sub_00547CB0(?:?; ?:?; ?:?);//00547CB0
    procedure 'SCT:          ';//00549D38
    procedure sub_0054A534;//0054A534
    //procedure sub_0054AE4C(?:?; ?:?);//0054AE4C
    //function sub_0054B16C(?:?):?;//0054B16C
    //procedure sub_0054B194(?:?; ?:?);//0054B194
    //procedure sub_0054B290(?:?; ?:?);//0054B290
    procedure sub_0054B390(?:TMemoryStream);//0054B390
    //function sub_0054DA18(?:TMemoryStream):?;//0054DA18
    //procedure sub_0054DBB8(?:?);//0054DBB8
    procedure sub_0054E1E0(?:TMemoryStream);//0054E1E0
    //function sub_0054F08C(?:?):?;//0054F08C
    procedure sub_0054F0BC(?:TMemoryStream);//0054F0BC
    //procedure sub_005503C4(?:?; ?:?);//005503C4
    //procedure sub_0055144C(?:TMemoryStream; ?:?);//0055144C
    procedure sub_005519E0(?:TMemoryStream);//005519E0
    //procedure sub_005522EC(?:?; ?:?);//005522EC
    //procedure sub_00552430(?:?; ?:?);//00552430
    procedure sub_0055261C(?:TMemoryStream);//0055261C
    //procedure sub_0055326C(?:?; ?:?; ?:?; ?:?);//0055326C
    procedure sub_00553444(?:TMemoryStream);//00553444
    //procedure sub_00559CF0(?:?; ?:?);//00559CF0
    //procedure sub_00559E40(?:TMemoryStream; ?:?);//00559E40
    //procedure sub_0055A260(?:?; ?:?);//0055A260
    //procedure sub_0055A3B4(?:TMemoryStream; ?:?);//0055A3B4
    //function sub_0055A714(?:TMemoryStream; ?:?; ?:?):?;//0055A714
    //procedure sub_0055E844(?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0055E844

implementation

{$R *.DFM}

//00544E60
{*procedure sub_00544E60(?:TfmHDD; ?:?);
begin
 00544E60    push        ebp
 00544E61    mov         ebp,esp
 00544E63    add         esp,0FFFFFFF8
 00544E66    mov         dword ptr [ebp-8],edx
 00544E69    mov         dword ptr [ebp-4],eax
 00544E6C    cmp         dword ptr ds:[56DE74],0;gvar_0056DE74:TfmHDD
>00544E73    jne         00544E89
 00544E75    mov         ecx,dword ptr [ebp-8]
 00544E78    mov         dl,1
 00544E7A    mov         eax,[0054347C];TfmHDD
 00544E7F    call        TfmProgress.Create;TfmHDD.Create
 00544E84    mov         [0056DE74],eax;gvar_0056DE74:TfmHDD
 00544E89    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00544E8E    cmp         byte ptr [eax+1A6],0;TfmHDD.FShowing:Boolean
>00544E95    je          00544EA6
 00544E97    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00544E9C    mov         edx,dword ptr [eax]
 00544E9E    call        dword ptr [edx+0C4];TfmHDD.sub_004A746C
>00544EA4    jmp         00544EB0
 00544EA6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00544EAB    call        004A7450
 00544EB0    pop         ecx
 00544EB1    pop         ecx
 00544EB2    pop         ebp
 00544EB3    ret
end;*}

//00544EB4
procedure sub_00544EB4(?:AnsiString);
begin
{*
 00544EB4    push        ebp
 00544EB5    mov         ebp,esp
 00544EB7    xor         ecx,ecx
 00544EB9    push        ecx
 00544EBA    push        ecx
 00544EBB    push        ecx
 00544EBC    push        ecx
 00544EBD    mov         dword ptr [ebp-4],eax
 00544EC0    mov         eax,dword ptr [ebp-4]
 00544EC3    call        @LStrAddRef
 00544EC8    xor         eax,eax
 00544ECA    push        ebp
 00544ECB    push        544F52
 00544ED0    push        dword ptr fs:[eax]
 00544ED3    mov         dword ptr fs:[eax],esp
 00544ED6    call        0040E3F0
 00544EDB    add         esp,0FFFFFFF8
 00544EDE    fstp        qword ptr [esp]
 00544EE1    wait
 00544EE2    lea         eax,[ebp-0C]
 00544EE5    call        0040F100
 00544EEA    push        dword ptr [ebp-0C]
 00544EED    push        544F68;' '
 00544EF2    call        0040E41C
 00544EF7    add         esp,0FFFFFFF8
 00544EFA    fstp        qword ptr [esp]
 00544EFD    wait
 00544EFE    lea         eax,[ebp-10]
 00544F01    call        0040F120
 00544F06    push        dword ptr [ebp-10]
 00544F09    push        544F68;' '
 00544F0E    push        dword ptr [ebp-4]
 00544F11    lea         eax,[ebp-8]
 00544F14    mov         edx,5
 00544F19    call        @LStrCatN
 00544F1E    mov         edx,dword ptr [ebp-8]
 00544F21    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00544F26    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00544F2C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00544F32    mov         ecx,dword ptr [eax]
 00544F34    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00544F37    xor         eax,eax
 00544F39    pop         edx
 00544F3A    pop         ecx
 00544F3B    pop         ecx
 00544F3C    mov         dword ptr fs:[eax],edx
 00544F3F    push        544F59
 00544F44    lea         eax,[ebp-10]
 00544F47    mov         edx,4
 00544F4C    call        @LStrArrayClr
 00544F51    ret
>00544F52    jmp         @HandleFinally
>00544F57    jmp         00544F44
 00544F59    mov         esp,ebp
 00544F5B    pop         ebp
 00544F5C    ret
*}
end;

//00544F6C
procedure sub_00544F6C(?:AnsiString);
begin
{*
 00544F6C    push        ebp
 00544F6D    mov         ebp,esp
 00544F6F    mov         ecx,7
 00544F74    push        0
 00544F76    push        0
 00544F78    dec         ecx
>00544F79    jne         00544F74
 00544F7B    push        ecx
 00544F7C    mov         dword ptr [ebp-4],eax
 00544F7F    mov         eax,dword ptr [ebp-4]
 00544F82    call        @LStrAddRef
 00544F87    xor         eax,eax
 00544F89    push        ebp
 00544F8A    push        5451A1
 00544F8F    push        dword ptr fs:[eax]
 00544F92    mov         dword ptr fs:[eax],esp
 00544F95    mov         eax,[0056E270];^gvar_00571EC0
 00544F9A    cmp         word ptr [eax+196],0
>00544FA2    je          00544FCA
 00544FA4    lea         edx,[ebp-10]
 00544FA7    mov         eax,[0056E270];^gvar_00571EC0
 00544FAC    mov         ax,word ptr [eax+196]
 00544FB3    call        004CCABC
 00544FB8    mov         ecx,dword ptr [ebp-10]
 00544FBB    lea         eax,[ebp-0C]
 00544FBE    mov         edx,5451B4;' - '
 00544FC3    call        @LStrCat3
>00544FC8    jmp         00544FD2
 00544FCA    lea         eax,[ebp-0C]
 00544FCD    call        @LStrClr
 00544FD2    mov         eax,[0056E270];^gvar_00571EC0
 00544FD7    cmp         word ptr [eax+30],0
>00544FDC    je          00545007
 00544FDE    push        dword ptr [ebp-0C]
 00544FE1    push        5451B4;' - '
 00544FE6    lea         edx,[ebp-14]
 00544FE9    mov         eax,[0056E270];^gvar_00571EC0
 00544FEE    mov         ax,word ptr [eax+30]
 00544FF2    call        004CCABC
 00544FF7    push        dword ptr [ebp-14]
 00544FFA    lea         eax,[ebp-0C]
 00544FFD    mov         edx,3
 00545002    call        @LStrCatN
 00545007    mov         eax,[0056E270];^gvar_00571EC0
 0054500C    movzx       eax,word ptr [eax+62]
 00545010    mov         dword ptr [ebp-8],eax
 00545013    mov         eax,dword ptr [ebp-8]
 00545016    shl         eax,10
 00545019    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 0054501F    movzx       edx,word ptr [edx+60]
 00545023    or          eax,edx
 00545025    mov         dword ptr [ebp-8],eax
 00545028    cmp         dword ptr [ebp-8],0
>0054502C    je          00545051
 0054502E    push        dword ptr [ebp-0C]
 00545031    push        5451B4;' - '
 00545036    lea         edx,[ebp-18]
 00545039    mov         eax,dword ptr [ebp-8]
 0054503C    call        004CCBF0
 00545041    push        dword ptr [ebp-18]
 00545044    lea         eax,[ebp-0C]
 00545047    mov         edx,3
 0054504C    call        @LStrCatN
 00545051    mov         eax,[0056E270];^gvar_00571EC0
 00545056    cmp         word ptr [eax+18],0
>0054505B    jne         005450E3
 00545061    call        0040E3F0
 00545066    add         esp,0FFFFFFF8
 00545069    fstp        qword ptr [esp]
 0054506C    wait
 0054506D    lea         eax,[ebp-20]
 00545070    call        0040F100
 00545075    push        dword ptr [ebp-20]
 00545078    push        5451C0;' '
 0054507D    call        0040E41C
 00545082    add         esp,0FFFFFFF8
 00545085    fstp        qword ptr [esp]
 00545088    wait
 00545089    lea         eax,[ebp-24]
 0054508C    call        0040F120
 00545091    push        dword ptr [ebp-24]
 00545094    push        5451C0;' '
 00545099    push        dword ptr [ebp-4]
 0054509C    lea         edx,[ebp-28]
 0054509F    mov         eax,[0056E270];^gvar_00571EC0
 005450A4    mov         ax,word ptr [eax+18]
 005450A8    call        004CCABC
 005450AD    push        dword ptr [ebp-28]
 005450B0    push        5451C0;' '
 005450B5    push        dword ptr [ebp-0C]
 005450B8    lea         eax,[ebp-1C]
 005450BB    mov         edx,8
 005450C0    call        @LStrCatN
 005450C5    mov         edx,dword ptr [ebp-1C]
 005450C8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005450CD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005450D3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005450D9    mov         ecx,dword ptr [eax]
 005450DB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>005450DE    jmp         0054517E
 005450E3    call        0040E3F0
 005450E8    add         esp,0FFFFFFF8
 005450EB    fstp        qword ptr [esp]
 005450EE    wait
 005450EF    lea         eax,[ebp-30]
 005450F2    call        0040F100
 005450F7    push        dword ptr [ebp-30]
 005450FA    push        5451C0;' '
 005450FF    call        0040E41C
 00545104    add         esp,0FFFFFFF8
 00545107    fstp        qword ptr [esp]
 0054510A    wait
 0054510B    lea         eax,[ebp-34]
 0054510E    call        0040F120
 00545113    push        dword ptr [ebp-34]
 00545116    push        5451C0;' '
 0054511B    push        dword ptr [ebp-4]
 0054511E    lea         ecx,[ebp-38]
 00545121    mov         eax,[0056E270];^gvar_00571EC0
 00545126    movzx       eax,word ptr [eax+18]
 0054512A    mov         edx,4
 0054512F    call        IntToHex
 00545134    push        dword ptr [ebp-38]
 00545137    push        5451CC;'='
 0054513C    lea         edx,[ebp-3C]
 0054513F    mov         eax,[0056E270];^gvar_00571EC0
 00545144    mov         ax,word ptr [eax+18]
 00545148    call        004CCABC
 0054514D    push        dword ptr [ebp-3C]
 00545150    push        5451C0;' '
 00545155    push        dword ptr [ebp-0C]
 00545158    lea         eax,[ebp-2C]
 0054515B    mov         edx,0A
 00545160    call        @LStrCatN
 00545165    mov         edx,dword ptr [ebp-2C]
 00545168    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054516D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00545173    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00545179    mov         ecx,dword ptr [eax]
 0054517B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054517E    xor         eax,eax
 00545180    pop         edx
 00545181    pop         ecx
 00545182    pop         ecx
 00545183    mov         dword ptr fs:[eax],edx
 00545186    push        5451A8
 0054518B    lea         eax,[ebp-3C]
 0054518E    mov         edx,0D
 00545193    call        @LStrArrayClr
 00545198    lea         eax,[ebp-4]
 0054519B    call        @LStrClr
 005451A0    ret
>005451A1    jmp         @HandleFinally
>005451A6    jmp         0054518B
 005451A8    mov         esp,ebp
 005451AA    pop         ebp
 005451AB    ret
*}
end;

//005451D0
procedure sub_005451D0;
begin
{*
 005451D0    push        ebp
 005451D1    mov         ebp,esp
 005451D3    xor         ecx,ecx
 005451D5    push        ecx
 005451D6    push        ecx
 005451D7    push        ecx
 005451D8    push        ecx
 005451D9    xor         eax,eax
 005451DB    push        ebp
 005451DC    push        545281
 005451E1    push        dword ptr fs:[eax]
 005451E4    mov         dword ptr fs:[eax],esp
 005451E7    mov         eax,[0056E284];^gvar_0056DF34
 005451EC    mov         eax,dword ptr [eax]
 005451EE    mov         eax,dword ptr [eax+40C]
 005451F4    cmp         byte ptr [eax+38],0
>005451F8    je          00545266
 005451FA    lea         edx,[ebp-8]
 005451FD    xor         eax,eax
 005451FF    call        00403214
 00545204    mov         eax,dword ptr [ebp-8]
 00545207    lea         edx,[ebp-4]
 0054520A    call        0040CC5C
 0054520F    lea         eax,[ebp-4]
 00545212    mov         edx,545294;'SOUND.WAV'
 00545217    call        @LStrCat
 0054521C    mov         eax,dword ptr [ebp-4]
 0054521F    call        0040C94C
 00545224    test        al,al
>00545226    je          00545261
 00545228    push        20000
 0054522D    push        0
 0054522F    lea         edx,[ebp-10]
 00545232    xor         eax,eax
 00545234    call        00403214
 00545239    mov         eax,dword ptr [ebp-10]
 0054523C    lea         edx,[ebp-0C]
 0054523F    call        0040CC5C
 00545244    lea         eax,[ebp-0C]
 00545247    mov         edx,545294;'SOUND.WAV'
 0054524C    call        @LStrCat
 00545251    mov         eax,dword ptr [ebp-0C]
 00545254    call        @LStrToPChar
 00545259    push        eax
 0054525A    call        winmm.PlaySound
>0054525F    jmp         00545266
 00545261    call        004110A8
 00545266    xor         eax,eax
 00545268    pop         edx
 00545269    pop         ecx
 0054526A    pop         ecx
 0054526B    mov         dword ptr fs:[eax],edx
 0054526E    push        545288
 00545273    lea         eax,[ebp-10]
 00545276    mov         edx,4
 0054527B    call        @LStrArrayClr
 00545280    ret
>00545281    jmp         @HandleFinally
>00545286    jmp         00545273
 00545288    mov         esp,ebp
 0054528A    pop         ebp
 0054528B    ret
*}
end;

//005452A0
{*procedure sub_005452A0(?:?; ?:AnsiString);
begin
 005452A0    push        ebp
 005452A1    mov         ebp,esp
 005452A3    add         esp,0FFFFFFF8
 005452A6    mov         dword ptr [ebp-8],edx
 005452A9    mov         word ptr [ebp-2],ax
 005452AD    movzx       eax,word ptr [ebp-2]
 005452B1    cmp         eax,133
>005452B6    ja          005467A7
 005452BC    jmp         dword ptr [eax*4+5452C3]
 005452BC    dd          005467A7
 005452BC    dd          00545793
 005452BC    dd          005457A5
 005452BC    dd          005457B7
 005452BC    dd          005457C9
 005452BC    dd          005457DB
 005452BC    dd          005457ED
 005452BC    dd          005457FF
 005452BC    dd          00545811
 005452BC    dd          00545823
 005452BC    dd          00545835
 005452BC    dd          00545847
 005452BC    dd          00545859
 005452BC    dd          0054586B
 005452BC    dd          0054587D
 005452BC    dd          0054588F
 005452BC    dd          005458A1
 005452BC    dd          005458B3
 005452BC    dd          005458C5
 005452BC    dd          005458D7
 005452BC    dd          005458E9
 005452BC    dd          005458FB
 005452BC    dd          0054590D
 005452BC    dd          0054591F
 005452BC    dd          00545931
 005452BC    dd          00545943
 005452BC    dd          00545955
 005452BC    dd          00545967
 005452BC    dd          00545979
 005452BC    dd          0054598B
 005452BC    dd          0054599D
 005452BC    dd          005459AF
 005452BC    dd          005459C1
 005452BC    dd          005459D3
 005452BC    dd          005459E5
 005452BC    dd          005459F7
 005452BC    dd          00545A09
 005452BC    dd          00545A1B
 005452BC    dd          00545A2D
 005452BC    dd          00545A3F
 005452BC    dd          00545A51
 005452BC    dd          00545A63
 005452BC    dd          00545A75
 005452BC    dd          00545A87
 005452BC    dd          00545A99
 005452BC    dd          00545AAB
 005452BC    dd          00545ABD
 005452BC    dd          00545ACF
 005452BC    dd          00545AE1
 005452BC    dd          00545AF3
 005452BC    dd          00545B05
 005452BC    dd          00545B17
 005452BC    dd          00545B29
 005452BC    dd          00545B3B
 005452BC    dd          00545B4D
 005452BC    dd          00545BDD
 005452BC    dd          00545B5F
 005452BC    dd          005467A7
 005452BC    dd          00545B71
 005452BC    dd          00545B83
 005452BC    dd          00545B95
 005452BC    dd          00545BA7
 005452BC    dd          00545BB9
 005452BC    dd          00545BCB
 005452BC    dd          00545BEF
 005452BC    dd          00545C01
 005452BC    dd          00545C13
 005452BC    dd          00545C25
 005452BC    dd          00545C37
 005452BC    dd          00545C49
 005452BC    dd          00545C5B
 005452BC    dd          00545C6D
 005452BC    dd          00545D21
 005452BC    dd          00545C7F
 005452BC    dd          00545C91
 005452BC    dd          00545CA3
 005452BC    dd          00545CB5
 005452BC    dd          00545CC7
 005452BC    dd          00545CD9
 005452BC    dd          00545CEB
 005452BC    dd          00545D33
 005452BC    dd          00545D45
 005452BC    dd          00545D57
 005452BC    dd          00545D69
 005452BC    dd          005467A7
 005452BC    dd          00545D7B
 005452BC    dd          00545D8D
 005452BC    dd          00545D9F
 005452BC    dd          00545DB1
 005452BC    dd          00545DC3
 005452BC    dd          00545CFD
 005452BC    dd          00545DD5
 005452BC    dd          00545DE7
 005452BC    dd          00545DF9
 005452BC    dd          00545E0B
 005452BC    dd          00545E1D
 005452BC    dd          00545E2F
 005452BC    dd          00545E41
 005452BC    dd          00545E53
 005452BC    dd          00545E65
 005452BC    dd          00545E77
 005452BC    dd          00545F97
 005452BC    dd          00545E89
 005452BC    dd          00545E9B
 005452BC    dd          00545EAD
 005452BC    dd          00545EBF
 005452BC    dd          00545ED1
 005452BC    dd          00545D0F
 005452BC    dd          00545EE3
 005452BC    dd          00545EF5
 005452BC    dd          00545F07
 005452BC    dd          00545F19
 005452BC    dd          00545F2B
 005452BC    dd          00545F3D
 005452BC    dd          00545FA9
 005452BC    dd          00545FBB
 005452BC    dd          00545FCD
 005452BC    dd          00545FDF
 005452BC    dd          00545F4F
 005452BC    dd          00545FF1
 005452BC    dd          00546003
 005452BC    dd          00546015
 005452BC    dd          00546027
 005452BC    dd          00545F61
 005452BC    dd          00545F73
 005452BC    dd          00546039
 005452BC    dd          0054604B
 005452BC    dd          0054605D
 005452BC    dd          0054606F
 005452BC    dd          00546081
 005452BC    dd          00546093
 005452BC    dd          005460A5
 005452BC    dd          005460B7
 005452BC    dd          00545F85
 005452BC    dd          005460C9
 005452BC    dd          005460DB
 005452BC    dd          005460ED
 005452BC    dd          005460FF
 005452BC    dd          00546111
 005452BC    dd          00546123
 005452BC    dd          00546135
 005452BC    dd          00546147
 005452BC    dd          00546159
 005452BC    dd          0054616B
 005452BC    dd          0054617D
 005452BC    dd          0054618F
 005452BC    dd          005461A1
 005452BC    dd          005461B3
 005452BC    dd          005461C5
 005452BC    dd          005461D7
 005452BC    dd          005461E9
 005452BC    dd          005461FB
 005452BC    dd          0054620D
 005452BC    dd          0054621F
 005452BC    dd          00546231
 005452BC    dd          00546243
 005452BC    dd          00546255
 005452BC    dd          00546267
 005452BC    dd          00546279
 005452BC    dd          0054628B
 005452BC    dd          0054629D
 005452BC    dd          005462AF
 005452BC    dd          005462C1
 005452BC    dd          005462D3
 005452BC    dd          005462E5
 005452BC    dd          005462F7
 005452BC    dd          00546309
 005452BC    dd          0054631B
 005452BC    dd          0054632D
 005452BC    dd          0054633F
 005452BC    dd          00546351
 005452BC    dd          00546363
 005452BC    dd          00546375
 005452BC    dd          00546387
 005452BC    dd          00546399
 005452BC    dd          005463AB
 005452BC    dd          005463BD
 005452BC    dd          005463CF
 005452BC    dd          005463E1
 005452BC    dd          005463F3
 005452BC    dd          00546405
 005452BC    dd          00546417
 005452BC    dd          00546429
 005452BC    dd          0054643B
 005452BC    dd          0054644D
 005452BC    dd          0054645F
 005452BC    dd          00546471
 005452BC    dd          00546483
 005452BC    dd          00546495
 005452BC    dd          005464A7
 005452BC    dd          005464B9
 005452BC    dd          005464CB
 005452BC    dd          005464DD
 005452BC    dd          005464EF
 005452BC    dd          00546501
 005452BC    dd          00546513
 005452BC    dd          00546525
 005452BC    dd          005467A7
 005452BC    dd          00546537
 005452BC    dd          00546549
 005452BC    dd          0054655B
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          0054656D
 005452BC    dd          005467A7
 005452BC    dd          0054657F
 005452BC    dd          00546591
 005452BC    dd          005465A3
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005465B5
 005452BC    dd          005467A7
 005452BC    dd          005465C7
 005452BC    dd          005467A7
 005452BC    dd          005465D9
 005452BC    dd          005467A7
 005452BC    dd          005465EB
 005452BC    dd          005467A7
 005452BC    dd          005465FD
 005452BC    dd          0054660F
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          00546621
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          00546633
 005452BC    dd          00546645
 005452BC    dd          005467A7
 005452BC    dd          00546657
 005452BC    dd          00546669
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          0054667B
 005452BC    dd          0054668D
 005452BC    dd          005467A7
 005452BC    dd          0054669F
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005466B1
 005452BC    dd          005466C3
 005452BC    dd          005467A7
 005452BC    dd          005466D5
 005452BC    dd          005467A7
 005452BC    dd          005466E7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005466F9
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          0054670B
 005452BC    dd          005467A7
 005452BC    dd          0054671D
 005452BC    dd          0054672F
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          0054673E
 005452BC    dd          0054674D
 005452BC    dd          005467A7
 005452BC    dd          0054675C
 005452BC    dd          0054676B
 005452BC    dd          005467A7
 005452BC    dd          0054677A
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          00546789
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          005467A7
 005452BC    dd          00546798
 00545793    mov         eax,dword ptr [ebp-8]
 00545796    mov         edx,5467C0;'Perco C7_C8'
 0054579B    call        @LStrAsg
>005457A0    jmp         005467B4
 005457A5    mov         eax,dword ptr [ebp-8]
 005457A8    mov         edx,5467D4;'Mirage'
 005457AD    call        @LStrAsg
>005457B2    jmp         005467B4
 005457B7    mov         eax,dword ptr [ebp-8]
 005457BA    mov         edx,5467E4;'Unknown'
 005457BF    call        @LStrAsg
>005457C4    jmp         005467B4
 005457C9    mov         eax,dword ptr [ebp-8]
 005457CC    mov         edx,5467F4;'Cheetah'
 005457D1    call        @LStrAsg
>005457D6    jmp         005467B4
 005457DB    mov         eax,dword ptr [ebp-8]
 005457DE    mov         edx,546804;'Perco C9_C10'
 005457E3    call        @LStrAsg
>005457E8    jmp         005467B4
 005457ED    mov         eax,dword ptr [ebp-8]
 005457F0    mov         edx,54681C;'Bandit'
 005457F5    call        @LStrAsg
>005457FA    jmp         005467B4
 005457FF    mov         eax,dword ptr [ebp-8]
 00545802    mov         edx,54682C;'Phoenix'
 00545807    call        @LStrAsg
>0054580C    jmp         005467B4
 00545811    mov         eax,dword ptr [ebp-8]
 00545814    mov         edx,54683C;'Century'
 00545819    call        @LStrAsg
>0054581E    jmp         005467B4
 00545823    mov         eax,dword ptr [ebp-8]
 00545826    mov         edx,54684C;'Genesis'
 0054582B    call        @LStrAsg
>00545830    jmp         005467B4
 00545835    mov         eax,dword ptr [ebp-8]
 00545838    mov         edx,54685C;'Mako'
 0054583D    call        @LStrAsg
>00545842    jmp         005467B4
 00545847    mov         eax,dword ptr [ebp-8]
 0054584A    mov         edx,54686C;'Panther'
 0054584F    call        @LStrAsg
>00545854    jmp         005467B4
 00545859    mov         eax,dword ptr [ebp-8]
 0054585C    mov         edx,54687C;'Tucson'
 00545861    call        @LStrAsg
>00545866    jmp         005467B4
 0054586B    mov         eax,dword ptr [ebp-8]
 0054586E    mov         edx,5467E4;'Unknown'
 00545873    call        @LStrAsg
>00545878    jmp         005467B4
 0054587D    mov         eax,dword ptr [ebp-8]
 00545880    mov         edx,54688C;'Sedona'
 00545885    call        @LStrAsg
>0054588A    jmp         005467B4
 0054588F    mov         eax,dword ptr [ebp-8]
 00545892    mov         edx,54689C;'Jaguar'
 00545897    call        @LStrAsg
>0054589C    jmp         005467B4
 005458A1    mov         eax,dword ptr [ebp-8]
 005458A4    mov         edx,5468AC;'Chandler'
 005458A9    call        @LStrAsg
>005458AE    jmp         005467B4
 005458B3    mov         eax,dword ptr [ebp-8]
 005458B6    mov         edx,5468C0;'Flagstaff XX'
 005458BB    call        @LStrAsg
>005458C0    jmp         005467B4
 005458C5    mov         eax,dword ptr [ebp-8]
 005458C8    mov         edx,5468D8;'Tiger'
 005458CD    call        @LStrAsg
>005458D2    jmp         005467B4
 005458D7    mov         eax,dword ptr [ebp-8]
 005458DA    mov         edx,5468E8;'Puma (P15iL)'
 005458DF    call        @LStrAsg
>005458E4    jmp         005467B4
 005458E9    mov         eax,dword ptr [ebp-8]
 005458EC    mov         edx,546900;'Lynx (P15i)'
 005458F1    call        @LStrAsg
>005458F6    jmp         005467B4
 005458FB    mov         eax,dword ptr [ebp-8]
 005458FE    mov         edx,546914;'Rebel'
 00545903    call        @LStrAsg
>00545908    jmp         005467B4
 0054590D    mov         eax,dword ptr [ebp-8]
 00545910    mov         edx,546924;'Flagstaff'
 00545915    call        @LStrAsg
>0054591A    jmp         005467B4
 0054591F    mov         eax,dword ptr [ebp-8]
 00545922    mov         edx,546938;'Chandler PX'
 00545927    call        @LStrAsg
>0054592C    jmp         005467B4
 00545931    mov         eax,dword ptr [ebp-8]
 00545934    mov         edx,54694C;'Hunter'
 00545939    call        @LStrAsg
>0054593E    jmp         005467B4
 00545943    mov         eax,dword ptr [ebp-8]
 00545946    mov         edx,54695C;'Revolution'
 0054594B    call        @LStrAsg
>00545950    jmp         005467B4
 00545955    mov         eax,dword ptr [ebp-8]
 00545958    mov         edx,546970;'Avenger (Invader XL100)'
 0054595D    call        @LStrAsg
>00545962    jmp         005467B4
 00545967    mov         eax,dword ptr [ebp-8]
 0054596A    mov         edx,546990;'Triumph'
 0054596F    call        @LStrAsg
>00545974    jmp         005467B4
 00545979    mov         eax,dword ptr [ebp-8]
 0054597C    mov         edx,5469A0;'Millennium'
 00545981    call        @LStrAsg
>00545986    jmp         005467B4
 0054598B    mov         eax,dword ptr [ebp-8]
 0054598E    mov         edx,5469B4;'Invader'
 00545993    call        @LStrAsg
>00545998    jmp         005467B4
 0054599D    mov         eax,dword ptr [ebp-8]
 005459A0    mov         edx,5469C4;'Rhino (Summit)'
 005459A5    call        @LStrAsg
>005459AA    jmp         005467B4
 005459AF    mov         eax,dword ptr [ebp-8]
 005459B2    mov         edx,5469DC;'Millennium Plus'
 005459B7    call        @LStrAsg
>005459BC    jmp         005467B4
 005459C1    mov         eax,dword ptr [ebp-8]
 005459C4    mov         edx,5469F4;'Performer27i'
 005459C9    call        @LStrAsg
>005459CE    jmp         005467B4
 005459D3    mov         eax,dword ptr [ebp-8]
 005459D6    mov         edx,546A0C;'Performer30i'
 005459DB    call        @LStrAsg
>005459E0    jmp         005467B4
 005459E5    mov         eax,dword ptr [ebp-8]
 005459E8    mov         edx,546A24;'Performer30iL'
 005459ED    call        @LStrAsg
>005459F2    jmp         005467B4
 005459F7    mov         eax,dword ptr [ebp-8]
 005459FA    mov         edx,546A3C;'Spartan'
 005459FF    call        @LStrAsg
>00545A04    jmp         005467B4
 00545A09    mov         eax,dword ptr [ebp-8]
 00545A0C    mov         edx,546A4C;'Radical'
 00545A11    call        @LStrAsg
>00545A16    jmp         005467B4
 00545A1B    mov         eax,dword ptr [ebp-8]
 00545A1E    mov         edx,546A5C;'Invader XL2'
 00545A23    call        @LStrAsg
>00545A28    jmp         005467B4
 00545A2D    mov         eax,dword ptr [ebp-8]
 00545A30    mov         edx,546A70;'Xtreme'
 00545A35    call        @LStrAsg
>00545A3A    jmp         005467B4
 00545A3F    mov         eax,dword ptr [ebp-8]
 00545A42    mov         edx,546A80;'Xtreme 2'
 00545A47    call        @LStrAsg
>00545A4C    jmp         005467B4
 00545A51    mov         eax,dword ptr [ebp-8]
 00545A54    mov         edx,546A94;'Invader XL2 5400'
 00545A59    call        @LStrAsg
>00545A5E    jmp         005467B4
 00545A63    mov         eax,dword ptr [ebp-8]
 00545A66    mov         edx,546AB0;'Predator'
 00545A6B    call        @LStrAsg
>00545A70    jmp         005467B4
 00545A75    mov         eax,dword ptr [ebp-8]
 00545A78    mov         edx,546AC4;'Centurion (Invader Xl3)'
 00545A7D    call        @LStrAsg
>00545A82    jmp         005467B4
 00545A87    mov         eax,dword ptr [ebp-8]
 00545A8A    mov         edx,546AE4;'Renegade'
 00545A8F    call        @LStrAsg
>00545A94    jmp         005467B4
 00545A99    mov         eax,dword ptr [ebp-8]
 00545A9C    mov         edx,546AF8;'Centurion VL'
 00545AA1    call        @LStrAsg
>00545AA6    jmp         005467B4
 00545AAB    mov         eax,dword ptr [ebp-8]
 00545AAE    mov         edx,546B10;'Maverick'
 00545AB3    call        @LStrAsg
>00545AB8    jmp         005467B4
 00545ABD    mov         eax,dword ptr [ebp-8]
 00545AC0    mov         edx,546B24;'Centurion Talon'
 00545AC5    call        @LStrAsg
>00545ACA    jmp         005467B4
 00545ACF    mov         eax,dword ptr [ebp-8]
 00545AD2    mov         edx,546B3C;'Centurion XL2 7200'
 00545AD7    call        @LStrAsg
>00545ADC    jmp         005467B4
 00545AE1    mov         eax,dword ptr [ebp-8]
 00545AE4    mov         edx,546B58;'Centurion Protege'
 00545AE9    call        @LStrAsg
>00545AEE    jmp         005467B4
 00545AF3    mov         eax,dword ptr [ebp-8]
 00545AF6    mov         edx,546B74;'X-Box (VL20II) 5400'
 00545AFB    call        @LStrAsg
>00545B00    jmp         005467B4
 00545B05    mov         eax,dword ptr [ebp-8]
 00545B08    mov         edx,546B90;'Centurion Talon XL2'
 00545B0D    call        @LStrAsg
>00545B12    jmp         005467B4
 00545B17    mov         eax,dword ptr [ebp-8]
 00545B1A    mov         edx,546BAC;'Xtreme VL40'
 00545B1F    call        @LStrAsg
>00545B24    jmp         005467B4
 00545B29    mov         eax,dword ptr [ebp-8]
 00545B2C    mov         edx,546BC0;'Maverick 5400'
 00545B31    call        @LStrAsg
>00545B36    jmp         005467B4
 00545B3B    mov         eax,dword ptr [ebp-8]
 00545B3E    mov         edx,546BD8;'Xtreme VL20'
 00545B43    call        @LStrAsg
>00545B48    jmp         005467B4
 00545B4D    mov         eax,dword ptr [ebp-8]
 00545B50    mov         edx,546BEC;'Centurion Talon LE'
 00545B55    call        @LStrAsg
>00545B5A    jmp         005467B4
 00545B5F    mov         eax,dword ptr [ebp-8]
 00545B62    mov         edx,546C08;'Eclipse 7200'
 00545B67    call        @LStrAsg
>00545B6C    jmp         005467B4
 00545B71    mov         eax,dword ptr [ebp-8]
 00545B74    mov         edx,546C20;'XBox-LE (WDC)'
 00545B79    call        @LStrAsg
>00545B7E    jmp         005467B4
 00545B83    mov         eax,dword ptr [ebp-8]
 00545B86    mov         edx,546C38;'Voyager'
 00545B8B    call        @LStrAsg
>00545B90    jmp         005467B4
 00545B95    mov         eax,dword ptr [ebp-8]
 00545B98    mov         edx,546C48;'Stinger'
 00545B9D    call        @LStrAsg
>00545BA2    jmp         005467B4
 00545BA7    mov         eax,dword ptr [ebp-8]
 00545BAA    mov         edx,546C58;'Maverick_Marvell_7200'
 00545BAF    call        @LStrAsg
>00545BB4    jmp         005467B4
 00545BB9    mov         eax,dword ptr [ebp-8]
 00545BBC    mov         edx,546C78;'Maverick_Marvell_5400'
 00545BC1    call        @LStrAsg
>00545BC6    jmp         005467B4
 00545BCB    mov         eax,dword ptr [ebp-8]
 00545BCE    mov         edx,546C98;'Neo'
 00545BD3    call        @LStrAsg
>00545BD8    jmp         005467B4
 00545BDD    mov         eax,dword ptr [ebp-8]
 00545BE0    mov         edx,546CA4;'Pioneer XL5 (WDC)'
 00545BE5    call        @LStrAsg
>00545BEA    jmp         005467B4
 00545BEF    mov         eax,dword ptr [ebp-8]
 00545BF2    mov         edx,546CC0;'Xenon (WDC)'
 00545BF7    call        @LStrAsg
>00545BFC    jmp         005467B4
 00545C01    mov         eax,dword ptr [ebp-8]
 00545C04    mov         edx,546CD4;'Safari (WDC Raptor)'
 00545C09    call        @LStrAsg
>00545C0E    jmp         005467B4
 00545C13    mov         eax,dword ptr [ebp-8]
 00545C16    mov         edx,546CF0;'Tsuname'
 00545C1B    call        @LStrAsg
>00545C20    jmp         005467B4
 00545C25    mov         eax,dword ptr [ebp-8]
 00545C28    mov         edx,546D00;'Cyclone'
 00545C2D    call        @LStrAsg
>00545C32    jmp         005467B4
 00545C37    mov         eax,dword ptr [ebp-8]
 00545C3A    mov         edx,546D10;'Puma'
 00545C3F    call        @LStrAsg
>00545C44    jmp         005467B4
 00545C49    mov         eax,dword ptr [ebp-8]
 00545C4C    mov         edx,546D20;'Trailblazer (WDC)'
 00545C51    call        @LStrAsg
>00545C56    jmp         005467B4
 00545C5B    mov         eax,dword ptr [ebp-8]
 00545C5E    mov         edx,546D3C;'Expedition (WDC Raptor)'
 00545C63    call        @LStrAsg
>00545C68    jmp         005467B4
 00545C6D    mov         eax,dword ptr [ebp-8]
 00545C70    mov         edx,546D5C;'Pioneer VKFCI (WDC)'
 00545C75    call        @LStrAsg
>00545C7A    jmp         005467B4
 00545C7F    mov         eax,dword ptr [ebp-8]
 00545C82    mov         edx,546D78;'Polaris SL80 (WDC)'
 00545C87    call        @LStrAsg
>00545C8C    jmp         005467B4
 00545C91    mov         eax,dword ptr [ebp-8]
 00545C94    mov         edx,546D94;'Nova'
 00545C99    call        @LStrAsg
>00545C9E    jmp         005467B4
 00545CA3    mov         eax,dword ptr [ebp-8]
 00545CA6    mov         edx,546DA4;'Zenon_Aspen (WDC)'
 00545CAB    call        @LStrAsg
>00545CB0    jmp         005467B4
 00545CB5    mov         eax,dword ptr [ebp-8]
 00545CB8    mov         edx,546DC0;'Eclipse 2 (WDC)'
 00545CBD    call        @LStrAsg
>00545CC2    jmp         005467B4
 00545CC7    mov         eax,dword ptr [ebp-8]
 00545CCA    mov         edx,546DD8;'Safari_SE'
 00545CCF    call        @LStrAsg
>00545CD4    jmp         005467B4
 00545CD9    mov         eax,dword ptr [ebp-8]
 00545CDC    mov         edx,546DEC;'Eagle (WDC)'
 00545CE1    call        @LStrAsg
>00545CE6    jmp         005467B4
 00545CEB    mov         eax,dword ptr [ebp-8]
 00545CEE    mov         edx,546E00;'Polaris_Falcon'
 00545CF3    call        @LStrAsg
>00545CF8    jmp         005467B4
 00545CFD    mov         eax,dword ptr [ebp-8]
 00545D00    mov         edx,546E18;'Hercules (WDC New)'
 00545D05    call        @LStrAsg
>00545D0A    jmp         005467B4
 00545D0F    mov         eax,dword ptr [ebp-8]
 00545D12    mov         edx,546E34;'Odyssey (WDC New)'
 00545D17    call        @LStrAsg
>00545D1C    jmp         005467B4
 00545D21    mov         eax,dword ptr [ebp-8]
 00545D24    mov         edx,546E50;'Mammoth'
 00545D29    call        @LStrAsg
>00545D2E    jmp         005467B4
 00545D33    mov         eax,dword ptr [ebp-8]
 00545D36    mov         edx,546E60;'Scorpio'
 00545D3B    call        @LStrAsg
>00545D40    jmp         005467B4
 00545D45    mov         eax,dword ptr [ebp-8]
 00545D48    mov         edx,546E70;'Scorpio_Mammoth'
 00545D4D    call        @LStrAsg
>00545D52    jmp         005467B4
 00545D57    mov         eax,dword ptr [ebp-8]
 00545D5A    mov         edx,546E88;'Scorpio_Aspen'
 00545D5F    call        @LStrAsg
>00545D64    jmp         005467B4
 00545D69    mov         eax,dword ptr [ebp-8]
 00545D6C    mov         edx,546EA0;'Sabre'
 00545D71    call        @LStrAsg
>00545D76    jmp         005467B4
 00545D7B    mov         eax,dword ptr [ebp-8]
 00545D7E    mov         edx,546EB0;'MammothM'
 00545D83    call        @LStrAsg
>00545D88    jmp         005467B4
 00545D8D    mov         eax,dword ptr [ebp-8]
 00545D90    mov         edx,546EC4;'Balboa'
 00545D95    call        @LStrAsg
>00545D9A    jmp         005467B4
 00545D9F    mov         eax,dword ptr [ebp-8]
 00545DA2    mov         edx,546ED4;'Lido'
 00545DA7    call        @LStrAsg
>00545DAC    jmp         005467B4
 00545DB1    mov         eax,dword ptr [ebp-8]
 00545DB4    mov         edx,546EE4;'Unicorn'
 00545DB9    call        @LStrAsg
>00545DBE    jmp         005467B4
 00545DC3    mov         eax,dword ptr [ebp-8]
 00545DC6    mov         edx,546EF4;'Sabre_LC'
 00545DCB    call        @LStrAsg
>00545DD0    jmp         005467B4
 00545DD5    mov         eax,dword ptr [ebp-8]
 00545DD8    mov         edx,546F08;'Buccaneer'
 00545DDD    call        @LStrAsg
>00545DE2    jmp         005467B4
 00545DE7    mov         eax,dword ptr [ebp-8]
 00545DEA    mov         edx,546F1C;'Avalon'
 00545DEF    call        @LStrAsg
>00545DF4    jmp         005467B4
 00545DF9    mov         eax,dword ptr [ebp-8]
 00545DFC    mov         edx,546F2C;'Xbox2'
 00545E01    call        @LStrAsg
>00545E06    jmp         005467B4
 00545E0B    mov         eax,dword ptr [ebp-8]
 00545E0E    mov         edx,546F3C;'Mosquito'
 00545E13    call        @LStrAsg
>00545E18    jmp         005467B4
 00545E1D    mov         eax,dword ptr [ebp-8]
 00545E20    mov         edx,546F50;'Defender'
 00545E25    call        @LStrAsg
>00545E2A    jmp         005467B4
 00545E2F    mov         eax,dword ptr [ebp-8]
 00545E32    mov         edx,546F64;'Catalina'
 00545E37    call        @LStrAsg
>00545E3C    jmp         005467B4
 00545E41    mov         eax,dword ptr [ebp-8]
 00545E44    mov         edx,546F78;'Unicorn2'
 00545E49    call        @LStrAsg
>00545E4E    jmp         005467B4
 00545E53    mov         eax,dword ptr [ebp-8]
 00545E56    mov         edx,546F8C;'Sirius'
 00545E5B    call        @LStrAsg
>00545E60    jmp         005467B4
 00545E65    mov         eax,dword ptr [ebp-8]
 00545E68    mov         edx,546F9C;'Hawk'
 00545E6D    call        @LStrAsg
>00545E72    jmp         005467B4
 00545E77    mov         eax,dword ptr [ebp-8]
 00545E7A    mov         edx,546FAC;'Antares'
 00545E7F    call        @LStrAsg
>00545E84    jmp         005467B4
 00545E89    mov         eax,dword ptr [ebp-8]
 00545E8C    mov         edx,546FBC;'STG_DFH'
 00545E91    call        @LStrAsg
>00545E96    jmp         005467B4
 00545E9B    mov         eax,dword ptr [ebp-8]
 00545E9E    mov         edx,546FCC;'STG_VDT'
 00545EA3    call        @LStrAsg
>00545EA8    jmp         005467B4
 00545EAD    mov         eax,dword ptr [ebp-8]
 00545EB0    mov         edx,546FDC;'Zeus'
 00545EB5    call        @LStrAsg
>00545EBA    jmp         005467B4
 00545EBF    mov         eax,dword ptr [ebp-8]
 00545EC2    mov         edx,546FEC;'Sargus'
 00545EC7    call        @LStrAsg
>00545ECC    jmp         005467B4
 00545ED1    mov         eax,dword ptr [ebp-8]
 00545ED4    mov         edx,546FFC;'Taurus'
 00545ED9    call        @LStrAsg
>00545EDE    jmp         005467B4
 00545EE3    mov         eax,dword ptr [ebp-8]
 00545EE6    mov         edx,54700C;'Hercules SAE'
 00545EEB    call        @LStrAsg
>00545EF0    jmp         005467B4
 00545EF5    mov         eax,dword ptr [ebp-8]
 00545EF8    mov         edx,547024;'STG_VDT2'
 00545EFD    call        @LStrAsg
>00545F02    jmp         005467B4
 00545F07    mov         eax,dword ptr [ebp-8]
 00545F0A    mov         edx,547038;'Zeus6'
 00545F0F    call        @LStrAsg
>00545F14    jmp         005467B4
 00545F19    mov         eax,dword ptr [ebp-8]
 00545F1C    mov         edx,547048;'Raider'
 00545F21    call        @LStrAsg
>00545F26    jmp         005467B4
 00545F2B    mov         eax,dword ptr [ebp-8]
 00545F2E    mov         edx,547058;'Neptune'
 00545F33    call        @LStrAsg
>00545F38    jmp         005467B4
 00545F3D    mov         eax,dword ptr [ebp-8]
 00545F40    mov         edx,547068;'Zeus_RE'
 00545F45    call        @LStrAsg
>00545F4A    jmp         005467B4
 00545F4F    mov         eax,dword ptr [ebp-8]
 00545F52    mov         edx,547078;'Starling'
 00545F57    call        @LStrAsg
>00545F5C    jmp         005467B4
 00545F61    mov         eax,dword ptr [ebp-8]
 00545F64    mov         edx,54708C;'Starling2'
 00545F69    call        @LStrAsg
>00545F6E    jmp         005467B4
 00545F73    mov         eax,dword ptr [ebp-8]
 00545F76    mov         edx,5470A0;'Hawk2'
 00545F7B    call        @LStrAsg
>00545F80    jmp         005467B4
 00545F85    mov         eax,dword ptr [ebp-8]
 00545F88    mov         edx,5470B0;'Unicorn6'
 00545F8D    call        @LStrAsg
>00545F92    jmp         005467B4
 00545F97    mov         eax,dword ptr [ebp-8]
 00545F9A    mov         edx,5470C4;'Orion (Marvell-Royl)'
 00545F9F    call        @LStrAsg
>00545FA4    jmp         005467B4
 00545FA9    mov         eax,dword ptr [ebp-8]
 00545FAC    mov         edx,5470E4;'STG_Zuma'
 00545FB1    call        @LStrAsg
>00545FB6    jmp         005467B4
 00545FBB    mov         eax,dword ptr [ebp-8]
 00545FBE    mov         edx,5470F8;'Aquarius (Marvell-Royl)'
 00545FC3    call        @LStrAsg
>00545FC8    jmp         005467B4
 00545FCD    mov         eax,dword ptr [ebp-8]
 00545FD0    mov         edx,547118;'Sequoia'
 00545FD5    call        @LStrAsg
>00545FDA    jmp         005467B4
 00545FDF    mov         eax,dword ptr [ebp-8]
 00545FE2    mov         edx,547128;'Jupiter'
 00545FE7    call        @LStrAsg
>00545FEC    jmp         005467B4
 00545FF1    mov         eax,dword ptr [ebp-8]
 00545FF4    mov         edx,547138;'Glacier'
 00545FF9    call        @LStrAsg
>00545FFE    jmp         005467B4
 00546003    mov         eax,dword ptr [ebp-8]
 00546006    mov         edx,547148;'Aries (Royl)'
 0054600B    call        @LStrAsg
>00546010    jmp         005467B4
 00546015    mov         eax,dword ptr [ebp-8]
 00546018    mov         edx,547160;'STG_Aris'
 0054601D    call        @LStrAsg
>00546022    jmp         005467B4
 00546027    mov         eax,dword ptr [ebp-8]
 0054602A    mov         edx,547174;'McKinley (Royl)'
 0054602F    call        @LStrAsg
>00546034    jmp         005467B4
 00546039    mov         eax,dword ptr [ebp-8]
 0054603C    mov         edx,54718C;'Tornado 2D (Royl)'
 00546041    call        @LStrAsg
>00546046    jmp         005467B4
 0054604B    mov         eax,dword ptr [ebp-8]
 0054604E    mov         edx,5471A8;'STG_McKinley'
 00546053    call        @LStrAsg
>00546058    jmp         005467B4
 0054605D    mov         eax,dword ptr [ebp-8]
 00546060    mov         edx,5471C0;'Sequoia_Zuma (Royl)'
 00546065    call        @LStrAsg
>0054606A    jmp         005467B4
 0054606F    mov         eax,dword ptr [ebp-8]
 00546072    mov         edx,5471DC;'Cricket'
 00546077    call        @LStrAsg
>0054607C    jmp         005467B4
 00546081    mov         eax,dword ptr [ebp-8]
 00546084    mov         edx,5471EC;'Tornado 3D (Royl)'
 00546089    call        @LStrAsg
>0054608E    jmp         005467B4
 00546093    mov         eax,dword ptr [ebp-8]
 00546096    mov         edx,547208;'STG_ARLB'
 0054609B    call        @LStrAsg
>005460A0    jmp         005467B4
 005460A5    mov         eax,dword ptr [ebp-8]
 005460A8    mov         edx,54721C;'STG_1K'
 005460AD    call        @LStrAsg
>005460B2    jmp         005467B4
 005460B7    mov         eax,dword ptr [ebp-8]
 005460BA    mov         edx,54722C;'STG_PATA'
 005460BF    call        @LStrAsg
>005460C4    jmp         005467B4
 005460C9    mov         eax,dword ptr [ebp-8]
 005460CC    mov         edx,547240;'Leo'
 005460D1    call        @LStrAsg
>005460D6    jmp         005467B4
 005460DB    mov         eax,dword ptr [ebp-8]
 005460DE    mov         edx,54724C;'STG_Vancuver'
 005460E3    call        @LStrAsg
>005460E8    jmp         005467B4
 005460ED    mov         eax,dword ptr [ebp-8]
 005460F0    mov         edx,547264;'Sequoia PATA (Royl)'
 005460F5    call        @LStrAsg
>005460FA    jmp         005467B4
 005460FF    mov         eax,dword ptr [ebp-8]
 00546102    mov         edx,547280;'Jupiter_Zuma (Royl)'
 00546107    call        @LStrAsg
>0054610C    jmp         005467B4
 00546111    mov         eax,dword ptr [ebp-8]
 00546114    mov         edx,54729C;'Tornado 2D PATA (Royl)'
 00546119    call        @LStrAsg
>0054611E    jmp         005467B4
 00546123    mov         eax,dword ptr [ebp-8]
 00546126    mov         edx,5472BC;'STG_Twin (Royl)'
 0054612B    call        @LStrAsg
>00546130    jmp         005467B4
 00546135    mov         eax,dword ptr [ebp-8]
 00546138    mov         edx,5472D4;'Tornado 3D PATA (Royl)'
 0054613D    call        @LStrAsg
>00546142    jmp         005467B4
 00546147    mov         eax,dword ptr [ebp-8]
 0054614A    mov         edx,5472F4;'Lynx (Royl)'
 0054614F    call        @LStrAsg
>00546154    jmp         005467B4
 00546159    mov         eax,dword ptr [ebp-8]
 0054615C    mov         edx,547308;'STG_VPMR (Royl)'
 00546161    call        @LStrAsg
>00546166    jmp         005467B4
 0054616B    mov         eax,dword ptr [ebp-8]
 0054616E    mov         edx,547320;'STG_Denali (Royl)'
 00546173    call        @LStrAsg
>00546178    jmp         005467B4
 0054617D    mov         eax,dword ptr [ebp-8]
 00546180    mov         edx,54733C;'Tornado 2D PMR (Royl)'
 00546185    call        @LStrAsg
>0054618A    jmp         005467B4
 0054618F    mov         eax,dword ptr [ebp-8]
 00546192    mov         edx,54735C;'Sequoia PMR (Royl)'
 00546197    call        @LStrAsg
>0054619C    jmp         005467B4
 005461A1    mov         eax,dword ptr [ebp-8]
 005461A4    mov         edx,547378;'Yosemite (Royl)'
 005461A9    call        @LStrAsg
>005461AE    jmp         005467B4
 005461B3    mov         eax,dword ptr [ebp-8]
 005461B6    mov         edx,547390;'Tornado 2D PMR PATA (Royl)'
 005461BB    call        @LStrAsg
>005461C0    jmp         005467B4
 005461C5    mov         eax,dword ptr [ebp-8]
 005461C8    mov         edx,5473B4;'Viking (Royl)'
 005461CD    call        @LStrAsg
>005461D2    jmp         005467B4
 005461D7    mov         eax,dword ptr [ebp-8]
 005461DA    mov         edx,5473CC;'Tornado 3D PMR (Royl)'
 005461DF    call        @LStrAsg
>005461E4    jmp         005467B4
 005461E9    mov         eax,dword ptr [ebp-8]
 005461EC    mov         edx,5473EC;'Hulk (Royl)'
 005461F1    call        @LStrAsg
>005461F6    jmp         005467B4
 005461FB    mov         eax,dword ptr [ebp-8]
 005461FE    mov         edx,547400;'Cougar (Royl)'
 00546203    call        @LStrAsg
>00546208    jmp         005467B4
 0054620D    mov         eax,dword ptr [ebp-8]
 00546210    mov         edx,547418;'Danu (Royl)'
 00546215    call        @LStrAsg
>0054621A    jmp         005467B4
 0054621F    mov         eax,dword ptr [ebp-8]
 00546222    mov         edx,54742C;'STG_Yosemite (Royl)'
 00546227    call        @LStrAsg
>0054622C    jmp         005467B4
 00546231    mov         eax,dword ptr [ebp-8]
 00546234    mov         edx,547448;'Tornado 3D PMR PATA (Royl)'
 00546239    call        @LStrAsg
>0054623E    jmp         005467B4
 00546243    mov         eax,dword ptr [ebp-8]
 00546246    mov         edx,54746C;'Spider (Royl)'
 0054624B    call        @LStrAsg
>00546250    jmp         005467B4
 00546255    mov         eax,dword ptr [ebp-8]
 00546258    mov         edx,547484;'STG_KODK (Royl)'
 0054625D    call        @LStrAsg
>00546262    jmp         005467B4
 00546267    mov         eax,dword ptr [ebp-8]
 0054626A    mov         edx,54749C;'Atlantis (Royl)'
 0054626F    call        @LStrAsg
>00546274    jmp         005467B4
 00546279    mov         eax,dword ptr [ebp-8]
 0054627C    mov         edx,5474B4;'Denali (Royl)'
 00546281    call        @LStrAsg
>00546286    jmp         005467B4
 0054628B    mov         eax,dword ptr [ebp-8]
 0054628E    mov         edx,5474CC;'Pinnacle (Royl)'
 00546293    call        @LStrAsg
>00546298    jmp         005467B4
 0054629D    mov         eax,dword ptr [ebp-8]
 005462A0    mov         edx,5474E4;'Mars (Royl)'
 005462A5    call        @LStrAsg
>005462AA    jmp         005467B4
 005462AF    mov         eax,dword ptr [ebp-8]
 005462B2    mov         edx,5474F8;'Nemo (Royl)'
 005462B7    call        @LStrAsg
>005462BC    jmp         005467B4
 005462C1    mov         eax,dword ptr [ebp-8]
 005462C4    mov         edx,54750C;'STG_Mercury (Royl)'
 005462C9    call        @LStrAsg
>005462CE    jmp         005467B4
 005462D3    mov         eax,dword ptr [ebp-8]
 005462D6    mov         edx,547528;'Sequoia_RE (Royl)'
 005462DB    call        @LStrAsg
>005462E0    jmp         005467B4
 005462E5    mov         eax,dword ptr [ebp-8]
 005462E8    mov         edx,547544;'Tornado 2D PMR RE (Royl)'
 005462ED    call        @LStrAsg
>005462F2    jmp         005467B4
 005462F7    mov         eax,dword ptr [ebp-8]
 005462FA    mov         edx,547568;'Tornado 3D PMR RE (Royl)'
 005462FF    call        @LStrAsg
>00546304    jmp         005467B4
 00546309    mov         eax,dword ptr [ebp-8]
 0054630C    mov         edx,54758C;'Hulk_RE (Royl)'
 00546311    call        @LStrAsg
>00546316    jmp         005467B4
 0054631B    mov         eax,dword ptr [ebp-8]
 0054631E    mov         edx,5475A4;'Spider_RE (Royl)'
 00546323    call        @LStrAsg
>00546328    jmp         005467B4
 0054632D    mov         eax,dword ptr [ebp-8]
 00546330    mov         edx,5475C0;'Sequoia PMR PATA (Royl)'
 00546335    call        @LStrAsg
>0054633A    jmp         005467B4
 0054633F    mov         eax,dword ptr [ebp-8]
 00546342    mov         edx,5475E0;'Sequoia_PMR 2M (Royl)'
 00546347    call        @LStrAsg
>0054634C    jmp         005467B4
 00546351    mov         eax,dword ptr [ebp-8]
 00546354    mov         edx,547600;'Yosemite_RE (Royl)'
 00546359    call        @LStrAsg
>0054635E    jmp         005467B4
 00546363    mov         eax,dword ptr [ebp-8]
 00546366    mov         edx,54761C;'Atlantis_RE (Royl)'
 0054636B    call        @LStrAsg
>00546370    jmp         005467B4
 00546375    mov         eax,dword ptr [ebp-8]
 00546378    mov         edx,547638;'Mars_RE (Royl)'
 0054637D    call        @LStrAsg
>00546382    jmp         005467B4
 00546387    mov         eax,dword ptr [ebp-8]
 0054638A    mov         edx,547650;'Emerald (Royl)'
 0054638F    call        @LStrAsg
>00546394    jmp         005467B4
 00546399    mov         eax,dword ptr [ebp-8]
 0054639C    mov         edx,547668;'STG_Yukon (Royl)'
 005463A1    call        @LStrAsg
>005463A6    jmp         005467B4
 005463AB    mov         eax,dword ptr [ebp-8]
 005463AE    mov         edx,547684;'Troy (Royl)'
 005463B3    call        @LStrAsg
>005463B8    jmp         005467B4
 005463BD    mov         eax,dword ptr [ebp-8]
 005463C0    mov         edx,547698;'Yukon (Royl)'
 005463C5    call        @LStrAsg
>005463CA    jmp         005467B4
 005463CF    mov         eax,dword ptr [ebp-8]
 005463D2    mov         edx,5476B0;'Kermit (Royl)'
 005463D7    call        @LStrAsg
>005463DC    jmp         005467B4
 005463E1    mov         eax,dword ptr [ebp-8]
 005463E4    mov         edx,5476C8;'Rigel (Royl)'
 005463E9    call        @LStrAsg
>005463EE    jmp         005467B4
 005463F3    mov         eax,dword ptr [ebp-8]
 005463F6    mov         edx,5476E0;'Saturn (Royl)'
 005463FB    call        @LStrAsg
>00546400    jmp         005467B4
 00546405    mov         eax,dword ptr [ebp-8]
 00546408    mov         edx,5476F8;'Pinnacle_RE (Royl)'
 0054640D    call        @LStrAsg
>00546412    jmp         005467B4
 00546417    mov         eax,dword ptr [ebp-8]
 0054641A    mov         edx,547714;'Venus (Royl)'
 0054641F    call        @LStrAsg
>00546424    jmp         005467B4
 00546429    mov         eax,dword ptr [ebp-8]
 0054642C    mov         edx,54772C;'Cypress (Royl)'
 00546431    call        @LStrAsg
>00546436    jmp         005467B4
 0054643B    mov         eax,dword ptr [ebp-8]
 0054643E    mov         edx,547744;'Mercury (Royl)'
 00546443    call        @LStrAsg
>00546448    jmp         005467B4
 0054644D    mov         eax,dword ptr [ebp-8]
 00546450    mov         edx,54775C;'Pinnacle_HF'
 00546455    call        @LStrAsg
>0054645A    jmp         005467B4
 0054645F    mov         eax,dword ptr [ebp-8]
 00546462    mov         edx,547770;'Atlantis_HF (Royl)'
 00546467    call        @LStrAsg
>0054646C    jmp         005467B4
 00546471    mov         eax,dword ptr [ebp-8]
 00546474    mov         edx,54778C;'Gekko (Royl)'
 00546479    call        @LStrAsg
>0054647E    jmp         005467B4
 00546483    mov         eax,dword ptr [ebp-8]
 00546486    mov         edx,5477A4;'Spartan_RE (Royl)'
 0054648B    call        @LStrAsg
>00546490    jmp         005467B4
 00546495    mov         eax,dword ptr [ebp-8]
 00546498    mov         edx,5477C0;'Pinnacle_PATA (Royl)'
 0054649D    call        @LStrAsg
>005464A2    jmp         005467B4
 005464A7    mov         eax,dword ptr [ebp-8]
 005464AA    mov         edx,5477E0;'Atlantis_PATA (Royl)'
 005464AF    call        @LStrAsg
>005464B4    jmp         005467B4
 005464B9    mov         eax,dword ptr [ebp-8]
 005464BC    mov         edx,547800;'Mars_HF (Royl)'
 005464C1    call        @LStrAsg
>005464C6    jmp         005467B4
 005464CB    mov         eax,dword ptr [ebp-8]
 005464CE    mov         edx,547818;'Pinnacle_E (Royl)'
 005464D3    call        @LStrAsg
>005464D8    jmp         005467B4
 005464DD    mov         eax,dword ptr [ebp-8]
 005464E0    mov         edx,547834;'Atlantis_E (Royl)'
 005464E5    call        @LStrAsg
>005464EA    jmp         005467B4
 005464EF    mov         eax,dword ptr [ebp-8]
 005464F2    mov         edx,547850;'Gekko_E (Royl)'
 005464F7    call        @LStrAsg
>005464FC    jmp         005467B4
 00546501    mov         eax,dword ptr [ebp-8]
 00546504    mov         edx,547868;'Kermit_E (Royl)'
 00546509    call        @LStrAsg
>0054650E    jmp         005467B4
 00546513    mov         eax,dword ptr [ebp-8]
 00546516    mov         edx,547880;'Mantis_RE (Royl)'
 0054651B    call        @LStrAsg
>00546520    jmp         005467B4
 00546525    mov         eax,dword ptr [ebp-8]
 00546528    mov         edx,54789C;'Shasta4M (Royl)'
 0054652D    call        @LStrAsg
>00546532    jmp         005467B4
 00546537    mov         eax,dword ptr [ebp-8]
 0054653A    mov         edx,5478B4;'Tahoe (Royl)'
 0054653F    call        @LStrAsg
>00546544    jmp         005467B4
 00546549    mov         eax,dword ptr [ebp-8]
 0054654C    mov         edx,5478CC;'Everest5 (Royl)'
 00546551    call        @LStrAsg
>00546556    jmp         005467B4
 0054655B    mov         eax,dword ptr [ebp-8]
 0054655E    mov         edx,5478E4;'Midori (Royl)'
 00546563    call        @LStrAsg
>00546568    jmp         005467B4
 0054656D    mov         eax,dword ptr [ebp-8]
 00546570    mov         edx,5478FC;'Pinnacle Lite (Royl)'
 00546575    call        @LStrAsg
>0054657A    jmp         005467B4
 0054657F    mov         eax,dword ptr [ebp-8]
 00546582    mov         edx,54791C;'Pluto (Royl)'
 00546587    call        @LStrAsg
>0054658C    jmp         005467B4
 00546591    mov         eax,dword ptr [ebp-8]
 00546594    mov         edx,547934;'Dragon Fly 2_PL4K (Royl)'
 00546599    call        @LStrAsg
>0054659E    jmp         005467B4
 005465A3    mov         eax,dword ptr [ebp-8]
 005465A6    mov         edx,547958;'Venus (Royl USB)'
 005465AB    call        @LStrAsg
>005465B0    jmp         005467B4
 005465B5    mov         eax,dword ptr [ebp-8]
 005465B8    mov         edx,547974;'Mariner (Royl)'
 005465BD    call        @LStrAsg
>005465C2    jmp         005467B4
 005465C7    mov         eax,dword ptr [ebp-8]
 005465CA    mov         edx,54798C;'Pinnacle Lite PATA (Royl)'
 005465CF    call        @LStrAsg
>005465D4    jmp         005467B4
 005465D9    mov         eax,dword ptr [ebp-8]
 005465DC    mov         edx,5479B0;'Dolphin (Royl)'
 005465E1    call        @LStrAsg
>005465E6    jmp         005467B4
 005465EB    mov         eax,dword ptr [ebp-8]
 005465EE    mov         edx,5479C8;'Dragon Fly 1 (Royl)'
 005465F3    call        @LStrAsg
>005465F8    jmp         005467B4
 005465FD    mov         eax,dword ptr [ebp-8]
 00546600    mov         edx,5479E4;'Dragon Fly 3_PL4K (Royl)'
 00546605    call        @LStrAsg
>0054660A    jmp         005467B4
 0054660F    mov         eax,dword ptr [ebp-8]
 00546612    mov         edx,547A08;'Bobcat (Royl)'
 00546617    call        @LStrAsg
>0054661C    jmp         005467B4
 00546621    mov         eax,dword ptr [ebp-8]
 00546624    mov         edx,547A20;'Dragon Fly 4 (Royl)'
 00546629    call        @LStrAsg
>0054662E    jmp         005467B4
 00546633    mov         eax,dword ptr [ebp-8]
 00546636    mov         edx,547A3C;'Tahoe 2D (Royl)'
 0054663B    call        @LStrAsg
>00546640    jmp         005467B4
 00546645    mov         eax,dword ptr [ebp-8]
 00546648    mov         edx,547880;'Mantis_RE (Royl)'
 0054664D    call        @LStrAsg
>00546652    jmp         005467B4
 00546657    mov         eax,dword ptr [ebp-8]
 0054665A    mov         edx,547A54;'Jamaica (Royl)'
 0054665F    call        @LStrAsg
>00546664    jmp         005467B4
 00546669    mov         eax,dword ptr [ebp-8]
 0054666C    mov         edx,547A6C;'Vulcan_RE (Royl)'
 00546671    call        @LStrAsg
>00546676    jmp         005467B4
 0054667B    mov         eax,dword ptr [ebp-8]
 0054667E    mov         edx,547A88;'Tahoe_PL (Royl)'
 00546683    call        @LStrAsg
>00546688    jmp         005467B4
 0054668D    mov         eax,dword ptr [ebp-8]
 00546690    mov         edx,547744;'Mercury (Royl)'
 00546695    call        @LStrAsg
>0054669A    jmp         005467B4
 0054669F    mov         eax,dword ptr [ebp-8]
 005466A2    mov         edx,547AA0;'Check for 16-bit family ID'
 005466A7    call        @LStrAsg
>005466AC    jmp         005467B4
 005466B1    mov         eax,dword ptr [ebp-8]
 005466B4    mov         edx,547AC4;'Dragon (Royl)'
 005466B9    call        @LStrAsg
>005466BE    jmp         005467B4
 005466C3    mov         eax,dword ptr [ebp-8]
 005466C6    mov         edx,547ADC;'Mantis PL RE (Royl)'
 005466CB    call        @LStrAsg
>005466D0    jmp         005467B4
 005466D5    mov         eax,dword ptr [ebp-8]
 005466D8    mov         edx,547AF8;'Dragon Fly 4PL_RE (Royl)'
 005466DD    call        @LStrAsg
>005466E2    jmp         005467B4
 005466E7    mov         eax,dword ptr [ebp-8]
 005466EA    mov         edx,547B1C;'Aztec_PL (Royl)'
 005466EF    call        @LStrAsg
>005466F4    jmp         005467B4
 005466F9    mov         eax,dword ptr [ebp-8]
 005466FC    mov         edx,547B34;'Shasta 2D (Royl)'
 00546701    call        @LStrAsg
>00546706    jmp         005467B4
 0054670B    mov         eax,dword ptr [ebp-8]
 0054670E    mov         edx,547B50;'Shasta 3D (Royl)'
 00546713    call        @LStrAsg
>00546718    jmp         005467B4
 0054671D    mov         eax,dword ptr [ebp-8]
 00546720    mov         edx,547B6C;'Europa (Royl)'
 00546725    call        @LStrAsg
>0054672A    jmp         005467B4
 0054672F    mov         eax,dword ptr [ebp-8]
 00546732    mov         edx,547B84;'Jamaica_4K (Royl)'
 00546737    call        @LStrAsg
>0054673C    jmp         005467B4
 0054673E    mov         eax,dword ptr [ebp-8]
 00546741    mov         edx,547BA0;'Summit RE (Royl)'
 00546746    call        @LStrAsg
>0054674B    jmp         005467B4
 0054674D    mov         eax,dword ptr [ebp-8]
 00546750    mov         edx,547BBC;'Mariner5_4K (Royl)'
 00546755    call        @LStrAsg
>0054675A    jmp         005467B4
 0054675C    mov         eax,dword ptr [ebp-8]
 0054675F    mov         edx,547BD8;'Tahoe_LT (Royl)'
 00546764    call        @LStrAsg
>00546769    jmp         005467B4
 0054676B    mov         eax,dword ptr [ebp-8]
 0054676E    mov         edx,547BF0;'Saddle_Back (Royl)'
 00546773    call        @LStrAsg
>00546778    jmp         005467B4
 0054677A    mov         eax,dword ptr [ebp-8]
 0054677D    mov         edx,547C0C;'Dragon Fly 4 4K LT (Royl)'
 00546782    call        @LStrAsg
>00546787    jmp         005467B4
 00546789    mov         eax,dword ptr [ebp-8]
 0054678C    mov         edx,547C30;'Zepfyr (Royl)'
 00546791    call        @LStrAsg
>00546796    jmp         005467B4
 00546798    mov         eax,dword ptr [ebp-8]
 0054679B    mov         edx,547C48;'Saddle_Back Gen 6 (Royl)'
 005467A0    call        @LStrAsg
>005467A5    jmp         005467B4
 005467A7    mov         eax,dword ptr [ebp-8]
 005467AA    mov         edx,5467E4;'Unknown'
 005467AF    call        @LStrAsg
 005467B4    pop         ecx
 005467B5    pop         ecx
 005467B6    pop         ebp
 005467B7    ret
end;*}

//00547C64
{*procedure sub_00547C64(?:?; ?:?);
begin
 00547C64    push        ebp
 00547C65    mov         ebp,esp
 00547C67    add         esp,0FFFFFFF8
 00547C6A    mov         dword ptr [ebp-8],edx
 00547C6D    mov         byte ptr [ebp-1],al
 00547C70    cmp         byte ptr [ebp-1],0
>00547C74    je          00547C85
 00547C76    mov         eax,dword ptr [ebp-8]
 00547C79    mov         edx,547CA0;'YES'
 00547C7E    call        @LStrAsg
>00547C83    jmp         00547C92
 00547C85    mov         eax,dword ptr [ebp-8]
 00547C88    mov         edx,547CAC;'NO'
 00547C8D    call        @LStrAsg
 00547C92    pop         ecx
 00547C93    pop         ecx
 00547C94    pop         ebp
 00547C95    ret
end;*}

//00547CB0
{*procedure sub_00547CB0(?:?; ?:?; ?:?);
begin
 00547CB0    push        ebp
 00547CB1    mov         ebp,esp
 00547CB3    add         esp,0FFFFFFF8
 00547CB6    mov         dword ptr [ebp-8],ecx
 00547CB9    mov         byte ptr [ebp-2],dl
 00547CBC    mov         byte ptr [ebp-1],al
 00547CBF    cmp         byte ptr [ebp-1],0
>00547CC3    je          00547CE9
 00547CC5    cmp         byte ptr [ebp-2],0
>00547CC9    je          00547CDA
 00547CCB    mov         eax,dword ptr [ebp-8]
 00547CCE    mov         edx,56DE80;'Enabled'
 00547CD3    call        @LStrFromString
>00547CD8    jmp         00547CF6
 00547CDA    mov         eax,dword ptr [ebp-8]
 00547CDD    mov         edx,56DE88;'Disabled'
 00547CE2    call        @LStrFromString
>00547CE7    jmp         00547CF6
 00547CE9    mov         eax,dword ptr [ebp-8]
 00547CEC    mov         edx,56DEA0;'Not Supported'
 00547CF1    call        @LStrFromString
 00547CF6    pop         ecx
 00547CF7    pop         ecx
 00547CF8    pop         ebp
 00547CF9    ret
end;*}

//00547CFC
procedure TfmHDD.miIdentifyClick(Sender:TObject);
begin
{*
 00547CFC    push        ebp
 00547CFD    mov         ebp,esp
 00547CFF    mov         ecx,79
 00547D04    push        0
 00547D06    push        0
 00547D08    dec         ecx
>00547D09    jne         00547D04
 00547D0B    push        ebx
 00547D0C    mov         dword ptr [ebp-3C],edx
 00547D0F    mov         dword ptr [ebp-4],eax
 00547D12    xor         eax,eax
 00547D14    push        ebp
 00547D15    push        5499C6
 00547D1A    push        dword ptr fs:[eax]
 00547D1D    mov         dword ptr fs:[eax],esp
 00547D20    mov         eax,[0056E60C];^gvar_0056DF44
 00547D25    call        @LStrClr
 00547D2A    mov         eax,[0056E0E4];^gvar_0056DF48
 00547D2F    call        @LStrClr
 00547D34    mov         eax,[0056E4AC];^gvar_0056DF4C
 00547D39    call        @LStrClr
 00547D3E    mov         eax,[0056E304];^gvar_0056DF54
 00547D43    mov         word ptr [eax],0
 00547D48    mov         eax,[0056E2D0];^gvar_0056DF38
 00547D4D    mov         eax,dword ptr [eax]
 00547D4F    call        004CC648
 00547D54    test        al,al
>00547D56    jne         00547D87
 00547D58    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00547D5E    mov         ecx,dword ptr [ecx]
 00547D60    lea         eax,[ebp-240]
 00547D66    mov         edx,5499E0;'Cannot create '
 00547D6B    call        @LStrCat3
 00547D70    mov         ecx,dword ptr [ebp-240]
 00547D76    mov         dl,1
 00547D78    mov         eax,[0040B004];Exception
 00547D7D    call        Exception.Create;Exception.Create
 00547D82    call        @RaiseExcept
 00547D87    push        10
 00547D89    call        user32.GetKeyState
 00547D8E    test        ax,ax
>00547D91    jge         00547E60
 00547D97    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00547D9D    mov         edx,dword ptr [edx]
 00547D9F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00547DA4    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00547DAA    call        TOpenDialog.SetInitialDir
 00547DAF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00547DB4    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00547DBA    add         eax,78;TOpenDialog.FileName:TFileName
 00547DBD    call        @LStrClr
 00547DC2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00547DC7    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00547DCD    mov         edx,dword ptr [eax]
 00547DCF    call        dword ptr [edx+3C];TOpenDialog.Execute
 00547DD2    test        al,al
>00547DD4    je          00547E53
 00547DD6    mov         dl,1
 00547DD8    mov         eax,[0041DE14];TMemoryStream
 00547DDD    call        TObject.Create;TMemoryStream.Create
 00547DE2    mov         dword ptr [ebp-0C],eax
 00547DE5    xor         eax,eax
 00547DE7    push        ebp
 00547DE8    push        547E4C
 00547DED    push        dword ptr fs:[eax]
 00547DF0    mov         dword ptr fs:[eax],esp
 00547DF3    lea         edx,[ebp-244]
 00547DF9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00547DFE    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00547E04    call        TOpenDialog.GetFileName
 00547E09    mov         edx,dword ptr [ebp-244]
 00547E0F    mov         eax,dword ptr [ebp-0C]
 00547E12    call        00423F8C
 00547E17    xor         ecx,ecx
 00547E19    xor         edx,edx
 00547E1B    mov         eax,dword ptr [ebp-0C]
 00547E1E    mov         ebx,dword ptr [eax]
 00547E20    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00547E23    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00547E29    mov         ecx,200
 00547E2E    mov         eax,dword ptr [ebp-0C]
 00547E31    mov         ebx,dword ptr [eax]
 00547E33    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00547E36    xor         eax,eax
 00547E38    pop         edx
 00547E39    pop         ecx
 00547E3A    pop         ecx
 00547E3B    mov         dword ptr fs:[eax],edx
 00547E3E    push        547E79
 00547E43    mov         eax,dword ptr [ebp-0C]
 00547E46    call        TObject.Free
 00547E4B    ret
>00547E4C    jmp         @HandleFinally
>00547E51    jmp         00547E43
 00547E53    mov         eax,[0056E5A4];^gvar_0056DF04
 00547E58    mov         byte ptr [eax],1
>00547E5B    jmp         00549934
 00547E60    lea         eax,[ebp-23C]
 00547E66    call        00560580
 00547E6B    mov         eax,[0056E284];^gvar_0056DF34
 00547E70    mov         eax,dword ptr [eax]
 00547E72    xor         edx,edx
 00547E74    call        TfmMain.gbStatusClick
 00547E79    lea         eax,[ebp-206]
 00547E7F    mov         edx,28
 00547E84    call        00560624
 00547E89    lea         eax,[ebp-20E]
 00547E8F    mov         edx,8
 00547E94    call        00560624
 00547E99    lea         eax,[ebp-228]
 00547E9F    mov         edx,14
 00547EA4    call        00560624
 00547EA9    mov         eax,[0056E344];^gvar_0059BF5C
 00547EAE    mov         ax,word ptr [eax+10A]
 00547EB5    and         ax,0FF
 00547EB9    mov         word ptr [ebp-0E],ax
 00547EBD    cmp         word ptr [ebp-0E],0FE
>00547EC3    jne         00547ED5
 00547EC5    mov         eax,[0056E344];^gvar_0059BF5C
 00547ECA    mov         ax,word ptr [eax+10C]
 00547ED1    mov         word ptr [ebp-0E],ax
 00547ED5    cmp         word ptr [ebp-0E],0
>00547EDA    jne         00547EEC
 00547EDC    mov         eax,[0056E344];^gvar_0059BF5C
 00547EE1    mov         ax,word ptr [eax+104]
 00547EE8    mov         word ptr [ebp-0E],ax
 00547EEC    mov         eax,[0056E304];^gvar_0056DF54
 00547EF1    mov         dx,word ptr [ebp-0E]
 00547EF5    mov         word ptr [eax],dx
 00547EF8    mov         ax,word ptr [ebp-0E]
 00547EFC    mov         word ptr [ebp-132],ax
 00547F03    mov         dword ptr [ebp-18],1B
 00547F0A    push        dword ptr [ebp-8]
 00547F0D    mov         eax,[0056E344];^gvar_0059BF5C
 00547F12    mov         edx,dword ptr [ebp-18]
 00547F15    movzx       eax,word ptr [eax+edx*2]
 00547F19    shr         eax,8
 00547F1C    call        0054B16C
 00547F21    mov         edx,eax
 00547F23    lea         eax,[ebp-248]
 00547F29    call        @LStrFromChar
 00547F2E    push        dword ptr [ebp-248]
 00547F34    mov         eax,[0056E344];^gvar_0059BF5C
 00547F39    mov         edx,dword ptr [ebp-18]
 00547F3C    mov         al,byte ptr [eax+edx*2]
 00547F3F    and         al,0FF
 00547F41    call        0054B16C
 00547F46    mov         edx,eax
 00547F48    lea         eax,[ebp-24C]
 00547F4E    call        @LStrFromChar
 00547F53    push        dword ptr [ebp-24C]
 00547F59    lea         eax,[ebp-8]
 00547F5C    mov         edx,3
 00547F61    call        @LStrCatN
 00547F66    inc         dword ptr [ebp-18]
 00547F69    cmp         dword ptr [ebp-18],2F
>00547F6D    jne         00547F0A
 00547F6F    lea         edx,[ebp-250]
 00547F75    mov         eax,dword ptr [ebp-8]
 00547F78    call        0040BFEC
 00547F7D    mov         edx,dword ptr [ebp-250]
 00547F83    mov         eax,[0056E60C];^gvar_0056DF44
 00547F88    call        @LStrAsg
 00547F8D    mov         eax,[0056E60C];^gvar_0056DF44
 00547F92    mov         eax,dword ptr [eax]
 00547F94    call        @LStrLen
 00547F99    test        eax,eax
>00547F9B    jle         00548001
 00547F9D    mov         dword ptr [ebp-38],eax
 00547FA0    mov         dword ptr [ebp-18],1
 00547FA7    mov         eax,[0056E60C];^gvar_0056DF44
 00547FAC    mov         eax,dword ptr [eax]
 00547FAE    mov         edx,dword ptr [ebp-18]
 00547FB1    movzx       eax,byte ptr [eax+edx-1]
 00547FB6    cmp         eax,3A
>00547FB9    jge         00547FCD
 00547FBB    sub         eax,20
>00547FBE    jb          00547FE7
 00547FC0    dec         eax
 00547FC1    sub         eax,0C
>00547FC4    jb          00547FE7
 00547FC6    sub         eax,2
>00547FC9    je          00547FE7
>00547FCB    jmp         00547FF9
 00547FCD    add         eax,0FFFFFFC6
 00547FD0    sub         eax,6
>00547FD3    jb          00547FE7
 00547FD5    add         eax,0FFFFFFE5
 00547FD8    sub         eax,4
>00547FDB    jb          00547FE7
 00547FDD    add         eax,0FFFFFFE5
 00547FE0    sub         eax,86
>00547FE5    jae         00547FF9
 00547FE7    mov         eax,[0056E60C];^gvar_0056DF44
 00547FEC    call        00405598
 00547FF1    mov         edx,dword ptr [ebp-18]
 00547FF4    mov         byte ptr [eax+edx-1],5F
 00547FF9    inc         dword ptr [ebp-18]
 00547FFC    dec         dword ptr [ebp-38]
>00547FFF    jne         00547FA7
 00548001    lea         eax,[ebp-8]
 00548004    call        @LStrClr
 00548009    mov         dword ptr [ebp-18],17
 00548010    push        dword ptr [ebp-8]
 00548013    mov         eax,[0056E344];^gvar_0059BF5C
 00548018    mov         edx,dword ptr [ebp-18]
 0054801B    movzx       eax,word ptr [eax+edx*2]
 0054801F    shr         eax,8
 00548022    call        0054B16C
 00548027    mov         edx,eax
 00548029    lea         eax,[ebp-254]
 0054802F    call        @LStrFromChar
 00548034    push        dword ptr [ebp-254]
 0054803A    mov         eax,[0056E344];^gvar_0059BF5C
 0054803F    mov         edx,dword ptr [ebp-18]
 00548042    mov         al,byte ptr [eax+edx*2]
 00548045    and         al,0FF
 00548047    call        0054B16C
 0054804C    mov         edx,eax
 0054804E    lea         eax,[ebp-258]
 00548054    call        @LStrFromChar
 00548059    push        dword ptr [ebp-258]
 0054805F    lea         eax,[ebp-8]
 00548062    mov         edx,3
 00548067    call        @LStrCatN
 0054806C    inc         dword ptr [ebp-18]
 0054806F    cmp         dword ptr [ebp-18],1B
>00548073    jne         00548010
 00548075    lea         edx,[ebp-25C]
 0054807B    mov         eax,dword ptr [ebp-8]
 0054807E    call        0040BFEC
 00548083    mov         edx,dword ptr [ebp-25C]
 00548089    mov         eax,[0056E0E4];^gvar_0056DF48
 0054808E    call        @LStrAsg
 00548093    mov         eax,[0056E0E4];^gvar_0056DF48
 00548098    mov         eax,dword ptr [eax]
 0054809A    call        @LStrLen
 0054809F    test        eax,eax
>005480A1    jle         00548107
 005480A3    mov         dword ptr [ebp-38],eax
 005480A6    mov         dword ptr [ebp-18],1
 005480AD    mov         eax,[0056E0E4];^gvar_0056DF48
 005480B2    mov         eax,dword ptr [eax]
 005480B4    mov         edx,dword ptr [ebp-18]
 005480B7    movzx       eax,byte ptr [eax+edx-1]
 005480BC    cmp         eax,3A
>005480BF    jge         005480D3
 005480C1    sub         eax,20
>005480C4    jb          005480ED
 005480C6    dec         eax
 005480C7    sub         eax,0C
>005480CA    jb          005480ED
 005480CC    sub         eax,2
>005480CF    je          005480ED
>005480D1    jmp         005480FF
 005480D3    add         eax,0FFFFFFC6
 005480D6    sub         eax,6
>005480D9    jb          005480ED
 005480DB    add         eax,0FFFFFFE5
 005480DE    sub         eax,4
>005480E1    jb          005480ED
 005480E3    add         eax,0FFFFFFE5
 005480E6    sub         eax,86
>005480EB    jae         005480FF
 005480ED    mov         eax,[0056E0E4];^gvar_0056DF48
 005480F2    call        00405598
 005480F7    mov         edx,dword ptr [ebp-18]
 005480FA    mov         byte ptr [eax+edx-1],5F
 005480FF    inc         dword ptr [ebp-18]
 00548102    dec         dword ptr [ebp-38]
>00548105    jne         005480AD
 00548107    lea         eax,[ebp-8]
 0054810A    call        @LStrClr
 0054810F    mov         dword ptr [ebp-18],0A
 00548116    push        dword ptr [ebp-8]
 00548119    mov         eax,[0056E344];^gvar_0059BF5C
 0054811E    mov         edx,dword ptr [ebp-18]
 00548121    movzx       eax,word ptr [eax+edx*2]
 00548125    shr         eax,8
 00548128    call        0054B16C
 0054812D    mov         edx,eax
 0054812F    lea         eax,[ebp-260]
 00548135    call        @LStrFromChar
 0054813A    push        dword ptr [ebp-260]
 00548140    mov         eax,[0056E344];^gvar_0059BF5C
 00548145    mov         edx,dword ptr [ebp-18]
 00548148    mov         al,byte ptr [eax+edx*2]
 0054814B    and         al,0FF
 0054814D    call        0054B16C
 00548152    mov         edx,eax
 00548154    lea         eax,[ebp-264]
 0054815A    call        @LStrFromChar
 0054815F    push        dword ptr [ebp-264]
 00548165    lea         eax,[ebp-8]
 00548168    mov         edx,3
 0054816D    call        @LStrCatN
 00548172    inc         dword ptr [ebp-18]
 00548175    cmp         dword ptr [ebp-18],14
>00548179    jne         00548116
 0054817B    lea         edx,[ebp-268]
 00548181    mov         eax,dword ptr [ebp-8]
 00548184    call        0040BFEC
 00548189    mov         edx,dword ptr [ebp-268]
 0054818F    mov         eax,[0056E4AC];^gvar_0056DF4C
 00548194    call        @LStrAsg
 00548199    mov         eax,[0056E4AC];^gvar_0056DF4C
 0054819E    mov         eax,dword ptr [eax]
 005481A0    call        @LStrLen
 005481A5    test        eax,eax
>005481A7    jle         0054820D
 005481A9    mov         dword ptr [ebp-38],eax
 005481AC    mov         dword ptr [ebp-18],1
 005481B3    mov         eax,[0056E4AC];^gvar_0056DF4C
 005481B8    mov         eax,dword ptr [eax]
 005481BA    mov         edx,dword ptr [ebp-18]
 005481BD    movzx       eax,byte ptr [eax+edx-1]
 005481C2    cmp         eax,3A
>005481C5    jge         005481D9
 005481C7    sub         eax,20
>005481CA    jb          005481F3
 005481CC    dec         eax
 005481CD    sub         eax,0C
>005481D0    jb          005481F3
 005481D2    sub         eax,2
>005481D5    je          005481F3
>005481D7    jmp         00548205
 005481D9    add         eax,0FFFFFFC6
 005481DC    sub         eax,6
>005481DF    jb          005481F3
 005481E1    add         eax,0FFFFFFE5
 005481E4    sub         eax,4
>005481E7    jb          005481F3
 005481E9    add         eax,0FFFFFFE5
 005481EC    sub         eax,86
>005481F1    jae         00548205
 005481F3    mov         eax,[0056E4AC];^gvar_0056DF4C
 005481F8    call        00405598
 005481FD    mov         edx,dword ptr [ebp-18]
 00548200    mov         byte ptr [eax+edx-1],5F
 00548205    inc         dword ptr [ebp-18]
 00548208    dec         dword ptr [ebp-38]
>0054820B    jne         005481B3
 0054820D    mov         eax,[0056E344];^gvar_0059BF5C
 00548212    test        byte ptr [eax+0AD],4
>00548219    je          0054824D
 0054821B    mov         eax,[0056E344];^gvar_0059BF5C
 00548220    movzx       eax,word ptr [eax+0CA]
 00548227    mov         dword ptr [ebp-14],eax
 0054822A    mov         eax,dword ptr [ebp-14]
 0054822D    shl         eax,10
 00548230    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00548236    movzx       edx,word ptr [edx+0C8]
 0054823D    add         eax,edx
 0054823F    mov         dword ptr [ebp-14],eax
 00548242    mov         eax,dword ptr [ebp-14]
 00548245    mov         dword ptr [ebp-1C4],eax
>0054824B    jmp         00548284
 0054824D    mov         dword ptr [ebp-18],3C
 00548254    mov         eax,[0056E344];^gvar_0059BF5C
 00548259    mov         edx,dword ptr [ebp-18]
 0054825C    movzx       eax,word ptr [eax+edx*2+2]
 00548261    mov         dword ptr [ebp-14],eax
 00548264    mov         eax,[0056E344];^gvar_0059BF5C
 00548269    mov         edx,dword ptr [ebp-18]
 0054826C    movzx       eax,word ptr [eax+edx*2]
 00548270    mov         edx,dword ptr [ebp-14]
 00548273    shl         edx,10
 00548276    add         eax,edx
 00548278    mov         dword ptr [ebp-14],eax
 0054827B    mov         eax,dword ptr [ebp-14]
 0054827E    mov         dword ptr [ebp-1C4],eax
 00548284    mov         eax,dword ptr [ebp-1C4]
 0054828A    xor         edx,edx
 0054828C    mov         dword ptr ds:[56DE78],eax;gvar_0056DE78
 00548292    mov         dword ptr ds:[56DE7C],edx;gvar_0056DE7C
 00548298    test        byte ptr [ebp-132],0FF
>0054829F    jne         005485A7
 005482A5    mov         dl,1
 005482A7    mov         eax,[0041DE14];TMemoryStream
 005482AC    call        TObject.Create;TMemoryStream.Create
 005482B1    mov         dword ptr [ebp-0C],eax
 005482B4    xor         eax,eax
 005482B6    push        ebp
 005482B7    push        5485A0
 005482BC    push        dword ptr fs:[eax]
 005482BF    mov         dword ptr fs:[eax],esp
 005482C2    push        10
 005482C4    call        user32.GetKeyState
 005482C9    test        ax,ax
>005482CC    jge         005483F0
 005482D2    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005482D8    mov         edx,dword ptr [edx]
 005482DA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005482DF    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 005482E5    call        TOpenDialog.SetInitialDir
 005482EA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005482EF    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 005482F5    add         eax,78;TOpenDialog.FileName:TFileName
 005482F8    call        @LStrClr
 005482FD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00548302    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00548308    mov         edx,dword ptr [eax]
 0054830A    call        dword ptr [edx+3C];TOpenDialog.Execute
 0054830D    test        al,al
>0054830F    je          0054858A
 00548315    lea         edx,[ebp-26C]
 0054831B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00548320    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00548326    call        TOpenDialog.GetFileName
 0054832B    mov         eax,dword ptr [ebp-26C]
 00548331    call        0040C94C
 00548336    test        al,al
>00548338    je          0054858A
 0054833E    lea         edx,[ebp-270]
 00548344    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00548349    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054834F    call        TOpenDialog.GetFileName
 00548354    mov         edx,dword ptr [ebp-270]
 0054835A    mov         eax,dword ptr [ebp-0C]
 0054835D    call        00423F8C
 00548362    xor         ecx,ecx
 00548364    mov         edx,1A
 00548369    mov         eax,dword ptr [ebp-0C]
 0054836C    mov         ebx,dword ptr [eax]
 0054836E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00548371    and         word ptr [ebp-132],0FF
 0054837A    mov         ax,word ptr [ebp-132]
 00548381    and         ax,0FF
 00548385    cmp         ax,0FE
>00548389    jne         005483AB
 0054838B    xor         ecx,ecx
 0054838D    mov         edx,16C
 00548392    mov         eax,dword ptr [ebp-0C]
 00548395    mov         ebx,dword ptr [eax]
 00548397    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054839A    mov         eax,dword ptr [ebp-0C]
 0054839D    call        004CE548
 005483A2    mov         word ptr [ebp-132],ax
>005483A9    jmp         005483B4
 005483AB    and         word ptr [ebp-132],0FF
 005483B4    mov         eax,[0056E0E4];^gvar_0056DF48
 005483B9    mov         edx,5499F8;'      '
 005483BE    call        @LStrAsg
 005483C3    xor         ecx,ecx
 005483C5    mov         edx,2
 005483CA    mov         eax,dword ptr [ebp-0C]
 005483CD    mov         ebx,dword ptr [eax]
 005483CF    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005483D2    mov         eax,[0056E0E4];^gvar_0056DF48
 005483D7    call        00405598
 005483DC    mov         edx,eax
 005483DE    mov         ecx,6
 005483E3    mov         eax,dword ptr [ebp-0C]
 005483E6    call        TStream.ReadBuffer
>005483EB    jmp         0054858A
 005483F0    mov         ecx,dword ptr [ebp-0C]
 005483F3    xor         edx,edx
 005483F5    mov         ax,1
 005483F9    call        004CFEC8
 005483FE    test        al,al
>00548400    je          0054858A
 00548406    mov         eax,dword ptr [ebp-0C]
 00548409    mov         edx,dword ptr [eax]
 0054840B    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0054840D    cmp         edx,0
>00548410    jne         0054841D
 00548412    cmp         eax,0
>00548415    jbe         0054858A
>0054841B    jmp         00548423
>0054841D    jle         0054858A
 00548423    xor         ecx,ecx
 00548425    mov         edx,1A
 0054842A    mov         eax,dword ptr [ebp-0C]
 0054842D    mov         ebx,dword ptr [eax]
 0054842F    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00548432    mov         eax,dword ptr [ebp-0C]
 00548435    call        004CE548
 0054843A    mov         word ptr [ebp-132],ax
 00548441    mov         ax,word ptr [ebp-132]
 00548448    and         ax,0FF
 0054844C    cmp         ax,0FE
>00548450    jne         00548472
 00548452    xor         ecx,ecx
 00548454    mov         edx,16C
 00548459    mov         eax,dword ptr [ebp-0C]
 0054845C    mov         ebx,dword ptr [eax]
 0054845E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00548461    mov         eax,dword ptr [ebp-0C]
 00548464    call        004CE548
 00548469    mov         word ptr [ebp-132],ax
>00548470    jmp         0054847B
 00548472    and         word ptr [ebp-132],0FF
 0054847B    mov         eax,[0056E0E4];^gvar_0056DF48
 00548480    mov         edx,5499F8;'      '
 00548485    call        @LStrAsg
 0054848A    xor         ecx,ecx
 0054848C    mov         edx,2
 00548491    mov         eax,dword ptr [ebp-0C]
 00548494    mov         ebx,dword ptr [eax]
 00548496    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00548499    mov         eax,[0056E0E4];^gvar_0056DF48
 0054849E    call        00405598
 005484A3    mov         edx,eax
 005484A5    mov         ecx,6
 005484AA    mov         eax,dword ptr [ebp-0C]
 005484AD    call        TStream.ReadBuffer
 005484B2    mov         eax,[0056E60C];^gvar_0056DF44
 005484B7    mov         edx,549A08;'                                        '
 005484BC    call        @LStrAsg
 005484C1    xor         ecx,ecx
 005484C3    mov         edx,0D2
 005484C8    mov         eax,dword ptr [ebp-0C]
 005484CB    mov         ebx,dword ptr [eax]
 005484CD    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005484D0    mov         eax,[0056E60C];^gvar_0056DF44
 005484D5    call        00405598
 005484DA    mov         edx,eax
 005484DC    mov         ecx,28
 005484E1    mov         eax,dword ptr [ebp-0C]
 005484E4    call        TStream.ReadBuffer
 005484E9    lea         edx,[ebp-274]
 005484EF    mov         eax,[0056E60C];^gvar_0056DF44
 005484F4    mov         eax,dword ptr [eax]
 005484F6    call        0040BFEC
 005484FB    mov         edx,dword ptr [ebp-274]
 00548501    mov         eax,[0056E60C];^gvar_0056DF44
 00548506    call        @LStrAsg
 0054850B    mov         eax,[0056E4AC];^gvar_0056DF4C
 00548510    mov         edx,549A3C;'                    '
 00548515    call        @LStrAsg
 0054851A    xor         ecx,ecx
 0054851C    mov         edx,13E
 00548521    mov         eax,dword ptr [ebp-0C]
 00548524    mov         ebx,dword ptr [eax]
 00548526    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00548529    mov         eax,[0056E4AC];^gvar_0056DF4C
 0054852E    call        00405598
 00548533    mov         edx,eax
 00548535    mov         ecx,14
 0054853A    mov         eax,dword ptr [ebp-0C]
 0054853D    call        TStream.ReadBuffer
 00548542    lea         edx,[ebp-278]
 00548548    mov         eax,[0056E4AC];^gvar_0056DF4C
 0054854D    mov         eax,dword ptr [eax]
 0054854F    call        0040BFEC
 00548554    mov         edx,dword ptr [ebp-278]
 0054855A    mov         eax,[0056E4AC];^gvar_0056DF4C
 0054855F    call        @LStrAsg
 00548564    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0054856A    mov         edx,dword ptr [edx]
 0054856C    lea         eax,[ebp-27C]
 00548572    mov         ecx,549A5C;'cp01s.bin'
 00548577    call        @LStrCat3
 0054857C    mov         edx,dword ptr [ebp-27C]
 00548582    mov         eax,dword ptr [ebp-0C]
 00548585    call        00423E84
 0054858A    xor         eax,eax
 0054858C    pop         edx
 0054858D    pop         ecx
 0054858E    pop         ecx
 0054858F    mov         dword ptr fs:[eax],edx
 00548592    push        5485A7
 00548597    mov         eax,dword ptr [ebp-0C]
 0054859A    call        TObject.Free
 0054859F    ret
>005485A0    jmp         @HandleFinally
>005485A5    jmp         00548597
 005485A7    mov         eax,[0056E304];^gvar_0056DF54
 005485AC    mov         dx,word ptr [ebp-132]
 005485B3    mov         word ptr [eax],dx
 005485B6    mov         eax,[0056E040];^gvar_005720C0
 005485BB    cmp         byte ptr [eax],0
>005485BE    je          005485CF
 005485C0    lea         eax,[ebp-8]
 005485C3    mov         edx,549A70;'ROYL'
 005485C8    call        @LStrLAsg
>005485CD    jmp         005485DC
 005485CF    lea         eax,[ebp-8]
 005485D2    mov         edx,549A80;'MARVELL'
 005485D7    call        @LStrLAsg
 005485DC    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005485E1    cmp         byte ptr [eax],0
>005485E4    je          00548643
 005485E6    mov         eax,[0056E60C];^gvar_0056DF44
 005485EB    push        dword ptr [eax]
 005485ED    push        549A90;' FW:'
 005485F2    mov         eax,[0056E0E4];^gvar_0056DF48
 005485F7    push        dword ptr [eax]
 005485F9    push        549AA0;' SN:'
 005485FE    mov         eax,[0056E4AC];^gvar_0056DF4C
 00548603    push        dword ptr [eax]
 00548605    push        549AB0;' ('
 0054860A    push        dword ptr [ebp-8]
 0054860D    push        549ABC;' selected) '
 00548612    push        549AD0;'port USB'
 00548617    lea         eax,[ebp-280]
 0054861D    mov         edx,9
 00548622    call        @LStrCatN
 00548627    mov         edx,dword ptr [ebp-280]
 0054862D    mov         eax,dword ptr [ebp-4]
 00548630    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548636    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054863C    mov         ecx,dword ptr [eax]
 0054863E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548641    jmp         005486BC
 00548643    mov         eax,[0056E60C];^gvar_0056DF44
 00548648    push        dword ptr [eax]
 0054864A    push        549A90;' FW:'
 0054864F    mov         eax,[0056E0E4];^gvar_0056DF48
 00548654    push        dword ptr [eax]
 00548656    push        549AA0;' SN:'
 0054865B    mov         eax,[0056E4AC];^gvar_0056DF4C
 00548660    push        dword ptr [eax]
 00548662    push        549AB0;' ('
 00548667    push        dword ptr [ebp-8]
 0054866A    push        549ABC;' selected) '
 0054866F    push        549AE4;'port 0x'
 00548674    lea         ecx,[ebp-288]
 0054867A    mov         eax,[0056E1D4];^gvar_0056DF14
 0054867F    movzx       eax,word ptr [eax]
 00548682    mov         edx,3
 00548687    call        IntToHex
 0054868C    push        dword ptr [ebp-288]
 00548692    lea         eax,[ebp-284]
 00548698    mov         edx,0A
 0054869D    call        @LStrCatN
 005486A2    mov         edx,dword ptr [ebp-284]
 005486A8    mov         eax,dword ptr [ebp-4]
 005486AB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005486B1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005486B7    mov         ecx,dword ptr [eax]
 005486B9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005486BC    push        549AF4;'Logical: Cyls '
 005486C1    lea         edx,[ebp-290]
 005486C7    movzx       eax,word ptr [ebp-23A]
 005486CE    call        IntToStr
 005486D3    push        dword ptr [ebp-290]
 005486D9    push        549B0C;', Heads '
 005486DE    lea         edx,[ebp-294]
 005486E4    movzx       eax,word ptr [ebp-236]
 005486EB    call        IntToStr
 005486F0    push        dword ptr [ebp-294]
 005486F6    push        549B20;', Sectors '
 005486FB    lea         edx,[ebp-298]
 00548701    movzx       eax,word ptr [ebp-230]
 00548708    call        IntToStr
 0054870D    push        dword ptr [ebp-298]
 00548713    push        549B34;', LBA '
 00548718    mov         eax,dword ptr [ebp-1C4]
 0054871E    xor         edx,edx
 00548720    push        edx
 00548721    push        eax
 00548722    lea         eax,[ebp-29C]
 00548728    call        IntToStr
 0054872D    push        dword ptr [ebp-29C]
 00548733    push        549B44;', '
 00548738    mov         eax,dword ptr [ebp-1C4]
 0054873E    mov         ecx,1DCD65
 00548743    xor         edx,edx
 00548745    div         eax,ecx
 00548747    xor         edx,edx
 00548749    push        edx
 0054874A    push        eax
 0054874B    lea         eax,[ebp-2A0]
 00548751    call        IntToStr
 00548756    push        dword ptr [ebp-2A0]
 0054875C    push        549B50;'Gb'
 00548761    push        549B5C;#10+Controller Buffer Size: '
 00548766    lea         edx,[ebp-2A4]
 0054876C    mov         eax,[0056E344];^gvar_0059BF5C
 00548771    movzx       eax,word ptr [eax+2A]
 00548775    shr         eax,1
 00548777    call        IntToStr
 0054877C    push        dword ptr [ebp-2A4]
 00548782    push        549B80;'Kb'
 00548787    lea         eax,[ebp-28C]
 0054878D    mov         edx,0E
 00548792    call        @LStrCatN
 00548797    mov         edx,dword ptr [ebp-28C]
 0054879D    mov         eax,dword ptr [ebp-4]
 005487A0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005487A6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005487AC    mov         ecx,dword ptr [eax]
 005487AE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005487B1    lea         edx,[ebp-8]
 005487B4    mov         ax,word ptr [ebp-132]
 005487BB    call        005452A0
 005487C0    mov         eax,[0056E540];^gvar_0056DF50
 005487C5    mov         edx,dword ptr [ebp-8]
 005487C8    call        @LStrAsg
 005487CD    lea         eax,[ebp-2A8]
 005487D3    mov         ecx,dword ptr [ebp-8]
 005487D6    mov         edx,549B8C;'Family: '
 005487DB    call        @LStrCat3
 005487E0    mov         edx,dword ptr [ebp-2A8]
 005487E6    mov         eax,dword ptr [ebp-4]
 005487E9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005487EF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005487F5    mov         ecx,dword ptr [eax]
 005487F7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005487FA    mov         eax,dword ptr [ebp-4]
 005487FD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548803    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548809    xor         edx,edx
 0054880B    mov         ecx,dword ptr [eax]
 0054880D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548810    mov         eax,[0056E344];^gvar_0059BF5C
 00548815    test        byte ptr [eax+0AD],4
>0054881C    je          00548828
 0054881E    mov         eax,[0056E1C4];^gvar_0056DF08
 00548823    mov         byte ptr [eax],1
>00548826    jmp         00548830
 00548828    mov         eax,[0056E1C4];^gvar_0056DF08
 0054882D    mov         byte ptr [eax],0
 00548830    push        11
 00548832    call        user32.GetKeyState
 00548837    test        ax,ax
>0054883A    jge         00549164
 00548840    mov         eax,[0056E344];^gvar_0059BF5C
 00548845    test        byte ptr [eax+0A4],1
>0054884C    je          00548901
 00548852    mov         eax,[0056E344];^gvar_0059BF5C
 00548857    test        byte ptr [eax+0AA],1
>0054885E    je          005488B2
 00548860    mov         edx,549B98;'SMART:        '
 00548865    lea         eax,[ebp-2C4]
 0054886B    call        @PStrCpy
 00548870    mov         edx,56DE80;'Enabled'
 00548875    lea         eax,[ebp-2C4]
 0054887B    mov         cl,15
 0054887D    call        @PStrNCat
 00548882    lea         edx,[ebp-2C4]
 00548888    lea         eax,[ebp-2AC]
 0054888E    call        @LStrFromString
 00548893    mov         edx,dword ptr [ebp-2AC]
 00548899    mov         eax,dword ptr [ebp-4]
 0054889C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005488A2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005488A8    mov         ecx,dword ptr [eax]
 005488AA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>005488AD    jmp         0054894E
 005488B2    mov         edx,549B98;'SMART:        '
 005488B7    lea         eax,[ebp-2E0]
 005488BD    call        @PStrCpy
 005488C2    mov         edx,56DE88;'Disabled'
 005488C7    lea         eax,[ebp-2E0]
 005488CD    mov         cl,17
 005488CF    call        @PStrNCat
 005488D4    lea         edx,[ebp-2E0]
 005488DA    lea         eax,[ebp-2C8]
 005488E0    call        @LStrFromString
 005488E5    mov         edx,dword ptr [ebp-2C8]
 005488EB    mov         eax,dword ptr [ebp-4]
 005488EE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005488F4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005488FA    mov         ecx,dword ptr [eax]
 005488FC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>005488FF    jmp         0054894E
 00548901    mov         edx,549B98;'SMART:        '
 00548906    lea         eax,[ebp-300]
 0054890C    call        @PStrCpy
 00548911    mov         edx,56DEA0;'Not Supported'
 00548916    lea         eax,[ebp-300]
 0054891C    mov         cl,1B
 0054891E    call        @PStrNCat
 00548923    lea         edx,[ebp-300]
 00548929    lea         eax,[ebp-2E4]
 0054892F    call        @LStrFromString
 00548934    mov         edx,dword ptr [ebp-2E4]
 0054893A    mov         eax,dword ptr [ebp-4]
 0054893D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548943    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548949    mov         ecx,dword ptr [eax]
 0054894B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054894E    mov         eax,[0056E344];^gvar_0059BF5C
 00548953    test        byte ptr [eax+0AD],4
>0054895A    je          005489B3
 0054895C    mov         edx,549BA8;'LBA48:        '
 00548961    lea         eax,[ebp-2E0]
 00548967    call        @PStrCpy
 0054896C    mov         edx,56DE94;'Supported'
 00548971    lea         eax,[ebp-2E0]
 00548977    mov         cl,17
 00548979    call        @PStrNCat
 0054897E    lea         edx,[ebp-2E0]
 00548984    lea         eax,[ebp-304]
 0054898A    call        @LStrFromString
 0054898F    mov         edx,dword ptr [ebp-304]
 00548995    mov         eax,dword ptr [ebp-4]
 00548998    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054899E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005489A4    mov         ecx,dword ptr [eax]
 005489A6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005489A9    mov         eax,[0056E1C4];^gvar_0056DF08
 005489AE    mov         byte ptr [eax],1
>005489B1    jmp         00548A08
 005489B3    mov         edx,549BA8;'LBA48:        '
 005489B8    lea         eax,[ebp-300]
 005489BE    call        @PStrCpy
 005489C3    mov         edx,56DEA0;'Not Supported'
 005489C8    lea         eax,[ebp-300]
 005489CE    mov         cl,1B
 005489D0    call        @PStrNCat
 005489D5    lea         edx,[ebp-300]
 005489DB    lea         eax,[ebp-308]
 005489E1    call        @LStrFromString
 005489E6    mov         edx,dword ptr [ebp-308]
 005489EC    mov         eax,dword ptr [ebp-4]
 005489EF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005489F5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005489FB    mov         ecx,dword ptr [eax]
 005489FD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548A00    mov         eax,[0056E1C4];^gvar_0056DF08
 00548A05    mov         byte ptr [eax],0
 00548A08    mov         eax,[0056E344];^gvar_0059BF5C
 00548A0D    test        byte ptr [eax+0A7],2
>00548A14    je          00548ACA
 00548A1A    mov         eax,[0056E344];^gvar_0059BF5C
 00548A1F    test        byte ptr [eax+0AD],2
>00548A26    je          00548A7B
 00548A28    lea         edx,[ebp-310]
 00548A2E    mov         eax,[0056E344];^gvar_0059BF5C
 00548A33    mov         ax,word ptr [eax+0BC]
 00548A3A    and         ax,0FF
 00548A3E    movzx       eax,ax
 00548A41    call        IntToStr
 00548A46    mov         ecx,dword ptr [ebp-310]
 00548A4C    lea         eax,[ebp-30C]
 00548A52    mov         edx,549BC0;'AAM:          '
 00548A57    call        @LStrCat3
 00548A5C    mov         edx,dword ptr [ebp-30C]
 00548A62    mov         eax,dword ptr [ebp-4]
 00548A65    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548A6B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548A71    mov         ecx,dword ptr [eax]
 00548A73    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548A76    jmp         00548B17
 00548A7B    mov         edx,549BD0;'AAM:          '
 00548A80    lea         eax,[ebp-2E0]
 00548A86    call        @PStrCpy
 00548A8B    mov         edx,56DE88;'Disabled'
 00548A90    lea         eax,[ebp-2E0]
 00548A96    mov         cl,17
 00548A98    call        @PStrNCat
 00548A9D    lea         edx,[ebp-2E0]
 00548AA3    lea         eax,[ebp-314]
 00548AA9    call        @LStrFromString
 00548AAE    mov         edx,dword ptr [ebp-314]
 00548AB4    mov         eax,dword ptr [ebp-4]
 00548AB7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548ABD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548AC3    mov         ecx,dword ptr [eax]
 00548AC5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548AC8    jmp         00548B17
 00548ACA    mov         edx,549BD0;'AAM:          '
 00548ACF    lea         eax,[ebp-300]
 00548AD5    call        @PStrCpy
 00548ADA    mov         edx,56DEA0;'Not Supported'
 00548ADF    lea         eax,[ebp-300]
 00548AE5    mov         cl,1B
 00548AE7    call        @PStrNCat
 00548AEC    lea         edx,[ebp-300]
 00548AF2    lea         eax,[ebp-318]
 00548AF8    call        @LStrFromString
 00548AFD    mov         edx,dword ptr [ebp-318]
 00548B03    mov         eax,dword ptr [ebp-4]
 00548B06    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548B0C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548B12    mov         ecx,dword ptr [eax]
 00548B14    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548B17    mov         eax,[0056E344];^gvar_0059BF5C
 00548B1C    test        byte ptr [eax+0A5],4
>00548B23    je          00548BD8
 00548B29    mov         eax,[0056E344];^gvar_0059BF5C
 00548B2E    test        byte ptr [eax+0AB],4
>00548B35    je          00548B89
 00548B37    mov         edx,549BE0;'HPA:          '
 00548B3C    lea         eax,[ebp-2C4]
 00548B42    call        @PStrCpy
 00548B47    mov         edx,56DE80;'Enabled'
 00548B4C    lea         eax,[ebp-2C4]
 00548B52    mov         cl,15
 00548B54    call        @PStrNCat
 00548B59    lea         edx,[ebp-2C4]
 00548B5F    lea         eax,[ebp-31C]
 00548B65    call        @LStrFromString
 00548B6A    mov         edx,dword ptr [ebp-31C]
 00548B70    mov         eax,dword ptr [ebp-4]
 00548B73    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548B79    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548B7F    mov         ecx,dword ptr [eax]
 00548B81    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548B84    jmp         00548C25
 00548B89    mov         edx,549BE0;'HPA:          '
 00548B8E    lea         eax,[ebp-2E0]
 00548B94    call        @PStrCpy
 00548B99    mov         edx,56DE88;'Disabled'
 00548B9E    lea         eax,[ebp-2E0]
 00548BA4    mov         cl,17
 00548BA6    call        @PStrNCat
 00548BAB    lea         edx,[ebp-2E0]
 00548BB1    lea         eax,[ebp-320]
 00548BB7    call        @LStrFromString
 00548BBC    mov         edx,dword ptr [ebp-320]
 00548BC2    mov         eax,dword ptr [ebp-4]
 00548BC5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548BCB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548BD1    mov         ecx,dword ptr [eax]
 00548BD3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548BD6    jmp         00548C25
 00548BD8    mov         edx,549BE0;'HPA:          '
 00548BDD    lea         eax,[ebp-300]
 00548BE3    call        @PStrCpy
 00548BE8    mov         edx,56DEA0;'Not Supported'
 00548BED    lea         eax,[ebp-300]
 00548BF3    mov         cl,1B
 00548BF5    call        @PStrNCat
 00548BFA    lea         edx,[ebp-300]
 00548C00    lea         eax,[ebp-324]
 00548C06    call        @LStrFromString
 00548C0B    mov         edx,dword ptr [ebp-324]
 00548C11    mov         eax,dword ptr [ebp-4]
 00548C14    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548C1A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548C20    mov         ecx,dword ptr [eax]
 00548C22    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548C25    mov         eax,[0056E344];^gvar_0059BF5C
 00548C2A    test        byte ptr [eax+0A6],8
>00548C31    je          00548CE7
 00548C37    mov         eax,[0056E344];^gvar_0059BF5C
 00548C3C    test        byte ptr [eax+0AA],8
>00548C43    je          00548C98
 00548C45    lea         edx,[ebp-32C]
 00548C4B    mov         eax,[0056E344];^gvar_0059BF5C
 00548C50    mov         ax,word ptr [eax+0B6]
 00548C57    and         ax,0FF
 00548C5B    movzx       eax,ax
 00548C5E    call        IntToStr
 00548C63    mov         ecx,dword ptr [ebp-32C]
 00548C69    lea         eax,[ebp-328]
 00548C6F    mov         edx,549BF8;'APM:          '
 00548C74    call        @LStrCat3
 00548C79    mov         edx,dword ptr [ebp-328]
 00548C7F    mov         eax,dword ptr [ebp-4]
 00548C82    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548C88    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548C8E    mov         ecx,dword ptr [eax]
 00548C90    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548C93    jmp         00548D34
 00548C98    mov         edx,549C08;'APM:          '
 00548C9D    lea         eax,[ebp-2E0]
 00548CA3    call        @PStrCpy
 00548CA8    mov         edx,56DE88;'Disabled'
 00548CAD    lea         eax,[ebp-2E0]
 00548CB3    mov         cl,17
 00548CB5    call        @PStrNCat
 00548CBA    lea         edx,[ebp-2E0]
 00548CC0    lea         eax,[ebp-330]
 00548CC6    call        @LStrFromString
 00548CCB    mov         edx,dword ptr [ebp-330]
 00548CD1    mov         eax,dword ptr [ebp-4]
 00548CD4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548CDA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548CE0    mov         ecx,dword ptr [eax]
 00548CE2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548CE5    jmp         00548D34
 00548CE7    mov         edx,549C08;'APM:          '
 00548CEC    lea         eax,[ebp-300]
 00548CF2    call        @PStrCpy
 00548CF7    mov         edx,56DEA0;'Not Supported'
 00548CFC    lea         eax,[ebp-300]
 00548D02    mov         cl,1B
 00548D04    call        @PStrNCat
 00548D09    lea         edx,[ebp-300]
 00548D0F    lea         eax,[ebp-334]
 00548D15    call        @LStrFromString
 00548D1A    mov         edx,dword ptr [ebp-334]
 00548D20    mov         eax,dword ptr [ebp-4]
 00548D23    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548D29    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548D2F    mov         ecx,dword ptr [eax]
 00548D31    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548D34    mov         eax,[0056E344];^gvar_0059BF5C
 00548D39    test        byte ptr [eax+0AC],1
>00548D40    je          00548D91
 00548D42    mov         edx,549C18;'DLMcode:      '
 00548D47    lea         eax,[ebp-2E0]
 00548D4D    call        @PStrCpy
 00548D52    mov         edx,56DE94;'Supported'
 00548D57    lea         eax,[ebp-2E0]
 00548D5D    mov         cl,17
 00548D5F    call        @PStrNCat
 00548D64    lea         edx,[ebp-2E0]
 00548D6A    lea         eax,[ebp-338]
 00548D70    call        @LStrFromString
 00548D75    mov         edx,dword ptr [ebp-338]
 00548D7B    mov         eax,dword ptr [ebp-4]
 00548D7E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548D84    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548D8A    mov         ecx,dword ptr [eax]
 00548D8C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548D8F    jmp         00548DDE
 00548D91    mov         edx,549C28;'DLMCode:      '
 00548D96    lea         eax,[ebp-300]
 00548D9C    call        @PStrCpy
 00548DA1    mov         edx,56DEA0;'Not Supported'
 00548DA6    lea         eax,[ebp-300]
 00548DAC    mov         cl,1B
 00548DAE    call        @PStrNCat
 00548DB3    lea         edx,[ebp-300]
 00548DB9    lea         eax,[ebp-33C]
 00548DBF    call        @LStrFromString
 00548DC4    mov         edx,dword ptr [ebp-33C]
 00548DCA    mov         eax,dword ptr [ebp-4]
 00548DCD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548DD3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548DD9    mov         ecx,dword ptr [eax]
 00548DDB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548DDE    lea         eax,[ebp-8]
 00548DE1    call        @LStrClr
 00548DE6    mov         eax,[0056E344];^gvar_0059BF5C
 00548DEB    test        byte ptr [eax+0A4],20
>00548DF2    je          00548EA7
 00548DF8    mov         eax,[0056E344];^gvar_0059BF5C
 00548DFD    test        byte ptr [eax+0AA],20
>00548E04    je          00548E58
 00548E06    mov         edx,549C38;'Write Cache:  '
 00548E0B    lea         eax,[ebp-2C4]
 00548E11    call        @PStrCpy
 00548E16    mov         edx,56DE80;'Enabled'
 00548E1B    lea         eax,[ebp-2C4]
 00548E21    mov         cl,15
 00548E23    call        @PStrNCat
 00548E28    lea         edx,[ebp-2C4]
 00548E2E    lea         eax,[ebp-340]
 00548E34    call        @LStrFromString
 00548E39    mov         edx,dword ptr [ebp-340]
 00548E3F    mov         eax,dword ptr [ebp-4]
 00548E42    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548E48    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548E4E    mov         ecx,dword ptr [eax]
 00548E50    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548E53    jmp         00548EF4
 00548E58    mov         edx,549C38;'Write Cache:  '
 00548E5D    lea         eax,[ebp-2E0]
 00548E63    call        @PStrCpy
 00548E68    mov         edx,56DE88;'Disabled'
 00548E6D    lea         eax,[ebp-2E0]
 00548E73    mov         cl,17
 00548E75    call        @PStrNCat
 00548E7A    lea         edx,[ebp-2E0]
 00548E80    lea         eax,[ebp-344]
 00548E86    call        @LStrFromString
 00548E8B    mov         edx,dword ptr [ebp-344]
 00548E91    mov         eax,dword ptr [ebp-4]
 00548E94    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548E9A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548EA0    mov         ecx,dword ptr [eax]
 00548EA2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548EA5    jmp         00548EF4
 00548EA7    mov         edx,549C38;'Write Cache:  '
 00548EAC    lea         eax,[ebp-300]
 00548EB2    call        @PStrCpy
 00548EB7    mov         edx,56DEA0;'Not Supported'
 00548EBC    lea         eax,[ebp-300]
 00548EC2    mov         cl,1B
 00548EC4    call        @PStrNCat
 00548EC9    lea         edx,[ebp-300]
 00548ECF    lea         eax,[ebp-348]
 00548ED5    call        @LStrFromString
 00548EDA    mov         edx,dword ptr [ebp-348]
 00548EE0    mov         eax,dword ptr [ebp-4]
 00548EE3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548EE9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548EEF    mov         ecx,dword ptr [eax]
 00548EF1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00548EF4    mov         eax,[0056E344];^gvar_0059BF5C
 00548EF9    test        byte ptr [eax+0A4],2
>00548F00    je          0054900B
 00548F06    mov         eax,[0056E344];^gvar_0059BF5C
 00548F0B    test        byte ptr [eax+0AA],2
>00548F12    je          00548FBC
 00548F18    lea         eax,[ebp-8]
 00548F1B    mov         edx,549C50;'Security:     '
 00548F20    call        @LStrLAsg
 00548F25    mov         eax,[0056E344];^gvar_0059BF5C
 00548F2A    test        byte ptr [eax+101],1
>00548F31    je          00548F42
 00548F33    lea         eax,[ebp-8]
 00548F36    mov         edx,549C68;'Maximum, '
 00548F3B    call        @LStrCat
>00548F40    jmp         00548F4F
 00548F42    lea         eax,[ebp-8]
 00548F45    mov         edx,549C7C;'High, '
 00548F4A    call        @LStrCat
 00548F4F    mov         eax,[0056E344];^gvar_0059BF5C
 00548F54    test        byte ptr [eax+100],4
>00548F5B    je          00548F6A
 00548F5D    lea         eax,[ebp-8]
 00548F60    mov         edx,549C8C;'Locked, '
 00548F65    call        @LStrCat
 00548F6A    mov         eax,[0056E344];^gvar_0059BF5C
 00548F6F    test        byte ptr [eax+100],8
>00548F76    je          00548F85
 00548F78    lea         eax,[ebp-8]
 00548F7B    mov         edx,549CA0;'Frozen, '
 00548F80    call        @LStrCat
 00548F85    mov         eax,[0056E344];^gvar_0059BF5C
 00548F8A    test        byte ptr [eax+100],10
>00548F91    je          00548FA0
 00548F93    lea         eax,[ebp-8]
 00548F96    mov         edx,549CB4;'Count Expired '
 00548F9B    call        @LStrCat
 00548FA0    mov         eax,dword ptr [ebp-4]
 00548FA3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548FA9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00548FAF    mov         edx,dword ptr [ebp-8]
 00548FB2    mov         ecx,dword ptr [eax]
 00548FB4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00548FB7    jmp         00549058
 00548FBC    mov         edx,549CC4;'Security:     '
 00548FC1    lea         eax,[ebp-2E0]
 00548FC7    call        @PStrCpy
 00548FCC    mov         edx,56DE88;'Disabled'
 00548FD1    lea         eax,[ebp-2E0]
 00548FD7    mov         cl,17
 00548FD9    call        @PStrNCat
 00548FDE    lea         edx,[ebp-2E0]
 00548FE4    lea         eax,[ebp-34C]
 00548FEA    call        @LStrFromString
 00548FEF    mov         edx,dword ptr [ebp-34C]
 00548FF5    mov         eax,dword ptr [ebp-4]
 00548FF8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00548FFE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549004    mov         ecx,dword ptr [eax]
 00549006    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00549009    jmp         00549058
 0054900B    mov         edx,549CC4;'Security:     '
 00549010    lea         eax,[ebp-300]
 00549016    call        @PStrCpy
 0054901B    mov         edx,56DEA0;'Not Supported'
 00549020    lea         eax,[ebp-300]
 00549026    mov         cl,1B
 00549028    call        @PStrNCat
 0054902D    lea         edx,[ebp-300]
 00549033    lea         eax,[ebp-350]
 00549039    call        @LStrFromString
 0054903E    mov         edx,dword ptr [ebp-350]
 00549044    mov         eax,dword ptr [ebp-4]
 00549047    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054904D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549053    mov         ecx,dword ptr [eax]
 00549055    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549058    mov         eax,[0056E344];^gvar_0059BF5C
 0054905D    test        byte ptr [eax+19C],1
>00549064    je          00549117
 0054906A    lea         eax,[ebp-8]
 0054906D    mov         edx,549CDC;'SCT:          '
 00549072    call        @LStrLAsg
 00549077    mov         eax,[0056E344];^gvar_0059BF5C
 0054907C    test        byte ptr [eax+19C],2
>00549083    je          00549092
 00549085    lea         eax,[ebp-8]
 00549088    mov         edx,549CF4;'AC1'
 0054908D    call        @LStrCat
 00549092    mov         eax,[0056E344];^gvar_0059BF5C
 00549097    test        byte ptr [eax+19C],4
>0054909E    je          005490AD
 005490A0    lea         eax,[ebp-8]
 005490A3    mov         edx,549D00;', AC2'
 005490A8    call        @LStrCat
 005490AD    mov         eax,[0056E344];^gvar_0059BF5C
 005490B2    test        byte ptr [eax+19C],8
>005490B9    je          005490C8
 005490BB    lea         eax,[ebp-8]
 005490BE    mov         edx,549D10;', AC3'
 005490C3    call        @LStrCat
 005490C8    mov         eax,[0056E344];^gvar_0059BF5C
 005490CD    test        byte ptr [eax+19C],10
>005490D4    je          005490E3
 005490D6    lea         eax,[ebp-8]
 005490D9    mov         edx,549D20;', AC4'
 005490DE    call        @LStrCat
 005490E3    mov         eax,[0056E344];^gvar_0059BF5C
 005490E8    test        byte ptr [eax+19C],20
>005490EF    je          005490FE
 005490F1    lea         eax,[ebp-8]
 005490F4    mov         edx,549D30;', AC5'
 005490F9    call        @LStrCat
 005490FE    mov         eax,dword ptr [ebp-4]
 00549101    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549107    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054910D    mov         edx,dword ptr [ebp-8]
 00549110    mov         ecx,dword ptr [eax]
 00549112    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00549115    jmp         00549164
 00549117    mov         edx,549D38;'SCT:          '
 0054911C    lea         eax,[ebp-300]
 00549122    call        @PStrCpy
 00549127    mov         edx,56DEA0;'Not Supported'
 0054912C    lea         eax,[ebp-300]
 00549132    mov         cl,1B
 00549134    call        @PStrNCat
 00549139    lea         edx,[ebp-300]
 0054913F    lea         eax,[ebp-354]
 00549145    call        @LStrFromString
 0054914A    mov         edx,dword ptr [ebp-354]
 00549150    mov         eax,dword ptr [ebp-4]
 00549153    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549159    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054915F    mov         ecx,dword ptr [eax]
 00549161    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549164    push        11
 00549166    call        user32.GetKeyState
 0054916B    test        ax,ax
>0054916E    jge         00549715
 00549174    mov         word ptr [ebp-22],2
 0054917A    mov         word ptr [ebp-24],4
 00549180    mov         word ptr [ebp-26],100
 00549186    mov         word ptr [ebp-28],200
 0054918C    mov         word ptr [ebp-2A],400
 00549192    mov         word ptr [ebp-2C],2
 00549198    mov         word ptr [ebp-2E],4
 0054919E    mov         word ptr [ebp-30],8
 005491A4    mov         word ptr [ebp-32],10
 005491AA    mov         word ptr [ebp-34],40
 005491B0    mov         eax,[0056E344];^gvar_0059BF5C
 005491B5    mov         ax,word ptr [eax+96]
 005491BC    mov         word ptr [ebp-1A],ax
 005491C0    mov         eax,[0056E344];^gvar_0059BF5C
 005491C5    mov         ax,word ptr [eax+98]
 005491CC    mov         word ptr [ebp-1C],ax
 005491D0    mov         eax,[0056E344];^gvar_0059BF5C
 005491D5    mov         ax,word ptr [eax+9C]
 005491DC    mov         word ptr [ebp-1E],ax
 005491E0    mov         eax,[0056E344];^gvar_0059BF5C
 005491E5    mov         ax,word ptr [eax+9E]
 005491EC    mov         word ptr [ebp-20],ax
 005491F0    mov         ax,word ptr [ebp-1C]
 005491F4    and         ax,word ptr [ebp-22]
 005491F8    cmp         ax,word ptr [ebp-22]
>005491FC    je          00549210
 005491FE    mov         ax,word ptr [ebp-1C]
 00549202    and         ax,word ptr [ebp-24]
 00549206    cmp         ax,word ptr [ebp-24]
>0054920A    jne         00549715
 00549210    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549215    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054921B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549221    mov         edx,549D50;#10+SATA specific Identify Device data:'
 00549226    mov         ecx,dword ptr [eax]
 00549228    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054922B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549230    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549236    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054923C    mov         edx,549D80;'-----------------------------------'
 00549241    mov         ecx,dword ptr [eax]
 00549243    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549246    lea         eax,[ebp-358]
 0054924C    push        eax
 0054924D    mov         ax,word ptr [ebp-1A]
 00549251    and         ax,0FF
 00549255    movzx       eax,ax
 00549258    inc         eax
 00549259    mov         dword ptr [ebp-360],eax
 0054925F    mov         byte ptr [ebp-35C],0
 00549266    lea         edx,[ebp-360]
 0054926C    xor         ecx,ecx
 0054926E    mov         eax,549DAC;'Queue Depth:  %d'+#10
 00549273    call        0040D630
 00549278    mov         edx,dword ptr [ebp-358]
 0054927E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549283    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549289    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054928F    mov         ecx,dword ptr [eax]
 00549291    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549294    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549299    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054929F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005492A5    mov         edx,549DC8;'Sata Capabilities:'
 005492AA    mov         ecx,dword ptr [eax]
 005492AC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005492AF    lea         eax,[ebp-364]
 005492B5    push        eax
 005492B6    push        ebp
 005492B7    mov         ax,word ptr [ebp-1C]
 005492BB    and         ax,word ptr [ebp-22]
 005492BF    cmp         ax,word ptr [ebp-22]
 005492C3    sete        al
 005492C6    lea         edx,[ebp-368]
 005492CC    call        00547C64
 005492D1    pop         ecx
 005492D2    mov         eax,dword ptr [ebp-368]
 005492D8    mov         dword ptr [ebp-360],eax
 005492DE    mov         byte ptr [ebp-35C],0B
 005492E5    lea         edx,[ebp-360]
 005492EB    xor         ecx,ecx
 005492ED    mov         eax,549DE4;'  GEN 1 Speed Capable        = %s'
 005492F2    call        0040D630
 005492F7    mov         edx,dword ptr [ebp-364]
 005492FD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549302    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549308    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054930E    mov         ecx,dword ptr [eax]
 00549310    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549313    lea         eax,[ebp-36C]
 00549319    push        eax
 0054931A    push        ebp
 0054931B    mov         ax,word ptr [ebp-1C]
 0054931F    and         ax,word ptr [ebp-24]
 00549323    cmp         ax,word ptr [ebp-24]
 00549327    sete        al
 0054932A    lea         edx,[ebp-370]
 00549330    call        00547C64
 00549335    pop         ecx
 00549336    mov         eax,dword ptr [ebp-370]
 0054933C    mov         dword ptr [ebp-360],eax
 00549342    mov         byte ptr [ebp-35C],0B
 00549349    lea         edx,[ebp-360]
 0054934F    xor         ecx,ecx
 00549351    mov         eax,549E10;'  GEN 2 Speed Capable        = %s'
 00549356    call        0040D630
 0054935B    mov         edx,dword ptr [ebp-36C]
 00549361    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549366    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054936C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549372    mov         ecx,dword ptr [eax]
 00549374    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549377    lea         eax,[ebp-374]
 0054937D    push        eax
 0054937E    push        ebp
 0054937F    mov         ax,word ptr [ebp-1C]
 00549383    and         ax,word ptr [ebp-26]
 00549387    cmp         ax,word ptr [ebp-26]
 0054938B    sete        al
 0054938E    lea         edx,[ebp-378]
 00549394    call        00547C64
 00549399    pop         ecx
 0054939A    mov         eax,dword ptr [ebp-378]
 005493A0    mov         dword ptr [ebp-360],eax
 005493A6    mov         byte ptr [ebp-35C],0B
 005493AD    lea         edx,[ebp-360]
 005493B3    xor         ecx,ecx
 005493B5    mov         eax,549E3C;'  NCQ Capable                = %s'
 005493BA    call        0040D630
 005493BF    mov         edx,dword ptr [ebp-374]
 005493C5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005493CA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005493D0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005493D6    mov         ecx,dword ptr [eax]
 005493D8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005493DB    lea         eax,[ebp-37C]
 005493E1    push        eax
 005493E2    push        ebp
 005493E3    mov         ax,word ptr [ebp-1C]
 005493E7    and         ax,word ptr [ebp-28]
 005493EB    cmp         ax,word ptr [ebp-28]
 005493EF    sete        al
 005493F2    lea         edx,[ebp-380]
 005493F8    call        00547C64
 005493FD    pop         ecx
 005493FE    mov         eax,dword ptr [ebp-380]
 00549404    mov         dword ptr [ebp-360],eax
 0054940A    mov         byte ptr [ebp-35C],0B
 00549411    lea         edx,[ebp-360]
 00549417    xor         ecx,ecx
 00549419    mov         eax,549E68;'  Host Initiated PM Capable  = %s'
 0054941E    call        0040D630
 00549423    mov         edx,dword ptr [ebp-37C]
 00549429    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054942E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549434    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054943A    mov         ecx,dword ptr [eax]
 0054943C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054943F    lea         eax,[ebp-384]
 00549445    push        eax
 00549446    push        ebp
 00549447    mov         ax,word ptr [ebp-1C]
 0054944B    and         ax,word ptr [ebp-2A]
 0054944F    cmp         ax,word ptr [ebp-2A]
 00549453    sete        al
 00549456    lea         edx,[ebp-388]
 0054945C    call        00547C64
 00549461    pop         ecx
 00549462    mov         eax,dword ptr [ebp-388]
 00549468    mov         dword ptr [ebp-360],eax
 0054946E    mov         byte ptr [ebp-35C],0B
 00549475    lea         edx,[ebp-360]
 0054947B    xor         ecx,ecx
 0054947D    mov         eax,549E94;'  Phy Counters Capable       = %s'
 00549482    call        0040D630
 00549487    mov         edx,dword ptr [ebp-384]
 0054948D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549492    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549498    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054949E    mov         ecx,dword ptr [eax]
 005494A0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005494A3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005494A8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005494AE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005494B4    xor         edx,edx
 005494B6    mov         ecx,dword ptr [eax]
 005494B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005494BB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005494C0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005494C6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005494CC    mov         edx,549EC0;'Sata Features:'
 005494D1    mov         ecx,dword ptr [eax]
 005494D3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005494D6    lea         eax,[ebp-38C]
 005494DC    push        eax
 005494DD    push        ebp
 005494DE    mov         ax,word ptr [ebp-20]
 005494E2    and         ax,word ptr [ebp-2C]
 005494E6    cmp         ax,word ptr [ebp-2C]
 005494EA    sete        dl
 005494ED    mov         ax,word ptr [ebp-1E]
 005494F1    and         ax,word ptr [ebp-2C]
 005494F5    cmp         ax,word ptr [ebp-2C]
 005494F9    sete        al
 005494FC    lea         ecx,[ebp-390]
 00549502    call        00547CB0
 00549507    pop         ecx
 00549508    mov         eax,dword ptr [ebp-390]
 0054950E    mov         dword ptr [ebp-360],eax
 00549514    mov         byte ptr [ebp-35C],0B
 0054951B    lea         edx,[ebp-360]
 00549521    xor         ecx,ecx
 00549523    mov         eax,549ED8;'  Non-Zero Bfr Ofs in DMA Setup FIS = %s'
 00549528    call        0040D630
 0054952D    mov         edx,dword ptr [ebp-38C]
 00549533    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549538    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054953E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549544    mov         ecx,dword ptr [eax]
 00549546    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549549    lea         eax,[ebp-394]
 0054954F    push        eax
 00549550    push        ebp
 00549551    mov         ax,word ptr [ebp-20]
 00549555    and         ax,word ptr [ebp-2E]
 00549559    cmp         ax,word ptr [ebp-2E]
 0054955D    sete        dl
 00549560    mov         ax,word ptr [ebp-1E]
 00549564    and         ax,word ptr [ebp-2E]
 00549568    cmp         ax,word ptr [ebp-2E]
 0054956C    sete        al
 0054956F    lea         ecx,[ebp-398]
 00549575    call        00547CB0
 0054957A    pop         ecx
 0054957B    mov         eax,dword ptr [ebp-398]
 00549581    mov         dword ptr [ebp-360],eax
 00549587    mov         byte ptr [ebp-35C],0B
 0054958E    lea         edx,[ebp-360]
 00549594    xor         ecx,ecx
 00549596    mov         eax,549F0C;'  DMA Setup Auto-Activate Opt.      = %s'
 0054959B    call        0040D630
 005495A0    mov         edx,dword ptr [ebp-394]
 005495A6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005495AB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005495B1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005495B7    mov         ecx,dword ptr [eax]
 005495B9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005495BC    lea         eax,[ebp-39C]
 005495C2    push        eax
 005495C3    push        ebp
 005495C4    mov         ax,word ptr [ebp-20]
 005495C8    and         ax,word ptr [ebp-30]
 005495CC    cmp         ax,word ptr [ebp-30]
 005495D0    sete        dl
 005495D3    mov         ax,word ptr [ebp-1E]
 005495D7    and         ax,word ptr [ebp-30]
 005495DB    cmp         ax,word ptr [ebp-30]
 005495DF    sete        al
 005495E2    lea         ecx,[ebp-3A0]
 005495E8    call        00547CB0
 005495ED    pop         ecx
 005495EE    mov         eax,dword ptr [ebp-3A0]
 005495F4    mov         dword ptr [ebp-360],eax
 005495FA    mov         byte ptr [ebp-35C],0B
 00549601    lea         edx,[ebp-360]
 00549607    xor         ecx,ecx
 00549609    mov         eax,549F40;'  Device Initiated PM               = %s'
 0054960E    call        0040D630
 00549613    mov         edx,dword ptr [ebp-39C]
 00549619    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054961E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549624    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054962A    mov         ecx,dword ptr [eax]
 0054962C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054962F    lea         eax,[ebp-3A4]
 00549635    push        eax
 00549636    push        ebp
 00549637    mov         ax,word ptr [ebp-20]
 0054963B    and         ax,word ptr [ebp-32]
 0054963F    cmp         ax,word ptr [ebp-32]
 00549643    sete        dl
 00549646    mov         ax,word ptr [ebp-1E]
 0054964A    and         ax,word ptr [ebp-32]
 0054964E    cmp         ax,word ptr [ebp-32]
 00549652    sete        al
 00549655    lea         ecx,[ebp-3A8]
 0054965B    call        00547CB0
 00549660    pop         ecx
 00549661    mov         eax,dword ptr [ebp-3A8]
 00549667    mov         dword ptr [ebp-360],eax
 0054966D    mov         byte ptr [ebp-35C],0B
 00549674    lea         edx,[ebp-360]
 0054967A    xor         ecx,ecx
 0054967C    mov         eax,549F74;'  In Order Data Delivery            = %s'
 00549681    call        0040D630
 00549686    mov         edx,dword ptr [ebp-3A4]
 0054968C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549691    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549697    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054969D    mov         ecx,dword ptr [eax]
 0054969F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005496A2    lea         eax,[ebp-3AC]
 005496A8    push        eax
 005496A9    push        ebp
 005496AA    mov         ax,word ptr [ebp-20]
 005496AE    and         ax,word ptr [ebp-34]
 005496B2    cmp         ax,word ptr [ebp-34]
 005496B6    sete        dl
 005496B9    mov         ax,word ptr [ebp-1E]
 005496BD    and         ax,word ptr [ebp-34]
 005496C1    cmp         ax,word ptr [ebp-34]
 005496C5    sete        al
 005496C8    lea         ecx,[ebp-3B0]
 005496CE    call        00547CB0
 005496D3    pop         ecx
 005496D4    mov         eax,dword ptr [ebp-3B0]
 005496DA    mov         dword ptr [ebp-360],eax
 005496E0    mov         byte ptr [ebp-35C],0B
 005496E7    lea         edx,[ebp-360]
 005496ED    xor         ecx,ecx
 005496EF    mov         eax,549FA8;'  Software Settings preserved       = %s'
 005496F4    call        0040D630
 005496F9    mov         edx,dword ptr [ebp-3AC]
 005496FF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00549704    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054970A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549710    mov         ecx,dword ptr [eax]
 00549712    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549715    mov         eax,[0056E60C];^gvar_0056DF44
 0054971A    mov         eax,dword ptr [eax]
 0054971C    call        @LStrLen
 00549721    test        eax,eax
>00549723    jle         00549789
 00549725    mov         dword ptr [ebp-38],eax
 00549728    mov         dword ptr [ebp-18],1
 0054972F    mov         eax,[0056E60C];^gvar_0056DF44
 00549734    mov         eax,dword ptr [eax]
 00549736    mov         edx,dword ptr [ebp-18]
 00549739    movzx       eax,byte ptr [eax+edx-1]
 0054973E    cmp         eax,3A
>00549741    jge         00549755
 00549743    sub         eax,20
>00549746    jb          0054976F
 00549748    dec         eax
 00549749    sub         eax,0C
>0054974C    jb          0054976F
 0054974E    sub         eax,2
>00549751    je          0054976F
>00549753    jmp         00549781
 00549755    add         eax,0FFFFFFC6
 00549758    sub         eax,6
>0054975B    jb          0054976F
 0054975D    add         eax,0FFFFFFE5
 00549760    sub         eax,4
>00549763    jb          0054976F
 00549765    add         eax,0FFFFFFE5
 00549768    sub         eax,86
>0054976D    jae         00549781
 0054976F    mov         eax,[0056E60C];^gvar_0056DF44
 00549774    call        00405598
 00549779    mov         edx,dword ptr [ebp-18]
 0054977C    mov         byte ptr [eax+edx-1],5F
 00549781    inc         dword ptr [ebp-18]
 00549784    dec         dword ptr [ebp-38]
>00549787    jne         0054972F
 00549789    mov         eax,dword ptr [ebp-4]
 0054978C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549792    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00549798    xor         edx,edx
 0054979A    mov         ecx,dword ptr [eax]
 0054979C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054979F    mov         eax,[0056E540];^gvar_0056DF50
 005497A4    mov         eax,dword ptr [eax]
 005497A6    mov         edx,549FDC;'Unknown'
 005497AB    call        @LStrCmp
>005497B0    je          00549861
 005497B6    mov         eax,[0056E284];^gvar_0056DF34
 005497BB    mov         eax,dword ptr [eax]
 005497BD    mov         eax,dword ptr [eax+410]
 005497C3    cmp         byte ptr [eax+38],0
>005497C7    je          005497ED
 005497C9    lea         edx,[ebp-3B4]
 005497CF    mov         eax,[0056DFC0];^gvar_0056DF40
 005497D4    mov         eax,dword ptr [eax]
 005497D6    call        004115C4
 005497DB    mov         edx,dword ptr [ebp-3B4]
 005497E1    mov         eax,[0056E2D0];^gvar_0056DF38
 005497E6    call        @LStrAsg
>005497EB    jmp         00549861
 005497ED    mov         eax,[0056E138];^gvar_0056DF3C
 005497F2    push        dword ptr [eax]
 005497F4    lea         edx,[ebp-3C0]
 005497FA    mov         eax,[0056E540];^gvar_0056DF50
 005497FF    mov         eax,dword ptr [eax]
 00549801    call        0040BFEC
 00549806    push        dword ptr [ebp-3C0]
 0054980C    push        549FEC;'\'
 00549811    mov         eax,[0056E60C];^gvar_0056DF44
 00549816    push        dword ptr [eax]
 00549818    push        549FF8;'_'
 0054981D    mov         eax,[0056E0E4];^gvar_0056DF48
 00549822    push        dword ptr [eax]
 00549824    push        549FF8;'_'
 00549829    mov         eax,[0056E4AC];^gvar_0056DF4C
 0054982E    push        dword ptr [eax]
 00549830    lea         eax,[ebp-3BC]
 00549836    mov         edx,8
 0054983B    call        @LStrCatN
 00549840    mov         eax,dword ptr [ebp-3BC]
 00549846    lea         edx,[ebp-3B8]
 0054984C    call        004115C4
 00549851    mov         edx,dword ptr [ebp-3B8]
 00549857    mov         eax,[0056E2D0];^gvar_0056DF38
 0054985C    call        @LStrAsg
 00549861    mov         eax,[0056E2D0];^gvar_0056DF38
 00549866    mov         eax,dword ptr [eax]
 00549868    call        004CC648
 0054986D    test        al,al
>0054986F    jne         005498A0
 00549871    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00549877    mov         ecx,dword ptr [ecx]
 00549879    lea         eax,[ebp-3C4]
 0054987F    mov         edx,5499E0;'Cannot create '
 00549884    call        @LStrCat3
 00549889    mov         ecx,dword ptr [ebp-3C4]
 0054988F    mov         dl,1
 00549891    mov         eax,[0040B004];Exception
 00549896    call        Exception.Create;Exception.Create
 0054989B    call        @RaiseExcept
 005498A0    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005498A6    mov         edx,dword ptr [edx]
 005498A8    lea         eax,[ebp-3C8]
 005498AE    mov         ecx,54A004;'id.bin'
 005498B3    call        @LStrCat3
 005498B8    mov         edx,dword ptr [ebp-3C8]
 005498BE    mov         eax,[0056E568];^gvar_0059EF60
 005498C3    call        @Assign
 005498C8    mov         eax,[0056E568];^gvar_0059EF60
 005498CD    mov         edx,2
 005498D2    call        @RewritFile
 005498D7    call        @_IOTest
 005498DC    call        0056026C
 005498E1    mov         eax,[0056E568];^gvar_0059EF60
 005498E6    call        @Close
 005498EB    call        @_IOTest
 005498F0    xor         eax,eax
 005498F2    mov         al,byte ptr [ebp-132]
 005498F8    mov         edx,dword ptr ds:[56E304];^gvar_0056DF54
 005498FE    mov         word ptr [edx],ax
 00549901    mov         eax,[0056E304];^gvar_0056DF54
 00549906    cmp         word ptr [eax],6E
>0054990A    jne         00549916
 0054990C    mov         eax,[0056E01C];^gvar_005720C1
 00549911    mov         byte ptr [eax],1
>00549914    jmp         0054991E
 00549916    mov         eax,[0056E01C];^gvar_005720C1
 0054991B    mov         byte ptr [eax],0
 0054991E    mov         eax,dword ptr [ebp-4]
 00549921    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00549927    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054992D    xor         edx,edx
 0054992F    mov         ecx,dword ptr [eax]
 00549931    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00549934    xor         eax,eax
 00549936    pop         edx
 00549937    pop         ecx
 00549938    pop         ecx
 00549939    mov         dword ptr fs:[eax],edx
 0054993C    push        5499D0
 00549941    lea         eax,[ebp-3C8]
 00549947    mov         edx,1A
 0054994C    call        @LStrArrayClr
 00549951    lea         eax,[ebp-358]
 00549957    mov         edx,16
 0054995C    call        @LStrArrayClr
 00549961    lea         eax,[ebp-2E4]
 00549967    call        @LStrClr
 0054996C    lea         eax,[ebp-2C8]
 00549972    call        @LStrClr
 00549977    lea         eax,[ebp-2AC]
 0054997D    mov         edx,0F
 00549982    call        @LStrArrayClr
 00549987    lea         eax,[ebp-270]
 0054998D    mov         edx,2
 00549992    call        @LStrArrayClr
 00549997    lea         eax,[ebp-268]
 0054999D    mov         edx,9
 005499A2    call        @LStrArrayClr
 005499A7    lea         eax,[ebp-244]
 005499AD    call        @LStrClr
 005499B2    lea         eax,[ebp-240]
 005499B8    call        @LStrClr
 005499BD    lea         eax,[ebp-8]
 005499C0    call        @LStrClr
 005499C5    ret
>005499C6    jmp         @HandleFinally
>005499CB    jmp         00549941
 005499D0    pop         ebx
 005499D1    mov         esp,ebp
 005499D3    pop         ebp
 005499D4    ret
*}
end;

//00549D38
procedure 'SCT:          ';
begin
{*
 00549D38    push        cs
 00549D39    push        ebx
 00549D3A    inc         ebx
 00549D3B    push        esp
 00549D3C    cmp         ah,byte ptr [eax]
 00549D3E    and         byte ptr [eax],ah
 00549D40    and         byte ptr [eax],ah
 00549D42    and         byte ptr [eax],ah
 00549D44    and         byte ptr [eax],ah
 00549D46    and         byte ptr [eax],al
 00549D48    ???
 00549D49    ???
 00549D4A    ???
 00549D4B    jmp         dword ptr [eax+eax]
*}
end;

//0054A00C
procedure TfmHDD.miATA1Click(Sender:TObject);
begin
{*
 0054A00C    push        ebp
 0054A00D    mov         ebp,esp
 0054A00F    add         esp,0FFFFFFF8
 0054A012    mov         dword ptr [ebp-8],edx
 0054A015    mov         dword ptr [ebp-4],eax
 0054A018    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0054A01D    cmp         byte ptr [eax],0
>0054A020    je          0054A02E
 0054A022    mov         eax,54A040;'Not supported now!'
 0054A027    call        0043F8B4
>0054A02C    jmp         0054A033
 0054A02E    call        00560360
 0054A033    pop         ecx
 0054A034    pop         ecx
 0054A035    pop         ebp
 0054A036    ret
*}
end;

//0054A054
procedure TfmHDD.miStructure1Click(Sender:TObject);
begin
{*
 0054A054    push        ebp
 0054A055    mov         ebp,esp
 0054A057    add         esp,0FFFFFFF8
 0054A05A    mov         dword ptr [ebp-8],edx
 0054A05D    mov         dword ptr [ebp-4],eax
 0054A060    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054A066    mov         eax,[00500738];TfmModules
 0054A06B    call        0050121C
 0054A070    pop         ecx
 0054A071    pop         ecx
 0054A072    pop         ebp
 0054A073    ret
*}
end;

//0054A074
procedure TfmHDD.miSuper1Click(Sender:TObject);
begin
{*
 0054A074    push        ebp
 0054A075    mov         ebp,esp
 0054A077    add         esp,0FFFFFFF8
 0054A07A    mov         dword ptr [ebp-8],edx
 0054A07D    mov         dword ptr [ebp-4],eax
 0054A080    mov         ax,1
 0054A084    call        004CF350
 0054A089    push        1F4
 0054A08E    call        kernel32.Sleep
 0054A093    call        004CEB6C
 0054A098    mov         eax,54A0B0;'Power On Reset Immediate - '
 0054A09D    call        00544F6C
 0054A0A2    pop         ecx
 0054A0A3    pop         ecx
 0054A0A4    pop         ebp
 0054A0A5    ret
*}
end;

//0054A0CC
procedure TfmHDD.miSuper2Click(Sender:TObject);
begin
{*
 0054A0CC    push        ebp
 0054A0CD    mov         ebp,esp
 0054A0CF    add         esp,0FFFFFFF8
 0054A0D2    mov         dword ptr [ebp-8],edx
 0054A0D5    mov         dword ptr [ebp-4],eax
 0054A0D8    mov         ax,2
 0054A0DC    call        004CF350
 0054A0E1    push        1F4
 0054A0E6    call        kernel32.Sleep
 0054A0EB    call        004CEB6C
 0054A0F0    mov         eax,54A108;'Spindown and Power On Reset - '
 0054A0F5    call        00544F6C
 0054A0FA    pop         ecx
 0054A0FB    pop         ecx
 0054A0FC    pop         ebp
 0054A0FD    ret
*}
end;

//0054A128
procedure TfmHDD.miSuper3Click(Sender:TObject);
begin
{*
 0054A128    push        ebp
 0054A129    mov         ebp,esp
 0054A12B    add         esp,0FFFFFFF8
 0054A12E    mov         dword ptr [ebp-8],edx
 0054A131    mov         dword ptr [ebp-4],eax
 0054A134    mov         ax,3
 0054A138    call        004CF350
 0054A13D    push        1F4
 0054A142    call        kernel32.Sleep
 0054A147    call        004CEB6C
 0054A14C    mov         eax,54A164;'Soft Reset - '
 0054A151    call        00544F6C
 0054A156    pop         ecx
 0054A157    pop         ecx
 0054A158    pop         ebp
 0054A159    ret
*}
end;

//0054A174
procedure TfmHDD.miStopspindle1Click(Sender:TObject);
begin
{*
 0054A174    push        ebp
 0054A175    mov         ebp,esp
 0054A177    add         esp,0FFFFFFF8
 0054A17A    mov         dword ptr [ebp-8],edx
 0054A17D    mov         dword ptr [ebp-4],eax
 0054A180    call        004CF3B8
 0054A185    call        004CEB6C
 0054A18A    mov         eax,54A1A0;'Spin Down - '
 0054A18F    call        00544F6C
 0054A194    pop         ecx
 0054A195    pop         ecx
 0054A196    pop         ebp
 0054A197    ret
*}
end;

//0054A1B0
procedure TfmHDD.miStartspindle1Click(Sender:TObject);
begin
{*
 0054A1B0    push        ebp
 0054A1B1    mov         ebp,esp
 0054A1B3    add         esp,0FFFFFFF8
 0054A1B6    mov         dword ptr [ebp-8],edx
 0054A1B9    mov         dword ptr [ebp-4],eax
 0054A1BC    call        004CF3E0
 0054A1C1    call        004CEB6C
 0054A1C6    mov         eax,54A1DC;'Spin Up - '
 0054A1CB    call        00544F6C
 0054A1D0    pop         ecx
 0054A1D1    pop         ecx
 0054A1D2    pop         ebp
 0054A1D3    ret
*}
end;

//0054A1E8
procedure TfmHDD.miWithPListandGLIST1Click(Sender:TObject);
begin
{*
 0054A1E8    push        ebp
 0054A1E9    mov         ebp,esp
 0054A1EB    add         esp,0FFFFFFF8
 0054A1EE    mov         dword ptr [ebp-8],edx
 0054A1F1    mov         dword ptr [ebp-4],eax
 0054A1F4    mov         eax,54A228;'Format With P and G-List - Start'
 0054A1F9    call        00544EB4
 0054A1FE    xor         eax,eax
 0054A200    call        004CF408
 0054A205    call        004CCA5C
 0054A20A    mov         eax,54A254;'Format With P and G-List - '
 0054A20F    call        00544F6C
 0054A214    call        005451D0
 0054A219    pop         ecx
 0054A21A    pop         ecx
 0054A21B    pop         ebp
 0054A21C    ret
*}
end;

//0054A270
procedure TfmHDD.miWithPList1Click(Sender:TObject);
begin
{*
 0054A270    push        ebp
 0054A271    mov         ebp,esp
 0054A273    add         esp,0FFFFFFF8
 0054A276    mov         dword ptr [ebp-8],edx
 0054A279    mov         dword ptr [ebp-4],eax
 0054A27C    mov         eax,54A2B0;'Format With P-List - Start'
 0054A281    call        00544EB4
 0054A286    mov         ax,2
 0054A28A    call        004CF408
 0054A28F    call        004CCA5C
 0054A294    mov         eax,54A2D4;'Format With P-List - '
 0054A299    call        00544F6C
 0054A29E    call        005451D0
 0054A2A3    pop         ecx
 0054A2A4    pop         ecx
 0054A2A5    pop         ebp
 0054A2A6    ret
*}
end;

//0054A2EC
procedure TfmHDD.miWithGList1Click(Sender:TObject);
begin
{*
 0054A2EC    push        ebp
 0054A2ED    mov         ebp,esp
 0054A2EF    add         esp,0FFFFFFF8
 0054A2F2    mov         dword ptr [ebp-8],edx
 0054A2F5    mov         dword ptr [ebp-4],eax
 0054A2F8    mov         eax,54A32C;'Format With G-List - Start'
 0054A2FD    call        00544EB4
 0054A302    mov         ax,1
 0054A306    call        004CF408
 0054A30B    call        004CCA5C
 0054A310    mov         eax,54A350;'Format With G-List - '
 0054A315    call        00544F6C
 0054A31A    call        005451D0
 0054A31F    pop         ecx
 0054A320    pop         ecx
 0054A321    pop         ebp
 0054A322    ret
*}
end;

//0054A368
procedure TfmHDD.miWithoutlists1Click(Sender:TObject);
begin
{*
 0054A368    push        ebp
 0054A369    mov         ebp,esp
 0054A36B    add         esp,0FFFFFFF8
 0054A36E    mov         dword ptr [ebp-8],edx
 0054A371    mov         dword ptr [ebp-4],eax
 0054A374    mov         eax,54A3A8;'Format Without Lists - Start'
 0054A379    call        00544EB4
 0054A37E    mov         ax,3
 0054A382    call        004CF408
 0054A387    call        004CCA5C
 0054A38C    mov         eax,54A3D0;'Format Without Lists - '
 0054A391    call        00544F6C
 0054A396    call        005451D0
 0054A39B    pop         ecx
 0054A39C    pop         ecx
 0054A39D    pop         ebp
 0054A39E    ret
*}
end;

//0054A3E8
procedure TfmHDD.miQuickwithPList1Click(Sender:TObject);
begin
{*
 0054A3E8    push        ebp
 0054A3E9    mov         ebp,esp
 0054A3EB    add         esp,0FFFFFFF8
 0054A3EE    mov         dword ptr [ebp-8],edx
 0054A3F1    mov         dword ptr [ebp-4],eax
 0054A3F4    mov         eax,54A428;'Format Quick With P-List - Start'
 0054A3F9    call        00544EB4
 0054A3FE    mov         ax,12
 0054A402    call        004CF408
 0054A407    call        004CCA5C
 0054A40C    mov         eax,54A454;'Format Quick With P-List - '
 0054A411    call        00544F6C
 0054A416    call        005451D0
 0054A41B    pop         ecx
 0054A41C    pop         ecx
 0054A41D    pop         ebp
 0054A41E    ret
*}
end;

//0054A470
procedure TfmHDD.miQuickWithoutLists1Click(Sender:TObject);
begin
{*
 0054A470    push        ebp
 0054A471    mov         ebp,esp
 0054A473    add         esp,0FFFFFFF8
 0054A476    mov         dword ptr [ebp-8],edx
 0054A479    mov         dword ptr [ebp-4],eax
 0054A47C    mov         eax,54A4B0;'Format Quick Without Lists - Start'
 0054A481    call        00544EB4
 0054A486    mov         ax,13
 0054A48A    call        004CF408
 0054A48F    call        004CCA5C
 0054A494    mov         eax,54A4DC;'Format Quick Without Lists - '
 0054A499    call        00544F6C
 0054A49E    call        005451D0
 0054A4A3    pop         ecx
 0054A4A4    pop         ecx
 0054A4A5    pop         ebp
 0054A4A6    ret
*}
end;

//0054A4FC
procedure TfmHDD.miClearSMART1Click(Sender:TObject);
begin
{*
 0054A4FC    push        ebp
 0054A4FD    mov         ebp,esp
 0054A4FF    add         esp,0FFFFFFF8
 0054A502    mov         dword ptr [ebp-8],edx
 0054A505    mov         dword ptr [ebp-4],eax
 0054A508    call        004CF4D4
 0054A50D    mov         eax,54A524;'Clear SMART - '
 0054A512    call        00544F6C
 0054A517    pop         ecx
 0054A518    pop         ecx
 0054A519    pop         ebp
 0054A51A    ret
*}
end;

//0054A534
procedure sub_0054A534;
begin
{*
 0054A534    push        ebp
 0054A535    mov         ebp,esp
 0054A537    add         esp,0FFFFFFF8
 0054A53A    push        ebx
 0054A53B    mov         eax,[0056E040];^gvar_005720C0
 0054A540    cmp         byte ptr [eax],0
>0054A543    jne         0054A569
 0054A545    mov         eax,[0056E304];^gvar_0056DF54
 0054A54A    cmp         word ptr [eax],65
>0054A54E    je          0054A569
 0054A550    mov         eax,[0056E304];^gvar_0056DF54
 0054A555    cmp         word ptr [eax],73
>0054A559    je          0054A569
 0054A55B    mov         eax,[0056E01C];^gvar_005720C1
 0054A560    cmp         byte ptr [eax],0
>0054A563    je          0054A614
 0054A569    mov         dl,1
 0054A56B    mov         eax,[0041DE14];TMemoryStream
 0054A570    call        TObject.Create;TMemoryStream.Create
 0054A575    mov         dword ptr [ebp-4],eax
 0054A578    xor         eax,eax
 0054A57A    push        ebp
 0054A57B    push        54A60D
 0054A580    push        dword ptr fs:[eax]
 0054A583    mov         dword ptr fs:[eax],esp
 0054A586    push        0
 0054A588    mov         eax,dword ptr [ebp-4]
 0054A58B    push        eax
 0054A58C    xor         ecx,ecx
 0054A58E    mov         dx,10
 0054A592    mov         ax,2
 0054A596    call        004D1570
 0054A59B    test        al,al
>0054A59D    je          0054A5E8
 0054A59F    xor         ecx,ecx
 0054A5A1    mov         edx,2
 0054A5A6    mov         eax,dword ptr [ebp-4]
 0054A5A9    mov         ebx,dword ptr [eax]
 0054A5AB    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054A5AE    mov         byte ptr [ebp-5],3
 0054A5B2    lea         edx,[ebp-5]
 0054A5B5    mov         ecx,1
 0054A5BA    mov         eax,dword ptr [ebp-4]
 0054A5BD    call        TStream.WriteBuffer
 0054A5C2    push        0
 0054A5C4    mov         eax,dword ptr [ebp-4]
 0054A5C7    push        eax
 0054A5C8    xor         ecx,ecx
 0054A5CA    mov         dx,10
 0054A5CE    mov         ax,2
 0054A5D2    call        004D16E8
 0054A5D7    call        004CEB6C
 0054A5DC    mov         eax,54A624;'Write Field - '
 0054A5E1    call        00544F6C
>0054A5E6    jmp         0054A5F7
 0054A5E8    call        004CEB6C
 0054A5ED    mov         eax,54A63C;'Read Field - '
 0054A5F2    call        00544F6C
 0054A5F7    xor         eax,eax
 0054A5F9    pop         edx
 0054A5FA    pop         ecx
 0054A5FB    pop         ecx
 0054A5FC    mov         dword ptr fs:[eax],edx
 0054A5FF    push        54A614
 0054A604    mov         eax,dword ptr [ebp-4]
 0054A607    call        TObject.Free
 0054A60C    ret
>0054A60D    jmp         @HandleFinally
>0054A612    jmp         0054A604
 0054A614    pop         ebx
 0054A615    pop         ecx
 0054A616    pop         ecx
 0054A617    pop         ebp
 0054A618    ret
*}
end;

//0054A64C
{*procedure TfmHDD.miDriveFormatMainClick(?:?);
begin
 0054A64C    push        ebp
 0054A64D    mov         ebp,esp
 0054A64F    add         esp,0FFFFFFF8
 0054A652    mov         dword ptr [ebp-8],edx
 0054A655    mov         dword ptr [ebp-4],eax
 0054A658    mov         eax,[0056E5A4];^gvar_0056DF04
 0054A65D    mov         byte ptr [eax],0
 0054A660    xor         eax,eax
 0054A662    call        004CF500
 0054A667    call        004CEB6C
 0054A66C    mov         eax,54A688;'Set Drive Format Main - '
 0054A671    call        00544F6C
 0054A676    call        0054A534
 0054A67B    pop         ecx
 0054A67C    pop         ecx
 0054A67D    pop         ebp
 0054A67E    ret
end;*}

//0054A6A4
{*procedure TfmHDD.miDriveFormatAlt1Click(?:?);
begin
 0054A6A4    push        ebp
 0054A6A5    mov         ebp,esp
 0054A6A7    add         esp,0FFFFFFF8
 0054A6AA    mov         dword ptr [ebp-8],edx
 0054A6AD    mov         dword ptr [ebp-4],eax
 0054A6B0    mov         ax,1
 0054A6B4    call        004CF500
 0054A6B9    call        004CEB6C
 0054A6BE    mov         eax,54A6DC;'Set Drive Format Alt1 - '
 0054A6C3    call        00544F6C
 0054A6C8    call        0054A534
 0054A6CD    pop         ecx
 0054A6CE    pop         ecx
 0054A6CF    pop         ebp
 0054A6D0    ret
end;*}

//0054A6F8
{*procedure TfmHDD.miDriveFormatAlt2Click(?:?);
begin
 0054A6F8    push        ebp
 0054A6F9    mov         ebp,esp
 0054A6FB    add         esp,0FFFFFFF8
 0054A6FE    mov         dword ptr [ebp-8],edx
 0054A701    mov         dword ptr [ebp-4],eax
 0054A704    mov         ax,2
 0054A708    call        004CF500
 0054A70D    call        004CEB6C
 0054A712    mov         eax,54A730;'Set Drive Format Alt2 - '
 0054A717    call        00544F6C
 0054A71C    call        0054A534
 0054A721    pop         ecx
 0054A722    pop         ecx
 0054A723    pop         ebp
 0054A724    ret
end;*}

//0054A74C
{*procedure TfmHDD.miDriveFormatAlt3Click(?:?);
begin
 0054A74C    push        ebp
 0054A74D    mov         ebp,esp
 0054A74F    add         esp,0FFFFFFF8
 0054A752    mov         dword ptr [ebp-8],edx
 0054A755    mov         dword ptr [ebp-4],eax
 0054A758    mov         ax,3
 0054A75C    call        004CF500
 0054A761    call        004CEB6C
 0054A766    mov         eax,54A784;'Set Drive Format Alt3 - '
 0054A76B    call        00544F6C
 0054A770    call        0054A534
 0054A775    pop         ecx
 0054A776    pop         ecx
 0054A777    pop         ebp
 0054A778    ret
end;*}

//0054A7A0
{*procedure TfmHDD.miDriveFormatAlt4Click(?:?);
begin
 0054A7A0    push        ebp
 0054A7A1    mov         ebp,esp
 0054A7A3    add         esp,0FFFFFFF8
 0054A7A6    mov         dword ptr [ebp-8],edx
 0054A7A9    mov         dword ptr [ebp-4],eax
 0054A7AC    mov         ax,4
 0054A7B0    call        004CF500
 0054A7B5    call        004CEB6C
 0054A7BA    mov         eax,54A7D8;'Set Drive Format Alt4 - '
 0054A7BF    call        00544F6C
 0054A7C4    call        0054A534
 0054A7C9    pop         ecx
 0054A7CA    pop         ecx
 0054A7CB    pop         ebp
 0054A7CC    ret
end;*}

//0054A7F4
{*procedure TfmHDD.miDriveFormatAlt5Click(?:?);
begin
 0054A7F4    push        ebp
 0054A7F5    mov         ebp,esp
 0054A7F7    add         esp,0FFFFFFF8
 0054A7FA    mov         dword ptr [ebp-8],edx
 0054A7FD    mov         dword ptr [ebp-4],eax
 0054A800    mov         ax,5
 0054A804    call        004CF500
 0054A809    call        004CEB6C
 0054A80E    mov         eax,54A82C;'Set Drive Format Alt5 - '
 0054A813    call        00544F6C
 0054A818    call        0054A534
 0054A81D    pop         ecx
 0054A81E    pop         ecx
 0054A81F    pop         ebp
 0054A820    ret
end;*}

//0054A848
procedure TfmHDD.miMoveGtoP1Click(Sender:TObject);
begin
{*
 0054A848    push        ebp
 0054A849    mov         ebp,esp
 0054A84B    add         esp,0FFFFFFF8
 0054A84E    mov         dword ptr [ebp-8],edx
 0054A851    mov         dword ptr [ebp-4],eax
 0054A854    mov         eax,54A880;'Move G to P-List - Start'
 0054A859    call        00544EB4
 0054A85E    call        004CF444
 0054A863    call        004CCA5C
 0054A868    mov         eax,54A8A4;'Move G to P-List - '
 0054A86D    call        00544F6C
 0054A872    pop         ecx
 0054A873    pop         ecx
 0054A874    pop         ebp
 0054A875    ret
*}
end;

//0054A8B8
procedure TfmHDD.miReMergeGtoPClick(Sender:TObject);
begin
{*
 0054A8B8    push        ebp
 0054A8B9    mov         ebp,esp
 0054A8BB    add         esp,0FFFFFFF8
 0054A8BE    mov         dword ptr [ebp-8],edx
 0054A8C1    mov         dword ptr [ebp-4],eax
 0054A8C4    mov         eax,54A8F0;'ReMerge G to P-List - Start'
 0054A8C9    call        00544EB4
 0054A8CE    call        004CF474
 0054A8D3    call        004CCA5C
 0054A8D8    mov         eax,54A914;'ReMerge G to P-List - '
 0054A8DD    call        00544F6C
 0054A8E2    pop         ecx
 0054A8E3    pop         ecx
 0054A8E4    pop         ebp
 0054A8E5    ret
*}
end;

//0054A92C
{*procedure TfmHDD.miReinitRoadMapClick(?:?);
begin
 0054A92C    push        ebp
 0054A92D    mov         ebp,esp
 0054A92F    add         esp,0FFFFFFF8
 0054A932    mov         dword ptr [ebp-8],edx
 0054A935    mov         dword ptr [ebp-4],eax
 0054A938    mov         ax,1
 0054A93C    call        004CFA34
 0054A941    call        004CEB6C
 0054A946    mov         eax,54A95C;'Reinit Road Map - '
 0054A94B    call        00544F6C
 0054A950    pop         ecx
 0054A951    pop         ecx
 0054A952    pop         ebp
 0054A953    ret
end;*}

//0054A970
{*procedure TfmHDD.miReinitPassportClick(?:?);
begin
 0054A970    push        ebp
 0054A971    mov         ebp,esp
 0054A973    add         esp,0FFFFFFF8
 0054A976    mov         dword ptr [ebp-8],edx
 0054A979    mov         dword ptr [ebp-4],eax
 0054A97C    mov         ax,2
 0054A980    call        004CFA34
 0054A985    call        004CEB6C
 0054A98A    mov         eax,54A9A0;'Reinit Passport - '
 0054A98F    call        00544F6C
 0054A994    pop         ecx
 0054A995    pop         ecx
 0054A996    pop         ebp
 0054A997    ret
end;*}

//0054A9B4
procedure TfmHDD.miReinitPermanentOverlayClick(Sender:TObject);
begin
{*
 0054A9B4    push        ebp
 0054A9B5    mov         ebp,esp
 0054A9B7    add         esp,0FFFFFFF8
 0054A9BA    mov         dword ptr [ebp-8],edx
 0054A9BD    mov         dword ptr [ebp-4],eax
 0054A9C0    mov         ax,11
 0054A9C4    call        004CFA34
 0054A9C9    call        004CEB6C
 0054A9CE    mov         eax,54A9E4;'Reinit Permanent Overlay - '
 0054A9D3    call        00544F6C
 0054A9D8    pop         ecx
 0054A9D9    pop         ecx
 0054A9DA    pop         ebp
 0054A9DB    ret
*}
end;

//0054AA00
procedure TfmHDD.miClearGList1Click(Sender:TObject);
begin
{*
 0054AA00    push        ebp
 0054AA01    mov         ebp,esp
 0054AA03    add         esp,0FFFFFFF8
 0054AA06    mov         dword ptr [ebp-8],edx
 0054AA09    mov         dword ptr [ebp-4],eax
 0054AA0C    mov         eax,54AA38;'Clear GList & RELOList - Start'
 0054AA11    call        00544EB4
 0054AA16    call        004CF4A4
 0054AA1B    call        004CCA5C
 0054AA20    mov         eax,54AA60;'Clear GList & RELOList - '
 0054AA25    call        00544F6C
 0054AA2A    pop         ecx
 0054AA2B    pop         ecx
 0054AA2C    pop         ebp
 0054AA2D    ret
*}
end;

//0054AA7C
procedure TfmHDD.miInitDrive1Click(Sender:TObject);
begin
{*
 0054AA7C    push        ebp
 0054AA7D    mov         ebp,esp
 0054AA7F    add         esp,0FFFFFFF8
 0054AA82    mov         dword ptr [ebp-8],edx
 0054AA85    mov         dword ptr [ebp-4],eax
 0054AA88    call        0056039C
 0054AA8D    pop         ecx
 0054AA8E    pop         ecx
 0054AA8F    pop         ebp
 0054AA90    ret
*}
end;

//0054AA94
{*procedure TfmHDD.miUserMode1Click(?:?);
begin
 0054AA94    push        ebp
 0054AA95    mov         ebp,esp
 0054AA97    add         esp,0FFFFFFF8
 0054AA9A    mov         dword ptr [ebp-8],edx
 0054AA9D    mov         dword ptr [ebp-4],eax
 0054AAA0    call        004CED80
 0054AAA5    mov         eax,54AABC;'Set User Mode - '
 0054AAAA    call        00544F6C
 0054AAAF    pop         ecx
 0054AAB0    pop         ecx
 0054AAB1    pop         ebp
 0054AAB2    ret
end;*}

//0054AAD0
procedure TfmHDD.miQuickEraseClick(Sender:TObject);
begin
{*
 0054AAD0    push        ebp
 0054AAD1    mov         ebp,esp
 0054AAD3    add         esp,0FFFFFFF8
 0054AAD6    mov         dword ptr [ebp-8],edx
 0054AAD9    mov         dword ptr [ebp-4],eax
 0054AADC    mov         eax,54AB10;'Quick Erase - Start'
 0054AAE1    call        00544EB4
 0054AAE6    mov         ax,2
 0054AAEA    call        004CF590
 0054AAEF    call        004CCA5C
 0054AAF4    mov         eax,54AB2C;'Quick Erase - '
 0054AAF9    call        00544F6C
 0054AAFE    call        005451D0
 0054AB03    pop         ecx
 0054AB04    pop         ecx
 0054AB05    pop         ebp
 0054AB06    ret
*}
end;

//0054AB3C
procedure TfmHDD.miViewProgressClick(Sender:TObject);
begin
{*
 0054AB3C    push        ebp
 0054AB3D    mov         ebp,esp
 0054AB3F    add         esp,0FFFFFFF8
 0054AB42    mov         dword ptr [ebp-8],edx
 0054AB45    mov         dword ptr [ebp-4],eax
 0054AB48    xor         eax,eax
 0054AB4A    call        004CED14
 0054AB4F    pop         ecx
 0054AB50    pop         ecx
 0054AB51    pop         ebp
 0054AB52    ret
*}
end;

//0054AB54
procedure TfmHDD.miTracks1Click(Sender:TObject);
begin
{*
 0054AB54    push        ebp
 0054AB55    mov         ebp,esp
 0054AB57    add         esp,0FFFFFFF8
 0054AB5A    mov         dword ptr [ebp-8],edx
 0054AB5D    mov         dword ptr [ebp-4],eax
 0054AB60    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054AB66    mov         eax,[004FA928];TfmTracks
 0054AB6B    call        004FAD08
 0054AB70    pop         ecx
 0054AB71    pop         ecx
 0054AB72    pop         ebp
 0054AB73    ret
*}
end;

//0054AB74
procedure TfmHDD.miHeadsMapClick(Sender:TObject);
begin
{*
 0054AB74    push        ebp
 0054AB75    mov         ebp,esp
 0054AB77    add         esp,0FFFFFFF8
 0054AB7A    mov         dword ptr [ebp-8],edx
 0054AB7D    mov         dword ptr [ebp-4],eax
 0054AB80    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054AB86    mov         eax,[0050B224];TfmHeadsMap
 0054AB8B    call        0050B704
 0054AB90    pop         ecx
 0054AB91    pop         ecx
 0054AB92    pop         ebp
 0054AB93    ret
*}
end;

//0054AB94
procedure TfmHDD.miFlashOperations1Click(Sender:TObject);
begin
{*
 0054AB94    push        ebp
 0054AB95    mov         ebp,esp
 0054AB97    add         esp,0FFFFFFF8
 0054AB9A    mov         dword ptr [ebp-8],edx
 0054AB9D    mov         dword ptr [ebp-4],eax
 0054ABA0    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054ABA6    mov         eax,[0050D1D4];TfmFlash
 0054ABAB    call        0050D660
 0054ABB0    pop         ecx
 0054ABB1    pop         ecx
 0054ABB2    pop         ebp
 0054ABB3    ret
*}
end;

//0054ABB4
procedure TfmHDD.FormShow(Sender:TObject);
begin
{*
 0054ABB4    push        ebp
 0054ABB5    mov         ebp,esp
 0054ABB7    add         esp,0FFFFFFF0
 0054ABBA    xor         ecx,ecx
 0054ABBC    mov         dword ptr [ebp-10],ecx
 0054ABBF    mov         dword ptr [ebp-0C],ecx
 0054ABC2    mov         dword ptr [ebp-8],edx
 0054ABC5    mov         dword ptr [ebp-4],eax
 0054ABC8    xor         eax,eax
 0054ABCA    push        ebp
 0054ABCB    push        54ACBF
 0054ABD0    push        dword ptr fs:[eax]
 0054ABD3    mov         dword ptr fs:[eax],esp
 0054ABD6    mov         edx,dword ptr ds:[56E488];^gvar_0056DF58:Integer
 0054ABDC    mov         edx,dword ptr [edx]
 0054ABDE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054ABE3    call        TControl.SetTop
 0054ABE8    mov         edx,dword ptr ds:[56E3EC];^gvar_0056DF5C:Integer
 0054ABEE    mov         edx,dword ptr [edx]
 0054ABF0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054ABF5    call        TControl.SetLeft
 0054ABFA    mov         edx,dword ptr ds:[56E2C8];^gvar_0056DF60:Integer
 0054AC00    mov         edx,dword ptr [edx]
 0054AC02    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AC07    call        TToolButton.SetHeight
 0054AC0C    mov         edx,dword ptr ds:[56E2D4];^gvar_0056DF64:Integer
 0054AC12    mov         edx,dword ptr [edx]
 0054AC14    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AC19    call        TSplitter.SetWidth
 0054AC1E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AC23    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054AC29    mov         edx,dword ptr [eax]
 0054AC2B    call        dword ptr [edx+0E0];TRichEdit.sub_004588CC
 0054AC31    mov         eax,[0056E284];^gvar_0056DF34
 0054AC36    mov         eax,dword ptr [eax]
 0054AC38    mov         eax,dword ptr [eax+408]
 0054AC3E    cmp         byte ptr [eax+38],0
>0054AC42    je          0054AC4E
 0054AC44    xor         edx,edx
 0054AC46    mov         eax,dword ptr [ebp-4]
 0054AC49    call        TfmHDD.miIdentifyClick
 0054AC4E    mov         eax,[0056E040];^gvar_005720C0
 0054AC53    cmp         byte ptr [eax],0
>0054AC56    je          0054AC7F
 0054AC58    mov         eax,[0056E284];^gvar_0056DF34
 0054AC5D    mov         eax,dword ptr [eax]
 0054AC5F    mov         ecx,dword ptr [eax+420]
 0054AC65    lea         eax,[ebp-0C]
 0054AC68    mov         edx,54ACD4;'WD-ROYL '
 0054AC6D    call        @LStrCat3
 0054AC72    mov         edx,dword ptr [ebp-0C]
 0054AC75    mov         eax,dword ptr [ebp-4]
 0054AC78    call        TPanel.SetCaption
>0054AC7D    jmp         0054ACA4
 0054AC7F    mov         eax,[0056E284];^gvar_0056DF34
 0054AC84    mov         eax,dword ptr [eax]
 0054AC86    mov         ecx,dword ptr [eax+420]
 0054AC8C    lea         eax,[ebp-10]
 0054AC8F    mov         edx,54ACE8;'WD-MARVELL '
 0054AC94    call        @LStrCat3
 0054AC99    mov         edx,dword ptr [ebp-10]
 0054AC9C    mov         eax,dword ptr [ebp-4]
 0054AC9F    call        TPanel.SetCaption
 0054ACA4    xor         eax,eax
 0054ACA6    pop         edx
 0054ACA7    pop         ecx
 0054ACA8    pop         ecx
 0054ACA9    mov         dword ptr fs:[eax],edx
 0054ACAC    push        54ACC6
 0054ACB1    lea         eax,[ebp-10]
 0054ACB4    mov         edx,2
 0054ACB9    call        @LStrArrayClr
 0054ACBE    ret
>0054ACBF    jmp         @HandleFinally
>0054ACC4    jmp         0054ACB1
 0054ACC6    mov         esp,ebp
 0054ACC8    pop         ebp
 0054ACC9    ret
*}
end;

//0054ACF4
procedure TfmHDD.miLogClear1Click(Sender:TObject);
begin
{*
 0054ACF4    push        ebp
 0054ACF5    mov         ebp,esp
 0054ACF7    add         esp,0FFFFFFF8
 0054ACFA    mov         dword ptr [ebp-8],edx
 0054ACFD    mov         dword ptr [ebp-4],eax
 0054AD00    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AD05    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054AD0B    mov         edx,dword ptr [eax]
 0054AD0D    call        dword ptr [edx+0E0];TRichEdit.sub_004588CC
 0054AD13    pop         ecx
 0054AD14    pop         ecx
 0054AD15    pop         ebp
 0054AD16    ret
*}
end;

//0054AD18
procedure TfmHDD.miLogSaveToFileClick(Sender:TObject);
begin
{*
 0054AD18    push        ebp
 0054AD19    mov         ebp,esp
 0054AD1B    add         esp,0FFFFFFF0
 0054AD1E    xor         ecx,ecx
 0054AD20    mov         dword ptr [ebp-10],ecx
 0054AD23    mov         dword ptr [ebp-0C],edx
 0054AD26    mov         dword ptr [ebp-4],eax
 0054AD29    xor         eax,eax
 0054AD2B    push        ebp
 0054AD2C    push        54ADA7
 0054AD31    push        dword ptr fs:[eax]
 0054AD34    mov         dword ptr fs:[eax],esp
 0054AD37    mov         eax,dword ptr [ebp-4]
 0054AD3A    mov         eax,dword ptr [eax+364];TfmHDD.SaveDialog1:TSaveDialog
 0054AD40    mov         dword ptr [ebp-8],eax
 0054AD43    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0054AD49    mov         edx,dword ptr [edx]
 0054AD4B    mov         eax,dword ptr [ebp-8]
 0054AD4E    call        TOpenDialog.SetInitialDir
 0054AD53    mov         eax,dword ptr [ebp-8]
 0054AD56    add         eax,78;TSaveDialog.FileName:TFileName
 0054AD59    mov         edx,54ADBC;'Log.txt'
 0054AD5E    call        @LStrAsg
 0054AD63    mov         eax,dword ptr [ebp-8]
 0054AD66    mov         edx,dword ptr [eax]
 0054AD68    call        dword ptr [edx+3C];TSaveDialog.Execute
 0054AD6B    test        al,al
>0054AD6D    je          0054AD91
 0054AD6F    lea         edx,[ebp-10]
 0054AD72    mov         eax,dword ptr [ebp-8]
 0054AD75    call        TOpenDialog.GetFileName
 0054AD7A    mov         edx,dword ptr [ebp-10]
 0054AD7D    mov         eax,dword ptr [ebp-4]
 0054AD80    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054AD86    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054AD8C    mov         ecx,dword ptr [eax]
 0054AD8E    call        dword ptr [ecx+74];TStrings.sub_004227A8
 0054AD91    xor         eax,eax
 0054AD93    pop         edx
 0054AD94    pop         ecx
 0054AD95    pop         ecx
 0054AD96    mov         dword ptr fs:[eax],edx
 0054AD99    push        54ADAE
 0054AD9E    lea         eax,[ebp-10]
 0054ADA1    call        @LStrClr
 0054ADA6    ret
>0054ADA7    jmp         @HandleFinally
>0054ADAC    jmp         0054AD9E
 0054ADAE    mov         esp,ebp
 0054ADB0    pop         ebp
 0054ADB1    ret
*}
end;

//0054ADC4
{*procedure TfmHDD.FormClose(?:?; ?:?);
begin
 0054ADC4    push        ebp
 0054ADC5    mov         ebp,esp
 0054ADC7    add         esp,0FFFFFFF4
 0054ADCA    mov         dword ptr [ebp-8],ecx
 0054ADCD    mov         dword ptr [ebp-0C],edx
 0054ADD0    mov         dword ptr [ebp-4],eax
 0054ADD3    mov         eax,[0056E5A4];^gvar_0056DF04
 0054ADD8    mov         byte ptr [eax],1
 0054ADDB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054ADE0    mov         eax,dword ptr [eax+44];TfmHDD.Top:Integer
 0054ADE3    mov         edx,dword ptr ds:[56E488];^gvar_0056DF58:Integer
 0054ADE9    mov         dword ptr [edx],eax
 0054ADEB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054ADF0    mov         eax,dword ptr [eax+40];TfmHDD.Left:Integer
 0054ADF3    mov         edx,dword ptr ds:[56E3EC];^gvar_0056DF5C:Integer
 0054ADF9    mov         dword ptr [edx],eax
 0054ADFB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AE00    mov         eax,dword ptr [eax+4C];TfmHDD.Height:Integer
 0054AE03    mov         edx,dword ptr ds:[56E2C8];^gvar_0056DF60:Integer
 0054AE09    mov         dword ptr [edx],eax
 0054AE0B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054AE10    mov         eax,dword ptr [eax+48];TfmHDD.Width:Integer
 0054AE13    mov         edx,dword ptr ds:[56E2D4];^gvar_0056DF64:Integer
 0054AE19    mov         dword ptr [edx],eax
 0054AE1B    xor         eax,eax
 0054AE1D    mov         [0056DE74],eax;gvar_0056DE74:TfmHDD
 0054AE22    mov         eax,dword ptr [ebp-8]
 0054AE25    mov         byte ptr [eax],2
 0054AE28    mov         esp,ebp
 0054AE2A    pop         ebp
 0054AE2B    ret
end;*}

//0054AE2C
procedure TfmHDD.miCpOperationsClick(Sender:TObject);
begin
{*
 0054AE2C    push        ebp
 0054AE2D    mov         ebp,esp
 0054AE2F    add         esp,0FFFFFFF8
 0054AE32    mov         dword ptr [ebp-8],edx
 0054AE35    mov         dword ptr [ebp-4],eax
 0054AE38    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054AE3E    mov         eax,[00510A60];TfmCPs
 0054AE43    call        00510CA4
 0054AE48    pop         ecx
 0054AE49    pop         ecx
 0054AE4A    pop         ebp
 0054AE4B    ret
*}
end;

//0054AE4C
{*procedure sub_0054AE4C(?:?; ?:?);
begin
 0054AE4C    push        ebp
 0054AE4D    mov         ebp,esp
 0054AE4F    add         esp,0FFFFFFF8
 0054AE52    mov         dword ptr [ebp-8],edx
 0054AE55    mov         byte ptr [ebp-1],al
 0054AE58    xor         eax,eax
 0054AE5A    mov         al,byte ptr [ebp-1]
 0054AE5D    add         eax,0FFFFFFBE
 0054AE60    cmp         eax,15
>0054AE63    ja          0054AF9A
 0054AE69    jmp         dword ptr [eax*4+54AE70]
 0054AE69    dd          0054AEDA
 0054AE69    dd          0054AF31
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF22
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF5E
 0054AE69    dd          0054AEEC
 0054AE69    dd          0054AF10
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF7C
 0054AE69    dd          0054AEFE
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF40
 0054AE69    dd          0054AEC8
 0054AE69    dd          0054AF9A
 0054AE69    dd          0054AF6D
 0054AE69    dd          0054AF4F
 0054AE69    dd          0054AF8B
 0054AEC8    mov         eax,dword ptr [ebp-8]
 0054AECB    mov         edx,54AFB4;'Spindel Motor         '
 0054AED0    call        @LStrAsg
>0054AED5    jmp         0054AFA7
 0054AEDA    mov         eax,dword ptr [ebp-8]
 0054AEDD    mov         edx,54AFD4;'Base                  '
 0054AEE2    call        @LStrAsg
>0054AEE7    jmp         0054AFA7
 0054AEEC    mov         eax,dword ptr [ebp-8]
 0054AEEF    mov         edx,54AFF4;'Latch / Crash Stop    '
 0054AEF4    call        @LStrAsg
>0054AEF9    jmp         0054AFA7
 0054AEFE    mov         eax,dword ptr [ebp-8]
 0054AF01    mov         edx,54B014;'Bottom VCM            '
 0054AF06    call        @LStrAsg
>0054AF0B    jmp         0054AFA7
 0054AF10    mov         eax,dword ptr [ebp-8]
 0054AF13    mov         edx,54B034;'Media                 '
 0054AF18    call        @LStrAsg
>0054AF1D    jmp         0054AFA7
 0054AF22    mov         eax,dword ptr [ebp-8]
 0054AF25    mov         edx,54B054;'Headstack             '
 0054AF2A    call        @LStrAsg
>0054AF2F    jmp         0054AFA7
 0054AF31    mov         eax,dword ptr [ebp-8]
 0054AF34    mov         edx,54B074;'Preamp / Actuator-flex'
 0054AF39    call        @LStrAsg
>0054AF3E    jmp         0054AFA7
 0054AF40    mov         eax,dword ptr [ebp-8]
 0054AF43    mov         edx,54B094;'Actuator-pivot        '
 0054AF48    call        @LStrAsg
>0054AF4D    jmp         0054AFA7
 0054AF4F    mov         eax,dword ptr [ebp-8]
 0054AF52    mov         edx,54B0B4;'Top VCM / VCM Assembly'
 0054AF57    call        @LStrAsg
>0054AF5C    jmp         0054AFA7
 0054AF5E    mov         eax,dword ptr [ebp-8]
 0054AF61    mov         edx,54B0D4;'Top Cover / VCM Part  '
 0054AF66    call        @LStrAsg
>0054AF6B    jmp         0054AFA7
 0054AF6D    mov         eax,dword ptr [ebp-8]
 0054AF70    mov         edx,54B0F4;'Suspension            '
 0054AF75    call        @LStrAsg
>0054AF7A    jmp         0054AFA7
 0054AF7C    mov         eax,dword ptr [ebp-8]
 0054AF7F    mov         edx,54B114;'RePresents Prime HSA  '
 0054AF84    call        @LStrAsg
>0054AF89    jmp         0054AFA7
 0054AF8B    mov         eax,dword ptr [ebp-8]
 0054AF8E    mov         edx,54B134;'Rework / Recycle HSA  '
 0054AF93    call        @LStrAsg
>0054AF98    jmp         0054AFA7
 0054AF9A    mov         eax,dword ptr [ebp-8]
 0054AF9D    mov         edx,54B154;'Unknown               '
 0054AFA2    call        @LStrAsg
 0054AFA7    pop         ecx
 0054AFA8    pop         ecx
 0054AFA9    pop         ebp
 0054AFAA    ret
end;*}

//0054B16C
{*function sub_0054B16C(?:?):?;
begin
 0054B16C    push        ebp
 0054B16D    mov         ebp,esp
 0054B16F    push        ecx
 0054B170    mov         byte ptr [ebp-1],al
 0054B173    cmp         byte ptr [ebp-1],20
>0054B177    jb          0054B17F
 0054B179    cmp         byte ptr [ebp-1],7F
>0054B17D    jbe         0054B185
 0054B17F    mov         byte ptr [ebp-2],20
>0054B183    jmp         0054B18B
 0054B185    mov         al,byte ptr [ebp-1]
 0054B188    mov         byte ptr [ebp-2],al
 0054B18B    mov         al,byte ptr [ebp-2]
 0054B18E    pop         ecx
 0054B18F    pop         ebp
 0054B190    ret
end;*}

//0054B194
{*procedure sub_0054B194(?:?; ?:?);
begin
 0054B194    push        ebp
 0054B195    mov         ebp,esp
 0054B197    add         esp,0FFFFFFE8
 0054B19A    push        ebx
 0054B19B    xor         ecx,ecx
 0054B19D    mov         dword ptr [ebp-18],ecx
 0054B1A0    mov         dword ptr [ebp-10],ecx
 0054B1A3    mov         dword ptr [ebp-14],ecx
 0054B1A6    mov         dword ptr [ebp-8],edx
 0054B1A9    mov         word ptr [ebp-2],ax
 0054B1AD    xor         eax,eax
 0054B1AF    push        ebp
 0054B1B0    push        54B263
 0054B1B5    push        dword ptr fs:[eax]
 0054B1B8    mov         dword ptr fs:[eax],esp
 0054B1BB    mov         eax,dword ptr [ebp-8]
 0054B1BE    call        @LStrClr
 0054B1C3    lea         edx,[ebp-14]
 0054B1C6    xor         eax,eax
 0054B1C8    call        00403214
 0054B1CD    mov         eax,dword ptr [ebp-14]
 0054B1D0    lea         edx,[ebp-10]
 0054B1D3    call        0040CC5C
 0054B1D8    lea         eax,[ebp-10]
 0054B1DB    mov         edx,54B278;'wdm.ini'
 0054B1E0    call        @LStrCat
 0054B1E5    mov         ecx,dword ptr [ebp-10]
 0054B1E8    mov         dl,1
 0054B1EA    mov         eax,[004497F8];TIniFile
 0054B1EF    call        TIniFile.Create;TIniFile.Create
 0054B1F4    mov         dword ptr [ebp-0C],eax
 0054B1F7    xor         eax,eax
 0054B1F9    push        ebp
 0054B1FA    push        54B241
 0054B1FF    push        dword ptr fs:[eax]
 0054B202    mov         dword ptr fs:[eax],esp
 0054B205    push        0
 0054B207    mov         eax,dword ptr [ebp-8]
 0054B20A    push        eax
 0054B20B    lea         ecx,[ebp-18]
 0054B20E    movzx       eax,word ptr [ebp-2]
 0054B212    mov         edx,4
 0054B217    call        IntToHex
 0054B21C    mov         ecx,dword ptr [ebp-18]
 0054B21F    mov         edx,54B288;'CHIPREV'
 0054B224    mov         eax,dword ptr [ebp-0C]
 0054B227    mov         ebx,dword ptr [eax]
 0054B229    call        dword ptr [ebx];TIniFile.sub_0044A254
 0054B22B    xor         eax,eax
 0054B22D    pop         edx
 0054B22E    pop         ecx
 0054B22F    pop         ecx
 0054B230    mov         dword ptr fs:[eax],edx
 0054B233    push        54B248
 0054B238    mov         eax,dword ptr [ebp-0C]
 0054B23B    call        TObject.Free
 0054B240    ret
>0054B241    jmp         @HandleFinally
>0054B246    jmp         0054B238
 0054B248    xor         eax,eax
 0054B24A    pop         edx
 0054B24B    pop         ecx
 0054B24C    pop         ecx
 0054B24D    mov         dword ptr fs:[eax],edx
 0054B250    push        54B26A
 0054B255    lea         eax,[ebp-18]
 0054B258    mov         edx,3
 0054B25D    call        @LStrArrayClr
 0054B262    ret
>0054B263    jmp         @HandleFinally
>0054B268    jmp         0054B255
 0054B26A    pop         ebx
 0054B26B    mov         esp,ebp
 0054B26D    pop         ebp
 0054B26E    ret
end;*}

//0054B290
{*procedure sub_0054B290(?:?; ?:?);
begin
 0054B290    push        ebp
 0054B291    mov         ebp,esp
 0054B293    add         esp,0FFFFFFE8
 0054B296    push        ebx
 0054B297    xor         ecx,ecx
 0054B299    mov         dword ptr [ebp-18],ecx
 0054B29C    mov         dword ptr [ebp-10],ecx
 0054B29F    mov         dword ptr [ebp-14],ecx
 0054B2A2    mov         dword ptr [ebp-8],edx
 0054B2A5    mov         word ptr [ebp-2],ax
 0054B2A9    xor         eax,eax
 0054B2AB    push        ebp
 0054B2AC    push        54B35F
 0054B2B1    push        dword ptr fs:[eax]
 0054B2B4    mov         dword ptr fs:[eax],esp
 0054B2B7    mov         eax,dword ptr [ebp-8]
 0054B2BA    call        @LStrClr
 0054B2BF    lea         edx,[ebp-14]
 0054B2C2    xor         eax,eax
 0054B2C4    call        00403214
 0054B2C9    mov         eax,dword ptr [ebp-14]
 0054B2CC    lea         edx,[ebp-10]
 0054B2CF    call        0040CC5C
 0054B2D4    lea         eax,[ebp-10]
 0054B2D7    mov         edx,54B374;'wdm.ini'
 0054B2DC    call        @LStrCat
 0054B2E1    mov         ecx,dword ptr [ebp-10]
 0054B2E4    mov         dl,1
 0054B2E6    mov         eax,[004497F8];TIniFile
 0054B2EB    call        TIniFile.Create;TIniFile.Create
 0054B2F0    mov         dword ptr [ebp-0C],eax
 0054B2F3    xor         eax,eax
 0054B2F5    push        ebp
 0054B2F6    push        54B33D
 0054B2FB    push        dword ptr fs:[eax]
 0054B2FE    mov         dword ptr fs:[eax],esp
 0054B301    push        0
 0054B303    mov         eax,dword ptr [ebp-8]
 0054B306    push        eax
 0054B307    lea         ecx,[ebp-18]
 0054B30A    movzx       eax,word ptr [ebp-2]
 0054B30E    mov         edx,4
 0054B313    call        IntToHex
 0054B318    mov         ecx,dword ptr [ebp-18]
 0054B31B    mov         edx,54B384;'CHIPFAMILY'
 0054B320    mov         eax,dword ptr [ebp-0C]
 0054B323    mov         ebx,dword ptr [eax]
 0054B325    call        dword ptr [ebx];TIniFile.sub_0044A254
 0054B327    xor         eax,eax
 0054B329    pop         edx
 0054B32A    pop         ecx
 0054B32B    pop         ecx
 0054B32C    mov         dword ptr fs:[eax],edx
 0054B32F    push        54B344
 0054B334    mov         eax,dword ptr [ebp-0C]
 0054B337    call        TObject.Free
 0054B33C    ret
>0054B33D    jmp         @HandleFinally
>0054B342    jmp         0054B334
 0054B344    xor         eax,eax
 0054B346    pop         edx
 0054B347    pop         ecx
 0054B348    pop         ecx
 0054B349    mov         dword ptr fs:[eax],edx
 0054B34C    push        54B366
 0054B351    lea         eax,[ebp-18]
 0054B354    mov         edx,3
 0054B359    call        @LStrArrayClr
 0054B35E    ret
>0054B35F    jmp         @HandleFinally
>0054B364    jmp         0054B351
 0054B366    pop         ebx
 0054B367    mov         esp,ebp
 0054B369    pop         ebp
 0054B36A    ret
end;*}

//0054B390
procedure sub_0054B390(?:TMemoryStream);
begin
{*
 0054B390    push        ebp
 0054B391    mov         ebp,esp
 0054B393    mov         ecx,28
 0054B398    push        0
 0054B39A    push        0
 0054B39C    dec         ecx
>0054B39D    jne         0054B398
 0054B39F    push        ecx
 0054B3A0    push        ebx
 0054B3A1    mov         dword ptr [ebp-4],eax
 0054B3A4    xor         eax,eax
 0054B3A6    push        ebp
 0054B3A7    push        54CA51
 0054B3AC    push        dword ptr fs:[eax]
 0054B3AF    mov         dword ptr fs:[eax],esp
 0054B3B2    xor         ecx,ecx
 0054B3B4    xor         edx,edx
 0054B3B6    mov         eax,dword ptr [ebp-4]
 0054B3B9    mov         ebx,dword ptr [eax]
 0054B3BB    call        dword ptr [ebx+14]
 0054B3BE    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B3C4    mov         ecx,200
 0054B3C9    mov         eax,dword ptr [ebp-4]
 0054B3CC    mov         ebx,dword ptr [eax]
 0054B3CE    call        dword ptr [ebx+0C]
 0054B3D1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B3D6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B3DC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B3E2    mov         edx,54CA68;'DRIVE DATA TABLES'
 0054B3E7    mov         ecx,dword ptr [eax]
 0054B3E9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B3EC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B3F1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B3F7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B3FD    mov         edx,54CA84;'================='
 0054B402    mov         ecx,dword ptr [eax]
 0054B404    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B407    lea         eax,[ebp-10]
 0054B40A    push        eax
 0054B40B    mov         eax,[0056E344];^gvar_0059BF5C
 0054B410    movzx       eax,word ptr [eax]
 0054B413    mov         dword ptr [ebp-18],eax
 0054B416    mov         byte ptr [ebp-14],0
 0054B41A    lea         edx,[ebp-18]
 0054B41D    xor         ecx,ecx
 0054B41F    mov         eax,54CAA0;'Drive Data Table Version   %d'
 0054B424    call        0040D630
 0054B429    mov         edx,dword ptr [ebp-10]
 0054B42C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B431    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B437    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B43D    mov         ecx,dword ptr [eax]
 0054B43F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B442    mov         eax,[0056E344];^gvar_0059BF5C
 0054B447    mov         ax,word ptr [eax+1A]
 0054B44B    and         ax,0FF
 0054B44F    cmp         ax,0FE
>0054B453    jne         0054B46B
 0054B455    mov         eax,[0056E344];^gvar_0059BF5C
 0054B45A    mov         ax,word ptr [eax+16C]
 0054B461    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B467    mov         word ptr [edx+1A],ax
 0054B46B    lea         eax,[ebp-1C]
 0054B46E    push        eax
 0054B46F    mov         eax,[0056E344];^gvar_0059BF5C
 0054B474    movzx       eax,word ptr [eax+1A]
 0054B478    mov         dword ptr [ebp-18],eax
 0054B47B    mov         byte ptr [ebp-14],0
 0054B47F    lea         edx,[ebp-18]
 0054B482    xor         ecx,ecx
 0054B484    mov         eax,54CAC8;'Product ID                 %x'
 0054B489    call        0040D630
 0054B48E    mov         edx,dword ptr [ebp-1C]
 0054B491    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B496    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B49C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B4A2    mov         ecx,dword ptr [eax]
 0054B4A4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B4A7    lea         eax,[ebp-0C]
 0054B4AA    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B4B0    add         edx,2
 0054B4B3    mov         ecx,8
 0054B4B8    call        @LStrFromArray
 0054B4BD    lea         eax,[ebp-20]
 0054B4C0    mov         ecx,dword ptr [ebp-0C]
 0054B4C3    mov         edx,54CAF0;'Controller Firmware Rev.   '
 0054B4C8    call        @LStrCat3
 0054B4CD    mov         edx,dword ptr [ebp-20]
 0054B4D0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B4D5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B4DB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B4E1    mov         ecx,dword ptr [eax]
 0054B4E3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B4E6    lea         eax,[ebp-0C]
 0054B4E9    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B4EF    add         edx,12
 0054B4F2    mov         ecx,8
 0054B4F7    call        @LStrFromArray
 0054B4FC    lea         eax,[ebp-24]
 0054B4FF    mov         ecx,dword ptr [ebp-0C]
 0054B502    mov         edx,54CB14;'Overlay Firmware Revision  '
 0054B507    call        @LStrCat3
 0054B50C    mov         edx,dword ptr [ebp-24]
 0054B50F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B514    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B51A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B520    mov         ecx,dword ptr [eax]
 0054B522    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B525    lea         eax,[ebp-0C]
 0054B528    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B52E    add         edx,0A
 0054B531    mov         ecx,8
 0054B536    call        @LStrFromArray
 0054B53B    lea         eax,[ebp-28]
 0054B53E    mov         ecx,dword ptr [ebp-0C]
 0054B541    mov         edx,54CB38;'Servo Firmware Revision    '
 0054B546    call        @LStrCat3
 0054B54B    mov         edx,dword ptr [ebp-28]
 0054B54E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B553    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B559    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B55F    mov         ecx,dword ptr [eax]
 0054B561    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B564    lea         eax,[ebp-0C]
 0054B567    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B56D    add         edx,56
 0054B570    mov         ecx,8
 0054B575    call        @LStrFromArray
 0054B57A    lea         eax,[ebp-2C]
 0054B57D    mov         ecx,dword ptr [ebp-0C]
 0054B580    mov         edx,54CB5C;'Read Channel Firmware Rev. '
 0054B585    call        @LStrCat3
 0054B58A    mov         edx,dword ptr [ebp-2C]
 0054B58D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B592    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B598    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B59E    mov         ecx,dword ptr [eax]
 0054B5A0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B5A3    lea         eax,[ebp-0C]
 0054B5A6    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054B5AC    add         edx,4E
 0054B5AF    mov         ecx,8
 0054B5B4    call        @LStrFromArray
 0054B5B9    lea         eax,[ebp-30]
 0054B5BC    mov         ecx,dword ptr [ebp-0C]
 0054B5BF    mov         edx,54CB80;'Surface Format Version     '
 0054B5C4    call        @LStrCat3
 0054B5C9    mov         edx,dword ptr [ebp-30]
 0054B5CC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B5D1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B5D7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B5DD    mov         ecx,dword ptr [eax]
 0054B5DF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B5E2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B5E7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B5ED    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B5F3    xor         edx,edx
 0054B5F5    mov         ecx,dword ptr [eax]
 0054B5F7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B5FA    mov         eax,[0056E344];^gvar_0059BF5C
 0054B5FF    movzx       eax,byte ptr [eax+20]
 0054B603    cmp         eax,6
>0054B606    ja          0054B698
 0054B60C    jmp         dword ptr [eax*4+54B613]
 0054B60C    dd          0054B62F
 0054B60C    dd          0054B63E
 0054B60C    dd          0054B64D
 0054B60C    dd          0054B65C
 0054B60C    dd          0054B66B
 0054B60C    dd          0054B67A
 0054B60C    dd          0054B689
 0054B62F    lea         eax,[ebp-0C]
 0054B632    mov         edx,54CBA4;'Desktop 3.5 Inch'
 0054B637    call        @LStrLAsg
>0054B63C    jmp         0054B6A0
 0054B63E    lea         eax,[ebp-0C]
 0054B641    mov         edx,54CBC0;'Enterprise 3.5 Inch'
 0054B646    call        @LStrLAsg
>0054B64B    jmp         0054B6A0
 0054B64D    lea         eax,[ebp-0C]
 0054B650    mov         edx,54CBDC;'DeskTop 2.5 Inch'
 0054B655    call        @LStrLAsg
>0054B65A    jmp         0054B6A0
 0054B65C    lea         eax,[ebp-0C]
 0054B65F    mov         edx,54CBF8;'Mobile 2.5 Inch'
 0054B664    call        @LStrLAsg
>0054B669    jmp         0054B6A0
 0054B66B    lea         eax,[ebp-0C]
 0054B66E    mov         edx,54CC10;'Mobile 1.8 inch'
 0054B673    call        @LStrLAsg
>0054B678    jmp         0054B6A0
 0054B67A    lea         eax,[ebp-0C]
 0054B67D    mov         edx,54CC28;'Mobile 1.0 inch'
 0054B682    call        @LStrLAsg
>0054B687    jmp         0054B6A0
 0054B689    lea         eax,[ebp-0C]
 0054B68C    mov         edx,54CC40;'Enterprise 2.5 inch'
 0054B691    call        @LStrLAsg
>0054B696    jmp         0054B6A0
 0054B698    lea         eax,[ebp-0C]
 0054B69B    call        @LStrClr
 0054B6A0    lea         eax,[ebp-34]
 0054B6A3    push        eax
 0054B6A4    mov         eax,[0056E344];^gvar_0059BF5C
 0054B6A9    movzx       eax,byte ptr [eax+20]
 0054B6AD    mov         dword ptr [ebp-44],eax
 0054B6B0    mov         byte ptr [ebp-40],0
 0054B6B4    mov         eax,dword ptr [ebp-0C]
 0054B6B7    mov         dword ptr [ebp-3C],eax
 0054B6BA    mov         byte ptr [ebp-38],0B
 0054B6BE    lea         edx,[ebp-44]
 0054B6C1    mov         ecx,1
 0054B6C6    mov         eax,54CC5C;'Drive Type                 %x - %s'
 0054B6CB    call        0040D630
 0054B6D0    mov         edx,dword ptr [ebp-34]
 0054B6D3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B6D8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B6DE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B6E4    mov         ecx,dword ptr [eax]
 0054B6E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B6E9    lea         eax,[ebp-48]
 0054B6EC    push        eax
 0054B6ED    mov         eax,[0056E344];^gvar_0059BF5C
 0054B6F2    movzx       eax,word ptr [eax+26]
 0054B6F6    mov         dword ptr [ebp-18],eax
 0054B6F9    mov         byte ptr [ebp-14],0
 0054B6FD    lea         edx,[ebp-18]
 0054B700    xor         ecx,ecx
 0054B702    mov         eax,54CC88;'Spindle Speed              %d RPM'
 0054B707    call        0040D630
 0054B70C    mov         edx,dword ptr [ebp-48]
 0054B70F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B714    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B71A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B720    mov         ecx,dword ptr [eax]
 0054B722    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B725    lea         eax,[ebp-4C]
 0054B728    push        eax
 0054B729    mov         eax,[0056E344];^gvar_0059BF5C
 0054B72E    movzx       eax,word ptr [eax+8A]
 0054B735    imul        eax,eax,64
 0054B738    mov         dword ptr [ebp-18],eax
 0054B73B    mov         byte ptr [ebp-14],0
 0054B73F    lea         edx,[ebp-18]
 0054B742    xor         ecx,ecx
 0054B744    mov         eax,54CCB4;'Area Density in Units of   %d MB per platter'
 0054B749    call        0040D630
 0054B74E    mov         edx,dword ptr [ebp-4C]
 0054B751    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B756    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B75C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B762    mov         ecx,dword ptr [eax]
 0054B764    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B767    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B76C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B772    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B778    mov         edx,54CCEC;#10+Drive Build Information'
 0054B77D    mov         ecx,dword ptr [eax]
 0054B77F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B782    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B787    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B78D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B793    mov         edx,54CD10;'------------------------'
 0054B798    mov         ecx,dword ptr [eax]
 0054B79A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B79D    lea         eax,[ebp-50]
 0054B7A0    push        eax
 0054B7A1    mov         eax,[0056E344];^gvar_0059BF5C
 0054B7A6    movzx       eax,byte ptr [eax+1C]
 0054B7AA    mov         dword ptr [ebp-18],eax
 0054B7AD    mov         byte ptr [ebp-14],0
 0054B7B1    lea         edx,[ebp-18]
 0054B7B4    xor         ecx,ecx
 0054B7B6    mov         eax,54CD34;'Drive Platter Count        %d'
 0054B7BB    call        0040D630
 0054B7C0    mov         edx,dword ptr [ebp-50]
 0054B7C3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B7C8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B7CE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B7D4    mov         ecx,dword ptr [eax]
 0054B7D6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B7D9    lea         eax,[ebp-54]
 0054B7DC    push        eax
 0054B7DD    mov         eax,[0056E344];^gvar_0059BF5C
 0054B7E2    movzx       eax,byte ptr [eax+1D]
 0054B7E6    mov         dword ptr [ebp-18],eax
 0054B7E9    mov         byte ptr [ebp-14],0
 0054B7ED    lea         edx,[ebp-18]
 0054B7F0    xor         ecx,ecx
 0054B7F2    mov         eax,54CD5C;'Physical HDs includ. depop %d'
 0054B7F7    call        0040D630
 0054B7FC    mov         edx,dword ptr [ebp-54]
 0054B7FF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B804    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B80A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B810    mov         ecx,dword ptr [eax]
 0054B812    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B815    lea         eax,[ebp-58]
 0054B818    push        eax
 0054B819    mov         eax,[0056E344];^gvar_0059BF5C
 0054B81E    movzx       eax,byte ptr [eax+1E]
 0054B822    mov         dword ptr [ebp-18],eax
 0054B825    mov         byte ptr [ebp-14],0
 0054B829    lea         edx,[ebp-18]
 0054B82C    xor         ecx,ecx
 0054B82E    mov         eax,54CD84;'Virtual Heads Count        %d'
 0054B833    call        0040D630
 0054B838    mov         edx,dword ptr [ebp-58]
 0054B83B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B840    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B846    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B84C    mov         ecx,dword ptr [eax]
 0054B84E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B851    lea         eax,[ebp-5C]
 0054B854    push        eax
 0054B855    mov         eax,[0056E344];^gvar_0059BF5C
 0054B85A    movzx       eax,byte ptr [eax+1F]
 0054B85E    mov         dword ptr [ebp-18],eax
 0054B861    mov         byte ptr [ebp-14],0
 0054B865    lea         edx,[ebp-18]
 0054B868    xor         ecx,ecx
 0054B86A    mov         eax,54CDAC;'Heads BitMap Value         %x'
 0054B86F    call        0040D630
 0054B874    mov         edx,dword ptr [ebp-5C]
 0054B877    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B87C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B882    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B888    mov         ecx,dword ptr [eax]
 0054B88A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B88D    lea         eax,[ebp-60]
 0054B890    push        eax
 0054B891    mov         eax,[0056E344];^gvar_0059BF5C
 0054B896    movzx       eax,byte ptr [eax+21]
 0054B89A    mov         dword ptr [ebp-18],eax
 0054B89D    mov         byte ptr [ebp-14],0
 0054B8A1    lea         edx,[ebp-18]
 0054B8A4    xor         ecx,ecx
 0054B8A6    mov         eax,54CDD4;'Zones Num                  %d'
 0054B8AB    call        0040D630
 0054B8B0    mov         edx,dword ptr [ebp-60]
 0054B8B3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B8B8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B8BE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B8C4    mov         ecx,dword ptr [eax]
 0054B8C6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B8C9    lea         eax,[ebp-64]
 0054B8CC    push        eax
 0054B8CD    mov         eax,[0056E344];^gvar_0059BF5C
 0054B8D2    movzx       eax,word ptr [eax+22]
 0054B8D6    mov         dword ptr [ebp-18],eax
 0054B8D9    mov         byte ptr [ebp-14],0
 0054B8DD    lea         edx,[ebp-18]
 0054B8E0    xor         ecx,ecx
 0054B8E2    mov         eax,54CDFC;'Servo Wedges Num           %d'
 0054B8E7    call        0040D630
 0054B8EC    mov         edx,dword ptr [ebp-64]
 0054B8EF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B8F4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B8FA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B900    mov         ecx,dword ptr [eax]
 0054B902    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B905    lea         eax,[ebp-68]
 0054B908    push        eax
 0054B909    mov         eax,[0056E344];^gvar_0059BF5C
 0054B90E    movzx       eax,word ptr [eax+24]
 0054B912    mov         dword ptr [ebp-18],eax
 0054B915    mov         byte ptr [ebp-14],0
 0054B919    lea         edx,[ebp-18]
 0054B91C    xor         ecx,ecx
 0054B91E    mov         eax,54CE24;'RSVD Cylinders Count       %d'
 0054B923    call        0040D630
 0054B928    mov         edx,dword ptr [ebp-68]
 0054B92B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B930    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B936    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B93C    mov         ecx,dword ptr [eax]
 0054B93E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B941    lea         eax,[ebp-6C]
 0054B944    push        eax
 0054B945    mov         eax,[0056E344];^gvar_0059BF5C
 0054B94A    mov         eax,dword ptr [eax+28]
 0054B94D    mov         dword ptr [ebp-18],eax
 0054B950    mov         byte ptr [ebp-14],0
 0054B954    lea         edx,[ebp-18]
 0054B957    xor         ecx,ecx
 0054B959    mov         eax,54CE4C;'User Cylinders Count       %d'
 0054B95E    call        0040D630
 0054B963    mov         edx,dword ptr [ebp-6C]
 0054B966    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B96B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B971    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B977    mov         ecx,dword ptr [eax]
 0054B979    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B97C    lea         eax,[ebp-70]
 0054B97F    push        eax
 0054B980    mov         eax,[0056E344];^gvar_0059BF5C
 0054B985    movzx       eax,byte ptr [eax+2C]
 0054B989    mov         dword ptr [ebp-18],eax
 0054B98C    mov         byte ptr [ebp-14],0
 0054B990    lea         edx,[ebp-18]
 0054B993    xor         ecx,ecx
 0054B995    mov         eax,54CE74;'Cylinder Wedge Skew        %d'
 0054B99A    call        0040D630
 0054B99F    mov         edx,dword ptr [ebp-70]
 0054B9A2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B9A7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B9AD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B9B3    mov         ecx,dword ptr [eax]
 0054B9B5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B9B8    lea         eax,[ebp-74]
 0054B9BB    push        eax
 0054B9BC    mov         eax,[0056E344];^gvar_0059BF5C
 0054B9C1    movzx       eax,byte ptr [eax+2D]
 0054B9C5    mov         dword ptr [ebp-18],eax
 0054B9C8    mov         byte ptr [ebp-14],0
 0054B9CC    lea         edx,[ebp-18]
 0054B9CF    xor         ecx,ecx
 0054B9D1    mov         eax,54CE9C;'Head Wedge Skew            %d'
 0054B9D6    call        0040D630
 0054B9DB    mov         edx,dword ptr [ebp-74]
 0054B9DE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054B9E3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054B9E9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054B9EF    mov         ecx,dword ptr [eax]
 0054B9F1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054B9F4    lea         eax,[ebp-78]
 0054B9F7    push        eax
 0054B9F8    mov         eax,[0056E344];^gvar_0059BF5C
 0054B9FD    movzx       eax,byte ptr [eax+2E]
 0054BA01    mov         dword ptr [ebp-18],eax
 0054BA04    mov         byte ptr [ebp-14],0
 0054BA08    lea         edx,[ebp-18]
 0054BA0B    xor         ecx,ecx
 0054BA0D    mov         eax,54CEC4;'Cluster Skew               %d'
 0054BA12    call        0040D630
 0054BA17    mov         edx,dword ptr [ebp-78]
 0054BA1A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BA1F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BA25    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BA2B    mov         ecx,dword ptr [eax]
 0054BA2D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BA30    mov         eax,[0056E344];^gvar_0059BF5C
 0054BA35    movzx       eax,byte ptr [eax+2F]
 0054BA39    cmp         eax,6
>0054BA3C    ja          0054BABB
 0054BA3E    jmp         dword ptr [eax*4+54BA45]
 0054BA3E    dd          0054BABB
 0054BA3E    dd          0054BA61
 0054BA3E    dd          0054BA70
 0054BA3E    dd          0054BA7F
 0054BA3E    dd          0054BA8E
 0054BA3E    dd          0054BA9D
 0054BA3E    dd          0054BAAC
 0054BA61    lea         eax,[ebp-0C]
 0054BA64    mov         edx,54CEEC;'ROM (OTP)'
 0054BA69    call        @LStrLAsg
>0054BA6E    jmp         0054BAC8
 0054BA70    lea         eax,[ebp-0C]
 0054BA73    mov         edx,54CF00;'ROM (Custom OTP)'
 0054BA78    call        @LStrLAsg
>0054BA7D    jmp         0054BAC8
 0054BA7F    lea         eax,[ebp-0C]
 0054BA82    mov         edx,54CF1C;'Parallel Flash'
 0054BA87    call        @LStrLAsg
>0054BA8C    jmp         0054BAC8
 0054BA8E    lea         eax,[ebp-0C]
 0054BA91    mov         edx,54CF34;'Custom Flash'
 0054BA96    call        @LStrLAsg
>0054BA9B    jmp         0054BAC8
 0054BA9D    lea         eax,[ebp-0C]
 0054BAA0    mov         edx,54CF4C;'Serial Flash'
 0054BAA5    call        @LStrLAsg
>0054BAAA    jmp         0054BAC8
 0054BAAC    lea         eax,[ebp-0C]
 0054BAAF    mov         edx,54CF64;'Manteca'
 0054BAB4    call        @LStrLAsg
>0054BAB9    jmp         0054BAC8
 0054BABB    lea         eax,[ebp-0C]
 0054BABE    mov         edx,54CF74;'Unknown'
 0054BAC3    call        @LStrLAsg
 0054BAC8    lea         eax,[ebp-7C]
 0054BACB    push        eax
 0054BACC    mov         eax,[0056E344];^gvar_0059BF5C
 0054BAD1    movzx       eax,byte ptr [eax+2F]
 0054BAD5    mov         dword ptr [ebp-44],eax
 0054BAD8    mov         byte ptr [ebp-40],0
 0054BADC    mov         eax,dword ptr [ebp-0C]
 0054BADF    mov         dword ptr [ebp-3C],eax
 0054BAE2    mov         byte ptr [ebp-38],0B
 0054BAE6    lea         edx,[ebp-44]
 0054BAE9    mov         ecx,1
 0054BAEE    mov         eax,54CF84;'ROM Type                   %d - %s'
 0054BAF3    call        0040D630
 0054BAF8    mov         edx,dword ptr [ebp-7C]
 0054BAFB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BB00    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BB06    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BB0C    mov         ecx,dword ptr [eax]
 0054BB0E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BB11    lea         eax,[ebp-80]
 0054BB14    push        eax
 0054BB15    mov         eax,[0056E344];^gvar_0059BF5C
 0054BB1A    movzx       eax,byte ptr [eax+0A4]
 0054BB21    shl         eax,4
 0054BB24    mov         dword ptr [ebp-18],eax
 0054BB27    mov         byte ptr [ebp-14],0
 0054BB2B    lea         edx,[ebp-18]
 0054BB2E    xor         ecx,ecx
 0054BB30    mov         eax,54CFB0;'Flash Size                 %dKB'
 0054BB35    call        0040D630
 0054BB3A    mov         edx,dword ptr [ebp-80]
 0054BB3D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BB42    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BB48    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BB4E    mov         ecx,dword ptr [eax]
 0054BB50    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BB53    lea         eax,[ebp-84]
 0054BB59    push        eax
 0054BB5A    mov         eax,[0056E344];^gvar_0059BF5C
 0054BB5F    movzx       eax,byte ptr [eax+0A5]
 0054BB66    mov         dword ptr [ebp-18],eax
 0054BB69    mov         byte ptr [ebp-14],0
 0054BB6D    lea         edx,[ebp-18]
 0054BB70    xor         ecx,ecx
 0054BB72    mov         eax,54CFD8;'Flash Programming Protocol %x'
 0054BB77    call        0040D630
 0054BB7C    mov         edx,dword ptr [ebp-84]
 0054BB82    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BB87    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BB8D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BB93    mov         ecx,dword ptr [eax]
 0054BB95    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BB98    mov         eax,[0056E344];^gvar_0059BF5C
 0054BB9D    mov         al,byte ptr [eax+30]
 0054BBA0    sub         al,1
>0054BBA2    jb          0054BBA8
>0054BBA4    je          0054BBB7
>0054BBA6    jmp         0054BBC6
 0054BBA8    lea         eax,[ebp-0C]
 0054BBAB    mov         edx,54D000;'Entek'
 0054BBB0    call        @LStrLAsg
>0054BBB5    jmp         0054BBD3
 0054BBB7    lea         eax,[ebp-0C]
 0054BBBA    mov         edx,54D010;'Non Entek'
 0054BBBF    call        @LStrLAsg
>0054BBC4    jmp         0054BBD3
 0054BBC6    lea         eax,[ebp-0C]
 0054BBC9    mov         edx,54D024;'UnKnown'
 0054BBCE    call        @LStrLAsg
 0054BBD3    lea         eax,[ebp-88]
 0054BBD9    push        eax
 0054BBDA    mov         eax,[0056E344];^gvar_0059BF5C
 0054BBDF    movzx       eax,byte ptr [eax+30]
 0054BBE3    mov         dword ptr [ebp-44],eax
 0054BBE6    mov         byte ptr [ebp-40],0
 0054BBEA    mov         eax,dword ptr [ebp-0C]
 0054BBED    mov         dword ptr [ebp-3C],eax
 0054BBF0    mov         byte ptr [ebp-38],0B
 0054BBF4    lea         edx,[ebp-44]
 0054BBF7    mov         ecx,1
 0054BBFC    mov         eax,54D034;'PCBA Type                  %x - %s'
 0054BC01    call        0040D630
 0054BC06    mov         edx,dword ptr [ebp-88]
 0054BC0C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BC11    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BC17    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BC1D    mov         ecx,dword ptr [eax]
 0054BC1F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BC22    lea         eax,[ebp-8C]
 0054BC28    push        eax
 0054BC29    mov         eax,[0056E344];^gvar_0059BF5C
 0054BC2E    movzx       eax,byte ptr [eax+90]
 0054BC35    mov         dword ptr [ebp-18],eax
 0054BC38    mov         byte ptr [ebp-14],0
 0054BC3C    lea         edx,[ebp-18]
 0054BC3F    xor         ecx,ecx
 0054BC41    mov         eax,54D060;'PCBA Revision              %x'
 0054BC46    call        0040D630
 0054BC4B    mov         edx,dword ptr [ebp-8C]
 0054BC51    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BC56    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BC5C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BC62    mov         ecx,dword ptr [eax]
 0054BC64    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BC67    mov         eax,[0056E344];^gvar_0059BF5C
 0054BC6C    movzx       eax,byte ptr [eax+31]
 0054BC70    cmp         eax,6
>0054BC73    ja          0054BD05
 0054BC79    jmp         dword ptr [eax*4+54BC80]
 0054BC79    dd          0054BC9C
 0054BC79    dd          0054BCAB
 0054BC79    dd          0054BCBA
 0054BC79    dd          0054BCC9
 0054BC79    dd          0054BCD8
 0054BC79    dd          0054BCE7
 0054BC79    dd          0054BCF6
 0054BC9C    lea         eax,[ebp-0C]
 0054BC9F    mov         edx,54D024;'UnKnown'
 0054BCA4    call        @LStrLAsg
>0054BCA9    jmp         0054BD12
 0054BCAB    lea         eax,[ebp-0C]
 0054BCAE    mov         edx,54D088;'Parallel ATA'
 0054BCB3    call        @LStrLAsg
>0054BCB8    jmp         0054BD12
 0054BCBA    lea         eax,[ebp-0C]
 0054BCBD    mov         edx,54D0A0;'Serial ATA'
 0054BCC2    call        @LStrLAsg
>0054BCC7    jmp         0054BD12
 0054BCC9    lea         eax,[ebp-0C]
 0054BCCC    mov         edx,54D0B4;'USB'
 0054BCD1    call        @LStrLAsg
>0054BCD6    jmp         0054BD12
 0054BCD8    lea         eax,[ebp-0C]
 0054BCDB    mov         edx,54D0C0;'Fiber Channel'
 0054BCE0    call        @LStrLAsg
>0054BCE5    jmp         0054BD12
 0054BCE7    lea         eax,[ebp-0C]
 0054BCEA    mov         edx,54D0D8;'SAS'
 0054BCEF    call        @LStrLAsg
>0054BCF4    jmp         0054BD12
 0054BCF6    lea         eax,[ebp-0C]
 0054BCF9    mov         edx,54D0E4;'CFA'
 0054BCFE    call        @LStrLAsg
>0054BD03    jmp         0054BD12
 0054BD05    lea         eax,[ebp-0C]
 0054BD08    mov         edx,54D024;'UnKnown'
 0054BD0D    call        @LStrLAsg
 0054BD12    lea         eax,[ebp-90]
 0054BD18    push        eax
 0054BD19    mov         eax,[0056E344];^gvar_0059BF5C
 0054BD1E    movzx       eax,byte ptr [eax+31]
 0054BD22    mov         dword ptr [ebp-44],eax
 0054BD25    mov         byte ptr [ebp-40],0
 0054BD29    mov         eax,dword ptr [ebp-0C]
 0054BD2C    mov         dword ptr [ebp-3C],eax
 0054BD2F    mov         byte ptr [ebp-38],0B
 0054BD33    lea         edx,[ebp-44]
 0054BD36    mov         ecx,1
 0054BD3B    mov         eax,54D0F0;'Interface Type             %x %s'
 0054BD40    call        0040D630
 0054BD45    mov         edx,dword ptr [ebp-90]
 0054BD4B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BD50    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BD56    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BD5C    mov         ecx,dword ptr [eax]
 0054BD5E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BD61    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BD66    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BD6C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BD72    mov         edx,54D11C;#10+Drive Parts Information'
 0054BD77    mov         ecx,dword ptr [eax]
 0054BD79    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BD7C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BD81    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BD87    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BD8D    mov         edx,54CD10;'------------------------'
 0054BD92    mov         ecx,dword ptr [eax]
 0054BD94    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BD97    lea         eax,[ebp-94]
 0054BD9D    push        eax
 0054BD9E    mov         eax,[0056E344];^gvar_0059BF5C
 0054BDA3    movzx       eax,word ptr [eax+32]
 0054BDA7    mov         dword ptr [ebp-18],eax
 0054BDAA    mov         byte ptr [ebp-14],0
 0054BDAE    lea         edx,[ebp-18]
 0054BDB1    xor         ecx,ecx
 0054BDB3    mov         eax,54D140;'Controller Chip Vendor     %x'
 0054BDB8    call        0040D630
 0054BDBD    mov         edx,dword ptr [ebp-94]
 0054BDC3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BDC8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BDCE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BDD4    mov         ecx,dword ptr [eax]
 0054BDD6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BDD9    lea         eax,[ebp-98]
 0054BDDF    push        eax
 0054BDE0    mov         eax,[0056E344];^gvar_0059BF5C
 0054BDE5    movzx       eax,word ptr [eax+34]
 0054BDE9    mov         dword ptr [ebp-44],eax
 0054BDEC    mov         byte ptr [ebp-40],0
 0054BDF0    lea         edx,[ebp-9C]
 0054BDF6    mov         eax,[0056E344];^gvar_0059BF5C
 0054BDFB    mov         ax,word ptr [eax+34]
 0054BDFF    call        0054B194
 0054BE04    mov         eax,dword ptr [ebp-9C]
 0054BE0A    mov         dword ptr [ebp-3C],eax
 0054BE0D    mov         byte ptr [ebp-38],0B
 0054BE11    lea         edx,[ebp-44]
 0054BE14    mov         ecx,1
 0054BE19    mov         eax,54D168;'Controller Chip Revision   %x - %s'
 0054BE1E    call        0040D630
 0054BE23    mov         edx,dword ptr [ebp-98]
 0054BE29    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BE2E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BE34    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BE3A    mov         ecx,dword ptr [eax]
 0054BE3C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BE3F    lea         eax,[ebp-0A0]
 0054BE45    push        eax
 0054BE46    mov         eax,[0056E344];^gvar_0059BF5C
 0054BE4B    movzx       eax,word ptr [eax+8E]
 0054BE52    mov         dword ptr [ebp-44],eax
 0054BE55    mov         byte ptr [ebp-40],0
 0054BE59    lea         edx,[ebp-0A4]
 0054BE5F    mov         eax,[0056E344];^gvar_0059BF5C
 0054BE64    mov         ax,word ptr [eax+8E]
 0054BE6B    call        0054B290
 0054BE70    mov         eax,dword ptr [ebp-0A4]
 0054BE76    mov         dword ptr [ebp-3C],eax
 0054BE79    mov         byte ptr [ebp-38],0B
 0054BE7D    lea         edx,[ebp-44]
 0054BE80    mov         ecx,1
 0054BE85    mov         eax,54D194;'Controller Chip Family ID  %x - %s'
 0054BE8A    call        0040D630
 0054BE8F    mov         edx,dword ptr [ebp-0A0]
 0054BE95    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BE9A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BEA0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BEA6    mov         ecx,dword ptr [eax]
 0054BEA8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BEAB    lea         eax,[ebp-0A8]
 0054BEB1    push        eax
 0054BEB2    mov         eax,[0056E344];^gvar_0059BF5C
 0054BEB7    movzx       eax,word ptr [eax+36]
 0054BEBB    mov         dword ptr [ebp-18],eax
 0054BEBE    mov         byte ptr [ebp-14],0
 0054BEC2    lea         edx,[ebp-18]
 0054BEC5    xor         ecx,ecx
 0054BEC7    mov         eax,54D1C0;'MicroP Vendor              %x'
 0054BECC    call        0040D630
 0054BED1    mov         edx,dword ptr [ebp-0A8]
 0054BED7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BEDC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BEE2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BEE8    mov         ecx,dword ptr [eax]
 0054BEEA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BEED    lea         eax,[ebp-0AC]
 0054BEF3    push        eax
 0054BEF4    mov         eax,[0056E344];^gvar_0059BF5C
 0054BEF9    movzx       eax,word ptr [eax+38]
 0054BEFD    mov         dword ptr [ebp-18],eax
 0054BF00    mov         byte ptr [ebp-14],0
 0054BF04    lea         edx,[ebp-18]
 0054BF07    xor         ecx,ecx
 0054BF09    mov         eax,54D1E8;'MicroP Revision            %x'
 0054BF0E    call        0040D630
 0054BF13    mov         edx,dword ptr [ebp-0AC]
 0054BF19    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BF1E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BF24    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BF2A    mov         ecx,dword ptr [eax]
 0054BF2C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BF2F    lea         eax,[ebp-0B0]
 0054BF35    push        eax
 0054BF36    mov         eax,[0056E344];^gvar_0059BF5C
 0054BF3B    movzx       eax,word ptr [eax+3A]
 0054BF3F    mov         dword ptr [ebp-18],eax
 0054BF42    mov         byte ptr [ebp-14],0
 0054BF46    lea         edx,[ebp-18]
 0054BF49    xor         ecx,ecx
 0054BF4B    mov         eax,54D210;'Channel Chip Vendor        %x'
 0054BF50    call        0040D630
 0054BF55    mov         edx,dword ptr [ebp-0B0]
 0054BF5B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BF60    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BF66    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BF6C    mov         ecx,dword ptr [eax]
 0054BF6E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BF71    lea         eax,[ebp-0B4]
 0054BF77    push        eax
 0054BF78    mov         eax,[0056E344];^gvar_0059BF5C
 0054BF7D    movzx       eax,word ptr [eax+3C]
 0054BF81    mov         dword ptr [ebp-18],eax
 0054BF84    mov         byte ptr [ebp-14],0
 0054BF88    lea         edx,[ebp-18]
 0054BF8B    xor         ecx,ecx
 0054BF8D    mov         eax,54D238;'Channel Chip Revision      %x'
 0054BF92    call        0040D630
 0054BF97    mov         edx,dword ptr [ebp-0B4]
 0054BF9D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BFA2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BFA8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BFAE    mov         ecx,dword ptr [eax]
 0054BFB0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BFB3    lea         eax,[ebp-0B8]
 0054BFB9    push        eax
 0054BFBA    mov         eax,[0056E344];^gvar_0059BF5C
 0054BFBF    movzx       eax,word ptr [eax+3E]
 0054BFC3    mov         dword ptr [ebp-18],eax
 0054BFC6    mov         byte ptr [ebp-14],0
 0054BFCA    lea         edx,[ebp-18]
 0054BFCD    xor         ecx,ecx
 0054BFCF    mov         eax,54D260;'Preamp Vendor              %x'
 0054BFD4    call        0040D630
 0054BFD9    mov         edx,dword ptr [ebp-0B8]
 0054BFDF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054BFE4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054BFEA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054BFF0    mov         ecx,dword ptr [eax]
 0054BFF2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054BFF5    lea         eax,[ebp-0BC]
 0054BFFB    push        eax
 0054BFFC    mov         eax,[0056E344];^gvar_0059BF5C
 0054C001    movzx       eax,word ptr [eax+40]
 0054C005    mov         dword ptr [ebp-18],eax
 0054C008    mov         byte ptr [ebp-14],0
 0054C00C    lea         edx,[ebp-18]
 0054C00F    xor         ecx,ecx
 0054C011    mov         eax,54D288;'Preamp Revision            %x'
 0054C016    call        0040D630
 0054C01B    mov         edx,dword ptr [ebp-0BC]
 0054C021    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C026    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C02C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C032    mov         ecx,dword ptr [eax]
 0054C034    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C037    lea         eax,[ebp-0C0]
 0054C03D    push        eax
 0054C03E    mov         eax,[0056E344];^gvar_0059BF5C
 0054C043    movzx       eax,word ptr [eax+42]
 0054C047    mov         dword ptr [ebp-18],eax
 0054C04A    mov         byte ptr [ebp-14],0
 0054C04E    lea         edx,[ebp-18]
 0054C051    xor         ecx,ecx
 0054C053    mov         eax,54D2B0;'Power IC Vendor            %x'
 0054C058    call        0040D630
 0054C05D    mov         edx,dword ptr [ebp-0C0]
 0054C063    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C068    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C06E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C074    mov         ecx,dword ptr [eax]
 0054C076    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C079    lea         eax,[ebp-0C4]
 0054C07F    push        eax
 0054C080    mov         eax,[0056E344];^gvar_0059BF5C
 0054C085    movzx       eax,word ptr [eax+44]
 0054C089    mov         dword ptr [ebp-18],eax
 0054C08C    mov         byte ptr [ebp-14],0
 0054C090    lea         edx,[ebp-18]
 0054C093    xor         ecx,ecx
 0054C095    mov         eax,54D2D8;'Power IC Revision          %x'
 0054C09A    call        0040D630
 0054C09F    mov         edx,dword ptr [ebp-0C4]
 0054C0A5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C0AA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C0B0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C0B6    mov         ecx,dword ptr [eax]
 0054C0B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C0BB    lea         eax,[ebp-0C8]
 0054C0C1    push        eax
 0054C0C2    mov         eax,[0056E344];^gvar_0059BF5C
 0054C0C7    mov         eax,dword ptr [eax+5E]
 0054C0CA    mov         dword ptr [ebp-18],eax
 0054C0CD    mov         byte ptr [ebp-14],0
 0054C0D1    lea         edx,[ebp-18]
 0054C0D4    xor         ecx,ecx
 0054C0D6    mov         eax,54D300;#10+Feature Flags              %x'
 0054C0DB    call        0040D630
 0054C0E0    mov         edx,dword ptr [ebp-0C8]
 0054C0E6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C0EB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C0F1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C0F7    mov         ecx,dword ptr [eax]
 0054C0F9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C0FC    lea         eax,[ebp-0C]
 0054C0FF    call        @LStrClr
 0054C104    mov         eax,[0056E344];^gvar_0059BF5C
 0054C109    mov         ax,word ptr [eax+76]
 0054C10D    and         ax,1
 0054C111    cmp         ax,1
>0054C115    jne         0054C124
 0054C117    lea         eax,[ebp-0C]
 0054C11A    mov         edx,54D328;'Master, '
 0054C11F    call        @LStrCat
 0054C124    mov         eax,[0056E344];^gvar_0059BF5C
 0054C129    mov         ax,word ptr [eax+76]
 0054C12D    and         ax,2
 0054C131    cmp         ax,2
>0054C135    jne         0054C144
 0054C137    lea         eax,[ebp-0C]
 0054C13A    mov         edx,54D33C;'Slave, '
 0054C13F    call        @LStrCat
 0054C144    mov         eax,[0056E344];^gvar_0059BF5C
 0054C149    mov         ax,word ptr [eax+76]
 0054C14D    and         ax,4
 0054C151    cmp         ax,4
>0054C155    jne         0054C164
 0054C157    lea         eax,[ebp-0C]
 0054C15A    mov         edx,54D34C;'CSEL'
 0054C15F    call        @LStrCat
 0054C164    lea         eax,[ebp-0CC]
 0054C16A    push        eax
 0054C16B    mov         eax,[0056E344];^gvar_0059BF5C
 0054C170    movzx       eax,word ptr [eax+76]
 0054C174    mov         dword ptr [ebp-44],eax
 0054C177    mov         byte ptr [ebp-40],0
 0054C17B    mov         eax,dword ptr [ebp-0C]
 0054C17E    mov         dword ptr [ebp-3C],eax
 0054C181    mov         byte ptr [ebp-38],0B
 0054C185    lea         edx,[ebp-44]
 0054C188    mov         ecx,1
 0054C18D    mov         eax,54D35C;'Jumper Setting Value       %x %s'
 0054C192    call        0040D630
 0054C197    mov         edx,dword ptr [ebp-0CC]
 0054C19D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C1A2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C1A8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C1AE    mov         ecx,dword ptr [eax]
 0054C1B0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C1B3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C1B8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C1BE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C1C4    mov         edx,54D388;#10+Drive Format Information'
 0054C1C9    mov         ecx,dword ptr [eax]
 0054C1CB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C1CE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C1D3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C1D9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C1DF    mov         edx,54CD10;'------------------------'
 0054C1E4    mov         ecx,dword ptr [eax]
 0054C1E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C1E9    lea         eax,[ebp-0D0]
 0054C1EF    push        eax
 0054C1F0    mov         eax,[0056E344];^gvar_0059BF5C
 0054C1F5    movzx       eax,word ptr [eax+88]
 0054C1FC    mov         dword ptr [ebp-18],eax
 0054C1FF    mov         byte ptr [ebp-14],0
 0054C203    lea         edx,[ebp-18]
 0054C206    xor         ecx,ecx
 0054C208    mov         eax,54D3AC;'Tracks Per Inch            %dK'
 0054C20D    call        0040D630
 0054C212    mov         edx,dword ptr [ebp-0D0]
 0054C218    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C21D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C223    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C229    mov         ecx,dword ptr [eax]
 0054C22B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C22E    lea         eax,[ebp-0D4]
 0054C234    push        eax
 0054C235    mov         eax,[0056E344];^gvar_0059BF5C
 0054C23A    movzx       eax,word ptr [eax+8A]
 0054C241    imul        eax,eax,64
 0054C244    mov         dword ptr [ebp-18],eax
 0054C247    mov         byte ptr [ebp-14],0
 0054C24B    lea         edx,[ebp-18]
 0054C24E    xor         ecx,ecx
 0054C250    mov         eax,54D3D4;'Area Density               %d per platter'
 0054C255    call        0040D630
 0054C25A    mov         edx,dword ptr [ebp-0D4]
 0054C260    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C265    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C26B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C271    mov         ecx,dword ptr [eax]
 0054C273    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C276    lea         eax,[ebp-0D8]
 0054C27C    push        eax
 0054C27D    mov         eax,[0056E344];^gvar_0059BF5C
 0054C282    movzx       eax,byte ptr [eax+8C]
 0054C289    mov         dword ptr [ebp-18],eax
 0054C28C    mov         byte ptr [ebp-14],0
 0054C290    lea         edx,[ebp-18]
 0054C293    xor         ecx,ecx
 0054C295    mov         eax,54D408;'Format Type                %d'
 0054C29A    call        0040D630
 0054C29F    mov         edx,dword ptr [ebp-0D8]
 0054C2A5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C2AA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C2B0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C2B6    mov         ecx,dword ptr [eax]
 0054C2B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C2BB    mov         eax,[0056E344];^gvar_0059BF5C
 0054C2C0    cmp         byte ptr [eax+8C],0
>0054C2C7    je          0054C310
 0054C2C9    lea         eax,[ebp-0DC]
 0054C2CF    push        eax
 0054C2D0    mov         eax,[0056E344];^gvar_0059BF5C
 0054C2D5    movzx       eax,byte ptr [eax+8C]
 0054C2DC    mov         dword ptr [ebp-18],eax
 0054C2DF    mov         byte ptr [ebp-14],0
 0054C2E3    lea         edx,[ebp-18]
 0054C2E6    xor         ecx,ecx
 0054C2E8    mov         eax,54D430;'Drive Format Type          %d Primary'
 0054C2ED    call        0040D630
 0054C2F2    mov         edx,dword ptr [ebp-0DC]
 0054C2F8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C2FD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C303    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C309    mov         ecx,dword ptr [eax]
 0054C30B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0054C30E    jmp         0054C355
 0054C310    lea         eax,[ebp-0E0]
 0054C316    push        eax
 0054C317    mov         eax,[0056E344];^gvar_0059BF5C
 0054C31C    movzx       eax,byte ptr [eax+8D]
 0054C323    mov         dword ptr [ebp-18],eax
 0054C326    mov         byte ptr [ebp-14],0
 0054C32A    lea         edx,[ebp-18]
 0054C32D    xor         ecx,ecx
 0054C32F    mov         eax,54D460;'Drive Format Type          %d Alternate'
 0054C334    call        0040D630
 0054C339    mov         edx,dword ptr [ebp-0E0]
 0054C33F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C344    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C34A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C350    mov         ecx,dword ptr [eax]
 0054C352    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C355    lea         eax,[ebp-0E4]
 0054C35B    push        eax
 0054C35C    mov         eax,[0056E344];^gvar_0059BF5C
 0054C361    movzx       eax,byte ptr [eax+0A7]
 0054C368    mov         dword ptr [ebp-18],eax
 0054C36B    mov         byte ptr [ebp-14],0
 0054C36F    lea         edx,[ebp-18]
 0054C372    xor         ecx,ecx
 0054C374    mov         eax,54D490;'Head Format Class          %x'
 0054C379    call        0040D630
 0054C37E    mov         edx,dword ptr [ebp-0E4]
 0054C384    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C389    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C38F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C395    mov         ecx,dword ptr [eax]
 0054C397    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C39A    lea         eax,[ebp-0E8]
 0054C3A0    push        eax
 0054C3A1    mov         eax,[0056E344];^gvar_0059BF5C
 0054C3A6    movzx       eax,byte ptr [eax+0A8]
 0054C3AD    mov         dword ptr [ebp-18],eax
 0054C3B0    mov         byte ptr [ebp-14],0
 0054C3B4    lea         edx,[ebp-18]
 0054C3B7    xor         ecx,ecx
 0054C3B9    mov         eax,54D4B8;'HDA Type (max platters num)%d'
 0054C3BE    call        0040D630
 0054C3C3    mov         edx,dword ptr [ebp-0E8]
 0054C3C9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C3CE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C3D4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C3DA    mov         ecx,dword ptr [eax]
 0054C3DC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C3DF    mov         eax,[0056E344];^gvar_0059BF5C
 0054C3E4    cmp         byte ptr [eax+31],2
>0054C3E8    je          0054C3F9
 0054C3EA    mov         eax,[0056E344];^gvar_0059BF5C
 0054C3EF    cmp         byte ptr [eax+31],5
>0054C3F3    jne         0054C4B9
 0054C3F9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C3FE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C404    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C40A    mov         edx,54D4E0;#10+SATA IPM Timers'
 0054C40F    mov         ecx,dword ptr [eax]
 0054C411    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C414    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C419    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C41F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C425    mov         edx,54D4FC;'---------------'
 0054C42A    mov         ecx,dword ptr [eax]
 0054C42C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C42F    lea         eax,[ebp-0EC]
 0054C435    push        eax
 0054C436    mov         eax,[0056E344];^gvar_0059BF5C
 0054C43B    movzx       eax,word ptr [eax+0AC]
 0054C442    mov         dword ptr [ebp-18],eax
 0054C445    mov         byte ptr [ebp-14],0
 0054C449    lea         edx,[ebp-18]
 0054C44C    xor         ecx,ecx
 0054C44E    mov         eax,54D514;'Partial                    %d ms'
 0054C453    call        0040D630
 0054C458    mov         edx,dword ptr [ebp-0EC]
 0054C45E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C463    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C469    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C46F    mov         ecx,dword ptr [eax]
 0054C471    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C474    lea         eax,[ebp-0F0]
 0054C47A    push        eax
 0054C47B    mov         eax,[0056E344];^gvar_0059BF5C
 0054C480    movzx       eax,word ptr [eax+0AA]
 0054C487    mov         dword ptr [ebp-18],eax
 0054C48A    mov         byte ptr [ebp-14],0
 0054C48E    lea         edx,[ebp-18]
 0054C491    xor         ecx,ecx
 0054C493    mov         eax,54D540;'Slumber                    %d ms'
 0054C498    call        0040D630
 0054C49D    mov         edx,dword ptr [ebp-0F0]
 0054C4A3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C4A8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C4AE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C4B4    mov         ecx,dword ptr [eax]
 0054C4B6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C4B9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C4BE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C4C4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C4CA    mov         edx,54D56C;#10+Error Correction Information'
 0054C4CF    mov         ecx,dword ptr [eax]
 0054C4D1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C4D4    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C4D9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C4DF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C4E5    mov         edx,54D594;'----------------------------'
 0054C4EA    mov         ecx,dword ptr [eax]
 0054C4EC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C4EF    lea         eax,[ebp-0F4]
 0054C4F5    push        eax
 0054C4F6    mov         eax,[0056E344];^gvar_0059BF5C
 0054C4FB    movzx       eax,byte ptr [eax+46]
 0054C4FF    mov         dword ptr [ebp-18],eax
 0054C502    mov         byte ptr [ebp-14],0
 0054C506    lea         edx,[ebp-18]
 0054C509    xor         ecx,ecx
 0054C50B    mov         eax,54D5BC;'No. of Interleaves         %d'
 0054C510    call        0040D630
 0054C515    mov         edx,dword ptr [ebp-0F4]
 0054C51B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C520    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C526    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C52C    mov         ecx,dword ptr [eax]
 0054C52E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C531    lea         eax,[ebp-0F8]
 0054C537    push        eax
 0054C538    mov         eax,[0056E344];^gvar_0059BF5C
 0054C53D    movzx       eax,byte ptr [eax+47]
 0054C541    mov         dword ptr [ebp-18],eax
 0054C544    mov         byte ptr [ebp-14],0
 0054C548    lea         edx,[ebp-18]
 0054C54B    xor         ecx,ecx
 0054C54D    mov         eax,54D5E4;'OTF Corr. Span in Bytes    %d'
 0054C552    call        0040D630
 0054C557    mov         edx,dword ptr [ebp-0F8]
 0054C55D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C562    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C568    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C56E    mov         ecx,dword ptr [eax]
 0054C570    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C573    lea         eax,[ebp-0FC]
 0054C579    push        eax
 0054C57A    mov         eax,[0056E344];^gvar_0059BF5C
 0054C57F    movzx       eax,word ptr [eax+48]
 0054C583    mov         dword ptr [ebp-18],eax
 0054C586    mov         byte ptr [ebp-14],0
 0054C58A    lea         edx,[ebp-18]
 0054C58D    xor         ecx,ecx
 0054C58F    mov         eax,54D60C;'Max FW Corr. Span in Bytes %d'
 0054C594    call        0040D630
 0054C599    mov         edx,dword ptr [ebp-0FC]
 0054C59F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C5A4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C5AA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C5B0    mov         ecx,dword ptr [eax]
 0054C5B2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C5B5    lea         eax,[ebp-100]
 0054C5BB    push        eax
 0054C5BC    mov         eax,[0056E344];^gvar_0059BF5C
 0054C5C1    movzx       eax,byte ptr [eax+4A]
 0054C5C5    mov         dword ptr [ebp-18],eax
 0054C5C8    mov         byte ptr [ebp-14],0
 0054C5CC    lea         edx,[ebp-18]
 0054C5CF    xor         ecx,ecx
 0054C5D1    mov         eax,54D634;'No. of ECC and CRC Bytes   %d'
 0054C5D6    call        0040D630
 0054C5DB    mov         edx,dword ptr [ebp-100]
 0054C5E1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C5E6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C5EC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C5F2    mov         ecx,dword ptr [eax]
 0054C5F4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C5F7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C5FC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C602    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C608    mov         edx,54D65C;#10+ReloList File Information'
 0054C60D    mov         ecx,dword ptr [eax]
 0054C60F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C612    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C617    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C61D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C623    mov         edx,54D680;'-------------------------'
 0054C628    mov         ecx,dword ptr [eax]
 0054C62A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C62D    lea         eax,[ebp-104]
 0054C633    push        eax
 0054C634    mov         eax,[0056E344];^gvar_0059BF5C
 0054C639    movzx       eax,word ptr [eax+78]
 0054C63D    mov         dword ptr [ebp-18],eax
 0054C640    mov         byte ptr [ebp-14],0
 0054C644    lea         edx,[ebp-18]
 0054C647    xor         ecx,ecx
 0054C649    mov         eax,54D6A4;'Relocations                %d'
 0054C64E    call        0040D630
 0054C653    mov         edx,dword ptr [ebp-104]
 0054C659    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C65E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C664    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C66A    mov         ecx,dword ptr [eax]
 0054C66C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C66F    lea         eax,[ebp-108]
 0054C675    push        eax
 0054C676    mov         eax,[0056E344];^gvar_0059BF5C
 0054C67B    movzx       eax,word ptr [eax+7A]
 0054C67F    mov         dword ptr [ebp-18],eax
 0054C682    mov         byte ptr [ebp-14],0
 0054C686    lea         edx,[ebp-18]
 0054C689    xor         ecx,ecx
 0054C68B    mov         eax,54D6CC;'Tares                      %d'
 0054C690    call        0040D630
 0054C695    mov         edx,dword ptr [ebp-108]
 0054C69B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C6A0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C6A6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C6AC    mov         ecx,dword ptr [eax]
 0054C6AE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C6B1    lea         eax,[ebp-10C]
 0054C6B7    push        eax
 0054C6B8    mov         eax,[0056E344];^gvar_0059BF5C
 0054C6BD    movzx       eax,word ptr [eax+7C]
 0054C6C1    mov         dword ptr [ebp-18],eax
 0054C6C4    mov         byte ptr [ebp-14],0
 0054C6C8    lea         edx,[ebp-18]
 0054C6CB    xor         ecx,ecx
 0054C6CD    mov         eax,54D6F4;'Ftares                     %d'
 0054C6D2    call        0040D630
 0054C6D7    mov         edx,dword ptr [ebp-10C]
 0054C6DD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C6E2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C6E8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C6EE    mov         ecx,dword ptr [eax]
 0054C6F0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C6F3    lea         eax,[ebp-110]
 0054C6F9    push        eax
 0054C6FA    mov         eax,[0056E344];^gvar_0059BF5C
 0054C6FF    movzx       eax,word ptr [eax+7E]
 0054C703    mov         dword ptr [ebp-18],eax
 0054C706    mov         byte ptr [ebp-14],0
 0054C70A    lea         edx,[ebp-18]
 0054C70D    xor         ecx,ecx
 0054C70F    mov         eax,54D71C;'Possible Remaining Relos   %d'
 0054C714    call        0040D630
 0054C719    mov         edx,dword ptr [ebp-110]
 0054C71F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C724    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C72A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C730    mov         ecx,dword ptr [eax]
 0054C732    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C735    lea         eax,[ebp-114]
 0054C73B    push        eax
 0054C73C    mov         eax,[0056E344];^gvar_0059BF5C
 0054C741    movzx       eax,word ptr [eax+80]
 0054C748    mov         dword ptr [ebp-18],eax
 0054C74B    mov         byte ptr [ebp-14],0
 0054C74F    lea         edx,[ebp-18]
 0054C752    xor         ecx,ecx
 0054C754    mov         eax,54D744;'Consumed Spares            %d'
 0054C759    call        0040D630
 0054C75E    mov         edx,dword ptr [ebp-114]
 0054C764    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C769    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C76F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C775    mov         ecx,dword ptr [eax]
 0054C777    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C77A    lea         eax,[ebp-118]
 0054C780    push        eax
 0054C781    mov         eax,[0056E344];^gvar_0059BF5C
 0054C786    mov         eax,dword ptr [eax+84]
 0054C78C    mov         dword ptr [ebp-18],eax
 0054C78F    mov         byte ptr [ebp-14],0
 0054C793    lea         edx,[ebp-18]
 0054C796    xor         ecx,ecx
 0054C798    mov         eax,54D76C;'Last LBA of Spare Pool     %x'
 0054C79D    call        0040D630
 0054C7A2    mov         edx,dword ptr [ebp-118]
 0054C7A8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C7AD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C7B3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C7B9    mov         ecx,dword ptr [eax]
 0054C7BB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C7BE    lea         eax,[ebp-0C]
 0054C7C1    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054C7C7    add         edx,124
 0054C7CD    mov         ecx,0C
 0054C7D2    call        @LStrFromArray
 0054C7D7    lea         edx,[ebp-120]
 0054C7DD    mov         eax,dword ptr [ebp-0C]
 0054C7E0    call        0040BFEC
 0054C7E5    mov         ecx,dword ptr [ebp-120]
 0054C7EB    lea         eax,[ebp-11C]
 0054C7F1    mov         edx,54D794;#10+Original Drive Built Date  '
 0054C7F6    call        @LStrCat3
 0054C7FB    mov         edx,dword ptr [ebp-11C]
 0054C801    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C806    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C80C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C812    mov         ecx,dword ptr [eax]
 0054C814    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C817    lea         eax,[ebp-0C]
 0054C81A    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054C820    add         edx,130
 0054C826    mov         ecx,0C
 0054C82B    call        @LStrFromArray
 0054C830    lea         edx,[ebp-128]
 0054C836    mov         eax,dword ptr [ebp-0C]
 0054C839    call        0040BFEC
 0054C83E    mov         ecx,dword ptr [ebp-128]
 0054C844    lea         eax,[ebp-124]
 0054C84A    mov         edx,54D7BC;'Drive Reconfiguration Date '
 0054C84F    call        @LStrCat3
 0054C854    mov         edx,dword ptr [ebp-124]
 0054C85A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C85F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C865    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C86B    mov         ecx,dword ptr [eax]
 0054C86D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C870    lea         eax,[ebp-0C]
 0054C873    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054C879    add         edx,0D2
 0054C87F    mov         ecx,28
 0054C884    call        @LStrFromArray
 0054C889    lea         edx,[ebp-130]
 0054C88F    mov         eax,dword ptr [ebp-0C]
 0054C892    call        0040BFEC
 0054C897    mov         ecx,dword ptr [ebp-130]
 0054C89D    lea         eax,[ebp-12C]
 0054C8A3    mov         edx,54D7E0;'MDL string                 '
 0054C8A8    call        @LStrCat3
 0054C8AD    mov         edx,dword ptr [ebp-12C]
 0054C8B3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C8B8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C8BE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C8C4    mov         ecx,dword ptr [eax]
 0054C8C6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C8C9    lea         eax,[ebp-0C]
 0054C8CC    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054C8D2    add         edx,13E
 0054C8D8    mov         ecx,14
 0054C8DD    call        @LStrFromArray
 0054C8E2    lea         edx,[ebp-138]
 0054C8E8    mov         eax,dword ptr [ebp-0C]
 0054C8EB    call        0040BFEC
 0054C8F0    mov         ecx,dword ptr [ebp-138]
 0054C8F6    lea         eax,[ebp-134]
 0054C8FC    mov         edx,54D804;'S/N string                 '
 0054C901    call        @LStrCat3
 0054C906    mov         edx,dword ptr [ebp-134]
 0054C90C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C911    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C917    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C91D    mov         ecx,dword ptr [eax]
 0054C91F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C922    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C927    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C92D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C933    xor         edx,edx
 0054C935    mov         ecx,dword ptr [eax]
 0054C937    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C93A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C93F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054C945    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054C94B    mov         edx,54D828;'DCM:'
 0054C950    mov         ecx,dword ptr [eax]
 0054C952    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054C955    lea         eax,[ebp-0C]
 0054C958    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0054C95E    add         edx,100
 0054C964    mov         ecx,24
 0054C969    call        @LStrFromArray
 0054C96E    xor         eax,eax
 0054C970    mov         dword ptr [ebp-8],eax
 0054C973    cmp         dword ptr [ebp-8],23
>0054C977    jge         0054CA19
 0054C97D    mov         eax,[0056E344];^gvar_0059BF5C
 0054C982    mov         edx,dword ptr [ebp-8]
 0054C985    cmp         byte ptr [eax+edx+100],0
>0054C98D    je          0054CA19
 0054C993    mov         eax,[0056E344];^gvar_0059BF5C
 0054C998    mov         edx,dword ptr [ebp-8]
 0054C99B    mov         al,byte ptr [eax+edx+100]
 0054C9A2    lea         edx,[ebp-140]
 0054C9A8    call        0054AE4C
 0054C9AD    push        dword ptr [ebp-140]
 0054C9B3    push        54D838;'     '
 0054C9B8    mov         eax,[0056E344];^gvar_0059BF5C
 0054C9BD    mov         edx,dword ptr [ebp-8]
 0054C9C0    mov         al,byte ptr [eax+edx+101]
 0054C9C7    call        0054B16C
 0054C9CC    mov         edx,eax
 0054C9CE    lea         eax,[ebp-144]
 0054C9D4    call        @LStrFromChar
 0054C9D9    push        dword ptr [ebp-144]
 0054C9DF    lea         eax,[ebp-13C]
 0054C9E5    mov         edx,3
 0054C9EA    call        @LStrCatN
 0054C9EF    mov         edx,dword ptr [ebp-13C]
 0054C9F5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054C9FA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054CA00    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054CA06    mov         ecx,dword ptr [eax]
 0054CA08    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054CA0B    add         dword ptr [ebp-8],2
 0054CA0F    cmp         dword ptr [ebp-8],23
>0054CA13    jl          0054C97D
 0054CA19    xor         eax,eax
 0054CA1B    pop         edx
 0054CA1C    pop         ecx
 0054CA1D    pop         ecx
 0054CA1E    mov         dword ptr fs:[eax],edx
 0054CA21    push        54CA58
 0054CA26    lea         eax,[ebp-144]
 0054CA2C    mov         edx,40
 0054CA31    call        @LStrArrayClr
 0054CA36    lea         eax,[ebp-34]
 0054CA39    mov         edx,7
 0054CA3E    call        @LStrArrayClr
 0054CA43    lea         eax,[ebp-10]
 0054CA46    mov         edx,2
 0054CA4B    call        @LStrArrayClr
 0054CA50    ret
>0054CA51    jmp         @HandleFinally
>0054CA56    jmp         0054CA26
 0054CA58    pop         ebx
 0054CA59    mov         esp,ebp
 0054CA5B    pop         ebp
 0054CA5C    ret
*}
end;

//0054D840
procedure TfmHDD.miDriveParametrsClick(Sender:TObject);
begin
{*
 0054D840    push        ebp
 0054D841    mov         ebp,esp
 0054D843    add         esp,0FFFFFFE8
 0054D846    xor         ecx,ecx
 0054D848    mov         dword ptr [ebp-18],ecx
 0054D84B    mov         dword ptr [ebp-14],ecx
 0054D84E    mov         dword ptr [ebp-10],ecx
 0054D851    mov         dword ptr [ebp-0C],edx
 0054D854    mov         dword ptr [ebp-4],eax
 0054D857    xor         eax,eax
 0054D859    push        ebp
 0054D85A    push        54D95B
 0054D85F    push        dword ptr fs:[eax]
 0054D862    mov         dword ptr fs:[eax],esp
 0054D865    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0054D86B    mov         edx,dword ptr [edx]
 0054D86D    lea         eax,[ebp-10]
 0054D870    mov         ecx,54D970;'CPs'
 0054D875    call        @LStrCat3
 0054D87A    mov         eax,dword ptr [ebp-10]
 0054D87D    call        004CC648
 0054D882    test        al,al
>0054D884    jne         0054D8B8
 0054D886    push        54D97C;'Cannot create '
 0054D88B    mov         eax,[0056E2D0];^gvar_0056DF38
 0054D890    push        dword ptr [eax]
 0054D892    push        54D970;'CPs'
 0054D897    lea         eax,[ebp-14]
 0054D89A    mov         edx,3
 0054D89F    call        @LStrCatN
 0054D8A4    mov         ecx,dword ptr [ebp-14]
 0054D8A7    mov         dl,1
 0054D8A9    mov         eax,[0040B004];Exception
 0054D8AE    call        Exception.Create;Exception.Create
 0054D8B3    call        @RaiseExcept
 0054D8B8    mov         eax,[0056E5A4];^gvar_0056DF04
 0054D8BD    mov         byte ptr [eax],0
 0054D8C0    mov         dl,1
 0054D8C2    mov         eax,[0041DE14];TMemoryStream
 0054D8C7    call        TObject.Create;TMemoryStream.Create
 0054D8CC    mov         dword ptr [ebp-8],eax
 0054D8CF    xor         eax,eax
 0054D8D1    push        ebp
 0054D8D2    push        54D939
 0054D8D7    push        dword ptr fs:[eax]
 0054D8DA    mov         dword ptr fs:[eax],esp
 0054D8DD    mov         ecx,dword ptr [ebp-8]
 0054D8E0    xor         edx,edx
 0054D8E2    mov         ax,1
 0054D8E6    call        00509E08
 0054D8EB    test        al,al
>0054D8ED    je          0054D919
 0054D8EF    mov         eax,dword ptr [ebp-8]
 0054D8F2    call        0054B390
 0054D8F7    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0054D8FD    mov         edx,dword ptr [edx]
 0054D8FF    lea         eax,[ebp-18]
 0054D902    mov         ecx,54D994;'cp01.bin'
 0054D907    call        @LStrCat3
 0054D90C    mov         edx,dword ptr [ebp-18]
 0054D90F    mov         eax,dword ptr [ebp-8]
 0054D912    call        00423E84
>0054D917    jmp         0054D923
 0054D919    mov         eax,54D9A8;'CP 01 Read - '
 0054D91E    call        00544F6C
 0054D923    xor         eax,eax
 0054D925    pop         edx
 0054D926    pop         ecx
 0054D927    pop         ecx
 0054D928    mov         dword ptr fs:[eax],edx
 0054D92B    push        54D940
 0054D930    mov         eax,dword ptr [ebp-8]
 0054D933    call        TObject.Free
 0054D938    ret
>0054D939    jmp         @HandleFinally
>0054D93E    jmp         0054D930
 0054D940    xor         eax,eax
 0054D942    pop         edx
 0054D943    pop         ecx
 0054D944    pop         ecx
 0054D945    mov         dword ptr fs:[eax],edx
 0054D948    push        54D962
 0054D94D    lea         eax,[ebp-18]
 0054D950    mov         edx,3
 0054D955    call        @LStrArrayClr
 0054D95A    ret
>0054D95B    jmp         @HandleFinally
>0054D960    jmp         0054D94D
 0054D962    mov         esp,ebp
 0054D964    pop         ebp
 0054D965    ret
*}
end;

//0054D9B8
procedure TfmHDD.miRamOperationsClick(Sender:TObject);
begin
{*
 0054D9B8    push        ebp
 0054D9B9    mov         ebp,esp
 0054D9BB    add         esp,0FFFFFFF8
 0054D9BE    mov         dword ptr [ebp-8],edx
 0054D9C1    mov         dword ptr [ebp-4],eax
 0054D9C4    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054D9CA    mov         eax,[005115F4];TfmRam
 0054D9CF    call        00511820
 0054D9D4    pop         ecx
 0054D9D5    pop         ecx
 0054D9D6    pop         ebp
 0054D9D7    ret
*}
end;

//0054D9D8
procedure TfmHDD.miUbaClick(Sender:TObject);
begin
{*
 0054D9D8    push        ebp
 0054D9D9    mov         ebp,esp
 0054D9DB    add         esp,0FFFFFFF8
 0054D9DE    mov         dword ptr [ebp-8],edx
 0054D9E1    mov         dword ptr [ebp-4],eax
 0054D9E4    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054D9EA    mov         eax,[004FEDD0];TfmUba
 0054D9EF    call        004FF084
 0054D9F4    pop         ecx
 0054D9F5    pop         ecx
 0054D9F6    pop         ebp
 0054D9F7    ret
*}
end;

//0054D9F8
procedure TfmHDD.miViewATARegClick(Sender:TObject);
begin
{*
 0054D9F8    push        ebp
 0054D9F9    mov         ebp,esp
 0054D9FB    add         esp,0FFFFFFF8
 0054D9FE    mov         dword ptr [ebp-8],edx
 0054DA01    mov         dword ptr [ebp-4],eax
 0054DA04    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054DA0A    mov         eax,[00512038];TfmAtaReg
 0054DA0F    call        0051228C
 0054DA14    pop         ecx
 0054DA15    pop         ecx
 0054DA16    pop         ebp
 0054DA17    ret
*}
end;

//0054DA18
{*function sub_0054DA18(?:TMemoryStream):?;
begin
 0054DA18    push        ebp
 0054DA19    mov         ebp,esp
 0054DA1B    add         esp,0FFFFFFEC
 0054DA1E    push        ebx
 0054DA1F    mov         dword ptr [ebp-4],eax
 0054DA22    mov         eax,[0056E040];^gvar_005720C0
 0054DA27    cmp         byte ptr [eax],0
>0054DA2A    jne         0054DA50
 0054DA2C    mov         eax,[0056E304];^gvar_0056DF54
 0054DA31    cmp         word ptr [eax],65
>0054DA35    je          0054DA50
 0054DA37    mov         eax,[0056E304];^gvar_0056DF54
 0054DA3C    cmp         word ptr [eax],73
>0054DA40    je          0054DA50
 0054DA42    mov         eax,[0056E01C];^gvar_005720C1
 0054DA47    cmp         byte ptr [eax],0
>0054DA4A    je          0054DAF8
 0054DA50    xor         ecx,ecx
 0054DA52    mov         edx,2
 0054DA57    mov         eax,dword ptr [ebp-4]
 0054DA5A    mov         ebx,dword ptr [eax]
 0054DA5C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DA5F    mov         eax,dword ptr [ebp-4]
 0054DA62    call        004CE528
 0054DA67    mov         byte ptr [ebp-0D],al
 0054DA6A    xor         ecx,ecx
 0054DA6C    mov         edx,32
 0054DA71    mov         eax,dword ptr [ebp-4]
 0054DA74    mov         ebx,dword ptr [eax]
 0054DA76    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DA79    xor         eax,eax
 0054DA7B    mov         al,byte ptr [ebp-0D]
 0054DA7E    dec         eax
 0054DA7F    test        eax,eax
>0054DA81    jl          0054DBA8
 0054DA87    inc         eax
 0054DA88    mov         dword ptr [ebp-14],eax
 0054DA8B    mov         dword ptr [ebp-0C],0
 0054DA92    mov         eax,dword ptr [ebp-4]
 0054DA95    call        004CE56C
 0054DA9A    mov         edx,dword ptr [ebp-0C]
 0054DA9D    lea         edx,[edx+edx*2]
 0054DAA0    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DAA6    mov         dword ptr [ecx+edx*4],eax
 0054DAA9    mov         eax,dword ptr [ebp-4]
 0054DAAC    call        004CE56C
 0054DAB1    mov         edx,dword ptr [ebp-0C]
 0054DAB4    lea         edx,[edx+edx*2]
 0054DAB7    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DABD    mov         dword ptr [ecx+edx*4+4],eax
 0054DAC1    mov         cx,1
 0054DAC5    mov         edx,8
 0054DACA    mov         eax,dword ptr [ebp-4]
 0054DACD    mov         ebx,dword ptr [eax]
 0054DACF    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DAD2    mov         eax,dword ptr [ebp-4]
 0054DAD5    call        004CE548
 0054DADA    mov         edx,dword ptr [ebp-0C]
 0054DADD    lea         edx,[edx+edx*2]
 0054DAE0    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DAE6    mov         word ptr [ecx+edx*4+8],ax
 0054DAEB    inc         dword ptr [ebp-0C]
 0054DAEE    dec         dword ptr [ebp-14]
>0054DAF1    jne         0054DA92
>0054DAF3    jmp         0054DBA8
 0054DAF8    xor         ecx,ecx
 0054DAFA    mov         edx,2
 0054DAFF    mov         eax,dword ptr [ebp-4]
 0054DB02    mov         ebx,dword ptr [eax]
 0054DB04    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DB07    mov         eax,dword ptr [ebp-4]
 0054DB0A    call        004CE528
 0054DB0F    mov         byte ptr [ebp-0D],al
 0054DB12    xor         ecx,ecx
 0054DB14    mov         edx,14
 0054DB19    mov         eax,dword ptr [ebp-4]
 0054DB1C    mov         ebx,dword ptr [eax]
 0054DB1E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DB21    xor         eax,eax
 0054DB23    mov         al,byte ptr [ebp-0D]
 0054DB26    dec         eax
 0054DB27    test        eax,eax
>0054DB29    jl          0054DBA8
 0054DB2B    inc         eax
 0054DB2C    mov         dword ptr [ebp-14],eax
 0054DB2F    mov         dword ptr [ebp-0C],0
 0054DB36    mov         eax,dword ptr [ebp-4]
 0054DB39    call        004CE56C
 0054DB3E    mov         edx,dword ptr [ebp-0C]
 0054DB41    lea         edx,[edx+edx*2]
 0054DB44    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DB4A    mov         dword ptr [ecx+edx*4],eax
 0054DB4D    mov         eax,dword ptr [ebp-4]
 0054DB50    call        004CE56C
 0054DB55    mov         edx,dword ptr [ebp-0C]
 0054DB58    lea         edx,[edx+edx*2]
 0054DB5B    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DB61    mov         dword ptr [ecx+edx*4+4],eax
 0054DB65    mov         cx,1
 0054DB69    mov         edx,0C
 0054DB6E    mov         eax,dword ptr [ebp-4]
 0054DB71    mov         ebx,dword ptr [eax]
 0054DB73    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DB76    mov         eax,dword ptr [ebp-4]
 0054DB79    call        004CE548
 0054DB7E    mov         edx,dword ptr [ebp-0C]
 0054DB81    lea         edx,[edx+edx*2]
 0054DB84    mov         ecx,dword ptr ds:[56E214];^gvar_005720C4
 0054DB8A    mov         word ptr [ecx+edx*4+8],ax
 0054DB8F    mov         cx,1
 0054DB93    mov         edx,0A
 0054DB98    mov         eax,dword ptr [ebp-4]
 0054DB9B    mov         ebx,dword ptr [eax]
 0054DB9D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054DBA0    inc         dword ptr [ebp-0C]
 0054DBA3    dec         dword ptr [ebp-14]
>0054DBA6    jne         0054DB36
 0054DBA8    xor         eax,eax
 0054DBAA    mov         al,byte ptr [ebp-0D]
 0054DBAD    mov         dword ptr [ebp-8],eax
 0054DBB0    mov         eax,dword ptr [ebp-8]
 0054DBB3    pop         ebx
 0054DBB4    mov         esp,ebp
 0054DBB6    pop         ebp
 0054DBB7    ret
end;*}

//0054DBB8
{*procedure sub_0054DBB8(?:?);
begin
 0054DBB8    push        ebp
 0054DBB9    mov         ebp,esp
 0054DBBB    mov         ecx,8
 0054DBC0    push        0
 0054DBC2    push        0
 0054DBC4    dec         ecx
>0054DBC5    jne         0054DBC0
 0054DBC7    mov         dword ptr [ebp-4],eax
 0054DBCA    xor         eax,eax
 0054DBCC    push        ebp
 0054DBCD    push        54DDF1
 0054DBD2    push        dword ptr fs:[eax]
 0054DBD5    mov         dword ptr fs:[eax],esp
 0054DBD8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DBDD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054DBE3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054DBE9    mov         edx,54DE04;'#  Start Tr  End Tr   SPT'
 0054DBEE    mov         ecx,dword ptr [eax]
 0054DBF0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054DBF3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DBF8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054DBFE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054DC04    mov         edx,54DE28;'----------------------------'
 0054DC09    mov         ecx,dword ptr [eax]
 0054DC0B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054DC0E    mov         eax,dword ptr [ebp-4]
 0054DC11    dec         eax
 0054DC12    test        eax,eax
>0054DC14    jl          0054DDC9
 0054DC1A    inc         eax
 0054DC1B    mov         dword ptr [ebp-1C],eax
 0054DC1E    mov         dword ptr [ebp-8],0
 0054DC25    mov         eax,dword ptr [ebp-8]
 0054DC28    lea         eax,[eax+eax*2]
 0054DC2B    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0054DC31    mov         eax,dword ptr [edx+eax*4]
 0054DC34    mov         dword ptr [ebp-0C],eax
 0054DC37    mov         eax,dword ptr [ebp-8]
 0054DC3A    lea         eax,[eax+eax*2]
 0054DC3D    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0054DC43    mov         eax,dword ptr [edx+eax*4+4]
 0054DC47    mov         dword ptr [ebp-10],eax
 0054DC4A    mov         eax,dword ptr [ebp-0C]
 0054DC4D    and         eax,80000000
 0054DC52    cmp         eax,80000000
>0054DC57    jne         0054DCA2
 0054DC59    mov         eax,dword ptr [ebp-0C]
 0054DC5C    not         eax
 0054DC5E    inc         eax
 0054DC5F    mov         dword ptr [ebp-0C],eax
 0054DC62    lea         eax,[ebp-14]
 0054DC65    push        eax
 0054DC66    mov         eax,dword ptr [ebp-0C]
 0054DC69    xor         edx,edx
 0054DC6B    push        edx
 0054DC6C    push        eax
 0054DC6D    lea         edx,[ebp-2C]
 0054DC70    xor         eax,eax
 0054DC72    call        IntToHex
 0054DC77    mov         ecx,dword ptr [ebp-2C]
 0054DC7A    lea         eax,[ebp-28]
 0054DC7D    mov         edx,54DE50;'-'
 0054DC82    call        @LStrCat3
 0054DC87    mov         eax,dword ptr [ebp-28]
 0054DC8A    mov         dword ptr [ebp-24],eax
 0054DC8D    mov         byte ptr [ebp-20],0B
 0054DC91    lea         edx,[ebp-24]
 0054DC94    xor         ecx,ecx
 0054DC96    mov         eax,54DE5C;'%8s'
 0054DC9B    call        0040D630
>0054DCA0    jmp         0054DCBF
 0054DCA2    lea         eax,[ebp-14]
 0054DCA5    push        eax
 0054DCA6    mov         eax,dword ptr [ebp-0C]
 0054DCA9    mov         dword ptr [ebp-24],eax
 0054DCAC    mov         byte ptr [ebp-20],0
 0054DCB0    lea         edx,[ebp-24]
 0054DCB3    xor         ecx,ecx
 0054DCB5    mov         eax,54DE68;'%8x'
 0054DCBA    call        0040D630
 0054DCBF    mov         eax,dword ptr [ebp-10]
 0054DCC2    and         eax,80000000
 0054DCC7    cmp         eax,80000000
>0054DCCC    jne         0054DD17
 0054DCCE    mov         eax,dword ptr [ebp-10]
 0054DCD1    not         eax
 0054DCD3    inc         eax
 0054DCD4    mov         dword ptr [ebp-10],eax
 0054DCD7    lea         eax,[ebp-18]
 0054DCDA    push        eax
 0054DCDB    mov         eax,dword ptr [ebp-10]
 0054DCDE    xor         edx,edx
 0054DCE0    push        edx
 0054DCE1    push        eax
 0054DCE2    lea         edx,[ebp-34]
 0054DCE5    xor         eax,eax
 0054DCE7    call        IntToHex
 0054DCEC    mov         ecx,dword ptr [ebp-34]
 0054DCEF    lea         eax,[ebp-30]
 0054DCF2    mov         edx,54DE50;'-'
 0054DCF7    call        @LStrCat3
 0054DCFC    mov         eax,dword ptr [ebp-30]
 0054DCFF    mov         dword ptr [ebp-24],eax
 0054DD02    mov         byte ptr [ebp-20],0B
 0054DD06    lea         edx,[ebp-24]
 0054DD09    xor         ecx,ecx
 0054DD0B    mov         eax,54DE5C;'%8s'
 0054DD10    call        0040D630
>0054DD15    jmp         0054DD34
 0054DD17    lea         eax,[ebp-18]
 0054DD1A    push        eax
 0054DD1B    mov         eax,dword ptr [ebp-10]
 0054DD1E    mov         dword ptr [ebp-24],eax
 0054DD21    mov         byte ptr [ebp-20],0
 0054DD25    lea         edx,[ebp-24]
 0054DD28    xor         ecx,ecx
 0054DD2A    mov         eax,54DE68;'%8x'
 0054DD2F    call        0040D630
 0054DD34    lea         eax,[ebp-3C]
 0054DD37    push        eax
 0054DD38    mov         eax,dword ptr [ebp-8]
 0054DD3B    mov         dword ptr [ebp-24],eax
 0054DD3E    mov         byte ptr [ebp-20],0
 0054DD42    lea         edx,[ebp-24]
 0054DD45    xor         ecx,ecx
 0054DD47    mov         eax,54DE74;'%2d'
 0054DD4C    call        0040D630
 0054DD51    push        dword ptr [ebp-3C]
 0054DD54    push        54DE80;' '
 0054DD59    push        dword ptr [ebp-14]
 0054DD5C    push        54DE80;' '
 0054DD61    push        dword ptr [ebp-18]
 0054DD64    push        54DE80;' '
 0054DD69    lea         eax,[ebp-40]
 0054DD6C    push        eax
 0054DD6D    mov         eax,dword ptr [ebp-8]
 0054DD70    lea         eax,[eax+eax*2]
 0054DD73    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0054DD79    movzx       eax,word ptr [edx+eax*4+8]
 0054DD7E    mov         dword ptr [ebp-24],eax
 0054DD81    mov         byte ptr [ebp-20],0
 0054DD85    lea         edx,[ebp-24]
 0054DD88    xor         ecx,ecx
 0054DD8A    mov         eax,54DE8C;'%4x'
 0054DD8F    call        0040D630
 0054DD94    push        dword ptr [ebp-40]
 0054DD97    lea         eax,[ebp-38]
 0054DD9A    mov         edx,7
 0054DD9F    call        @LStrCatN
 0054DDA4    mov         edx,dword ptr [ebp-38]
 0054DDA7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DDAC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054DDB2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054DDB8    mov         ecx,dword ptr [eax]
 0054DDBA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054DDBD    inc         dword ptr [ebp-8]
 0054DDC0    dec         dword ptr [ebp-1C]
>0054DDC3    jne         0054DC25
 0054DDC9    xor         eax,eax
 0054DDCB    pop         edx
 0054DDCC    pop         ecx
 0054DDCD    pop         ecx
 0054DDCE    mov         dword ptr fs:[eax],edx
 0054DDD1    push        54DDF8
 0054DDD6    lea         eax,[ebp-40]
 0054DDD9    mov         edx,7
 0054DDDE    call        @LStrArrayClr
 0054DDE3    lea         eax,[ebp-18]
 0054DDE6    mov         edx,2
 0054DDEB    call        @LStrArrayClr
 0054DDF0    ret
>0054DDF1    jmp         @HandleFinally
>0054DDF6    jmp         0054DDD6
 0054DDF8    mov         esp,ebp
 0054DDFA    pop         ebp
 0054DDFB    ret
end;*}

//0054DE90
procedure TfmHDD.miZoneTable1Click(Sender:TObject);
begin
{*
 0054DE90    push        ebp
 0054DE91    mov         ebp,esp
 0054DE93    mov         ecx,6
 0054DE98    push        0
 0054DE9A    push        0
 0054DE9C    dec         ecx
>0054DE9D    jne         0054DE98
 0054DE9F    mov         dword ptr [ebp-14],edx
 0054DEA2    mov         dword ptr [ebp-4],eax
 0054DEA5    xor         eax,eax
 0054DEA7    push        ebp
 0054DEA8    push        54E141
 0054DEAD    push        dword ptr fs:[eax]
 0054DEB0    mov         dword ptr fs:[eax],esp
 0054DEB3    mov         eax,[0056E5A4];^gvar_0056DF04
 0054DEB8    mov         byte ptr [eax],0
 0054DEBB    mov         dl,1
 0054DEBD    mov         eax,[0041DE14];TMemoryStream
 0054DEC2    call        TObject.Create;TMemoryStream.Create
 0054DEC7    mov         dword ptr [ebp-8],eax
 0054DECA    xor         eax,eax
 0054DECC    push        ebp
 0054DECD    push        54E10A
 0054DED2    push        dword ptr fs:[eax]
 0054DED5    mov         dword ptr fs:[eax],esp
 0054DED8    push        10
 0054DEDA    call        user32.GetKeyState
 0054DEDF    test        ax,ax
>0054DEE2    jge         0054DFC1
 0054DEE8    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0054DEEE    mov         edx,dword ptr [edx]
 0054DEF0    lea         eax,[ebp-18]
 0054DEF3    mov         ecx,54E154;'CPs\'
 0054DEF8    call        @LStrCat3
 0054DEFD    mov         edx,dword ptr [ebp-18]
 0054DF00    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF05    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054DF0B    call        TOpenDialog.SetInitialDir
 0054DF10    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF15    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054DF1B    add         eax,78;TOpenDialog.FileName:TFileName
 0054DF1E    call        @LStrClr
 0054DF23    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF28    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054DF2E    mov         edx,dword ptr [eax]
 0054DF30    call        dword ptr [edx+3C];TOpenDialog.Execute
 0054DF33    test        al,al
>0054DF35    je          0054E0F4
 0054DF3B    lea         edx,[ebp-1C]
 0054DF3E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF43    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054DF49    call        TOpenDialog.GetFileName
 0054DF4E    mov         eax,dword ptr [ebp-1C]
 0054DF51    call        0040C94C
 0054DF56    test        al,al
>0054DF58    je          0054E0F4
 0054DF5E    lea         edx,[ebp-20]
 0054DF61    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF66    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054DF6C    call        TOpenDialog.GetFileName
 0054DF71    mov         edx,dword ptr [ebp-20]
 0054DF74    mov         eax,dword ptr [ebp-8]
 0054DF77    call        00423F8C
 0054DF7C    mov         eax,dword ptr [ebp-8]
 0054DF7F    call        0054DA18
 0054DF84    mov         eax,dword ptr [ebp-8]
 0054DF87    call        0054DA18
 0054DF8C    mov         dword ptr [ebp-0C],eax
 0054DF8F    cmp         dword ptr [ebp-0C],0
>0054DF93    jle         0054E0F4
 0054DF99    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054DF9E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054DFA4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054DFAA    mov         edx,54E164;#10+Zones Table for Head '
 0054DFAF    mov         ecx,dword ptr [eax]
 0054DFB1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054DFB4    mov         eax,dword ptr [ebp-0C]
 0054DFB7    call        0054DBB8
>0054DFBC    jmp         0054E0F4
 0054DFC1    mov         eax,[0056E040];^gvar_005720C0
 0054DFC6    cmp         byte ptr [eax],0
>0054DFC9    jne         0054DFEF
 0054DFCB    mov         eax,[0056E304];^gvar_0056DF54
 0054DFD0    cmp         word ptr [eax],65
>0054DFD4    je          0054DFEF
 0054DFD6    mov         eax,[0056E304];^gvar_0056DF54
 0054DFDB    cmp         word ptr [eax],73
>0054DFDF    je          0054DFEF
 0054DFE1    mov         eax,[0056E01C];^gvar_005720C1
 0054DFE6    cmp         byte ptr [eax],0
>0054DFE9    je          0054E0A2
 0054DFEF    xor         eax,eax
 0054DFF1    mov         dword ptr [ebp-10],eax
>0054DFF4    jmp         0054E08C
 0054DFF9    mov         ecx,dword ptr [ebp-8]
 0054DFFC    mov         dx,word ptr [ebp-10]
 0054E000    mov         ax,0D
 0054E004    call        004CFEC8
 0054E009    test        al,al
>0054E00B    je          0054E05C
 0054E00D    mov         eax,dword ptr [ebp-8]
 0054E010    call        0054DA18
 0054E015    mov         dword ptr [ebp-0C],eax
 0054E018    cmp         dword ptr [ebp-0C],0
>0054E01C    jle         0054E089
 0054E01E    lea         edx,[ebp-28]
 0054E021    mov         eax,dword ptr [ebp-10]
 0054E024    call        IntToStr
 0054E029    mov         ecx,dword ptr [ebp-28]
 0054E02C    lea         eax,[ebp-24]
 0054E02F    mov         edx,54E164;#10+Zones Table for Head '
 0054E034    call        @LStrCat3
 0054E039    mov         edx,dword ptr [ebp-24]
 0054E03C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E041    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E047    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E04D    mov         ecx,dword ptr [eax]
 0054E04F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E052    mov         eax,dword ptr [ebp-0C]
 0054E055    call        0054DBB8
>0054E05A    jmp         0054E089
 0054E05C    push        54E184;'Read Zones Map for Head '
 0054E061    lea         edx,[ebp-30]
 0054E064    mov         eax,dword ptr [ebp-10]
 0054E067    call        IntToStr
 0054E06C    push        dword ptr [ebp-30]
 0054E06F    push        54E1A8;' - '
 0054E074    lea         eax,[ebp-2C]
 0054E077    mov         edx,3
 0054E07C    call        @LStrCatN
 0054E081    mov         eax,dword ptr [ebp-2C]
 0054E084    call        00544F6C
 0054E089    inc         dword ptr [ebp-10]
 0054E08C    cmp         dword ptr [ebp-10],8
>0054E090    jge         0054E0F4
 0054E092    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E097    cmp         byte ptr [eax],0
>0054E09A    je          0054DFF9
>0054E0A0    jmp         0054E0F4
 0054E0A2    mov         ecx,dword ptr [ebp-8]
 0054E0A5    xor         edx,edx
 0054E0A7    mov         ax,5
 0054E0AB    call        004CFEC8
 0054E0B0    test        al,al
>0054E0B2    je          0054E0EA
 0054E0B4    mov         eax,dword ptr [ebp-8]
 0054E0B7    call        0054DA18
 0054E0BC    mov         dword ptr [ebp-0C],eax
 0054E0BF    cmp         dword ptr [ebp-0C],0
>0054E0C3    jle         0054E0F4
 0054E0C5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E0CA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E0D0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E0D6    mov         edx,54E1B4;#10+Zones Table'
 0054E0DB    mov         ecx,dword ptr [eax]
 0054E0DD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E0E0    mov         eax,dword ptr [ebp-0C]
 0054E0E3    call        0054DBB8
>0054E0E8    jmp         0054E0F4
 0054E0EA    mov         eax,54E1CC;'Read Zones Map - '
 0054E0EF    call        00544F6C
 0054E0F4    xor         eax,eax
 0054E0F6    pop         edx
 0054E0F7    pop         ecx
 0054E0F8    pop         ecx
 0054E0F9    mov         dword ptr fs:[eax],edx
 0054E0FC    push        54E111
 0054E101    mov         eax,dword ptr [ebp-8]
 0054E104    call        TObject.Free
 0054E109    ret
>0054E10A    jmp         @HandleFinally
>0054E10F    jmp         0054E101
 0054E111    xor         eax,eax
 0054E113    pop         edx
 0054E114    pop         ecx
 0054E115    pop         ecx
 0054E116    mov         dword ptr fs:[eax],edx
 0054E119    push        54E148
 0054E11E    lea         eax,[ebp-30]
 0054E121    mov         edx,4
 0054E126    call        @LStrArrayClr
 0054E12B    lea         eax,[ebp-20]
 0054E12E    mov         edx,2
 0054E133    call        @LStrArrayClr
 0054E138    lea         eax,[ebp-18]
 0054E13B    call        @LStrClr
 0054E140    ret
>0054E141    jmp         @HandleFinally
>0054E146    jmp         0054E11E
 0054E148    mov         esp,ebp
 0054E14A    pop         ebp
 0054E14B    ret
*}
end;

//0054E1E0
procedure sub_0054E1E0(?:TMemoryStream);
begin
{*
 0054E1E0    push        ebp
 0054E1E1    mov         ebp,esp
 0054E1E3    mov         ecx,6
 0054E1E8    push        0
 0054E1EA    push        0
 0054E1EC    dec         ecx
>0054E1ED    jne         0054E1E8
 0054E1EF    push        ebx
 0054E1F0    mov         dword ptr [ebp-4],eax
 0054E1F3    xor         eax,eax
 0054E1F5    push        ebp
 0054E1F6    push        54E55D
 0054E1FB    push        dword ptr fs:[eax]
 0054E1FE    mov         dword ptr fs:[eax],esp
 0054E201    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E206    mov         byte ptr [eax],0
 0054E209    mov         byte ptr [ebp-0A],0
 0054E20D    xor         ecx,ecx
 0054E20F    xor         edx,edx
 0054E211    mov         eax,dword ptr [ebp-4]
 0054E214    mov         ebx,dword ptr [eax]
 0054E216    call        dword ptr [ebx+14]
 0054E219    mov         eax,dword ptr [ebp-4]
 0054E21C    call        004CE56C
 0054E221    mov         dword ptr [ebp-18],eax
 0054E224    cmp         dword ptr [ebp-18],4C594F52
>0054E22B    jne         0054E23F
 0054E22D    mov         byte ptr [ebp-0A],1
 0054E231    mov         word ptr [ebp-0C],1B
 0054E237    mov         word ptr [ebp-0E],18
>0054E23D    jmp         0054E24B
 0054E23F    mov         word ptr [ebp-0C],1B
 0054E245    mov         word ptr [ebp-0E],0C
 0054E24B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E250    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E256    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E25C    xor         edx,edx
 0054E25E    mov         ecx,dword ptr [eax]
 0054E260    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E263    cmp         byte ptr [ebp-0A],0
>0054E267    je          0054E359
 0054E26D    mov         word ptr [ebp-6],0
 0054E273    movzx       eax,word ptr [ebp-0E]
 0054E277    mov         edx,eax
 0054E279    add         edx,edx
 0054E27B    xor         ecx,ecx
 0054E27D    mov         eax,dword ptr [ebp-4]
 0054E280    mov         ebx,dword ptr [eax]
 0054E282    call        dword ptr [ebx+14]
>0054E285    jmp         0054E31F
 0054E28A    mov         word ptr [ebp-8],0
 0054E290    lea         eax,[ebp-14]
 0054E293    call        @LStrClr
>0054E298    jmp         0054E2EA
 0054E29A    mov         eax,dword ptr [ebp-4]
 0054E29D    call        004CE548
 0054E2A2    mov         word ptr [ebp-10],ax
 0054E2A6    push        dword ptr [ebp-14]
 0054E2A9    mov         al,byte ptr [ebp-10]
 0054E2AC    and         al,0FF
 0054E2AE    call        0054B16C
 0054E2B3    mov         edx,eax
 0054E2B5    lea         eax,[ebp-1C]
 0054E2B8    call        @LStrFromChar
 0054E2BD    push        dword ptr [ebp-1C]
 0054E2C0    movzx       eax,word ptr [ebp-10]
 0054E2C4    shr         eax,8
 0054E2C7    call        0054B16C
 0054E2CC    mov         edx,eax
 0054E2CE    lea         eax,[ebp-20]
 0054E2D1    call        @LStrFromChar
 0054E2D6    push        dword ptr [ebp-20]
 0054E2D9    lea         eax,[ebp-14]
 0054E2DC    mov         edx,3
 0054E2E1    call        @LStrCatN
 0054E2E6    inc         word ptr [ebp-8]
 0054E2EA    mov         ax,word ptr [ebp-8]
 0054E2EE    cmp         ax,word ptr [ebp-0C]
>0054E2F2    jae         0054E2FE
 0054E2F4    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E2F9    cmp         byte ptr [eax],0
>0054E2FC    je          0054E29A
 0054E2FE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E303    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E309    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E30F    mov         edx,dword ptr [ebp-14]
 0054E312    mov         ecx,dword ptr [eax]
 0054E314    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E317    mov         ax,word ptr [ebp-0C]
 0054E31B    add         word ptr [ebp-6],ax
 0054E31F    movzx       eax,word ptr [ebp-6]
 0054E323    movzx       edx,word ptr [ebp-0C]
 0054E327    imul        edx,edx,0B
 0054E32A    cmp         eax,edx
>0054E32C    jae         0054E33C
 0054E32E    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E333    cmp         byte ptr [eax],0
>0054E336    je          0054E28A
 0054E33C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E341    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E347    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E34D    xor         edx,edx
 0054E34F    mov         ecx,dword ptr [eax]
 0054E351    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0054E354    jmp         0054E53A
 0054E359    xor         ecx,ecx
 0054E35B    mov         edx,0A
 0054E360    mov         eax,dword ptr [ebp-4]
 0054E363    mov         ebx,dword ptr [eax]
 0054E365    call        dword ptr [ebx+14]
 0054E368    mov         eax,dword ptr [ebp-4]
 0054E36B    call        004CE548
 0054E370    mov         word ptr [ebp-10],ax
 0054E374    cmp         word ptr [ebp-10],18
>0054E379    jne         0054E381
 0054E37B    mov         byte ptr [ebp-9],1
>0054E37F    jmp         0054E385
 0054E381    mov         byte ptr [ebp-9],0
 0054E385    lea         eax,[ebp-14]
 0054E388    call        @LStrClr
 0054E38D    mov         word ptr [ebp-0C],0C
 0054E393    cmp         byte ptr [ebp-9],0
>0054E397    je          0054E3AA
 0054E399    xor         ecx,ecx
 0054E39B    mov         edx,0AA
 0054E3A0    mov         eax,dword ptr [ebp-4]
 0054E3A3    mov         ebx,dword ptr [eax]
 0054E3A5    call        dword ptr [ebx+14]
>0054E3A8    jmp         0054E3B9
 0054E3AA    xor         ecx,ecx
 0054E3AC    mov         edx,194
 0054E3B1    mov         eax,dword ptr [ebp-4]
 0054E3B4    mov         ebx,dword ptr [eax]
 0054E3B6    call        dword ptr [ebx+14]
 0054E3B9    mov         word ptr [ebp-8],0
 0054E3BF    lea         eax,[ebp-14]
 0054E3C2    call        @LStrClr
>0054E3C7    jmp         0054E419
 0054E3C9    mov         eax,dword ptr [ebp-4]
 0054E3CC    call        004CE548
 0054E3D1    mov         word ptr [ebp-10],ax
 0054E3D5    push        dword ptr [ebp-14]
 0054E3D8    mov         al,byte ptr [ebp-10]
 0054E3DB    and         al,0FF
 0054E3DD    call        0054B16C
 0054E3E2    mov         edx,eax
 0054E3E4    lea         eax,[ebp-24]
 0054E3E7    call        @LStrFromChar
 0054E3EC    push        dword ptr [ebp-24]
 0054E3EF    movzx       eax,word ptr [ebp-10]
 0054E3F3    shr         eax,8
 0054E3F6    call        0054B16C
 0054E3FB    mov         edx,eax
 0054E3FD    lea         eax,[ebp-28]
 0054E400    call        @LStrFromChar
 0054E405    push        dword ptr [ebp-28]
 0054E408    lea         eax,[ebp-14]
 0054E40B    mov         edx,3
 0054E410    call        @LStrCatN
 0054E415    inc         word ptr [ebp-8]
 0054E419    mov         ax,word ptr [ebp-8]
 0054E41D    cmp         ax,word ptr [ebp-0C]
>0054E421    jae         0054E42D
 0054E423    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E428    cmp         byte ptr [eax],0
>0054E42B    je          0054E3C9
 0054E42D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E432    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E438    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E43E    mov         edx,dword ptr [ebp-14]
 0054E441    mov         ecx,dword ptr [eax]
 0054E443    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E446    lea         eax,[ebp-14]
 0054E449    call        @LStrClr
 0054E44E    mov         word ptr [ebp-6],0
 0054E454    mov         word ptr [ebp-0C],1B
 0054E45A    cmp         byte ptr [ebp-9],0
>0054E45E    je          0054E474
 0054E460    xor         ecx,ecx
 0054E462    mov         edx,0C0
 0054E467    mov         eax,dword ptr [ebp-4]
 0054E46A    mov         ebx,dword ptr [eax]
 0054E46C    call        dword ptr [ebx+14]
>0054E46F    jmp         0054E51D
 0054E474    xor         ecx,ecx
 0054E476    mov         edx,18
 0054E47B    mov         eax,dword ptr [ebp-4]
 0054E47E    mov         ebx,dword ptr [eax]
 0054E480    call        dword ptr [ebx+14]
>0054E483    jmp         0054E51D
 0054E488    mov         word ptr [ebp-8],0
 0054E48E    lea         eax,[ebp-14]
 0054E491    call        @LStrClr
>0054E496    jmp         0054E4E8
 0054E498    mov         eax,dword ptr [ebp-4]
 0054E49B    call        004CE548
 0054E4A0    mov         word ptr [ebp-10],ax
 0054E4A4    push        dword ptr [ebp-14]
 0054E4A7    mov         al,byte ptr [ebp-10]
 0054E4AA    and         al,0FF
 0054E4AC    call        0054B16C
 0054E4B1    mov         edx,eax
 0054E4B3    lea         eax,[ebp-2C]
 0054E4B6    call        @LStrFromChar
 0054E4BB    push        dword ptr [ebp-2C]
 0054E4BE    movzx       eax,word ptr [ebp-10]
 0054E4C2    shr         eax,8
 0054E4C5    call        0054B16C
 0054E4CA    mov         edx,eax
 0054E4CC    lea         eax,[ebp-30]
 0054E4CF    call        @LStrFromChar
 0054E4D4    push        dword ptr [ebp-30]
 0054E4D7    lea         eax,[ebp-14]
 0054E4DA    mov         edx,3
 0054E4DF    call        @LStrCatN
 0054E4E4    inc         word ptr [ebp-8]
 0054E4E8    mov         ax,word ptr [ebp-8]
 0054E4EC    cmp         ax,word ptr [ebp-0C]
>0054E4F0    jae         0054E4FC
 0054E4F2    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E4F7    cmp         byte ptr [eax],0
>0054E4FA    je          0054E498
 0054E4FC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054E501    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054E507    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054E50D    mov         edx,dword ptr [ebp-14]
 0054E510    mov         ecx,dword ptr [eax]
 0054E512    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054E515    mov         ax,word ptr [ebp-0C]
 0054E519    add         word ptr [ebp-6],ax
 0054E51D    movzx       eax,word ptr [ebp-6]
 0054E521    movzx       edx,word ptr [ebp-0C]
 0054E525    shl         edx,3
 0054E528    cmp         eax,edx
>0054E52A    jae         0054E53A
 0054E52C    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E531    cmp         byte ptr [eax],0
>0054E534    je          0054E488
 0054E53A    xor         eax,eax
 0054E53C    pop         edx
 0054E53D    pop         ecx
 0054E53E    pop         ecx
 0054E53F    mov         dword ptr fs:[eax],edx
 0054E542    push        54E564
 0054E547    lea         eax,[ebp-30]
 0054E54A    mov         edx,6
 0054E54F    call        @LStrArrayClr
 0054E554    lea         eax,[ebp-14]
 0054E557    call        @LStrClr
 0054E55C    ret
>0054E55D    jmp         @HandleFinally
>0054E562    jmp         0054E547
 0054E564    pop         ebx
 0054E565    mov         esp,ebp
 0054E567    pop         ebp
 0054E568    ret
*}
end;

//0054E56C
procedure TfmHDD.miDCMcodesClick(Sender:TObject);
begin
{*
 0054E56C    push        ebp
 0054E56D    mov         ebp,esp
 0054E56F    add         esp,0FFFFFFF4
 0054E572    mov         dword ptr [ebp-0C],edx
 0054E575    mov         dword ptr [ebp-4],eax
 0054E578    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E57D    mov         byte ptr [eax],0
 0054E580    mov         dl,1
 0054E582    mov         eax,[0041DE14];TMemoryStream
 0054E587    call        TObject.Create;TMemoryStream.Create
 0054E58C    mov         dword ptr [ebp-8],eax
 0054E58F    xor         eax,eax
 0054E591    push        ebp
 0054E592    push        54E5CB
 0054E597    push        dword ptr fs:[eax]
 0054E59A    mov         dword ptr fs:[eax],esp
 0054E59D    mov         edx,dword ptr [ebp-8]
 0054E5A0    mov         ax,0C5
 0054E5A4    call        005095B8
 0054E5A9    test        al,al
>0054E5AB    je          0054E5B5
 0054E5AD    mov         eax,dword ptr [ebp-8]
 0054E5B0    call        0054E1E0
 0054E5B5    xor         eax,eax
 0054E5B7    pop         edx
 0054E5B8    pop         ecx
 0054E5B9    pop         ecx
 0054E5BA    mov         dword ptr fs:[eax],edx
 0054E5BD    push        54E5D2
 0054E5C2    mov         eax,dword ptr [ebp-8]
 0054E5C5    call        TObject.Free
 0054E5CA    ret
>0054E5CB    jmp         @HandleFinally
>0054E5D0    jmp         0054E5C2
 0054E5D2    mov         esp,ebp
 0054E5D4    pop         ebp
 0054E5D5    ret
*}
end;

//0054E5D8
procedure TfmHDD.miClearPasswordsClick(Sender:TObject);
begin
{*
 0054E5D8    push        ebp
 0054E5D9    mov         ebp,esp
 0054E5DB    add         esp,0FFFFFFF8
 0054E5DE    mov         dword ptr [ebp-8],edx
 0054E5E1    mov         dword ptr [ebp-4],eax
 0054E5E4    call        004D0728
 0054E5E9    mov         eax,54E600;'Reset Passwords - '
 0054E5EE    call        00544F6C
 0054E5F3    pop         ecx
 0054E5F4    pop         ecx
 0054E5F5    pop         ebp
 0054E5F6    ret
*}
end;

//0054E614
procedure TfmHDD.miChangeModelNameClick(Sender:TObject);
begin
{*
 0054E614    push        ebp
 0054E615    mov         ebp,esp
 0054E617    add         esp,0FFFFFEBC
 0054E61D    push        ebx
 0054E61E    push        esi
 0054E61F    push        edi
 0054E620    xor         ecx,ecx
 0054E622    mov         dword ptr [ebp-144],ecx
 0054E628    mov         dword ptr [ebp-40],ecx
 0054E62B    mov         dword ptr [ebp-0C],edx
 0054E62E    mov         dword ptr [ebp-4],eax
 0054E631    xor         eax,eax
 0054E633    push        ebp
 0054E634    push        54E81A
 0054E639    push        dword ptr fs:[eax]
 0054E63C    mov         dword ptr fs:[eax],esp
 0054E63F    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E644    mov         byte ptr [eax],0
 0054E647    mov         esi,54E828
 0054E64C    lea         edi,[ebp-3B]
 0054E64F    mov         ecx,0B
 0054E654    rep movs    dword ptr [edi],dword ptr [esi]
 0054E656    movs        word ptr [edi],word ptr [esi]
 0054E658    movs        byte ptr [edi],byte ptr [esi]
 0054E659    mov         dl,1
 0054E65B    mov         eax,[0041DE14];TMemoryStream
 0054E660    call        TObject.Create;TMemoryStream.Create
 0054E665    mov         dword ptr [ebp-8],eax
 0054E668    xor         eax,eax
 0054E66A    push        ebp
 0054E66B    push        54E7F2
 0054E670    push        dword ptr fs:[eax]
 0054E673    mov         dword ptr fs:[eax],esp
 0054E676    push        0
 0054E678    mov         eax,dword ptr [ebp-8]
 0054E67B    push        eax
 0054E67C    xor         ecx,ecx
 0054E67E    mov         dx,0E
 0054E682    xor         eax,eax
 0054E684    call        004D1570
 0054E689    test        al,al
>0054E68B    je          0054E6AB
 0054E68D    xor         ecx,ecx
 0054E68F    xor         edx,edx
 0054E691    mov         eax,dword ptr [ebp-8]
 0054E694    mov         ebx,dword ptr [eax]
 0054E696    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054E699    xor         ecx,ecx
 0054E69B    mov         cl,byte ptr [ebp-3B]
 0054E69E    lea         edx,[ebp-3A]
 0054E6A1    mov         eax,dword ptr [ebp-8]
 0054E6A4    call        TStream.ReadBuffer
>0054E6A9    jmp         0054E6B5
 0054E6AB    mov         eax,54E860;'Get Model Name - '
 0054E6B0    call        00544F6C
 0054E6B5    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E6BA    cmp         dword ptr [eax],0
>0054E6BD    jne         0054E6DB
 0054E6BF    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0054E6C5    mov         ecx,dword ptr [ecx]
 0054E6C7    mov         dl,1
 0054E6C9    mov         eax,[004F7EE0];TfmString
 0054E6CE    call        TfmProgress.Create;TfmString.Create
 0054E6D3    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0054E6D9    mov         dword ptr [edx],eax
 0054E6DB    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E6E0    mov         eax,dword ptr [eax]
 0054E6E2    mov         edx,54E87C;'Set Model Name'
 0054E6E7    call        TPanel.SetCaption
 0054E6EC    lea         eax,[ebp-40]
 0054E6EF    lea         edx,[ebp-3B]
 0054E6F2    call        @LStrFromString
 0054E6F7    mov         edx,dword ptr [ebp-40]
 0054E6FA    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E6FF    mov         eax,dword ptr [eax]
 0054E701    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E707    call        TPanel.SetCaption
 0054E70C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E711    mov         eax,dword ptr [eax]
 0054E713    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E719    mov         edx,2E
 0054E71E    call        TLabeledEdit.SetMaxLength
 0054E723    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E728    mov         eax,dword ptr [eax]
 0054E72A    mov         edx,dword ptr [eax]
 0054E72C    call        dword ptr [edx+0EC]
 0054E732    dec         eax
>0054E733    jne         0054E7DC
 0054E739    call        00560318
 0054E73E    mov         eax,dword ptr [ebp-8]
 0054E741    call        00423F20
 0054E746    mov         eax,dword ptr [ebp-8]
 0054E749    call        00560288
 0054E74E    lea         edx,[ebp-144]
 0054E754    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E759    mov         eax,dword ptr [eax]
 0054E75B    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E761    call        TPanel.GetCaption
 0054E766    mov         edx,dword ptr [ebp-144]
 0054E76C    lea         eax,[ebp-140]
 0054E772    mov         ecx,0FF
 0054E777    call        @LStrToString
 0054E77C    lea         edx,[ebp-140]
 0054E782    lea         eax,[ebp-3B]
 0054E785    mov         cl,2E
 0054E787    call        @PStrNCpy
>0054E78C    jmp         0054E79D
 0054E78E    lea         eax,[ebp-3B]
 0054E791    mov         edx,54E88C;' '
 0054E796    mov         cl,2E
 0054E798    call        @PStrNCat
 0054E79D    cmp         byte ptr [ebp-3B],2E
>0054E7A1    jb          0054E78E
 0054E7A3    xor         ecx,ecx
 0054E7A5    xor         edx,edx
 0054E7A7    mov         eax,dword ptr [ebp-8]
 0054E7AA    mov         ebx,dword ptr [eax]
 0054E7AC    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054E7AF    xor         ecx,ecx
 0054E7B1    mov         cl,byte ptr [ebp-3B]
 0054E7B4    lea         edx,[ebp-3A]
 0054E7B7    mov         eax,dword ptr [ebp-8]
 0054E7BA    call        TStream.WriteBuffer
 0054E7BF    push        0
 0054E7C1    mov         eax,dword ptr [ebp-8]
 0054E7C4    push        eax
 0054E7C5    xor         ecx,ecx
 0054E7C7    mov         dx,0E
 0054E7CB    xor         eax,eax
 0054E7CD    call        004D16E8
 0054E7D2    mov         eax,54E898;'Set Model Name - '
 0054E7D7    call        00544F6C
 0054E7DC    xor         eax,eax
 0054E7DE    pop         edx
 0054E7DF    pop         ecx
 0054E7E0    pop         ecx
 0054E7E1    mov         dword ptr fs:[eax],edx
 0054E7E4    push        54E7F9
 0054E7E9    mov         eax,dword ptr [ebp-8]
 0054E7EC    call        TObject.Free
 0054E7F1    ret
>0054E7F2    jmp         @HandleFinally
>0054E7F7    jmp         0054E7E9
 0054E7F9    xor         eax,eax
 0054E7FB    pop         edx
 0054E7FC    pop         ecx
 0054E7FD    pop         ecx
 0054E7FE    mov         dword ptr fs:[eax],edx
 0054E801    push        54E821
 0054E806    lea         eax,[ebp-144]
 0054E80C    call        @LStrClr
 0054E811    lea         eax,[ebp-40]
 0054E814    call        @LStrClr
 0054E819    ret
>0054E81A    jmp         @HandleFinally
>0054E81F    jmp         0054E806
 0054E821    pop         edi
 0054E822    pop         esi
 0054E823    pop         ebx
 0054E824    mov         esp,ebp
 0054E826    pop         ebp
 0054E827    ret
*}
end;

//0054E8AC
procedure TfmHDD.miChangeSerialNumber1Click(Sender:TObject);
begin
{*
 0054E8AC    push        ebp
 0054E8AD    mov         ebp,esp
 0054E8AF    add         esp,0FFFFFED4
 0054E8B5    push        ebx
 0054E8B6    push        esi
 0054E8B7    push        edi
 0054E8B8    xor         ecx,ecx
 0054E8BA    mov         dword ptr [ebp-12C],ecx
 0054E8C0    mov         dword ptr [ebp-28],ecx
 0054E8C3    mov         dword ptr [ebp-0C],edx
 0054E8C6    mov         dword ptr [ebp-4],eax
 0054E8C9    xor         eax,eax
 0054E8CB    push        ebp
 0054E8CC    push        54EAB0
 0054E8D1    push        dword ptr fs:[eax]
 0054E8D4    mov         dword ptr fs:[eax],esp
 0054E8D7    mov         eax,[0056E5A4];^gvar_0056DF04
 0054E8DC    mov         byte ptr [eax],0
 0054E8DF    mov         esi,54EAC0
 0054E8E4    lea         edi,[ebp-21]
 0054E8E7    mov         ecx,5
 0054E8EC    rep movs    dword ptr [edi],dword ptr [esi]
 0054E8EE    movs        byte ptr [edi],byte ptr [esi]
 0054E8EF    mov         dl,1
 0054E8F1    mov         eax,[0041DE14];TMemoryStream
 0054E8F6    call        TObject.Create;TMemoryStream.Create
 0054E8FB    mov         dword ptr [ebp-8],eax
 0054E8FE    xor         eax,eax
 0054E900    push        ebp
 0054E901    push        54EA88
 0054E906    push        dword ptr fs:[eax]
 0054E909    mov         dword ptr fs:[eax],esp
 0054E90C    push        0
 0054E90E    mov         eax,dword ptr [ebp-8]
 0054E911    push        eax
 0054E912    xor         ecx,ecx
 0054E914    mov         dx,0D
 0054E918    xor         eax,eax
 0054E91A    call        004D1570
 0054E91F    test        al,al
>0054E921    je          0054E941
 0054E923    xor         ecx,ecx
 0054E925    xor         edx,edx
 0054E927    mov         eax,dword ptr [ebp-8]
 0054E92A    mov         ebx,dword ptr [eax]
 0054E92C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054E92F    xor         ecx,ecx
 0054E931    mov         cl,byte ptr [ebp-21]
 0054E934    lea         edx,[ebp-20]
 0054E937    mov         eax,dword ptr [ebp-8]
 0054E93A    call        TStream.ReadBuffer
>0054E93F    jmp         0054E94B
 0054E941    mov         eax,54EAE0;'Get Serial Number - '
 0054E946    call        00544F6C
 0054E94B    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E950    cmp         dword ptr [eax],0
>0054E953    jne         0054E971
 0054E955    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0054E95B    mov         ecx,dword ptr [ecx]
 0054E95D    mov         dl,1
 0054E95F    mov         eax,[004F7EE0];TfmString
 0054E964    call        TfmProgress.Create;TfmString.Create
 0054E969    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0054E96F    mov         dword ptr [edx],eax
 0054E971    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E976    mov         eax,dword ptr [eax]
 0054E978    mov         edx,54EB00;'Set SerialNumber'
 0054E97D    call        TPanel.SetCaption
 0054E982    lea         eax,[ebp-28]
 0054E985    lea         edx,[ebp-21]
 0054E988    call        @LStrFromString
 0054E98D    mov         edx,dword ptr [ebp-28]
 0054E990    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E995    mov         eax,dword ptr [eax]
 0054E997    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E99D    call        TPanel.SetCaption
 0054E9A2    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E9A7    mov         eax,dword ptr [eax]
 0054E9A9    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E9AF    mov         edx,14
 0054E9B4    call        TLabeledEdit.SetMaxLength
 0054E9B9    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E9BE    mov         eax,dword ptr [eax]
 0054E9C0    mov         edx,dword ptr [eax]
 0054E9C2    call        dword ptr [edx+0EC]
 0054E9C8    dec         eax
>0054E9C9    jne         0054EA72
 0054E9CF    call        00560318
 0054E9D4    mov         eax,dword ptr [ebp-8]
 0054E9D7    call        00423F20
 0054E9DC    mov         eax,dword ptr [ebp-8]
 0054E9DF    call        00560288
 0054E9E4    lea         edx,[ebp-12C]
 0054E9EA    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054E9EF    mov         eax,dword ptr [eax]
 0054E9F1    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054E9F7    call        TPanel.GetCaption
 0054E9FC    mov         edx,dword ptr [ebp-12C]
 0054EA02    lea         eax,[ebp-128]
 0054EA08    mov         ecx,0FF
 0054EA0D    call        @LStrToString
 0054EA12    lea         edx,[ebp-128]
 0054EA18    lea         eax,[ebp-21]
 0054EA1B    mov         cl,14
 0054EA1D    call        @PStrNCpy
>0054EA22    jmp         0054EA33
 0054EA24    lea         eax,[ebp-21]
 0054EA27    mov         edx,54EB14;' '
 0054EA2C    mov         cl,14
 0054EA2E    call        @PStrNCat
 0054EA33    cmp         byte ptr [ebp-21],14
>0054EA37    jb          0054EA24
 0054EA39    xor         ecx,ecx
 0054EA3B    xor         edx,edx
 0054EA3D    mov         eax,dword ptr [ebp-8]
 0054EA40    mov         ebx,dword ptr [eax]
 0054EA42    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054EA45    xor         ecx,ecx
 0054EA47    mov         cl,byte ptr [ebp-21]
 0054EA4A    lea         edx,[ebp-20]
 0054EA4D    mov         eax,dword ptr [ebp-8]
 0054EA50    call        TStream.WriteBuffer
 0054EA55    push        0
 0054EA57    mov         eax,dword ptr [ebp-8]
 0054EA5A    push        eax
 0054EA5B    xor         ecx,ecx
 0054EA5D    mov         dx,0D
 0054EA61    xor         eax,eax
 0054EA63    call        004D16E8
 0054EA68    mov         eax,54EB20;'Set SerialNumber - '
 0054EA6D    call        00544F6C
 0054EA72    xor         eax,eax
 0054EA74    pop         edx
 0054EA75    pop         ecx
 0054EA76    pop         ecx
 0054EA77    mov         dword ptr fs:[eax],edx
 0054EA7A    push        54EA8F
 0054EA7F    mov         eax,dword ptr [ebp-8]
 0054EA82    call        TObject.Free
 0054EA87    ret
>0054EA88    jmp         @HandleFinally
>0054EA8D    jmp         0054EA7F
 0054EA8F    xor         eax,eax
 0054EA91    pop         edx
 0054EA92    pop         ecx
 0054EA93    pop         ecx
 0054EA94    mov         dword ptr fs:[eax],edx
 0054EA97    push        54EAB7
 0054EA9C    lea         eax,[ebp-12C]
 0054EAA2    call        @LStrClr
 0054EAA7    lea         eax,[ebp-28]
 0054EAAA    call        @LStrClr
 0054EAAF    ret
>0054EAB0    jmp         @HandleFinally
>0054EAB5    jmp         0054EA9C
 0054EAB7    pop         edi
 0054EAB8    pop         esi
 0054EAB9    pop         ebx
 0054EABA    mov         esp,ebp
 0054EABC    pop         ebp
 0054EABD    ret
*}
end;

//0054EB34
procedure TfmHDD.miChangeMaxLBA1Click(Sender:TObject);
begin
{*
 0054EB34    push        ebp
 0054EB35    mov         ebp,esp
 0054EB37    add         esp,0FFFFFFF0
 0054EB3A    xor         ecx,ecx
 0054EB3C    mov         dword ptr [ebp-10],ecx
 0054EB3F    mov         dword ptr [ebp-0C],ecx
 0054EB42    mov         dword ptr [ebp-8],edx
 0054EB45    mov         dword ptr [ebp-4],eax
 0054EB48    xor         eax,eax
 0054EB4A    push        ebp
 0054EB4B    push        54EC1C
 0054EB50    push        dword ptr fs:[eax]
 0054EB53    mov         dword ptr fs:[eax],esp
 0054EB56    mov         eax,[0056E5A4];^gvar_0056DF04
 0054EB5B    mov         byte ptr [eax],0
 0054EB5E    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054EB63    cmp         dword ptr [eax],0
>0054EB66    jne         0054EB84
 0054EB68    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0054EB6E    mov         ecx,dword ptr [ecx]
 0054EB70    mov         dl,1
 0054EB72    mov         eax,[004F7EE0];TfmString
 0054EB77    call        TfmProgress.Create;TfmString.Create
 0054EB7C    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0054EB82    mov         dword ptr [edx],eax
 0054EB84    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054EB89    mov         eax,dword ptr [eax]
 0054EB8B    mov         edx,54EC30;'Set Max LBA'
 0054EB90    call        TPanel.SetCaption
 0054EB95    push        dword ptr ds:[56DE7C];gvar_0056DE7C
 0054EB9B    push        dword ptr ds:[56DE78];gvar_0056DE78
 0054EBA1    lea         eax,[ebp-0C]
 0054EBA4    call        IntToStr
 0054EBA9    mov         edx,dword ptr [ebp-0C]
 0054EBAC    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054EBB1    mov         eax,dword ptr [eax]
 0054EBB3    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054EBB9    call        TPanel.SetCaption
 0054EBBE    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054EBC3    mov         eax,dword ptr [eax]
 0054EBC5    mov         edx,dword ptr [eax]
 0054EBC7    call        dword ptr [edx+0EC]
 0054EBCD    dec         eax
>0054EBCE    jne         0054EBFE
 0054EBD0    lea         edx,[ebp-10]
 0054EBD3    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054EBD8    mov         eax,dword ptr [eax]
 0054EBDA    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054EBE0    call        TPanel.GetCaption
 0054EBE5    mov         eax,dword ptr [ebp-10]
 0054EBE8    xor         edx,edx
 0054EBEA    call        0040C4A8
 0054EBEF    call        004D07E8
 0054EBF4    mov         eax,54EC44;'Set Max LBA - '
 0054EBF9    call        00544F6C
 0054EBFE    xor         eax,eax
 0054EC00    pop         edx
 0054EC01    pop         ecx
 0054EC02    pop         ecx
 0054EC03    mov         dword ptr fs:[eax],edx
 0054EC06    push        54EC23
 0054EC0B    lea         eax,[ebp-10]
 0054EC0E    call        @LStrClr
 0054EC13    lea         eax,[ebp-0C]
 0054EC16    call        @LStrClr
 0054EC1B    ret
>0054EC1C    jmp         @HandleFinally
>0054EC21    jmp         0054EC0B
 0054EC23    mov         esp,ebp
 0054EC25    pop         ebp
 0054EC26    ret
*}
end;

//0054EC54
procedure TfmHDD.miChangeFWVersionClick(Sender:TObject);
begin
{*
 0054EC54    push        ebp
 0054EC55    mov         ebp,esp
 0054EC57    add         esp,0FFFFFEE0
 0054EC5D    push        ebx
 0054EC5E    push        esi
 0054EC5F    push        edi
 0054EC60    xor         ecx,ecx
 0054EC62    mov         dword ptr [ebp-120],ecx
 0054EC68    mov         dword ptr [ebp-1C],ecx
 0054EC6B    mov         dword ptr [ebp-18],edx
 0054EC6E    mov         dword ptr [ebp-4],eax
 0054EC71    xor         eax,eax
 0054EC73    push        ebp
 0054EC74    push        54EE53
 0054EC79    push        dword ptr fs:[eax]
 0054EC7C    mov         dword ptr fs:[eax],esp
 0054EC7F    mov         eax,[0056E5A4];^gvar_0056DF04
 0054EC84    mov         byte ptr [eax],0
 0054EC87    mov         esi,54EE64
 0054EC8C    lea         edi,[ebp-11]
 0054EC8F    movs        dword ptr [edi],dword ptr [esi]
 0054EC90    movs        dword ptr [edi],dword ptr [esi]
 0054EC91    movs        byte ptr [edi],byte ptr [esi]
 0054EC92    mov         dl,1
 0054EC94    mov         eax,[0041DE14];TMemoryStream
 0054EC99    call        TObject.Create;TMemoryStream.Create
 0054EC9E    mov         dword ptr [ebp-8],eax
 0054ECA1    xor         eax,eax
 0054ECA3    push        ebp
 0054ECA4    push        54EE2B
 0054ECA9    push        dword ptr fs:[eax]
 0054ECAC    mov         dword ptr fs:[eax],esp
 0054ECAF    push        0
 0054ECB1    mov         eax,dword ptr [ebp-8]
 0054ECB4    push        eax
 0054ECB5    xor         ecx,ecx
 0054ECB7    mov         dx,12
 0054ECBB    xor         eax,eax
 0054ECBD    call        004D1570
 0054ECC2    test        al,al
>0054ECC4    je          0054ECE4
 0054ECC6    xor         ecx,ecx
 0054ECC8    xor         edx,edx
 0054ECCA    mov         eax,dword ptr [ebp-8]
 0054ECCD    mov         ebx,dword ptr [eax]
 0054ECCF    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054ECD2    xor         ecx,ecx
 0054ECD4    mov         cl,byte ptr [ebp-11]
 0054ECD7    lea         edx,[ebp-10]
 0054ECDA    mov         eax,dword ptr [ebp-8]
 0054ECDD    call        TStream.ReadBuffer
>0054ECE2    jmp         0054ECEE
 0054ECE4    mov         eax,54EE78;'Get FW Version - '
 0054ECE9    call        00544F6C
 0054ECEE    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ECF3    cmp         dword ptr [eax],0
>0054ECF6    jne         0054ED14
 0054ECF8    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0054ECFE    mov         ecx,dword ptr [ecx]
 0054ED00    mov         dl,1
 0054ED02    mov         eax,[004F7EE0];TfmString
 0054ED07    call        TfmProgress.Create;TfmString.Create
 0054ED0C    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0054ED12    mov         dword ptr [edx],eax
 0054ED14    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ED19    mov         eax,dword ptr [eax]
 0054ED1B    mov         edx,54EE94;'Set FW Version'
 0054ED20    call        TPanel.SetCaption
 0054ED25    lea         eax,[ebp-1C]
 0054ED28    lea         edx,[ebp-11]
 0054ED2B    call        @LStrFromString
 0054ED30    mov         edx,dword ptr [ebp-1C]
 0054ED33    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ED38    mov         eax,dword ptr [eax]
 0054ED3A    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054ED40    call        TPanel.SetCaption
 0054ED45    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ED4A    mov         eax,dword ptr [eax]
 0054ED4C    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054ED52    mov         edx,8
 0054ED57    call        TLabeledEdit.SetMaxLength
 0054ED5C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ED61    mov         eax,dword ptr [eax]
 0054ED63    mov         edx,dword ptr [eax]
 0054ED65    call        dword ptr [edx+0EC]
 0054ED6B    dec         eax
>0054ED6C    jne         0054EE15
 0054ED72    call        00560318
 0054ED77    mov         eax,dword ptr [ebp-8]
 0054ED7A    call        00423F20
 0054ED7F    mov         eax,dword ptr [ebp-8]
 0054ED82    call        00560288
 0054ED87    lea         edx,[ebp-120]
 0054ED8D    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0054ED92    mov         eax,dword ptr [eax]
 0054ED94    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0054ED9A    call        TPanel.GetCaption
 0054ED9F    mov         edx,dword ptr [ebp-120]
 0054EDA5    lea         eax,[ebp-11C]
 0054EDAB    mov         ecx,0FF
 0054EDB0    call        @LStrToString
 0054EDB5    lea         edx,[ebp-11C]
 0054EDBB    lea         eax,[ebp-11]
 0054EDBE    mov         cl,8
 0054EDC0    call        @PStrNCpy
>0054EDC5    jmp         0054EDD6
 0054EDC7    lea         eax,[ebp-11]
 0054EDCA    mov         edx,54EEA4;' '
 0054EDCF    mov         cl,8
 0054EDD1    call        @PStrNCat
 0054EDD6    cmp         byte ptr [ebp-11],8
>0054EDDA    jb          0054EDC7
 0054EDDC    xor         ecx,ecx
 0054EDDE    xor         edx,edx
 0054EDE0    mov         eax,dword ptr [ebp-8]
 0054EDE3    mov         ebx,dword ptr [eax]
 0054EDE5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0054EDE8    xor         ecx,ecx
 0054EDEA    mov         cl,byte ptr [ebp-11]
 0054EDED    lea         edx,[ebp-10]
 0054EDF0    mov         eax,dword ptr [ebp-8]
 0054EDF3    call        TStream.WriteBuffer
 0054EDF8    push        0
 0054EDFA    mov         eax,dword ptr [ebp-8]
 0054EDFD    push        eax
 0054EDFE    xor         ecx,ecx
 0054EE00    mov         dx,12
 0054EE04    xor         eax,eax
 0054EE06    call        004D16E8
 0054EE0B    mov         eax,54EEB0;'Set FW Version - '
 0054EE10    call        00544F6C
 0054EE15    xor         eax,eax
 0054EE17    pop         edx
 0054EE18    pop         ecx
 0054EE19    pop         ecx
 0054EE1A    mov         dword ptr fs:[eax],edx
 0054EE1D    push        54EE32
 0054EE22    mov         eax,dword ptr [ebp-8]
 0054EE25    call        TObject.Free
 0054EE2A    ret
>0054EE2B    jmp         @HandleFinally
>0054EE30    jmp         0054EE22
 0054EE32    xor         eax,eax
 0054EE34    pop         edx
 0054EE35    pop         ecx
 0054EE36    pop         ecx
 0054EE37    mov         dword ptr fs:[eax],edx
 0054EE3A    push        54EE5A
 0054EE3F    lea         eax,[ebp-120]
 0054EE45    call        @LStrClr
 0054EE4A    lea         eax,[ebp-1C]
 0054EE4D    call        @LStrClr
 0054EE52    ret
>0054EE53    jmp         @HandleFinally
>0054EE58    jmp         0054EE3F
 0054EE5A    pop         edi
 0054EE5B    pop         esi
 0054EE5C    pop         ebx
 0054EE5D    mov         esp,ebp
 0054EE5F    pop         ebp
 0054EE60    ret
*}
end;

//0054EEC4
procedure TfmHDD.miLoadGenOverlaytoRAMClick(Sender:TObject);
begin
{*
 0054EEC4    push        ebp
 0054EEC5    mov         ebp,esp
 0054EEC7    add         esp,0FFFFFFF8
 0054EECA    mov         dword ptr [ebp-8],edx
 0054EECD    mov         dword ptr [ebp-4],eax
 0054EED0    mov         eax,[0056E5A4];^gvar_0056DF04
 0054EED5    mov         byte ptr [eax],0
 0054EED8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054EEDD    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054EEE3    add         eax,60;TOpenDialog.Filter:String
 0054EEE6    mov         edx,54EF2C;'Overlay|*11.rpm|All|*.*'
 0054EEEB    call        @LStrAsg
 0054EEF0    xor         ecx,ecx
 0054EEF2    xor         edx,edx
 0054EEF4    mov         ax,3
 0054EEF8    call        00511AE8
 0054EEFD    call        004CEB6C
 0054EF02    mov         eax,54EF4C;'Load Permanent Overlay to RAM - '
 0054EF07    call        00544F6C
 0054EF0C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054EF11    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0054EF17    add         eax,60;TOpenDialog.Filter:String
 0054EF1A    call        @LStrClr
 0054EF1F    pop         ecx
 0054EF20    pop         ecx
 0054EF21    pop         ebp
 0054EF22    ret
*}
end;

//0054EF70
procedure TfmHDD.miManualEditConfigSectorClick(Sender:TObject);
begin
{*
 0054EF70    push        ebp
 0054EF71    mov         ebp,esp
 0054EF73    add         esp,0FFFFFFF8
 0054EF76    mov         dword ptr [ebp-8],edx
 0054EF79    mov         dword ptr [ebp-4],eax
 0054EF7C    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054EF82    mov         eax,[004F4ECC];TfmPassport
 0054EF87    call        004F63C8
 0054EF8C    pop         ecx
 0054EF8D    pop         ecx
 0054EF8E    pop         ebp
 0054EF8F    ret
*}
end;

//0054EF90
procedure TfmHDD.miClearGListManualClick(Sender:TObject);
begin
{*
 0054EF90    push        ebp
 0054EF91    mov         ebp,esp
 0054EF93    add         esp,0FFFFFFF8
 0054EF96    mov         dword ptr [ebp-8],edx
 0054EF99    mov         dword ptr [ebp-4],eax
 0054EF9C    mov         ax,34
 0054EFA0    call        005077AC
 0054EFA5    mov         eax,54EFBC;'Clear G-List - '
 0054EFAA    call        00544F6C
 0054EFAF    pop         ecx
 0054EFB0    pop         ecx
 0054EFB1    pop         ebp
 0054EFB2    ret
*}
end;

//0054EFCC
procedure TfmHDD.miClearPListManualClick(Sender:TObject);
begin
{*
 0054EFCC    push        ebp
 0054EFCD    mov         ebp,esp
 0054EFCF    add         esp,0FFFFFFF8
 0054EFD2    mov         dword ptr [ebp-8],edx
 0054EFD5    mov         dword ptr [ebp-4],eax
 0054EFD8    mov         ax,33
 0054EFDC    call        005077AC
 0054EFE1    mov         eax,54EFF8;'Clear P-List - '
 0054EFE6    call        00544F6C
 0054EFEB    pop         ecx
 0054EFEC    pop         ecx
 0054EFED    pop         ebp
 0054EFEE    ret
*}
end;

//0054F008
procedure TfmHDD.miRebuildPListClick(Sender:TObject);
begin
{*
 0054F008    push        ebp
 0054F009    mov         ebp,esp
 0054F00B    add         esp,0FFFFFFF8
 0054F00E    mov         dword ptr [ebp-8],edx
 0054F011    mov         dword ptr [ebp-4],eax
 0054F014    mov         eax,54F040;'Rebuild P-List from SS-Log - Start'
 0054F019    call        00544EB4
 0054F01E    call        004D0858
 0054F023    call        004CEB6C
 0054F028    mov         eax,54F06C;'Rebuild P-List from SS-Log - '
 0054F02D    call        00544F6C
 0054F032    pop         ecx
 0054F033    pop         ecx
 0054F034    pop         ebp
 0054F035    ret
*}
end;

//0054F08C
{*function sub_0054F08C(?:?):?;
begin
 0054F08C    push        ebp
 0054F08D    mov         ebp,esp
 0054F08F    add         esp,0FFFFFFF8
 0054F092    mov         word ptr [ebp-2],ax
 0054F096    movzx       eax,word ptr [ebp-2]
 0054F09A    shr         eax,8
 0054F09D    mov         dx,word ptr [ebp-2]
 0054F0A1    shl         edx,8
 0054F0A4    add         ax,dx
 0054F0A7    mov         word ptr [ebp-6],ax
 0054F0AB    mov         ax,word ptr [ebp-6]
 0054F0AF    mov         word ptr [ebp-4],ax
 0054F0B3    mov         ax,word ptr [ebp-4]
 0054F0B7    pop         ecx
 0054F0B8    pop         ecx
 0054F0B9    pop         ebp
 0054F0BA    ret
end;*}

//0054F0BC
procedure sub_0054F0BC(?:TMemoryStream);
begin
{*
 0054F0BC    push        ebp
 0054F0BD    mov         ebp,esp
 0054F0BF    mov         ecx,0F
 0054F0C4    push        0
 0054F0C6    push        0
 0054F0C8    dec         ecx
>0054F0C9    jne         0054F0C4
 0054F0CB    push        ecx
 0054F0CC    push        ebx
 0054F0CD    mov         dword ptr [ebp-4],eax
 0054F0D0    xor         eax,eax
 0054F0D2    push        ebp
 0054F0D3    push        54F545
 0054F0D8    push        dword ptr fs:[eax]
 0054F0DB    mov         dword ptr fs:[eax],esp
 0054F0DE    xor         ecx,ecx
 0054F0E0    xor         edx,edx
 0054F0E2    mov         eax,dword ptr [ebp-4]
 0054F0E5    mov         ebx,dword ptr [eax]
 0054F0E7    call        dword ptr [ebx+14]
 0054F0EA    mov         eax,dword ptr [ebp-4]
 0054F0ED    call        004CE56C
 0054F0F2    mov         dword ptr [ebp-8],eax
 0054F0F5    cmp         dword ptr [ebp-8],4C594F52
>0054F0FC    jne         0054F178
 0054F0FE    xor         ecx,ecx
 0054F100    mov         edx,8
 0054F105    mov         eax,dword ptr [ebp-4]
 0054F108    mov         ebx,dword ptr [eax]
 0054F10A    call        dword ptr [ebx+14]
 0054F10D    mov         eax,dword ptr [ebp-4]
 0054F110    call        004CE548
 0054F115    mov         word ptr [ebp-14],ax
 0054F119    xor         ecx,ecx
 0054F11B    mov         edx,30
 0054F120    mov         eax,dword ptr [ebp-4]
 0054F123    mov         ebx,dword ptr [eax]
 0054F125    call        dword ptr [ebx+14]
 0054F128    push        11
 0054F12A    call        user32.GetKeyState
 0054F12F    test        ax,ax
>0054F132    jge         0054F14F
 0054F134    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F139    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F13F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F145    mov         edx,54F55C;'     #   ABA      Begin  End'
 0054F14A    mov         ecx,dword ptr [eax]
 0054F14C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F14F    push        11
 0054F151    call        user32.GetKeyState
 0054F156    test        ax,ax
>0054F159    jge         0054F1A7
 0054F15B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F160    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F166    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F16C    mov         edx,54F584;'----------------------------'
 0054F171    mov         ecx,dword ptr [eax]
 0054F173    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0054F176    jmp         0054F1A7
 0054F178    xor         ecx,ecx
 0054F17A    mov         edx,4
 0054F17F    mov         eax,dword ptr [ebp-4]
 0054F182    mov         ebx,dword ptr [eax]
 0054F184    call        dword ptr [ebx+14]
 0054F187    mov         eax,dword ptr [ebp-4]
 0054F18A    call        004CE528
 0054F18F    and         eax,0FF
 0054F194    mov         word ptr [ebp-14],ax
 0054F198    xor         ecx,ecx
 0054F19A    mov         edx,18
 0054F19F    mov         eax,dword ptr [ebp-4]
 0054F1A2    mov         ebx,dword ptr [eax]
 0054F1A4    call        dword ptr [ebx+14]
 0054F1A7    xor         eax,eax
 0054F1A9    mov         dword ptr [ebp-20],eax
 0054F1AC    xor         eax,eax
 0054F1AE    mov         dword ptr [ebp-18],eax
 0054F1B1    xor         eax,eax
 0054F1B3    mov         dword ptr [ebp-1C],eax
 0054F1B6    mov         word ptr [ebp-0E],0
 0054F1BC    mov         word ptr [ebp-0C],0
 0054F1C2    mov         word ptr [ebp-0A],0
 0054F1C8    mov         eax,dword ptr [ebp-4]
 0054F1CB    mov         edx,dword ptr [eax]
 0054F1CD    call        dword ptr [edx]
 0054F1CF    push        edx
 0054F1D0    push        eax
 0054F1D1    mov         eax,dword ptr [ebp-4]
 0054F1D4    call        TStream.GetPosition
 0054F1D9    add         eax,19
 0054F1DC    adc         edx,0
 0054F1DF    cmp         edx,dword ptr [esp+4]
>0054F1E3    jne         0054F1F1
 0054F1E5    cmp         eax,dword ptr [esp]
 0054F1E8    pop         edx
 0054F1E9    pop         eax
>0054F1EA    jbe         0054F1F9
>0054F1EC    jmp         0054F3EF
 0054F1F1    pop         edx
 0054F1F2    pop         eax
>0054F1F3    jg          0054F3EF
 0054F1F9    mov         eax,dword ptr [ebp-4]
 0054F1FC    call        004CE548
 0054F201    mov         word ptr [ebp-0A],ax
 0054F205    mov         eax,dword ptr [ebp-4]
 0054F208    call        004CE548
 0054F20D    mov         word ptr [ebp-0C],ax
 0054F211    mov         eax,dword ptr [ebp-4]
 0054F214    call        004CE548
 0054F219    mov         word ptr [ebp-0E],ax
 0054F21D    mov         cx,1
 0054F221    mov         edx,0C
 0054F226    mov         eax,dword ptr [ebp-4]
 0054F229    mov         ebx,dword ptr [eax]
 0054F22B    call        dword ptr [ebx+14]
 0054F22E    mov         eax,dword ptr [ebp-4]
 0054F231    call        004CE548
 0054F236    mov         word ptr [ebp-10],ax
 0054F23A    mov         eax,dword ptr [ebp-4]
 0054F23D    call        004CE548
 0054F242    mov         word ptr [ebp-12],ax
 0054F246    mov         cx,1
 0054F24A    mov         edx,2
 0054F24F    mov         eax,dword ptr [ebp-4]
 0054F252    mov         ebx,dword ptr [eax]
 0054F254    call        dword ptr [ebx+14]
 0054F257    cmp         word ptr [ebp-0E],0FFFF
>0054F25D    jne         0054F2F1
 0054F263    push        11
 0054F265    call        user32.GetKeyState
 0054F26A    test        ax,ax
>0054F26D    jge         0054F2E9
 0054F26F    mov         eax,dword ptr [ebp-20]
 0054F272    xor         edx,edx
 0054F274    push        edx
 0054F275    push        eax
 0054F276    lea         eax,[ebp-28]
 0054F279    call        IntToStr
 0054F27E    push        dword ptr [ebp-28]
 0054F281    push        54F5AC;'  '
 0054F286    mov         ax,word ptr [ebp-0A]
 0054F28A    call        0054F08C
 0054F28F    movzx       eax,ax
 0054F292    lea         ecx,[ebp-2C]
 0054F295    mov         edx,4
 0054F29A    call        IntToHex
 0054F29F    push        dword ptr [ebp-2C]
 0054F2A2    mov         ax,word ptr [ebp-0C]
 0054F2A6    call        0054F08C
 0054F2AB    movzx       eax,ax
 0054F2AE    lea         ecx,[ebp-30]
 0054F2B1    mov         edx,4
 0054F2B6    call        IntToHex
 0054F2BB    push        dword ptr [ebp-30]
 0054F2BE    push        54F5B8;'  Track'
 0054F2C3    lea         eax,[ebp-24]
 0054F2C6    mov         edx,5
 0054F2CB    call        @LStrCatN
 0054F2D0    mov         edx,dword ptr [ebp-24]
 0054F2D3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F2D8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F2DE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F2E4    mov         ecx,dword ptr [eax]
 0054F2E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F2E9    inc         dword ptr [ebp-18]
>0054F2EC    jmp         0054F3AB
 0054F2F1    push        11
 0054F2F3    call        user32.GetKeyState
 0054F2F8    test        ax,ax
>0054F2FB    jge         0054F3A8
 0054F301    mov         eax,dword ptr [ebp-20]
 0054F304    xor         edx,edx
 0054F306    push        edx
 0054F307    push        eax
 0054F308    lea         eax,[ebp-38]
 0054F30B    call        IntToStr
 0054F310    push        dword ptr [ebp-38]
 0054F313    push        54F5AC;'  '
 0054F318    mov         ax,word ptr [ebp-0A]
 0054F31C    call        0054F08C
 0054F321    movzx       eax,ax
 0054F324    lea         ecx,[ebp-3C]
 0054F327    mov         edx,4
 0054F32C    call        IntToHex
 0054F331    push        dword ptr [ebp-3C]
 0054F334    mov         ax,word ptr [ebp-0C]
 0054F338    call        0054F08C
 0054F33D    movzx       eax,ax
 0054F340    lea         ecx,[ebp-40]
 0054F343    mov         edx,4
 0054F348    call        IntToHex
 0054F34D    push        dword ptr [ebp-40]
 0054F350    push        54F5AC;'  '
 0054F355    lea         ecx,[ebp-44]
 0054F358    movzx       eax,word ptr [ebp-10]
 0054F35C    mov         edx,4
 0054F361    call        IntToHex
 0054F366    push        dword ptr [ebp-44]
 0054F369    push        54F5AC;'  '
 0054F36E    lea         ecx,[ebp-48]
 0054F371    movzx       eax,word ptr [ebp-12]
 0054F375    mov         edx,4
 0054F37A    call        IntToHex
 0054F37F    push        dword ptr [ebp-48]
 0054F382    lea         eax,[ebp-34]
 0054F385    mov         edx,8
 0054F38A    call        @LStrCatN
 0054F38F    mov         edx,dword ptr [ebp-34]
 0054F392    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F397    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F39D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F3A3    mov         ecx,dword ptr [eax]
 0054F3A5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F3A8    inc         dword ptr [ebp-1C]
 0054F3AB    inc         dword ptr [ebp-20]
 0054F3AE    cmp         word ptr [ebp-0E],0
>0054F3B3    jne         0054F3C3
 0054F3B5    cmp         word ptr [ebp-0C],0
>0054F3BA    jne         0054F3C3
 0054F3BC    cmp         word ptr [ebp-0A],0
>0054F3C1    je          0054F3EF
 0054F3C3    mov         eax,dword ptr [ebp-4]
 0054F3C6    mov         edx,dword ptr [eax]
 0054F3C8    call        dword ptr [edx]
 0054F3CA    push        edx
 0054F3CB    push        eax
 0054F3CC    mov         eax,dword ptr [ebp-4]
 0054F3CF    call        TStream.GetPosition
 0054F3D4    cmp         edx,dword ptr [esp+4]
>0054F3D8    jne         0054F3E7
 0054F3DA    cmp         eax,dword ptr [esp]
 0054F3DD    pop         edx
 0054F3DE    pop         eax
>0054F3DF    jb          0054F1C8
>0054F3E5    jmp         0054F3EF
 0054F3E7    pop         edx
 0054F3E8    pop         eax
>0054F3E9    jl          0054F1C8
 0054F3EF    dec         dword ptr [ebp-1C]
 0054F3F2    movzx       eax,word ptr [ebp-14]
 0054F3F6    add         eax,0FFFFFF20
 0054F3FB    cmp         eax,11
>0054F3FE    ja          0054F485
 0054F404    mov         al,byte ptr [eax+54F411]
 0054F40A    jmp         dword ptr [eax*4+54F423]
 0054F40A    db          1
 0054F40A    db          2
 0054F40A    db          3
 0054F40A    db          4
 0054F40A    db          5
 0054F40A    db          6
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          0
 0054F40A    db          7
 0054F40A    db          8
 0054F40A    dd          0054F485
 0054F40A    dd          0054F447
 0054F40A    dd          0054F44F
 0054F40A    dd          0054F457
 0054F40A    dd          0054F45F
 0054F40A    dd          0054F467
 0054F40A    dd          0054F46F
 0054F40A    dd          0054F477
 0054F40A    dd          0054F47F
 0054F447    mov         word ptr [ebp-0A],0
>0054F44D    jmp         0054F485
 0054F44F    mov         word ptr [ebp-0A],1
>0054F455    jmp         0054F485
 0054F457    mov         word ptr [ebp-0A],2
>0054F45D    jmp         0054F485
 0054F45F    mov         word ptr [ebp-0A],3
>0054F465    jmp         0054F485
 0054F467    mov         word ptr [ebp-0A],4
>0054F46D    jmp         0054F485
 0054F46F    mov         word ptr [ebp-0A],5
>0054F475    jmp         0054F485
 0054F477    mov         word ptr [ebp-0A],6
>0054F47D    jmp         0054F485
 0054F47F    mov         word ptr [ebp-0A],7
 0054F485    lea         eax,[ebp-4C]
 0054F488    push        eax
 0054F489    movzx       eax,word ptr [ebp-0A]
 0054F48D    mov         dword ptr [ebp-74],eax
 0054F490    mov         byte ptr [ebp-70],0
 0054F494    mov         eax,dword ptr [ebp-18]
 0054F497    add         eax,dword ptr [ebp-1C]
 0054F49A    mov         dword ptr [ebp-6C],eax
 0054F49D    mov         byte ptr [ebp-68],0
 0054F4A1    mov         eax,dword ptr [ebp-18]
 0054F4A4    mov         dword ptr [ebp-64],eax
 0054F4A7    mov         byte ptr [ebp-60],0
 0054F4AB    mov         eax,dword ptr [ebp-1C]
 0054F4AE    mov         dword ptr [ebp-5C],eax
 0054F4B1    mov         byte ptr [ebp-58],0
 0054F4B5    push        0
 0054F4B7    push        18
 0054F4B9    mov         eax,dword ptr [ebp-4]
 0054F4BC    mov         edx,dword ptr [eax]
 0054F4BE    call        dword ptr [edx]
 0054F4C0    call        @_lldiv
 0054F4C5    sub         eax,3
 0054F4C8    sbb         edx,0
 0054F4CB    mov         dword ptr [ebp-7C],eax
 0054F4CE    mov         dword ptr [ebp-78],edx
 0054F4D1    lea         eax,[ebp-7C]
 0054F4D4    mov         dword ptr [ebp-54],eax
 0054F4D7    mov         byte ptr [ebp-50],10
 0054F4DB    lea         edx,[ebp-74]
 0054F4DE    mov         ecx,4
 0054F4E3    mov         eax,54F5C8;'Head %-1d = %-7d ( Tracks: %-7d, Sectors: %-7d, Max: %-7d)'
 0054F4E8    call        0040D630
 0054F4ED    mov         edx,dword ptr [ebp-4C]
 0054F4F0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F4F5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F4FB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F501    mov         ecx,dword ptr [eax]
 0054F503    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F506    push        11
 0054F508    call        user32.GetKeyState
 0054F50D    test        ax,ax
>0054F510    jge         0054F52A
 0054F512    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F517    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F51D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F523    xor         edx,edx
 0054F525    mov         ecx,dword ptr [eax]
 0054F527    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F52A    xor         eax,eax
 0054F52C    pop         edx
 0054F52D    pop         ecx
 0054F52E    pop         ecx
 0054F52F    mov         dword ptr fs:[eax],edx
 0054F532    push        54F54C
 0054F537    lea         eax,[ebp-4C]
 0054F53A    mov         edx,0B
 0054F53F    call        @LStrArrayClr
 0054F544    ret
>0054F545    jmp         @HandleFinally
>0054F54A    jmp         0054F537
 0054F54C    pop         ebx
 0054F54D    mov         esp,ebp
 0054F54F    pop         ebp
 0054F550    ret
*}
end;

//0054F604
procedure TfmHDD.miViewSSStatisticClick(Sender:TObject);
begin
{*
 0054F604    push        ebp
 0054F605    mov         ebp,esp
 0054F607    add         esp,0FFFFFFF0
 0054F60A    mov         dword ptr [ebp-10],edx
 0054F60D    mov         dword ptr [ebp-4],eax
 0054F610    mov         eax,[0056E5A4];^gvar_0056DF04
 0054F615    mov         byte ptr [eax],0
 0054F618    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F61D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F623    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F629    mov         edx,54F72C;'SPT Defect Statistical Chart'
 0054F62E    mov         ecx,dword ptr [eax]
 0054F630    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F633    mov         dl,1
 0054F635    mov         eax,[0041DE14];TMemoryStream
 0054F63A    call        TObject.Create;TMemoryStream.Create
 0054F63F    mov         dword ptr [ebp-8],eax
 0054F642    xor         eax,eax
 0054F644    push        ebp
 0054F645    push        54F718
 0054F64A    push        dword ptr fs:[eax]
 0054F64D    mov         dword ptr fs:[eax],esp
 0054F650    mov         word ptr [ebp-0A],0
>0054F656    jmp         0054F6ED
 0054F65B    movzx       eax,word ptr [ebp-0A]
 0054F65F    cmp         eax,7
>0054F662    ja          0054F6CB
 0054F664    jmp         dword ptr [eax*4+54F66B]
 0054F664    dd          0054F68B
 0054F664    dd          0054F693
 0054F664    dd          0054F69B
 0054F664    dd          0054F6A3
 0054F664    dd          0054F6AB
 0054F664    dd          0054F6B3
 0054F664    dd          0054F6BB
 0054F664    dd          0054F6C3
 0054F68B    mov         word ptr [ebp-0C],0E0
>0054F691    jmp         0054F6D1
 0054F693    mov         word ptr [ebp-0C],0E1
>0054F699    jmp         0054F6D1
 0054F69B    mov         word ptr [ebp-0C],0E2
>0054F6A1    jmp         0054F6D1
 0054F6A3    mov         word ptr [ebp-0C],0E3
>0054F6A9    jmp         0054F6D1
 0054F6AB    mov         word ptr [ebp-0C],0E4
>0054F6B1    jmp         0054F6D1
 0054F6B3    mov         word ptr [ebp-0C],0E5
>0054F6B9    jmp         0054F6D1
 0054F6BB    mov         word ptr [ebp-0C],0F0
>0054F6C1    jmp         0054F6D1
 0054F6C3    mov         word ptr [ebp-0C],0F1
>0054F6C9    jmp         0054F6D1
 0054F6CB    mov         word ptr [ebp-0C],0E0
 0054F6D1    mov         edx,dword ptr [ebp-8]
 0054F6D4    mov         ax,word ptr [ebp-0C]
 0054F6D8    call        005095B8
 0054F6DD    test        al,al
>0054F6DF    je          0054F6E9
 0054F6E1    mov         eax,dword ptr [ebp-8]
 0054F6E4    call        0054F0BC
 0054F6E9    inc         word ptr [ebp-0A]
 0054F6ED    cmp         word ptr [ebp-0A],8
>0054F6F2    jae         0054F702
 0054F6F4    mov         eax,[0056E5A4];^gvar_0056DF04
 0054F6F9    cmp         byte ptr [eax],0
>0054F6FC    je          0054F65B
 0054F702    xor         eax,eax
 0054F704    pop         edx
 0054F705    pop         ecx
 0054F706    pop         ecx
 0054F707    mov         dword ptr fs:[eax],edx
 0054F70A    push        54F71F
 0054F70F    mov         eax,dword ptr [ebp-8]
 0054F712    call        TObject.Free
 0054F717    ret
>0054F718    jmp         @HandleFinally
>0054F71D    jmp         0054F70F
 0054F71F    mov         esp,ebp
 0054F721    pop         ebp
 0054F722    ret
*}
end;

//0054F74C
procedure TfmHDD.miEditPListClick(Sender:TObject);
begin
{*
 0054F74C    push        ebp
 0054F74D    mov         ebp,esp
 0054F74F    add         esp,0FFFFFFF8
 0054F752    mov         dword ptr [ebp-8],edx
 0054F755    mov         dword ptr [ebp-4],eax
 0054F758    mov         ecx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F75E    mov         dx,33
 0054F762    mov         eax,[004F80C0];TfmDefectsEditor
 0054F767    call        004F84F0
 0054F76C    pop         ecx
 0054F76D    pop         ecx
 0054F76E    pop         ebp
 0054F76F    ret
*}
end;

//0054F770
procedure TfmHDD.miEditGListClick(Sender:TObject);
begin
{*
 0054F770    push        ebp
 0054F771    mov         ebp,esp
 0054F773    add         esp,0FFFFFFF8
 0054F776    mov         dword ptr [ebp-8],edx
 0054F779    mov         dword ptr [ebp-4],eax
 0054F77C    mov         ecx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F782    mov         dx,34
 0054F786    mov         eax,[004F80C0];TfmDefectsEditor
 0054F78B    call        004F84F0
 0054F790    pop         ecx
 0054F791    pop         ecx
 0054F792    pop         ebp
 0054F793    ret
*}
end;

//0054F794
procedure TfmHDD.miServoTestClick(Sender:TObject);
begin
{*
 0054F794    push        ebp
 0054F795    mov         ebp,esp
 0054F797    add         esp,0FFFFFFF8
 0054F79A    mov         dword ptr [ebp-8],edx
 0054F79D    mov         dword ptr [ebp-4],eax
 0054F7A0    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F7A6    mov         eax,[0052A900];TfmServoTest
 0054F7AB    call        0052ABCC
 0054F7B0    pop         ecx
 0054F7B1    pop         ecx
 0054F7B2    pop         ebp
 0054F7B3    ret
*}
end;

//0054F7B4
procedure TfmHDD.miLogicalTestClick(Sender:TObject);
begin
{*
 0054F7B4    push        ebp
 0054F7B5    mov         ebp,esp
 0054F7B7    add         esp,0FFFFFFF8
 0054F7BA    mov         dword ptr [ebp-8],edx
 0054F7BD    mov         dword ptr [ebp-4],eax
 0054F7C0    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F7C6    mov         eax,[0052C12C];TfmLogicalTest
 0054F7CB    call        0052C74C
 0054F7D0    pop         ecx
 0054F7D1    pop         ecx
 0054F7D2    pop         ebp
 0054F7D3    ret
*}
end;

//0054F7D4
procedure TfmHDD.miID47Creater1Click(Sender:TObject);
begin
{*
 0054F7D4    push        ebp
 0054F7D5    mov         ebp,esp
 0054F7D7    add         esp,0FFFFFFF8
 0054F7DA    mov         dword ptr [ebp-8],edx
 0054F7DD    mov         dword ptr [ebp-4],eax
 0054F7E0    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F7E6    mov         eax,[0052EB48];TfmCreater
 0054F7EB    call        0052F070
 0054F7F0    pop         ecx
 0054F7F1    pop         ecx
 0054F7F2    pop         ebp
 0054F7F3    ret
*}
end;

//0054F7F4
{*procedure TfmHDD.miCorrectRoadMapClick(?:?);
begin
 0054F7F4    push        ebp
 0054F7F5    mov         ebp,esp
 0054F7F7    add         esp,0FFFFFFF8
 0054F7FA    mov         dword ptr [ebp-8],edx
 0054F7FD    mov         dword ptr [ebp-4],eax
 0054F800    call        005083D8
 0054F805    pop         ecx
 0054F806    pop         ecx
 0054F807    pop         ebp
 0054F808    ret
end;*}

//0054F80C
procedure TfmHDD.miViewDefectsGraph1Click(Sender:TObject);
begin
{*
 0054F80C    push        ebp
 0054F80D    mov         ebp,esp
 0054F80F    add         esp,0FFFFFFF8
 0054F812    mov         dword ptr [ebp-8],edx
 0054F815    mov         dword ptr [ebp-4],eax
 0054F818    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0054F81E    mov         eax,[00530E98];TfmViewDef
 0054F823    call        005311B4
 0054F828    pop         ecx
 0054F829    pop         ecx
 0054F82A    pop         ebp
 0054F82B    ret
*}
end;

//0054F82C
procedure TfmHDD.miFactoryDcmClick(Sender:TObject);
begin
{*
 0054F82C    push        ebp
 0054F82D    mov         ebp,esp
 0054F82F    mov         ecx,6
 0054F834    push        0
 0054F836    push        0
 0054F838    dec         ecx
>0054F839    jne         0054F834
 0054F83B    mov         dword ptr [ebp-8],edx
 0054F83E    mov         dword ptr [ebp-4],eax
 0054F841    xor         eax,eax
 0054F843    push        ebp
 0054F844    push        54F98D
 0054F849    push        dword ptr fs:[eax]
 0054F84C    mov         dword ptr fs:[eax],esp
 0054F84F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F854    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F85A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F860    xor         edx,edx
 0054F862    mov         ecx,dword ptr [eax]
 0054F864    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F867    lea         edx,[ebp-10]
 0054F86A    xor         eax,eax
 0054F86C    call        004F7058
 0054F871    mov         ecx,dword ptr [ebp-10]
 0054F874    lea         eax,[ebp-0C]
 0054F877    mov         edx,54F9A0;'CFG Main:             '
 0054F87C    call        @LStrCat3
 0054F881    mov         edx,dword ptr [ebp-0C]
 0054F884    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F889    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F88F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F895    mov         ecx,dword ptr [eax]
 0054F897    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F89A    lea         edx,[ebp-18]
 0054F89D    mov         eax,1
 0054F8A2    call        004F7058
 0054F8A7    mov         ecx,dword ptr [ebp-18]
 0054F8AA    lea         eax,[ebp-14]
 0054F8AD    mov         edx,54F9C0;'CFG Original:         '
 0054F8B2    call        @LStrCat3
 0054F8B7    mov         edx,dword ptr [ebp-14]
 0054F8BA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F8BF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F8C5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F8CB    mov         ecx,dword ptr [eax]
 0054F8CD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F8D0    lea         edx,[ebp-20]
 0054F8D3    mov         eax,2
 0054F8D8    call        004F7058
 0054F8DD    mov         ecx,dword ptr [ebp-20]
 0054F8E0    lea         eax,[ebp-1C]
 0054F8E3    mov         edx,54F9E0;'CFG Final:            '
 0054F8E8    call        @LStrCat3
 0054F8ED    mov         edx,dword ptr [ebp-1C]
 0054F8F0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F8F5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F8FB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F901    mov         ecx,dword ptr [eax]
 0054F903    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F906    lea         edx,[ebp-28]
 0054F909    mov         eax,3
 0054F90E    call        004F7058
 0054F913    mov         ecx,dword ptr [ebp-28]
 0054F916    lea         eax,[ebp-24]
 0054F919    mov         edx,54FA00;'CFG Original + DTemp: '
 0054F91E    call        @LStrCat3
 0054F923    mov         edx,dword ptr [ebp-24]
 0054F926    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F92B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F931    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F937    mov         ecx,dword ptr [eax]
 0054F939    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F93C    lea         edx,[ebp-30]
 0054F93F    mov         eax,4
 0054F944    call        004F7058
 0054F949    mov         ecx,dword ptr [ebp-30]
 0054F94C    lea         eax,[ebp-2C]
 0054F94F    mov         edx,54FA20;'ID47:                         '
 0054F954    call        @LStrCat3
 0054F959    mov         edx,dword ptr [ebp-2C]
 0054F95C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0054F961    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0054F967    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0054F96D    mov         ecx,dword ptr [eax]
 0054F96F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0054F972    xor         eax,eax
 0054F974    pop         edx
 0054F975    pop         ecx
 0054F976    pop         ecx
 0054F977    mov         dword ptr fs:[eax],edx
 0054F97A    push        54F994
 0054F97F    lea         eax,[ebp-30]
 0054F982    mov         edx,0A
 0054F987    call        @LStrArrayClr
 0054F98C    ret
>0054F98D    jmp         @HandleFinally
>0054F992    jmp         0054F97F
 0054F994    mov         esp,ebp
 0054F996    pop         ebp
 0054F997    ret
*}
end;

//0054FA40
procedure TfmHDD.miSelfScanStartClick(Sender:TObject);
begin
{*
 0054FA40    push        ebp
 0054FA41    mov         ebp,esp
 0054FA43    add         esp,0FFFFFFF8
 0054FA46    mov         dword ptr [ebp-8],edx
 0054FA49    mov         dword ptr [ebp-4],eax
 0054FA4C    mov         ax,1
 0054FA50    call        004D09C0
 0054FA55    test        al,al
>0054FA57    je          0054FA76
 0054FA59    mov         eax,54FA8C;'Enable PST Mode - OK'
 0054FA5E    call        00544EB4
 0054FA63    mov         eax,54FAAC;'SelfScan has been started!'+#10+Plese replug device power.'+#10+Or press "Su...
 0054FA68    call        0043F8B4
 0054FA6D    xor         eax,eax
 0054FA6F    call        004CED14
>0054FA74    jmp         0054FA80
 0054FA76    mov         eax,54FB04;'Enable PST Mode - '
 0054FA7B    call        00544F6C
 0054FA80    pop         ecx
 0054FA81    pop         ecx
 0054FA82    pop         ebp
 0054FA83    ret
*}
end;

//0054FB18
procedure TfmHDD.miSelfScanStopClick(Sender:TObject);
begin
{*
 0054FB18    push        ebp
 0054FB19    mov         ebp,esp
 0054FB1B    add         esp,0FFFFFFF8
 0054FB1E    mov         dword ptr [ebp-8],edx
 0054FB21    mov         dword ptr [ebp-4],eax
 0054FB24    mov         ax,2
 0054FB28    call        004D09C0
 0054FB2D    test        al,al
>0054FB2F    je          0054FB3D
 0054FB31    mov         eax,54FB54;'Disable PST Mode - OK'
 0054FB36    call        00544EB4
>0054FB3B    jmp         0054FB47
 0054FB3D    mov         eax,54FB74;'Disable PST Mode - '
 0054FB42    call        00544F6C
 0054FB47    pop         ecx
 0054FB48    pop         ecx
 0054FB49    pop         ebp
 0054FB4A    ret
*}
end;

//0054FB88
procedure TfmHDD.miClearSSLogsClick(Sender:TObject);
begin
{*
 0054FB88    push        ebp
 0054FB89    mov         ebp,esp
 0054FB8B    xor         ecx,ecx
 0054FB8D    push        ecx
 0054FB8E    push        ecx
 0054FB8F    push        ecx
 0054FB90    push        ecx
 0054FB91    push        ecx
 0054FB92    push        ecx
 0054FB93    push        ecx
 0054FB94    mov         dword ptr [ebp-10],edx
 0054FB97    mov         dword ptr [ebp-4],eax
 0054FB9A    xor         eax,eax
 0054FB9C    push        ebp
 0054FB9D    push        54FD1A
 0054FBA2    push        dword ptr fs:[eax]
 0054FBA5    mov         dword ptr fs:[eax],esp
 0054FBA8    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FBAD    mov         byte ptr [eax],0
 0054FBB0    xor         eax,eax
 0054FBB2    mov         dword ptr [ebp-8],eax
 0054FBB5    mov         eax,54FD30;'SelfScan Modules Clear - Start'
 0054FBBA    call        00544EB4
 0054FBBF    push        18
 0054FBC1    xor         ecx,ecx
 0054FBC3    mov         edx,54FD58;'Clear SelfScan Logs'
 0054FBC8    mov         eax,[004F7B20];TfmProgres
 0054FBCD    call        004F7D0C
>0054FBD2    jmp         0054FC6E
 0054FBD7    mov         eax,dword ptr [ebp-8]
 0054FBDA    mov         ax,word ptr [eax*2+56DEB0]
 0054FBE2    call        005077AC
 0054FBE7    mov         eax,[0056E3F8];^gvar_0059BF4C
 0054FBEC    cmp         byte ptr [eax],0
>0054FBEF    je          0054FC18
 0054FBF1    mov         eax,[0056E270];^gvar_00571EC0
 0054FBF6    cmp         word ptr [eax+18],3701
>0054FBFC    je          0054FC18
 0054FBFE    mov         eax,[0056E270];^gvar_00571EC0
 0054FC03    cmp         word ptr [eax+18],3743
>0054FC09    je          0054FC18
 0054FC0B    mov         eax,[0056E270];^gvar_00571EC0
 0054FC10    cmp         word ptr [eax+18],3746
>0054FC16    jne         0054FC22
 0054FC18    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FC1D    cmp         byte ptr [eax],0
>0054FC20    je          0054FC5C
 0054FC22    push        54FD74;'Module '
 0054FC27    lea         ecx,[ebp-18]
 0054FC2A    mov         eax,dword ptr [ebp-8]
 0054FC2D    movzx       eax,word ptr [eax*2+56DEB0]
 0054FC35    mov         edx,2
 0054FC3A    call        IntToHex
 0054FC3F    push        dword ptr [ebp-18]
 0054FC42    push        54FD84;' clear - '
 0054FC47    lea         eax,[ebp-14]
 0054FC4A    mov         edx,3
 0054FC4F    call        @LStrCatN
 0054FC54    mov         eax,dword ptr [ebp-14]
 0054FC57    call        00544F6C
 0054FC5C    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FC61    mov         eax,dword ptr [eax]
 0054FC63    mov         edx,dword ptr [ebp-8]
 0054FC66    call        004F7E2C
 0054FC6B    inc         dword ptr [ebp-8]
 0054FC6E    cmp         dword ptr [ebp-8],18
>0054FC72    jg          0054FC82
 0054FC74    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FC79    cmp         byte ptr [eax],0
>0054FC7C    je          0054FBD7
 0054FC82    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FC87    cmp         byte ptr [eax],0
>0054FC8A    jne         0054FCF7
 0054FC8C    mov         eax,54FD98;'SelfScan Modules Clear - End'
 0054FC91    call        00544EB4
 0054FC96    mov         ax,1
 0054FC9A    call        00508448
 0054FC9F    test        al,al
>0054FCA1    je          0054FCB2
 0054FCA3    lea         eax,[ebp-0C]
 0054FCA6    mov         edx,54FDC0;'OK'
 0054FCAB    call        @LStrLAsg
>0054FCB0    jmp         0054FCBF
 0054FCB2    lea         eax,[ebp-0C]
 0054FCB5    mov         edx,54FDCC;'Error'
 0054FCBA    call        @LStrLAsg
 0054FCBF    lea         eax,[ebp-1C]
 0054FCC2    mov         ecx,dword ptr [ebp-0C]
 0054FCC5    mov         edx,54FDDC;'Set SelfScan Step to Start - '
 0054FCCA    call        @LStrCat3
 0054FCCF    mov         eax,dword ptr [ebp-1C]
 0054FCD2    call        00544EB4
 0054FCD7    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FCDC    cmp         byte ptr [eax],0
>0054FCDF    jne         0054FCF7
 0054FCE1    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FCE6    cmp         dword ptr [eax],0
>0054FCE9    je          0054FCF7
 0054FCEB    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FCF0    mov         eax,dword ptr [eax]
 0054FCF2    call        004A7264
 0054FCF7    xor         eax,eax
 0054FCF9    pop         edx
 0054FCFA    pop         ecx
 0054FCFB    pop         ecx
 0054FCFC    mov         dword ptr fs:[eax],edx
 0054FCFF    push        54FD21
 0054FD04    lea         eax,[ebp-1C]
 0054FD07    mov         edx,3
 0054FD0C    call        @LStrArrayClr
 0054FD11    lea         eax,[ebp-0C]
 0054FD14    call        @LStrClr
 0054FD19    ret
>0054FD1A    jmp         @HandleFinally
>0054FD1F    jmp         0054FD04
 0054FD21    mov         esp,ebp
 0054FD23    pop         ebp
 0054FD24    ret
*}
end;

//0054FDFC
procedure TfmHDD.miRepairSsModulesClick(Sender:TObject);
begin
{*
 0054FDFC    push        ebp
 0054FDFD    mov         ebp,esp
 0054FDFF    xor         ecx,ecx
 0054FE01    push        ecx
 0054FE02    push        ecx
 0054FE03    push        ecx
 0054FE04    push        ecx
 0054FE05    push        ecx
 0054FE06    push        ecx
 0054FE07    push        ecx
 0054FE08    mov         dword ptr [ebp-0C],edx
 0054FE0B    mov         dword ptr [ebp-4],eax
 0054FE0E    xor         eax,eax
 0054FE10    push        ebp
 0054FE11    push        550025
 0054FE16    push        dword ptr fs:[eax]
 0054FE19    mov         dword ptr fs:[eax],esp
 0054FE1C    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FE21    mov         byte ptr [eax],0
 0054FE24    mov         eax,550038;'SelfScan Modules Repair - Start'
 0054FE29    call        00544EB4
 0054FE2E    mov         dword ptr [ebp-8],1
 0054FE35    push        7
 0054FE37    mov         ecx,dword ptr [ebp-8]
 0054FE3A    mov         edx,550060;'Repair SelfScan Surface Log'
 0054FE3F    mov         eax,[004F7B20];TfmProgres
 0054FE44    call        004F7D0C
 0054FE49    mov         ax,[0056DEE4];0xE0 gvar_0056DEE4
 0054FE4F    call        005077AC
>0054FE54    jmp         0054FEDC
 0054FE59    mov         eax,dword ptr [ebp-8]
 0054FE5C    mov         dx,word ptr [eax*2+56DEE4];gvar_0056DEE4
 0054FE64    mov         ax,[0056DEE4];0xE0 gvar_0056DEE4
 0054FE6A    call        005078AC
 0054FE6F    mov         eax,[0056E3F8];^gvar_0059BF4C
 0054FE74    cmp         byte ptr [eax],0
>0054FE77    je          0054FE86
 0054FE79    mov         eax,[0056E270];^gvar_00571EC0
 0054FE7E    cmp         word ptr [eax+18],3701
>0054FE84    jne         0054FE90
 0054FE86    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FE8B    cmp         byte ptr [eax],0
>0054FE8E    je          0054FECA
 0054FE90    push        550084;'Repair module '
 0054FE95    lea         ecx,[ebp-14]
 0054FE98    mov         eax,dword ptr [ebp-8]
 0054FE9B    movzx       eax,word ptr [eax*2+56DEE4];gvar_0056DEE4
 0054FEA3    mov         edx,2
 0054FEA8    call        IntToHex
 0054FEAD    push        dword ptr [ebp-14]
 0054FEB0    push        55009C;' - '
 0054FEB5    lea         eax,[ebp-10]
 0054FEB8    mov         edx,3
 0054FEBD    call        @LStrCatN
 0054FEC2    mov         eax,dword ptr [ebp-10]
 0054FEC5    call        00544F6C
 0054FECA    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FECF    mov         eax,dword ptr [eax]
 0054FED1    mov         edx,dword ptr [ebp-8]
 0054FED4    call        004F7E2C
 0054FED9    inc         dword ptr [ebp-8]
 0054FEDC    cmp         dword ptr [ebp-8],7
>0054FEE0    jg          0054FEF0
 0054FEE2    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FEE7    cmp         byte ptr [eax],0
>0054FEEA    je          0054FE59
 0054FEF0    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FEF5    cmp         byte ptr [eax],0
>0054FEF8    jne         0054FF10
 0054FEFA    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FEFF    cmp         dword ptr [eax],0
>0054FF02    je          0054FF10
 0054FF04    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FF09    mov         eax,dword ptr [eax]
 0054FF0B    call        004A7264
 0054FF10    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FF15    cmp         byte ptr [eax],0
>0054FF18    jne         0055000A
 0054FF1E    mov         dword ptr [ebp-8],1
 0054FF25    push        7
 0054FF27    mov         ecx,dword ptr [ebp-8]
 0054FF2A    mov         edx,5500A8;'Repair SelfScan PES Data Log'
 0054FF2F    mov         eax,[004F7B20];TfmProgres
 0054FF34    call        004F7D0C
 0054FF39    mov         ax,[0056DEF4];0xE8 gvar_0056DEF4
 0054FF3F    call        005077AC
>0054FF44    jmp         0054FFCC
 0054FF49    mov         eax,dword ptr [ebp-8]
 0054FF4C    mov         dx,word ptr [eax*2+56DEF4];gvar_0056DEF4
 0054FF54    mov         ax,[0056DEF4];0xE8 gvar_0056DEF4
 0054FF5A    call        005078AC
 0054FF5F    mov         eax,[0056E3F8];^gvar_0059BF4C
 0054FF64    cmp         byte ptr [eax],0
>0054FF67    je          0054FF76
 0054FF69    mov         eax,[0056E270];^gvar_00571EC0
 0054FF6E    cmp         word ptr [eax+18],3701
>0054FF74    jne         0054FF80
 0054FF76    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FF7B    cmp         byte ptr [eax],0
>0054FF7E    je          0054FFBA
 0054FF80    push        550084;'Repair module '
 0054FF85    lea         ecx,[ebp-1C]
 0054FF88    mov         eax,dword ptr [ebp-8]
 0054FF8B    movzx       eax,word ptr [eax*2+56DEF4];gvar_0056DEF4
 0054FF93    mov         edx,2
 0054FF98    call        IntToHex
 0054FF9D    push        dword ptr [ebp-1C]
 0054FFA0    push        55009C;' - '
 0054FFA5    lea         eax,[ebp-18]
 0054FFA8    mov         edx,3
 0054FFAD    call        @LStrCatN
 0054FFB2    mov         eax,dword ptr [ebp-18]
 0054FFB5    call        00544F6C
 0054FFBA    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FFBF    mov         eax,dword ptr [eax]
 0054FFC1    mov         edx,dword ptr [ebp-8]
 0054FFC4    call        004F7E2C
 0054FFC9    inc         dword ptr [ebp-8]
 0054FFCC    cmp         dword ptr [ebp-8],7
>0054FFD0    jg          0054FFE0
 0054FFD2    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FFD7    cmp         byte ptr [eax],0
>0054FFDA    je          0054FF49
 0054FFE0    mov         eax,[0056E5A4];^gvar_0056DF04
 0054FFE5    cmp         byte ptr [eax],0
>0054FFE8    jne         00550000
 0054FFEA    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FFEF    cmp         dword ptr [eax],0
>0054FFF2    je          00550000
 0054FFF4    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0054FFF9    mov         eax,dword ptr [eax]
 0054FFFB    call        004A7264
 00550000    mov         eax,5500D0;'SelfScan Modules Repair - End'
 00550005    call        00544EB4
 0055000A    xor         eax,eax
 0055000C    pop         edx
 0055000D    pop         ecx
 0055000E    pop         ecx
 0055000F    mov         dword ptr fs:[eax],edx
 00550012    push        55002C
 00550017    lea         eax,[ebp-1C]
 0055001A    mov         edx,4
 0055001F    call        @LStrArrayClr
 00550024    ret
>00550025    jmp         @HandleFinally
>0055002A    jmp         00550017
 0055002C    mov         esp,ebp
 0055002E    pop         ebp
 0055002F    ret
*}
end;

//005500F0
procedure TfmHDD.miSSEditScriptClick(Sender:TObject);
begin
{*
 005500F0    push        ebp
 005500F1    mov         ebp,esp
 005500F3    add         esp,0FFFFFFF8
 005500F6    mov         dword ptr [ebp-8],edx
 005500F9    mov         dword ptr [ebp-4],eax
 005500FC    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00550102    mov         eax,[00535170];TfmScript
 00550107    call        005355E8
 0055010C    pop         ecx
 0055010D    pop         ecx
 0055010E    pop         ebp
 0055010F    ret
*}
end;

//00550110
procedure TfmHDD.miCalibratorClick(Sender:TObject);
begin
{*
 00550110    push        ebp
 00550111    mov         ebp,esp
 00550113    add         esp,0FFFFFFF8
 00550116    mov         dword ptr [ebp-8],edx
 00550119    mov         dword ptr [ebp-4],eax
 0055011C    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00550122    mov         eax,[00533014];TfmCalibrator
 00550127    call        00533394
 0055012C    pop         ecx
 0055012D    pop         ecx
 0055012E    pop         ebp
 0055012F    ret
*}
end;

//00550130
procedure TfmHDD.miMiniTestClick(Sender:TObject);
begin
{*
 00550130    push        ebp
 00550131    mov         ebp,esp
 00550133    add         esp,0FFFFFFF8
 00550136    mov         dword ptr [ebp-8],edx
 00550139    mov         dword ptr [ebp-4],eax
 0055013C    push        10
 0055013E    call        user32.GetKeyState
 00550143    test        ax,ax
>00550146    jge         0055018A
 00550148    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055014D    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00550153    add         eax,60;TOpenDialog.Filter:String
 00550156    mov         edx,5501EC;'Test-Mini|*DF.rpm|All|*.*'
 0055015B    call        @LStrAsg
 00550160    xor         ecx,ecx
 00550162    xor         edx,edx
 00550164    mov         ax,4
 00550168    call        00511AE8
 0055016D    mov         eax,550210;'Load TestMini to PST slot - '
 00550172    call        00544F6C
 00550177    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055017C    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00550182    add         eax,60;TOpenDialog.Filter:String
 00550185    call        @LStrClr
 0055018A    push        0
 0055018C    mov         cx,word ptr ds:[550230];0x3 gvar_00550230
 00550193    xor         edx,edx
 00550195    mov         eax,55023C;'Start Test-Mini !'+#10+Are You sure?'
 0055019A    call        0043F788
 0055019F    cmp         eax,6
>005501A2    jne         005501DD
 005501A4    mov         eax,550264;'Test-Mini - Start'
 005501A9    call        00544EB4
 005501AE    call        004CED2C
 005501B3    push        1
 005501B5    push        0
 005501B7    push        0
 005501B9    push        0
 005501BB    push        0
 005501BD    mov         cx,0DF
 005501C1    mov         dx,4
 005501C5    mov         ax,19
 005501C9    call        004CE5F4
 005501CE    call        004CEB6C
 005501D3    mov         eax,550280;'Test-Mini End - '
 005501D8    call        00544F6C
 005501DD    pop         ecx
 005501DE    pop         ecx
 005501DF    pop         ebp
 005501E0    ret
*}
end;

//00550294
procedure TfmHDD.miTest_6BClick(Sender:TObject);
begin
{*
 00550294    push        ebp
 00550295    mov         ebp,esp
 00550297    add         esp,0FFFFFFF8
 0055029A    mov         dword ptr [ebp-8],edx
 0055029D    mov         dword ptr [ebp-4],eax
 005502A0    push        10
 005502A2    call        user32.GetKeyState
 005502A7    test        ax,ax
>005502AA    jge         005502EE
 005502AC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005502B1    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 005502B7    add         eax,60;TOpenDialog.Filter:String
 005502BA    mov         edx,550354;'Test-6B|*6B.rpm|All|*.*'
 005502BF    call        @LStrAsg
 005502C4    xor         ecx,ecx
 005502C6    xor         edx,edx
 005502C8    mov         ax,4
 005502CC    call        00511AE8
 005502D1    mov         eax,550374;'Load Test-6B to PST slot - '
 005502D6    call        00544F6C
 005502DB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005502E0    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 005502E6    add         eax,60;TOpenDialog.Filter:String
 005502E9    call        @LStrClr
 005502EE    mov         eax,550398;'Test-6B - Start'
 005502F3    call        00544EB4
 005502F8    call        004CED2C
 005502FD    push        1
 005502FF    push        0
 00550301    push        0
 00550303    push        0
 00550305    push        0
 00550307    push        0
 00550309    push        0
 0055030B    push        0FFFF
 00550310    push        0FFFF
 00550315    push        0FFFF
 0055031A    push        0
 0055031C    push        0
 0055031E    push        0
 00550320    mov         cx,6B
 00550324    mov         dx,3
 00550328    mov         ax,19
 0055032C    call        004CE82C
 00550331    mov         al,1
 00550333    call        004CED14
 00550338    call        004CCA5C
 0055033D    mov         eax,5503B0;'IBI Test-6B End - '
 00550342    call        00544F6C
 00550347    pop         ecx
 00550348    pop         ecx
 00550349    pop         ebp
 0055034A    ret
*}
end;

//005503C4
{*procedure sub_005503C4(?:?; ?:?);
begin
 005503C4    push        ebp
 005503C5    mov         ebp,esp
 005503C7    add         esp,0FFFFFFF8
 005503CA    mov         dword ptr [ebp-8],edx
 005503CD    mov         byte ptr [ebp-1],al
 005503D0    xor         eax,eax
 005503D2    mov         al,byte ptr [ebp-1]
 005503D5    cmp         eax,19
>005503D8    ja          00550604
 005503DE    jmp         dword ptr [eax*4+5503E5]
 005503DE    dd          0055044D
 005503DE    dd          0055045A
 005503DE    dd          0055046C
 005503DE    dd          0055047E
 005503DE    dd          00550490
 005503DE    dd          005504A2
 005503DE    dd          005504B4
 005503DE    dd          005504C6
 005503DE    dd          005504D8
 005503DE    dd          005504EA
 005503DE    dd          005504FC
 005503DE    dd          0055050E
 005503DE    dd          00550520
 005503DE    dd          00550532
 005503DE    dd          00550544
 005503DE    dd          00550556
 005503DE    dd          00550568
 005503DE    dd          0055057A
 005503DE    dd          0055058C
 005503DE    dd          0055059B
 005503DE    dd          005505AA
 005503DE    dd          005505B9
 005503DE    dd          005505C8
 005503DE    dd          005505D7
 005503DE    dd          005505E6
 005503DE    dd          005505F5
 0055044D    mov         eax,dword ptr [ebp-8]
 00550450    call        @LStrClr
>00550455    jmp         0055060C
 0055045A    mov         eax,dword ptr [ebp-8]
 0055045D    mov         edx,550618;'Invalid Parameter'
 00550462    call        @LStrAsg
>00550467    jmp         0055060C
 0055046C    mov         eax,dword ptr [ebp-8]
 0055046F    mov         edx,550634;'Do Cal 49'
 00550474    call        @LStrAsg
>00550479    jmp         0055060C
 0055047E    mov         eax,dword ptr [ebp-8]
 00550481    mov         edx,550648;'Get File49'
 00550486    call        @LStrAsg
>0055048B    jmp         0055060C
 00550490    mov         eax,dword ptr [ebp-8]
 00550493    mov         edx,55065C;'Read File49'
 00550498    call        @LStrAsg
>0055049D    jmp         0055060C
 005504A2    mov         eax,dword ptr [ebp-8]
 005504A5    mov         edx,550670;'Do Cal Bias'
 005504AA    call        @LStrAsg
>005504AF    jmp         0055060C
 005504B4    mov         eax,dword ptr [ebp-8]
 005504B7    mov         edx,550684;'Do Cal Norm'
 005504BC    call        @LStrAsg
>005504C1    jmp         0055060C
 005504C6    mov         eax,dword ptr [ebp-8]
 005504C9    mov         edx,550698;'Do Cal Ident Mags'
 005504CE    call        @LStrAsg
>005504D3    jmp         0055060C
 005504D8    mov         eax,dword ptr [ebp-8]
 005504DB    mov         edx,5506B4;'Write File49'
 005504E0    call        @LStrAsg
>005504E5    jmp         0055060C
 005504EA    mov         eax,dword ptr [ebp-8]
 005504ED    mov         edx,5506CC;'Fail Cal 49'
 005504F2    call        @LStrAsg
>005504F7    jmp         0055060C
 005504FC    mov         eax,dword ptr [ebp-8]
 005504FF    mov         edx,5506E0;'File49 Not In Mem / Get Hdr49 fail'
 00550504    call        @LStrAsg
>00550509    jmp         0055060C
 0055050E    mov         eax,dword ptr [ebp-8]
 00550511    mov         edx,55070C;'GetFile49Fail'
 00550516    call        @LStrAsg
>0055051B    jmp         0055060C
 00550520    mov         eax,dword ptr [ebp-8]
 00550523    mov         edx,550724;'Do Cal Bias Fail'
 00550528    call        @LStrAsg
>0055052D    jmp         0055060C
 00550532    mov         eax,dword ptr [ebp-8]
 00550535    mov         edx,550740;'Do Cal Norm Fail'
 0055053A    call        @LStrAsg
>0055053F    jmp         0055060C
 00550544    mov         eax,dword ptr [ebp-8]
 00550547    mov         edx,55075C;'Do Cal Ident Mag Fail / DCM fail'
 0055054C    call        @LStrAsg
>00550551    jmp         0055060C
 00550556    mov         eax,dword ptr [ebp-8]
 00550559    mov         edx,550788;'Do Cal 4A'
 0055055E    call        @LStrAsg
>00550563    jmp         0055060C
 00550568    mov         eax,dword ptr [ebp-8]
 0055056B    mov         edx,55079C;'Get File4A'
 00550570    call        @LStrAsg
>00550575    jmp         0055060C
 0055057A    mov         eax,dword ptr [ebp-8]
 0055057D    mov         edx,5507B0;'Read File4A'
 00550582    call        @LStrAsg
>00550587    jmp         0055060C
 0055058C    mov         eax,dword ptr [ebp-8]
 0055058F    mov         edx,5507C4;'Do Cal Lin'
 00550594    call        @LStrAsg
>00550599    jmp         0055060C
 0055059B    mov         eax,dword ptr [ebp-8]
 0055059E    mov         edx,5507D8;'Write File4A'
 005505A3    call        @LStrAsg
>005505A8    jmp         0055060C
 005505AA    mov         eax,dword ptr [ebp-8]
 005505AD    mov         edx,550788;'Do Cal 4A'
 005505B2    call        @LStrAsg
>005505B7    jmp         0055060C
 005505B9    mov         eax,dword ptr [ebp-8]
 005505BC    mov         edx,5507F0;'File4A Not In Mem / Get Hdr4A fail'
 005505C1    call        @LStrAsg
>005505C6    jmp         0055060C
 005505C8    mov         eax,dword ptr [ebp-8]
 005505CB    mov         edx,55081C;'Get File4A Fail'
 005505D0    call        @LStrAsg
>005505D5    jmp         0055060C
 005505D7    mov         eax,dword ptr [ebp-8]
 005505DA    mov         edx,550834;'Do Cal Lin Fail'
 005505DF    call        @LStrAsg
>005505E4    jmp         0055060C
 005505E6    mov         eax,dword ptr [ebp-8]
 005505E9    mov         edx,55084C;'Done OK'
 005505EE    call        @LStrAsg
>005505F3    jmp         0055060C
 005505F5    mov         eax,dword ptr [ebp-8]
 005505F8    mov         edx,55085C;'Failed'
 005505FD    call        @LStrAsg
>00550602    jmp         0055060C
 00550604    mov         eax,dword ptr [ebp-8]
 00550607    call        @LStrClr
 0055060C    pop         ecx
 0055060D    pop         ecx
 0055060E    pop         ebp
 0055060F    ret
end;*}

//00550864
procedure TfmHDD.miPSCalTestClick(Sender:TObject);
begin
{*
 00550864    push        ebp
 00550865    mov         ebp,esp
 00550867    mov         ecx,9
 0055086C    push        0
 0055086E    push        0
 00550870    dec         ecx
>00550871    jne         0055086C
 00550873    push        ecx
 00550874    mov         dword ptr [ebp-0C],edx
 00550877    mov         dword ptr [ebp-4],eax
 0055087A    xor         eax,eax
 0055087C    push        ebp
 0055087D    push        550B8A
 00550882    push        dword ptr fs:[eax]
 00550885    mov         dword ptr fs:[eax],esp
 00550888    push        10
 0055088A    call        user32.GetKeyState
 0055088F    test        ax,ax
>00550892    jge         005508D6
 00550894    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550899    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055089F    add         eax,60;TOpenDialog.Filter:String
 005508A2    mov         edx,550BA0;'PS Cal Test|*B1.rpm|All|*.*'
 005508A7    call        @LStrAsg
 005508AC    xor         ecx,ecx
 005508AE    xor         edx,edx
 005508B0    mov         ax,4
 005508B4    call        00511AE8
 005508B9    mov         eax,550BC4;'Load PS Cal Test to PST slot - '
 005508BE    call        00544F6C
 005508C3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005508C8    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 005508CE    add         eax,60;TOpenDialog.Filter:String
 005508D1    call        @LStrClr
 005508D6    push        0
 005508D8    mov         cx,word ptr ds:[550BE4];0x3 gvar_00550BE4
 005508DF    xor         edx,edx
 005508E1    mov         eax,550BF0;'Start PS Cal Test !'+#10+Are You sure?'
 005508E6    call        0043F788
 005508EB    cmp         eax,6
>005508EE    jne         00550B6F
 005508F4    mov         eax,550C1C;'PS Cal Test - Start'
 005508F9    call        00544EB4
 005508FE    call        004CED2C
 00550903    push        0
 00550905    push        0
 00550907    push        0
 00550909    push        0
 0055090B    push        0
 0055090D    mov         cx,0B1
 00550911    mov         dx,4
 00550915    mov         ax,19
 00550919    call        004CE5F4
 0055091E    call        004CEB6C
 00550923    lea         ecx,[ebp-14]
 00550926    mov         eax,[0056E270];^gvar_00571EC0
 0055092B    movzx       eax,word ptr [eax+190]
 00550932    mov         edx,4
 00550937    call        IntToHex
 0055093C    mov         ecx,dword ptr [ebp-14]
 0055093F    lea         eax,[ebp-10]
 00550942    mov         edx,550C38;'PTM File ID         = '
 00550947    call        @LStrCat3
 0055094C    mov         edx,dword ptr [ebp-10]
 0055094F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550954    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055095A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550960    mov         ecx,dword ptr [eax]
 00550962    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550965    lea         ecx,[ebp-1C]
 00550968    mov         eax,[0056E270];^gvar_00571EC0
 0055096D    movzx       eax,word ptr [eax+192]
 00550974    mov         edx,4
 00550979    call        IntToHex
 0055097E    mov         ecx,dword ptr [ebp-1C]
 00550981    lea         eax,[ebp-18]
 00550984    mov         edx,550C58;'PTM Test ID         = '
 00550989    call        @LStrCat3
 0055098E    mov         edx,dword ptr [ebp-18]
 00550991    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550996    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055099C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005509A2    mov         ecx,dword ptr [eax]
 005509A4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005509A7    lea         ecx,[ebp-24]
 005509AA    mov         eax,[0056E270];^gvar_00571EC0
 005509AF    movzx       eax,word ptr [eax+194]
 005509B6    mov         edx,4
 005509BB    call        IntToHex
 005509C0    mov         ecx,dword ptr [ebp-24]
 005509C3    lea         eax,[ebp-20]
 005509C6    mov         edx,550C78;'Current VSC Command = '
 005509CB    call        @LStrCat3
 005509D0    mov         edx,dword ptr [ebp-20]
 005509D3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005509D8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005509DE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005509E4    mov         ecx,dword ptr [eax]
 005509E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005509E9    lea         ecx,[ebp-2C]
 005509EC    mov         eax,[0056E270];^gvar_00571EC0
 005509F1    movzx       eax,word ptr [eax+196]
 005509F8    mov         edx,4
 005509FD    call        IntToHex
 00550A02    mov         ecx,dword ptr [ebp-2C]
 00550A05    lea         eax,[ebp-28]
 00550A08    mov         edx,550C98;'Extended Error Code = '
 00550A0D    call        @LStrCat3
 00550A12    mov         edx,dword ptr [ebp-28]
 00550A15    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550A1A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00550A20    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550A26    mov         ecx,dword ptr [eax]
 00550A28    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550A2B    lea         ecx,[ebp-34]
 00550A2E    mov         eax,[0056E270];^gvar_00571EC0
 00550A33    movzx       eax,word ptr [eax+198]
 00550A3A    mov         edx,4
 00550A3F    call        IntToHex
 00550A44    mov         ecx,dword ptr [ebp-34]
 00550A47    lea         eax,[ebp-30]
 00550A4A    mov         edx,550CB8;'Ctlr Error Code     = '
 00550A4F    call        @LStrCat3
 00550A54    mov         edx,dword ptr [ebp-30]
 00550A57    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550A5C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00550A62    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550A68    mov         ecx,dword ptr [eax]
 00550A6A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550A6D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550A72    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00550A78    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550A7E    mov         edx,550CD8;'PTM Trace'
 00550A83    mov         ecx,dword ptr [eax]
 00550A85    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550A88    mov         dword ptr [ebp-8],0CD
 00550A8F    lea         ecx,[ebp-3C]
 00550A92    mov         eax,[0056E270];^gvar_00571EC0
 00550A97    mov         edx,dword ptr [ebp-8]
 00550A9A    movzx       eax,byte ptr [eax+edx*2]
 00550A9E    mov         edx,2
 00550AA3    call        IntToHex
 00550AA8    push        dword ptr [ebp-3C]
 00550AAB    push        550CEC;' '
 00550AB0    lea         edx,[ebp-40]
 00550AB3    mov         eax,[0056E270];^gvar_00571EC0
 00550AB8    mov         ecx,dword ptr [ebp-8]
 00550ABB    mov         al,byte ptr [eax+ecx*2]
 00550ABE    call        005503C4
 00550AC3    push        dword ptr [ebp-40]
 00550AC6    lea         eax,[ebp-38]
 00550AC9    mov         edx,3
 00550ACE    call        @LStrCatN
 00550AD3    mov         edx,dword ptr [ebp-38]
 00550AD6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550ADB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00550AE1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550AE7    mov         ecx,dword ptr [eax]
 00550AE9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550AEC    mov         eax,[0056E270];^gvar_00571EC0
 00550AF1    mov         edx,dword ptr [ebp-8]
 00550AF4    movzx       eax,word ptr [eax+edx*2]
 00550AF8    shr         eax,8
 00550AFB    and         eax,0FF
 00550B00    lea         ecx,[ebp-48]
 00550B03    mov         edx,2
 00550B08    call        IntToHex
 00550B0D    push        dword ptr [ebp-48]
 00550B10    push        550CEC;' '
 00550B15    mov         eax,[0056E270];^gvar_00571EC0
 00550B1A    mov         edx,dword ptr [ebp-8]
 00550B1D    movzx       eax,word ptr [eax+edx*2]
 00550B21    shr         eax,8
 00550B24    lea         edx,[ebp-4C]
 00550B27    call        005503C4
 00550B2C    push        dword ptr [ebp-4C]
 00550B2F    lea         eax,[ebp-44]
 00550B32    mov         edx,3
 00550B37    call        @LStrCatN
 00550B3C    mov         edx,dword ptr [ebp-44]
 00550B3F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550B44    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00550B4A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00550B50    mov         ecx,dword ptr [eax]
 00550B52    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00550B55    inc         dword ptr [ebp-8]
 00550B58    cmp         dword ptr [ebp-8],0D9
>00550B5F    jne         00550A8F
 00550B65    mov         eax,550CF8;'PS Cal Test End - '
 00550B6A    call        00544F6C
 00550B6F    xor         eax,eax
 00550B71    pop         edx
 00550B72    pop         ecx
 00550B73    pop         ecx
 00550B74    mov         dword ptr fs:[eax],edx
 00550B77    push        550B91
 00550B7C    lea         eax,[ebp-4C]
 00550B7F    mov         edx,10
 00550B84    call        @LStrArrayClr
 00550B89    ret
>00550B8A    jmp         @HandleFinally
>00550B8F    jmp         00550B7C
 00550B91    mov         esp,ebp
 00550B93    pop         ebp
 00550B94    ret
*}
end;

//00550D0C
{*procedure TfmHDD.miPSWRROTestClick(?:?);
begin
 00550D0C    push        ebp
 00550D0D    mov         ebp,esp
 00550D0F    add         esp,0FFFFFFF8
 00550D12    mov         dword ptr [ebp-8],edx
 00550D15    mov         dword ptr [ebp-4],eax
 00550D18    push        0
 00550D1A    mov         cx,word ptr ds:[550DC4];0x3 gvar_00550DC4
 00550D21    xor         edx,edx
 00550D23    mov         eax,550DD0;'Start PS WRRO Test !'+#10+Are You sure?'
 00550D28    call        0043F788
 00550D2D    cmp         eax,6
>00550D30    jne         00550DBD
 00550D36    push        10
 00550D38    call        user32.GetKeyState
 00550D3D    test        ax,ax
>00550D40    jge         00550D84
 00550D42    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550D47    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00550D4D    add         eax,60;TOpenDialog.Filter:String
 00550D50    mov         edx,550DFC;'PS WRRO Test|*B2.rpm|All|*.*'
 00550D55    call        @LStrAsg
 00550D5A    xor         ecx,ecx
 00550D5C    xor         edx,edx
 00550D5E    mov         ax,4
 00550D62    call        00511AE8
 00550D67    mov         eax,550E24;'Load PS WRRO Test to PST slot - '
 00550D6C    call        00544F6C
 00550D71    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00550D76    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00550D7C    add         eax,60;TOpenDialog.Filter:String
 00550D7F    call        @LStrClr
 00550D84    mov         eax,550E50;'PS WRRO Test - Start'
 00550D89    call        00544EB4
 00550D8E    call        004CED2C
 00550D93    push        1
 00550D95    push        0
 00550D97    push        0
 00550D99    push        0
 00550D9B    push        0
 00550D9D    mov         cx,0B2
 00550DA1    mov         dx,4
 00550DA5    mov         ax,19
 00550DA9    call        004CE5F4
 00550DAE    call        004CEB6C
 00550DB3    mov         eax,550E70;'PS W RRO Test End - '
 00550DB8    call        00544F6C
 00550DBD    pop         ecx
 00550DBE    pop         ecx
 00550DBF    pop         ebp
 00550DC0    ret
end;*}

//00550E88
{*procedure TfmHDD.miGetStatusClick(?:?);
begin
 00550E88    push        ebp
 00550E89    mov         ebp,esp
 00550E8B    add         esp,0FFFFFFF8
 00550E8E    mov         dword ptr [ebp-8],edx
 00550E91    mov         dword ptr [ebp-4],eax
 00550E94    call        004CEB6C
 00550E99    mov         eax,550EB0;'Current Status is - '
 00550E9E    call        00544F6C
 00550EA3    pop         ecx
 00550EA4    pop         ecx
 00550EA5    pop         ebp
 00550EA6    ret
end;*}

//00550EC8
procedure TfmHDD.miFormatSa1Click(Sender:TObject);
begin
{*
 00550EC8    push        ebp
 00550EC9    mov         ebp,esp
 00550ECB    add         esp,0FFFFFFEC
 00550ECE    push        ebx
 00550ECF    mov         dword ptr [ebp-14],edx
 00550ED2    mov         dword ptr [ebp-4],eax
 00550ED5    mov         dl,1
 00550ED7    mov         eax,[0041DE14];TMemoryStream
 00550EDC    call        TObject.Create;TMemoryStream.Create
 00550EE1    mov         dword ptr [ebp-8],eax
 00550EE4    xor         eax,eax
 00550EE6    push        ebp
 00550EE7    push        55103A
 00550EEC    push        dword ptr fs:[eax]
 00550EEF    mov         dword ptr fs:[eax],esp
 00550EF2    mov         edx,dword ptr [ebp-8]
 00550EF5    mov         ax,35
 00550EF9    call        005095B8
 00550EFE    test        al,al
>00550F00    je          0055101A
 00550F06    push        0
 00550F08    mov         cx,word ptr ds:[551048];0x3 gvar_00551048
 00550F0F    xor         edx,edx
 00550F11    mov         eax,551054;'Format Reserved Area!'+#10+Are You sure?'
 00550F16    call        0043F788
 00550F1B    cmp         eax,6
>00550F1E    jne         00551024
 00550F24    mov         eax,[0056E5A4];^gvar_0056DF04
 00550F29    mov         byte ptr [eax],0
 00550F2C    xor         ecx,ecx
 00550F2E    xor         edx,edx
 00550F30    mov         eax,dword ptr [ebp-8]
 00550F33    mov         ebx,dword ptr [eax]
 00550F35    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00550F38    push        0
 00550F3A    push        200
 00550F3F    mov         eax,dword ptr [ebp-8]
 00550F42    mov         edx,dword ptr [eax]
 00550F44    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00550F46    call        @_lldiv
 00550F4B    mov         word ptr [ebp-10],ax
 00550F4F    call        004CED2C
 00550F54    mov         ax,word ptr [ebp-10]
 00550F58    push        eax
 00550F59    push        0
 00550F5B    push        0
 00550F5D    push        0
 00550F5F    push        0
 00550F61    xor         ecx,ecx
 00550F63    mov         dx,1
 00550F67    mov         ax,18
 00550F6B    call        004CE5F4
 00550F70    mov         word ptr [ebp-0E],ax
 00550F74    mov         eax,[0056E1D4];^gvar_0056DF14
 00550F79    mov         ax,word ptr [eax]
 00550F7C    add         ax,3
 00550F80    call        0055FE3C
 00550F85    and         eax,0FF
 00550F8A    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 00550F90    mov         word ptr [edx+18],ax
 00550F94    mov         eax,[0056E270];^gvar_00571EC0
 00550F99    shl         word ptr [eax+18],8
 00550F9E    mov         eax,[0056E1D4];^gvar_0056DF14
 00550FA3    mov         ax,word ptr [eax]
 00550FA6    add         ax,2
 00550FAA    call        0055FE3C
 00550FAF    and         eax,0FF
 00550FB4    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 00550FBA    or          word ptr [edx+18],ax
 00550FBE    mov         eax,[0056E3F8];^gvar_0059BF4C
 00550FC3    cmp         byte ptr [eax],0
>00550FC6    jne         00551009
 00550FC8    mov         eax,[0056E5A4];^gvar_0056DF04
 00550FCD    cmp         byte ptr [eax],0
>00550FD0    jne         00551009
 00550FD2    mov         dword ptr [ebp-0C],1
>00550FD9    jmp         00550FF6
 00550FDB    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00550FE1    mov         ecx,200
 00550FE6    mov         eax,dword ptr [ebp-8]
 00550FE9    mov         ebx,dword ptr [eax]
 00550FEB    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00550FEE    call        004CEC08
 00550FF3    inc         dword ptr [ebp-0C]
 00550FF6    movzx       eax,word ptr [ebp-0E]
 00550FFA    cmp         eax,dword ptr [ebp-0C]
>00550FFD    jl          00551009
 00550FFF    mov         eax,[0056E5A4];^gvar_0056DF04
 00551004    cmp         byte ptr [eax],0
>00551007    je          00550FDB
 00551009    call        004CEB6C
 0055100E    mov         eax,551080;'Format Reserved Area - '
 00551013    call        00544F6C
>00551018    jmp         00551024
 0055101A    mov         eax,5510A0;'Error Reading Reserved Area Defects List (RP-List) - '
 0055101F    call        00544F6C
 00551024    xor         eax,eax
 00551026    pop         edx
 00551027    pop         ecx
 00551028    pop         ecx
 00551029    mov         dword ptr fs:[eax],edx
 0055102C    push        551041
 00551031    mov         eax,dword ptr [ebp-8]
 00551034    call        TObject.Free
 00551039    ret
>0055103A    jmp         @HandleFinally
>0055103F    jmp         00551031
 00551041    pop         ebx
 00551042    mov         esp,ebp
 00551044    pop         ebp
 00551045    ret
*}
end;

//005510D8
{*procedure TfmHDD.ReservedAreaQuick1Click(?:?);
begin
 005510D8    push        ebp
 005510D9    mov         ebp,esp
 005510DB    add         esp,0FFFFFFEC
 005510DE    push        ebx
 005510DF    mov         dword ptr [ebp-14],edx
 005510E2    mov         dword ptr [ebp-4],eax
 005510E5    mov         dl,1
 005510E7    mov         eax,[0041DE14];TMemoryStream
 005510EC    call        TObject.Create;TMemoryStream.Create
 005510F1    mov         dword ptr [ebp-8],eax
 005510F4    xor         eax,eax
 005510F6    push        ebp
 005510F7    push        55124C
 005510FC    push        dword ptr fs:[eax]
 005510FF    mov         dword ptr fs:[eax],esp
 00551102    mov         edx,dword ptr [ebp-8]
 00551105    mov         ax,35
 00551109    call        005095B8
 0055110E    test        al,al
>00551110    je          0055122C
 00551116    push        0
 00551118    mov         cx,word ptr ds:[551258];0x3 gvar_00551258
 0055111F    xor         edx,edx
 00551121    mov         eax,551264;'Quick Format Reserved Area!'+#10+Are You sure?'
 00551126    call        0043F788
 0055112B    cmp         eax,6
>0055112E    jne         00551236
 00551134    mov         eax,[0056E5A4];^gvar_0056DF04
 00551139    mov         byte ptr [eax],0
 0055113C    xor         ecx,ecx
 0055113E    xor         edx,edx
 00551140    mov         eax,dword ptr [ebp-8]
 00551143    mov         ebx,dword ptr [eax]
 00551145    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00551148    push        0
 0055114A    push        200
 0055114F    mov         eax,dword ptr [ebp-8]
 00551152    mov         edx,dword ptr [eax]
 00551154    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00551156    call        @_lldiv
 0055115B    mov         word ptr [ebp-10],ax
 0055115F    call        004CED2C
 00551164    mov         ax,word ptr [ebp-10]
 00551168    push        eax
 00551169    push        0
 0055116B    push        0
 0055116D    push        0
 0055116F    push        0
 00551171    mov         cx,1
 00551175    mov         dx,1
 00551179    mov         ax,18
 0055117D    call        004CE5F4
 00551182    mov         word ptr [ebp-0E],ax
 00551186    mov         eax,[0056E1D4];^gvar_0056DF14
 0055118B    mov         ax,word ptr [eax]
 0055118E    add         ax,3
 00551192    call        0055FE3C
 00551197    and         eax,0FF
 0055119C    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 005511A2    mov         word ptr [edx+18],ax
 005511A6    mov         eax,[0056E270];^gvar_00571EC0
 005511AB    shl         word ptr [eax+18],8
 005511B0    mov         eax,[0056E1D4];^gvar_0056DF14
 005511B5    mov         ax,word ptr [eax]
 005511B8    add         ax,2
 005511BC    call        0055FE3C
 005511C1    and         eax,0FF
 005511C6    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 005511CC    or          word ptr [edx+18],ax
 005511D0    mov         eax,[0056E3F8];^gvar_0059BF4C
 005511D5    cmp         byte ptr [eax],0
>005511D8    jne         0055121B
 005511DA    mov         eax,[0056E5A4];^gvar_0056DF04
 005511DF    cmp         byte ptr [eax],0
>005511E2    jne         0055121B
 005511E4    mov         dword ptr [ebp-0C],1
>005511EB    jmp         00551208
 005511ED    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005511F3    mov         ecx,200
 005511F8    mov         eax,dword ptr [ebp-8]
 005511FB    mov         ebx,dword ptr [eax]
 005511FD    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00551200    call        004CEC08
 00551205    inc         dword ptr [ebp-0C]
 00551208    movzx       eax,word ptr [ebp-0E]
 0055120C    cmp         eax,dword ptr [ebp-0C]
>0055120F    jl          0055121B
 00551211    mov         eax,[0056E5A4];^gvar_0056DF04
 00551216    cmp         byte ptr [eax],0
>00551219    je          005511ED
 0055121B    call        004CEB6C
 00551220    mov         eax,551298;'Quick Format Reserved Area - '
 00551225    call        00544F6C
>0055122A    jmp         00551236
 0055122C    mov         eax,5512C0;'Error Reading Reserved Area Defects List (RP-List) - '
 00551231    call        00544F6C
 00551236    xor         eax,eax
 00551238    pop         edx
 00551239    pop         ecx
 0055123A    pop         ecx
 0055123B    mov         dword ptr fs:[eax],edx
 0055123E    push        551253
 00551243    mov         eax,dword ptr [ebp-8]
 00551246    call        TObject.Free
 0055124B    ret
>0055124C    jmp         @HandleFinally
>00551251    jmp         00551243
 00551253    pop         ebx
 00551254    mov         esp,ebp
 00551256    pop         ebp
 00551257    ret
end;*}

//005512F8
{*procedure TfmHDD.miClrDebugStopClick(?:?);
begin
 005512F8    push        ebp
 005512F9    mov         ebp,esp
 005512FB    add         esp,0FFFFFFF8
 005512FE    mov         dword ptr [ebp-8],edx
 00551301    mov         dword ptr [ebp-4],eax
 00551304    call        004CED2C
 00551309    push        2
 0055130B    push        0
 0055130D    push        0
 0055130F    push        0
 00551311    push        0
 00551313    mov         cx,0B
 00551317    mov         dx,1
 0055131B    mov         ax,0E
 0055131F    call        004CE5F4
 00551324    call        004CEB6C
 00551329    mov         eax,551340;'Clear Debug Stop - '
 0055132E    call        00544F6C
 00551333    pop         ecx
 00551334    pop         ecx
 00551335    pop         ebp
 00551336    ret
end;*}

//00551354
procedure TfmHDD.miSelectWorkDir1Click(Sender:TObject);
begin
{*
 00551354    push        ebp
 00551355    mov         ebp,esp
 00551357    xor         ecx,ecx
 00551359    push        ecx
 0055135A    push        ecx
 0055135B    push        ecx
 0055135C    push        ecx
 0055135D    push        ecx
 0055135E    mov         dword ptr [ebp-0C],edx
 00551361    mov         dword ptr [ebp-4],eax
 00551364    xor         eax,eax
 00551366    push        ebp
 00551367    push        551407
 0055136C    push        dword ptr fs:[eax]
 0055136F    mov         dword ptr fs:[eax],esp
 00551372    lea         eax,[ebp-8]
 00551375    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0055137B    mov         edx,dword ptr [edx]
 0055137D    call        @LStrLAsg
 00551382    lea         ecx,[ebp-8]
 00551385    xor         edx,edx
 00551387    mov         eax,55141C;'Select Work Directory'
 0055138C    call        004CC440
 00551391    test        al,al
>00551393    je          005513E4
 00551395    lea         edx,[ebp-10]
 00551398    mov         eax,dword ptr [ebp-8]
 0055139B    call        004115C4
 005513A0    mov         edx,dword ptr [ebp-10]
 005513A3    mov         eax,[0056E2D0];^gvar_0056DF38
 005513A8    call        @LStrAsg
 005513AD    push        55143C;'['
 005513B2    mov         eax,[0056E2D0];^gvar_0056DF38
 005513B7    push        dword ptr [eax]
 005513B9    push        551448;']'
 005513BE    lea         eax,[ebp-14]
 005513C1    mov         edx,3
 005513C6    call        @LStrCatN
 005513CB    mov         edx,dword ptr [ebp-14]
 005513CE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005513D3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005513D9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005513DF    mov         ecx,dword ptr [eax]
 005513E1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005513E4    xor         eax,eax
 005513E6    pop         edx
 005513E7    pop         ecx
 005513E8    pop         ecx
 005513E9    mov         dword ptr fs:[eax],edx
 005513EC    push        55140E
 005513F1    lea         eax,[ebp-14]
 005513F4    mov         edx,2
 005513F9    call        @LStrArrayClr
 005513FE    lea         eax,[ebp-8]
 00551401    call        @LStrClr
 00551406    ret
>00551407    jmp         @HandleFinally
>0055140C    jmp         005513F1
 0055140E    mov         esp,ebp
 00551410    pop         ebp
 00551411    ret
*}
end;

//0055144C
{*procedure sub_0055144C(?:TMemoryStream; ?:?);
begin
 0055144C    push        ebp
 0055144D    mov         ebp,esp
 0055144F    add         esp,0FFFFFF78
 00551455    push        ebx
 00551456    push        esi
 00551457    push        edi
 00551458    mov         dword ptr [ebp-8],edx
 0055145B    mov         dword ptr [ebp-4],eax
 0055145E    mov         esi,5515D4
 00551463    lea         edi,[ebp-15]
 00551466    movs        dword ptr [edi],dword ptr [esi]
 00551467    movs        dword ptr [edi],dword ptr [esi]
 00551468    movs        byte ptr [edi],byte ptr [esi]
 00551469    xor         ecx,ecx
 0055146B    xor         edx,edx
 0055146D    mov         eax,dword ptr [ebp-4]
 00551470    mov         ebx,dword ptr [eax]
 00551472    call        dword ptr [ebx+14]
 00551475    mov         eax,dword ptr [ebp-4]
 00551478    call        004CE56C
 0055147D    mov         dword ptr [ebp-0C],eax
 00551480    cmp         dword ptr [ebp-0C],4C594F52
>00551487    jne         005515A0
 0055148D    xor         ecx,ecx
 0055148F    mov         edx,10
 00551494    mov         eax,dword ptr [ebp-4]
 00551497    mov         ebx,dword ptr [eax]
 00551499    call        dword ptr [ebx+14]
 0055149C    lea         edx,[ebp-14]
 0055149F    mov         ecx,8
 005514A4    mov         eax,dword ptr [ebp-4]
 005514A7    call        TStream.ReadBuffer
 005514AC    lea         edx,[ebp-15]
 005514AF    lea         eax,[ebp-24]
 005514B2    call        @PStrCpy
 005514B7    mov         edx,5515E0;' ('
 005514BC    lea         eax,[ebp-24]
 005514BF    mov         cl,0A
 005514C1    call        @PStrNCat
 005514C6    lea         edx,[ebp-24]
 005514C9    lea         eax,[ebp-30]
 005514CC    call        @PStrCpy
 005514D1    lea         eax,[ebp-34]
 005514D4    mov         dl,byte ptr [ebp-12]
 005514D7    mov         byte ptr [eax+1],dl
 005514DA    mov         byte ptr [eax],1
 005514DD    lea         edx,[ebp-34]
 005514E0    lea         eax,[ebp-30]
 005514E3    mov         cl,0B
 005514E5    call        @PStrNCat
 005514EA    lea         edx,[ebp-30]
 005514ED    lea         eax,[ebp-44]
 005514F0    call        @PStrCpy
 005514F5    lea         eax,[ebp-34]
 005514F8    mov         dl,byte ptr [ebp-11]
 005514FB    mov         byte ptr [eax+1],dl
 005514FE    mov         byte ptr [eax],1
 00551501    lea         edx,[ebp-34]
 00551504    lea         eax,[ebp-44]
 00551507    mov         cl,0C
 00551509    call        @PStrNCat
 0055150E    lea         edx,[ebp-44]
 00551511    lea         eax,[ebp-54]
 00551514    call        @PStrCpy
 00551519    mov         edx,5515E4;'.'
 0055151E    lea         eax,[ebp-54]
 00551521    mov         cl,0D
 00551523    call        @PStrNCat
 00551528    lea         edx,[ebp-54]
 0055152B    lea         eax,[ebp-64]
 0055152E    call        @PStrCpy
 00551533    lea         eax,[ebp-34]
 00551536    mov         dl,byte ptr [ebp-0E]
 00551539    mov         byte ptr [eax+1],dl
 0055153C    mov         byte ptr [eax],1
 0055153F    lea         edx,[ebp-34]
 00551542    lea         eax,[ebp-64]
 00551545    mov         cl,0E
 00551547    call        @PStrNCat
 0055154C    lea         edx,[ebp-64]
 0055154F    lea         eax,[ebp-74]
 00551552    call        @PStrCpy
 00551557    lea         eax,[ebp-34]
 0055155A    mov         dl,byte ptr [ebp-0D]
 0055155D    mov         byte ptr [eax+1],dl
 00551560    mov         byte ptr [eax],1
 00551563    lea         edx,[ebp-34]
 00551566    lea         eax,[ebp-74]
 00551569    mov         cl,0F
 0055156B    call        @PStrNCat
 00551570    lea         edx,[ebp-74]
 00551573    lea         eax,[ebp-88]
 00551579    call        @PStrCpy
 0055157E    mov         edx,5515E8;')'
 00551583    lea         eax,[ebp-88]
 00551589    mov         cl,10
 0055158B    call        @PStrNCat
 00551590    lea         edx,[ebp-88]
 00551596    mov         eax,dword ptr [ebp-8]
 00551599    call        @LStrFromString
>0055159E    jmp         005515CA
 005515A0    xor         ecx,ecx
 005515A2    mov         edx,5
 005515A7    mov         eax,dword ptr [ebp-4]
 005515AA    mov         ebx,dword ptr [eax]
 005515AC    call        dword ptr [ebx+14]
 005515AF    lea         edx,[ebp-14]
 005515B2    mov         ecx,5
 005515B7    mov         eax,dword ptr [ebp-4]
 005515BA    call        TStream.ReadBuffer
 005515BF    mov         eax,dword ptr [ebp-8]
 005515C2    lea         edx,[ebp-15]
 005515C5    call        @LStrFromString
 005515CA    pop         edi
 005515CB    pop         esi
 005515CC    pop         ebx
 005515CD    mov         esp,ebp
 005515CF    pop         ebp
 005515D0    ret
end;*}

//005515EC
procedure TfmHDD.miDIRRevClick(Sender:TObject);
begin
{*
 005515EC    push        ebp
 005515ED    mov         ebp,esp
 005515EF    add         esp,0FFFFFFB0
 005515F2    push        ebx
 005515F3    push        esi
 005515F4    push        edi
 005515F5    xor         ecx,ecx
 005515F7    mov         dword ptr [ebp-4C],ecx
 005515FA    mov         dword ptr [ebp-50],ecx
 005515FD    mov         dword ptr [ebp-44],ecx
 00551600    mov         dword ptr [ebp-48],ecx
 00551603    mov         dword ptr [ebp-3C],ecx
 00551606    mov         dword ptr [ebp-40],ecx
 00551609    mov         dword ptr [ebp-34],ecx
 0055160C    mov         dword ptr [ebp-38],ecx
 0055160F    mov         dword ptr [ebp-1C],ecx
 00551612    mov         dword ptr [ebp-18],edx
 00551615    mov         dword ptr [ebp-4],eax
 00551618    xor         eax,eax
 0055161A    push        ebp
 0055161B    push        55180D
 00551620    push        dword ptr fs:[eax]
 00551623    mov         dword ptr fs:[eax],esp
 00551626    mov         dl,1
 00551628    mov         eax,[0041DE14];TMemoryStream
 0055162D    call        TObject.Create;TMemoryStream.Create
 00551632    mov         dword ptr [ebp-8],eax
 00551635    xor         eax,eax
 00551637    push        ebp
 00551638    push        5517E3
 0055163D    push        dword ptr fs:[eax]
 00551640    mov         dword ptr fs:[eax],esp
 00551643    mov         esi,55181C
 00551648    lea         edi,[ebp-11]
 0055164B    movs        dword ptr [edi],dword ptr [esi]
 0055164C    movs        dword ptr [edi],dword ptr [esi]
 0055164D    movs        byte ptr [edi],byte ptr [esi]
 0055164E    mov         ecx,dword ptr [ebp-8]
 00551651    xor         edx,edx
 00551653    mov         ax,1
 00551657    call        004CFEC8
 0055165C    test        al,al
>0055165E    je          005516BD
 00551660    xor         ecx,ecx
 00551662    mov         edx,2
 00551667    mov         eax,dword ptr [ebp-8]
 0055166A    mov         ebx,dword ptr [eax]
 0055166C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055166F    lea         edx,[ebp-10]
 00551672    mov         ecx,6
 00551677    mov         eax,dword ptr [ebp-8]
 0055167A    call        TStream.ReadBuffer
 0055167F    mov         edx,551828;'ROM Rev: '
 00551684    lea         eax,[ebp-30]
 00551687    call        @PStrCpy
 0055168C    lea         edx,[ebp-11]
 0055168F    lea         eax,[ebp-30]
 00551692    mov         cl,11
 00551694    call        @PStrNCat
 00551699    lea         edx,[ebp-30]
 0055169C    lea         eax,[ebp-1C]
 0055169F    call        @LStrFromString
 005516A4    mov         edx,dword ptr [ebp-1C]
 005516A7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005516AC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005516B2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005516B8    mov         ecx,dword ptr [eax]
 005516BA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005516BD    mov         edx,dword ptr [ebp-8]
 005516C0    mov         ax,0D
 005516C4    call        004CF5C8
 005516C9    test        al,al
>005516CB    je          00551701
 005516CD    lea         edx,[ebp-38]
 005516D0    mov         eax,dword ptr [ebp-8]
 005516D3    call        0055144C
 005516D8    mov         ecx,dword ptr [ebp-38]
 005516DB    lea         eax,[ebp-34]
 005516DE    mov         edx,55183C;'Mod 0D : '
 005516E3    call        @LStrCat3
 005516E8    mov         edx,dword ptr [ebp-34]
 005516EB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005516F0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005516F6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005516FC    mov         ecx,dword ptr [eax]
 005516FE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551701    mov         edx,dword ptr [ebp-8]
 00551704    mov         ax,4F
 00551708    call        004CF5C8
 0055170D    test        al,al
>0055170F    je          00551745
 00551711    lea         edx,[ebp-40]
 00551714    mov         eax,dword ptr [ebp-8]
 00551717    call        0055144C
 0055171C    mov         ecx,dword ptr [ebp-40]
 0055171F    lea         eax,[ebp-3C]
 00551722    mov         edx,551850;'Mod 4F : '
 00551727    call        @LStrCat3
 0055172C    mov         edx,dword ptr [ebp-3C]
 0055172F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551734    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055173A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551740    mov         ecx,dword ptr [eax]
 00551742    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551745    mov         edx,dword ptr [ebp-8]
 00551748    mov         ax,1
 0055174C    call        004CF5C8
 00551751    test        al,al
>00551753    je          00551789
 00551755    lea         edx,[ebp-48]
 00551758    mov         eax,dword ptr [ebp-8]
 0055175B    call        0055144C
 00551760    mov         ecx,dword ptr [ebp-48]
 00551763    lea         eax,[ebp-44]
 00551766    mov         edx,551864;'DIR Rev: '
 0055176B    call        @LStrCat3
 00551770    mov         edx,dword ptr [ebp-44]
 00551773    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551778    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055177E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551784    mov         ecx,dword ptr [eax]
 00551786    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551789    mov         edx,dword ptr [ebp-8]
 0055178C    mov         ax,11
 00551790    call        004CF5C8
 00551795    test        al,al
>00551797    je          005517CD
 00551799    lea         edx,[ebp-50]
 0055179C    mov         eax,dword ptr [ebp-8]
 0055179F    call        0055144C
 005517A4    mov         ecx,dword ptr [ebp-50]
 005517A7    lea         eax,[ebp-4C]
 005517AA    mov         edx,551878;'OVL Rev: '
 005517AF    call        @LStrCat3
 005517B4    mov         edx,dword ptr [ebp-4C]
 005517B7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005517BC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005517C2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005517C8    mov         ecx,dword ptr [eax]
 005517CA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005517CD    xor         eax,eax
 005517CF    pop         edx
 005517D0    pop         ecx
 005517D1    pop         ecx
 005517D2    mov         dword ptr fs:[eax],edx
 005517D5    push        5517EA
 005517DA    mov         eax,dword ptr [ebp-8]
 005517DD    call        TObject.Free
 005517E2    ret
>005517E3    jmp         @HandleFinally
>005517E8    jmp         005517DA
 005517EA    xor         eax,eax
 005517EC    pop         edx
 005517ED    pop         ecx
 005517EE    pop         ecx
 005517EF    mov         dword ptr fs:[eax],edx
 005517F2    push        551814
 005517F7    lea         eax,[ebp-50]
 005517FA    mov         edx,8
 005517FF    call        @LStrArrayClr
 00551804    lea         eax,[ebp-1C]
 00551807    call        @LStrClr
 0055180C    ret
>0055180D    jmp         @HandleFinally
>00551812    jmp         005517F7
 00551814    pop         edi
 00551815    pop         esi
 00551816    pop         ebx
 00551817    mov         esp,ebp
 00551819    pop         ebp
 0055181A    ret
*}
end;

//00551884
{*procedure TfmHDD.sbTools1Click(?:?);
begin
 00551884    push        ebp
 00551885    mov         ebp,esp
 00551887    add         esp,0FFFFFFF8
 0055188A    mov         dword ptr [ebp-8],edx
 0055188D    mov         dword ptr [ebp-4],eax
 00551890    mov         edx,dword ptr [ebp-8]
 00551893    mov         eax,dword ptr [ebp-4]
 00551896    call        TfmHDD.miIdentifyClick
 0055189B    mov         edx,dword ptr [ebp-8]
 0055189E    mov         eax,dword ptr [ebp-4]
 005518A1    call        TfmHDD.miDIRRevClick
 005518A6    pop         ecx
 005518A7    pop         ecx
 005518A8    pop         ebp
 005518A9    ret
end;*}

//005518AC
{*procedure TfmHDD.sbTools10Click(?:?);
begin
 005518AC    push        ebp
 005518AD    mov         ebp,esp
 005518AF    add         esp,0FFFFFFF8
 005518B2    mov         dword ptr [ebp-8],edx
 005518B5    mov         dword ptr [ebp-4],eax
 005518B8    push        0
 005518BA    mov         cx,word ptr ds:[5518F8];0x3 gvar_005518F8
 005518C1    xor         edx,edx
 005518C3    mov         eax,551904;'Quick Start Selfscan!'+#10+Are You sure?'
 005518C8    call        0043F788
 005518CD    cmp         eax,6
>005518D0    jne         005518F3
 005518D2    mov         edx,dword ptr [ebp-8]
 005518D5    mov         eax,dword ptr [ebp-4]
 005518D8    call        TfmHDD.miRepairSsModulesClick
 005518DD    mov         edx,dword ptr [ebp-8]
 005518E0    mov         eax,dword ptr [ebp-4]
 005518E3    call        TfmHDD.miClearSSLogsClick
 005518E8    mov         edx,dword ptr [ebp-8]
 005518EB    mov         eax,dword ptr [ebp-4]
 005518EE    call        TfmHDD.miSelfScanStartClick
 005518F3    pop         ecx
 005518F4    pop         ecx
 005518F5    pop         ebp
 005518F6    ret
end;*}

//00551928
procedure TfmHDD.ToolButton1Click(Sender:TObject);
begin
{*
 00551928    push        ebp
 00551929    mov         ebp,esp
 0055192B    add         esp,0FFFFFFF8
 0055192E    mov         dword ptr [ebp-8],edx
 00551931    mov         dword ptr [ebp-4],eax
 00551934    mov         edx,dword ptr [ebp-8]
 00551937    mov         eax,dword ptr [ebp-4]
 0055193A    call        TfmHDD.miIdentifyClick
 0055193F    pop         ecx
 00551940    pop         ecx
 00551941    pop         ebp
 00551942    ret
*}
end;

//00551944
procedure TfmHDD.ToolButton19Click(Sender:TObject);
begin
{*
 00551944    push        ebp
 00551945    mov         ebp,esp
 00551947    add         esp,0FFFFFFF8
 0055194A    mov         dword ptr [ebp-8],edx
 0055194D    mov         dword ptr [ebp-4],eax
 00551950    push        0
 00551952    mov         cx,word ptr ds:[551990];0x3 gvar_00551990
 00551959    xor         edx,edx
 0055195B    mov         eax,55199C;'Quick Start Selfscan!'+#10+Are You sure?'
 00551960    call        0043F788
 00551965    cmp         eax,6
>00551968    jne         0055198B
 0055196A    mov         edx,dword ptr [ebp-8]
 0055196D    mov         eax,dword ptr [ebp-4]
 00551970    call        TfmHDD.miRepairSsModulesClick
 00551975    mov         edx,dword ptr [ebp-8]
 00551978    mov         eax,dword ptr [ebp-4]
 0055197B    call        TfmHDD.miClearSSLogsClick
 00551980    mov         edx,dword ptr [ebp-8]
 00551983    mov         eax,dword ptr [ebp-4]
 00551986    call        TfmHDD.miSelfScanStartClick
 0055198B    pop         ecx
 0055198C    pop         ecx
 0055198D    pop         ebp
 0055198E    ret
*}
end;

//005519C0
{*procedure TfmHDD.miBlinkLedClick(?:?);
begin
 005519C0    push        ebp
 005519C1    mov         ebp,esp
 005519C3    add         esp,0FFFFFFF8
 005519C6    mov         dword ptr [ebp-8],edx
 005519C9    mov         dword ptr [ebp-4],eax
 005519CC    mov         dx,0FFFF
 005519D0    mov         ax,0FFFF
 005519D4    call        004D0A50
 005519D9    pop         ecx
 005519DA    pop         ecx
 005519DB    pop         ebp
 005519DC    ret
end;*}

//005519E0
procedure sub_005519E0(?:TMemoryStream);
begin
{*
 005519E0    push        ebp
 005519E1    mov         ebp,esp
 005519E3    add         esp,0FFFFFF98
 005519E6    push        ebx
 005519E7    xor         edx,edx
 005519E9    mov         dword ptr [ebp-28],edx
 005519EC    mov         dword ptr [ebp-4],eax
 005519EF    xor         eax,eax
 005519F1    push        ebp
 005519F2    push        551BE6
 005519F7    push        dword ptr fs:[eax]
 005519FA    mov         dword ptr fs:[eax],esp
 005519FD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551A02    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551A08    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551A0E    mov         edx,551BFC;'IBI Parameter File:'
 00551A13    mov         ecx,dword ptr [eax]
 00551A15    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551A18    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551A1D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551A23    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551A29    mov         edx,551C18;'==================='
 00551A2E    mov         ecx,dword ptr [eax]
 00551A30    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551A33    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551A38    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551A3E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551A44    mov         edx,551C34;'Index  Drive_ID  Test_ID  Prm_ID  Address  New_Value   (oldval)  Knob_Mode'
 00551A49    mov         ecx,dword ptr [eax]
 00551A4B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551A4E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551A53    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551A59    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551A5F    mov         edx,551C88;'-----  --------  -------  ------  -------  ---------  ---------  ---------'
 00551A64    mov         ecx,dword ptr [eax]
 00551A66    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551A69    xor         ecx,ecx
 00551A6B    xor         edx,edx
 00551A6D    mov         eax,dword ptr [ebp-4]
 00551A70    mov         ebx,dword ptr [eax]
 00551A72    call        dword ptr [ebx+14]
 00551A75    mov         eax,dword ptr [ebp-4]
 00551A78    call        004CE56C
 00551A7D    mov         dword ptr [ebp-24],eax
 00551A80    cmp         dword ptr [ebp-24],4C594F52
>00551A87    jne         00551A9A
 00551A89    xor         ecx,ecx
 00551A8B    mov         edx,30
 00551A90    mov         eax,dword ptr [ebp-4]
 00551A93    mov         ebx,dword ptr [eax]
 00551A95    call        dword ptr [ebx+14]
>00551A98    jmp         00551AA9
 00551A9A    xor         ecx,ecx
 00551A9C    mov         edx,18
 00551AA1    mov         eax,dword ptr [ebp-4]
 00551AA4    mov         ebx,dword ptr [eax]
 00551AA6    call        dword ptr [ebx+14]
 00551AA9    xor         eax,eax
 00551AAB    mov         dword ptr [ebp-8],eax
 00551AAE    mov         word ptr [ebp-0E],1
>00551AB4    jmp         00551B97
 00551AB9    mov         eax,dword ptr [ebp-4]
 00551ABC    call        004CE56C
 00551AC1    mov         dword ptr [ebp-0C],eax
 00551AC4    mov         eax,dword ptr [ebp-4]
 00551AC7    call        004CE548
 00551ACC    mov         word ptr [ebp-0E],ax
 00551AD0    mov         eax,dword ptr [ebp-4]
 00551AD3    call        004CE548
 00551AD8    mov         word ptr [ebp-10],ax
 00551ADC    mov         eax,dword ptr [ebp-4]
 00551ADF    call        004CE56C
 00551AE4    mov         dword ptr [ebp-14],eax
 00551AE7    mov         eax,dword ptr [ebp-4]
 00551AEA    call        004CE56C
 00551AEF    mov         dword ptr [ebp-18],eax
 00551AF2    mov         eax,dword ptr [ebp-4]
 00551AF5    call        004CE56C
 00551AFA    mov         dword ptr [ebp-1C],eax
 00551AFD    mov         eax,dword ptr [ebp-4]
 00551B00    call        004CE56C
 00551B05    mov         dword ptr [ebp-20],eax
 00551B08    cmp         word ptr [ebp-0E],0
>00551B0D    jbe         00551B94
 00551B13    lea         eax,[ebp-28]
 00551B16    push        eax
 00551B17    mov         eax,dword ptr [ebp-8]
 00551B1A    mov         dword ptr [ebp-68],eax
 00551B1D    mov         byte ptr [ebp-64],0
 00551B21    mov         eax,dword ptr [ebp-0C]
 00551B24    mov         dword ptr [ebp-60],eax
 00551B27    mov         byte ptr [ebp-5C],0
 00551B2B    movzx       eax,word ptr [ebp-0E]
 00551B2F    mov         dword ptr [ebp-58],eax
 00551B32    mov         byte ptr [ebp-54],0
 00551B36    movzx       eax,word ptr [ebp-10]
 00551B3A    mov         dword ptr [ebp-50],eax
 00551B3D    mov         byte ptr [ebp-4C],0
 00551B41    mov         eax,dword ptr [ebp-14]
 00551B44    mov         dword ptr [ebp-48],eax
 00551B47    mov         byte ptr [ebp-44],0
 00551B4B    mov         eax,dword ptr [ebp-18]
 00551B4E    mov         dword ptr [ebp-40],eax
 00551B51    mov         byte ptr [ebp-3C],0
 00551B55    mov         eax,dword ptr [ebp-1C]
 00551B58    mov         dword ptr [ebp-38],eax
 00551B5B    mov         byte ptr [ebp-34],0
 00551B5F    mov         eax,dword ptr [ebp-20]
 00551B62    mov         dword ptr [ebp-30],eax
 00551B65    mov         byte ptr [ebp-2C],0
 00551B69    lea         edx,[ebp-68]
 00551B6C    mov         ecx,7
 00551B71    mov         eax,551CDC;' %4d  %08X     %04X    %04X  %08X  %08X   %08X   %08X'
 00551B76    call        0040D630
 00551B7B    mov         edx,dword ptr [ebp-28]
 00551B7E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551B83    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551B89    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551B8F    mov         ecx,dword ptr [eax]
 00551B91    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551B94    inc         dword ptr [ebp-8]
 00551B97    cmp         word ptr [ebp-0E],0
>00551B9C    je          00551BD0
 00551B9E    mov         eax,dword ptr [ebp-4]
 00551BA1    mov         edx,dword ptr [eax]
 00551BA3    call        dword ptr [edx]
 00551BA5    sub         eax,18
 00551BA8    sbb         edx,0
 00551BAB    push        edx
 00551BAC    push        eax
 00551BAD    mov         eax,dword ptr [ebp-4]
 00551BB0    call        TStream.GetPosition
 00551BB5    cmp         edx,dword ptr [esp+4]
>00551BB9    jne         00551BC8
 00551BBB    cmp         eax,dword ptr [esp]
 00551BBE    pop         edx
 00551BBF    pop         eax
>00551BC0    jb          00551AB9
>00551BC6    jmp         00551BD0
 00551BC8    pop         edx
 00551BC9    pop         eax
>00551BCA    jl          00551AB9
 00551BD0    xor         eax,eax
 00551BD2    pop         edx
 00551BD3    pop         ecx
 00551BD4    pop         ecx
 00551BD5    mov         dword ptr fs:[eax],edx
 00551BD8    push        551BED
 00551BDD    lea         eax,[ebp-28]
 00551BE0    call        @LStrClr
 00551BE5    ret
>00551BE6    jmp         @HandleFinally
>00551BEB    jmp         00551BDD
 00551BED    pop         ebx
 00551BEE    mov         esp,ebp
 00551BF0    pop         ebp
 00551BF1    ret
*}
end;

//00551D14
{*procedure TfmHDD.miIbiParametersClick(?:?);
begin
 00551D14    push        ebp
 00551D15    mov         ebp,esp
 00551D17    add         esp,0FFFFFFF4
 00551D1A    mov         dword ptr [ebp-0C],edx
 00551D1D    mov         dword ptr [ebp-4],eax
 00551D20    mov         dl,1
 00551D22    mov         eax,[0041DE14];TMemoryStream
 00551D27    call        TObject.Create;TMemoryStream.Create
 00551D2C    mov         dword ptr [ebp-8],eax
 00551D2F    xor         eax,eax
 00551D31    push        ebp
 00551D32    push        551D6B
 00551D37    push        dword ptr fs:[eax]
 00551D3A    mov         dword ptr fs:[eax],esp
 00551D3D    mov         edx,dword ptr [ebp-8]
 00551D40    mov         ax,0E7
 00551D44    call        005095B8
 00551D49    test        al,al
>00551D4B    je          00551D55
 00551D4D    mov         eax,dword ptr [ebp-8]
 00551D50    call        005519E0
 00551D55    xor         eax,eax
 00551D57    pop         edx
 00551D58    pop         ecx
 00551D59    pop         ecx
 00551D5A    mov         dword ptr fs:[eax],edx
 00551D5D    push        551D72
 00551D62    mov         eax,dword ptr [ebp-8]
 00551D65    call        TObject.Free
 00551D6A    ret
>00551D6B    jmp         @HandleFinally
>00551D70    jmp         00551D62
 00551D72    mov         esp,ebp
 00551D74    pop         ebp
 00551D75    ret
end;*}

//00551D78
{*procedure TfmHDD.miChangeReadTimeOutClick(?:?);
begin
 00551D78    push        ebp
 00551D79    mov         ebp,esp
 00551D7B    xor         ecx,ecx
 00551D7D    push        ecx
 00551D7E    push        ecx
 00551D7F    push        ecx
 00551D80    push        ecx
 00551D81    push        ecx
 00551D82    push        ecx
 00551D83    push        ecx
 00551D84    push        ecx
 00551D85    mov         dword ptr [ebp-8],edx
 00551D88    mov         dword ptr [ebp-4],eax
 00551D8B    xor         eax,eax
 00551D8D    push        ebp
 00551D8E    push        551F61
 00551D93    push        dword ptr fs:[eax]
 00551D96    mov         dword ptr fs:[eax],esp
 00551D99    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551D9E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551DA4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551DAA    mov         edx,551F74;'Standart Value for Set TimeOut = 0(Disabled), 300, 7000, 7500, 8000 or 25000...
 00551DAF    mov         ecx,dword ptr [eax]
 00551DB1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551DB4    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00551DB9    cmp         dword ptr [eax],0
>00551DBC    jne         00551DDA
 00551DBE    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 00551DC4    mov         ecx,dword ptr [ecx]
 00551DC6    mov         dl,1
 00551DC8    mov         eax,[004F7EE0];TfmString
 00551DCD    call        TfmProgress.Create;TfmString.Create
 00551DD2    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 00551DD8    mov         dword ptr [edx],eax
 00551DDA    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00551DDF    mov         eax,dword ptr [eax]
 00551DE1    mov         edx,551FCC;'Set Read TimeOut'
 00551DE6    call        TPanel.SetCaption
 00551DEB    call        00560318
 00551DF0    call        004CED2C
 00551DF5    push        13
 00551DF7    push        0
 00551DF9    push        0
 00551DFB    push        0
 00551DFD    push        0
 00551DFF    xor         ecx,ecx
 00551E01    mov         dx,1
 00551E05    mov         ax,2A
 00551E09    call        004CE5F4
 00551E0E    mov         eax,[0056E3F8];^gvar_0059BF4C
 00551E13    cmp         byte ptr [eax],0
>00551E16    jne         00551E85
 00551E18    mov         eax,[0056E5A4];^gvar_0056DF04
 00551E1D    cmp         byte ptr [eax],0
>00551E20    jne         00551E85
 00551E22    call        004CEAB4
 00551E27    lea         edx,[ebp-10]
 00551E2A    mov         eax,[0056E344];^gvar_0059BF5C
 00551E2F    movzx       eax,word ptr [eax]
 00551E32    call        IntToStr
 00551E37    mov         ecx,dword ptr [ebp-10]
 00551E3A    lea         eax,[ebp-0C]
 00551E3D    mov         edx,551FE8;'Read TimeOut = '
 00551E42    call        @LStrCat3
 00551E47    mov         edx,dword ptr [ebp-0C]
 00551E4A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00551E4F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00551E55    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00551E5B    mov         ecx,dword ptr [eax]
 00551E5D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00551E60    lea         edx,[ebp-14]
 00551E63    mov         eax,[0056E344];^gvar_0059BF5C
 00551E68    movzx       eax,word ptr [eax]
 00551E6B    call        IntToStr
 00551E70    mov         edx,dword ptr [ebp-14]
 00551E73    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00551E78    mov         eax,dword ptr [eax]
 00551E7A    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 00551E80    call        TPanel.SetCaption
 00551E85    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00551E8A    mov         eax,dword ptr [eax]
 00551E8C    mov         edx,dword ptr [eax]
 00551E8E    call        dword ptr [edx+0EC]
 00551E94    dec         eax
>00551E95    jne         00551F31
 00551E9B    lea         edx,[ebp-18]
 00551E9E    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00551EA3    mov         eax,dword ptr [eax]
 00551EA5    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 00551EAB    call        TPanel.GetCaption
 00551EB0    mov         eax,dword ptr [ebp-18]
 00551EB3    xor         edx,edx
 00551EB5    call        0040C4A8
 00551EBA    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00551EC0    mov         word ptr [edx],ax
 00551EC3    call        004CED2C
 00551EC8    push        13
 00551ECA    push        0
 00551ECC    push        0
 00551ECE    push        0
 00551ED0    push        0
 00551ED2    xor         ecx,ecx
 00551ED4    mov         dx,2
 00551ED8    mov         ax,2A
 00551EDC    call        004CE5F4
 00551EE1    mov         eax,[0056E3F8];^gvar_0059BF4C
 00551EE6    cmp         byte ptr [eax],0
>00551EE9    jne         00551EFA
 00551EEB    mov         eax,[0056E5A4];^gvar_0056DF04
 00551EF0    cmp         byte ptr [eax],0
>00551EF3    jne         00551EFA
 00551EF5    call        004CEC08
 00551EFA    call        004CEB6C
 00551EFF    push        552000;'Set Read TimeOut='
 00551F04    lea         edx,[ebp-20]
 00551F07    mov         eax,[0056E344];^gvar_0059BF5C
 00551F0C    movzx       eax,word ptr [eax]
 00551F0F    call        IntToStr
 00551F14    push        dword ptr [ebp-20]
 00551F17    push        55201C;' - '
 00551F1C    lea         eax,[ebp-1C]
 00551F1F    mov         edx,3
 00551F24    call        @LStrCatN
 00551F29    mov         eax,dword ptr [ebp-1C]
 00551F2C    call        00544F6C
 00551F31    xor         eax,eax
 00551F33    pop         edx
 00551F34    pop         ecx
 00551F35    pop         ecx
 00551F36    mov         dword ptr fs:[eax],edx
 00551F39    push        551F68
 00551F3E    lea         eax,[ebp-20]
 00551F41    mov         edx,2
 00551F46    call        @LStrArrayClr
 00551F4B    lea         eax,[ebp-18]
 00551F4E    call        @LStrClr
 00551F53    lea         eax,[ebp-14]
 00551F56    mov         edx,3
 00551F5B    call        @LStrArrayClr
 00551F60    ret
>00551F61    jmp         @HandleFinally
>00551F66    jmp         00551F3E
 00551F68    mov         esp,ebp
 00551F6A    pop         ebp
 00551F6B    ret
end;*}

//00552020
{*procedure TfmHDD.miChangeWriteTimeOutClick(?:?);
begin
 00552020    push        ebp
 00552021    mov         ebp,esp
 00552023    xor         ecx,ecx
 00552025    push        ecx
 00552026    push        ecx
 00552027    push        ecx
 00552028    push        ecx
 00552029    push        ecx
 0055202A    push        ecx
 0055202B    push        ecx
 0055202C    push        ecx
 0055202D    mov         dword ptr [ebp-8],edx
 00552030    mov         dword ptr [ebp-4],eax
 00552033    xor         eax,eax
 00552035    push        ebp
 00552036    push        552209
 0055203B    push        dword ptr fs:[eax]
 0055203E    mov         dword ptr fs:[eax],esp
 00552041    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552046    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055204C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552052    mov         edx,55221C;'Standart Value for Set TimeOut = 0(Disabled), 300, 7000, 7500, 8000 or 25000...
 00552057    mov         ecx,dword ptr [eax]
 00552059    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055205C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00552061    cmp         dword ptr [eax],0
>00552064    jne         00552082
 00552066    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055206C    mov         ecx,dword ptr [ecx]
 0055206E    mov         dl,1
 00552070    mov         eax,[004F7EE0];TfmString
 00552075    call        TfmProgress.Create;TfmString.Create
 0055207A    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 00552080    mov         dword ptr [edx],eax
 00552082    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00552087    mov         eax,dword ptr [eax]
 00552089    mov         edx,552274;'Set Write TimeOut'
 0055208E    call        TPanel.SetCaption
 00552093    call        00560318
 00552098    call        004CED2C
 0055209D    push        14
 0055209F    push        0
 005520A1    push        0
 005520A3    push        0
 005520A5    push        0
 005520A7    xor         ecx,ecx
 005520A9    mov         dx,1
 005520AD    mov         ax,2A
 005520B1    call        004CE5F4
 005520B6    mov         eax,[0056E3F8];^gvar_0059BF4C
 005520BB    cmp         byte ptr [eax],0
>005520BE    jne         0055212D
 005520C0    mov         eax,[0056E5A4];^gvar_0056DF04
 005520C5    cmp         byte ptr [eax],0
>005520C8    jne         0055212D
 005520CA    call        004CEAB4
 005520CF    lea         edx,[ebp-0C]
 005520D2    mov         eax,[0056E344];^gvar_0059BF5C
 005520D7    movzx       eax,word ptr [eax]
 005520DA    call        IntToStr
 005520DF    mov         edx,dword ptr [ebp-0C]
 005520E2    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 005520E7    mov         eax,dword ptr [eax]
 005520E9    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 005520EF    call        TPanel.SetCaption
 005520F4    lea         edx,[ebp-14]
 005520F7    mov         eax,[0056E344];^gvar_0059BF5C
 005520FC    movzx       eax,word ptr [eax]
 005520FF    call        IntToStr
 00552104    mov         ecx,dword ptr [ebp-14]
 00552107    lea         eax,[ebp-10]
 0055210A    mov         edx,552290;'Write TimeOut = '
 0055210F    call        @LStrCat3
 00552114    mov         edx,dword ptr [ebp-10]
 00552117    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055211C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552122    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552128    mov         ecx,dword ptr [eax]
 0055212A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055212D    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 00552132    mov         eax,dword ptr [eax]
 00552134    mov         edx,dword ptr [eax]
 00552136    call        dword ptr [edx+0EC]
 0055213C    dec         eax
>0055213D    jne         005521D9
 00552143    lea         edx,[ebp-18]
 00552146    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055214B    mov         eax,dword ptr [eax]
 0055214D    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 00552153    call        TPanel.GetCaption
 00552158    mov         eax,dword ptr [ebp-18]
 0055215B    xor         edx,edx
 0055215D    call        0040C4A8
 00552162    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00552168    mov         word ptr [edx],ax
 0055216B    call        004CED2C
 00552170    push        14
 00552172    push        0
 00552174    push        0
 00552176    push        0
 00552178    push        0
 0055217A    xor         ecx,ecx
 0055217C    mov         dx,2
 00552180    mov         ax,2A
 00552184    call        004CE5F4
 00552189    mov         eax,[0056E3F8];^gvar_0059BF4C
 0055218E    cmp         byte ptr [eax],0
>00552191    jne         005521A2
 00552193    mov         eax,[0056E5A4];^gvar_0056DF04
 00552198    cmp         byte ptr [eax],0
>0055219B    jne         005521A2
 0055219D    call        004CEC08
 005521A2    call        004CEB6C
 005521A7    push        5522AC;'Set Write TimeOut='
 005521AC    lea         edx,[ebp-20]
 005521AF    mov         eax,[0056E344];^gvar_0059BF5C
 005521B4    movzx       eax,word ptr [eax]
 005521B7    call        IntToStr
 005521BC    push        dword ptr [ebp-20]
 005521BF    push        5522C8;' - '
 005521C4    lea         eax,[ebp-1C]
 005521C7    mov         edx,3
 005521CC    call        @LStrCatN
 005521D1    mov         eax,dword ptr [ebp-1C]
 005521D4    call        00544F6C
 005521D9    xor         eax,eax
 005521DB    pop         edx
 005521DC    pop         ecx
 005521DD    pop         ecx
 005521DE    mov         dword ptr fs:[eax],edx
 005521E1    push        552210
 005521E6    lea         eax,[ebp-20]
 005521E9    mov         edx,2
 005521EE    call        @LStrArrayClr
 005521F3    lea         eax,[ebp-18]
 005521F6    call        @LStrClr
 005521FB    lea         eax,[ebp-14]
 005521FE    mov         edx,3
 00552203    call        @LStrArrayClr
 00552208    ret
>00552209    jmp         @HandleFinally
>0055220E    jmp         005521E6
 00552210    mov         esp,ebp
 00552212    pop         ebp
 00552213    ret
end;*}

//005522CC
procedure TfmHDD.miCustomConfigClick(Sender:TObject);
begin
{*
 005522CC    push        ebp
 005522CD    mov         ebp,esp
 005522CF    add         esp,0FFFFFFF8
 005522D2    mov         dword ptr [ebp-8],edx
 005522D5    mov         dword ptr [ebp-4],eax
 005522D8    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 005522DE    mov         eax,[005387C0];TfmConfig
 005522E3    call        00539888
 005522E8    pop         ecx
 005522E9    pop         ecx
 005522EA    pop         ebp
 005522EB    ret
*}
end;

//005522EC
{*procedure sub_005522EC(?:?; ?:?);
begin
 005522EC    push        ebp
 005522ED    mov         ebp,esp
 005522EF    add         esp,0FFFFFFE0
 005522F2    xor         ecx,ecx
 005522F4    mov         dword ptr [ebp-18],ecx
 005522F7    mov         dword ptr [ebp-1C],ecx
 005522FA    mov         dword ptr [ebp-20],ecx
 005522FD    mov         dword ptr [ebp-8],edx
 00552300    mov         dword ptr [ebp-4],eax
 00552303    xor         eax,eax
 00552305    push        ebp
 00552306    push        55240B
 0055230B    push        dword ptr fs:[eax]
 0055230E    mov         dword ptr fs:[eax],esp
 00552311    mov         eax,dword ptr [ebp-4]
 00552314    mov         ecx,3C
 00552319    xor         edx,edx
 0055231B    div         eax,ecx
 0055231D    mov         dword ptr [ebp-0C],edx
 00552320    mov         eax,dword ptr [ebp-4]
 00552323    mov         ecx,0E10
 00552328    xor         edx,edx
 0055232A    div         eax,ecx
 0055232C    mov         eax,edx
 0055232E    sub         eax,dword ptr [ebp-0C]
 00552331    mov         ecx,3C
 00552336    xor         edx,edx
 00552338    div         eax,ecx
 0055233A    mov         dword ptr [ebp-10],eax
 0055233D    mov         eax,dword ptr [ebp-4]
 00552340    mov         ecx,0E10
 00552345    xor         edx,edx
 00552347    div         eax,ecx
 00552349    mov         dword ptr [ebp-14],eax
 0055234C    mov         eax,dword ptr [ebp-14]
 0055234F    xor         edx,edx
 00552351    push        edx
 00552352    push        eax
 00552353    lea         eax,[ebp-18]
 00552356    call        IntToStr
 0055235B    mov         eax,dword ptr [ebp-18]
 0055235E    call        @LStrLen
 00552363    cmp         eax,2
>00552366    jge         00552378
 00552368    lea         eax,[ebp-18]
 0055236B    mov         ecx,dword ptr [ebp-18]
 0055236E    mov         edx,552420;'0'
 00552373    call        @LStrCat3
 00552378    mov         eax,dword ptr [ebp-10]
 0055237B    xor         edx,edx
 0055237D    push        edx
 0055237E    push        eax
 0055237F    lea         eax,[ebp-1C]
 00552382    call        IntToStr
 00552387    mov         eax,dword ptr [ebp-1C]
 0055238A    call        @LStrLen
 0055238F    cmp         eax,2
>00552392    jge         005523A4
 00552394    lea         eax,[ebp-1C]
 00552397    mov         ecx,dword ptr [ebp-1C]
 0055239A    mov         edx,552420;'0'
 0055239F    call        @LStrCat3
 005523A4    mov         eax,dword ptr [ebp-0C]
 005523A7    xor         edx,edx
 005523A9    push        edx
 005523AA    push        eax
 005523AB    lea         eax,[ebp-20]
 005523AE    call        IntToStr
 005523B3    mov         eax,dword ptr [ebp-20]
 005523B6    call        @LStrLen
 005523BB    cmp         eax,2
>005523BE    jge         005523D0
 005523C0    lea         eax,[ebp-20]
 005523C3    mov         ecx,dword ptr [ebp-20]
 005523C6    mov         edx,552420;'0'
 005523CB    call        @LStrCat3
 005523D0    push        dword ptr [ebp-18]
 005523D3    push        55242C;':'
 005523D8    push        dword ptr [ebp-1C]
 005523DB    push        55242C;':'
 005523E0    push        dword ptr [ebp-20]
 005523E3    mov         eax,dword ptr [ebp-8]
 005523E6    mov         edx,5
 005523EB    call        @LStrCatN
 005523F0    xor         eax,eax
 005523F2    pop         edx
 005523F3    pop         ecx
 005523F4    pop         ecx
 005523F5    mov         dword ptr fs:[eax],edx
 005523F8    push        552412
 005523FD    lea         eax,[ebp-20]
 00552400    mov         edx,3
 00552405    call        @LStrArrayClr
 0055240A    ret
>0055240B    jmp         @HandleFinally
>00552410    jmp         005523FD
 00552412    mov         esp,ebp
 00552414    pop         ebp
 00552415    ret
end;*}

//00552430
{*procedure sub_00552430(?:?; ?:?);
begin
 00552430    push        ebp
 00552431    mov         ebp,esp
 00552433    add         esp,0FFFFFFDC
 00552436    push        ebx
 00552437    xor         edx,edx
 00552439    mov         dword ptr [ebp-24],edx
 0055243C    mov         dword ptr [ebp-18],edx
 0055243F    mov         dword ptr [ebp-1C],edx
 00552442    mov         dword ptr [ebp-20],edx
 00552445    mov         dword ptr [ebp-4],eax
 00552448    xor         eax,eax
 0055244A    push        ebp
 0055244B    push        5525E9
 00552450    push        dword ptr fs:[eax]
 00552453    mov         dword ptr fs:[eax],esp
 00552456    mov         eax,dword ptr [ebp+8]
 00552459    mov         edx,dword ptr [ebp-4]
 0055245C    cmp         dword ptr [eax+edx*4-204],0
>00552464    je          005525CE
 0055246A    lea         edx,[ebp-1C]
 0055246D    mov         eax,dword ptr [ebp-4]
 00552470    call        IntToStr
 00552475    push        dword ptr [ebp-1C]
 00552478    push        552600;': '
 0055247D    mov         eax,dword ptr [ebp+8]
 00552480    mov         edx,dword ptr [ebp-4]
 00552483    mov         eax,dword ptr [eax+edx*4-204]
 0055248A    xor         edx,edx
 0055248C    push        edx
 0055248D    push        eax
 0055248E    lea         edx,[ebp-20]
 00552491    mov         eax,4
 00552496    call        IntToHex
 0055249B    push        dword ptr [ebp-20]
 0055249E    push        55260C;':'
 005524A3    lea         eax,[ebp-18]
 005524A6    mov         edx,4
 005524AB    call        @LStrCatN
 005524B0    mov         edx,dword ptr [ebp-18]
 005524B3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005524B8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005524BE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005524C4    mov         ecx,dword ptr [eax]
 005524C6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005524C9    mov         eax,dword ptr [ebp+8]
 005524CC    mov         edx,dword ptr [ebp-4]
 005524CF    mov         edx,dword ptr [eax+edx*4-204]
 005524D6    mov         eax,dword ptr [ebp+8]
 005524D9    mov         eax,dword ptr [eax-208]
 005524DF    xor         ecx,ecx
 005524E1    mov         ebx,dword ptr [eax]
 005524E3    call        dword ptr [ebx+14]
 005524E6    mov         eax,dword ptr [ebp+8]
 005524E9    mov         dword ptr [eax-20C],1
 005524F3    cmp         dword ptr [ebp-4],14
>005524F7    jne         00552502
 005524F9    mov         dword ptr [ebp-10],0F
>00552500    jmp         00552509
 00552502    mov         dword ptr [ebp-10],5
 00552509    mov         eax,dword ptr [ebp-10]
 0055250C    test        eax,eax
>0055250E    jl          005525B6
 00552514    inc         eax
 00552515    mov         dword ptr [ebp-14],eax
 00552518    mov         dword ptr [ebp-0C],0
 0055251F    mov         eax,dword ptr [ebp+8]
 00552522    add         eax,0FFFFFDF0
 00552527    call        @LStrClr
 0055252C    xor         eax,eax
 0055252E    mov         dword ptr [ebp-8],eax
 00552531    mov         eax,dword ptr [ebp+8]
 00552534    mov         eax,dword ptr [eax-208]
 0055253A    call        004CE528
 0055253F    mov         edx,dword ptr [ebp+8]
 00552542    mov         byte ptr [edx-211],al
 00552548    mov         eax,dword ptr [ebp+8]
 0055254B    push        dword ptr [eax-210]
 00552551    lea         ecx,[ebp-24]
 00552554    mov         eax,dword ptr [ebp+8]
 00552557    movzx       eax,byte ptr [eax-211]
 0055255E    mov         edx,2
 00552563    call        IntToHex
 00552568    push        dword ptr [ebp-24]
 0055256B    push        552618;' '
 00552570    mov         eax,dword ptr [ebp+8]
 00552573    add         eax,0FFFFFDF0
 00552578    mov         edx,3
 0055257D    call        @LStrCatN
 00552582    inc         dword ptr [ebp-8]
 00552585    cmp         dword ptr [ebp-8],10
>00552589    jne         00552531
 0055258B    mov         eax,dword ptr [ebp+8]
 0055258E    mov         edx,dword ptr [eax-210]
 00552594    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552599    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055259F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005525A5    mov         ecx,dword ptr [eax]
 005525A7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005525AA    inc         dword ptr [ebp-0C]
 005525AD    dec         dword ptr [ebp-14]
>005525B0    jne         0055251F
 005525B6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005525BB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005525C1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005525C7    xor         edx,edx
 005525C9    mov         ecx,dword ptr [eax]
 005525CB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005525CE    xor         eax,eax
 005525D0    pop         edx
 005525D1    pop         ecx
 005525D2    pop         ecx
 005525D3    mov         dword ptr fs:[eax],edx
 005525D6    push        5525F0
 005525DB    lea         eax,[ebp-24]
 005525DE    mov         edx,4
 005525E3    call        @LStrArrayClr
 005525E8    ret
>005525E9    jmp         @HandleFinally
>005525EE    jmp         005525DB
 005525F0    pop         ebx
 005525F1    mov         esp,ebp
 005525F3    pop         ebp
 005525F4    ret
end;*}

//0055261C
procedure sub_0055261C(?:TMemoryStream);
begin
{*
 0055261C    push        ebp
 0055261D    mov         ebp,esp
 0055261F    mov         ecx,5F
 00552624    push        0
 00552626    push        0
 00552628    dec         ecx
>00552629    jne         00552624
 0055262B    push        ebx
 0055262C    mov         dword ptr [ebp-208],eax
 00552632    xor         eax,eax
 00552634    push        ebp
 00552635    push        552FD8
 0055263A    push        dword ptr fs:[eax]
 0055263D    mov         dword ptr fs:[eax],esp
 00552640    lea         edx,[ebp-238]
 00552646    xor         eax,eax
 00552648    call        00403214
 0055264D    mov         eax,dword ptr [ebp-238]
 00552653    lea         edx,[ebp-234]
 00552659    call        0040CC5C
 0055265E    lea         eax,[ebp-234]
 00552664    mov         edx,552FEC;'wdm.ini'
 00552669    call        @LStrCat
 0055266E    mov         ecx,dword ptr [ebp-234]
 00552674    mov         dl,1
 00552676    mov         eax,[004497F8];TIniFile
 0055267B    call        TIniFile.Create;TIniFile.Create
 00552680    mov         dword ptr [ebp-230],eax
 00552686    xor         eax,eax
 00552688    push        ebp
 00552689    push        552F62
 0055268E    push        dword ptr fs:[eax]
 00552691    mov         dword ptr fs:[eax],esp
 00552694    mov         eax,[0056E5A4];^gvar_0056DF04
 00552699    mov         byte ptr [eax],0
 0055269C    mov         dword ptr [ebp-22C],1
 005526A6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005526AB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005526B1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005526B7    xor         edx,edx
 005526B9    mov         ecx,dword ptr [eax]
 005526BB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005526BE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005526C3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005526C9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005526CF    mov         edx,552FFC;'IBI Common Log:'
 005526D4    mov         ecx,dword ptr [eax]
 005526D6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005526D9    xor         ecx,ecx
 005526DB    xor         edx,edx
 005526DD    mov         eax,dword ptr [ebp-208]
 005526E3    mov         ebx,dword ptr [eax]
 005526E5    call        dword ptr [ebx+14]
 005526E8    mov         eax,dword ptr [ebp-208]
 005526EE    call        004CE56C
 005526F3    mov         dword ptr [ebp-20C],eax
 005526F9    cmp         dword ptr [ebp-20C],4C594F52
>00552703    jne         00552719
 00552705    xor         ecx,ecx
 00552707    mov         edx,30
 0055270C    mov         eax,dword ptr [ebp-208]
 00552712    mov         ebx,dword ptr [eax]
 00552714    call        dword ptr [ebx+14]
>00552717    jmp         0055272B
 00552719    xor         ecx,ecx
 0055271B    mov         edx,18
 00552720    mov         eax,dword ptr [ebp-208]
 00552726    mov         ebx,dword ptr [eax]
 00552728    call        dword ptr [ebx+14]
 0055272B    xor         eax,eax
 0055272D    mov         dword ptr [ebp-21C],eax
 00552733    mov         eax,dword ptr [ebp-208]
 00552739    call        004CE56C
 0055273E    mov         dword ptr [ebp-218],eax
 00552744    and         dword ptr [ebp-218],0FF
 0055274E    cmp         dword ptr [ebp-218],0
>00552755    jne         00552761
 00552757    call        @TryFinallyExit
>0055275C    jmp         00552F69
 00552761    push        11
 00552763    call        user32.GetKeyState
 00552768    test        ax,ax
>0055276B    jge         005527B5
 0055276D    lea         eax,[ebp-23C]
 00552773    push        eax
 00552774    mov         eax,dword ptr [ebp-218]
 0055277A    mov         dword ptr [ebp-244],eax
 00552780    mov         byte ptr [ebp-240],0
 00552787    lea         edx,[ebp-244]
 0055278D    xor         ecx,ecx
 0055278F    mov         eax,553014;'Sections Amount: %d'
 00552794    call        0040D630
 00552799    mov         edx,dword ptr [ebp-23C]
 0055279F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005527A4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005527AA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005527B0    mov         ecx,dword ptr [eax]
 005527B2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005527B5    cmp         dword ptr [ebp-218],0
>005527BC    jbe         00552F49
 005527C2    push        11
 005527C4    call        user32.GetKeyState
 005527C9    test        ax,ax
>005527CC    jge         005527E9
 005527CE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005527D3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005527D9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005527DF    mov         edx,553030;'Offset to Sections:'
 005527E4    mov         ecx,dword ptr [eax]
 005527E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005527E9    lea         eax,[ebp-210]
 005527EF    call        @LStrClr
>005527F4    jmp         00552881
 005527F9    mov         eax,dword ptr [ebp-208]
 005527FF    call        004CE56C
 00552804    mov         edx,dword ptr [ebp-21C]
 0055280A    mov         dword ptr [ebp+edx*4-204],eax
 00552811    mov         eax,dword ptr [ebp-21C]
 00552817    cmp         dword ptr [ebp+eax*4-204],0
>0055281F    je          0055287B
 00552821    lea         eax,[ebp-248]
 00552827    push        eax
 00552828    mov         eax,dword ptr [ebp-21C]
 0055282E    mov         dword ptr [ebp-258],eax
 00552834    mov         byte ptr [ebp-254],0
 0055283B    mov         eax,dword ptr [ebp-21C]
 00552841    mov         eax,dword ptr [ebp+eax*4-204]
 00552848    mov         dword ptr [ebp-250],eax
 0055284E    mov         byte ptr [ebp-24C],0
 00552855    lea         edx,[ebp-258]
 0055285B    mov         ecx,1
 00552860    mov         eax,55304C;'%2d: %-6x  '
 00552865    call        0040D630
 0055286A    mov         edx,dword ptr [ebp-248]
 00552870    lea         eax,[ebp-210]
 00552876    call        @LStrCat
 0055287B    inc         dword ptr [ebp-21C]
 00552881    mov         eax,dword ptr [ebp-21C]
 00552887    cmp         eax,dword ptr [ebp-218]
>0055288D    jae         005528C7
 0055288F    mov         eax,dword ptr [ebp-208]
 00552895    mov         edx,dword ptr [eax]
 00552897    call        dword ptr [edx]
 00552899    sub         eax,18
 0055289C    sbb         edx,0
 0055289F    push        edx
 005528A0    push        eax
 005528A1    mov         eax,dword ptr [ebp-208]
 005528A7    call        TStream.GetPosition
 005528AC    cmp         edx,dword ptr [esp+4]
>005528B0    jne         005528BF
 005528B2    cmp         eax,dword ptr [esp]
 005528B5    pop         edx
 005528B6    pop         eax
>005528B7    jb          005527F9
>005528BD    jmp         005528C7
 005528BF    pop         edx
 005528C0    pop         eax
>005528C1    jl          005527F9
 005528C7    push        11
 005528C9    call        user32.GetKeyState
 005528CE    test        ax,ax
>005528D1    jge         005528EF
 005528D3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005528D8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005528DE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005528E4    mov         edx,dword ptr [ebp-210]
 005528EA    mov         ecx,dword ptr [eax]
 005528EC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005528EF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005528F4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005528FA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552900    xor         edx,edx
 00552902    mov         ecx,dword ptr [eax]
 00552904    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552907    lea         eax,[ebp-210]
 0055290D    call        @LStrClr
 00552912    cmp         dword ptr [ebp-204],0
>00552919    je          0055296A
 0055291B    xor         ecx,ecx
 0055291D    mov         edx,dword ptr [ebp-204]
 00552923    mov         eax,dword ptr [ebp-208]
 00552929    mov         ebx,dword ptr [eax]
 0055292B    call        dword ptr [ebx+14]
 0055292E    mov         eax,dword ptr [ebp-208]
 00552934    call        004CE56C
 00552939    mov         dword ptr [ebp-20C],eax
 0055293F    mov         eax,dword ptr [ebp-20C]
 00552945    xor         edx,edx
 00552947    push        edx
 00552948    push        eax
 00552949    lea         eax,[ebp-25C]
 0055294F    call        IntToStr
 00552954    mov         ecx,dword ptr [ebp-25C]
 0055295A    lea         eax,[ebp-210]
 00552960    mov         edx,553060;'Test Count '
 00552965    call        @LStrCat3
 0055296A    cmp         dword ptr [ebp-200],0
>00552971    je          005529C9
 00552973    xor         ecx,ecx
 00552975    mov         edx,dword ptr [ebp-200]
 0055297B    mov         eax,dword ptr [ebp-208]
 00552981    mov         ebx,dword ptr [eax]
 00552983    call        dword ptr [ebx+14]
 00552986    mov         eax,dword ptr [ebp-208]
 0055298C    call        004CE56C
 00552991    mov         dword ptr [ebp-20C],eax
 00552997    push        dword ptr [ebp-210]
 0055299D    push        553074;' - '
 005529A2    lea         edx,[ebp-260]
 005529A8    mov         eax,dword ptr [ebp-20C]
 005529AE    call        005522EC
 005529B3    push        dword ptr [ebp-260]
 005529B9    lea         eax,[ebp-210]
 005529BF    mov         edx,3
 005529C4    call        @LStrCatN
 005529C9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005529CE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005529D4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005529DA    mov         edx,dword ptr [ebp-210]
 005529E0    mov         ecx,dword ptr [eax]
 005529E2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005529E5    cmp         dword ptr [ebp-1FC],0
>005529EC    je          00552BE2
 005529F2    xor         ecx,ecx
 005529F4    mov         edx,dword ptr [ebp-1FC]
 005529FA    mov         eax,dword ptr [ebp-208]
 00552A00    mov         ebx,dword ptr [eax]
 00552A02    call        dword ptr [ebx+14]
 00552A05    mov         word ptr [ebp-222],1
>00552A0E    jmp         00552B9A
 00552A13    mov         eax,dword ptr [ebp-208]
 00552A19    call        004CE548
 00552A1E    mov         word ptr [ebp-222],ax
 00552A25    mov         eax,dword ptr [ebp-208]
 00552A2B    call        004CE548
 00552A30    mov         word ptr [ebp-224],ax
 00552A37    mov         eax,dword ptr [ebp-208]
 00552A3D    call        004CE548
 00552A42    mov         word ptr [ebp-226],ax
 00552A49    mov         eax,dword ptr [ebp-208]
 00552A4F    call        004CE528
 00552A54    mov         byte ptr [ebp-211],al
 00552A5A    mov         eax,dword ptr [ebp-208]
 00552A60    call        004CE528
 00552A65    mov         byte ptr [ebp-227],al
 00552A6B    mov         eax,dword ptr [ebp-208]
 00552A71    call        004CE56C
 00552A76    mov         dword ptr [ebp-20C],eax
 00552A7C    mov         eax,dword ptr [ebp-208]
 00552A82    call        004CE56C
 00552A87    mov         dword ptr [ebp-220],eax
 00552A8D    cmp         word ptr [ebp-222],0
>00552A95    jbe         00552B94
 00552A9B    lea         eax,[ebp-264]
 00552AA1    push        eax
 00552AA2    mov         eax,dword ptr [ebp-22C]
 00552AA8    mov         dword ptr [ebp-2A4],eax
 00552AAE    mov         byte ptr [ebp-2A0],0
 00552AB5    movzx       eax,word ptr [ebp-222]
 00552ABC    mov         dword ptr [ebp-29C],eax
 00552AC2    mov         byte ptr [ebp-298],0
 00552AC9    movzx       eax,word ptr [ebp-224]
 00552AD0    mov         dword ptr [ebp-294],eax
 00552AD6    mov         byte ptr [ebp-290],0
 00552ADD    movzx       eax,word ptr [ebp-226]
 00552AE4    mov         dword ptr [ebp-28C],eax
 00552AEA    mov         byte ptr [ebp-288],0
 00552AF1    xor         eax,eax
 00552AF3    mov         al,byte ptr [ebp-211]
 00552AF9    mov         dword ptr [ebp-284],eax
 00552AFF    mov         byte ptr [ebp-280],0
 00552B06    xor         eax,eax
 00552B08    mov         al,byte ptr [ebp-227]
 00552B0E    mov         dword ptr [ebp-27C],eax
 00552B14    mov         byte ptr [ebp-278],0
 00552B1B    lea         edx,[ebp-2A8]
 00552B21    mov         eax,dword ptr [ebp-20C]
 00552B27    call        005522EC
 00552B2C    mov         eax,dword ptr [ebp-2A8]
 00552B32    mov         dword ptr [ebp-274],eax
 00552B38    mov         byte ptr [ebp-270],0B
 00552B3F    lea         edx,[ebp-2AC]
 00552B45    mov         eax,dword ptr [ebp-220]
 00552B4B    call        005522EC
 00552B50    mov         eax,dword ptr [ebp-2AC]
 00552B56    mov         dword ptr [ebp-26C],eax
 00552B5C    mov         byte ptr [ebp-268],0B
 00552B63    lea         edx,[ebp-2A4]
 00552B69    mov         ecx,7
 00552B6E    mov         eax,553080;'%2d  %4X  %4X  %4X  %2X  %2X  %8S  %8S'
 00552B73    call        0040D630
 00552B78    mov         edx,dword ptr [ebp-264]
 00552B7E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552B83    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552B89    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552B8F    mov         ecx,dword ptr [eax]
 00552B91    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552B94    inc         dword ptr [ebp-22C]
 00552B9A    cmp         word ptr [ebp-222],0
>00552BA2    jbe         00552BE2
 00552BA4    mov         eax,dword ptr [ebp-208]
 00552BAA    mov         edx,dword ptr [eax]
 00552BAC    call        dword ptr [edx]
 00552BAE    sub         eax,18
 00552BB1    sbb         edx,0
 00552BB4    push        edx
 00552BB5    push        eax
 00552BB6    mov         eax,dword ptr [ebp-208]
 00552BBC    call        TStream.GetPosition
 00552BC1    cmp         edx,dword ptr [esp+4]
>00552BC5    jne         00552BD0
 00552BC7    cmp         eax,dword ptr [esp]
 00552BCA    pop         edx
 00552BCB    pop         eax
>00552BCC    jae         00552BE2
>00552BCE    jmp         00552BD4
 00552BD0    pop         edx
 00552BD1    pop         eax
>00552BD2    jge         00552BE2
 00552BD4    mov         eax,[0056E5A4];^gvar_0056DF04
 00552BD9    cmp         byte ptr [eax],0
>00552BDC    je          00552A13
 00552BE2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552BE7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552BED    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552BF3    xor         edx,edx
 00552BF5    mov         ecx,dword ptr [eax]
 00552BF7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552BFA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552BFF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552C05    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552C0B    mov         edx,5530B0;'Abort Section:'
 00552C10    mov         ecx,dword ptr [eax]
 00552C12    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552C15    push        11
 00552C17    call        user32.GetKeyState
 00552C1C    test        ax,ax
>00552C1F    jge         00552CCF
 00552C25    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552C2A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552C30    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552C36    mov         edx,5530C8;'AbortCode(byte) / TestID(byte) / TestStatus(word)'
 00552C3B    mov         ecx,dword ptr [eax]
 00552C3D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552C40    push        ebp
 00552C41    mov         eax,5
 00552C46    call        00552430
 00552C4B    pop         ecx
 00552C4C    push        ebp
 00552C4D    mov         eax,0A
 00552C52    call        00552430
 00552C57    pop         ecx
 00552C58    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552C5D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552C63    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552C69    mov         edx,553104;'Soft Error Counter(dword) / Soft Error Total(dword)'
 00552C6E    mov         ecx,dword ptr [eax]
 00552C70    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552C73    push        ebp
 00552C74    mov         eax,0D
 00552C79    call        00552430
 00552C7E    pop         ecx
 00552C7F    push        ebp
 00552C80    mov         eax,0F
 00552C85    call        00552430
 00552C8A    pop         ecx
 00552C8B    push        ebp
 00552C8C    mov         eax,10
 00552C91    call        00552430
 00552C96    pop         ecx
 00552C97    push        ebp
 00552C98    mov         eax,12
 00552C9D    call        00552430
 00552CA2    pop         ecx
 00552CA3    push        ebp
 00552CA4    mov         eax,14
 00552CA9    call        00552430
 00552CAE    pop         ecx
 00552CAF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552CB4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552CBA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552CC0    mov         edx,553140;'...'
 00552CC5    mov         ecx,dword ptr [eax]
 00552CC7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>00552CCA    jmp         00552F49
 00552CCF    cmp         dword ptr [ebp-1F0],0
>00552CD6    je          00552E91
 00552CDC    xor         ecx,ecx
 00552CDE    mov         edx,dword ptr [ebp-1F0]
 00552CE4    mov         eax,dword ptr [ebp-208]
 00552CEA    mov         ebx,dword ptr [eax]
 00552CEC    call        dword ptr [ebx+14]
 00552CEF    mov         eax,dword ptr [ebp-208]
 00552CF5    call        004CE528
 00552CFA    mov         byte ptr [ebp-211],al
 00552D00    mov         eax,dword ptr [ebp-208]
 00552D06    call        004CE528
 00552D0B    mov         byte ptr [ebp-227],al
 00552D11    mov         eax,dword ptr [ebp-208]
 00552D17    call        004CE548
 00552D1C    mov         word ptr [ebp-222],ax
 00552D23    lea         eax,[ebp-2B0]
 00552D29    push        eax
 00552D2A    xor         eax,eax
 00552D2C    mov         al,byte ptr [ebp-227]
 00552D32    mov         dword ptr [ebp-2D0],eax
 00552D38    mov         byte ptr [ebp-2CC],0
 00552D3F    movzx       eax,word ptr [ebp-222]
 00552D46    mov         dword ptr [ebp-2C8],eax
 00552D4C    mov         byte ptr [ebp-2C4],0
 00552D53    xor         eax,eax
 00552D55    mov         al,byte ptr [ebp-211]
 00552D5B    mov         dword ptr [ebp-2C0],eax
 00552D61    mov         byte ptr [ebp-2BC],0
 00552D68    push        0
 00552D6A    lea         eax,[ebp-2D4]
 00552D70    push        eax
 00552D71    lea         ecx,[ebp-2D8]
 00552D77    xor         eax,eax
 00552D79    mov         al,byte ptr [ebp-211]
 00552D7F    add         eax,7600
 00552D84    mov         edx,4
 00552D89    call        IntToHex
 00552D8E    mov         ecx,dword ptr [ebp-2D8]
 00552D94    mov         edx,55314C;'ERRCODE'
 00552D99    mov         eax,dword ptr [ebp-230]
 00552D9F    mov         ebx,dword ptr [eax]
 00552DA1    call        dword ptr [ebx];TIniFile.sub_0044A254
 00552DA3    mov         eax,dword ptr [ebp-2D4]
 00552DA9    mov         dword ptr [ebp-2B8],eax
 00552DAF    mov         byte ptr [ebp-2B4],0B
 00552DB6    lea         edx,[ebp-2D0]
 00552DBC    mov         ecx,3
 00552DC1    mov         eax,55315C;'Test ID: %-2x, Test Status: %-2x, Abort Code: %-2x - %s'
 00552DC6    call        0040D630
 00552DCB    mov         edx,dword ptr [ebp-2B0]
 00552DD1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552DD6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552DDC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552DE2    mov         ecx,dword ptr [eax]
 00552DE4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552DE7    mov         eax,dword ptr [ebp-208]
 00552DED    call        004CE528
 00552DF2    mov         byte ptr [ebp-211],al
 00552DF8    mov         eax,dword ptr [ebp-208]
 00552DFE    call        004CE528
 00552E03    mov         byte ptr [ebp-227],al
 00552E09    mov         eax,dword ptr [ebp-208]
 00552E0F    call        004CE548
 00552E14    mov         word ptr [ebp-222],ax
 00552E1B    lea         eax,[ebp-2DC]
 00552E21    push        eax
 00552E22    xor         eax,eax
 00552E24    mov         al,byte ptr [ebp-211]
 00552E2A    mov         dword ptr [ebp-2F4],eax
 00552E30    mov         byte ptr [ebp-2F0],0
 00552E37    movzx       eax,word ptr [ebp-222]
 00552E3E    mov         dword ptr [ebp-2EC],eax
 00552E44    mov         byte ptr [ebp-2E8],0
 00552E4B    xor         eax,eax
 00552E4D    mov         al,byte ptr [ebp-227]
 00552E53    mov         dword ptr [ebp-2E4],eax
 00552E59    mov         byte ptr [ebp-2E0],0
 00552E60    lea         edx,[ebp-2F4]
 00552E66    mov         ecx,2
 00552E6B    mov         eax,55319C;'Test ID: %-2x, Test Status: %-2x, Abort Code: %-2x'
 00552E70    call        0040D630
 00552E75    mov         edx,dword ptr [ebp-2DC]
 00552E7B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552E80    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552E86    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552E8C    mov         ecx,dword ptr [eax]
 00552E8E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552E91    cmp         dword ptr [ebp-1D0],0
>00552E98    je          00552F49
 00552E9E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552EA3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552EA9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552EAF    xor         edx,edx
 00552EB1    mov         ecx,dword ptr [eax]
 00552EB3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552EB6    xor         ecx,ecx
 00552EB8    mov         edx,dword ptr [ebp-1D0]
 00552EBE    mov         eax,dword ptr [ebp-208]
 00552EC4    mov         ebx,dword ptr [eax]
 00552EC6    call        dword ptr [ebx+14]
 00552EC9    mov         eax,dword ptr [ebp-208]
 00552ECF    call        004CE56C
 00552ED4    mov         dword ptr [ebp-20C],eax
 00552EDA    mov         eax,dword ptr [ebp-208]
 00552EE0    call        004CE56C
 00552EE5    mov         dword ptr [ebp-220],eax
 00552EEB    lea         eax,[ebp-2F8]
 00552EF1    push        eax
 00552EF2    mov         eax,dword ptr [ebp-20C]
 00552EF8    mov         dword ptr [ebp-258],eax
 00552EFE    mov         byte ptr [ebp-254],0
 00552F05    mov         eax,dword ptr [ebp-220]
 00552F0B    mov         dword ptr [ebp-250],eax
 00552F11    mov         byte ptr [ebp-24C],0
 00552F18    lea         edx,[ebp-258]
 00552F1E    mov         ecx,1
 00552F23    mov         eax,5531D8;'Soft Error Counter:%-d, Soft Error Total:%-d'
 00552F28    call        0040D630
 00552F2D    mov         edx,dword ptr [ebp-2F8]
 00552F33    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00552F38    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00552F3E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00552F44    mov         ecx,dword ptr [eax]
 00552F46    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00552F49    xor         eax,eax
 00552F4B    pop         edx
 00552F4C    pop         ecx
 00552F4D    pop         ecx
 00552F4E    mov         dword ptr fs:[eax],edx
 00552F51    push        552F69
 00552F56    mov         eax,dword ptr [ebp-230]
 00552F5C    call        TObject.Free
 00552F61    ret
>00552F62    jmp         @HandleFinally
>00552F67    jmp         00552F56
 00552F69    xor         eax,eax
 00552F6B    pop         edx
 00552F6C    pop         ecx
 00552F6D    pop         ecx
 00552F6E    mov         dword ptr fs:[eax],edx
 00552F71    push        552FDF
 00552F76    lea         eax,[ebp-2F8]
 00552F7C    call        @LStrClr
 00552F81    lea         eax,[ebp-2DC]
 00552F87    mov         edx,3
 00552F8C    call        @LStrArrayClr
 00552F91    lea         eax,[ebp-2B0]
 00552F97    mov         edx,3
 00552F9C    call        @LStrArrayClr
 00552FA1    lea         eax,[ebp-264]
 00552FA7    mov         edx,3
 00552FAC    call        @LStrArrayClr
 00552FB1    lea         eax,[ebp-248]
 00552FB7    call        @LStrClr
 00552FBC    lea         eax,[ebp-23C]
 00552FC2    mov         edx,3
 00552FC7    call        @LStrArrayClr
 00552FCC    lea         eax,[ebp-210]
 00552FD2    call        @LStrClr
 00552FD7    ret
>00552FD8    jmp         @HandleFinally
>00552FDD    jmp         00552F76
 00552FDF    pop         ebx
 00552FE0    mov         esp,ebp
 00552FE2    pop         ebp
 00552FE3    ret
*}
end;

//00553208
procedure TfmHDD.miViewCommonLogClick(Sender:TObject);
begin
{*
 00553208    push        ebp
 00553209    mov         ebp,esp
 0055320B    add         esp,0FFFFFFF4
 0055320E    mov         dword ptr [ebp-0C],edx
 00553211    mov         dword ptr [ebp-4],eax
 00553214    mov         dl,1
 00553216    mov         eax,[0041DE14];TMemoryStream
 0055321B    call        TObject.Create;TMemoryStream.Create
 00553220    mov         dword ptr [ebp-8],eax
 00553223    xor         eax,eax
 00553225    push        ebp
 00553226    push        55325F
 0055322B    push        dword ptr fs:[eax]
 0055322E    mov         dword ptr fs:[eax],esp
 00553231    mov         edx,dword ptr [ebp-8]
 00553234    mov         ax,0E6
 00553238    call        005095B8
 0055323D    test        al,al
>0055323F    je          00553249
 00553241    mov         eax,dword ptr [ebp-8]
 00553244    call        0055261C
 00553249    xor         eax,eax
 0055324B    pop         edx
 0055324C    pop         ecx
 0055324D    pop         ecx
 0055324E    mov         dword ptr fs:[eax],edx
 00553251    push        553266
 00553256    mov         eax,dword ptr [ebp-8]
 00553259    call        TObject.Free
 0055325E    ret
>0055325F    jmp         @HandleFinally
>00553264    jmp         00553256
 00553266    mov         esp,ebp
 00553268    pop         ebp
 00553269    ret
*}
end;

//0055326C
{*procedure sub_0055326C(?:?; ?:?; ?:?; ?:?);
begin
 0055326C    push        ebp
 0055326D    mov         ebp,esp
 0055326F    add         esp,0FFFFFDEC
 00553275    push        ebx
 00553276    mov         word ptr [ebp-4],cx
 0055327A    mov         byte ptr [ebp-2],dl
 0055327D    mov         byte ptr [ebp-1],al
 00553280    xor         ecx,ecx
 00553282    xor         edx,edx
 00553284    mov         eax,dword ptr [ebp+8]
 00553287    mov         ebx,dword ptr [eax]
 00553289    call        dword ptr [ebx+14]
 0055328C    mov         eax,dword ptr [ebp+8]
 0055328F    call        004CE56C
 00553294    mov         dword ptr [ebp-10],eax
 00553297    cmp         dword ptr [ebp-10],4C594F52
>0055329E    jne         005532B1
 005532A0    xor         ecx,ecx
 005532A2    mov         edx,30
 005532A7    mov         eax,dword ptr [ebp+8]
 005532AA    mov         ebx,dword ptr [eax]
 005532AC    call        dword ptr [ebx+14]
>005532AF    jmp         005532C0
 005532B1    xor         ecx,ecx
 005532B3    mov         edx,18
 005532B8    mov         eax,dword ptr [ebp+8]
 005532BB    mov         ebx,dword ptr [eax]
 005532BD    call        dword ptr [ebx+14]
 005532C0    xor         eax,eax
 005532C2    mov         dword ptr [ebp-0C],eax
 005532C5    mov         eax,dword ptr [ebp+8]
 005532C8    call        004CE56C
 005532CD    mov         dword ptr [ebp-8],eax
>005532D0    jmp         005532E7
 005532D2    mov         eax,dword ptr [ebp+8]
 005532D5    call        004CE56C
 005532DA    mov         edx,dword ptr [ebp-0C]
 005532DD    mov         dword ptr [ebp+edx*4-214],eax
 005532E4    inc         dword ptr [ebp-0C]
 005532E7    mov         eax,dword ptr [ebp-0C]
 005532EA    cmp         eax,dword ptr [ebp-8]
>005532ED    jae         00553319
 005532EF    mov         eax,dword ptr [ebp+8]
 005532F2    mov         edx,dword ptr [eax]
 005532F4    call        dword ptr [edx]
 005532F6    sub         eax,18
 005532F9    sbb         edx,0
 005532FC    push        edx
 005532FD    push        eax
 005532FE    mov         eax,dword ptr [ebp+8]
 00553301    call        TStream.GetPosition
 00553306    cmp         edx,dword ptr [esp+4]
>0055330A    jne         00553315
 0055330C    cmp         eax,dword ptr [esp]
 0055330F    pop         edx
 00553310    pop         eax
>00553311    jb          005532D2
>00553313    jmp         00553319
 00553315    pop         edx
 00553316    pop         eax
>00553317    jl          005532D2
 00553319    cmp         dword ptr [ebp-200],0
>00553320    je          00553397
 00553322    xor         ecx,ecx
 00553324    mov         edx,dword ptr [ebp-200]
 0055332A    mov         eax,dword ptr [ebp+8]
 0055332D    mov         ebx,dword ptr [eax]
 0055332F    call        dword ptr [ebx+14]
 00553332    lea         edx,[ebp-1]
 00553335    mov         ecx,1
 0055333A    mov         eax,dword ptr [ebp+8]
 0055333D    call        TStream.WriteBuffer
 00553342    lea         edx,[ebp-2]
 00553345    mov         ecx,1
 0055334A    mov         eax,dword ptr [ebp+8]
 0055334D    call        TStream.WriteBuffer
 00553352    lea         edx,[ebp-4]
 00553355    mov         ecx,2
 0055335A    mov         eax,dword ptr [ebp+8]
 0055335D    call        TStream.WriteBuffer
 00553362    xor         eax,eax
 00553364    mov         dword ptr [ebp-10],eax
 00553367    lea         edx,[ebp-10]
 0055336A    mov         ecx,4
 0055336F    mov         eax,dword ptr [ebp+8]
 00553372    call        TStream.WriteBuffer
 00553377    lea         edx,[ebp-10]
 0055337A    mov         ecx,4
 0055337F    mov         eax,dword ptr [ebp+8]
 00553382    call        TStream.WriteBuffer
 00553387    lea         edx,[ebp-10]
 0055338A    mov         ecx,4
 0055338F    mov         eax,dword ptr [ebp+8]
 00553392    call        TStream.WriteBuffer
 00553397    pop         ebx
 00553398    mov         esp,ebp
 0055339A    pop         ebp
 0055339B    ret         4
end;*}

//005533A0
{*procedure TfmHDD.miClrIBIAbortCodeClick(?:?);
begin
 005533A0    push        ebp
 005533A1    mov         ebp,esp
 005533A3    add         esp,0FFFFFFF4
 005533A6    mov         dword ptr [ebp-0C],edx
 005533A9    mov         dword ptr [ebp-4],eax
 005533AC    mov         dl,1
 005533AE    mov         eax,[0041DE14];TMemoryStream
 005533B3    call        TObject.Create;TMemoryStream.Create
 005533B8    mov         dword ptr [ebp-8],eax
 005533BB    xor         eax,eax
 005533BD    push        ebp
 005533BE    push        553419
 005533C3    push        dword ptr fs:[eax]
 005533C6    mov         dword ptr fs:[eax],esp
 005533C9    mov         edx,dword ptr [ebp-8]
 005533CC    mov         ax,0E6
 005533D0    call        005095B8
 005533D5    test        al,al
>005533D7    je          005533F4
 005533D9    mov         eax,dword ptr [ebp-8]
 005533DC    push        eax
 005533DD    xor         ecx,ecx
 005533DF    xor         edx,edx
 005533E1    xor         eax,eax
 005533E3    call        0055326C
 005533E8    mov         edx,dword ptr [ebp-8]
 005533EB    mov         ax,0E6
 005533EF    call        0050980C
 005533F4    call        004CEB6C
 005533F9    mov         eax,55342C;'Clear IBI Abort Code - '
 005533FE    call        00544F6C
 00553403    xor         eax,eax
 00553405    pop         edx
 00553406    pop         ecx
 00553407    pop         ecx
 00553408    mov         dword ptr fs:[eax],edx
 0055340B    push        553420
 00553410    mov         eax,dword ptr [ebp-8]
 00553413    call        TObject.Free
 00553418    ret
>00553419    jmp         @HandleFinally
>0055341E    jmp         00553410
 00553420    mov         esp,ebp
 00553422    pop         ebp
 00553423    ret
end;*}

//00553444
procedure sub_00553444(?:TMemoryStream);
begin
{*
 00553444    push        ebp
 00553445    mov         ebp,esp
 00553447    add         esp,0FFFFFDEC
 0055344D    push        ebx
 0055344E    mov         dword ptr [ebp-4],eax
 00553451    xor         ecx,ecx
 00553453    xor         edx,edx
 00553455    mov         eax,dword ptr [ebp-4]
 00553458    mov         ebx,dword ptr [eax]
 0055345A    call        dword ptr [ebx+14]
 0055345D    mov         eax,dword ptr [ebp-4]
 00553460    call        004CE56C
 00553465    mov         dword ptr [ebp-10],eax
 00553468    cmp         dword ptr [ebp-10],4C594F52
>0055346F    jne         00553482
 00553471    xor         ecx,ecx
 00553473    mov         edx,30
 00553478    mov         eax,dword ptr [ebp-4]
 0055347B    mov         ebx,dword ptr [eax]
 0055347D    call        dword ptr [ebx+14]
>00553480    jmp         00553491
 00553482    xor         ecx,ecx
 00553484    mov         edx,18
 00553489    mov         eax,dword ptr [ebp-4]
 0055348C    mov         ebx,dword ptr [eax]
 0055348E    call        dword ptr [ebx+14]
 00553491    xor         eax,eax
 00553493    mov         dword ptr [ebp-0C],eax
 00553496    mov         eax,dword ptr [ebp-4]
 00553499    call        004CE56C
 0055349E    mov         dword ptr [ebp-8],eax
>005534A1    jmp         005534B8
 005534A3    mov         eax,dword ptr [ebp-4]
 005534A6    call        004CE56C
 005534AB    mov         edx,dword ptr [ebp-0C]
 005534AE    mov         dword ptr [ebp+edx*4-214],eax
 005534B5    inc         dword ptr [ebp-0C]
 005534B8    mov         eax,dword ptr [ebp-0C]
 005534BB    cmp         eax,dword ptr [ebp-8]
>005534BE    jae         005534EA
 005534C0    mov         eax,dword ptr [ebp-4]
 005534C3    mov         edx,dword ptr [eax]
 005534C5    call        dword ptr [edx]
 005534C7    sub         eax,18
 005534CA    sbb         edx,0
 005534CD    push        edx
 005534CE    push        eax
 005534CF    mov         eax,dword ptr [ebp-4]
 005534D2    call        TStream.GetPosition
 005534D7    cmp         edx,dword ptr [esp+4]
>005534DB    jne         005534E6
 005534DD    cmp         eax,dword ptr [esp]
 005534E0    pop         edx
 005534E1    pop         eax
>005534E2    jb          005534A3
>005534E4    jmp         005534EA
 005534E6    pop         edx
 005534E7    pop         eax
>005534E8    jl          005534A3
 005534EA    cmp         dword ptr [ebp-1E0],0
>005534F1    je          00553541
 005534F3    xor         eax,eax
 005534F5    mov         dword ptr [ebp-10],eax
 005534F8    xor         ecx,ecx
 005534FA    mov         edx,dword ptr [ebp-1E0]
 00553500    mov         eax,dword ptr [ebp-4]
 00553503    mov         ebx,dword ptr [eax]
 00553505    call        dword ptr [ebx+14]
 00553508    xor         eax,eax
 0055350A    mov         dword ptr [ebp-0C],eax
 0055350D    lea         edx,[ebp-10]
 00553510    mov         ecx,4
 00553515    mov         eax,dword ptr [ebp-4]
 00553518    call        TStream.WriteBuffer
 0055351D    inc         dword ptr [ebp-0C]
 00553520    cmp         dword ptr [ebp-0C],7E
>00553524    jne         0055350D
 00553526    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055352B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553531    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553537    mov         edx,5535B8;'Soft Error Counter - has been cleared'
 0055353C    mov         ecx,dword ptr [eax]
 0055353E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553541    cmp         dword ptr [ebp-1DC],0
>00553548    je          005535AA
 0055354A    xor         eax,eax
 0055354C    mov         dword ptr [ebp-10],eax
 0055354F    xor         ecx,ecx
 00553551    mov         edx,dword ptr [ebp-1DC]
 00553557    mov         eax,dword ptr [ebp-4]
 0055355A    mov         ebx,dword ptr [eax]
 0055355C    call        dword ptr [ebx+14]
 0055355F    lea         edx,[ebp-10]
 00553562    mov         ecx,4
 00553567    mov         eax,dword ptr [ebp-4]
 0055356A    call        TStream.WriteBuffer
 0055356F    lea         edx,[ebp-10]
 00553572    mov         ecx,4
 00553577    mov         eax,dword ptr [ebp-4]
 0055357A    call        TStream.WriteBuffer
 0055357F    lea         edx,[ebp-10]
 00553582    mov         ecx,4
 00553587    mov         eax,dword ptr [ebp-4]
 0055358A    call        TStream.WriteBuffer
 0055358F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553594    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055359A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005535A0    mov         edx,5535E8;'Soft Error Total Counter - has been cleared'
 005535A5    mov         ecx,dword ptr [eax]
 005535A7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005535AA    pop         ebx
 005535AB    mov         esp,ebp
 005535AD    pop         ebp
 005535AE    ret
*}
end;

//00553614
{*procedure TfmHDD.miClearIBIParametersClick(?:?);
begin
 00553614    push        ebp
 00553615    mov         ebp,esp
 00553617    add         esp,0FFFFFFF0
 0055361A    xor         ecx,ecx
 0055361C    mov         dword ptr [ebp-0C],ecx
 0055361F    mov         dword ptr [ebp-10],ecx
 00553622    mov         dword ptr [ebp-8],edx
 00553625    mov         dword ptr [ebp-4],eax
 00553628    xor         eax,eax
 0055362A    push        ebp
 0055362B    push        55368E
 00553630    push        dword ptr fs:[eax]
 00553633    mov         dword ptr fs:[eax],esp
 00553636    mov         ax,0E7
 0055363A    call        005077AC
 0055363F    push        5536A4;'Module '
 00553644    lea         ecx,[ebp-10]
 00553647    mov         edx,2
 0055364C    mov         eax,0E7
 00553651    call        IntToHex
 00553656    push        dword ptr [ebp-10]
 00553659    push        5536B4;' clear - '
 0055365E    lea         eax,[ebp-0C]
 00553661    mov         edx,3
 00553666    call        @LStrCatN
 0055366B    mov         eax,dword ptr [ebp-0C]
 0055366E    call        00544F6C
 00553673    xor         eax,eax
 00553675    pop         edx
 00553676    pop         ecx
 00553677    pop         ecx
 00553678    mov         dword ptr fs:[eax],edx
 0055367B    push        553695
 00553680    lea         eax,[ebp-10]
 00553683    mov         edx,2
 00553688    call        @LStrArrayClr
 0055368D    ret
>0055368E    jmp         @HandleFinally
>00553693    jmp         00553680
 00553695    mov         esp,ebp
 00553697    pop         ebp
 00553698    ret
end;*}

//005536C0
procedure TfmHDD.CanWrite1Click(Sender:TObject);
begin
{*
 005536C0    push        ebp
 005536C1    mov         ebp,esp
 005536C3    mov         ecx,6
 005536C8    push        0
 005536CA    push        0
 005536CC    dec         ecx
>005536CD    jne         005536C8
 005536CF    push        ebx
 005536D0    mov         dword ptr [ebp-18],edx
 005536D3    mov         dword ptr [ebp-4],eax
 005536D6    xor         eax,eax
 005536D8    push        ebp
 005536D9    push        553932
 005536DE    push        dword ptr fs:[eax]
 005536E1    mov         dword ptr fs:[eax],esp
 005536E4    mov         eax,[0056E5A4];^gvar_0056DF04
 005536E9    mov         byte ptr [eax],0
 005536EC    mov         dl,1
 005536EE    mov         eax,[0041DE14];TMemoryStream
 005536F3    call        TObject.Create;TMemoryStream.Create
 005536F8    mov         dword ptr [ebp-8],eax
 005536FB    xor         eax,eax
 005536FD    push        ebp
 005536FE    push        55375B
 00553703    push        dword ptr fs:[eax]
 00553706    mov         dword ptr fs:[eax],esp
 00553709    mov         ecx,dword ptr [ebp-8]
 0055370C    xor         edx,edx
 0055370E    mov         ax,1
 00553712    call        00509E08
 00553717    test        al,al
>00553719    je          00553737
 0055371B    xor         ecx,ecx
 0055371D    mov         edx,1E
 00553722    mov         eax,dword ptr [ebp-8]
 00553725    mov         ebx,dword ptr [eax]
 00553727    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055372A    mov         eax,dword ptr [ebp-8]
 0055372D    call        004CE528
 00553732    mov         byte ptr [ebp-0A],al
>00553735    jmp         00553745
 00553737    mov         eax,553948;'Read Drive Parametrs - '
 0055373C    call        00544F6C
 00553741    mov         byte ptr [ebp-0A],2
 00553745    xor         eax,eax
 00553747    pop         edx
 00553748    pop         ecx
 00553749    pop         ecx
 0055374A    mov         dword ptr fs:[eax],edx
 0055374D    push        553762
 00553752    mov         eax,dword ptr [ebp-8]
 00553755    call        TObject.Free
 0055375A    ret
>0055375B    jmp         @HandleFinally
>00553760    jmp         00553752
 00553762    lea         edx,[ebp-20]
 00553765    xor         eax,eax
 00553767    mov         al,byte ptr [ebp-0A]
 0055376A    call        IntToStr
 0055376F    mov         ecx,dword ptr [ebp-20]
 00553772    lea         eax,[ebp-1C]
 00553775    mov         edx,553968;#10+Write Test on Track -4, Num Heads :'
 0055377A    call        @LStrCat3
 0055377F    mov         edx,dword ptr [ebp-1C]
 00553782    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553787    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055378D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553793    mov         ecx,dword ptr [eax]
 00553795    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553798    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055379D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005537A3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005537A9    mov         edx,553998;'---------------------------------------'
 005537AE    mov         ecx,dword ptr [eax]
 005537B0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005537B3    mov         byte ptr [ebp-9],0
>005537B7    jmp         005538F4
 005537BC    mov         eax,[0056E344];^gvar_0059BF5C
 005537C1    xor         ecx,ecx
 005537C3    mov         edx,3000
 005537C8    call        @FillChar
 005537CD    lea         eax,[ebp-10]
 005537D0    mov         edx,5539C8;'Write Test  '
 005537D5    call        @LStrLAsg
 005537DA    lea         eax,[ebp-14]
 005537DD    mov         edx,5539E0;'            '
 005537E2    call        @LStrLAsg
 005537E7    lea         eax,[ebp-10]
 005537EA    call        00405598
 005537EF    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005537F5    mov         ecx,0C
 005537FA    call        Move
 005537FF    mov         al,byte ptr [ebp-9]
 00553802    push        eax
 00553803    mov         ecx,0FFFFFFFC
 00553808    mov         dx,1
 0055380C    mov         ax,1
 00553810    call        004CEFA4
 00553815    call        004CEC08
 0055381A    mov         al,byte ptr [ebp-9]
 0055381D    push        eax
 0055381E    mov         ecx,0FFFFFFFC
 00553823    mov         dx,1
 00553827    mov         ax,1
 0055382B    call        004CEE3C
 00553830    mov         eax,[0056E3F8];^gvar_0059BF4C
 00553835    cmp         byte ptr [eax],0
>00553838    jne         00553862
 0055383A    mov         eax,[0056E5A4];^gvar_0056DF04
 0055383F    cmp         byte ptr [eax],0
>00553842    jne         00553862
 00553844    call        004CEAB4
 00553849    lea         eax,[ebp-14]
 0055384C    call        00405598
 00553851    mov         edx,eax
 00553853    mov         eax,[0056E344];^gvar_0059BF5C
 00553858    mov         ecx,0C
 0055385D    call        Move
 00553862    mov         eax,dword ptr [ebp-10]
 00553865    mov         edx,dword ptr [ebp-14]
 00553868    call        @LStrCmp
>0055386D    je          005538B1
 0055386F    push        5539F8;'Head '
 00553874    lea         edx,[ebp-28]
 00553877    xor         eax,eax
 00553879    mov         al,byte ptr [ebp-9]
 0055387C    call        IntToStr
 00553881    push        dword ptr [ebp-28]
 00553884    push        553A08;' - BAD'
 00553889    lea         eax,[ebp-24]
 0055388C    mov         edx,3
 00553891    call        @LStrCatN
 00553896    mov         edx,dword ptr [ebp-24]
 00553899    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055389E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005538A4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005538AA    mov         ecx,dword ptr [eax]
 005538AC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>005538AF    jmp         005538F1
 005538B1    push        5539F8;'Head '
 005538B6    lea         edx,[ebp-30]
 005538B9    xor         eax,eax
 005538BB    mov         al,byte ptr [ebp-9]
 005538BE    call        IntToStr
 005538C3    push        dword ptr [ebp-30]
 005538C6    push        553A18;' - GOOD'
 005538CB    lea         eax,[ebp-2C]
 005538CE    mov         edx,3
 005538D3    call        @LStrCatN
 005538D8    mov         edx,dword ptr [ebp-2C]
 005538DB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005538E0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005538E6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005538EC    mov         ecx,dword ptr [eax]
 005538EE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005538F1    inc         byte ptr [ebp-9]
 005538F4    mov         al,byte ptr [ebp-9]
 005538F7    cmp         al,byte ptr [ebp-0A]
>005538FA    jae         0055390A
 005538FC    mov         eax,[0056E5A4];^gvar_0056DF04
 00553901    cmp         byte ptr [eax],0
>00553904    je          005537BC
 0055390A    xor         eax,eax
 0055390C    pop         edx
 0055390D    pop         ecx
 0055390E    pop         ecx
 0055390F    mov         dword ptr fs:[eax],edx
 00553912    push        553939
 00553917    lea         eax,[ebp-30]
 0055391A    mov         edx,6
 0055391F    call        @LStrArrayClr
 00553924    lea         eax,[ebp-14]
 00553927    mov         edx,2
 0055392C    call        @LStrArrayClr
 00553931    ret
>00553932    jmp         @HandleFinally
>00553937    jmp         00553917
 00553939    pop         ebx
 0055393A    mov         esp,ebp
 0055393C    pop         ebp
 0055393D    ret
*}
end;

//00553A20
{*procedure TfmHDD.miMRResistanceClick(?:?);
begin
 00553A20    push        ebp
 00553A21    mov         ebp,esp
 00553A23    add         esp,0FFFFFFC0
 00553A26    push        ebx
 00553A27    xor         ecx,ecx
 00553A29    mov         dword ptr [ebp-40],ecx
 00553A2C    mov         dword ptr [ebp-2C],ecx
 00553A2F    mov         dword ptr [ebp-20],ecx
 00553A32    mov         dword ptr [ebp-1C],ecx
 00553A35    mov         dword ptr [ebp-18],ecx
 00553A38    mov         dword ptr [ebp-14],edx
 00553A3B    mov         dword ptr [ebp-4],eax
 00553A3E    xor         eax,eax
 00553A40    push        ebp
 00553A41    push        553CB1
 00553A46    push        dword ptr fs:[eax]
 00553A49    mov         dword ptr fs:[eax],esp
 00553A4C    mov         dl,1
 00553A4E    mov         eax,[0041DE14];TMemoryStream
 00553A53    call        TObject.Create;TMemoryStream.Create
 00553A58    mov         dword ptr [ebp-8],eax
 00553A5B    xor         eax,eax
 00553A5D    push        ebp
 00553A5E    push        553C7F
 00553A63    push        dword ptr fs:[eax]
 00553A66    mov         dword ptr fs:[eax],esp
 00553A69    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00553A6F    mov         edx,dword ptr [edx]
 00553A71    lea         eax,[ebp-18]
 00553A74    mov         ecx,553CC8;'CPs'
 00553A79    call        @LStrCat3
 00553A7E    mov         eax,dword ptr [ebp-18]
 00553A81    call        004CC648
 00553A86    test        al,al
>00553A88    jne         00553ABC
 00553A8A    push        553CD4;'Cannot create '
 00553A8F    mov         eax,[0056E2D0];^gvar_0056DF38
 00553A94    push        dword ptr [eax]
 00553A96    push        553CC8;'CPs'
 00553A9B    lea         eax,[ebp-1C]
 00553A9E    mov         edx,3
 00553AA3    call        @LStrCatN
 00553AA8    mov         ecx,dword ptr [ebp-1C]
 00553AAB    mov         dl,1
 00553AAD    mov         eax,[0040B004];Exception
 00553AB2    call        Exception.Create;Exception.Create
 00553AB7    call        @RaiseExcept
 00553ABC    mov         ecx,dword ptr [ebp-8]
 00553ABF    xor         edx,edx
 00553AC1    mov         ax,8
 00553AC5    call        00509E08
 00553ACA    test        al,al
>00553ACC    je          00553C5A
 00553AD2    xor         ecx,ecx
 00553AD4    xor         edx,edx
 00553AD6    mov         eax,dword ptr [ebp-8]
 00553AD9    mov         ebx,dword ptr [eax]
 00553ADB    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00553ADE    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00553AE4    mov         ecx,200
 00553AE9    mov         eax,dword ptr [ebp-8]
 00553AEC    mov         ebx,dword ptr [eax]
 00553AEE    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00553AF1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553AF6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553AFC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553B02    mov         edx,553CEC;#10+MR RESISTANCE DATA TABLE'
 00553B07    mov         ecx,dword ptr [eax]
 00553B09    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553B0C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553B11    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553B17    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553B1D    mov         edx,553D10;'------------------------'
 00553B22    mov         ecx,dword ptr [eax]
 00553B24    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553B27    lea         eax,[ebp-20]
 00553B2A    push        eax
 00553B2B    mov         eax,[0056E344];^gvar_0059BF5C
 00553B30    movzx       eax,word ptr [eax]
 00553B33    mov         dword ptr [ebp-28],eax
 00553B36    mov         byte ptr [ebp-24],0
 00553B3A    lea         edx,[ebp-28]
 00553B3D    xor         ecx,ecx
 00553B3F    mov         eax,553D34;'Format Version = %d'
 00553B44    call        0040D630
 00553B49    mov         edx,dword ptr [ebp-20]
 00553B4C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553B51    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553B57    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553B5D    mov         ecx,dword ptr [eax]
 00553B5F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553B62    mov         eax,[0056E344];^gvar_0059BF5C
 00553B67    movzx       eax,byte ptr [eax+2]
 00553B6B    dec         eax
 00553B6C    test        eax,eax
>00553B6E    jl          00553C69
 00553B74    inc         eax
 00553B75    mov         dword ptr [ebp-10],eax
 00553B78    mov         dword ptr [ebp-0C],0
 00553B7F    cmp         dword ptr [ebp-0C],0
>00553B83    je          00553B97
 00553B85    cmp         dword ptr [ebp-0C],2
>00553B89    je          00553B97
 00553B8B    cmp         dword ptr [ebp-0C],4
>00553B8F    je          00553B97
 00553B91    cmp         dword ptr [ebp-0C],6
>00553B95    jne         00553BB2
 00553B97    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553B9C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553BA2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553BA8    mov         edx,553D50;'------------------------------------'
 00553BAD    mov         ecx,dword ptr [eax]
 00553BAF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553BB2    lea         eax,[ebp-2C]
 00553BB5    push        eax
 00553BB6    mov         eax,dword ptr [ebp-0C]
 00553BB9    mov         dword ptr [ebp-3C],eax
 00553BBC    mov         byte ptr [ebp-38],0
 00553BC0    mov         eax,[0056E344];^gvar_0059BF5C
 00553BC5    mov         edx,dword ptr [ebp-0C]
 00553BC8    movzx       eax,word ptr [eax+edx*4+14]
 00553BCD    mov         dword ptr [ebp-34],eax
 00553BD0    mov         byte ptr [ebp-30],0
 00553BD4    lea         edx,[ebp-3C]
 00553BD7    mov         ecx,1
 00553BDC    mov         eax,553D80;'Head %d MRR Ref Value (bits/toc) = %x'
 00553BE1    call        0040D630
 00553BE6    mov         edx,dword ptr [ebp-2C]
 00553BE9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553BEE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553BF4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553BFA    mov         ecx,dword ptr [eax]
 00553BFC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553BFF    lea         eax,[ebp-40]
 00553C02    push        eax
 00553C03    mov         eax,dword ptr [ebp-0C]
 00553C06    mov         dword ptr [ebp-3C],eax
 00553C09    mov         byte ptr [ebp-38],0
 00553C0D    mov         eax,[0056E344];^gvar_0059BF5C
 00553C12    mov         edx,dword ptr [ebp-0C]
 00553C15    movzx       eax,word ptr [eax+edx*4+16]
 00553C1A    mov         dword ptr [ebp-34],eax
 00553C1D    mov         byte ptr [ebp-30],0
 00553C21    lea         edx,[ebp-3C]
 00553C24    mov         ecx,1
 00553C29    mov         eax,553DB0;'Head %d MRR Cur Value            = %x'+#10
 00553C2E    call        0040D630
 00553C33    mov         edx,dword ptr [ebp-40]
 00553C36    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553C3B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553C41    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553C47    mov         ecx,dword ptr [eax]
 00553C49    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553C4C    inc         dword ptr [ebp-0C]
 00553C4F    dec         dword ptr [ebp-10]
>00553C52    jne         00553B7F
>00553C58    jmp         00553C69
 00553C5A    call        004CEB6C
 00553C5F    mov         eax,553DE0;'Read MR Resistance Table - '
 00553C64    call        00544F6C
 00553C69    xor         eax,eax
 00553C6B    pop         edx
 00553C6C    pop         ecx
 00553C6D    pop         ecx
 00553C6E    mov         dword ptr fs:[eax],edx
 00553C71    push        553C86
 00553C76    mov         eax,dword ptr [ebp-8]
 00553C79    call        TObject.Free
 00553C7E    ret
>00553C7F    jmp         @HandleFinally
>00553C84    jmp         00553C76
 00553C86    xor         eax,eax
 00553C88    pop         edx
 00553C89    pop         ecx
 00553C8A    pop         ecx
 00553C8B    mov         dword ptr fs:[eax],edx
 00553C8E    push        553CB8
 00553C93    lea         eax,[ebp-40]
 00553C96    call        @LStrClr
 00553C9B    lea         eax,[ebp-2C]
 00553C9E    call        @LStrClr
 00553CA3    lea         eax,[ebp-20]
 00553CA6    mov         edx,3
 00553CAB    call        @LStrArrayClr
 00553CB0    ret
>00553CB1    jmp         @HandleFinally
>00553CB6    jmp         00553C93
 00553CB8    pop         ebx
 00553CB9    mov         esp,ebp
 00553CBB    pop         ebp
 00553CBC    ret
end;*}

//00553DFC
{*procedure TfmHDD.miTrackperInchClick(?:?);
begin
 00553DFC    push        ebp
 00553DFD    mov         ebp,esp
 00553DFF    add         esp,0FFFFFFD8
 00553E02    xor         ecx,ecx
 00553E04    mov         dword ptr [ebp-10],ecx
 00553E07    mov         dword ptr [ebp-0C],edx
 00553E0A    mov         dword ptr [ebp-4],eax
 00553E0D    xor         eax,eax
 00553E0F    push        ebp
 00553E10    push        553F26
 00553E15    push        dword ptr fs:[eax]
 00553E18    mov         dword ptr fs:[eax],esp
 00553E1B    call        004CED2C
 00553E20    push        0
 00553E22    push        0
 00553E24    push        0
 00553E26    push        0
 00553E28    push        0
 00553E2A    xor         ecx,ecx
 00553E2C    mov         dx,1
 00553E30    mov         ax,26
 00553E34    call        004CE5F4
 00553E39    mov         eax,[0056E3F8];^gvar_0059BF4C
 00553E3E    cmp         byte ptr [eax],0
>00553E41    jne         00553F01
 00553E47    mov         eax,[0056E5A4];^gvar_0056DF04
 00553E4C    cmp         byte ptr [eax],0
>00553E4F    jne         00553F01
 00553E55    call        004CEAB4
 00553E5A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553E5F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553E65    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553E6B    mov         edx,553F3C;#10+TPI Table Index'
 00553E70    mov         ecx,dword ptr [eax]
 00553E72    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553E75    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553E7A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553E80    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553E86    mov         edx,553F58;'---------------'
 00553E8B    mov         ecx,dword ptr [eax]
 00553E8D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553E90    xor         eax,eax
 00553E92    mov         dword ptr [ebp-8],eax
 00553E95    lea         eax,[ebp-10]
 00553E98    push        eax
 00553E99    mov         eax,dword ptr [ebp-8]
 00553E9C    mov         dword ptr [ebp-28],eax
 00553E9F    mov         byte ptr [ebp-24],0
 00553EA3    mov         eax,[0056E344];^gvar_0059BF5C
 00553EA8    mov         edx,dword ptr [ebp-8]
 00553EAB    movzx       eax,word ptr [eax+edx*2+2]
 00553EB0    mov         dword ptr [ebp-20],eax
 00553EB3    mov         byte ptr [ebp-1C],0
 00553EB7    mov         eax,[0056E344];^gvar_0059BF5C
 00553EBC    mov         edx,dword ptr [ebp-8]
 00553EBF    movzx       eax,word ptr [eax+edx*2+2]
 00553EC4    mov         dword ptr [ebp-18],eax
 00553EC7    mov         byte ptr [ebp-14],0
 00553ECB    lea         edx,[ebp-28]
 00553ECE    mov         ecx,2
 00553ED3    mov         eax,553F70;'TPI Code for head %d= %x (%d)'
 00553ED8    call        0040D630
 00553EDD    mov         edx,dword ptr [ebp-10]
 00553EE0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00553EE5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00553EEB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00553EF1    mov         ecx,dword ptr [eax]
 00553EF3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00553EF6    inc         dword ptr [ebp-8]
 00553EF9    cmp         dword ptr [ebp-8],8
>00553EFD    jne         00553E95
>00553EFF    jmp         00553F10
 00553F01    call        004CEB6C
 00553F06    mov         eax,553F98;'Read TPI Parameters - '
 00553F0B    call        00544F6C
 00553F10    xor         eax,eax
 00553F12    pop         edx
 00553F13    pop         ecx
 00553F14    pop         ecx
 00553F15    mov         dword ptr fs:[eax],edx
 00553F18    push        553F2D
 00553F1D    lea         eax,[ebp-10]
 00553F20    call        @LStrClr
 00553F25    ret
>00553F26    jmp         @HandleFinally
>00553F2B    jmp         00553F1D
 00553F2D    mov         esp,ebp
 00553F2F    pop         ebp
 00553F30    ret
end;*}

//00553FB0
{*procedure TfmHDD.miCpuRamOperationsClick(?:?);
begin
 00553FB0    push        ebp
 00553FB1    mov         ebp,esp
 00553FB3    add         esp,0FFFFFFF8
 00553FB6    mov         dword ptr [ebp-8],edx
 00553FB9    mov         dword ptr [ebp-4],eax
 00553FBC    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00553FC2    mov         eax,[00539AA8];TfmCpuRam
 00553FC7    call        00539D04
 00553FCC    pop         ecx
 00553FCD    pop         ecx
 00553FCE    pop         ebp
 00553FCF    ret
end;*}

//00553FD0
{*procedure TfmHDD.miTableOperationsClick(?:?);
begin
 00553FD0    push        ebp
 00553FD1    mov         ebp,esp
 00553FD3    add         esp,0FFFFFFF8
 00553FD6    mov         dword ptr [ebp-8],edx
 00553FD9    mov         dword ptr [ebp-4],eax
 00553FDC    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00553FE2    mov         eax,[0053AB60];TfmTable
 00553FE7    call        0053AD8C
 00553FEC    pop         ecx
 00553FED    pop         ecx
 00553FEE    pop         ebp
 00553FEF    ret
end;*}

//00553FF0
procedure TfmHDD.miFieldOperationsClick(Sender:TObject);
begin
{*
 00553FF0    push        ebp
 00553FF1    mov         ebp,esp
 00553FF3    add         esp,0FFFFFFF8
 00553FF6    mov         dword ptr [ebp-8],edx
 00553FF9    mov         dword ptr [ebp-4],eax
 00553FFC    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00554002    mov         eax,[0053B460];TfmField
 00554007    call        0053B6FC
 0055400C    pop         ecx
 0055400D    pop         ecx
 0055400E    pop         ebp
 0055400F    ret
*}
end;

//00554010
{*procedure TfmHDD.ToolButton5Click(?:?);
begin
 00554010    push        ebp
 00554011    mov         ebp,esp
 00554013    add         esp,0FFFFFFF8
 00554016    mov         dword ptr [ebp-8],edx
 00554019    mov         dword ptr [ebp-4],eax
 0055401C    mov         edx,dword ptr [ebp-8]
 0055401F    mov         eax,dword ptr [ebp-4]
 00554022    call        TfmHDD.miReinitRoadMapClick
 00554027    pop         ecx
 00554028    pop         ecx
 00554029    pop         ebp
 0055402A    ret
end;*}

//0055402C
procedure TfmHDD.miServoActuatorInitClick(Sender:TObject);
begin
{*
 0055402C    push        ebp
 0055402D    mov         ebp,esp
 0055402F    add         esp,0FFFFFFF8
 00554032    mov         dword ptr [ebp-8],edx
 00554035    mov         dword ptr [ebp-4],eax
 00554038    mov         ax,3
 0055403C    call        004CF384
 00554041    call        004CEB6C
 00554046    mov         eax,55405C;'Servo Actuator Init - '
 0055404B    call        00544F6C
 00554050    pop         ecx
 00554051    pop         ecx
 00554052    pop         ebp
 00554053    ret
*}
end;

//00554074
{*procedure TfmHDD.miServoCalibrationClick(?:?);
begin
 00554074    push        ebp
 00554075    mov         ebp,esp
 00554077    add         esp,0FFFFFFF8
 0055407A    mov         dword ptr [ebp-8],edx
 0055407D    mov         dword ptr [ebp-4],eax
 00554080    mov         ax,4
 00554084    call        004CF384
 00554089    call        004CEB6C
 0055408E    mov         eax,5540A4;'Servo Calibration - '
 00554093    call        00544F6C
 00554098    pop         ecx
 00554099    pop         ecx
 0055409A    pop         ebp
 0055409B    ret
end;*}

//005540BC
{*procedure TfmHDD.miServoParkClick(?:?);
begin
 005540BC    push        ebp
 005540BD    mov         ebp,esp
 005540BF    add         esp,0FFFFFFF8
 005540C2    mov         dword ptr [ebp-8],edx
 005540C5    mov         dword ptr [ebp-4],eax
 005540C8    mov         ax,4
 005540CC    call        004CF384
 005540D1    call        004CEB6C
 005540D6    mov         eax,5540EC;'Servo Park - '
 005540DB    call        00544F6C
 005540E0    pop         ecx
 005540E1    pop         ecx
 005540E2    pop         ebp
 005540E3    ret
end;*}

//005540FC
{*procedure TfmHDD.miTaaTableClick(?:?);
begin
 005540FC    push        ebp
 005540FD    mov         ebp,esp
 005540FF    mov         ecx,9
 00554104    push        0
 00554106    push        0
 00554108    dec         ecx
>00554109    jne         00554104
 0055410B    push        ebx
 0055410C    mov         dword ptr [ebp-14],edx
 0055410F    mov         dword ptr [ebp-4],eax
 00554112    xor         eax,eax
 00554114    push        ebp
 00554115    push        5544F4
 0055411A    push        dword ptr fs:[eax]
 0055411D    mov         dword ptr fs:[eax],esp
 00554120    mov         dl,1
 00554122    mov         eax,[0041DE14];TMemoryStream
 00554127    call        TObject.Create;TMemoryStream.Create
 0055412C    mov         dword ptr [ebp-8],eax
 0055412F    xor         eax,eax
 00554131    push        ebp
 00554132    push        5544CA
 00554137    push        dword ptr fs:[eax]
 0055413A    mov         dword ptr fs:[eax],esp
 0055413D    mov         ecx,dword ptr [ebp-8]
 00554140    xor         edx,edx
 00554142    mov         ax,2
 00554146    call        00509E08
 0055414B    test        al,al
>0055414D    je          005544A5
 00554153    xor         ecx,ecx
 00554155    xor         edx,edx
 00554157    mov         eax,dword ptr [ebp-8]
 0055415A    mov         ebx,dword ptr [eax]
 0055415C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055415F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554165    mov         ecx,200
 0055416A    mov         eax,dword ptr [ebp-8]
 0055416D    mov         ebx,dword ptr [eax]
 0055416F    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00554172    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554177    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055417D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554183    mov         edx,554508;#10+DRIVE Track Average Amplitude (TAA) DATA TABLE'
 00554188    mov         ecx,dword ptr [eax]
 0055418A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055418D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554192    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554198    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055419E    mov         edx,554540;'--------------------'
 005541A3    mov         ecx,dword ptr [eax]
 005541A5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005541A8    lea         eax,[ebp-18]
 005541AB    push        eax
 005541AC    mov         eax,[0056E344];^gvar_0059BF5C
 005541B1    movzx       eax,word ptr [eax]
 005541B4    mov         dword ptr [ebp-20],eax
 005541B7    mov         byte ptr [ebp-1C],0
 005541BB    lea         edx,[ebp-20]
 005541BE    xor         ecx,ecx
 005541C0    mov         eax,554560;'Format Version             = %x'
 005541C5    call        0040D630
 005541CA    mov         edx,dword ptr [ebp-18]
 005541CD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005541D2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005541D8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005541DE    mov         ecx,dword ptr [eax]
 005541E0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005541E3    lea         eax,[ebp-24]
 005541E6    push        eax
 005541E7    mov         eax,[0056E344];^gvar_0059BF5C
 005541EC    movzx       eax,byte ptr [eax+2]
 005541F0    mov         dword ptr [ebp-20],eax
 005541F3    mov         byte ptr [ebp-1C],0
 005541F7    lea         edx,[ebp-20]
 005541FA    xor         ecx,ecx
 005541FC    mov         eax,554588;'No. of Heads               = %d'
 00554201    call        0040D630
 00554206    mov         edx,dword ptr [ebp-24]
 00554209    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055420E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554214    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055421A    mov         ecx,dword ptr [eax]
 0055421C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055421F    lea         eax,[ebp-28]
 00554222    push        eax
 00554223    mov         eax,[0056E344];^gvar_0059BF5C
 00554228    movzx       eax,byte ptr [eax+3]
 0055422C    mov         dword ptr [ebp-20],eax
 0055422F    mov         byte ptr [ebp-1C],0
 00554233    lea         edx,[ebp-20]
 00554236    xor         ecx,ecx
 00554238    mov         eax,5545B0;'No. of TAA segments per Hd = %d'
 0055423D    call        0040D630
 00554242    mov         edx,dword ptr [ebp-28]
 00554245    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055424A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554250    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554256    mov         ecx,dword ptr [eax]
 00554258    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055425B    lea         eax,[ebp-2C]
 0055425E    push        eax
 0055425F    mov         eax,[0056E344];^gvar_0059BF5C
 00554264    movzx       eax,byte ptr [eax+4]
 00554268    mov         dword ptr [ebp-20],eax
 0055426B    mov         byte ptr [ebp-1C],0
 0055426F    lea         edx,[ebp-20]
 00554272    xor         ecx,ecx
 00554274    mov         eax,5545D8;'Units of measure           = %d (1=0.0001 db)'
 00554279    call        0040D630
 0055427E    mov         edx,dword ptr [ebp-2C]
 00554281    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554286    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055428C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554292    mov         ecx,dword ptr [eax]
 00554294    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554297    mov         eax,[0056E344];^gvar_0059BF5C
 0055429C    movzx       eax,byte ptr [eax+2]
 005542A0    dec         eax
 005542A1    test        eax,eax
>005542A3    jl          005544B4
 005542A9    inc         eax
 005542AA    mov         dword ptr [ebp-10],eax
 005542AD    mov         dword ptr [ebp-0C],0
 005542B4    lea         eax,[ebp-30]
 005542B7    push        eax
 005542B8    mov         eax,dword ptr [ebp-0C]
 005542BB    mov         dword ptr [ebp-20],eax
 005542BE    mov         byte ptr [ebp-1C],0
 005542C2    lea         edx,[ebp-20]
 005542C5    xor         ecx,ecx
 005542C7    mov         eax,554610;#10+Head %d Track Average Amplitude Values'
 005542CC    call        0040D630
 005542D1    mov         edx,dword ptr [ebp-30]
 005542D4    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005542D9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005542DF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005542E5    mov         ecx,dword ptr [eax]
 005542E7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005542EA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005542EF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005542F5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005542FB    mov         edx,554640;'-----------------------'
 00554300    mov         ecx,dword ptr [eax]
 00554302    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554305    lea         eax,[ebp-34]
 00554308    push        eax
 00554309    mov         eax,dword ptr [ebp-0C]
 0055430C    lea         eax,[eax+eax*2]
 0055430F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554315    mov         eax,dword ptr [edx+eax*8+14]
 00554319    mov         dword ptr [ebp-20],eax
 0055431C    mov         byte ptr [ebp-1C],0
 00554320    lea         edx,[ebp-20]
 00554323    xor         ecx,ecx
 00554325    mov         eax,554660;'Outer Diameter TAA Ref. value  = %x'
 0055432A    call        0040D630
 0055432F    mov         edx,dword ptr [ebp-34]
 00554332    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554337    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055433D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554343    mov         ecx,dword ptr [eax]
 00554345    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554348    lea         eax,[ebp-38]
 0055434B    push        eax
 0055434C    mov         eax,dword ptr [ebp-0C]
 0055434F    lea         eax,[eax+eax*2]
 00554352    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554358    mov         eax,dword ptr [edx+eax*8+18]
 0055435C    mov         dword ptr [ebp-20],eax
 0055435F    mov         byte ptr [ebp-1C],0
 00554363    lea         edx,[ebp-20]
 00554366    xor         ecx,ecx
 00554368    mov         eax,55468C;'Outer Diameter TAA value       = %x'
 0055436D    call        0040D630
 00554372    mov         edx,dword ptr [ebp-38]
 00554375    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055437A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554380    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554386    mov         ecx,dword ptr [eax]
 00554388    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055438B    lea         eax,[ebp-3C]
 0055438E    push        eax
 0055438F    mov         eax,dword ptr [ebp-0C]
 00554392    lea         eax,[eax+eax*2]
 00554395    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055439B    mov         eax,dword ptr [edx+eax*8+1C]
 0055439F    mov         dword ptr [ebp-20],eax
 005543A2    mov         byte ptr [ebp-1C],0
 005543A6    lea         edx,[ebp-20]
 005543A9    xor         ecx,ecx
 005543AB    mov         eax,5546B8;'Middle Diameter TAA Ref. value = %x'
 005543B0    call        0040D630
 005543B5    mov         edx,dword ptr [ebp-3C]
 005543B8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005543BD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005543C3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005543C9    mov         ecx,dword ptr [eax]
 005543CB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005543CE    lea         eax,[ebp-40]
 005543D1    push        eax
 005543D2    mov         eax,dword ptr [ebp-0C]
 005543D5    lea         eax,[eax+eax*2]
 005543D8    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005543DE    mov         eax,dword ptr [edx+eax*8+20]
 005543E2    mov         dword ptr [ebp-20],eax
 005543E5    mov         byte ptr [ebp-1C],0
 005543E9    lea         edx,[ebp-20]
 005543EC    xor         ecx,ecx
 005543EE    mov         eax,5546E4;'Middle Diameter TAA value      = %x'
 005543F3    call        0040D630
 005543F8    mov         edx,dword ptr [ebp-40]
 005543FB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554400    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554406    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055440C    mov         ecx,dword ptr [eax]
 0055440E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554411    lea         eax,[ebp-44]
 00554414    push        eax
 00554415    mov         eax,dword ptr [ebp-0C]
 00554418    lea         eax,[eax+eax*2]
 0055441B    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554421    mov         eax,dword ptr [edx+eax*8+24]
 00554425    mov         dword ptr [ebp-20],eax
 00554428    mov         byte ptr [ebp-1C],0
 0055442C    lea         edx,[ebp-20]
 0055442F    xor         ecx,ecx
 00554431    mov         eax,554710;'Inner Diameter TAA Ref. value  = %x'
 00554436    call        0040D630
 0055443B    mov         edx,dword ptr [ebp-44]
 0055443E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554443    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554449    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055444F    mov         ecx,dword ptr [eax]
 00554451    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554454    lea         eax,[ebp-48]
 00554457    push        eax
 00554458    mov         eax,dword ptr [ebp-0C]
 0055445B    lea         eax,[eax+eax*2]
 0055445E    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554464    mov         eax,dword ptr [edx+eax*8+28]
 00554468    mov         dword ptr [ebp-20],eax
 0055446B    mov         byte ptr [ebp-1C],0
 0055446F    lea         edx,[ebp-20]
 00554472    xor         ecx,ecx
 00554474    mov         eax,55473C;'Inner Diameter TAA value       = %x'
 00554479    call        0040D630
 0055447E    mov         edx,dword ptr [ebp-48]
 00554481    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554486    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055448C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554492    mov         ecx,dword ptr [eax]
 00554494    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554497    inc         dword ptr [ebp-0C]
 0055449A    dec         dword ptr [ebp-10]
>0055449D    jne         005542B4
>005544A3    jmp         005544B4
 005544A5    call        004CEB6C
 005544AA    mov         eax,554768;'Read Drive Track Average Amplitude Table - '
 005544AF    call        00544F6C
 005544B4    xor         eax,eax
 005544B6    pop         edx
 005544B7    pop         ecx
 005544B8    pop         ecx
 005544B9    mov         dword ptr fs:[eax],edx
 005544BC    push        5544D1
 005544C1    mov         eax,dword ptr [ebp-8]
 005544C4    call        TObject.Free
 005544C9    ret
>005544CA    jmp         @HandleFinally
>005544CF    jmp         005544C1
 005544D1    xor         eax,eax
 005544D3    pop         edx
 005544D4    pop         ecx
 005544D5    pop         ecx
 005544D6    mov         dword ptr fs:[eax],edx
 005544D9    push        5544FB
 005544DE    lea         eax,[ebp-48]
 005544E1    mov         edx,0A
 005544E6    call        @LStrArrayClr
 005544EB    lea         eax,[ebp-18]
 005544EE    call        @LStrClr
 005544F3    ret
>005544F4    jmp         @HandleFinally
>005544F9    jmp         005544DE
 005544FB    pop         ebx
 005544FC    mov         esp,ebp
 005544FE    pop         ebp
 005544FF    ret
end;*}

//00554794
{*procedure TfmHDD.miWriteSenseTableClick(?:?);
begin
 00554794    push        ebp
 00554795    mov         ebp,esp
 00554797    mov         ecx,8
 0055479C    push        0
 0055479E    push        0
 005547A0    dec         ecx
>005547A1    jne         0055479C
 005547A3    push        ebx
 005547A4    mov         dword ptr [ebp-14],edx
 005547A7    mov         dword ptr [ebp-4],eax
 005547AA    xor         eax,eax
 005547AC    push        ebp
 005547AD    push        554B14
 005547B2    push        dword ptr fs:[eax]
 005547B5    mov         dword ptr fs:[eax],esp
 005547B8    mov         dl,1
 005547BA    mov         eax,[0041DE14];TMemoryStream
 005547BF    call        TObject.Create;TMemoryStream.Create
 005547C4    mov         dword ptr [ebp-8],eax
 005547C7    xor         eax,eax
 005547C9    push        ebp
 005547CA    push        554AEA
 005547CF    push        dword ptr fs:[eax]
 005547D2    mov         dword ptr fs:[eax],esp
 005547D5    mov         ecx,dword ptr [ebp-8]
 005547D8    xor         edx,edx
 005547DA    mov         ax,3
 005547DE    call        00509E08
 005547E3    test        al,al
>005547E5    je          00554AC5
 005547EB    xor         ecx,ecx
 005547ED    xor         edx,edx
 005547EF    mov         eax,dword ptr [ebp-8]
 005547F2    mov         ebx,dword ptr [eax]
 005547F4    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005547F7    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005547FD    mov         ecx,200
 00554802    mov         eax,dword ptr [ebp-8]
 00554805    mov         ebx,dword ptr [eax]
 00554807    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 0055480A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055480F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554815    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055481B    mov         edx,554B28;#10+DRIVE Write Sensitivity DATA TABLE'
 00554820    mov         ecx,dword ptr [eax]
 00554822    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554825    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055482A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554830    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554836    mov         edx,554B54;'----------------------------------'
 0055483B    mov         ecx,dword ptr [eax]
 0055483D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554840    lea         eax,[ebp-18]
 00554843    push        eax
 00554844    mov         eax,[0056E344];^gvar_0059BF5C
 00554849    movzx       eax,word ptr [eax]
 0055484C    mov         dword ptr [ebp-20],eax
 0055484F    mov         byte ptr [ebp-1C],0
 00554853    lea         edx,[ebp-20]
 00554856    xor         ecx,ecx
 00554858    mov         eax,554B80;'Format Version = %x'
 0055485D    call        0040D630
 00554862    mov         edx,dword ptr [ebp-18]
 00554865    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055486A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554870    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554876    mov         ecx,dword ptr [eax]
 00554878    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055487B    lea         eax,[ebp-24]
 0055487E    push        eax
 0055487F    mov         eax,[0056E344];^gvar_0059BF5C
 00554884    movzx       eax,byte ptr [eax+2]
 00554888    mov         dword ptr [ebp-20],eax
 0055488B    mov         byte ptr [ebp-1C],0
 0055488F    lea         edx,[ebp-20]
 00554892    xor         ecx,ecx
 00554894    mov         eax,554B9C;'No. of Heads   = %d'
 00554899    call        0040D630
 0055489E    mov         edx,dword ptr [ebp-24]
 005548A1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005548A6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005548AC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005548B2    mov         ecx,dword ptr [eax]
 005548B4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005548B7    mov         eax,[0056E344];^gvar_0059BF5C
 005548BC    movzx       eax,byte ptr [eax+2]
 005548C0    dec         eax
 005548C1    test        eax,eax
>005548C3    jl          00554AD4
 005548C9    inc         eax
 005548CA    mov         dword ptr [ebp-10],eax
 005548CD    mov         dword ptr [ebp-0C],0
 005548D4    lea         eax,[ebp-28]
 005548D7    push        eax
 005548D8    mov         eax,dword ptr [ebp-0C]
 005548DB    mov         dword ptr [ebp-20],eax
 005548DE    mov         byte ptr [ebp-1C],0
 005548E2    lea         edx,[ebp-20]
 005548E5    xor         ecx,ecx
 005548E7    mov         eax,554BB8;#10+Head %d Write Sensitivity Values'
 005548EC    call        0040D630
 005548F1    mov         edx,dword ptr [ebp-28]
 005548F4    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005548F9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005548FF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554905    mov         ecx,dword ptr [eax]
 00554907    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055490A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055490F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554915    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055491B    mov         edx,554BE4;'-------------------------------'
 00554920    mov         ecx,dword ptr [eax]
 00554922    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554925    lea         eax,[ebp-2C]
 00554928    push        eax
 00554929    mov         eax,dword ptr [ebp-0C]
 0055492C    lea         eax,[eax+eax*2]
 0055492F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554935    mov         eax,dword ptr [edx+eax*8+14]
 00554939    mov         dword ptr [ebp-20],eax
 0055493C    mov         byte ptr [ebp-1C],0
 00554940    lea         edx,[ebp-20]
 00554943    xor         ecx,ecx
 00554945    mov         eax,554C0C;'Outer Diameter Write Sense. Ref. value  = %x'
 0055494A    call        0040D630
 0055494F    mov         edx,dword ptr [ebp-2C]
 00554952    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554957    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055495D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554963    mov         ecx,dword ptr [eax]
 00554965    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554968    lea         eax,[ebp-30]
 0055496B    push        eax
 0055496C    mov         eax,dword ptr [ebp-0C]
 0055496F    lea         eax,[eax+eax*2]
 00554972    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554978    mov         eax,dword ptr [edx+eax*8+18]
 0055497C    mov         dword ptr [ebp-20],eax
 0055497F    mov         byte ptr [ebp-1C],0
 00554983    lea         edx,[ebp-20]
 00554986    xor         ecx,ecx
 00554988    mov         eax,554C44;'Outer Diameter Write Sense. value       = %x'
 0055498D    call        0040D630
 00554992    mov         edx,dword ptr [ebp-30]
 00554995    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055499A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005549A0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005549A6    mov         ecx,dword ptr [eax]
 005549A8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005549AB    lea         eax,[ebp-34]
 005549AE    push        eax
 005549AF    mov         eax,dword ptr [ebp-0C]
 005549B2    lea         eax,[eax+eax*2]
 005549B5    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005549BB    mov         eax,dword ptr [edx+eax*8+1C]
 005549BF    mov         dword ptr [ebp-20],eax
 005549C2    mov         byte ptr [ebp-1C],0
 005549C6    lea         edx,[ebp-20]
 005549C9    xor         ecx,ecx
 005549CB    mov         eax,554C7C;'Middle Diameter Write Sense. Ref. value = %x'
 005549D0    call        0040D630
 005549D5    mov         edx,dword ptr [ebp-34]
 005549D8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005549DD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005549E3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005549E9    mov         ecx,dword ptr [eax]
 005549EB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005549EE    lea         eax,[ebp-38]
 005549F1    push        eax
 005549F2    mov         eax,dword ptr [ebp-0C]
 005549F5    lea         eax,[eax+eax*2]
 005549F8    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005549FE    mov         eax,dword ptr [edx+eax*8+20]
 00554A02    mov         dword ptr [ebp-20],eax
 00554A05    mov         byte ptr [ebp-1C],0
 00554A09    lea         edx,[ebp-20]
 00554A0C    xor         ecx,ecx
 00554A0E    mov         eax,554CB4;'Middle Diameter Write Sense. value      = %x'
 00554A13    call        0040D630
 00554A18    mov         edx,dword ptr [ebp-38]
 00554A1B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554A20    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554A26    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554A2C    mov         ecx,dword ptr [eax]
 00554A2E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554A31    lea         eax,[ebp-3C]
 00554A34    push        eax
 00554A35    mov         eax,dword ptr [ebp-0C]
 00554A38    lea         eax,[eax+eax*2]
 00554A3B    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554A41    mov         eax,dword ptr [edx+eax*8+24]
 00554A45    mov         dword ptr [ebp-20],eax
 00554A48    mov         byte ptr [ebp-1C],0
 00554A4C    lea         edx,[ebp-20]
 00554A4F    xor         ecx,ecx
 00554A51    mov         eax,554CEC;'Inner Diameter Write Sense. Ref. value  = %x'
 00554A56    call        0040D630
 00554A5B    mov         edx,dword ptr [ebp-3C]
 00554A5E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554A63    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554A69    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554A6F    mov         ecx,dword ptr [eax]
 00554A71    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554A74    lea         eax,[ebp-40]
 00554A77    push        eax
 00554A78    mov         eax,dword ptr [ebp-0C]
 00554A7B    lea         eax,[eax+eax*2]
 00554A7E    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554A84    mov         eax,dword ptr [edx+eax*8+28]
 00554A88    mov         dword ptr [ebp-20],eax
 00554A8B    mov         byte ptr [ebp-1C],0
 00554A8F    lea         edx,[ebp-20]
 00554A92    xor         ecx,ecx
 00554A94    mov         eax,554D24;'Inner Diameter Write Sense. value       = %x'
 00554A99    call        0040D630
 00554A9E    mov         edx,dword ptr [ebp-40]
 00554AA1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554AA6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554AAC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554AB2    mov         ecx,dword ptr [eax]
 00554AB4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554AB7    inc         dword ptr [ebp-0C]
 00554ABA    dec         dword ptr [ebp-10]
>00554ABD    jne         005548D4
>00554AC3    jmp         00554AD4
 00554AC5    call        004CEB6C
 00554ACA    mov         eax,554D5C;'Read Drive Write Sensitivity Table - '
 00554ACF    call        00544F6C
 00554AD4    xor         eax,eax
 00554AD6    pop         edx
 00554AD7    pop         ecx
 00554AD8    pop         ecx
 00554AD9    mov         dword ptr fs:[eax],edx
 00554ADC    push        554AF1
 00554AE1    mov         eax,dword ptr [ebp-8]
 00554AE4    call        TObject.Free
 00554AE9    ret
>00554AEA    jmp         @HandleFinally
>00554AEF    jmp         00554AE1
 00554AF1    xor         eax,eax
 00554AF3    pop         edx
 00554AF4    pop         ecx
 00554AF5    pop         ecx
 00554AF6    mov         dword ptr fs:[eax],edx
 00554AF9    push        554B1B
 00554AFE    lea         eax,[ebp-40]
 00554B01    mov         edx,8
 00554B06    call        @LStrArrayClr
 00554B0B    lea         eax,[ebp-18]
 00554B0E    call        @LStrClr
 00554B13    ret
>00554B14    jmp         @HandleFinally
>00554B19    jmp         00554AFE
 00554B1B    pop         ebx
 00554B1C    mov         esp,ebp
 00554B1E    pop         ebp
 00554B1F    ret
end;*}

//00554D84
{*procedure TfmHDD.miRroTableClick(?:?);
begin
 00554D84    push        ebp
 00554D85    mov         ebp,esp
 00554D87    mov         ecx,8
 00554D8C    push        0
 00554D8E    push        0
 00554D90    dec         ecx
>00554D91    jne         00554D8C
 00554D93    push        ebx
 00554D94    mov         dword ptr [ebp-14],edx
 00554D97    mov         dword ptr [ebp-4],eax
 00554D9A    xor         eax,eax
 00554D9C    push        ebp
 00554D9D    push        55510A
 00554DA2    push        dword ptr fs:[eax]
 00554DA5    mov         dword ptr fs:[eax],esp
 00554DA8    mov         dl,1
 00554DAA    mov         eax,[0041DE14];TMemoryStream
 00554DAF    call        TObject.Create;TMemoryStream.Create
 00554DB4    mov         dword ptr [ebp-8],eax
 00554DB7    xor         eax,eax
 00554DB9    push        ebp
 00554DBA    push        5550E0
 00554DBF    push        dword ptr fs:[eax]
 00554DC2    mov         dword ptr fs:[eax],esp
 00554DC5    mov         ecx,dword ptr [ebp-8]
 00554DC8    xor         edx,edx
 00554DCA    mov         ax,4
 00554DCE    call        00509E08
 00554DD3    test        al,al
>00554DD5    je          005550BB
 00554DDB    xor         ecx,ecx
 00554DDD    xor         edx,edx
 00554DDF    mov         eax,dword ptr [ebp-8]
 00554DE2    mov         ebx,dword ptr [eax]
 00554DE4    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00554DE7    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554DED    mov         ecx,200
 00554DF2    mov         eax,dword ptr [ebp-8]
 00554DF5    mov         ebx,dword ptr [eax]
 00554DF7    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 00554DFA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554DFF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554E05    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554E0B    mov         edx,555120;#10+DRIVE Repeatable Run-Out DATA TABLE'
 00554E10    mov         ecx,dword ptr [eax]
 00554E12    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554E15    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554E1A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554E20    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554E26    mov         edx,555150;'-----------------------------------'
 00554E2B    mov         ecx,dword ptr [eax]
 00554E2D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554E30    lea         eax,[ebp-18]
 00554E33    push        eax
 00554E34    mov         eax,[0056E344];^gvar_0059BF5C
 00554E39    movzx       eax,word ptr [eax]
 00554E3C    mov         dword ptr [ebp-20],eax
 00554E3F    mov         byte ptr [ebp-1C],0
 00554E43    lea         edx,[ebp-20]
 00554E46    xor         ecx,ecx
 00554E48    mov         eax,55517C;'Format Version = %d'
 00554E4D    call        0040D630
 00554E52    mov         edx,dword ptr [ebp-18]
 00554E55    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554E5A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554E60    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554E66    mov         ecx,dword ptr [eax]
 00554E68    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554E6B    lea         eax,[ebp-24]
 00554E6E    push        eax
 00554E6F    mov         eax,[0056E344];^gvar_0059BF5C
 00554E74    movzx       eax,byte ptr [eax+2]
 00554E78    mov         dword ptr [ebp-20],eax
 00554E7B    mov         byte ptr [ebp-1C],0
 00554E7F    lea         edx,[ebp-20]
 00554E82    xor         ecx,ecx
 00554E84    mov         eax,555198;'No. of Heads   = %d'
 00554E89    call        0040D630
 00554E8E    mov         edx,dword ptr [ebp-24]
 00554E91    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554E96    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554E9C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554EA2    mov         ecx,dword ptr [eax]
 00554EA4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554EA7    mov         eax,[0056E344];^gvar_0059BF5C
 00554EAC    movzx       eax,byte ptr [eax+2]
 00554EB0    dec         eax
 00554EB1    test        eax,eax
>00554EB3    jl          005550CA
 00554EB9    inc         eax
 00554EBA    mov         dword ptr [ebp-10],eax
 00554EBD    mov         dword ptr [ebp-0C],0
 00554EC4    lea         eax,[ebp-28]
 00554EC7    push        eax
 00554EC8    mov         eax,dword ptr [ebp-0C]
 00554ECB    mov         dword ptr [ebp-20],eax
 00554ECE    mov         byte ptr [ebp-1C],0
 00554ED2    lea         edx,[ebp-20]
 00554ED5    xor         ecx,ecx
 00554ED7    mov         eax,5551B4;#10+Head %d RRO Values'
 00554EDC    call        0040D630
 00554EE1    mov         edx,dword ptr [ebp-28]
 00554EE4    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554EE9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554EEF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554EF5    mov         ecx,dword ptr [eax]
 00554EF7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554EFA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554EFF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554F05    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554F0B    mov         edx,5551D0;'-----------------------'
 00554F10    mov         ecx,dword ptr [eax]
 00554F12    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554F15    lea         eax,[ebp-2C]
 00554F18    push        eax
 00554F19    mov         eax,dword ptr [ebp-0C]
 00554F1C    lea         eax,[eax+eax*2]
 00554F1F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554F25    movzx       eax,word ptr [edx+eax*4+14]
 00554F2A    mov         dword ptr [ebp-20],eax
 00554F2D    mov         byte ptr [ebp-1C],0
 00554F31    lea         edx,[ebp-20]
 00554F34    xor         ecx,ecx
 00554F36    mov         eax,5551F0;'RRO 1X Ref. value = %x'
 00554F3B    call        0040D630
 00554F40    mov         edx,dword ptr [ebp-2C]
 00554F43    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554F48    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554F4E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554F54    mov         ecx,dword ptr [eax]
 00554F56    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554F59    lea         eax,[ebp-30]
 00554F5C    push        eax
 00554F5D    mov         eax,dword ptr [ebp-0C]
 00554F60    lea         eax,[eax+eax*2]
 00554F63    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554F69    movzx       eax,word ptr [edx+eax*4+16]
 00554F6E    mov         dword ptr [ebp-20],eax
 00554F71    mov         byte ptr [ebp-1C],0
 00554F75    lea         edx,[ebp-20]
 00554F78    xor         ecx,ecx
 00554F7A    mov         eax,555210;'RRO 1X value      = %x'
 00554F7F    call        0040D630
 00554F84    mov         edx,dword ptr [ebp-30]
 00554F87    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554F8C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554F92    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554F98    mov         ecx,dword ptr [eax]
 00554F9A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554F9D    lea         eax,[ebp-34]
 00554FA0    push        eax
 00554FA1    mov         eax,dword ptr [ebp-0C]
 00554FA4    lea         eax,[eax+eax*2]
 00554FA7    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554FAD    movzx       eax,word ptr [edx+eax*4+18]
 00554FB2    mov         dword ptr [ebp-20],eax
 00554FB5    mov         byte ptr [ebp-1C],0
 00554FB9    lea         edx,[ebp-20]
 00554FBC    xor         ecx,ecx
 00554FBE    mov         eax,555230;'RRO 2X Ref. value = %x'
 00554FC3    call        0040D630
 00554FC8    mov         edx,dword ptr [ebp-34]
 00554FCB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00554FD0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00554FD6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00554FDC    mov         ecx,dword ptr [eax]
 00554FDE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00554FE1    lea         eax,[ebp-38]
 00554FE4    push        eax
 00554FE5    mov         eax,dword ptr [ebp-0C]
 00554FE8    lea         eax,[eax+eax*2]
 00554FEB    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00554FF1    movzx       eax,word ptr [edx+eax*4+1A]
 00554FF6    mov         dword ptr [ebp-20],eax
 00554FF9    mov         byte ptr [ebp-1C],0
 00554FFD    lea         edx,[ebp-20]
 00555000    xor         ecx,ecx
 00555002    mov         eax,555250;'RRO 2X value      = %x'
 00555007    call        0040D630
 0055500C    mov         edx,dword ptr [ebp-38]
 0055500F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555014    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055501A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555020    mov         ecx,dword ptr [eax]
 00555022    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555025    lea         eax,[ebp-3C]
 00555028    push        eax
 00555029    mov         eax,dword ptr [ebp-0C]
 0055502C    lea         eax,[eax+eax*2]
 0055502F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555035    movzx       eax,word ptr [edx+eax*4+1C]
 0055503A    mov         dword ptr [ebp-20],eax
 0055503D    mov         byte ptr [ebp-1C],0
 00555041    lea         edx,[ebp-20]
 00555044    xor         ecx,ecx
 00555046    mov         eax,555270;'RRO 3X Ref. value = %x'
 0055504B    call        0040D630
 00555050    mov         edx,dword ptr [ebp-3C]
 00555053    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555058    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055505E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555064    mov         ecx,dword ptr [eax]
 00555066    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555069    lea         eax,[ebp-40]
 0055506C    push        eax
 0055506D    mov         eax,dword ptr [ebp-0C]
 00555070    lea         eax,[eax+eax*2]
 00555073    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555079    movzx       eax,word ptr [edx+eax*4+1E]
 0055507E    mov         dword ptr [ebp-20],eax
 00555081    mov         byte ptr [ebp-1C],0
 00555085    lea         edx,[ebp-20]
 00555088    xor         ecx,ecx
 0055508A    mov         eax,555290;'RRO 3X value      = %x'
 0055508F    call        0040D630
 00555094    mov         edx,dword ptr [ebp-40]
 00555097    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055509C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005550A2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005550A8    mov         ecx,dword ptr [eax]
 005550AA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005550AD    inc         dword ptr [ebp-0C]
 005550B0    dec         dword ptr [ebp-10]
>005550B3    jne         00554EC4
>005550B9    jmp         005550CA
 005550BB    call        004CEB6C
 005550C0    mov         eax,5552B0;'Read Drive RRO Table - '
 005550C5    call        00544F6C
 005550CA    xor         eax,eax
 005550CC    pop         edx
 005550CD    pop         ecx
 005550CE    pop         ecx
 005550CF    mov         dword ptr fs:[eax],edx
 005550D2    push        5550E7
 005550D7    mov         eax,dword ptr [ebp-8]
 005550DA    call        TObject.Free
 005550DF    ret
>005550E0    jmp         @HandleFinally
>005550E5    jmp         005550D7
 005550E7    xor         eax,eax
 005550E9    pop         edx
 005550EA    pop         ecx
 005550EB    pop         ecx
 005550EC    mov         dword ptr fs:[eax],edx
 005550EF    push        555111
 005550F4    lea         eax,[ebp-40]
 005550F7    mov         edx,8
 005550FC    call        @LStrArrayClr
 00555101    lea         eax,[ebp-18]
 00555104    call        @LStrClr
 00555109    ret
>0055510A    jmp         @HandleFinally
>0055510F    jmp         005550F4
 00555111    pop         ebx
 00555112    mov         esp,ebp
 00555114    pop         ebp
 00555115    ret
end;*}

//005552C8
procedure TfmHDD.miWedgeZoneTableClick(Sender:TObject);
begin
{*
 005552C8    push        ebp
 005552C9    mov         ebp,esp
 005552CB    add         esp,0FFFFFFA8
 005552CE    push        ebx
 005552CF    xor         ecx,ecx
 005552D1    mov         dword ptr [ebp-58],ecx
 005552D4    mov         dword ptr [ebp-54],ecx
 005552D7    mov         dword ptr [ebp-50],ecx
 005552DA    mov         dword ptr [ebp-4C],ecx
 005552DD    mov         dword ptr [ebp-38],ecx
 005552E0    mov         dword ptr [ebp-34],ecx
 005552E3    mov         dword ptr [ebp-30],ecx
 005552E6    mov         dword ptr [ebp-24],ecx
 005552E9    mov         dword ptr [ebp-20],edx
 005552EC    mov         dword ptr [ebp-4],eax
 005552EF    xor         eax,eax
 005552F1    push        ebp
 005552F2    push        555712
 005552F7    push        dword ptr fs:[eax]
 005552FA    mov         dword ptr fs:[eax],esp
 005552FD    mov         dl,1
 005552FF    mov         eax,[0041DE14];TMemoryStream
 00555304    call        TObject.Create;TMemoryStream.Create
 00555309    mov         dword ptr [ebp-8],eax
 0055530C    xor         eax,eax
 0055530E    push        ebp
 0055530F    push        5556DB
 00555314    push        dword ptr fs:[eax]
 00555317    mov         dword ptr fs:[eax],esp
 0055531A    mov         ecx,dword ptr [ebp-8]
 0055531D    xor         edx,edx
 0055531F    mov         ax,6
 00555323    call        00509E08
 00555328    test        al,al
>0055532A    je          005556B6
 00555330    xor         ecx,ecx
 00555332    xor         edx,edx
 00555334    mov         eax,dword ptr [ebp-8]
 00555337    mov         ebx,dword ptr [eax]
 00555339    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055533C    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555342    mov         ecx,400
 00555347    mov         eax,dword ptr [ebp-8]
 0055534A    mov         ebx,dword ptr [eax]
 0055534C    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 0055534F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555354    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055535A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555360    mov         edx,555728;#10+WEDGE ZONE DATA TABLE'
 00555365    mov         ecx,dword ptr [eax]
 00555367    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055536A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055536F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555375    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055537B    mov         edx,555748;'---------------------'
 00555380    mov         ecx,dword ptr [eax]
 00555382    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555385    lea         eax,[ebp-24]
 00555388    push        eax
 00555389    mov         eax,[0056E344];^gvar_0059BF5C
 0055538E    movzx       eax,word ptr [eax]
 00555391    mov         dword ptr [ebp-2C],eax
 00555394    mov         byte ptr [ebp-28],0
 00555398    lea         edx,[ebp-2C]
 0055539B    xor         ecx,ecx
 0055539D    mov         eax,555768;'Format Version  = %d'
 005553A2    call        0040D630
 005553A7    mov         edx,dword ptr [ebp-24]
 005553AA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005553AF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005553B5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005553BB    mov         ecx,dword ptr [eax]
 005553BD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005553C0    lea         eax,[ebp-30]
 005553C3    push        eax
 005553C4    mov         eax,[0056E344];^gvar_0059BF5C
 005553C9    movzx       eax,byte ptr [eax+2]
 005553CD    mov         dword ptr [ebp-2C],eax
 005553D0    mov         byte ptr [ebp-28],0
 005553D4    lea         edx,[ebp-2C]
 005553D7    xor         ecx,ecx
 005553D9    mov         eax,555788;'No. of Zones    = %d'
 005553DE    call        0040D630
 005553E3    mov         edx,dword ptr [ebp-30]
 005553E6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005553EB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005553F1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005553F7    mov         ecx,dword ptr [eax]
 005553F9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005553FC    mov         eax,[0056E344];^gvar_0059BF5C
 00555401    cmp         word ptr [eax],1
>00555405    jne         00555562
 0055540B    mov         dword ptr [ebp-14],6
 00555412    mov         eax,[0056E344];^gvar_0059BF5C
 00555417    movzx       eax,byte ptr [eax+2]
 0055541B    dec         eax
 0055541C    test        eax,eax
>0055541E    jl          005556C5
 00555424    inc         eax
 00555425    mov         dword ptr [ebp-18],eax
 00555428    mov         dword ptr [ebp-0C],0
 0055542F    lea         eax,[ebp-34]
 00555432    push        eax
 00555433    mov         eax,dword ptr [ebp-0C]
 00555436    mov         dword ptr [ebp-2C],eax
 00555439    mov         byte ptr [ebp-28],0
 0055543D    lea         edx,[ebp-2C]
 00555440    xor         ecx,ecx
 00555442    mov         eax,5557A8;#10+ZONE %d'
 00555447    call        0040D630
 0055544C    mov         edx,dword ptr [ebp-34]
 0055544F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555454    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055545A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555460    mov         ecx,dword ptr [eax]
 00555462    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555465    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055546A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555470    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555476    mov         edx,5557BC;'-----------------------'
 0055547B    mov         ecx,dword ptr [eax]
 0055547D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555480    mov         eax,dword ptr [ebp-14]
 00555483    dec         eax
 00555484    test        eax,eax
>00555486    jl          00555551
 0055548C    inc         eax
 0055548D    mov         dword ptr [ebp-1C],eax
 00555490    mov         dword ptr [ebp-10],0
 00555497    lea         eax,[ebp-38]
 0055549A    push        eax
 0055549B    mov         eax,dword ptr [ebp-10]
 0055549E    mov         dword ptr [ebp-48],eax
 005554A1    mov         byte ptr [ebp-44],0
 005554A5    mov         eax,dword ptr [ebp-0C]
 005554A8    lea         eax,[eax+eax*2]
 005554AB    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005554B1    lea         eax,[edx+eax*8]
 005554B4    mov         edx,dword ptr [ebp-10]
 005554B7    movzx       eax,word ptr [eax+edx*4+8]
 005554BC    mov         dword ptr [ebp-40],eax
 005554BF    mov         byte ptr [ebp-3C],0
 005554C3    lea         edx,[ebp-48]
 005554C6    mov         ecx,1
 005554CB    mov         eax,5557DC;'Hd %d: Wedge Start (bits/toc) = %x'
 005554D0    call        0040D630
 005554D5    mov         edx,dword ptr [ebp-38]
 005554D8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005554DD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005554E3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005554E9    mov         ecx,dword ptr [eax]
 005554EB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005554EE    lea         eax,[ebp-4C]
 005554F1    push        eax
 005554F2    mov         eax,dword ptr [ebp-10]
 005554F5    mov         dword ptr [ebp-48],eax
 005554F8    mov         byte ptr [ebp-44],0
 005554FC    mov         eax,dword ptr [ebp-0C]
 005554FF    lea         eax,[eax+eax*2]
 00555502    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555508    lea         eax,[edx+eax*8]
 0055550B    mov         edx,dword ptr [ebp-10]
 0055550E    movzx       eax,word ptr [eax+edx*4+0A]
 00555513    mov         dword ptr [ebp-40],eax
 00555516    mov         byte ptr [ebp-3C],0
 0055551A    lea         edx,[ebp-48]
 0055551D    mov         ecx,1
 00555522    mov         eax,555808;'Hd %d: Wedge Size             = %x'
 00555527    call        0040D630
 0055552C    mov         edx,dword ptr [ebp-4C]
 0055552F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555534    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055553A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555540    mov         ecx,dword ptr [eax]
 00555542    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555545    inc         dword ptr [ebp-10]
 00555548    dec         dword ptr [ebp-1C]
>0055554B    jne         00555497
 00555551    inc         dword ptr [ebp-0C]
 00555554    dec         dword ptr [ebp-18]
>00555557    jne         0055542F
>0055555D    jmp         005556C5
 00555562    mov         dword ptr [ebp-14],8
 00555569    mov         eax,[0056E344];^gvar_0059BF5C
 0055556E    movzx       eax,byte ptr [eax+2]
 00555572    dec         eax
 00555573    test        eax,eax
>00555575    jl          005556C5
 0055557B    inc         eax
 0055557C    mov         dword ptr [ebp-18],eax
 0055557F    mov         dword ptr [ebp-0C],0
 00555586    lea         eax,[ebp-50]
 00555589    push        eax
 0055558A    mov         eax,dword ptr [ebp-0C]
 0055558D    mov         dword ptr [ebp-2C],eax
 00555590    mov         byte ptr [ebp-28],0
 00555594    lea         edx,[ebp-2C]
 00555597    xor         ecx,ecx
 00555599    mov         eax,5557A8;#10+ZONE %d'
 0055559E    call        0040D630
 005555A3    mov         edx,dword ptr [ebp-50]
 005555A6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005555AB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005555B1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005555B7    mov         ecx,dword ptr [eax]
 005555B9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005555BC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005555C1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005555C7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005555CD    mov         edx,5557BC;'-----------------------'
 005555D2    mov         ecx,dword ptr [eax]
 005555D4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005555D7    mov         eax,dword ptr [ebp-14]
 005555DA    dec         eax
 005555DB    test        eax,eax
>005555DD    jl          005556A8
 005555E3    inc         eax
 005555E4    mov         dword ptr [ebp-1C],eax
 005555E7    mov         dword ptr [ebp-10],0
 005555EE    lea         eax,[ebp-54]
 005555F1    push        eax
 005555F2    mov         eax,dword ptr [ebp-10]
 005555F5    mov         dword ptr [ebp-48],eax
 005555F8    mov         byte ptr [ebp-44],0
 005555FC    mov         eax,dword ptr [ebp-0C]
 005555FF    lea         eax,[eax+eax*2]
 00555602    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555608    lea         eax,[edx+eax*8]
 0055560B    mov         edx,dword ptr [ebp-10]
 0055560E    movzx       eax,word ptr [eax+edx*4+8]
 00555613    mov         dword ptr [ebp-40],eax
 00555616    mov         byte ptr [ebp-3C],0
 0055561A    lea         edx,[ebp-48]
 0055561D    mov         ecx,1
 00555622    mov         eax,5557DC;'Hd %d: Wedge Start (bits/toc) = %x'
 00555627    call        0040D630
 0055562C    mov         edx,dword ptr [ebp-54]
 0055562F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555634    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055563A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555640    mov         ecx,dword ptr [eax]
 00555642    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555645    lea         eax,[ebp-58]
 00555648    push        eax
 00555649    mov         eax,dword ptr [ebp-10]
 0055564C    mov         dword ptr [ebp-48],eax
 0055564F    mov         byte ptr [ebp-44],0
 00555653    mov         eax,dword ptr [ebp-0C]
 00555656    lea         eax,[eax+eax*2]
 00555659    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055565F    lea         eax,[edx+eax*8]
 00555662    mov         edx,dword ptr [ebp-10]
 00555665    movzx       eax,word ptr [eax+edx*4+0A]
 0055566A    mov         dword ptr [ebp-40],eax
 0055566D    mov         byte ptr [ebp-3C],0
 00555671    lea         edx,[ebp-48]
 00555674    mov         ecx,1
 00555679    mov         eax,555808;'Hd %d: Wedge Size             = %x'
 0055567E    call        0040D630
 00555683    mov         edx,dword ptr [ebp-58]
 00555686    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055568B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555691    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555697    mov         ecx,dword ptr [eax]
 00555699    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055569C    inc         dword ptr [ebp-10]
 0055569F    dec         dword ptr [ebp-1C]
>005556A2    jne         005555EE
 005556A8    inc         dword ptr [ebp-0C]
 005556AB    dec         dword ptr [ebp-18]
>005556AE    jne         00555586
>005556B4    jmp         005556C5
 005556B6    call        004CEB6C
 005556BB    mov         eax,555834;'Read Wedge Zone Table - '
 005556C0    call        00544F6C
 005556C5    xor         eax,eax
 005556C7    pop         edx
 005556C8    pop         ecx
 005556C9    pop         ecx
 005556CA    mov         dword ptr fs:[eax],edx
 005556CD    push        5556E2
 005556D2    mov         eax,dword ptr [ebp-8]
 005556D5    call        TObject.Free
 005556DA    ret
>005556DB    jmp         @HandleFinally
>005556E0    jmp         005556D2
 005556E2    xor         eax,eax
 005556E4    pop         edx
 005556E5    pop         ecx
 005556E6    pop         ecx
 005556E7    mov         dword ptr fs:[eax],edx
 005556EA    push        555719
 005556EF    lea         eax,[ebp-58]
 005556F2    mov         edx,4
 005556F7    call        @LStrArrayClr
 005556FC    lea         eax,[ebp-38]
 005556FF    mov         edx,3
 00555704    call        @LStrArrayClr
 00555709    lea         eax,[ebp-24]
 0055570C    call        @LStrClr
 00555711    ret
>00555712    jmp         @HandleFinally
>00555717    jmp         005556EF
 00555719    pop         ebx
 0055571A    mov         esp,ebp
 0055571C    pop         ebp
 0055571D    ret
*}
end;

//00555850
{*procedure TfmHDD.miVscImpMtxClick(?:?);
begin
 00555850    push        ebp
 00555851    mov         ebp,esp
 00555853    add         esp,0FFFFFFB8
 00555856    push        ebx
 00555857    xor         ecx,ecx
 00555859    mov         dword ptr [ebp-48],ecx
 0055585C    mov         dword ptr [ebp-44],ecx
 0055585F    mov         dword ptr [ebp-40],ecx
 00555862    mov         dword ptr [ebp-3C],ecx
 00555865    mov         dword ptr [ebp-28],ecx
 00555868    mov         dword ptr [ebp-24],ecx
 0055586B    mov         dword ptr [ebp-18],ecx
 0055586E    mov         dword ptr [ebp-10],ecx
 00555871    mov         dword ptr [ebp-14],edx
 00555874    mov         dword ptr [ebp-4],eax
 00555877    xor         eax,eax
 00555879    push        ebp
 0055587A    push        555B94
 0055587F    push        dword ptr fs:[eax]
 00555882    mov         dword ptr fs:[eax],esp
 00555885    mov         dl,1
 00555887    mov         eax,[0041DE14];TMemoryStream
 0055588C    call        TObject.Create;TMemoryStream.Create
 00555891    mov         dword ptr [ebp-8],eax
 00555894    xor         eax,eax
 00555896    push        ebp
 00555897    push        555B55
 0055589C    push        dword ptr fs:[eax]
 0055589F    mov         dword ptr fs:[eax],esp
 005558A2    mov         ecx,dword ptr [ebp-8]
 005558A5    xor         edx,edx
 005558A7    mov         ax,9
 005558AB    call        00509E08
 005558B0    test        al,al
>005558B2    je          00555B30
 005558B8    xor         ecx,ecx
 005558BA    xor         edx,edx
 005558BC    mov         eax,dword ptr [ebp-8]
 005558BF    mov         ebx,dword ptr [eax]
 005558C1    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005558C4    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005558CA    mov         ecx,200
 005558CF    mov         eax,dword ptr [ebp-8]
 005558D2    mov         ebx,dword ptr [eax]
 005558D4    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 005558D7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005558DC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005558E2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005558E8    mov         edx,555BA8;#10+Vsc Implementation Matrix'
 005558ED    mov         ecx,dword ptr [eax]
 005558EF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005558F2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005558F7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005558FD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555903    mov         edx,555BCC;'-------------------------'
 00555908    mov         ecx,dword ptr [eax]
 0055590A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055590D    lea         eax,[ebp-18]
 00555910    push        eax
 00555911    mov         eax,[0056E344];^gvar_0059BF5C
 00555916    movzx       eax,word ptr [eax]
 00555919    mov         dword ptr [ebp-20],eax
 0055591C    mov         byte ptr [ebp-1C],0
 00555920    lea         edx,[ebp-20]
 00555923    xor         ecx,ecx
 00555925    mov         eax,555BF0;'Format Version             = %x'
 0055592A    call        0040D630
 0055592F    mov         edx,dword ptr [ebp-18]
 00555932    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555937    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055593D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555943    mov         ecx,dword ptr [eax]
 00555945    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555948    xor         eax,eax
 0055594A    mov         dword ptr [ebp-0C],eax
 0055594D    lea         eax,[ebp-24]
 00555950    push        eax
 00555951    mov         eax,dword ptr [ebp-0C]
 00555954    lea         eax,[eax+eax*4]
 00555957    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055595D    movzx       eax,byte ptr [edx+eax*2+2]
 00555962    mov         dword ptr [ebp-20],eax
 00555965    mov         byte ptr [ebp-1C],0
 00555969    lea         edx,[ebp-20]
 0055596C    xor         ecx,ecx
 0055596E    mov         eax,555C18;#10+Action Code = %x'
 00555973    call        0040D630
 00555978    mov         edx,dword ptr [ebp-24]
 0055597B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555980    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555986    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055598C    mov         ecx,dword ptr [eax]
 0055598E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555991    mov         eax,dword ptr [ebp-0C]
 00555994    lea         eax,[eax+eax*4]
 00555997    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055599D    cmp         byte ptr [edx+eax*2+3],1
>005559A2    jne         005559B3
 005559A4    lea         eax,[ebp-10]
 005559A7    mov         edx,555C34;'(Yes)'
 005559AC    call        @LStrLAsg
>005559B1    jmp         005559C0
 005559B3    lea         eax,[ebp-10]
 005559B6    mov         edx,555C44;'(No)'
 005559BB    call        @LStrLAsg
 005559C0    lea         eax,[ebp-28]
 005559C3    push        eax
 005559C4    mov         eax,dword ptr [ebp-0C]
 005559C7    lea         eax,[eax+eax*4]
 005559CA    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 005559D0    movzx       eax,byte ptr [edx+eax*2+3]
 005559D5    mov         dword ptr [ebp-38],eax
 005559D8    mov         byte ptr [ebp-34],0
 005559DC    mov         eax,dword ptr [ebp-10]
 005559DF    mov         dword ptr [ebp-30],eax
 005559E2    mov         byte ptr [ebp-2C],0B
 005559E6    lea         edx,[ebp-38]
 005559E9    mov         ecx,1
 005559EE    mov         eax,555C54;'   Action Code Supported = %x  %s'
 005559F3    call        0040D630
 005559F8    mov         edx,dword ptr [ebp-28]
 005559FB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555A00    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555A06    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555A0C    mov         ecx,dword ptr [eax]
 00555A0E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555A11    lea         eax,[ebp-3C]
 00555A14    push        eax
 00555A15    mov         eax,dword ptr [ebp-0C]
 00555A18    lea         eax,[eax+eax*4]
 00555A1B    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555A21    movzx       eax,word ptr [edx+eax*2+4]
 00555A26    mov         dword ptr [ebp-20],eax
 00555A29    mov         byte ptr [ebp-1C],0
 00555A2D    lea         edx,[ebp-20]
 00555A30    xor         ecx,ecx
 00555A32    mov         eax,555C80;'   Function Mask 1 = %x'
 00555A37    call        0040D630
 00555A3C    mov         edx,dword ptr [ebp-3C]
 00555A3F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555A44    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555A4A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555A50    mov         ecx,dword ptr [eax]
 00555A52    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555A55    lea         eax,[ebp-40]
 00555A58    push        eax
 00555A59    mov         eax,dword ptr [ebp-0C]
 00555A5C    lea         eax,[eax+eax*4]
 00555A5F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555A65    movzx       eax,word ptr [edx+eax*2+6]
 00555A6A    mov         dword ptr [ebp-20],eax
 00555A6D    mov         byte ptr [ebp-1C],0
 00555A71    lea         edx,[ebp-20]
 00555A74    xor         ecx,ecx
 00555A76    mov         eax,555CA0;'   Function Mask 2 = %x'
 00555A7B    call        0040D630
 00555A80    mov         edx,dword ptr [ebp-40]
 00555A83    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555A88    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555A8E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555A94    mov         ecx,dword ptr [eax]
 00555A96    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555A99    lea         eax,[ebp-44]
 00555A9C    push        eax
 00555A9D    mov         eax,dword ptr [ebp-0C]
 00555AA0    lea         eax,[eax+eax*4]
 00555AA3    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555AA9    movzx       eax,word ptr [edx+eax*2+8]
 00555AAE    mov         dword ptr [ebp-20],eax
 00555AB1    mov         byte ptr [ebp-1C],0
 00555AB5    lea         edx,[ebp-20]
 00555AB8    xor         ecx,ecx
 00555ABA    mov         eax,555CC0;'   Function Mask 3 = %x'
 00555ABF    call        0040D630
 00555AC4    mov         edx,dword ptr [ebp-44]
 00555AC7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555ACC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555AD2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555AD8    mov         ecx,dword ptr [eax]
 00555ADA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555ADD    lea         eax,[ebp-48]
 00555AE0    push        eax
 00555AE1    mov         eax,dword ptr [ebp-0C]
 00555AE4    lea         eax,[eax+eax*4]
 00555AE7    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 00555AED    movzx       eax,word ptr [edx+eax*2+0A]
 00555AF2    mov         dword ptr [ebp-20],eax
 00555AF5    mov         byte ptr [ebp-1C],0
 00555AF9    lea         edx,[ebp-20]
 00555AFC    xor         ecx,ecx
 00555AFE    mov         eax,555CE0;'   Function Mask 4 = %x'
 00555B03    call        0040D630
 00555B08    mov         edx,dword ptr [ebp-48]
 00555B0B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555B10    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555B16    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555B1C    mov         ecx,dword ptr [eax]
 00555B1E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555B21    inc         dword ptr [ebp-0C]
 00555B24    cmp         dword ptr [ebp-0C],32
>00555B28    jne         0055594D
>00555B2E    jmp         00555B3F
 00555B30    call        004CEB6C
 00555B35    mov         eax,555D00;'Read Vsc Implementation Matrix - '
 00555B3A    call        00544F6C
 00555B3F    xor         eax,eax
 00555B41    pop         edx
 00555B42    pop         ecx
 00555B43    pop         ecx
 00555B44    mov         dword ptr fs:[eax],edx
 00555B47    push        555B5C
 00555B4C    mov         eax,dword ptr [ebp-8]
 00555B4F    call        TObject.Free
 00555B54    ret
>00555B55    jmp         @HandleFinally
>00555B5A    jmp         00555B4C
 00555B5C    xor         eax,eax
 00555B5E    pop         edx
 00555B5F    pop         ecx
 00555B60    pop         ecx
 00555B61    mov         dword ptr fs:[eax],edx
 00555B64    push        555B9B
 00555B69    lea         eax,[ebp-48]
 00555B6C    mov         edx,4
 00555B71    call        @LStrArrayClr
 00555B76    lea         eax,[ebp-28]
 00555B79    mov         edx,2
 00555B7E    call        @LStrArrayClr
 00555B83    lea         eax,[ebp-18]
 00555B86    call        @LStrClr
 00555B8B    lea         eax,[ebp-10]
 00555B8E    call        @LStrClr
 00555B93    ret
>00555B94    jmp         @HandleFinally
>00555B99    jmp         00555B69
 00555B9B    pop         ebx
 00555B9C    mov         esp,ebp
 00555B9E    pop         ebp
 00555B9F    ret
end;*}

//00555D24
{*procedure TfmHDD.miVSCStatusClick(?:?);
begin
 00555D24    push        ebp
 00555D25    mov         ebp,esp
 00555D27    mov         ecx,31
 00555D2C    push        0
 00555D2E    push        0
 00555D30    dec         ecx
>00555D31    jne         00555D2C
 00555D33    mov         dword ptr [ebp-20],edx
 00555D36    mov         dword ptr [ebp-4],eax
 00555D39    xor         eax,eax
 00555D3B    push        ebp
 00555D3C    push        5579B2
 00555D41    push        dword ptr fs:[eax]
 00555D44    mov         dword ptr fs:[eax],esp
 00555D47    mov         eax,[0056E5A4];^gvar_0056DF04
 00555D4C    mov         byte ptr [eax],0
 00555D4F    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00555D55    mov         edx,dword ptr [edx]
 00555D57    lea         eax,[ebp-3C]
 00555D5A    mov         ecx,5579C8;'CPs'
 00555D5F    call        @LStrCat3
 00555D64    mov         eax,dword ptr [ebp-3C]
 00555D67    call        004CC648
 00555D6C    test        al,al
>00555D6E    jne         00555DA2
 00555D70    push        5579D4;'Cannot create '
 00555D75    mov         eax,[0056E2D0];^gvar_0056DF38
 00555D7A    push        dword ptr [eax]
 00555D7C    push        5579C8;'CPs'
 00555D81    lea         eax,[ebp-40]
 00555D84    mov         edx,3
 00555D89    call        @LStrCatN
 00555D8E    mov         ecx,dword ptr [ebp-40]
 00555D91    mov         dl,1
 00555D93    mov         eax,[0040B004];Exception
 00555D98    call        Exception.Create;Exception.Create
 00555D9D    call        @RaiseExcept
 00555DA2    mov         dl,1
 00555DA4    mov         eax,[0041DE14];TMemoryStream
 00555DA9    call        TObject.Create;TMemoryStream.Create
 00555DAE    mov         dword ptr [ebp-1C],eax
 00555DB1    xor         eax,eax
 00555DB3    push        ebp
 00555DB4    push        555EAE
 00555DB9    push        dword ptr fs:[eax]
 00555DBC    mov         dword ptr fs:[eax],esp
 00555DBF    push        10
 00555DC1    call        user32.GetKeyState
 00555DC6    test        ax,ax
>00555DC9    jge         00555E84
 00555DCF    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00555DD5    mov         edx,dword ptr [edx]
 00555DD7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555DDC    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555DE2    call        TOpenDialog.SetInitialDir
 00555DE7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555DEC    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555DF2    add         eax,60;TOpenDialog.Filter:String
 00555DF5    mov         edx,5579EC;'All|*.*'
 00555DFA    call        @LStrAsg
 00555DFF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555E04    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555E0A    add         eax,78;TOpenDialog.FileName:TFileName
 00555E0D    call        @LStrClr
 00555E12    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555E17    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555E1D    mov         edx,dword ptr [eax]
 00555E1F    call        dword ptr [edx+3C];TOpenDialog.Execute
 00555E22    test        al,al
>00555E24    je          00555E57
 00555E26    lea         edx,[ebp-44]
 00555E29    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555E2E    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555E34    call        TOpenDialog.GetFileName
 00555E39    mov         edx,dword ptr [ebp-44]
 00555E3C    mov         eax,dword ptr [ebp-1C]
 00555E3F    call        00423F8C
 00555E44    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 00555E4A    mov         ecx,200
 00555E4F    mov         eax,dword ptr [ebp-1C]
 00555E52    call        TStream.ReadBuffer
 00555E57    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555E5C    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555E62    add         eax,60;TOpenDialog.Filter:String
 00555E65    mov         edx,5579EC;'All|*.*'
 00555E6A    call        @LStrAsg
 00555E6F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555E74    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00555E7A    add         eax,78;TOpenDialog.FileName:TFileName
 00555E7D    call        @LStrClr
>00555E82    jmp         00555E98
 00555E84    call        004CEB6C
 00555E89    mov         eax,[0056E3F8];^gvar_0059BF4C
 00555E8E    mov         al,byte ptr [eax]
 00555E90    mov         edx,dword ptr ds:[56E5A4];^gvar_0056DF04
 00555E96    mov         byte ptr [edx],al
 00555E98    xor         eax,eax
 00555E9A    pop         edx
 00555E9B    pop         ecx
 00555E9C    pop         ecx
 00555E9D    mov         dword ptr fs:[eax],edx
 00555EA0    push        555EB5
 00555EA5    mov         eax,dword ptr [ebp-1C]
 00555EA8    call        TObject.Free
 00555EAD    ret
>00555EAE    jmp         @HandleFinally
>00555EB3    jmp         00555EA5
 00555EB5    mov         eax,[0056E5A4];^gvar_0056DF04
 00555EBA    cmp         byte ptr [eax],0
>00555EBD    jne         0055795F
 00555EC3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555EC8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555ECE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555ED4    mov         edx,5579FC;'VSC Status'
 00555ED9    mov         ecx,dword ptr [eax]
 00555EDB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555EDE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555EE3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555EE9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555EEF    mov         edx,557A10;'-----------'
 00555EF4    mov         ecx,dword ptr [eax]
 00555EF6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555EF9    lea         eax,[ebp-48]
 00555EFC    push        eax
 00555EFD    mov         eax,[0056E270];^gvar_00571EC0
 00555F02    movzx       eax,word ptr [eax]
 00555F05    mov         dword ptr [ebp-50],eax
 00555F08    mov         byte ptr [ebp-4C],0
 00555F0C    lea         edx,[ebp-50]
 00555F0F    xor         ecx,ecx
 00555F11    mov         eax,557A24;'Format Version            = %d'
 00555F16    call        0040D630
 00555F1B    mov         edx,dword ptr [ebp-48]
 00555F1E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555F23    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555F29    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555F2F    mov         ecx,dword ptr [eax]
 00555F31    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555F34    lea         eax,[ebp-54]
 00555F37    push        eax
 00555F38    mov         eax,[0056E270];^gvar_00571EC0
 00555F3D    movzx       eax,byte ptr [eax+2]
 00555F41    mov         dword ptr [ebp-50],eax
 00555F44    mov         byte ptr [ebp-4C],0
 00555F48    lea         edx,[ebp-50]
 00555F4B    xor         ecx,ecx
 00555F4D    mov         eax,557A4C;'VSC Implementation, Minor = %d'
 00555F52    call        0040D630
 00555F57    mov         edx,dword ptr [ebp-54]
 00555F5A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555F5F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555F65    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555F6B    mov         ecx,dword ptr [eax]
 00555F6D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555F70    lea         eax,[ebp-58]
 00555F73    push        eax
 00555F74    mov         eax,[0056E270];^gvar_00571EC0
 00555F79    movzx       eax,byte ptr [eax+3]
 00555F7D    mov         dword ptr [ebp-50],eax
 00555F80    mov         byte ptr [ebp-4C],0
 00555F84    lea         edx,[ebp-50]
 00555F87    xor         ecx,ecx
 00555F89    mov         eax,557A74;'VSC Implementation, Major = %d'
 00555F8E    call        0040D630
 00555F93    mov         edx,dword ptr [ebp-58]
 00555F96    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555F9B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555FA1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555FA7    mov         ecx,dword ptr [eax]
 00555FA9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555FAC    lea         eax,[ebp-5C]
 00555FAF    push        eax
 00555FB0    mov         eax,[0056E270];^gvar_00571EC0
 00555FB5    movzx       eax,word ptr [eax+4]
 00555FB9    mov         dword ptr [ebp-50],eax
 00555FBC    mov         byte ptr [ebp-4C],0
 00555FC0    lea         edx,[ebp-50]
 00555FC3    xor         ecx,ecx
 00555FC5    mov         eax,557A9C;'Max Action Code Supported = %x'
 00555FCA    call        0040D630
 00555FCF    mov         edx,dword ptr [ebp-5C]
 00555FD2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00555FD7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00555FDD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00555FE3    mov         ecx,dword ptr [eax]
 00555FE5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00555FE8    mov         eax,[0056E270];^gvar_00571EC0
 00555FED    mov         al,byte ptr [eax+6]
 00555FF0    sub         al,1
>00555FF2    jb          00556000
>00555FF4    je          0055600F
 00555FF6    dec         al
>00555FF8    je          0055601E
 00555FFA    dec         al
>00555FFC    je          0055602D
>00555FFE    jmp         0055603C
 00556000    lea         eax,[ebp-0C]
 00556003    mov         edx,557AC4;'28-Bit ATA CMD'
 00556008    call        @LStrLAsg
>0055600D    jmp         00556049
 0055600F    lea         eax,[ebp-0C]
 00556012    mov         edx,557ADC;'48-Bit ATA CMD'
 00556017    call        @LStrLAsg
>0055601C    jmp         00556049
 0055601E    lea         eax,[ebp-0C]
 00556021    mov         edx,557AF4;'VSC Key CMD'
 00556026    call        @LStrLAsg
>0055602B    jmp         00556049
 0055602D    lea         eax,[ebp-0C]
 00556030    mov         edx,557B08;'VSC Data CMD'
 00556035    call        @LStrLAsg
>0055603A    jmp         00556049
 0055603C    lea         eax,[ebp-0C]
 0055603F    mov         edx,557B20;'UnKnown Type'
 00556044    call        @LStrLAsg
 00556049    lea         eax,[ebp-60]
 0055604C    push        eax
 0055604D    mov         eax,dword ptr [ebp-0C]
 00556050    mov         dword ptr [ebp-50],eax
 00556053    mov         byte ptr [ebp-4C],0B
 00556057    lea         edx,[ebp-50]
 0055605A    xor         ecx,ecx
 0055605C    mov         eax,557B38;#10+Last Cmd Type                                = %s'
 00556061    call        0040D630
 00556066    mov         edx,dword ptr [ebp-60]
 00556069    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055606E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556074    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055607A    mov         ecx,dword ptr [eax]
 0055607C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055607F    lea         eax,[ebp-64]
 00556082    push        eax
 00556083    mov         eax,[0056E270];^gvar_00571EC0
 00556088    movzx       eax,word ptr [eax+0C]
 0055608C    mov         dword ptr [ebp-50],eax
 0055608F    mov         byte ptr [ebp-4C],0
 00556093    lea         edx,[ebp-50]
 00556096    xor         ecx,ecx
 00556098    mov         eax,557B74;'Last Sector Count Register                   = %X'
 0055609D    call        0040D630
 005560A2    mov         edx,dword ptr [ebp-64]
 005560A5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005560AA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005560B0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005560B6    mov         ecx,dword ptr [eax]
 005560B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005560BB    lea         eax,[ebp-68]
 005560BE    push        eax
 005560BF    mov         eax,[0056E270];^gvar_00571EC0
 005560C4    movzx       eax,word ptr [eax+0E]
 005560C8    mov         dword ptr [ebp-50],eax
 005560CB    mov         byte ptr [ebp-4C],0
 005560CF    lea         edx,[ebp-50]
 005560D2    xor         ecx,ecx
 005560D4    mov         eax,557BB0;'Last Sector Number Register                  = %X'
 005560D9    call        0040D630
 005560DE    mov         edx,dword ptr [ebp-68]
 005560E1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005560E6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005560EC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005560F2    mov         ecx,dword ptr [eax]
 005560F4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005560F7    lea         eax,[ebp-6C]
 005560FA    push        eax
 005560FB    mov         eax,[0056E270];^gvar_00571EC0
 00556100    movzx       eax,word ptr [eax+10]
 00556104    mov         dword ptr [ebp-50],eax
 00556107    mov         byte ptr [ebp-4C],0
 0055610B    lea         edx,[ebp-50]
 0055610E    xor         ecx,ecx
 00556110    mov         eax,557BEC;'Last Cylinder Register                       = %X'
 00556115    call        0040D630
 0055611A    mov         edx,dword ptr [ebp-6C]
 0055611D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556122    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556128    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055612E    mov         ecx,dword ptr [eax]
 00556130    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556133    lea         eax,[ebp-70]
 00556136    push        eax
 00556137    mov         eax,[0056E270];^gvar_00571EC0
 0055613C    movzx       eax,word ptr [eax+12]
 00556140    mov         dword ptr [ebp-50],eax
 00556143    mov         byte ptr [ebp-4C],0
 00556147    lea         edx,[ebp-50]
 0055614A    xor         ecx,ecx
 0055614C    mov         eax,557C28;'Last LBA High                                = %X'
 00556151    call        0040D630
 00556156    mov         edx,dword ptr [ebp-70]
 00556159    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055615E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556164    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055616A    mov         ecx,dword ptr [eax]
 0055616C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055616F    lea         eax,[ebp-74]
 00556172    push        eax
 00556173    mov         eax,[0056E270];^gvar_00571EC0
 00556178    movzx       eax,byte ptr [eax+15]
 0055617C    mov         dword ptr [ebp-50],eax
 0055617F    mov         byte ptr [ebp-4C],0
 00556183    lea         edx,[ebp-50]
 00556186    xor         ecx,ecx
 00556188    mov         eax,557C64;'Last Device/head Register                    = %X'
 0055618D    call        0040D630
 00556192    mov         edx,dword ptr [ebp-74]
 00556195    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055619A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005561A0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005561A6    mov         ecx,dword ptr [eax]
 005561A8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005561AB    lea         eax,[ebp-78]
 005561AE    push        eax
 005561AF    mov         eax,[0056E270];^gvar_00571EC0
 005561B4    movzx       eax,byte ptr [eax+7]
 005561B8    mov         dword ptr [ebp-50],eax
 005561BB    mov         byte ptr [ebp-4C],0
 005561BF    lea         edx,[ebp-50]
 005561C2    xor         ecx,ecx
 005561C4    mov         eax,557CA0;'Last Cmd Register                            = %X'
 005561C9    call        0040D630
 005561CE    mov         edx,dword ptr [ebp-78]
 005561D1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005561D6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005561DC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005561E2    mov         ecx,dword ptr [eax]
 005561E4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005561E7    lea         eax,[ebp-7C]
 005561EA    push        eax
 005561EB    mov         eax,[0056E270];^gvar_00571EC0
 005561F0    movzx       eax,byte ptr [eax+14]
 005561F4    mov         dword ptr [ebp-50],eax
 005561F7    mov         byte ptr [ebp-4C],0
 005561FB    lea         edx,[ebp-50]
 005561FE    xor         ecx,ecx
 00556200    mov         eax,557CDC;'Last Device Control Register                 = %X'
 00556205    call        0040D630
 0055620A    mov         edx,dword ptr [ebp-7C]
 0055620D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556212    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556218    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055621E    mov         ecx,dword ptr [eax]
 00556220    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556223    lea         eax,[ebp-80]
 00556226    push        eax
 00556227    mov         eax,[0056E270];^gvar_00571EC0
 0055622C    movzx       eax,word ptr [eax+8]
 00556230    mov         dword ptr [ebp-50],eax
 00556233    mov         byte ptr [ebp-4C],0
 00556237    lea         edx,[ebp-50]
 0055623A    xor         ecx,ecx
 0055623C    mov         eax,557D18;'Last VSC Cmd Action Code                     = %X'
 00556241    call        0040D630
 00556246    mov         edx,dword ptr [ebp-80]
 00556249    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055624E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556254    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055625A    mov         ecx,dword ptr [eax]
 0055625C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055625F    lea         eax,[ebp-84]
 00556265    push        eax
 00556266    mov         eax,[0056E270];^gvar_00571EC0
 0055626B    movzx       eax,word ptr [eax+16]
 0055626F    mov         dword ptr [ebp-50],eax
 00556272    mov         byte ptr [ebp-4C],0
 00556276    lea         edx,[ebp-50]
 00556279    xor         ecx,ecx
 0055627B    mov         eax,557D54;'Last Task File Response                      = %X'
 00556280    call        0040D630
 00556285    mov         edx,dword ptr [ebp-84]
 0055628B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556290    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556296    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055629C    mov         ecx,dword ptr [eax]
 0055629E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005562A1    lea         eax,[ebp-88]
 005562A7    push        eax
 005562A8    mov         eax,[0056E270];^gvar_00571EC0
 005562AD    movzx       eax,word ptr [eax+18]
 005562B1    mov         dword ptr [ebp-50],eax
 005562B4    mov         byte ptr [ebp-4C],0
 005562B8    lea         edx,[ebp-50]
 005562BB    xor         ecx,ecx
 005562BD    mov         eax,557D90;#10+Extended Error                               = %X'
 005562C2    call        0040D630
 005562C7    mov         edx,dword ptr [ebp-88]
 005562CD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005562D2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005562D8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005562DE    mov         ecx,dword ptr [eax]
 005562E0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005562E3    lea         eax,[ebp-8C]
 005562E9    push        eax
 005562EA    lea         edx,[ebp-90]
 005562F0    mov         eax,[0056E270];^gvar_00571EC0
 005562F5    mov         ax,word ptr [eax+18]
 005562F9    call        004CCABC
 005562FE    mov         eax,dword ptr [ebp-90]
 00556304    mov         dword ptr [ebp-50],eax
 00556307    mov         byte ptr [ebp-4C],0B
 0055630B    lea         edx,[ebp-50]
 0055630E    xor         ecx,ecx
 00556310    mov         eax,557DCC;'Extended Error Description                   = %S'
 00556315    call        0040D630
 0055631A    mov         edx,dword ptr [ebp-8C]
 00556320    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556325    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055632B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556331    mov         ecx,dword ptr [eax]
 00556333    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556336    lea         eax,[ebp-94]
 0055633C    push        eax
 0055633D    mov         eax,[0056E270];^gvar_00571EC0
 00556342    movzx       eax,word ptr [eax+30]
 00556346    mov         dword ptr [ebp-50],eax
 00556349    mov         byte ptr [ebp-4C],0
 0055634D    lea         edx,[ebp-50]
 00556350    xor         ecx,ecx
 00556352    mov         eax,557E08;'Secondary Error Code                         = %X'
 00556357    call        0040D630
 0055635C    mov         edx,dword ptr [ebp-94]
 00556362    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556367    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055636D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556373    mov         ecx,dword ptr [eax]
 00556375    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556378    mov         eax,[0056E270];^gvar_00571EC0
 0055637D    movzx       eax,byte ptr [eax+7A]
 00556381    cmp         eax,4
>00556384    ja          005563EC
 00556386    jmp         dword ptr [eax*4+55638D]
 00556386    dd          005563A1
 00556386    dd          005563B0
 00556386    dd          005563BF
 00556386    dd          005563CE
 00556386    dd          005563DD
 005563A1    lea         eax,[ebp-0C]
 005563A4    mov         edx,557E44;'NOT SUPPORTED'
 005563A9    call        @LStrLAsg
>005563AE    jmp         005563F9
 005563B0    lea         eax,[ebp-0C]
 005563B3    mov         edx,557E5C;'PATA'
 005563B8    call        @LStrLAsg
>005563BD    jmp         005563F9
 005563BF    lea         eax,[ebp-0C]
 005563C2    mov         edx,557E6C;'SATA GEN1'
 005563C7    call        @LStrLAsg
>005563CC    jmp         005563F9
 005563CE    lea         eax,[ebp-0C]
 005563D1    mov         edx,557E80;'SATA GEN2'
 005563D6    call        @LStrLAsg
>005563DB    jmp         005563F9
 005563DD    lea         eax,[ebp-0C]
 005563E0    mov         edx,557E94;'SATA GEN3'
 005563E5    call        @LStrLAsg
>005563EA    jmp         005563F9
 005563EC    lea         eax,[ebp-0C]
 005563EF    mov         edx,557EA8;'UNKNOWN SPEED'
 005563F4    call        @LStrLAsg
 005563F9    lea         eax,[ebp-98]
 005563FF    push        eax
 00556400    mov         eax,dword ptr [ebp-0C]
 00556403    mov         dword ptr [ebp-50],eax
 00556406    mov         byte ptr [ebp-4C],0B
 0055640A    lea         edx,[ebp-50]
 0055640D    xor         ecx,ecx
 0055640F    mov         eax,557EC0;'Host Connection Speed                        = %S'
 00556414    call        0040D630
 00556419    mov         edx,dword ptr [ebp-98]
 0055641F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556424    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055642A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556430    mov         ecx,dword ptr [eax]
 00556432    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556435    lea         eax,[ebp-9C]
 0055643B    push        eax
 0055643C    mov         eax,[0056E270];^gvar_00571EC0
 00556441    movzx       eax,byte ptr [eax+2F]
 00556445    mov         dword ptr [ebp-50],eax
 00556448    mov         byte ptr [ebp-4C],0
 0055644C    lea         edx,[ebp-50]
 0055644F    xor         ecx,ecx
 00556451    mov         eax,557EFC;'APM Level                                    = %X'
 00556456    call        0040D630
 0055645B    mov         edx,dword ptr [ebp-9C]
 00556461    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556466    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055646C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556472    mov         ecx,dword ptr [eax]
 00556474    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556477    mov         dword ptr [ebp-18],0
 0055647E    mov         dword ptr [ebp-14],0
 00556485    lea         edx,[ebp-18]
 00556488    mov         eax,[0056E270];^gvar_00571EC0
 0055648D    add         eax,1A
 00556490    mov         ecx,0C
 00556495    call        Move
 0055649A    lea         eax,[ebp-0A0]
 005564A0    push        eax
 005564A1    lea         eax,[ebp-18]
 005564A4    mov         dword ptr [ebp-50],eax
 005564A7    mov         byte ptr [ebp-4C],10
 005564AB    lea         edx,[ebp-50]
 005564AE    xor         ecx,ecx
 005564B0    mov         eax,557F38;'Sectors Xfer Pending to/from drive           = %X'
 005564B5    call        0040D630
 005564BA    mov         edx,dword ptr [ebp-0A0]
 005564C0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005564C5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005564CB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005564D1    mov         ecx,dword ptr [eax]
 005564D3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005564D6    lea         eax,[ebp-0A4]
 005564DC    push        eax
 005564DD    mov         eax,[0056E270];^gvar_00571EC0
 005564E2    movzx       eax,word ptr [eax+20]
 005564E6    mov         dword ptr [ebp-50],eax
 005564E9    mov         byte ptr [ebp-4C],0
 005564ED    lea         edx,[ebp-50]
 005564F0    xor         ecx,ecx
 005564F2    mov         eax,557F74;'Last Task File Data                          = %X'
 005564F7    call        0040D630
 005564FC    mov         edx,dword ptr [ebp-0A4]
 00556502    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556507    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055650D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556513    mov         ecx,dword ptr [eax]
 00556515    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556518    lea         eax,[ebp-0A8]
 0055651E    push        eax
 0055651F    mov         eax,[0056E270];^gvar_00571EC0
 00556524    mov         eax,dword ptr [eax+22]
 00556527    mov         dword ptr [ebp-50],eax
 0055652A    mov         byte ptr [ebp-4C],0
 0055652E    lea         edx,[ebp-50]
 00556531    xor         ecx,ecx
 00556533    mov         eax,557FB0;#10+Status Flags 1= %X'
 00556538    call        0040D630
 0055653D    mov         edx,dword ptr [ebp-0A8]
 00556543    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556548    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055654E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556554    mov         ecx,dword ptr [eax]
 00556556    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556559    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055655E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556564    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055656A    mov         edx,557FCC;'-----------------------'
 0055656F    mov         ecx,dword ptr [eax]
 00556571    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556574    mov         eax,[0056E270];^gvar_00571EC0
 00556579    mov         eax,dword ptr [eax+22]
 0055657C    and         eax,1
 0055657F    cmp         eax,1
>00556582    jne         00556593
 00556584    lea         eax,[ebp-0C]
 00556587    mov         edx,557FEC;'Enabled'
 0055658C    call        @LStrLAsg
>00556591    jmp         005565A0
 00556593    lea         eax,[ebp-0C]
 00556596    mov         edx,557FFC;'Disabled'
 0055659B    call        @LStrLAsg
 005565A0    lea         eax,[ebp-0AC]
 005565A6    push        eax
 005565A7    mov         eax,dword ptr [ebp-0C]
 005565AA    mov         dword ptr [ebp-50],eax
 005565AD    mov         byte ptr [ebp-4C],0B
 005565B1    lea         edx,[ebp-50]
 005565B4    xor         ecx,ecx
 005565B6    mov         eax,558010;'Bit 0: VSC Command Set %s'
 005565BB    call        0040D630
 005565C0    mov         edx,dword ptr [ebp-0AC]
 005565C6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005565CB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005565D1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005565D7    mov         ecx,dword ptr [eax]
 005565D9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005565DC    mov         eax,[0056E270];^gvar_00571EC0
 005565E1    mov         eax,dword ptr [eax+22]
 005565E4    and         eax,2
 005565E7    cmp         eax,2
>005565EA    jne         005565FB
 005565EC    lea         eax,[ebp-0C]
 005565EF    mov         edx,557FEC;'Enabled'
 005565F4    call        @LStrLAsg
>005565F9    jmp         00556608
 005565FB    lea         eax,[ebp-0C]
 005565FE    mov         edx,557FFC;'Disabled'
 00556603    call        @LStrLAsg
 00556608    lea         eax,[ebp-0B0]
 0055660E    push        eax
 0055660F    mov         eax,dword ptr [ebp-0C]
 00556612    mov         dword ptr [ebp-50],eax
 00556615    mov         byte ptr [ebp-4C],0B
 00556619    lea         edx,[ebp-50]
 0055661C    xor         ecx,ecx
 0055661E    mov         eax,558034;'Bit 1: Smart is %s'
 00556623    call        0040D630
 00556628    mov         edx,dword ptr [ebp-0B0]
 0055662E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556633    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556639    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055663F    mov         ecx,dword ptr [eax]
 00556641    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556644    mov         eax,[0056E270];^gvar_00571EC0
 00556649    mov         eax,dword ptr [eax+22]
 0055664C    and         eax,4
 0055664F    cmp         eax,4
>00556652    jne         00556663
 00556654    lea         eax,[ebp-0C]
 00556657    mov         edx,558050;'Supported'
 0055665C    call        @LStrLAsg
>00556661    jmp         00556670
 00556663    lea         eax,[ebp-0C]
 00556666    mov         edx,558064;'Not Supported'
 0055666B    call        @LStrLAsg
 00556670    lea         eax,[ebp-0B4]
 00556676    push        eax
 00556677    mov         eax,dword ptr [ebp-0C]
 0055667A    mov         dword ptr [ebp-50],eax
 0055667D    mov         byte ptr [ebp-4C],0B
 00556681    lea         edx,[ebp-50]
 00556684    xor         ecx,ecx
 00556686    mov         eax,55807C;'Bit 2: Legacy Native Mode %s'
 0055668B    call        0040D630
 00556690    mov         edx,dword ptr [ebp-0B4]
 00556696    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055669B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005566A1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005566A7    mov         ecx,dword ptr [eax]
 005566A9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005566AC    mov         eax,[0056E270];^gvar_00571EC0
 005566B1    mov         eax,dword ptr [eax+22]
 005566B4    and         eax,8
 005566B7    cmp         eax,8
>005566BA    jne         005566CB
 005566BC    lea         eax,[ebp-0C]
 005566BF    mov         edx,5580A4;'Set. FW Hard Reset recommended'
 005566C4    call        @LStrLAsg
>005566C9    jmp         005566D8
 005566CB    lea         eax,[ebp-0C]
 005566CE    mov         edx,5580CC;'Cleared'
 005566D3    call        @LStrLAsg
 005566D8    lea         eax,[ebp-0B8]
 005566DE    push        eax
 005566DF    mov         eax,dword ptr [ebp-0C]
 005566E2    mov         dword ptr [ebp-50],eax
 005566E5    mov         byte ptr [ebp-4C],0B
 005566E9    lea         edx,[ebp-50]
 005566EC    xor         ecx,ecx
 005566EE    mov         eax,5580DC;'Bit 3: Instability bit is %s'
 005566F3    call        0040D630
 005566F8    mov         edx,dword ptr [ebp-0B8]
 005566FE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556703    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556709    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055670F    mov         ecx,dword ptr [eax]
 00556711    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556714    mov         eax,[0056E270];^gvar_00571EC0
 00556719    mov         eax,dword ptr [eax+22]
 0055671C    and         eax,10
 0055671F    cmp         eax,10
>00556722    jne         00556733
 00556724    lea         eax,[ebp-0C]
 00556727    mov         edx,558104;'Bit 4: Pending VSC Tx from Drive to Host'
 0055672C    call        @LStrLAsg
>00556731    jmp         00556740
 00556733    lea         eax,[ebp-0C]
 00556736    mov         edx,558138;'Bit 4: No Pending VSC Tx from Drive to Host'
 0055673B    call        @LStrLAsg
 00556740    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556745    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055674B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556751    mov         edx,dword ptr [ebp-0C]
 00556754    mov         ecx,dword ptr [eax]
 00556756    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556759    mov         eax,[0056E270];^gvar_00571EC0
 0055675E    mov         eax,dword ptr [eax+22]
 00556761    and         eax,20
 00556764    cmp         eax,20
>00556767    jne         00556778
 00556769    lea         eax,[ebp-0C]
 0055676C    mov         edx,55816C;'Bit 5: VSC Command currently executing in background'
 00556771    call        @LStrLAsg
>00556776    jmp         00556785
 00556778    lea         eax,[ebp-0C]
 0055677B    mov         edx,5581AC;'Bit 5: No VSC Command currently executing in background'
 00556780    call        @LStrLAsg
 00556785    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055678A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556790    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556796    mov         edx,dword ptr [ebp-0C]
 00556799    mov         ecx,dword ptr [eax]
 0055679B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055679E    mov         eax,[0056E270];^gvar_00571EC0
 005567A3    mov         eax,dword ptr [eax+22]
 005567A6    and         eax,200
 005567AB    cmp         eax,200
>005567B0    jne         005567C1
 005567B2    lea         eax,[ebp-0C]
 005567B5    mov         edx,5581EC;'Bit 9: At least one DBS event occurred since the last clear DRM'
 005567BA    call        @LStrLAsg
>005567BF    jmp         005567CE
 005567C1    lea         eax,[ebp-0C]
 005567C4    mov         edx,558234;'Bit 9: No DBS event occurred since the last clear DRM'
 005567C9    call        @LStrLAsg
 005567CE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005567D3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005567D9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005567DF    mov         edx,dword ptr [ebp-0C]
 005567E2    mov         ecx,dword ptr [eax]
 005567E4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005567E7    mov         eax,[0056E270];^gvar_00571EC0
 005567EC    mov         eax,dword ptr [eax+22]
 005567EF    and         eax,400
 005567F4    cmp         eax,400
>005567F9    jne         0055680A
 005567FB    lea         eax,[ebp-0C]
 005567FE    mov         edx,558274;'Bit 10: At least one reset-while-busy event occurred since the last clear DR...
 00556803    call        @LStrLAsg
>00556808    jmp         00556817
 0055680A    lea         eax,[ebp-0C]
 0055680D    mov         edx,5582CC;'Bit 10: No reset-while-busy event occurred since the last clear DRM'
 00556812    call        @LStrLAsg
 00556817    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055681C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556822    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556828    mov         edx,dword ptr [ebp-0C]
 0055682B    mov         ecx,dword ptr [eax]
 0055682D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556830    mov         eax,[0056E270];^gvar_00571EC0
 00556835    mov         eax,dword ptr [eax+22]
 00556838    and         eax,800
 0055683D    cmp         eax,800
>00556842    jne         00556853
 00556844    lea         eax,[ebp-0C]
 00556847    mov         edx,558318;'TRUE'
 0055684C    call        @LStrLAsg
>00556851    jmp         00556860
 00556853    lea         eax,[ebp-0C]
 00556856    mov         edx,558328;'FALSE'
 0055685B    call        @LStrLAsg
 00556860    lea         eax,[ebp-0BC]
 00556866    push        eax
 00556867    mov         eax,dword ptr [ebp-0C]
 0055686A    mov         dword ptr [ebp-50],eax
 0055686D    mov         byte ptr [ebp-4C],0B
 00556871    lea         edx,[ebp-50]
 00556874    xor         ecx,ecx
 00556876    mov         eax,558338;'Bit 11: Drive is powered up in Standby and has not spun ... = %s'
 0055687B    call        0040D630
 00556880    mov         edx,dword ptr [ebp-0BC]
 00556886    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055688B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556891    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556897    mov         ecx,dword ptr [eax]
 00556899    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055689C    mov         eax,[0056E270];^gvar_00571EC0
 005568A1    mov         eax,dword ptr [eax+22]
 005568A4    and         eax,2000
 005568A9    cmp         eax,2000
>005568AE    jne         005568BF
 005568B0    lea         eax,[ebp-0C]
 005568B3    mov         edx,558318;'TRUE'
 005568B8    call        @LStrLAsg
>005568BD    jmp         005568CC
 005568BF    lea         eax,[ebp-0C]
 005568C2    mov         edx,558328;'FALSE'
 005568C7    call        @LStrLAsg
 005568CC    lea         eax,[ebp-0C0]
 005568D2    push        eax
 005568D3    mov         eax,dword ptr [ebp-0C]
 005568D6    mov         dword ptr [ebp-50],eax
 005568D9    mov         byte ptr [ebp-4C],0B
 005568DD    lea         edx,[ebp-50]
 005568E0    xor         ecx,ecx
 005568E2    mov         eax,558384;'Bit 13: Drive in Queue Abort Mode .... = %s'
 005568E7    call        0040D630
 005568EC    mov         edx,dword ptr [ebp-0C0]
 005568F2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005568F7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005568FD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556903    mov         ecx,dword ptr [eax]
 00556905    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556908    mov         eax,[0056E270];^gvar_00571EC0
 0055690D    mov         eax,dword ptr [eax+22]
 00556910    and         eax,10000
 00556915    cmp         eax,10000
>0055691A    jne         0055692B
 0055691C    lea         eax,[ebp-0C]
 0055691F    mov         edx,558318;'TRUE'
 00556924    call        @LStrLAsg
>00556929    jmp         00556938
 0055692B    lea         eax,[ebp-0C]
 0055692E    mov         edx,558328;'FALSE'
 00556933    call        @LStrLAsg
 00556938    lea         eax,[ebp-0C4]
 0055693E    push        eax
 0055693F    mov         eax,dword ptr [ebp-0C]
 00556942    mov         dword ptr [ebp-50],eax
 00556945    mov         byte ptr [ebp-4C],0B
 00556949    lea         edx,[ebp-50]
 0055694C    xor         ecx,ecx
 0055694E    mov         eax,5583B8;'Bit 16: VSC POR Reset Occurred ....... = %s'
 00556953    call        0040D630
 00556958    mov         edx,dword ptr [ebp-0C4]
 0055695E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556963    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556969    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055696F    mov         ecx,dword ptr [eax]
 00556971    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556974    mov         eax,[0056E270];^gvar_00571EC0
 00556979    mov         eax,dword ptr [eax+22]
 0055697C    and         eax,20000
 00556981    cmp         eax,20000
>00556986    jne         00556997
 00556988    lea         eax,[ebp-0C]
 0055698B    mov         edx,558318;'TRUE'
 00556990    call        @LStrLAsg
>00556995    jmp         005569A4
 00556997    lea         eax,[ebp-0C]
 0055699A    mov         edx,558328;'FALSE'
 0055699F    call        @LStrLAsg
 005569A4    lea         eax,[ebp-0C8]
 005569AA    push        eax
 005569AB    mov         eax,dword ptr [ebp-0C]
 005569AE    mov         dword ptr [ebp-50],eax
 005569B1    mov         byte ptr [ebp-4C],0B
 005569B5    lea         edx,[ebp-50]
 005569B8    xor         ecx,ecx
 005569BA    mov         eax,5583EC;'Bit 17: Power On Reset Occurred ...... = %s'
 005569BF    call        0040D630
 005569C4    mov         edx,dword ptr [ebp-0C8]
 005569CA    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005569CF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005569D5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005569DB    mov         ecx,dword ptr [eax]
 005569DD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005569E0    mov         eax,[0056E270];^gvar_00571EC0
 005569E5    mov         eax,dword ptr [eax+22]
 005569E8    and         eax,40000
 005569ED    cmp         eax,40000
>005569F2    jne         00556A03
 005569F4    lea         eax,[ebp-0C]
 005569F7    mov         edx,558318;'TRUE'
 005569FC    call        @LStrLAsg
>00556A01    jmp         00556A10
 00556A03    lea         eax,[ebp-0C]
 00556A06    mov         edx,558328;'FALSE'
 00556A0B    call        @LStrLAsg
 00556A10    lea         eax,[ebp-0CC]
 00556A16    push        eax
 00556A17    mov         eax,dword ptr [ebp-0C]
 00556A1A    mov         dword ptr [ebp-50],eax
 00556A1D    mov         byte ptr [ebp-4C],0B
 00556A21    lea         edx,[ebp-50]
 00556A24    xor         ecx,ecx
 00556A26    mov         eax,558420;'Bit 18: Hardware Reset Occurred ...... = %s'
 00556A2B    call        0040D630
 00556A30    mov         edx,dword ptr [ebp-0CC]
 00556A36    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556A3B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556A41    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556A47    mov         ecx,dword ptr [eax]
 00556A49    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556A4C    mov         eax,[0056E270];^gvar_00571EC0
 00556A51    mov         eax,dword ptr [eax+22]
 00556A54    and         eax,80000
 00556A59    cmp         eax,80000
>00556A5E    jne         00556A6F
 00556A60    lea         eax,[ebp-0C]
 00556A63    mov         edx,558318;'TRUE'
 00556A68    call        @LStrLAsg
>00556A6D    jmp         00556A7C
 00556A6F    lea         eax,[ebp-0C]
 00556A72    mov         edx,558328;'FALSE'
 00556A77    call        @LStrLAsg
 00556A7C    lea         eax,[ebp-0D0]
 00556A82    push        eax
 00556A83    mov         eax,dword ptr [ebp-0C]
 00556A86    mov         dword ptr [ebp-50],eax
 00556A89    mov         byte ptr [ebp-4C],0B
 00556A8D    lea         edx,[ebp-50]
 00556A90    xor         ecx,ecx
 00556A92    mov         eax,558454;'Bit 19: Software Reset Occurred ...... = %s'
 00556A97    call        0040D630
 00556A9C    mov         edx,dword ptr [ebp-0D0]
 00556AA2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556AA7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556AAD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556AB3    mov         ecx,dword ptr [eax]
 00556AB5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556AB8    mov         eax,[0056E270];^gvar_00571EC0
 00556ABD    mov         eax,dword ptr [eax+22]
 00556AC0    and         eax,100000
 00556AC5    cmp         eax,100000
>00556ACA    jne         00556ADB
 00556ACC    lea         eax,[ebp-0C]
 00556ACF    mov         edx,558318;'TRUE'
 00556AD4    call        @LStrLAsg
>00556AD9    jmp         00556AE8
 00556ADB    lea         eax,[ebp-0C]
 00556ADE    mov         edx,558328;'FALSE'
 00556AE3    call        @LStrLAsg
 00556AE8    lea         eax,[ebp-0D4]
 00556AEE    push        eax
 00556AEF    mov         eax,dword ptr [ebp-0C]
 00556AF2    mov         dword ptr [ebp-50],eax
 00556AF5    mov         byte ptr [ebp-4C],0B
 00556AF9    lea         edx,[ebp-50]
 00556AFC    xor         ecx,ecx
 00556AFE    mov         eax,558488;'Bit 20: Debug Stop Occurred .......... = %s'
 00556B03    call        0040D630
 00556B08    mov         edx,dword ptr [ebp-0D4]
 00556B0E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556B13    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556B19    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556B1F    mov         ecx,dword ptr [eax]
 00556B21    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556B24    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556B29    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556B2F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556B35    mov         edx,5584BC;#10+Note: Next Issue of VSC status will clear Bits 16 to 20 of Status 1 Flag'
 00556B3A    mov         ecx,dword ptr [eax]
 00556B3C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556B3F    mov         eax,[0056E270];^gvar_00571EC0
 00556B44    mov         eax,dword ptr [eax+22]
 00556B47    shr         eax,1A
 00556B4A    and         eax,3
 00556B4D    sub         eax,1
>00556B50    jb          00556B59
>00556B52    je          00556B68
 00556B54    dec         eax
>00556B55    je          00556B77
>00556B57    jmp         00556B86
 00556B59    lea         eax,[ebp-0C]
 00556B5C    mov         edx,558510;'UnLock'
 00556B61    call        @LStrLAsg
>00556B66    jmp         00556B93
 00556B68    lea         eax,[ebp-0C]
 00556B6B    mov         edx,558520;'Lock Count Down'
 00556B70    call        @LStrLAsg
>00556B75    jmp         00556B93
 00556B77    lea         eax,[ebp-0C]
 00556B7A    mov         edx,558538;'Lock'
 00556B7F    call        @LStrLAsg
>00556B84    jmp         00556B93
 00556B86    lea         eax,[ebp-0C]
 00556B89    mov         edx,558548;'UnKnown'
 00556B8E    call        @LStrLAsg
 00556B93    lea         eax,[ebp-0D8]
 00556B99    push        eax
 00556B9A    mov         eax,[0056E270];^gvar_00571EC0
 00556B9F    mov         eax,dword ptr [eax+22]
 00556BA2    shr         eax,1A
 00556BA5    and         eax,3
 00556BA8    mov         dword ptr [ebp-0E8],eax
 00556BAE    mov         byte ptr [ebp-0E4],0
 00556BB5    mov         eax,dword ptr [ebp-0C]
 00556BB8    mov         dword ptr [ebp-0E0],eax
 00556BBE    mov         byte ptr [ebp-0DC],0B
 00556BC5    lea         edx,[ebp-0E8]
 00556BCB    mov         ecx,1
 00556BD0    mov         eax,558558;'Bit 26 & 27: Drive Protect State   (%1d) = %s'
 00556BD5    call        0040D630
 00556BDA    mov         edx,dword ptr [ebp-0D8]
 00556BE0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556BE5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556BEB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556BF1    mov         ecx,dword ptr [eax]
 00556BF3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556BF6    mov         eax,[0056E270];^gvar_00571EC0
 00556BFB    mov         eax,dword ptr [eax+22]
 00556BFE    and         eax,10000000
 00556C03    cmp         eax,10000000
>00556C08    jne         00556C19
 00556C0A    lea         eax,[ebp-0C]
 00556C0D    mov         edx,558318;'TRUE'
 00556C12    call        @LStrLAsg
>00556C17    jmp         00556C26
 00556C19    lea         eax,[ebp-0C]
 00556C1C    mov         edx,558328;'FALSE'
 00556C21    call        @LStrLAsg
 00556C26    lea         eax,[ebp-0EC]
 00556C2C    push        eax
 00556C2D    mov         eax,dword ptr [ebp-0C]
 00556C30    mov         dword ptr [ebp-50],eax
 00556C33    mov         byte ptr [ebp-4C],0B
 00556C37    lea         edx,[ebp-50]
 00556C3A    xor         ecx,ecx
 00556C3C    mov         eax,558590;'Bit 28: Encryption Key Loaded......... = %s'
 00556C41    call        0040D630
 00556C46    mov         edx,dword ptr [ebp-0EC]
 00556C4C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556C51    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556C57    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556C5D    mov         ecx,dword ptr [eax]
 00556C5F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556C62    mov         eax,[0056E270];^gvar_00571EC0
 00556C67    mov         eax,dword ptr [eax+22]
 00556C6A    shr         eax,1E
 00556C6D    and         eax,3
 00556C70    sub         eax,1
>00556C73    jb          00556C7F
>00556C75    je          00556C8E
 00556C77    dec         eax
>00556C78    je          00556C9D
 00556C7A    dec         eax
>00556C7B    je          00556CAC
>00556C7D    jmp         00556CBB
 00556C7F    lea         eax,[ebp-0C]
 00556C82    mov         edx,5585C4;'NO OL PENDING'
 00556C87    call        @LStrLAsg
>00556C8C    jmp         00556CC8
 00556C8E    lea         eax,[ebp-0C]
 00556C91    mov         edx,5585DC;'OL PENDING NORMAL MODE'
 00556C96    call        @LStrLAsg
>00556C9B    jmp         00556CC8
 00556C9D    lea         eax,[ebp-0C]
 00556CA0    mov         edx,5585FC;'OL PENDING AGGRESSIVE MODE'
 00556CA5    call        @LStrLAsg
>00556CAA    jmp         00556CC8
 00556CAC    lea         eax,[ebp-0C]
 00556CAF    mov         edx,558620;'RESERVED'
 00556CB4    call        @LStrLAsg
>00556CB9    jmp         00556CC8
 00556CBB    lea         eax,[ebp-0C]
 00556CBE    mov         edx,558634;'INVALID OL PENDING STATUS'
 00556CC3    call        @LStrLAsg
 00556CC8    lea         eax,[ebp-0F0]
 00556CCE    push        eax
 00556CCF    mov         eax,dword ptr [ebp-0C]
 00556CD2    mov         dword ptr [ebp-50],eax
 00556CD5    mov         byte ptr [ebp-4C],0B
 00556CD9    lea         edx,[ebp-50]
 00556CDC    xor         ecx,ecx
 00556CDE    mov         eax,558658;'Bit 30-31: Offline Pending Status..... = %s'
 00556CE3    call        0040D630
 00556CE8    mov         edx,dword ptr [ebp-0F0]
 00556CEE    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556CF3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556CF9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556CFF    mov         ecx,dword ptr [eax]
 00556D01    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556D04    mov         eax,[0056E270];^gvar_00571EC0
 00556D09    movzx       eax,byte ptr [eax+36]
 00556D0D    cmp         eax,6
>00556D10    ja          00556DA2
 00556D16    jmp         dword ptr [eax*4+556D1D]
 00556D16    dd          00556D39
 00556D16    dd          00556D48
 00556D16    dd          00556D57
 00556D16    dd          00556D66
 00556D16    dd          00556D75
 00556D16    dd          00556D84
 00556D16    dd          00556D93
 00556D39    lea         eax,[ebp-0C]
 00556D3C    mov         edx,55868C;'Idle'
 00556D41    call        @LStrLAsg
>00556D46    jmp         00556DAA
 00556D48    lea         eax,[ebp-0C]
 00556D4B    mov         edx,55869C;'Standby'
 00556D50    call        @LStrLAsg
>00556D55    jmp         00556DAA
 00556D57    lea         eax,[ebp-0C]
 00556D5A    mov         edx,5586AC;'Sleep'
 00556D5F    call        @LStrLAsg
>00556D64    jmp         00556DAA
 00556D66    lea         eax,[ebp-0C]
 00556D69    mov         edx,5586BC;'Background DST'
 00556D6E    call        @LStrLAsg
>00556D73    jmp         00556DAA
 00556D75    lea         eax,[ebp-0C]
 00556D78    mov         edx,5586D4;'Background Data Lifeguard'
 00556D7D    call        @LStrLAsg
>00556D82    jmp         00556DAA
 00556D84    lea         eax,[ebp-0C]
 00556D87    mov         edx,5586F8;'Background VSC Command'
 00556D8C    call        @LStrLAsg
>00556D91    jmp         00556DAA
 00556D93    lea         eax,[ebp-0C]
 00556D96    mov         edx,558718;'PST test in progress'
 00556D9B    call        @LStrLAsg
>00556DA0    jmp         00556DAA
 00556DA2    lea         eax,[ebp-0C]
 00556DA5    call        @LStrClr
 00556DAA    lea         eax,[ebp-0F4]
 00556DB0    push        eax
 00556DB1    mov         eax,[0056E270];^gvar_00571EC0
 00556DB6    movzx       eax,byte ptr [eax+36]
 00556DBA    mov         dword ptr [ebp-50],eax
 00556DBD    mov         byte ptr [ebp-4C],0
 00556DC1    lea         edx,[ebp-50]
 00556DC4    xor         ecx,ecx
 00556DC6    mov         eax,558738;#10+Current Drive State 1 = %x'
 00556DCB    call        0040D630
 00556DD0    mov         edx,dword ptr [ebp-0F4]
 00556DD6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556DDB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556DE1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556DE7    mov         ecx,dword ptr [eax]
 00556DE9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556DEC    mov         eax,[0056E270];^gvar_00571EC0
 00556DF1    mov         al,byte ptr [eax+37]
 00556DF4    and         al,1
 00556DF6    sub         al,1
>00556DF8    jb          00556DFE
>00556DFA    je          00556E0D
>00556DFC    jmp         00556E1C
 00556DFE    lea         eax,[ebp-0C]
 00556E01    mov         edx,55875C;'BG DST/Smart Off-Line State = ACTIVE'
 00556E06    call        @LStrLAsg
>00556E0B    jmp         00556E24
 00556E0D    lea         eax,[ebp-0C]
 00556E10    mov         edx,55878C;'BG DST/Smart Off-Line State = SUSPENDED'
 00556E15    call        @LStrLAsg
>00556E1A    jmp         00556E24
 00556E1C    lea         eax,[ebp-0C]
 00556E1F    call        @LStrClr
 00556E24    lea         eax,[ebp-0F8]
 00556E2A    push        eax
 00556E2B    mov         eax,[0056E270];^gvar_00571EC0
 00556E30    movzx       eax,byte ptr [eax+37]
 00556E34    mov         dword ptr [ebp-0E8],eax
 00556E3A    mov         byte ptr [ebp-0E4],0
 00556E41    mov         eax,dword ptr [ebp-0C]
 00556E44    mov         dword ptr [ebp-0E0],eax
 00556E4A    mov         byte ptr [ebp-0DC],0B
 00556E51    lea         edx,[ebp-0E8]
 00556E57    mov         ecx,1
 00556E5C    mov         eax,5587BC;'Current Drive State 2 = %X - %S'
 00556E61    call        0040D630
 00556E66    mov         edx,dword ptr [ebp-0F8]
 00556E6C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556E71    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556E77    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556E7D    mov         ecx,dword ptr [eax]
 00556E7F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556E82    mov         eax,[0056E270];^gvar_00571EC0
 00556E87    movzx       eax,byte ptr [eax+37]
 00556E8B    shr         eax,1
 00556E8D    and         eax,0F
 00556E90    cmp         eax,0B
>00556E93    ja          00556F6C
 00556E99    jmp         dword ptr [eax*4+556EA0]
 00556E99    dd          00556ED0
 00556E99    dd          00556EE2
 00556E99    dd          00556EF4
 00556E99    dd          00556F03
 00556E99    dd          00556F12
 00556E99    dd          00556F6C
 00556E99    dd          00556F6C
 00556E99    dd          00556F21
 00556E99    dd          00556F30
 00556E99    dd          00556F3F
 00556E99    dd          00556F4E
 00556E99    dd          00556F5D
 00556ED0    lea         eax,[ebp-0C]
 00556ED3    mov         edx,5587E4;'No DST or Smart Off-Line'
 00556ED8    call        @LStrLAsg
>00556EDD    jmp         00556F79
 00556EE2    lea         eax,[ebp-0C]
 00556EE5    mov         edx,558808;'DST Quick Test'
 00556EEA    call        @LStrLAsg
>00556EEF    jmp         00556F79
 00556EF4    lea         eax,[ebp-0C]
 00556EF7    mov         edx,558820;'DST Extended Test'
 00556EFC    call        @LStrLAsg
>00556F01    jmp         00556F79
 00556F03    lea         eax,[ebp-0C]
 00556F06    mov         edx,55883C;'Conveyance Test'
 00556F0B    call        @LStrLAsg
>00556F10    jmp         00556F79
 00556F12    lea         eax,[ebp-0C]
 00556F15    mov         edx,558854;'Selective Self Test'
 00556F1A    call        @LStrLAsg
>00556F1F    jmp         00556F79
 00556F21    lea         eax,[ebp-0C]
 00556F24    mov         edx,558870;'Smart Off-Line Immediate (scan)'
 00556F29    call        @LStrLAsg
>00556F2E    jmp         00556F79
 00556F30    lea         eax,[ebp-0C]
 00556F33    mov         edx,558898;'Smart Off-Line Immediate (TA Margaining)'
 00556F38    call        @LStrLAsg
>00556F3D    jmp         00556F79
 00556F3F    lea         eax,[ebp-0C]
 00556F42    mov         edx,5588CC;'Smart Auto Off-Line (scan)'
 00556F47    call        @LStrLAsg
>00556F4C    jmp         00556F79
 00556F4E    lea         eax,[ebp-0C]
 00556F51    mov         edx,5588F0;'Smart Auto Off-Line (TA Margaining)'
 00556F56    call        @LStrLAsg
>00556F5B    jmp         00556F79
 00556F5D    lea         eax,[ebp-0C]
 00556F60    mov         edx,55891C;'Smart Auto Off-Line (Selective)'
 00556F65    call        @LStrLAsg
>00556F6A    jmp         00556F79
 00556F6C    lea         eax,[ebp-0C]
 00556F6F    mov         edx,558944;'Reserved'
 00556F74    call        @LStrLAsg
 00556F79    lea         eax,[ebp-0FC]
 00556F7F    push        eax
 00556F80    mov         eax,[0056E270];^gvar_00571EC0
 00556F85    movzx       eax,byte ptr [eax+37]
 00556F89    shr         eax,1
 00556F8B    and         eax,0F
 00556F8E    mov         dword ptr [ebp-0E8],eax
 00556F94    mov         byte ptr [ebp-0E4],0
 00556F9B    mov         eax,dword ptr [ebp-0C]
 00556F9E    mov         dword ptr [ebp-0E0],eax
 00556FA4    mov         byte ptr [ebp-0DC],0B
 00556FAB    lea         edx,[ebp-0E8]
 00556FB1    mov         ecx,1
 00556FB6    mov         eax,558958;'Test Type             = %X - %S'
 00556FBB    call        0040D630
 00556FC0    mov         edx,dword ptr [ebp-0FC]
 00556FC6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00556FCB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00556FD1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00556FD7    mov         ecx,dword ptr [eax]
 00556FD9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00556FDC    lea         eax,[ebp-100]
 00556FE2    push        eax
 00556FE3    mov         eax,[0056E270];^gvar_00571EC0
 00556FE8    movzx       eax,word ptr [eax+68]
 00556FEC    mov         ecx,0A
 00556FF1    xor         edx,edx
 00556FF3    div         eax,ecx
 00556FF5    mov         dword ptr [ebp-0E8],eax
 00556FFB    mov         byte ptr [ebp-0E4],0
 00557002    mov         eax,[0056E270];^gvar_00571EC0
 00557007    movzx       eax,word ptr [eax+68]
 0055700B    mov         ecx,0A
 00557010    xor         edx,edx
 00557012    div         eax,ecx
 00557014    mov         dword ptr [ebp-0E0],edx
 0055701A    mov         byte ptr [ebp-0DC],0
 00557021    lea         edx,[ebp-0E8]
 00557027    mov         ecx,1
 0055702C    mov         eax,558980;#10+Progress Indicator                           = %d.%d%%'
 00557031    call        0040D630
 00557036    mov         edx,dword ptr [ebp-100]
 0055703C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557041    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557047    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055704D    mov         ecx,dword ptr [eax]
 0055704F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557052    lea         eax,[ebp-104]
 00557058    push        eax
 00557059    mov         eax,[0056E270];^gvar_00571EC0
 0055705E    movzx       eax,byte ptr [eax+38]
 00557062    mov         dword ptr [ebp-50],eax
 00557065    mov         byte ptr [ebp-4C],0
 00557069    lea         edx,[ebp-50]
 0055706C    xor         ecx,ecx
 0055706E    mov         eax,5589C0;'Current LBA                                  = %x'
 00557073    call        0040D630
 00557078    mov         edx,dword ptr [ebp-104]
 0055707E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557083    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557089    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055708F    mov         ecx,dword ptr [eax]
 00557091    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557094    lea         eax,[ebp-108]
 0055709A    push        eax
 0055709B    mov         eax,[0056E270];^gvar_00571EC0
 005570A0    movzx       eax,word ptr [eax+3E]
 005570A4    mov         dword ptr [ebp-50],eax
 005570A7    mov         byte ptr [ebp-4C],0
 005570AB    lea         edx,[ebp-50]
 005570AE    xor         ecx,ecx
 005570B0    mov         eax,5589FC;'Current Track Offset                         = %X'
 005570B5    call        0040D630
 005570BA    mov         edx,dword ptr [ebp-108]
 005570C0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005570C5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005570CB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005570D1    mov         ecx,dword ptr [eax]
 005570D3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005570D6    lea         eax,[ebp-10C]
 005570DC    push        eax
 005570DD    mov         eax,[0056E270];^gvar_00571EC0
 005570E2    mov         eax,dword ptr [eax+40]
 005570E5    mov         dword ptr [ebp-50],eax
 005570E8    mov         byte ptr [ebp-4C],0
 005570EC    lea         edx,[ebp-50]
 005570EF    xor         ecx,ecx
 005570F1    mov         eax,558A38;'Virtual cylinder of current active track     = %X'
 005570F6    call        0040D630
 005570FB    mov         edx,dword ptr [ebp-10C]
 00557101    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557106    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055710C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557112    mov         ecx,dword ptr [eax]
 00557114    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557117    lea         eax,[ebp-110]
 0055711D    push        eax
 0055711E    mov         eax,[0056E270];^gvar_00571EC0
 00557123    movzx       eax,byte ptr [eax+44]
 00557127    mov         dword ptr [ebp-50],eax
 0055712A    mov         byte ptr [ebp-4C],0
 0055712E    lea         edx,[ebp-50]
 00557131    xor         ecx,ecx
 00557133    mov         eax,558A74;'Virtual head of current active track         = %X'
 00557138    call        0040D630
 0055713D    mov         edx,dword ptr [ebp-110]
 00557143    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557148    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055714E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557154    mov         ecx,dword ptr [eax]
 00557156    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557159    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055715E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557164    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055716A    mov         edx,558AB0;#10+For VDT Drives Only:'
 0055716F    mov         ecx,dword ptr [eax]
 00557171    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557174    lea         eax,[ebp-114]
 0055717A    push        eax
 0055717B    mov         eax,[0056E270];^gvar_00571EC0
 00557180    movzx       eax,word ptr [eax+72]
 00557184    mov         dword ptr [ebp-50],eax
 00557187    mov         byte ptr [ebp-4C],0
 0055718B    lea         edx,[ebp-50]
 0055718E    xor         ecx,ecx
 00557190    mov         eax,558AD0;'Servo Track Offset of current active track   = %X'
 00557195    call        0040D630
 0055719A    mov         edx,dword ptr [ebp-114]
 005571A0    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005571A5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005571AB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005571B1    mov         ecx,dword ptr [eax]
 005571B3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005571B6    lea         eax,[ebp-118]
 005571BC    push        eax
 005571BD    mov         eax,[0056E270];^gvar_00571EC0
 005571C2    mov         eax,dword ptr [eax+74]
 005571C5    mov         dword ptr [ebp-50],eax
 005571C8    mov         byte ptr [ebp-4C],0
 005571CC    lea         edx,[ebp-50]
 005571CF    xor         ecx,ecx
 005571D1    mov         eax,558B0C;'Virt Servo Cylinder of current active track  = %X'
 005571D6    call        0040D630
 005571DB    mov         edx,dword ptr [ebp-118]
 005571E1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005571E6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005571EC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005571F2    mov         ecx,dword ptr [eax]
 005571F4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005571F7    lea         eax,[ebp-11C]
 005571FD    push        eax
 005571FE    mov         eax,[0056E270];^gvar_00571EC0
 00557203    movzx       eax,word ptr [eax+78]
 00557207    mov         dword ptr [ebp-50],eax
 0055720A    mov         byte ptr [ebp-4C],0
 0055720E    lea         edx,[ebp-50]
 00557211    xor         ecx,ecx
 00557213    mov         eax,558B48;'Data-to-Servo Conversion Offset              = %X'
 00557218    call        0040D630
 0055721D    mov         edx,dword ptr [ebp-11C]
 00557223    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557228    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055722E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557234    mov         ecx,dword ptr [eax]
 00557236    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557239    lea         eax,[ebp-120]
 0055723F    push        eax
 00557240    mov         eax,[0056E270];^gvar_00571EC0
 00557245    movzx       eax,byte ptr [eax+45]
 00557249    mov         dword ptr [ebp-50],eax
 0055724C    mov         byte ptr [ebp-4C],0
 00557250    lea         edx,[ebp-50]
 00557253    xor         ecx,ecx
 00557255    mov         eax,558B84;'Current Data Zone                            = %X'
 0055725A    call        0040D630
 0055725F    mov         edx,dword ptr [ebp-120]
 00557265    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055726A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557270    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557276    mov         ecx,dword ptr [eax]
 00557278    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055727B    lea         eax,[ebp-124]
 00557281    push        eax
 00557282    mov         eax,[0056E270];^gvar_00571EC0
 00557287    movzx       eax,word ptr [eax+46]
 0055728B    mov         dword ptr [ebp-50],eax
 0055728E    mov         byte ptr [ebp-4C],0
 00557292    lea         edx,[ebp-50]
 00557295    xor         ecx,ecx
 00557297    mov         eax,558BC0;'Current Wedge Start                          = %X'
 0055729C    call        0040D630
 005572A1    mov         edx,dword ptr [ebp-124]
 005572A7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005572AC    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005572B2    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005572B8    mov         ecx,dword ptr [eax]
 005572BA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005572BD    lea         eax,[ebp-128]
 005572C3    push        eax
 005572C4    mov         eax,[0056E270];^gvar_00571EC0
 005572C9    movzx       eax,word ptr [eax+48]
 005572CD    mov         dword ptr [ebp-50],eax
 005572D0    mov         byte ptr [ebp-4C],0
 005572D4    lea         edx,[ebp-50]
 005572D7    xor         ecx,ecx
 005572D9    mov         eax,558BFC;'Current Wedge Size                           = %X'
 005572DE    call        0040D630
 005572E3    mov         edx,dword ptr [ebp-128]
 005572E9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005572EE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005572F4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005572FA    mov         ecx,dword ptr [eax]
 005572FC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005572FF    lea         eax,[ebp-12C]
 00557305    push        eax
 00557306    mov         eax,[0056E270];^gvar_00571EC0
 0055730B    movzx       eax,byte ptr [eax+4A]
 0055730F    mov         dword ptr [ebp-50],eax
 00557312    mov         byte ptr [ebp-4C],0
 00557316    lea         edx,[ebp-50]
 00557319    xor         ecx,ecx
 0055731B    mov         eax,558C38;#10+Drive Temperature (avg)                      = %d'
 00557320    call        0040D630
 00557325    mov         edx,dword ptr [ebp-12C]
 0055732B    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557330    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557336    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055733C    mov         ecx,dword ptr [eax]
 0055733E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557341    lea         eax,[ebp-130]
 00557347    push        eax
 00557348    mov         eax,[0056E270];^gvar_00571EC0
 0055734D    movzx       eax,byte ptr [eax+4B]
 00557351    mov         dword ptr [ebp-50],eax
 00557354    mov         byte ptr [ebp-4C],0
 00557358    lea         edx,[ebp-50]
 0055735B    xor         ecx,ecx
 0055735D    mov         eax,558C74;'Junction Temperature (degree)                = %d'
 00557362    call        0040D630
 00557367    mov         edx,dword ptr [ebp-130]
 0055736D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557372    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557378    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055737E    mov         ecx,dword ptr [eax]
 00557380    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557383    lea         eax,[ebp-134]
 00557389    push        eax
 0055738A    mov         eax,[0056E270];^gvar_00571EC0
 0055738F    movzx       eax,byte ptr [eax+6A]
 00557393    mov         dword ptr [ebp-50],eax
 00557396    mov         byte ptr [ebp-4C],0
 0055739A    lea         edx,[ebp-50]
 0055739D    xor         ecx,ecx
 0055739F    mov         eax,558CB0;'Flex Temperature (degree)                    = %d'
 005573A4    call        0040D630
 005573A9    mov         edx,dword ptr [ebp-134]
 005573AF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005573B4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005573BA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005573C0    mov         ecx,dword ptr [eax]
 005573C2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005573C5    lea         eax,[ebp-138]
 005573CB    push        eax
 005573CC    mov         eax,[0056E270];^gvar_00571EC0
 005573D1    movzx       eax,word ptr [eax+4C]
 005573D5    mov         dword ptr [ebp-50],eax
 005573D8    mov         byte ptr [ebp-4C],0
 005573DC    lea         edx,[ebp-50]
 005573DF    xor         ecx,ecx
 005573E1    mov         eax,558CEC;'Coil Temperature                             = %d'
 005573E6    call        0040D630
 005573EB    mov         edx,dword ptr [ebp-138]
 005573F1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005573F6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005573FC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557402    mov         ecx,dword ptr [eax]
 00557404    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557407    lea         eax,[ebp-13C]
 0055740D    push        eax
 0055740E    mov         eax,[0056E270];^gvar_00571EC0
 00557413    movzx       eax,word ptr [eax+4E]
 00557417    mov         dword ptr [ebp-50],eax
 0055741A    mov         byte ptr [ebp-4C],0
 0055741E    lea         edx,[ebp-50]
 00557421    xor         ecx,ecx
 00557423    mov         eax,558D28;#10+Servo Status                                 = %X'
 00557428    call        0040D630
 0055742D    mov         edx,dword ptr [ebp-13C]
 00557433    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557438    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055743E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557444    mov         ecx,dword ptr [eax]
 00557446    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557449    xor         eax,eax
 0055744B    mov         dword ptr [ebp-10],eax
 0055744E    lea         edx,[ebp-10]
 00557451    mov         eax,[0056E270];^gvar_00571EC0
 00557456    add         eax,54
 00557459    mov         ecx,3
 0055745E    call        Move
 00557463    lea         eax,[ebp-140]
 00557469    push        eax
 0055746A    mov         eax,dword ptr [ebp-10]
 0055746D    mov         dword ptr [ebp-50],eax
 00557470    mov         byte ptr [ebp-4C],0
 00557474    lea         edx,[ebp-50]
 00557477    xor         ecx,ecx
 00557479    mov         eax,558D64;'Seed Cyl                                     = %X'
 0055747E    call        0040D630
 00557483    mov         edx,dword ptr [ebp-140]
 00557489    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055748E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557494    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055749A    mov         ecx,dword ptr [eax]
 0055749C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055749F    lea         eax,[ebp-144]
 005574A5    push        eax
 005574A6    mov         eax,[0056E270];^gvar_00571EC0
 005574AB    movzx       eax,byte ptr [eax+57]
 005574AF    mov         dword ptr [ebp-50],eax
 005574B2    mov         byte ptr [ebp-4C],0
 005574B6    lea         edx,[ebp-50]
 005574B9    xor         ecx,ecx
 005574BB    mov         eax,558DA0;'Seed Head                                    = %X'
 005574C0    call        0040D630
 005574C5    mov         edx,dword ptr [ebp-144]
 005574CB    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005574D0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005574D6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005574DC    mov         ecx,dword ptr [eax]
 005574DE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005574E1    lea         eax,[ebp-148]
 005574E7    push        eax
 005574E8    mov         eax,[0056E270];^gvar_00571EC0
 005574ED    movzx       eax,word ptr [eax+58]
 005574F1    mov         dword ptr [ebp-50],eax
 005574F4    mov         byte ptr [ebp-4C],0
 005574F8    lea         edx,[ebp-50]
 005574FB    xor         ecx,ecx
 005574FD    mov         eax,558DDC;'Seed Sector                                  = %X'
 00557502    call        0040D630
 00557507    mov         edx,dword ptr [ebp-148]
 0055750D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557512    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557518    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055751E    mov         ecx,dword ptr [eax]
 00557520    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557523    lea         eax,[ebp-14C]
 00557529    push        eax
 0055752A    mov         eax,[0056E270];^gvar_00571EC0
 0055752F    movzx       eax,word ptr [eax+5A]
 00557533    mov         dword ptr [ebp-50],eax
 00557536    mov         byte ptr [ebp-4C],0
 0055753A    lea         edx,[ebp-50]
 0055753D    xor         ecx,ecx
 0055753F    mov         eax,558E18;'Sector Skew                                  = %X'
 00557544    call        0040D630
 00557549    mov         edx,dword ptr [ebp-14C]
 0055754F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557554    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055755A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557560    mov         ecx,dword ptr [eax]
 00557562    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557565    lea         eax,[ebp-150]
 0055756B    push        eax
 0055756C    mov         eax,[0056E270];^gvar_00571EC0
 00557571    movzx       eax,word ptr [eax+5C]
 00557575    mov         dword ptr [ebp-50],eax
 00557578    mov         byte ptr [ebp-4C],0
 0055757C    lea         edx,[ebp-50]
 0055757F    xor         ecx,ecx
 00557581    mov         eax,558E54;'Wedge Skew                                   = %X'
 00557586    call        0040D630
 0055758B    mov         edx,dword ptr [ebp-150]
 00557591    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557596    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055759C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005575A2    mov         ecx,dword ptr [eax]
 005575A4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005575A7    lea         eax,[ebp-154]
 005575AD    push        eax
 005575AE    mov         eax,[0056E270];^gvar_00571EC0
 005575B3    mov         eax,dword ptr [eax+60]
 005575B6    mov         dword ptr [ebp-50],eax
 005575B9    mov         byte ptr [ebp-4C],0
 005575BD    lea         edx,[ebp-50]
 005575C0    xor         ecx,ecx
 005575C2    mov         eax,558E90;#10+Debugstop Code                               = %X'
 005575C7    call        0040D630
 005575CC    mov         edx,dword ptr [ebp-154]
 005575D2    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005575D7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005575DD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005575E3    mov         ecx,dword ptr [eax]
 005575E5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005575E8    lea         eax,[ebp-158]
 005575EE    push        eax
 005575EF    mov         eax,[0056E270];^gvar_00571EC0
 005575F4    mov         eax,dword ptr [eax+64]
 005575F7    mov         dword ptr [ebp-50],eax
 005575FA    mov         byte ptr [ebp-4C],0
 005575FE    lea         edx,[ebp-50]
 00557601    xor         ecx,ecx
 00557603    mov         eax,558ECC;'Debugstop Parameter                          = %X'
 00557608    call        0040D630
 0055760D    mov         edx,dword ptr [ebp-158]
 00557613    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557618    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055761E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557624    mov         ecx,dword ptr [eax]
 00557626    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557629    lea         eax,[ebp-15C]
 0055762F    push        eax
 00557630    lea         edx,[ebp-160]
 00557636    mov         eax,[0056E270];^gvar_00571EC0
 0055763B    mov         eax,dword ptr [eax+60]
 0055763E    call        004CCBF0
 00557643    mov         eax,dword ptr [ebp-160]
 00557649    mov         dword ptr [ebp-50],eax
 0055764C    mov         byte ptr [ebp-4C],0B
 00557650    lea         edx,[ebp-50]
 00557653    xor         ecx,ecx
 00557655    mov         eax,558F08;'DebugStop Code Description                   = %s'
 0055765A    call        0040D630
 0055765F    mov         edx,dword ptr [ebp-15C]
 00557665    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055766A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557670    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557676    mov         ecx,dword ptr [eax]
 00557678    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055767B    mov         eax,[0056E270];^gvar_00571EC0
 00557680    mov         eax,dword ptr [eax+22]
 00557683    and         eax,2000000
 00557688    cmp         eax,2000000
>0055768D    jne         0055769E
 0055768F    lea         eax,[ebp-0C]
 00557692    mov         edx,558318;'TRUE'
 00557697    call        @LStrLAsg
>0055769C    jmp         005576AB
 0055769E    lea         eax,[ebp-0C]
 005576A1    mov         edx,558328;'FALSE'
 005576A6    call        @LStrLAsg
 005576AB    lea         eax,[ebp-164]
 005576B1    push        eax
 005576B2    mov         eax,dword ptr [ebp-0C]
 005576B5    mov         dword ptr [ebp-50],eax
 005576B8    mov         byte ptr [ebp-4C],0B
 005576BC    lea         edx,[ebp-50]
 005576BF    xor         ecx,ecx
 005576C1    mov         eax,558F44;#10+Write Fault Occurred                         = %s'
 005576C6    call        0040D630
 005576CB    mov         edx,dword ptr [ebp-164]
 005576D1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005576D6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005576DC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005576E2    mov         ecx,dword ptr [eax]
 005576E4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005576E7    lea         eax,[ebp-168]
 005576ED    push        eax
 005576EE    mov         eax,[0056E270];^gvar_00571EC0
 005576F3    movzx       eax,word ptr [eax+70]
 005576F7    mov         dword ptr [ebp-50],eax
 005576FA    mov         byte ptr [ebp-4C],0
 005576FE    lea         edx,[ebp-50]
 00557701    xor         ecx,ecx
 00557703    mov         eax,558F80;'Write Fault LBA                              = %X'
 00557708    call        0040D630
 0055770D    mov         edx,dword ptr [ebp-168]
 00557713    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557718    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055771E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557724    mov         ecx,dword ptr [eax]
 00557726    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557729    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055772E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557734    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055773A    mov         edx,558FBC;#10+PST Information'
 0055773F    mov         ecx,dword ptr [eax]
 00557741    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557744    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557749    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055774F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557755    mov         edx,558FD8;'---------------'
 0055775A    mov         ecx,dword ptr [eax]
 0055775C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055775F    lea         eax,[ebp-16C]
 00557765    push        eax
 00557766    mov         eax,[0056E270];^gvar_00571EC0
 0055776B    movzx       eax,word ptr [eax+190]
 00557772    mov         dword ptr [ebp-50],eax
 00557775    mov         byte ptr [ebp-4C],0
 00557779    lea         edx,[ebp-50]
 0055777C    xor         ecx,ecx
 0055777E    mov         eax,558FF0;'PTM File Id                                  = %X'
 00557783    call        0040D630
 00557788    mov         edx,dword ptr [ebp-16C]
 0055778E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00557793    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557799    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055779F    mov         ecx,dword ptr [eax]
 005577A1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005577A4    lea         eax,[ebp-170]
 005577AA    push        eax
 005577AB    mov         eax,[0056E270];^gvar_00571EC0
 005577B0    movzx       eax,word ptr [eax+192]
 005577B7    mov         dword ptr [ebp-50],eax
 005577BA    mov         byte ptr [ebp-4C],0
 005577BE    lea         edx,[ebp-50]
 005577C1    xor         ecx,ecx
 005577C3    mov         eax,55902C;'PTM Test Id                                  = %X'
 005577C8    call        0040D630
 005577CD    mov         edx,dword ptr [ebp-170]
 005577D3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005577D8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005577DE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005577E4    mov         ecx,dword ptr [eax]
 005577E6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005577E9    lea         eax,[ebp-174]
 005577EF    push        eax
 005577F0    mov         eax,[0056E270];^gvar_00571EC0
 005577F5    movzx       eax,word ptr [eax+194]
 005577FC    mov         dword ptr [ebp-50],eax
 005577FF    mov         byte ptr [ebp-4C],0
 00557803    lea         edx,[ebp-50]
 00557806    xor         ecx,ecx
 00557808    mov         eax,559068;'Current VSC Command                          = %X'
 0055780D    call        0040D630
 00557812    mov         edx,dword ptr [ebp-174]
 00557818    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055781D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557823    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00557829    mov         ecx,dword ptr [eax]
 0055782B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055782E    lea         eax,[ebp-178]
 00557834    push        eax
 00557835    mov         eax,[0056E270];^gvar_00571EC0
 0055783A    movzx       eax,word ptr [eax+18]
 0055783E    mov         dword ptr [ebp-50],eax
 00557841    mov         byte ptr [ebp-4C],0
 00557845    lea         edx,[ebp-50]
 00557848    xor         ecx,ecx
 0055784A    mov         eax,5590A4;'Extended Error Code                          = %X'
 0055784F    call        0040D630
 00557854    mov         edx,dword ptr [ebp-178]
 0055785A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055785F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557865    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055786B    mov         ecx,dword ptr [eax]
 0055786D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00557870    lea         eax,[ebp-17C]
 00557876    push        eax
 00557877    lea         edx,[ebp-180]
 0055787D    mov         eax,[0056E270];^gvar_00571EC0
 00557882    mov         ax,word ptr [eax+18]
 00557886    call        004CCABC
 0055788B    mov         eax,dword ptr [ebp-180]
 00557891    mov         dword ptr [ebp-50],eax
 00557894    mov         byte ptr [ebp-4C],0B
 00557898    lea         edx,[ebp-50]
 0055789B    xor         ecx,ecx
 0055789D    mov         eax,5590E0;'Extended Error Description                   = %s'
 005578A2    call        0040D630
 005578A7    mov         edx,dword ptr [ebp-17C]
 005578AD    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005578B2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005578B8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005578BE    mov         ecx,dword ptr [eax]
 005578C0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005578C3    lea         edx,[ebp-38]
 005578C6    mov         eax,[0056E270];^gvar_00571EC0
 005578CB    add         eax,198
 005578D0    mov         ecx,18
 005578D5    call        Move
 005578DA    lea         eax,[ebp-0C]
 005578DD    call        @LStrClr
 005578E2    xor         eax,eax
 005578E4    mov         dword ptr [ebp-8],eax
 005578E7    push        dword ptr [ebp-0C]
 005578EA    lea         ecx,[ebp-184]
 005578F0    mov         eax,dword ptr [ebp-8]
 005578F3    movzx       eax,byte ptr [ebp+eax-38]
 005578F8    mov         edx,2
 005578FD    call        IntToHex
 00557902    push        dword ptr [ebp-184]
 00557908    push        55911C;' '
 0055790D    lea         eax,[ebp-0C]
 00557910    mov         edx,3
 00557915    call        @LStrCatN
 0055791A    inc         dword ptr [ebp-8]
 0055791D    cmp         dword ptr [ebp-8],18
>00557921    jne         005578E7
 00557923    lea         eax,[ebp-188]
 00557929    push        eax
 0055792A    mov         eax,dword ptr [ebp-0C]
 0055792D    mov         dword ptr [ebp-50],eax
 00557930    mov         byte ptr [ebp-4C],0B
 00557934    lea         edx,[ebp-50]
 00557937    xor         ecx,ecx
 00557939    mov         eax,559128;'PTM Status: %s'
 0055793E    call        0040D630
 00557943    mov         edx,dword ptr [ebp-188]
 00557949    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055794E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00557954    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055795A    mov         ecx,dword ptr [eax]
 0055795C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055795F    xor         eax,eax
 00557961    pop         edx
 00557962    pop         ecx
 00557963    pop         ecx
 00557964    mov         dword ptr fs:[eax],edx
 00557967    push        5579B9
 0055796C    lea         eax,[ebp-188]
 00557972    mov         edx,28
 00557977    call        @LStrArrayClr
 0055797C    lea         eax,[ebp-0D8]
 00557982    mov         edx,22
 00557987    call        @LStrArrayClr
 0055798C    lea         eax,[ebp-48]
 0055798F    call        @LStrClr
 00557994    lea         eax,[ebp-44]
 00557997    call        @LStrClr
 0055799C    lea         eax,[ebp-40]
 0055799F    mov         edx,2
 005579A4    call        @LStrArrayClr
 005579A9    lea         eax,[ebp-0C]
 005579AC    call        @LStrClr
 005579B1    ret
>005579B2    jmp         @HandleFinally
>005579B7    jmp         0055796C
 005579B9    mov         esp,ebp
 005579BB    pop         ebp
 005579BC    ret
end;*}

//00559138
{*procedure TfmHDD.miReadPreampRegsClick(?:?);
begin
 00559138    push        ebp
 00559139    mov         ebp,esp
 0055913B    add         esp,0FFFFFFE0
 0055913E    xor         ecx,ecx
 00559140    mov         dword ptr [ebp-18],ecx
 00559143    mov         dword ptr [ebp-14],ecx
 00559146    mov         dword ptr [ebp-0C],ecx
 00559149    mov         dword ptr [ebp-10],edx
 0055914C    mov         dword ptr [ebp-4],eax
 0055914F    xor         eax,eax
 00559151    push        ebp
 00559152    push        559293
 00559157    push        dword ptr fs:[eax]
 0055915A    mov         dword ptr fs:[eax],esp
 0055915D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559162    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559168    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055916E    mov         edx,5592A8;#10+Pre-Amp Register'
 00559173    mov         ecx,dword ptr [eax]
 00559175    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559178    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055917D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559183    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559189    mov         edx,5592C4;'----------------'
 0055918E    mov         ecx,dword ptr [eax]
 00559190    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559193    lea         eax,[ebp-0C]
 00559196    call        @LStrClr
 0055919B    xor         eax,eax
 0055919D    mov         dword ptr [ebp-8],eax
 005591A0    mov         eax,[0056E5A4];^gvar_0056DF04
 005591A5    mov         byte ptr [eax],0
>005591A8    jmp         00559223
 005591AA    call        004CED2C
 005591AF    push        2
 005591B1    push        0
 005591B3    mov         ax,word ptr [ebp-8]
 005591B7    push        eax
 005591B8    push        1
 005591BA    push        0
 005591BC    mov         cx,1
 005591C0    mov         dx,1
 005591C4    mov         ax,21
 005591C8    call        004CE5F4
 005591CD    call        004CEAB4
 005591D2    push        dword ptr [ebp-0C]
 005591D5    lea         ecx,[ebp-14]
 005591D8    mov         eax,[0056E344];^gvar_0059BF5C
 005591DD    movzx       eax,byte ptr [eax]
 005591E0    mov         edx,2
 005591E5    call        IntToHex
 005591EA    push        dword ptr [ebp-14]
 005591ED    push        5592E0;' '
 005591F2    lea         eax,[ebp-0C]
 005591F5    mov         edx,3
 005591FA    call        @LStrCatN
 005591FF    mov         eax,dword ptr [ebp-8]
 00559202    inc         eax
 00559203    and         eax,8000000F
>00559208    jns         0055920F
 0055920A    dec         eax
 0055920B    or          eax,0FFFFFFF0
 0055920E    inc         eax
 0055920F    test        eax,eax
>00559211    jne         00559220
 00559213    lea         eax,[ebp-0C]
 00559216    mov         edx,5592EC;#10
 0055921B    call        @LStrCat
 00559220    inc         dword ptr [ebp-8]
 00559223    cmp         dword ptr [ebp-8],100
>0055922A    jge         0055923A
 0055922C    mov         eax,[0056E5A4];^gvar_0056DF04
 00559231    cmp         byte ptr [eax],0
>00559234    je          005591AA
 0055923A    lea         eax,[ebp-18]
 0055923D    push        eax
 0055923E    mov         eax,dword ptr [ebp-0C]
 00559241    mov         dword ptr [ebp-20],eax
 00559244    mov         byte ptr [ebp-1C],0B
 00559248    lea         edx,[ebp-20]
 0055924B    xor         ecx,ecx
 0055924D    mov         eax,5592F8;'%s'
 00559252    call        0040D630
 00559257    mov         edx,dword ptr [ebp-18]
 0055925A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055925F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559265    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055926B    mov         ecx,dword ptr [eax]
 0055926D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559270    xor         eax,eax
 00559272    pop         edx
 00559273    pop         ecx
 00559274    pop         ecx
 00559275    mov         dword ptr fs:[eax],edx
 00559278    push        55929A
 0055927D    lea         eax,[ebp-18]
 00559280    mov         edx,2
 00559285    call        @LStrArrayClr
 0055928A    lea         eax,[ebp-0C]
 0055928D    call        @LStrClr
 00559292    ret
>00559293    jmp         @HandleFinally
>00559298    jmp         0055927D
 0055929A    mov         esp,ebp
 0055929C    pop         ebp
 0055929D    ret
end;*}

//005592FC
{*procedure TfmHDD.miRdChannelRegsClick(?:?);
begin
 005592FC    push        ebp
 005592FD    mov         ebp,esp
 005592FF    add         esp,0FFFFFFE0
 00559302    xor         ecx,ecx
 00559304    mov         dword ptr [ebp-18],ecx
 00559307    mov         dword ptr [ebp-14],ecx
 0055930A    mov         dword ptr [ebp-0C],ecx
 0055930D    mov         dword ptr [ebp-10],edx
 00559310    mov         dword ptr [ebp-4],eax
 00559313    xor         eax,eax
 00559315    push        ebp
 00559316    push        559457
 0055931B    push        dword ptr fs:[eax]
 0055931E    mov         dword ptr fs:[eax],esp
 00559321    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559326    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055932C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559332    mov         edx,55946C;#10+RD-Channel Register'
 00559337    mov         ecx,dword ptr [eax]
 00559339    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055933C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559341    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559347    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055934D    mov         edx,55948C;'-------------------'
 00559352    mov         ecx,dword ptr [eax]
 00559354    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559357    lea         eax,[ebp-0C]
 0055935A    call        @LStrClr
 0055935F    xor         eax,eax
 00559361    mov         dword ptr [ebp-8],eax
 00559364    mov         eax,[0056E5A4];^gvar_0056DF04
 00559369    mov         byte ptr [eax],0
>0055936C    jmp         005593E7
 0055936E    call        004CED2C
 00559373    push        1
 00559375    push        0
 00559377    mov         ax,word ptr [ebp-8]
 0055937B    push        eax
 0055937C    push        1
 0055937E    push        0
 00559380    mov         cx,1
 00559384    mov         dx,1
 00559388    mov         ax,21
 0055938C    call        004CE5F4
 00559391    call        004CEAB4
 00559396    push        dword ptr [ebp-0C]
 00559399    lea         ecx,[ebp-14]
 0055939C    mov         eax,[0056E344];^gvar_0059BF5C
 005593A1    movzx       eax,byte ptr [eax]
 005593A4    mov         edx,2
 005593A9    call        IntToHex
 005593AE    push        dword ptr [ebp-14]
 005593B1    push        5594A8;' '
 005593B6    lea         eax,[ebp-0C]
 005593B9    mov         edx,3
 005593BE    call        @LStrCatN
 005593C3    mov         eax,dword ptr [ebp-8]
 005593C6    inc         eax
 005593C7    and         eax,8000000F
>005593CC    jns         005593D3
 005593CE    dec         eax
 005593CF    or          eax,0FFFFFFF0
 005593D2    inc         eax
 005593D3    test        eax,eax
>005593D5    jne         005593E4
 005593D7    lea         eax,[ebp-0C]
 005593DA    mov         edx,5594B4;#10
 005593DF    call        @LStrCat
 005593E4    inc         dword ptr [ebp-8]
 005593E7    cmp         dword ptr [ebp-8],200
>005593EE    jge         005593FE
 005593F0    mov         eax,[0056E5A4];^gvar_0056DF04
 005593F5    cmp         byte ptr [eax],0
>005593F8    je          0055936E
 005593FE    lea         eax,[ebp-18]
 00559401    push        eax
 00559402    mov         eax,dword ptr [ebp-0C]
 00559405    mov         dword ptr [ebp-20],eax
 00559408    mov         byte ptr [ebp-1C],0B
 0055940C    lea         edx,[ebp-20]
 0055940F    xor         ecx,ecx
 00559411    mov         eax,5594C0;'%s'
 00559416    call        0040D630
 0055941B    mov         edx,dword ptr [ebp-18]
 0055941E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559423    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559429    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055942F    mov         ecx,dword ptr [eax]
 00559431    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559434    xor         eax,eax
 00559436    pop         edx
 00559437    pop         ecx
 00559438    pop         ecx
 00559439    mov         dword ptr fs:[eax],edx
 0055943C    push        55945E
 00559441    lea         eax,[ebp-18]
 00559444    mov         edx,2
 00559449    call        @LStrArrayClr
 0055944E    lea         eax,[ebp-0C]
 00559451    call        @LStrClr
 00559456    ret
>00559457    jmp         @HandleFinally
>0055945C    jmp         00559441
 0055945E    mov         esp,ebp
 00559460    pop         ebp
 00559461    ret
end;*}

//005594C4
{*procedure TfmHDD.miControllerRegsClick(?:?);
begin
 005594C4    push        ebp
 005594C5    mov         ebp,esp
 005594C7    add         esp,0FFFFFFE0
 005594CA    xor         ecx,ecx
 005594CC    mov         dword ptr [ebp-18],ecx
 005594CF    mov         dword ptr [ebp-14],ecx
 005594D2    mov         dword ptr [ebp-0C],ecx
 005594D5    mov         dword ptr [ebp-10],edx
 005594D8    mov         dword ptr [ebp-4],eax
 005594DB    xor         eax,eax
 005594DD    push        ebp
 005594DE    push        55961F
 005594E3    push        dword ptr fs:[eax]
 005594E6    mov         dword ptr fs:[eax],esp
 005594E9    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005594EE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005594F4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005594FA    mov         edx,559634;#10+Controller Register'
 005594FF    mov         ecx,dword ptr [eax]
 00559501    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559504    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559509    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055950F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559515    mov         edx,559654;'-------------------'
 0055951A    mov         ecx,dword ptr [eax]
 0055951C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055951F    lea         eax,[ebp-0C]
 00559522    call        @LStrClr
 00559527    xor         eax,eax
 00559529    mov         dword ptr [ebp-8],eax
 0055952C    mov         eax,[0056E5A4];^gvar_0056DF04
 00559531    mov         byte ptr [eax],0
>00559534    jmp         005595AF
 00559536    call        004CED2C
 0055953B    push        3
 0055953D    push        0
 0055953F    mov         ax,word ptr [ebp-8]
 00559543    push        eax
 00559544    push        1
 00559546    push        0
 00559548    mov         cx,1
 0055954C    mov         dx,1
 00559550    mov         ax,21
 00559554    call        004CE5F4
 00559559    call        004CEAB4
 0055955E    push        dword ptr [ebp-0C]
 00559561    lea         ecx,[ebp-14]
 00559564    mov         eax,[0056E344];^gvar_0059BF5C
 00559569    movzx       eax,byte ptr [eax]
 0055956C    mov         edx,2
 00559571    call        IntToHex
 00559576    push        dword ptr [ebp-14]
 00559579    push        559670;' '
 0055957E    lea         eax,[ebp-0C]
 00559581    mov         edx,3
 00559586    call        @LStrCatN
 0055958B    mov         eax,dword ptr [ebp-8]
 0055958E    inc         eax
 0055958F    and         eax,8000000F
>00559594    jns         0055959B
 00559596    dec         eax
 00559597    or          eax,0FFFFFFF0
 0055959A    inc         eax
 0055959B    test        eax,eax
>0055959D    jne         005595AC
 0055959F    lea         eax,[ebp-0C]
 005595A2    mov         edx,55967C;#10
 005595A7    call        @LStrCat
 005595AC    inc         dword ptr [ebp-8]
 005595AF    cmp         dword ptr [ebp-8],200
>005595B6    jge         005595C6
 005595B8    mov         eax,[0056E5A4];^gvar_0056DF04
 005595BD    cmp         byte ptr [eax],0
>005595C0    je          00559536
 005595C6    lea         eax,[ebp-18]
 005595C9    push        eax
 005595CA    mov         eax,dword ptr [ebp-0C]
 005595CD    mov         dword ptr [ebp-20],eax
 005595D0    mov         byte ptr [ebp-1C],0B
 005595D4    lea         edx,[ebp-20]
 005595D7    xor         ecx,ecx
 005595D9    mov         eax,559688;'%s'
 005595DE    call        0040D630
 005595E3    mov         edx,dword ptr [ebp-18]
 005595E6    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005595EB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005595F1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005595F7    mov         ecx,dword ptr [eax]
 005595F9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005595FC    xor         eax,eax
 005595FE    pop         edx
 005595FF    pop         ecx
 00559600    pop         ecx
 00559601    mov         dword ptr fs:[eax],edx
 00559604    push        559626
 00559609    lea         eax,[ebp-18]
 0055960C    mov         edx,2
 00559611    call        @LStrArrayClr
 00559616    lea         eax,[ebp-0C]
 00559619    call        @LStrClr
 0055961E    ret
>0055961F    jmp         @HandleFinally
>00559624    jmp         00559609
 00559626    mov         esp,ebp
 00559628    pop         ebp
 00559629    ret
end;*}

//0055968C
procedure TfmHDD.miClearSoftErrorCounterClick(Sender:TObject);
begin
{*
 0055968C    push        ebp
 0055968D    mov         ebp,esp
 0055968F    add         esp,0FFFFFFF4
 00559692    mov         dword ptr [ebp-0C],edx
 00559695    mov         dword ptr [ebp-4],eax
 00559698    mov         dl,1
 0055969A    mov         eax,[0041DE14];TMemoryStream
 0055969F    call        TObject.Create;TMemoryStream.Create
 005596A4    mov         dword ptr [ebp-8],eax
 005596A7    xor         eax,eax
 005596A9    push        ebp
 005596AA    push        559718
 005596AF    push        dword ptr fs:[eax]
 005596B2    mov         dword ptr fs:[eax],esp
 005596B5    mov         edx,dword ptr [ebp-8]
 005596B8    mov         ax,0E6
 005596BC    call        005095B8
 005596C1    test        al,al
>005596C3    je          005596F3
 005596C5    mov         eax,dword ptr [ebp-8]
 005596C8    call        00553444
 005596CD    push        10
 005596CF    call        user32.GetKeyState
 005596D4    test        ax,ax
>005596D7    jge         005596E7
 005596D9    mov         edx,dword ptr [ebp-8]
 005596DC    mov         ax,0E6
 005596E0    call        0050980C
>005596E5    jmp         005596F3
 005596E7    mov         edx,dword ptr [ebp-8]
 005596EA    mov         ax,0E6
 005596EE    call        004CF728
 005596F3    call        004CEB6C
 005596F8    mov         eax,55972C;'Clear IBI Soft Error Counter - '
 005596FD    call        00544F6C
 00559702    xor         eax,eax
 00559704    pop         edx
 00559705    pop         ecx
 00559706    pop         ecx
 00559707    mov         dword ptr fs:[eax],edx
 0055970A    push        55971F
 0055970F    mov         eax,dword ptr [ebp-8]
 00559712    call        TObject.Free
 00559717    ret
>00559718    jmp         @HandleFinally
>0055971D    jmp         0055970F
 0055971F    mov         esp,ebp
 00559721    pop         ebp
 00559722    ret
*}
end;

//0055974C
{*procedure TfmHDD.miSsClearScriptClick(?:?);
begin
 0055974C    push        ebp
 0055974D    mov         ebp,esp
 0055974F    add         esp,0FFFFFFF8
 00559752    mov         dword ptr [ebp-8],edx
 00559755    mov         dword ptr [ebp-4],eax
 00559758    call        00536ED0
 0055975D    mov         eax,559774;'Clear IBI Script - '
 00559762    call        00544F6C
 00559767    pop         ecx
 00559768    pop         ecx
 00559769    pop         ebp
 0055976A    ret
end;*}

//00559788
{*procedure TfmHDD.miReadSocIdClick(?:?);
begin
 00559788    push        ebp
 00559789    mov         ebp,esp
 0055978B    add         esp,0FFFFFFD4
 0055978E    xor         ecx,ecx
 00559790    mov         dword ptr [ebp-28],ecx
 00559793    mov         dword ptr [ebp-2C],ecx
 00559796    mov         dword ptr [ebp-10],ecx
 00559799    mov         dword ptr [ebp-24],ecx
 0055979C    mov         dword ptr [ebp-0C],edx
 0055979F    mov         dword ptr [ebp-4],eax
 005597A2    xor         eax,eax
 005597A4    push        ebp
 005597A5    push        55992A
 005597AA    push        dword ptr fs:[eax]
 005597AD    mov         dword ptr fs:[eax],esp
 005597B0    mov         eax,[0056E344];^gvar_0059BF5C
 005597B5    xor         ecx,ecx
 005597B7    mov         edx,2
 005597BC    call        @FillChar
 005597C1    mov         word ptr [ebp-6],0
 005597C7    mov         word ptr [ebp-8],0
 005597CD    call        004CED2C
 005597D2    push        0A81E
 005597D7    push        1000
 005597DC    push        0
 005597DE    push        2
 005597E0    push        0
 005597E2    mov         cx,2
 005597E6    mov         dx,3
 005597EA    mov         ax,21
 005597EE    call        004CE5F4
 005597F3    mov         eax,[0056E3F8];^gvar_0059BF4C
 005597F8    cmp         byte ptr [eax],0
>005597FB    jne         00559818
 005597FD    mov         eax,[0056E5A4];^gvar_0056DF04
 00559802    cmp         byte ptr [eax],0
>00559805    jne         00559818
 00559807    call        004CEAB4
 0055980C    mov         eax,[0056E344];^gvar_0059BF5C
 00559811    mov         ax,word ptr [eax]
 00559814    mov         word ptr [ebp-6],ax
 00559818    push        0A81E
 0055981D    push        1C00
 00559822    push        0
 00559824    push        2
 00559826    push        0
 00559828    mov         cx,2
 0055982C    mov         dx,3
 00559830    mov         ax,21
 00559834    call        004CE5F4
 00559839    mov         eax,[0056E3F8];^gvar_0059BF4C
 0055983E    cmp         byte ptr [eax],0
>00559841    jne         0055985E
 00559843    mov         eax,[0056E5A4];^gvar_0056DF04
 00559848    cmp         byte ptr [eax],0
>0055984B    jne         0055985E
 0055984D    call        004CEAB4
 00559852    mov         eax,[0056E344];^gvar_0059BF5C
 00559857    mov         ax,word ptr [eax]
 0055985A    mov         word ptr [ebp-8],ax
 0055985E    cmp         word ptr [ebp-6],0
>00559863    je          005598B7
 00559865    lea         eax,[ebp-10]
 00559868    push        eax
 00559869    movzx       eax,word ptr [ebp-6]
 0055986D    mov         dword ptr [ebp-20],eax
 00559870    mov         byte ptr [ebp-1C],0
 00559874    lea         edx,[ebp-24]
 00559877    mov         ax,word ptr [ebp-6]
 0055987B    call        0054B194
 00559880    mov         eax,dword ptr [ebp-24]
 00559883    mov         dword ptr [ebp-18],eax
 00559886    mov         byte ptr [ebp-14],0B
 0055988A    lea         edx,[ebp-20]
 0055988D    mov         ecx,1
 00559892    mov         eax,559940;#10+System On Chip (SOC) ID = %4.4X: %s'
 00559897    call        0040D630
 0055989C    mov         edx,dword ptr [ebp-10]
 0055989F    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005598A4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005598AA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 005598B0    mov         ecx,dword ptr [eax]
 005598B2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>005598B5    jmp         00559907
 005598B7    lea         eax,[ebp-28]
 005598BA    push        eax
 005598BB    movzx       eax,word ptr [ebp-8]
 005598BF    mov         dword ptr [ebp-20],eax
 005598C2    mov         byte ptr [ebp-1C],0
 005598C6    lea         edx,[ebp-2C]
 005598C9    mov         ax,word ptr [ebp-8]
 005598CD    call        0054B194
 005598D2    mov         eax,dword ptr [ebp-2C]
 005598D5    mov         dword ptr [ebp-18],eax
 005598D8    mov         byte ptr [ebp-14],0B
 005598DC    lea         edx,[ebp-20]
 005598DF    mov         ecx,1
 005598E4    mov         eax,559940;#10+System On Chip (SOC) ID = %4.4X: %s'
 005598E9    call        0040D630
 005598EE    mov         edx,dword ptr [ebp-28]
 005598F1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 005598F6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 005598FC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559902    mov         ecx,dword ptr [eax]
 00559904    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559907    xor         eax,eax
 00559909    pop         edx
 0055990A    pop         ecx
 0055990B    pop         ecx
 0055990C    mov         dword ptr fs:[eax],edx
 0055990F    push        559931
 00559914    lea         eax,[ebp-2C]
 00559917    mov         edx,3
 0055991C    call        @LStrArrayClr
 00559921    lea         eax,[ebp-10]
 00559924    call        @LStrClr
 00559929    ret
>0055992A    jmp         @HandleFinally
>0055992F    jmp         00559914
 00559931    mov         esp,ebp
 00559933    pop         ebp
 00559934    ret
end;*}

//00559968
{*procedure TfmHDD.ToolButton26Click(?:?);
begin
 00559968    push        ebp
 00559969    mov         ebp,esp
 0055996B    add         esp,0FFFFFFF8
 0055996E    mov         dword ptr [ebp-8],edx
 00559971    mov         dword ptr [ebp-4],eax
 00559974    push        0
 00559976    mov         cx,word ptr ds:[5599A8];0x3 gvar_005599A8
 0055997D    xor         edx,edx
 0055997F    mov         eax,5599B4;'Rebuild PList from Log!'+#10+Are You sure?'
 00559984    call        0043F788
 00559989    cmp         eax,6
>0055998C    jne         005599A2
 0055998E    xor         edx,edx
 00559990    mov         eax,dword ptr [ebp-4]
 00559993    call        TfmHDD.miClrIBIAbortCodeClick
 00559998    xor         edx,edx
 0055999A    mov         eax,dword ptr [ebp-4]
 0055999D    call        TfmHDD.miRebuildPListClick
 005599A2    pop         ecx
 005599A3    pop         ecx
 005599A4    pop         ebp
 005599A5    ret
end;*}

//005599DC
{*procedure TfmHDD.miSSClearScript2Click(?:?);
begin
 005599DC    push        ebp
 005599DD    mov         ebp,esp
 005599DF    add         esp,0FFFFFFF8
 005599E2    mov         dword ptr [ebp-8],edx
 005599E5    mov         dword ptr [ebp-4],eax
 005599E8    call        00537144
 005599ED    pop         ecx
 005599EE    pop         ecx
 005599EF    pop         ebp
 005599F0    ret
end;*}

//005599F4
{*procedure TfmHDD.ViewCurrent1Click(?:?);
begin
 005599F4    push        ebp
 005599F5    mov         ebp,esp
 005599F7    add         esp,0FFFFFFE8
 005599FA    xor         ecx,ecx
 005599FC    mov         dword ptr [ebp-10],ecx
 005599FF    mov         dword ptr [ebp-0C],edx
 00559A02    mov         dword ptr [ebp-4],eax
 00559A05    xor         eax,eax
 00559A07    push        ebp
 00559A08    push        559A81
 00559A0D    push        dword ptr fs:[eax]
 00559A10    mov         dword ptr fs:[eax],esp
 00559A13    mov         eax,[0056E5A4];^gvar_0056DF04
 00559A18    mov         byte ptr [eax],0
 00559A1B    call        004CF538
 00559A20    mov         byte ptr [ebp-5],al
 00559A23    cmp         byte ptr [ebp-5],0FF
>00559A27    je          00559A6B
 00559A29    mov         eax,[0056E5A4];^gvar_0056DF04
 00559A2E    cmp         byte ptr [eax],0
>00559A31    jne         00559A6B
 00559A33    lea         eax,[ebp-10]
 00559A36    push        eax
 00559A37    xor         eax,eax
 00559A39    mov         al,byte ptr [ebp-5]
 00559A3C    mov         dword ptr [ebp-18],eax
 00559A3F    mov         byte ptr [ebp-14],0
 00559A43    lea         edx,[ebp-18]
 00559A46    xor         ecx,ecx
 00559A48    mov         eax,559A94;#10+Drive Format is set to %d'
 00559A4D    call        0040D630
 00559A52    mov         edx,dword ptr [ebp-10]
 00559A55    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559A5A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559A60    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559A66    mov         ecx,dword ptr [eax]
 00559A68    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559A6B    xor         eax,eax
 00559A6D    pop         edx
 00559A6E    pop         ecx
 00559A6F    pop         ecx
 00559A70    mov         dword ptr fs:[eax],edx
 00559A73    push        559A88
 00559A78    lea         eax,[ebp-10]
 00559A7B    call        @LStrClr
 00559A80    ret
>00559A81    jmp         @HandleFinally
>00559A86    jmp         00559A78
 00559A88    mov         esp,ebp
 00559A8A    pop         ebp
 00559A8B    ret
end;*}

//00559AB0
procedure TfmHDD.miLoadTransientOverlayClick(Sender:TObject);
begin
{*
 00559AB0    push        ebp
 00559AB1    mov         ebp,esp
 00559AB3    add         esp,0FFFFFFF8
 00559AB6    mov         dword ptr [ebp-8],edx
 00559AB9    mov         dword ptr [ebp-4],eax
 00559ABC    mov         eax,[0056E5A4];^gvar_0056DF04
 00559AC1    mov         byte ptr [eax],0
 00559AC4    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559AC9    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00559ACF    add         eax,60;TOpenDialog.Filter:String
 00559AD2    mov         edx,559B18;'Overlay|*1B.rpm|All|*.*'
 00559AD7    call        @LStrAsg
 00559ADC    xor         ecx,ecx
 00559ADE    xor         edx,edx
 00559AE0    mov         ax,2
 00559AE4    call        00511AE8
 00559AE9    call        004CEB6C
 00559AEE    mov         eax,559B38;'Load Transient Overlay to RAM - '
 00559AF3    call        00544F6C
 00559AF8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559AFD    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 00559B03    add         eax,60;TOpenDialog.Filter:String
 00559B06    call        @LStrClr
 00559B0B    pop         ecx
 00559B0C    pop         ecx
 00559B0D    pop         ebp
 00559B0E    ret
*}
end;

//00559B5C
procedure TfmHDD.FileManagerDefragment1Click(Sender:TObject);
begin
{*
 00559B5C    push        ebp
 00559B5D    mov         ebp,esp
 00559B5F    add         esp,0FFFFFFF8
 00559B62    mov         dword ptr [ebp-8],edx
 00559B65    mov         dword ptr [ebp-4],eax
 00559B68    call        004CFD10
 00559B6D    call        004CEB6C
 00559B72    mov         eax,559B88;'File Manager: Defragment - '
 00559B77    call        00544F6C
 00559B7C    pop         ecx
 00559B7D    pop         ecx
 00559B7E    pop         ebp
 00559B7F    ret
*}
end;

//00559BA4
procedure TfmHDD.miValidateFileSystemClick(Sender:TObject);
begin
{*
 00559BA4    push        ebp
 00559BA5    mov         ebp,esp
 00559BA7    add         esp,0FFFFFFF8
 00559BAA    mov         dword ptr [ebp-8],edx
 00559BAD    mov         dword ptr [ebp-4],eax
 00559BB0    call        004CFDEC
 00559BB5    call        004CEB6C
 00559BBA    mov         eax,559BD0;'File Manager: Validate File System - '
 00559BBF    call        00544F6C
 00559BC4    pop         ecx
 00559BC5    pop         ecx
 00559BC6    pop         ebp
 00559BC7    ret
*}
end;

//00559BF8
procedure TfmHDD.miEditSAListClick(Sender:TObject);
begin
{*
 00559BF8    push        ebp
 00559BF9    mov         ebp,esp
 00559BFB    add         esp,0FFFFFFF8
 00559BFE    mov         dword ptr [ebp-8],edx
 00559C01    mov         dword ptr [ebp-4],eax
 00559C04    mov         ecx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00559C0A    mov         dx,35
 00559C0E    mov         eax,[004F80C0];TfmDefectsEditor
 00559C13    call        004F84F0
 00559C18    pop         ecx
 00559C19    pop         ecx
 00559C1A    pop         ebp
 00559C1B    ret
*}
end;

//00559C1C
procedure TfmHDD.ToolButton6Click(Sender:TObject);
begin
{*
 00559C1C    push        ebp
 00559C1D    mov         ebp,esp
 00559C1F    add         esp,0FFFFFFF8
 00559C22    mov         dword ptr [ebp-8],edx
 00559C25    mov         dword ptr [ebp-4],eax
 00559C28    push        0
 00559C2A    mov         cx,word ptr ds:[559C50];0x3 gvar_00559C50
 00559C31    xor         edx,edx
 00559C33    mov         eax,559C5C;'Format Unit !'+#10+Are You sure?'
 00559C38    call        0043F788
 00559C3D    cmp         eax,6
>00559C40    jne         00559C4C
 00559C42    xor         edx,edx
 00559C44    mov         eax,dword ptr [ebp-4]
 00559C47    call        TfmHDD.miWithPList1Click
 00559C4C    pop         ecx
 00559C4D    pop         ecx
 00559C4E    pop         ebp
 00559C4F    ret
*}
end;

//00559C78
procedure TfmHDD.miRegionMapEditorClick(Sender:TObject);
begin
{*
 00559C78    push        ebp
 00559C79    mov         ebp,esp
 00559C7B    add         esp,0FFFFFFF8
 00559C7E    mov         dword ptr [ebp-8],edx
 00559C81    mov         dword ptr [ebp-4],eax
 00559C84    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 00559C8A    mov         eax,[004FCCE0];TfmRegionMap
 00559C8F    call        004FD0A4
 00559C94    pop         ecx
 00559C95    pop         ecx
 00559C96    pop         ebp
 00559C97    ret
*}
end;

//00559C98
{*procedure TfmHDD.miWaterMarkClick(?:?);
begin
 00559C98    push        ebp
 00559C99    mov         ebp,esp
 00559C9B    add         esp,0FFFFFFF8
 00559C9E    mov         dword ptr [ebp-8],edx
 00559CA1    mov         dword ptr [ebp-4],eax
 00559CA4    call        0050CEEC
 00559CA9    pop         ecx
 00559CAA    pop         ecx
 00559CAB    pop         ebp
 00559CAC    ret
end;*}

//00559CB0
{*procedure TfmHDD.miReinitARCOClick(?:?);
begin
 00559CB0    push        ebp
 00559CB1    mov         ebp,esp
 00559CB3    add         esp,0FFFFFFF8
 00559CB6    mov         dword ptr [ebp-8],edx
 00559CB9    mov         dword ptr [ebp-4],eax
 00559CBC    mov         ax,40
 00559CC0    call        004CFA34
 00559CC5    call        004CEB6C
 00559CCA    mov         eax,559CE0;'Reinit ARCO - '
 00559CCF    call        00544F6C
 00559CD4    pop         ecx
 00559CD5    pop         ecx
 00559CD6    pop         ebp
 00559CD7    ret
end;*}

//00559CF0
{*procedure sub_00559CF0(?:?; ?:?);
begin
 00559CF0    push        ebp
 00559CF1    mov         ebp,esp
 00559CF3    add         esp,0FFFFFFF4
 00559CF6    xor         ecx,ecx
 00559CF8    mov         dword ptr [ebp-0C],ecx
 00559CFB    mov         dword ptr [ebp-8],edx
 00559CFE    mov         word ptr [ebp-2],ax
 00559D02    xor         eax,eax
 00559D04    push        ebp
 00559D05    push        559DA0
 00559D0A    push        dword ptr fs:[eax]
 00559D0D    mov         dword ptr fs:[eax],esp
 00559D10    mov         ax,word ptr [ebp-2]
 00559D14    sub         ax,1
>00559D18    jb          00559D28
>00559D1A    je          00559D37
 00559D1C    dec         ax
>00559D1F    je          00559D46
 00559D21    dec         ax
>00559D24    je          00559D55
>00559D26    jmp         00559D64
 00559D28    mov         eax,dword ptr [ebp-8]
 00559D2B    mov         edx,559DB4;'Data DAC Table   '
 00559D30    call        @LStrAsg
>00559D35    jmp         00559D8A
 00559D37    mov         eax,dword ptr [ebp-8]
 00559D3A    mov         edx,559DD0;'Preamp DAC Table '
 00559D3F    call        @LStrAsg
>00559D44    jmp         00559D8A
 00559D46    mov         eax,dword ptr [ebp-8]
 00559D49    mov         edx,559DEC;'MRJog Table      '
 00559D4E    call        @LStrAsg
>00559D53    jmp         00559D8A
 00559D55    mov         eax,dword ptr [ebp-8]
 00559D58    mov         edx,559E08;'TPI  Table       '
 00559D5D    call        @LStrAsg
>00559D62    jmp         00559D8A
 00559D64    push        559E24;'Table '
 00559D69    lea         edx,[ebp-0C]
 00559D6C    movzx       eax,word ptr [ebp-2]
 00559D70    call        IntToStr
 00559D75    push        dword ptr [ebp-0C]
 00559D78    push        559E34;'         '
 00559D7D    mov         eax,dword ptr [ebp-8]
 00559D80    mov         edx,3
 00559D85    call        @LStrCatN
 00559D8A    xor         eax,eax
 00559D8C    pop         edx
 00559D8D    pop         ecx
 00559D8E    pop         ecx
 00559D8F    mov         dword ptr fs:[eax],edx
 00559D92    push        559DA7
 00559D97    lea         eax,[ebp-0C]
 00559D9A    call        @LStrClr
 00559D9F    ret
>00559DA0    jmp         @HandleFinally
>00559DA5    jmp         00559D97
 00559DA7    mov         esp,ebp
 00559DA9    pop         ebp
 00559DAA    ret
end;*}

//00559E40
{*procedure sub_00559E40(?:TMemoryStream; ?:?);
begin
 00559E40    push        ebp
 00559E41    mov         ebp,esp
 00559E43    add         esp,0FFFFFFF4
 00559E46    push        ebx
 00559E47    mov         dword ptr [ebp-4],eax
 00559E4A    xor         ecx,ecx
 00559E4C    xor         edx,edx
 00559E4E    mov         eax,dword ptr [ebp-4]
 00559E51    mov         ebx,dword ptr [eax]
 00559E53    call        dword ptr [ebx+14]
 00559E56    mov         eax,dword ptr [ebp-4]
 00559E59    call        004CE56C
 00559E5E    mov         dword ptr [ebp-8],eax
 00559E61    cmp         dword ptr [ebp-8],4C594F52
>00559E68    jne         00559E7B
 00559E6A    xor         ecx,ecx
 00559E6C    mov         edx,1C
 00559E71    mov         eax,dword ptr [ebp-4]
 00559E74    mov         ebx,dword ptr [eax]
 00559E76    call        dword ptr [ebx+14]
>00559E79    jmp         00559E8A
 00559E7B    xor         ecx,ecx
 00559E7D    mov         edx,0A
 00559E82    mov         eax,dword ptr [ebp-4]
 00559E85    mov         ebx,dword ptr [eax]
 00559E87    call        dword ptr [ebx+14]
 00559E8A    mov         eax,dword ptr [ebp-4]
 00559E8D    call        004CE548
 00559E92    mov         edx,dword ptr [ebp+8]
 00559E95    mov         word ptr [edx-40],ax
 00559E99    mov         eax,dword ptr [ebp-4]
 00559E9C    call        004CE548
 00559EA1    mov         edx,dword ptr [ebp+8]
 00559EA4    mov         word ptr [edx-3C],ax
 00559EA8    mov         eax,dword ptr [ebp-4]
 00559EAB    call        004CE548
 00559EB0    mov         edx,dword ptr [ebp+8]
 00559EB3    mov         word ptr [edx-38],ax
 00559EB7    mov         eax,dword ptr [ebp-4]
 00559EBA    call        004CE548
 00559EBF    mov         edx,dword ptr [ebp+8]
 00559EC2    mov         word ptr [edx-34],ax
 00559EC6    mov         eax,dword ptr [ebp-4]
 00559EC9    call        004CE548
 00559ECE    mov         edx,dword ptr [ebp+8]
 00559ED1    mov         word ptr [edx-30],ax
 00559ED5    mov         eax,dword ptr [ebp+8]
 00559ED8    movzx       eax,word ptr [eax-3C]
 00559EDC    mov         edx,dword ptr [ebp+8]
 00559EDF    movzx       edx,word ptr [edx-40]
 00559EE3    sub         eax,edx
 00559EE5    mov         ecx,6
 00559EEA    cdq
 00559EEB    idiv        eax,ecx
 00559EED    test        edx,edx
>00559EEF    jle         00559EFA
 00559EF1    mov         dword ptr [ebp-0C],8
>00559EF8    jmp         00559F01
 00559EFA    mov         dword ptr [ebp-0C],6
 00559F01    mov         eax,dword ptr [ebp+8]
 00559F04    movzx       eax,word ptr [eax-3C]
 00559F08    mov         edx,dword ptr [ebp+8]
 00559F0B    movzx       edx,word ptr [edx-40]
 00559F0F    sub         eax,edx
 00559F11    cdq
 00559F12    idiv        eax,dword ptr [ebp-0C]
 00559F15    mov         edx,dword ptr [ebp+8]
 00559F18    mov         word ptr [edx-3E],ax
 00559F1C    mov         eax,dword ptr [ebp+8]
 00559F1F    movzx       eax,word ptr [eax-38]
 00559F23    mov         edx,dword ptr [ebp+8]
 00559F26    movzx       edx,word ptr [edx-3C]
 00559F2A    sub         eax,edx
 00559F2C    mov         ecx,6
 00559F31    cdq
 00559F32    idiv        eax,ecx
 00559F34    test        edx,edx
>00559F36    jle         00559F41
 00559F38    mov         dword ptr [ebp-0C],8
>00559F3F    jmp         00559F48
 00559F41    mov         dword ptr [ebp-0C],6
 00559F48    mov         eax,dword ptr [ebp+8]
 00559F4B    movzx       eax,word ptr [eax-38]
 00559F4F    mov         edx,dword ptr [ebp+8]
 00559F52    movzx       edx,word ptr [edx-3C]
 00559F56    sub         eax,edx
 00559F58    cdq
 00559F59    idiv        eax,dword ptr [ebp-0C]
 00559F5C    mov         edx,dword ptr [ebp+8]
 00559F5F    mov         word ptr [edx-3A],ax
 00559F63    mov         eax,dword ptr [ebp+8]
 00559F66    mov         word ptr [eax-36],2
 00559F6C    mov         eax,dword ptr [ebp+8]
 00559F6F    mov         word ptr [eax-32],2
 00559F75    mov         eax,dword ptr [ebp+8]
 00559F78    mov         word ptr [eax-2E],2
 00559F7E    pop         ebx
 00559F7F    mov         esp,ebp
 00559F81    pop         ebp
 00559F82    ret
end;*}

//00559F84
procedure TfmHDD.miShowID47Click(Sender:TObject);
begin
{*
 00559F84    push        ebp
 00559F85    mov         ebp,esp
 00559F87    add         esp,0FFFFFF84
 00559F8A    push        ebx
 00559F8B    xor         ecx,ecx
 00559F8D    mov         dword ptr [ebp-7C],ecx
 00559F90    mov         dword ptr [ebp-70],ecx
 00559F93    mov         dword ptr [ebp-74],ecx
 00559F96    mov         dword ptr [ebp-78],ecx
 00559F99    mov         dword ptr [ebp-5C],ecx
 00559F9C    mov         dword ptr [ebp-6C],edx
 00559F9F    mov         dword ptr [ebp-44],eax
 00559FA2    xor         eax,eax
 00559FA4    push        ebp
 00559FA5    push        55A1FB
 00559FAA    push        dword ptr fs:[eax]
 00559FAD    mov         dword ptr fs:[eax],esp
 00559FB0    mov         dl,1
 00559FB2    mov         eax,[0041DE14];TMemoryStream
 00559FB7    call        TObject.Create;TMemoryStream.Create
 00559FBC    mov         dword ptr [ebp-4C],eax
 00559FBF    xor         eax,eax
 00559FC1    push        ebp
 00559FC2    push        55A1D1
 00559FC7    push        dword ptr fs:[eax]
 00559FCA    mov         dword ptr fs:[eax],esp
 00559FCD    mov         edx,dword ptr [ebp-4C]
 00559FD0    mov         ax,47
 00559FD4    call        005095B8
 00559FD9    test        al,al
>00559FDB    je          0055A1BB
 00559FE1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 00559FE6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 00559FEC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 00559FF2    mov         edx,55A210;#13+ID47 Data: '
 00559FF7    mov         ecx,dword ptr [eax]
 00559FF9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00559FFC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A001    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A007    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A00D    mov         edx,55A228;'-----------'
 0055A012    mov         ecx,dword ptr [eax]
 0055A014    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A017    push        ebp
 0055A018    mov         eax,dword ptr [ebp-4C]
 0055A01B    call        00559E40
 0055A020    pop         ecx
 0055A021    xor         eax,eax
 0055A023    mov         dword ptr [ebp-58],eax
 0055A026    mov         eax,dword ptr [ebp-58]
 0055A029    cmp         word ptr [ebp+eax*4-40],0
>0055A02F    jbe         0055A196
 0055A035    push        55A23C;#13
 0055A03A    push        ebp
 0055A03B    lea         edx,[ebp-74]
 0055A03E    mov         ax,word ptr [ebp-58]
 0055A042    call        00559CF0
 0055A047    pop         ecx
 0055A048    push        dword ptr [ebp-74]
 0055A04B    push        55A248;', Offset: '
 0055A050    lea         ecx,[ebp-78]
 0055A053    mov         eax,dword ptr [ebp-58]
 0055A056    movzx       eax,word ptr [ebp+eax*4-40]
 0055A05B    mov         edx,4
 0055A060    call        IntToHex
 0055A065    push        dword ptr [ebp-78]
 0055A068    lea         eax,[ebp-70]
 0055A06B    mov         edx,4
 0055A070    call        @LStrCatN
 0055A075    mov         edx,dword ptr [ebp-70]
 0055A078    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A07D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A083    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A089    mov         ecx,dword ptr [eax]
 0055A08B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A08E    mov         eax,dword ptr [ebp-58]
 0055A091    movzx       edx,word ptr [ebp+eax*4-40]
 0055A096    xor         ecx,ecx
 0055A098    mov         eax,dword ptr [ebp-4C]
 0055A09B    mov         ebx,dword ptr [eax]
 0055A09D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055A0A0    mov         eax,dword ptr [ebp-58]
 0055A0A3    cmp         word ptr [ebp+eax*4-3C],0
>0055A0A9    jbe         0055A0DB
 0055A0AB    mov         eax,dword ptr [ebp-58]
 0055A0AE    movzx       eax,word ptr [ebp+eax*4-3C]
 0055A0B3    mov         edx,dword ptr [ebp-58]
 0055A0B6    movzx       edx,word ptr [ebp+edx*4-40]
 0055A0BB    sub         eax,edx
 0055A0BD    mov         ecx,6
 0055A0C2    cdq
 0055A0C3    idiv        eax,ecx
 0055A0C5    test        edx,edx
>0055A0C7    jle         0055A0D2
 0055A0C9    mov         dword ptr [ebp-50],8
>0055A0D0    jmp         0055A101
 0055A0D2    mov         dword ptr [ebp-50],6
>0055A0D9    jmp         0055A101
 0055A0DB    movzx       eax,word ptr [ebp-38]
 0055A0DF    movzx       edx,word ptr [ebp-3C]
 0055A0E3    sub         eax,edx
 0055A0E5    mov         ecx,6
 0055A0EA    cdq
 0055A0EB    idiv        eax,ecx
 0055A0ED    test        edx,edx
>0055A0EF    jle         0055A0FA
 0055A0F1    mov         dword ptr [ebp-50],8
>0055A0F8    jmp         0055A101
 0055A0FA    mov         dword ptr [ebp-50],6
 0055A101    mov         eax,dword ptr [ebp-50]
 0055A104    dec         eax
 0055A105    test        eax,eax
>0055A107    jl          0055A196
 0055A10D    inc         eax
 0055A10E    mov         dword ptr [ebp-64],eax
 0055A111    mov         dword ptr [ebp-48],0
 0055A118    lea         eax,[ebp-5C]
 0055A11B    call        @LStrClr
 0055A120    mov         eax,dword ptr [ebp-58]
 0055A123    movzx       eax,word ptr [ebp+eax*4-3E]
 0055A128    dec         eax
 0055A129    test        eax,eax
>0055A12B    jl          0055A175
 0055A12D    inc         eax
 0055A12E    mov         dword ptr [ebp-68],eax
 0055A131    mov         dword ptr [ebp-54],0
 0055A138    mov         eax,dword ptr [ebp-4C]
 0055A13B    call        004CE528
 0055A140    mov         byte ptr [ebp-5D],al
 0055A143    push        dword ptr [ebp-5C]
 0055A146    lea         ecx,[ebp-7C]
 0055A149    xor         eax,eax
 0055A14B    mov         al,byte ptr [ebp-5D]
 0055A14E    mov         edx,2
 0055A153    call        IntToHex
 0055A158    push        dword ptr [ebp-7C]
 0055A15B    push        55A25C;' '
 0055A160    lea         eax,[ebp-5C]
 0055A163    mov         edx,3
 0055A168    call        @LStrCatN
 0055A16D    inc         dword ptr [ebp-54]
 0055A170    dec         dword ptr [ebp-68]
>0055A173    jne         0055A138
 0055A175    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A17A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A180    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A186    mov         edx,dword ptr [ebp-5C]
 0055A189    mov         ecx,dword ptr [eax]
 0055A18B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A18E    inc         dword ptr [ebp-48]
 0055A191    dec         dword ptr [ebp-64]
>0055A194    jne         0055A118
 0055A196    inc         dword ptr [ebp-58]
 0055A199    cmp         dword ptr [ebp-58],5
>0055A19D    jne         0055A026
 0055A1A3    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A1A8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A1AE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A1B4    xor         edx,edx
 0055A1B6    mov         ecx,dword ptr [eax]
 0055A1B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A1BB    xor         eax,eax
 0055A1BD    pop         edx
 0055A1BE    pop         ecx
 0055A1BF    pop         ecx
 0055A1C0    mov         dword ptr fs:[eax],edx
 0055A1C3    push        55A1D8
 0055A1C8    mov         eax,dword ptr [ebp-4C]
 0055A1CB    call        TObject.Free
 0055A1D0    ret
>0055A1D1    jmp         @HandleFinally
>0055A1D6    jmp         0055A1C8
 0055A1D8    xor         eax,eax
 0055A1DA    pop         edx
 0055A1DB    pop         ecx
 0055A1DC    pop         ecx
 0055A1DD    mov         dword ptr fs:[eax],edx
 0055A1E0    push        55A202
 0055A1E5    lea         eax,[ebp-7C]
 0055A1E8    mov         edx,4
 0055A1ED    call        @LStrArrayClr
 0055A1F2    lea         eax,[ebp-5C]
 0055A1F5    call        @LStrClr
 0055A1FA    ret
>0055A1FB    jmp         @HandleFinally
>0055A200    jmp         0055A1E5
 0055A202    pop         ebx
 0055A203    mov         esp,ebp
 0055A205    pop         ebp
 0055A206    ret
*}
end;

//0055A260
{*procedure sub_0055A260(?:?; ?:?);
begin
 0055A260    push        ebp
 0055A261    mov         ebp,esp
 0055A263    add         esp,0FFFFFFF4
 0055A266    xor         ecx,ecx
 0055A268    mov         dword ptr [ebp-0C],ecx
 0055A26B    mov         dword ptr [ebp-8],edx
 0055A26E    mov         word ptr [ebp-2],ax
 0055A272    xor         eax,eax
 0055A274    push        ebp
 0055A275    push        55A313
 0055A27A    push        dword ptr fs:[eax]
 0055A27D    mov         dword ptr fs:[eax],esp
 0055A280    mov         ax,word ptr [ebp-2]
 0055A284    sub         ax,2
>0055A288    je          0055A29B
 0055A28A    dec         ax
>0055A28D    je          0055A2AA
 0055A28F    dec         ax
>0055A292    je          0055A2B9
 0055A294    dec         ax
>0055A297    je          0055A2C8
>0055A299    jmp         0055A2D7
 0055A29B    mov         eax,dword ptr [ebp-8]
 0055A29E    mov         edx,55A328;'Data DAC Table   '
 0055A2A3    call        @LStrAsg
>0055A2A8    jmp         0055A2FD
 0055A2AA    mov         eax,dword ptr [ebp-8]
 0055A2AD    mov         edx,55A344;'Preamp DAC Table '
 0055A2B2    call        @LStrAsg
>0055A2B7    jmp         0055A2FD
 0055A2B9    mov         eax,dword ptr [ebp-8]
 0055A2BC    mov         edx,55A360;'MRJog Table      '
 0055A2C1    call        @LStrAsg
>0055A2C6    jmp         0055A2FD
 0055A2C8    mov         eax,dword ptr [ebp-8]
 0055A2CB    mov         edx,55A37C;'TPI  Table       '
 0055A2D0    call        @LStrAsg
>0055A2D5    jmp         0055A2FD
 0055A2D7    push        55A398;'Table '
 0055A2DC    lea         edx,[ebp-0C]
 0055A2DF    movzx       eax,word ptr [ebp-2]
 0055A2E3    call        IntToStr
 0055A2E8    push        dword ptr [ebp-0C]
 0055A2EB    push        55A3A8;'         '
 0055A2F0    mov         eax,dword ptr [ebp-8]
 0055A2F3    mov         edx,3
 0055A2F8    call        @LStrCatN
 0055A2FD    xor         eax,eax
 0055A2FF    pop         edx
 0055A300    pop         ecx
 0055A301    pop         ecx
 0055A302    mov         dword ptr fs:[eax],edx
 0055A305    push        55A31A
 0055A30A    lea         eax,[ebp-0C]
 0055A30D    call        @LStrClr
 0055A312    ret
>0055A313    jmp         @HandleFinally
>0055A318    jmp         0055A30A
 0055A31A    mov         esp,ebp
 0055A31C    pop         ebp
 0055A31D    ret
end;*}

//0055A3B4
{*procedure sub_0055A3B4(?:TMemoryStream; ?:?);
begin
 0055A3B4    push        ebp
 0055A3B5    mov         ebp,esp
 0055A3B7    add         esp,0FFFFFFF4
 0055A3BA    push        ebx
 0055A3BB    mov         dword ptr [ebp-4],eax
 0055A3BE    xor         ecx,ecx
 0055A3C0    xor         edx,edx
 0055A3C2    mov         eax,dword ptr [ebp-4]
 0055A3C5    mov         ebx,dword ptr [eax]
 0055A3C7    call        dword ptr [ebx+14]
 0055A3CA    mov         eax,dword ptr [ebp-4]
 0055A3CD    call        004CE56C
 0055A3D2    mov         dword ptr [ebp-8],eax
 0055A3D5    cmp         dword ptr [ebp-8],4C594F52
>0055A3DC    jne         0055A3EF
 0055A3DE    xor         ecx,ecx
 0055A3E0    mov         edx,1E
 0055A3E5    mov         eax,dword ptr [ebp-4]
 0055A3E8    mov         ebx,dword ptr [eax]
 0055A3EA    call        dword ptr [ebx+14]
>0055A3ED    jmp         0055A3FE
 0055A3EF    xor         ecx,ecx
 0055A3F1    mov         edx,0A
 0055A3F6    mov         eax,dword ptr [ebp-4]
 0055A3F9    mov         ebx,dword ptr [eax]
 0055A3FB    call        dword ptr [ebx+14]
 0055A3FE    mov         eax,dword ptr [ebp-4]
 0055A401    call        004CE548
 0055A406    movzx       eax,ax
 0055A409    mov         dword ptr [ebp-0C],eax
 0055A40C    xor         ecx,ecx
 0055A40E    mov         edx,dword ptr [ebp-0C]
 0055A411    mov         eax,dword ptr [ebp-4]
 0055A414    mov         ebx,dword ptr [eax]
 0055A416    call        dword ptr [ebx+14]
 0055A419    xor         eax,eax
 0055A41B    mov         dword ptr [ebp-0C],eax
 0055A41E    mov         eax,dword ptr [ebp-4]
 0055A421    call        004CE548
 0055A426    mov         edx,dword ptr [ebp+8]
 0055A429    mov         ecx,dword ptr [ebp-0C]
 0055A42C    mov         word ptr [edx+ecx*4-40],ax
 0055A431    mov         eax,dword ptr [ebp-4]
 0055A434    call        004CE548
 0055A439    mov         edx,dword ptr [ebp+8]
 0055A43C    mov         ecx,dword ptr [ebp-0C]
 0055A43F    mov         word ptr [edx+ecx*4-3E],ax
 0055A444    inc         dword ptr [ebp-0C]
 0055A447    cmp         dword ptr [ebp-0C],10
>0055A44B    jne         0055A41E
 0055A44D    pop         ebx
 0055A44E    mov         esp,ebp
 0055A450    pop         ebp
 0055A451    ret
end;*}

//0055A454
{*procedure TfmHDD.miShowID46Click(?:?);
begin
 0055A454    push        ebp
 0055A455    mov         ebp,esp
 0055A457    add         esp,0FFFFFF90
 0055A45A    push        ebx
 0055A45B    xor         ecx,ecx
 0055A45D    mov         dword ptr [ebp-70],ecx
 0055A460    mov         dword ptr [ebp-64],ecx
 0055A463    mov         dword ptr [ebp-68],ecx
 0055A466    mov         dword ptr [ebp-6C],ecx
 0055A469    mov         dword ptr [ebp-58],ecx
 0055A46C    mov         dword ptr [ebp-60],edx
 0055A46F    mov         dword ptr [ebp-44],eax
 0055A472    xor         eax,eax
 0055A474    push        ebp
 0055A475    push        55A68E
 0055A47A    push        dword ptr fs:[eax]
 0055A47D    mov         dword ptr fs:[eax],esp
 0055A480    mov         dl,1
 0055A482    mov         eax,[0041DE14];TMemoryStream
 0055A487    call        TObject.Create;TMemoryStream.Create
 0055A48C    mov         dword ptr [ebp-48],eax
 0055A48F    xor         eax,eax
 0055A491    push        ebp
 0055A492    push        55A664
 0055A497    push        dword ptr fs:[eax]
 0055A49A    mov         dword ptr fs:[eax],esp
 0055A49D    mov         edx,dword ptr [ebp-48]
 0055A4A0    mov         ax,46
 0055A4A4    call        005095B8
 0055A4A9    test        al,al
>0055A4AB    je          0055A64E
 0055A4B1    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A4B6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A4BC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A4C2    mov         edx,55A6A4;#13+ID46 Data: '
 0055A4C7    mov         ecx,dword ptr [eax]
 0055A4C9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A4CC    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A4D1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A4D7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A4DD    mov         edx,55A6BC;'-----------'
 0055A4E2    mov         ecx,dword ptr [eax]
 0055A4E4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A4E7    push        ebp
 0055A4E8    mov         eax,dword ptr [ebp-48]
 0055A4EB    call        0055A3B4
 0055A4F0    pop         ecx
 0055A4F1    xor         eax,eax
 0055A4F3    mov         dword ptr [ebp-54],eax
 0055A4F6    mov         eax,dword ptr [ebp-54]
 0055A4F9    cmp         word ptr [ebp+eax*4-40],0
>0055A4FF    jbe         0055A629
 0055A505    mov         eax,dword ptr [ebp-54]
 0055A508    movzx       edx,word ptr [ebp+eax*4-40]
 0055A50D    xor         ecx,ecx
 0055A50F    mov         eax,dword ptr [ebp-48]
 0055A512    mov         ebx,dword ptr [eax]
 0055A514    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055A517    mov         eax,dword ptr [ebp-54]
 0055A51A    movzx       eax,word ptr [ebp+eax*4-3E]
 0055A51F    mov         ecx,6
 0055A524    xor         edx,edx
 0055A526    div         eax,ecx
 0055A528    test        edx,edx
>0055A52A    jbe         0055A535
 0055A52C    mov         dword ptr [ebp-4C],8
>0055A533    jmp         0055A53C
 0055A535    mov         dword ptr [ebp-4C],6
 0055A53C    xor         eax,eax
 0055A53E    mov         dword ptr [ebp-50],eax
 0055A541    lea         eax,[ebp-58]
 0055A544    call        @LStrClr
 0055A549    push        55A6D0;#13
 0055A54E    push        ebp
 0055A54F    lea         edx,[ebp-68]
 0055A552    mov         ax,word ptr [ebp-54]
 0055A556    call        0055A260
 0055A55B    pop         ecx
 0055A55C    push        dword ptr [ebp-68]
 0055A55F    push        55A6DC;', Offset: '
 0055A564    lea         ecx,[ebp-6C]
 0055A567    mov         eax,dword ptr [ebp-54]
 0055A56A    movzx       eax,word ptr [ebp+eax*4-40]
 0055A56F    mov         edx,4
 0055A574    call        IntToHex
 0055A579    push        dword ptr [ebp-6C]
 0055A57C    lea         eax,[ebp-64]
 0055A57F    mov         edx,4
 0055A584    call        @LStrCatN
 0055A589    mov         edx,dword ptr [ebp-64]
 0055A58C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A591    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A597    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A59D    mov         ecx,dword ptr [eax]
 0055A59F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0055A5A2    jmp         0055A603
 0055A5A4    mov         eax,dword ptr [ebp-54]
 0055A5A7    movzx       eax,word ptr [ebp+eax*4-3E]
 0055A5AC    cdq
 0055A5AD    idiv        eax,dword ptr [ebp-4C]
 0055A5B0    push        eax
 0055A5B1    mov         eax,dword ptr [ebp-50]
 0055A5B4    pop         edx
 0055A5B5    mov         ecx,edx
 0055A5B7    cdq
 0055A5B8    idiv        eax,ecx
 0055A5BA    test        edx,edx
>0055A5BC    jne         0055A5CB
 0055A5BE    lea         eax,[ebp-58]
 0055A5C1    mov         edx,55A6D0;#13
 0055A5C6    call        @LStrCat
 0055A5CB    mov         eax,dword ptr [ebp-48]
 0055A5CE    call        004CE528
 0055A5D3    mov         byte ptr [ebp-59],al
 0055A5D6    push        dword ptr [ebp-58]
 0055A5D9    lea         ecx,[ebp-70]
 0055A5DC    xor         eax,eax
 0055A5DE    mov         al,byte ptr [ebp-59]
 0055A5E1    mov         edx,2
 0055A5E6    call        IntToHex
 0055A5EB    push        dword ptr [ebp-70]
 0055A5EE    push        55A6F0;' '
 0055A5F3    lea         eax,[ebp-58]
 0055A5F6    mov         edx,3
 0055A5FB    call        @LStrCatN
 0055A600    inc         dword ptr [ebp-50]
 0055A603    mov         eax,dword ptr [ebp-54]
 0055A606    movzx       eax,word ptr [ebp+eax*4-3E]
 0055A60B    cmp         eax,dword ptr [ebp-50]
>0055A60E    jg          0055A5A4
 0055A610    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A615    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A61B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A621    mov         edx,dword ptr [ebp-58]
 0055A624    mov         ecx,dword ptr [eax]
 0055A626    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A629    inc         dword ptr [ebp-54]
 0055A62C    cmp         dword ptr [ebp-54],10
>0055A630    jne         0055A4F6
 0055A636    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A63B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A641    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A647    xor         edx,edx
 0055A649    mov         ecx,dword ptr [eax]
 0055A64B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055A64E    xor         eax,eax
 0055A650    pop         edx
 0055A651    pop         ecx
 0055A652    pop         ecx
 0055A653    mov         dword ptr fs:[eax],edx
 0055A656    push        55A66B
 0055A65B    mov         eax,dword ptr [ebp-48]
 0055A65E    call        TObject.Free
 0055A663    ret
>0055A664    jmp         @HandleFinally
>0055A669    jmp         0055A65B
 0055A66B    xor         eax,eax
 0055A66D    pop         edx
 0055A66E    pop         ecx
 0055A66F    pop         ecx
 0055A670    mov         dword ptr fs:[eax],edx
 0055A673    push        55A695
 0055A678    lea         eax,[ebp-70]
 0055A67B    mov         edx,4
 0055A680    call        @LStrArrayClr
 0055A685    lea         eax,[ebp-58]
 0055A688    call        @LStrClr
 0055A68D    ret
>0055A68E    jmp         @HandleFinally
>0055A693    jmp         0055A678
 0055A695    pop         ebx
 0055A696    mov         esp,ebp
 0055A698    pop         ebp
 0055A699    ret
end;*}

//0055A6F4
procedure TfmHDD.miChangeHeadsMapInRAMClick(Sender:TObject);
begin
{*
 0055A6F4    push        ebp
 0055A6F5    mov         ebp,esp
 0055A6F7    add         esp,0FFFFFFF8
 0055A6FA    mov         dword ptr [ebp-8],edx
 0055A6FD    mov         dword ptr [ebp-4],eax
 0055A700    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055A706    mov         eax,[0053CD0C];TfmRamHd
 0055A70B    call        0053CFCC
 0055A710    pop         ecx
 0055A711    pop         ecx
 0055A712    pop         ebp
 0055A713    ret
*}
end;

//0055A714
{*function sub_0055A714(?:TMemoryStream; ?:?; ?:?):?;
begin
 0055A714    push        ebp
 0055A715    mov         ebp,esp
 0055A717    add         esp,0FFFFFFE0
 0055A71A    push        ebx
 0055A71B    mov         dword ptr [ebp-4],eax
 0055A71E    mov         dword ptr [ebp-10],0
 0055A725    mov         dword ptr [ebp-0C],0
 0055A72C    mov         eax,[0056E5A4];^gvar_0056DF04
 0055A731    mov         byte ptr [eax],0
 0055A734    mov         byte ptr [ebp-11],0
 0055A738    xor         ecx,ecx
 0055A73A    xor         edx,edx
 0055A73C    mov         eax,dword ptr [ebp-4]
 0055A73F    mov         ebx,dword ptr [eax]
 0055A741    call        dword ptr [ebx+14]
>0055A744    jmp         0055A78F
 0055A746    mov         eax,dword ptr [ebp-4]
 0055A749    call        004CE58C
 0055A74E    mov         dword ptr [ebp-20],eax
 0055A751    mov         dword ptr [ebp-1C],edx
 0055A754    mov         eax,dword ptr [ebp-20]
 0055A757    mov         edx,dword ptr [ebp-1C]
 0055A75A    cmp         edx,dword ptr [ebp+0C]
>0055A75D    jne         0055A77E
 0055A75F    cmp         eax,dword ptr [ebp+8]
>0055A762    jne         0055A77E
 0055A764    mov         byte ptr [ebp-11],1
 0055A768    mov         eax,dword ptr [ebp-4]
 0055A76B    call        TStream.GetPosition
 0055A770    sub         eax,8
 0055A773    sbb         edx,0
 0055A776    mov         dword ptr [ebp-10],eax
 0055A779    mov         dword ptr [ebp-0C],edx
>0055A77C    jmp         0055A78F
 0055A77E    mov         cx,1
 0055A782    mov         edx,0FFFFFFF9
 0055A787    mov         eax,dword ptr [ebp-4]
 0055A78A    mov         ebx,dword ptr [eax]
 0055A78C    call        dword ptr [ebx+14]
 0055A78F    cmp         byte ptr [ebp-11],0
>0055A793    jne         0055A7CD
 0055A795    mov         eax,[0056E5A4];^gvar_0056DF04
 0055A79A    cmp         byte ptr [eax],0
>0055A79D    jne         0055A7CD
 0055A79F    mov         eax,dword ptr [ebp-4]
 0055A7A2    mov         edx,dword ptr [eax]
 0055A7A4    call        dword ptr [edx]
 0055A7A6    sub         eax,8
 0055A7A9    sbb         edx,0
 0055A7AC    push        edx
 0055A7AD    push        eax
 0055A7AE    mov         eax,dword ptr [ebp-4]
 0055A7B1    call        TStream.GetPosition
 0055A7B6    cmp         edx,dword ptr [esp+4]
>0055A7BA    jne         0055A7C5
 0055A7BC    cmp         eax,dword ptr [esp]
 0055A7BF    pop         edx
 0055A7C0    pop         eax
>0055A7C1    jb          0055A746
>0055A7C3    jmp         0055A7CD
 0055A7C5    pop         edx
 0055A7C6    pop         eax
>0055A7C7    jl          0055A746
 0055A7CD    mov         eax,dword ptr [ebp-10]
 0055A7D0    mov         edx,dword ptr [ebp-0C]
 0055A7D3    pop         ebx
 0055A7D4    mov         esp,ebp
 0055A7D6    pop         ebp
 0055A7D7    ret         8
end;*}

//0055A7DC
{*procedure TfmHDD.miViewRomModelNameClick(?:?);
begin
 0055A7DC    push        ebp
 0055A7DD    mov         ebp,esp
 0055A7DF    add         esp,0FFFFFFCC
 0055A7E2    push        ebx
 0055A7E3    xor         ecx,ecx
 0055A7E5    mov         dword ptr [ebp-30],ecx
 0055A7E8    mov         dword ptr [ebp-34],ecx
 0055A7EB    mov         dword ptr [ebp-2C],ecx
 0055A7EE    mov         dword ptr [ebp-18],ecx
 0055A7F1    mov         dword ptr [ebp-1C],ecx
 0055A7F4    mov         dword ptr [ebp-28],edx
 0055A7F7    mov         dword ptr [ebp-4],eax
 0055A7FA    xor         eax,eax
 0055A7FC    push        ebp
 0055A7FD    push        55AA48
 0055A802    push        dword ptr fs:[eax]
 0055A805    mov         dword ptr fs:[eax],esp
 0055A808    mov         eax,[0056E5A4];^gvar_0056DF04
 0055A80D    mov         byte ptr [eax],0
 0055A810    lea         eax,[ebp-18]
 0055A813    mov         edx,55AA5C;'                                      '
 0055A818    call        @LStrLAsg
 0055A81D    mov         dl,1
 0055A81F    mov         eax,[0041DE14];TMemoryStream
 0055A824    call        TObject.Create;TMemoryStream.Create
 0055A829    mov         dword ptr [ebp-8],eax
 0055A82C    xor         eax,eax
 0055A82E    push        ebp
 0055A82F    push        55AA19
 0055A834    push        dword ptr fs:[eax]
 0055A837    mov         dword ptr fs:[eax],esp
 0055A83A    mov         eax,[0056E040];^gvar_005720C0
 0055A83F    cmp         byte ptr [eax],0
>0055A842    je          0055A84D
 0055A844    mov         dword ptr [ebp-14],24000000
>0055A84B    jmp         0055A854
 0055A84D    mov         dword ptr [ebp-14],22000000
 0055A854    mov         ecx,dword ptr [ebp-8]
 0055A857    mov         edx,40000
 0055A85C    mov         eax,dword ptr [ebp-14]
 0055A85F    call        004D1204
 0055A864    test        al,al
>0055A866    je          0055AA03
 0055A86C    push        ebp
 0055A86D    push        204D4F52
 0055A872    push        20434457
 0055A877    mov         eax,dword ptr [ebp-8]
 0055A87A    call        0055A714
 0055A87F    pop         ecx
 0055A880    mov         dword ptr [ebp-10],eax
 0055A883    mov         dword ptr [ebp-0C],edx
 0055A886    cmp         dword ptr [ebp-0C],0
>0055A88A    jne         0055A8C3
 0055A88C    cmp         dword ptr [ebp-10],0
>0055A890    jne         0055A8C3
 0055A892    mov         dword ptr [ebp-14],21000000
 0055A899    mov         ecx,dword ptr [ebp-8]
 0055A89C    mov         edx,1000
 0055A8A1    mov         eax,dword ptr [ebp-14]
 0055A8A4    call        004D1204
 0055A8A9    push        ebp
 0055A8AA    push        204D4F52
 0055A8AF    push        20434457
 0055A8B4    mov         eax,dword ptr [ebp-8]
 0055A8B7    call        0055A714
 0055A8BC    pop         ecx
 0055A8BD    mov         dword ptr [ebp-10],eax
 0055A8C0    mov         dword ptr [ebp-0C],edx
 0055A8C3    cmp         dword ptr [ebp-0C],0
>0055A8C7    jne         0055A8D5
 0055A8C9    cmp         dword ptr [ebp-10],0
>0055A8CD    jbe         0055AA03
>0055A8D3    jmp         0055A8DB
>0055A8D5    jle         0055AA03
 0055A8DB    xor         ecx,ecx
 0055A8DD    mov         edx,dword ptr [ebp-10]
 0055A8E0    mov         eax,dword ptr [ebp-8]
 0055A8E3    mov         ebx,dword ptr [eax]
 0055A8E5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055A8E8    mov         eax,dword ptr [ebp-18]
 0055A8EB    call        @LStrLen
 0055A8F0    push        eax
 0055A8F1    lea         eax,[ebp-18]
 0055A8F4    call        00405598
 0055A8F9    mov         edx,eax
 0055A8FB    mov         eax,dword ptr [ebp-8]
 0055A8FE    pop         ecx
 0055A8FF    call        TStream.ReadBuffer
 0055A904    lea         edx,[ebp-1C]
 0055A907    mov         eax,dword ptr [ebp-18]
 0055A90A    call        0040BFEC
 0055A90F    push        ebp
 0055A910    push        68676972
 0055A915    push        79706F43
 0055A91A    mov         eax,dword ptr [ebp-8]
 0055A91D    call        0055A714
 0055A922    pop         ecx
 0055A923    mov         dword ptr [ebp-10],eax
 0055A926    mov         dword ptr [ebp-0C],edx
 0055A929    cmp         dword ptr [ebp-0C],0
>0055A92D    jne         0055A937
 0055A92F    cmp         dword ptr [ebp-10],0
>0055A933    jbe         0055A962
>0055A935    jmp         0055A939
>0055A937    jle         0055A962
 0055A939    xor         ecx,ecx
 0055A93B    mov         edx,dword ptr [ebp-10]
 0055A93E    mov         eax,dword ptr [ebp-8]
 0055A941    mov         ebx,dword ptr [eax]
 0055A943    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055A946    mov         eax,dword ptr [ebp-18]
 0055A949    call        @LStrLen
 0055A94E    push        eax
 0055A94F    lea         eax,[ebp-18]
 0055A952    call        00405598
 0055A957    mov         edx,eax
 0055A959    mov         eax,dword ptr [ebp-8]
 0055A95C    pop         ecx
 0055A95D    call        TStream.ReadBuffer
 0055A962    lea         edx,[ebp-2C]
 0055A965    mov         eax,dword ptr [ebp-18]
 0055A968    call        0040BFEC
 0055A96D    mov         edx,dword ptr [ebp-2C]
 0055A970    lea         eax,[ebp-18]
 0055A973    call        @LStrLAsg
 0055A978    mov         eax,dword ptr [ebp-18]
 0055A97B    call        @LStrLen
 0055A980    test        eax,eax
>0055A982    jle         0055A9C2
 0055A984    mov         dword ptr [ebp-24],eax
 0055A987    mov         dword ptr [ebp-20],1
 0055A98E    mov         eax,dword ptr [ebp-18]
 0055A991    mov         edx,dword ptr [ebp-20]
 0055A994    mov         al,byte ptr [eax+edx-1]
 0055A998    cmp         al,20
>0055A99A    jb          0055A9AA
 0055A99C    mov         eax,dword ptr [ebp-18]
 0055A99F    mov         edx,dword ptr [ebp-20]
 0055A9A2    mov         al,byte ptr [eax+edx-1]
 0055A9A6    cmp         al,7F
>0055A9A8    jbe         0055A9BA
 0055A9AA    lea         eax,[ebp-18]
 0055A9AD    call        00405598
 0055A9B2    mov         edx,dword ptr [ebp-20]
 0055A9B5    mov         byte ptr [eax+edx-1],20
 0055A9BA    inc         dword ptr [ebp-20]
 0055A9BD    dec         dword ptr [ebp-24]
>0055A9C0    jne         0055A98E
 0055A9C2    push        55AA8C;#10
 0055A9C7    lea         edx,[ebp-34]
 0055A9CA    mov         eax,dword ptr [ebp-1C]
 0055A9CD    call        0040BFEC
 0055A9D2    push        dword ptr [ebp-34]
 0055A9D5    push        55AA8C;#10
 0055A9DA    push        dword ptr [ebp-18]
 0055A9DD    lea         eax,[ebp-30]
 0055A9E0    mov         edx,4
 0055A9E5    call        @LStrCatN
 0055A9EA    mov         edx,dword ptr [ebp-30]
 0055A9ED    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055A9F2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055A9F8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055A9FE    mov         ecx,dword ptr [eax]
 0055AA00    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055AA03    xor         eax,eax
 0055AA05    pop         edx
 0055AA06    pop         ecx
 0055AA07    pop         ecx
 0055AA08    mov         dword ptr fs:[eax],edx
 0055AA0B    push        55AA20
 0055AA10    mov         eax,dword ptr [ebp-8]
 0055AA13    call        TObject.Free
 0055AA18    ret
>0055AA19    jmp         @HandleFinally
>0055AA1E    jmp         0055AA10
 0055AA20    xor         eax,eax
 0055AA22    pop         edx
 0055AA23    pop         ecx
 0055AA24    pop         ecx
 0055AA25    mov         dword ptr fs:[eax],edx
 0055AA28    push        55AA4F
 0055AA2D    lea         eax,[ebp-34]
 0055AA30    mov         edx,3
 0055AA35    call        @LStrArrayClr
 0055AA3A    lea         eax,[ebp-1C]
 0055AA3D    mov         edx,2
 0055AA42    call        @LStrArrayClr
 0055AA47    ret
>0055AA48    jmp         @HandleFinally
>0055AA4D    jmp         0055AA2D
 0055AA4F    pop         ebx
 0055AA50    mov         esp,ebp
 0055AA52    pop         ebp
 0055AA53    ret
end;*}

//0055AA90
{*procedure TfmHDD.Manual1Click(?:?);
begin
 0055AA90    push        ebp
 0055AA91    mov         ebp,esp
 0055AA93    add         esp,0FFFFFFF8
 0055AA96    mov         dword ptr [ebp-8],edx
 0055AA99    mov         dword ptr [ebp-4],eax
 0055AA9C    mov         eax,[0053E620];TfmFormat
 0055AAA1    call        0053E8D4
 0055AAA6    pop         ecx
 0055AAA7    pop         ecx
 0055AAA8    pop         ebp
 0055AAA9    ret
end;*}

//0055AAAC
{*procedure TfmHDD.miLoadARCOMainClick(?:?);
begin
 0055AAAC    push        ebp
 0055AAAD    mov         ebp,esp
 0055AAAF    add         esp,0FFFFFFE8
 0055AAB2    xor         ecx,ecx
 0055AAB4    mov         dword ptr [ebp-18],ecx
 0055AAB7    mov         dword ptr [ebp-14],ecx
 0055AABA    mov         dword ptr [ebp-0C],ecx
 0055AABD    mov         dword ptr [ebp-10],edx
 0055AAC0    mov         dword ptr [ebp-4],eax
 0055AAC3    xor         eax,eax
 0055AAC5    push        ebp
 0055AAC6    push        55AC3D
 0055AACB    push        dword ptr fs:[eax]
 0055AACE    mov         dword ptr fs:[eax],esp
 0055AAD1    mov         dl,1
 0055AAD3    mov         eax,[0041DE14];TMemoryStream
 0055AAD8    call        TObject.Create;TMemoryStream.Create
 0055AADD    mov         dword ptr [ebp-8],eax
 0055AAE0    mov         eax,[0056E5A4];^gvar_0056DF04
 0055AAE5    mov         byte ptr [eax],0
 0055AAE8    xor         eax,eax
 0055AAEA    push        ebp
 0055AAEB    push        55AC10
 0055AAF0    push        dword ptr fs:[eax]
 0055AAF3    mov         dword ptr fs:[eax],esp
 0055AAF6    mov         eax,[0056E040];^gvar_005720C0
 0055AAFB    cmp         byte ptr [eax],0
>0055AAFE    je          0055AB27
 0055AB00    lea         eax,[ebp-0C]
 0055AB03    mov         edx,55AC50;'   0040.rpm'
 0055AB08    call        @LStrLAsg
 0055AB0D    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AB12    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055AB18    add         eax,60;TOpenDialog.Filter:String
 0055AB1B    mov         edx,55AC64;'ARCO Main|   0040.rpm|All|*.*'
 0055AB20    call        @LStrAsg
>0055AB25    jmp         0055AB4C
 0055AB27    lea         eax,[ebp-0C]
 0055AB2A    mov         edx,55AC8C;'   40.rpm'
 0055AB2F    call        @LStrLAsg
 0055AB34    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AB39    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055AB3F    add         eax,60;TOpenDialog.Filter:String
 0055AB42    mov         edx,55ACA0;'ARCO Main|   40.rpm|All|*.*'
 0055AB47    call        @LStrAsg
 0055AB4C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0055AB52    mov         edx,dword ptr [edx]
 0055AB54    lea         eax,[ebp-14]
 0055AB57    mov         ecx,55ACC4;'Modules\'
 0055AB5C    call        @LStrCat3
 0055AB61    mov         edx,dword ptr [ebp-14]
 0055AB64    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AB69    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055AB6F    call        TOpenDialog.SetInitialDir
 0055AB74    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AB79    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055AB7F    add         eax,78;TOpenDialog.FileName:TFileName
 0055AB82    call        @LStrClr
 0055AB87    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AB8C    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055AB92    mov         edx,dword ptr [eax]
 0055AB94    call        dword ptr [edx+3C];TOpenDialog.Execute
 0055AB97    test        al,al
>0055AB99    je          0055ABCF
 0055AB9B    lea         edx,[ebp-18]
 0055AB9E    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055ABA3    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055ABA9    call        TOpenDialog.GetFileName
 0055ABAE    mov         edx,dword ptr [ebp-18]
 0055ABB1    mov         eax,dword ptr [ebp-8]
 0055ABB4    call        00423F8C
 0055ABB9    mov         edx,dword ptr [ebp-8]
 0055ABBC    mov         ax,46
 0055ABC0    call        004CF728
 0055ABC5    mov         eax,55ACD8;'Load Load ARCO Main - '
 0055ABCA    call        00544F6C
 0055ABCF    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055ABD4    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055ABDA    add         eax,60;TOpenDialog.Filter:String
 0055ABDD    mov         edx,55ACF8;'All|*.*'
 0055ABE2    call        @LStrAsg
 0055ABE7    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055ABEC    mov         eax,dword ptr [eax+35C];TfmHDD.OpenDialog1:TOpenDialog
 0055ABF2    add         eax,78;TOpenDialog.FileName:TFileName
 0055ABF5    call        @LStrClr
 0055ABFA    xor         eax,eax
 0055ABFC    pop         edx
 0055ABFD    pop         ecx
 0055ABFE    pop         ecx
 0055ABFF    mov         dword ptr fs:[eax],edx
 0055AC02    push        55AC17
 0055AC07    mov         eax,dword ptr [ebp-8]
 0055AC0A    call        TObject.Free
 0055AC0F    ret
>0055AC10    jmp         @HandleFinally
>0055AC15    jmp         0055AC07
 0055AC17    xor         eax,eax
 0055AC19    pop         edx
 0055AC1A    pop         ecx
 0055AC1B    pop         ecx
 0055AC1C    mov         dword ptr fs:[eax],edx
 0055AC1F    push        55AC44
 0055AC24    lea         eax,[ebp-18]
 0055AC27    call        @LStrClr
 0055AC2C    lea         eax,[ebp-14]
 0055AC2F    call        @LStrClr
 0055AC34    lea         eax,[ebp-0C]
 0055AC37    call        @LStrClr
 0055AC3C    ret
>0055AC3D    jmp         @HandleFinally
>0055AC42    jmp         0055AC24
 0055AC44    mov         esp,ebp
 0055AC46    pop         ebp
 0055AC47    ret
end;*}

//0055AD00
procedure TfmHDD.miXlateLBAClick(Sender:TObject);
begin
{*
 0055AD00    push        ebp
 0055AD01    mov         ebp,esp
 0055AD03    add         esp,0FFFFFFA4
 0055AD06    xor         ecx,ecx
 0055AD08    mov         dword ptr [ebp-28],ecx
 0055AD0B    mov         dword ptr [ebp-5C],ecx
 0055AD0E    mov         dword ptr [ebp-24],ecx
 0055AD11    mov         dword ptr [ebp-20],edx
 0055AD14    mov         dword ptr [ebp-4],eax
 0055AD17    xor         eax,eax
 0055AD19    push        ebp
 0055AD1A    push        55AE8E
 0055AD1F    push        dword ptr fs:[eax]
 0055AD22    mov         dword ptr fs:[eax],esp
 0055AD25    mov         eax,[0056E5A4];^gvar_0056DF04
 0055AD2A    mov         byte ptr [eax],0
 0055AD2D    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055AD32    cmp         dword ptr [eax],0
>0055AD35    jne         0055AD53
 0055AD37    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055AD3D    mov         ecx,dword ptr [ecx]
 0055AD3F    mov         dl,1
 0055AD41    mov         eax,[004F7EE0];TfmString
 0055AD46    call        TfmProgress.Create;TfmString.Create
 0055AD4B    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055AD51    mov         dword ptr [edx],eax
 0055AD53    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055AD58    mov         eax,dword ptr [eax]
 0055AD5A    mov         edx,55AEA4;'Xlate LBA'
 0055AD5F    call        TPanel.SetCaption
 0055AD64    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055AD69    mov         eax,dword ptr [eax]
 0055AD6B    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055AD71    mov         edx,55AEB8;'0'
 0055AD76    call        TPanel.SetCaption
 0055AD7B    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055AD80    mov         eax,dword ptr [eax]
 0055AD82    mov         edx,dword ptr [eax]
 0055AD84    call        dword ptr [edx+0EC]
 0055AD8A    dec         eax
>0055AD8B    jne         0055AE68
 0055AD91    lea         edx,[ebp-24]
 0055AD94    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055AD99    mov         eax,dword ptr [eax]
 0055AD9B    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055ADA1    call        TPanel.GetCaption
 0055ADA6    mov         eax,dword ptr [ebp-24]
 0055ADA9    xor         edx,edx
 0055ADAB    call        0040C4A8
 0055ADB0    cdq
 0055ADB1    mov         dword ptr [ebp-10],eax
 0055ADB4    mov         dword ptr [ebp-0C],edx
 0055ADB7    call        004CED2C
 0055ADBC    push        dword ptr [ebp-0C]
 0055ADBF    push        dword ptr [ebp-10]
 0055ADC2    lea         eax,[ebp-1A]
 0055ADC5    push        eax
 0055ADC6    lea         eax,[ebp-1C]
 0055ADC9    push        eax
 0055ADCA    lea         ecx,[ebp-18]
 0055ADCD    lea         edx,[ebp-16]
 0055ADD0    lea         eax,[ebp-14]
 0055ADD3    call        004D0C2C
 0055ADD8    mov         eax,[0056E3F8];^gvar_0059BF4C
 0055ADDD    cmp         byte ptr [eax],0
>0055ADE0    jne         0055AE5E
 0055ADE2    lea         eax,[ebp-28]
 0055ADE5    push        eax
 0055ADE6    lea         eax,[ebp-10]
 0055ADE9    mov         dword ptr [ebp-58],eax
 0055ADEC    mov         byte ptr [ebp-54],10
 0055ADF0    mov         eax,dword ptr [ebp-14]
 0055ADF3    mov         dword ptr [ebp-50],eax
 0055ADF6    mov         byte ptr [ebp-4C],0
 0055ADFA    movzx       eax,word ptr [ebp-18]
 0055ADFE    mov         dword ptr [ebp-48],eax
 0055AE01    mov         byte ptr [ebp-44],0
 0055AE05    movzx       eax,word ptr [ebp-16]
 0055AE09    mov         dword ptr [ebp-40],eax
 0055AE0C    mov         byte ptr [ebp-3C],0
 0055AE10    movzx       eax,word ptr [ebp-1C]
 0055AE14    mov         dword ptr [ebp-38],eax
 0055AE17    mov         byte ptr [ebp-34],0
 0055AE1B    lea         edx,[ebp-5C]
 0055AE1E    mov         ax,word ptr [ebp-1A]
 0055AE22    call        004D0E1C
 0055AE27    mov         eax,dword ptr [ebp-5C]
 0055AE2A    mov         dword ptr [ebp-30],eax
 0055AE2D    mov         byte ptr [ebp-2C],0B
 0055AE31    lea         edx,[ebp-58]
 0055AE34    mov         ecx,5
 0055AE39    mov         eax,55AEC4;'LBA:%10d=C:%6x, H:%1x, S:%3x, Z:%x - %s'
 0055AE3E    call        0040D630
 0055AE43    mov         edx,dword ptr [ebp-28]
 0055AE46    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055AE4B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055AE51    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055AE57    mov         ecx,dword ptr [eax]
 0055AE59    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0055AE5C    jmp         0055AE68
 0055AE5E    mov         eax,55AEF4;'Xlate LBA - '
 0055AE63    call        00544F6C
 0055AE68    xor         eax,eax
 0055AE6A    pop         edx
 0055AE6B    pop         ecx
 0055AE6C    pop         ecx
 0055AE6D    mov         dword ptr fs:[eax],edx
 0055AE70    push        55AE95
 0055AE75    lea         eax,[ebp-5C]
 0055AE78    call        @LStrClr
 0055AE7D    lea         eax,[ebp-28]
 0055AE80    call        @LStrClr
 0055AE85    lea         eax,[ebp-24]
 0055AE88    call        @LStrClr
 0055AE8D    ret
>0055AE8E    jmp         @HandleFinally
>0055AE93    jmp         0055AE75
 0055AE95    mov         esp,ebp
 0055AE97    pop         ebp
 0055AE98    ret
*}
end;

//0055AF04
procedure TfmHDD.miBuildLBAHeadMapClick(Sender:TObject);
begin
{*
 0055AF04    push        ebp
 0055AF05    mov         ebp,esp
 0055AF07    add         esp,0FFFFFFF8
 0055AF0A    mov         dword ptr [ebp-8],edx
 0055AF0D    mov         dword ptr [ebp-4],eax
 0055AF10    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055AF16    mov         eax,[0053EC88];TfmLbaExport
 0055AF1B    call        0053EE78
 0055AF20    pop         ecx
 0055AF21    pop         ecx
 0055AF22    pop         ebp
 0055AF23    ret
*}
end;

//0055AF24
procedure TfmHDD.miCreateFileClick(Sender:TObject);
begin
{*
 0055AF24    push        ebp
 0055AF25    mov         ebp,esp
 0055AF27    add         esp,0FFFFFFF8
 0055AF2A    mov         dword ptr [ebp-8],edx
 0055AF2D    mov         dword ptr [ebp-4],eax
 0055AF30    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055AF36    mov         eax,[0053F6B0];TfmCreateFile
 0055AF3B    call        0053F8A8
 0055AF40    pop         ecx
 0055AF41    pop         ecx
 0055AF42    pop         ebp
 0055AF43    ret
*}
end;

//0055AF44
procedure TfmHDD.miGetCurrentClick(Sender:TObject);
begin
{*
 0055AF44    push        ebp
 0055AF45    mov         ebp,esp
 0055AF47    mov         ecx,35
 0055AF4C    push        0
 0055AF4E    push        0
 0055AF50    dec         ecx
>0055AF51    jne         0055AF4C
 0055AF53    mov         dword ptr [ebp-8],edx
 0055AF56    mov         dword ptr [ebp-4],eax
 0055AF59    xor         eax,eax
 0055AF5B    push        ebp
 0055AF5C    push        55CDFB
 0055AF61    push        dword ptr fs:[eax]
 0055AF64    mov         dword ptr fs:[eax],esp
 0055AF67    mov         ax,1
 0055AF6B    call        004D1860
 0055AF70    test        al,al
>0055AF72    je          0055CDBB
 0055AF78    mov         eax,dword ptr [ebp-4]
 0055AF7B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055AF81    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055AF87    mov         edx,55CE10;'***************************************************'
 0055AF8C    mov         ecx,dword ptr [eax]
 0055AF8E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055AF91    mov         eax,dword ptr [ebp-4]
 0055AF94    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055AF9A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055AFA0    mov         edx,55CE4C;'   Current Selection portion of the Field List'
 0055AFA5    mov         ecx,dword ptr [eax]
 0055AFA7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055AFAA    mov         eax,dword ptr [ebp-4]
 0055AFAD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055AFB3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055AFB9    mov         edx,55CE10;'***************************************************'
 0055AFBE    mov         ecx,dword ptr [eax]
 0055AFC0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055AFC3    lea         eax,[ebp-0C]
 0055AFC6    push        eax
 0055AFC7    mov         eax,[0056E344];^gvar_0059BF5C
 0055AFCC    movzx       eax,word ptr [eax]
 0055AFCF    mov         dword ptr [ebp-14],eax
 0055AFD2    mov         byte ptr [ebp-10],0
 0055AFD6    lea         edx,[ebp-14]
 0055AFD9    xor         ecx,ecx
 0055AFDB    mov         eax,55CE84;'  format_version = 0x%X'
 0055AFE0    call        0040D630
 0055AFE5    mov         edx,dword ptr [ebp-0C]
 0055AFE8    mov         eax,dword ptr [ebp-4]
 0055AFEB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055AFF1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055AFF7    mov         ecx,dword ptr [eax]
 0055AFF9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055AFFC    lea         eax,[ebp-18]
 0055AFFF    push        eax
 0055B000    mov         eax,[0056E344];^gvar_0059BF5C
 0055B005    movzx       eax,word ptr [eax+2]
 0055B009    mov         dword ptr [ebp-14],eax
 0055B00C    mov         byte ptr [ebp-10],0
 0055B010    lea         edx,[ebp-14]
 0055B013    xor         ecx,ecx
 0055B015    mov         eax,55CEA4;'  DCM Selection = 0x%X'
 0055B01A    call        0040D630
 0055B01F    mov         edx,dword ptr [ebp-18]
 0055B022    mov         eax,dword ptr [ebp-4]
 0055B025    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B02B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B031    mov         ecx,dword ptr [eax]
 0055B033    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B036    lea         eax,[ebp-1C]
 0055B039    push        eax
 0055B03A    mov         eax,[0056E344];^gvar_0059BF5C
 0055B03F    movzx       eax,word ptr [eax+4]
 0055B043    mov         dword ptr [ebp-14],eax
 0055B046    mov         byte ptr [ebp-10],0
 0055B04A    lea         edx,[ebp-14]
 0055B04D    xor         ecx,ecx
 0055B04F    mov         eax,55CEC4;'  cur_stroke = 0x%X'
 0055B054    call        0040D630
 0055B059    mov         edx,dword ptr [ebp-1C]
 0055B05C    mov         eax,dword ptr [ebp-4]
 0055B05F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B065    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B06B    mov         ecx,dword ptr [eax]
 0055B06D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B070    lea         eax,[ebp-20]
 0055B073    push        eax
 0055B074    mov         eax,[0056E344];^gvar_0059BF5C
 0055B079    movzx       eax,word ptr [eax+6]
 0055B07D    mov         dword ptr [ebp-14],eax
 0055B080    mov         byte ptr [ebp-10],0
 0055B084    lea         edx,[ebp-14]
 0055B087    xor         ecx,ecx
 0055B089    mov         eax,55CEE0;'  phy_heads = 0x%X'
 0055B08E    call        0040D630
 0055B093    mov         edx,dword ptr [ebp-20]
 0055B096    mov         eax,dword ptr [ebp-4]
 0055B099    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B09F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B0A5    mov         ecx,dword ptr [eax]
 0055B0A7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B0AA    lea         eax,[ebp-24]
 0055B0AD    push        eax
 0055B0AE    mov         eax,[0056E344];^gvar_0059BF5C
 0055B0B3    movzx       eax,word ptr [eax+8]
 0055B0B7    mov         dword ptr [ebp-14],eax
 0055B0BA    mov         byte ptr [ebp-10],0
 0055B0BE    lea         edx,[ebp-14]
 0055B0C1    xor         ecx,ecx
 0055B0C3    mov         eax,55CEFC;'  used_heads = 0x%X'
 0055B0C8    call        0040D630
 0055B0CD    mov         edx,dword ptr [ebp-24]
 0055B0D0    mov         eax,dword ptr [ebp-4]
 0055B0D3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B0D9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B0DF    mov         ecx,dword ptr [eax]
 0055B0E1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B0E4    lea         eax,[ebp-28]
 0055B0E7    push        eax
 0055B0E8    mov         eax,[0056E344];^gvar_0059BF5C
 0055B0ED    movzx       eax,word ptr [eax+0A]
 0055B0F1    mov         ecx,0A
 0055B0F6    xor         edx,edx
 0055B0F8    div         eax,ecx
 0055B0FA    mov         dword ptr [ebp-38],eax
 0055B0FD    mov         byte ptr [ebp-34],0
 0055B101    mov         eax,[0056E344];^gvar_0059BF5C
 0055B106    movzx       eax,word ptr [eax+0A]
 0055B10A    mov         ecx,0A
 0055B10F    xor         edx,edx
 0055B111    div         eax,ecx
 0055B113    mov         dword ptr [ebp-30],edx
 0055B116    mov         byte ptr [ebp-2C],0
 0055B11A    lea         edx,[ebp-38]
 0055B11D    mov         ecx,1
 0055B122    mov         eax,55CF18;'  cur_capacity = %d.%dGb'
 0055B127    call        0040D630
 0055B12C    mov         edx,dword ptr [ebp-28]
 0055B12F    mov         eax,dword ptr [ebp-4]
 0055B132    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B138    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B13E    mov         ecx,dword ptr [eax]
 0055B140    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B143    lea         eax,[ebp-3C]
 0055B146    push        eax
 0055B147    mov         eax,[0056E344];^gvar_0059BF5C
 0055B14C    movzx       eax,word ptr [eax+28]
 0055B150    mov         dword ptr [ebp-14],eax
 0055B153    mov         byte ptr [ebp-10],0
 0055B157    lea         edx,[ebp-14]
 0055B15A    xor         ecx,ecx
 0055B15C    mov         eax,55CF3C;'  final_capacity_selection = 0x%X'
 0055B161    call        0040D630
 0055B166    mov         edx,dword ptr [ebp-3C]
 0055B169    mov         eax,dword ptr [ebp-4]
 0055B16C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B172    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B178    mov         ecx,dword ptr [eax]
 0055B17A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B17D    lea         eax,[ebp-40]
 0055B180    push        eax
 0055B181    mov         eax,[0056E344];^gvar_0059BF5C
 0055B186    mov         eax,dword ptr [eax+0C]
 0055B189    mov         dword ptr [ebp-58],eax
 0055B18C    mov         byte ptr [ebp-54],0
 0055B190    mov         eax,[0056E344];^gvar_0059BF5C
 0055B195    mov         eax,dword ptr [eax+0C]
 0055B198    xor         edx,edx
 0055B19A    push        edx
 0055B19B    push        eax
 0055B19C    lea         eax,[ebp-5C]
 0055B19F    call        IntToStr
 0055B1A4    mov         eax,dword ptr [ebp-5C]
 0055B1A7    mov         dword ptr [ebp-50],eax
 0055B1AA    mov         byte ptr [ebp-4C],0B
 0055B1AE    mov         eax,[0056E344];^gvar_0059BF5C
 0055B1B3    mov         eax,dword ptr [eax+0C]
 0055B1B6    mov         ecx,1DCD65
 0055B1BB    xor         edx,edx
 0055B1BD    div         eax,ecx
 0055B1BF    mov         dword ptr [ebp-48],eax
 0055B1C2    mov         byte ptr [ebp-44],0
 0055B1C6    lea         edx,[ebp-58]
 0055B1C9    mov         ecx,2
 0055B1CE    mov         eax,55CF68;'  max_fmt_LBAs = 0x%X (%s) %dGb'
 0055B1D3    call        0040D630
 0055B1D8    mov         edx,dword ptr [ebp-40]
 0055B1DB    mov         eax,dword ptr [ebp-4]
 0055B1DE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B1E4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B1EA    mov         ecx,dword ptr [eax]
 0055B1EC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B1EF    lea         eax,[ebp-60]
 0055B1F2    push        eax
 0055B1F3    mov         eax,[0056E344];^gvar_0059BF5C
 0055B1F8    movzx       eax,word ptr [eax+14]
 0055B1FC    mov         dword ptr [ebp-14],eax
 0055B1FF    mov         byte ptr [ebp-10],0
 0055B203    lea         edx,[ebp-14]
 0055B206    xor         ecx,ecx
 0055B208    mov         eax,55CF90;'  target_capacity_selection = 0x%X'
 0055B20D    call        0040D630
 0055B212    mov         edx,dword ptr [ebp-60]
 0055B215    mov         eax,dword ptr [ebp-4]
 0055B218    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B21E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B224    mov         ecx,dword ptr [eax]
 0055B226    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B229    lea         eax,[ebp-64]
 0055B22C    push        eax
 0055B22D    mov         eax,[0056E344];^gvar_0059BF5C
 0055B232    mov         eax,dword ptr [eax+16]
 0055B235    mov         dword ptr [ebp-58],eax
 0055B238    mov         byte ptr [ebp-54],0
 0055B23C    mov         eax,[0056E344];^gvar_0059BF5C
 0055B241    mov         eax,dword ptr [eax+16]
 0055B244    xor         edx,edx
 0055B246    push        edx
 0055B247    push        eax
 0055B248    lea         eax,[ebp-68]
 0055B24B    call        IntToStr
 0055B250    mov         eax,dword ptr [ebp-68]
 0055B253    mov         dword ptr [ebp-50],eax
 0055B256    mov         byte ptr [ebp-4C],0B
 0055B25A    mov         eax,[0056E344];^gvar_0059BF5C
 0055B25F    mov         eax,dword ptr [eax+16]
 0055B262    mov         ecx,1DCD65
 0055B267    xor         edx,edx
 0055B269    div         eax,ecx
 0055B26B    mov         dword ptr [ebp-48],eax
 0055B26E    mov         byte ptr [ebp-44],0
 0055B272    lea         edx,[ebp-58]
 0055B275    mov         ecx,2
 0055B27A    mov         eax,55CFBC;'  target_max_fmt_LBAs = 0x%X (%s) %dGb'
 0055B27F    call        0040D630
 0055B284    mov         edx,dword ptr [ebp-64]
 0055B287    mov         eax,dword ptr [ebp-4]
 0055B28A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B290    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B296    mov         ecx,dword ptr [eax]
 0055B298    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B29B    lea         eax,[ebp-6C]
 0055B29E    push        eax
 0055B29F    mov         eax,[0056E344];^gvar_0059BF5C
 0055B2A4    movzx       eax,word ptr [eax+1E]
 0055B2A8    mov         dword ptr [ebp-14],eax
 0055B2AB    mov         byte ptr [ebp-10],0
 0055B2AF    lea         edx,[ebp-14]
 0055B2B2    xor         ecx,ecx
 0055B2B4    mov         eax,55CFEC;'  hq_capacity_selection = 0x%X'
 0055B2B9    call        0040D630
 0055B2BE    mov         edx,dword ptr [ebp-6C]
 0055B2C1    mov         eax,dword ptr [ebp-4]
 0055B2C4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B2CA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B2D0    mov         ecx,dword ptr [eax]
 0055B2D2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B2D5    lea         eax,[ebp-70]
 0055B2D8    push        eax
 0055B2D9    mov         eax,[0056E344];^gvar_0059BF5C
 0055B2DE    mov         eax,dword ptr [eax+20]
 0055B2E1    mov         dword ptr [ebp-58],eax
 0055B2E4    mov         byte ptr [ebp-54],0
 0055B2E8    mov         eax,[0056E344];^gvar_0059BF5C
 0055B2ED    mov         eax,dword ptr [eax+20]
 0055B2F0    xor         edx,edx
 0055B2F2    push        edx
 0055B2F3    push        eax
 0055B2F4    lea         eax,[ebp-74]
 0055B2F7    call        IntToStr
 0055B2FC    mov         eax,dword ptr [ebp-74]
 0055B2FF    mov         dword ptr [ebp-50],eax
 0055B302    mov         byte ptr [ebp-4C],0B
 0055B306    mov         eax,[0056E344];^gvar_0059BF5C
 0055B30B    mov         eax,dword ptr [eax+20]
 0055B30E    mov         ecx,1DCD65
 0055B313    xor         edx,edx
 0055B315    div         eax,ecx
 0055B317    mov         dword ptr [ebp-48],eax
 0055B31A    mov         byte ptr [ebp-44],0
 0055B31E    lea         edx,[ebp-58]
 0055B321    mov         ecx,2
 0055B326    mov         eax,55D014;'  HQ_max_fmt_LBAs = 0x%04X (%s) %dGb'
 0055B32B    call        0040D630
 0055B330    mov         edx,dword ptr [ebp-70]
 0055B333    mov         eax,dword ptr [ebp-4]
 0055B336    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B33C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B342    mov         ecx,dword ptr [eax]
 0055B344    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B347    mov         eax,dword ptr [ebp-4]
 0055B34A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B350    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B356    xor         edx,edx
 0055B358    mov         ecx,dword ptr [eax]
 0055B35A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B35D    lea         eax,[ebp-78]
 0055B360    push        eax
 0055B361    mov         eax,[0056E344];^gvar_0059BF5C
 0055B366    mov         eax,dword ptr [eax+32]
 0055B369    mov         dword ptr [ebp-38],eax
 0055B36C    mov         byte ptr [ebp-34],0
 0055B370    mov         eax,[0056E344];^gvar_0059BF5C
 0055B375    mov         eax,dword ptr [eax+32]
 0055B378    mov         dword ptr [ebp-30],eax
 0055B37B    mov         byte ptr [ebp-2C],0
 0055B37F    lea         edx,[ebp-38]
 0055B382    mov         ecx,1
 0055B387    mov         eax,55D044;'  Zone 0 DTPI = 0x%X (%d)'
 0055B38C    call        0040D630
 0055B391    mov         edx,dword ptr [ebp-78]
 0055B394    mov         eax,dword ptr [ebp-4]
 0055B397    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B39D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B3A3    mov         ecx,dword ptr [eax]
 0055B3A5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B3A8    lea         eax,[ebp-7C]
 0055B3AB    push        eax
 0055B3AC    mov         eax,[0056E344];^gvar_0059BF5C
 0055B3B1    mov         eax,dword ptr [eax+36]
 0055B3B4    mov         dword ptr [ebp-38],eax
 0055B3B7    mov         byte ptr [ebp-34],0
 0055B3BB    mov         eax,[0056E344];^gvar_0059BF5C
 0055B3C0    mov         eax,dword ptr [eax+36]
 0055B3C3    mov         dword ptr [ebp-30],eax
 0055B3C6    mov         byte ptr [ebp-2C],0
 0055B3CA    lea         edx,[ebp-38]
 0055B3CD    mov         ecx,1
 0055B3D2    mov         eax,55D068;'  Zone 0 KFCI = 0x%X (%d)'
 0055B3D7    call        0040D630
 0055B3DC    mov         edx,dword ptr [ebp-7C]
 0055B3DF    mov         eax,dword ptr [ebp-4]
 0055B3E2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B3E8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B3EE    mov         ecx,dword ptr [eax]
 0055B3F0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B3F3    mov         eax,dword ptr [ebp-4]
 0055B3F6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B3FC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B402    xor         edx,edx
 0055B404    mov         ecx,dword ptr [eax]
 0055B406    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B409    lea         eax,[ebp-80]
 0055B40C    push        eax
 0055B40D    mov         eax,[0056E344];^gvar_0059BF5C
 0055B412    mov         eax,dword ptr [eax+3A]
 0055B415    mov         dword ptr [ebp-38],eax
 0055B418    mov         byte ptr [ebp-34],0
 0055B41C    mov         eax,[0056E344];^gvar_0059BF5C
 0055B421    mov         eax,dword ptr [eax+3A]
 0055B424    mov         dword ptr [ebp-30],eax
 0055B427    mov         byte ptr [ebp-2C],0
 0055B42B    lea         edx,[ebp-38]
 0055B42E    mov         ecx,1
 0055B433    mov         eax,55D08C;'  cur_svo_TPI = 0x%X (%d)'
 0055B438    call        0040D630
 0055B43D    mov         edx,dword ptr [ebp-80]
 0055B440    mov         eax,dword ptr [ebp-4]
 0055B443    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B449    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B44F    mov         ecx,dword ptr [eax]
 0055B451    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B454    mov         eax,dword ptr [ebp-4]
 0055B457    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B45D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B463    xor         edx,edx
 0055B465    mov         ecx,dword ptr [eax]
 0055B467    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B46A    lea         eax,[ebp-84]
 0055B470    push        eax
 0055B471    mov         eax,[0056E344];^gvar_0059BF5C
 0055B476    mov         eax,dword ptr [eax+3E]
 0055B479    mov         dword ptr [ebp-38],eax
 0055B47C    mov         byte ptr [ebp-34],0
 0055B480    mov         eax,[0056E344];^gvar_0059BF5C
 0055B485    mov         eax,dword ptr [eax+3E]
 0055B488    mov         dword ptr [ebp-30],eax
 0055B48B    mov         byte ptr [ebp-2C],0
 0055B48F    lea         edx,[ebp-38]
 0055B492    mov         ecx,1
 0055B497    mov         eax,55D0B0;'  cur_data_TPI_0 = 0x%X (%d)'
 0055B49C    call        0040D630
 0055B4A1    mov         edx,dword ptr [ebp-84]
 0055B4A7    mov         eax,dword ptr [ebp-4]
 0055B4AA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B4B0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B4B6    mov         ecx,dword ptr [eax]
 0055B4B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B4BB    lea         eax,[ebp-88]
 0055B4C1    push        eax
 0055B4C2    mov         eax,[0056E344];^gvar_0059BF5C
 0055B4C7    mov         eax,dword ptr [eax+42]
 0055B4CA    mov         dword ptr [ebp-38],eax
 0055B4CD    mov         byte ptr [ebp-34],0
 0055B4D1    mov         eax,[0056E344];^gvar_0059BF5C
 0055B4D6    mov         eax,dword ptr [eax+42]
 0055B4D9    mov         dword ptr [ebp-30],eax
 0055B4DC    mov         byte ptr [ebp-2C],0
 0055B4E0    lea         edx,[ebp-38]
 0055B4E3    mov         ecx,1
 0055B4E8    mov         eax,55D0D8;'  cur_data_TPI_1 = 0x%X (%d)'
 0055B4ED    call        0040D630
 0055B4F2    mov         edx,dword ptr [ebp-88]
 0055B4F8    mov         eax,dword ptr [ebp-4]
 0055B4FB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B501    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B507    mov         ecx,dword ptr [eax]
 0055B509    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B50C    lea         eax,[ebp-8C]
 0055B512    push        eax
 0055B513    mov         eax,[0056E344];^gvar_0059BF5C
 0055B518    mov         eax,dword ptr [eax+46]
 0055B51B    mov         dword ptr [ebp-38],eax
 0055B51E    mov         byte ptr [ebp-34],0
 0055B522    mov         eax,[0056E344];^gvar_0059BF5C
 0055B527    mov         eax,dword ptr [eax+46]
 0055B52A    mov         dword ptr [ebp-30],eax
 0055B52D    mov         byte ptr [ebp-2C],0
 0055B531    lea         edx,[ebp-38]
 0055B534    mov         ecx,1
 0055B539    mov         eax,55D100;'  cur_data_TPI_2 = 0x%X (%d)'
 0055B53E    call        0040D630
 0055B543    mov         edx,dword ptr [ebp-8C]
 0055B549    mov         eax,dword ptr [ebp-4]
 0055B54C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B552    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B558    mov         ecx,dword ptr [eax]
 0055B55A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B55D    lea         eax,[ebp-90]
 0055B563    push        eax
 0055B564    mov         eax,[0056E344];^gvar_0059BF5C
 0055B569    mov         eax,dword ptr [eax+4A]
 0055B56C    mov         dword ptr [ebp-38],eax
 0055B56F    mov         byte ptr [ebp-34],0
 0055B573    mov         eax,[0056E344];^gvar_0059BF5C
 0055B578    mov         eax,dword ptr [eax+4A]
 0055B57B    mov         dword ptr [ebp-30],eax
 0055B57E    mov         byte ptr [ebp-2C],0
 0055B582    lea         edx,[ebp-38]
 0055B585    mov         ecx,1
 0055B58A    mov         eax,55D128;'  cur_data_TPI_3 = 0x%X (%d)'
 0055B58F    call        0040D630
 0055B594    mov         edx,dword ptr [ebp-90]
 0055B59A    mov         eax,dword ptr [ebp-4]
 0055B59D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B5A3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B5A9    mov         ecx,dword ptr [eax]
 0055B5AB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B5AE    lea         eax,[ebp-94]
 0055B5B4    push        eax
 0055B5B5    mov         eax,[0056E344];^gvar_0059BF5C
 0055B5BA    mov         eax,dword ptr [eax+4E]
 0055B5BD    mov         dword ptr [ebp-38],eax
 0055B5C0    mov         byte ptr [ebp-34],0
 0055B5C4    mov         eax,[0056E344];^gvar_0059BF5C
 0055B5C9    mov         eax,dword ptr [eax+4E]
 0055B5CC    mov         dword ptr [ebp-30],eax
 0055B5CF    mov         byte ptr [ebp-2C],0
 0055B5D3    lea         edx,[ebp-38]
 0055B5D6    mov         ecx,1
 0055B5DB    mov         eax,55D150;'  cur_data_TPI_4 = 0x%X (%d)'
 0055B5E0    call        0040D630
 0055B5E5    mov         edx,dword ptr [ebp-94]
 0055B5EB    mov         eax,dword ptr [ebp-4]
 0055B5EE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B5F4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B5FA    mov         ecx,dword ptr [eax]
 0055B5FC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B5FF    lea         eax,[ebp-98]
 0055B605    push        eax
 0055B606    mov         eax,[0056E344];^gvar_0059BF5C
 0055B60B    mov         eax,dword ptr [eax+52]
 0055B60E    mov         dword ptr [ebp-38],eax
 0055B611    mov         byte ptr [ebp-34],0
 0055B615    mov         eax,[0056E344];^gvar_0059BF5C
 0055B61A    mov         eax,dword ptr [eax+52]
 0055B61D    mov         dword ptr [ebp-30],eax
 0055B620    mov         byte ptr [ebp-2C],0
 0055B624    lea         edx,[ebp-38]
 0055B627    mov         ecx,1
 0055B62C    mov         eax,55D178;'  cur_data_TPI_5 = 0x%X (%d)'
 0055B631    call        0040D630
 0055B636    mov         edx,dword ptr [ebp-98]
 0055B63C    mov         eax,dword ptr [ebp-4]
 0055B63F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B645    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B64B    mov         ecx,dword ptr [eax]
 0055B64D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B650    lea         eax,[ebp-9C]
 0055B656    push        eax
 0055B657    mov         eax,[0056E344];^gvar_0059BF5C
 0055B65C    mov         eax,dword ptr [eax+56]
 0055B65F    mov         dword ptr [ebp-38],eax
 0055B662    mov         byte ptr [ebp-34],0
 0055B666    mov         eax,[0056E344];^gvar_0059BF5C
 0055B66B    mov         eax,dword ptr [eax+56]
 0055B66E    mov         dword ptr [ebp-30],eax
 0055B671    mov         byte ptr [ebp-2C],0
 0055B675    lea         edx,[ebp-38]
 0055B678    mov         ecx,1
 0055B67D    mov         eax,55D1A0;'  cur_data_TPI_6 = 0x%X (%d)'
 0055B682    call        0040D630
 0055B687    mov         edx,dword ptr [ebp-9C]
 0055B68D    mov         eax,dword ptr [ebp-4]
 0055B690    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B696    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B69C    mov         ecx,dword ptr [eax]
 0055B69E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B6A1    lea         eax,[ebp-0A0]
 0055B6A7    push        eax
 0055B6A8    mov         eax,[0056E344];^gvar_0059BF5C
 0055B6AD    mov         eax,dword ptr [eax+5A]
 0055B6B0    mov         dword ptr [ebp-38],eax
 0055B6B3    mov         byte ptr [ebp-34],0
 0055B6B7    mov         eax,[0056E344];^gvar_0059BF5C
 0055B6BC    mov         eax,dword ptr [eax+5A]
 0055B6BF    mov         dword ptr [ebp-30],eax
 0055B6C2    mov         byte ptr [ebp-2C],0
 0055B6C6    lea         edx,[ebp-38]
 0055B6C9    mov         ecx,1
 0055B6CE    mov         eax,55D1C8;'  cur_data_TPI_7 = 0x%X (%d)'
 0055B6D3    call        0040D630
 0055B6D8    mov         edx,dword ptr [ebp-0A0]
 0055B6DE    mov         eax,dword ptr [ebp-4]
 0055B6E1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B6E7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B6ED    mov         ecx,dword ptr [eax]
 0055B6EF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B6F2    mov         eax,dword ptr [ebp-4]
 0055B6F5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B6FB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B701    xor         edx,edx
 0055B703    mov         ecx,dword ptr [eax]
 0055B705    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B708    lea         eax,[ebp-0A4]
 0055B70E    push        eax
 0055B70F    mov         eax,[0056E344];^gvar_0059BF5C
 0055B714    movzx       eax,word ptr [eax+66]
 0055B718    mov         dword ptr [ebp-58],eax
 0055B71B    mov         byte ptr [ebp-54],0
 0055B71F    mov         eax,[0056E344];^gvar_0059BF5C
 0055B724    movzx       eax,word ptr [eax+66]
 0055B728    mov         ecx,0A
 0055B72D    xor         edx,edx
 0055B72F    div         eax,ecx
 0055B731    mov         dword ptr [ebp-50],eax
 0055B734    mov         byte ptr [ebp-4C],0
 0055B738    mov         eax,[0056E344];^gvar_0059BF5C
 0055B73D    movzx       eax,word ptr [eax+66]
 0055B741    mov         ecx,0A
 0055B746    xor         edx,edx
 0055B748    div         eax,ecx
 0055B74A    mov         dword ptr [ebp-48],edx
 0055B74D    mov         byte ptr [ebp-44],0
 0055B751    lea         edx,[ebp-58]
 0055B754    mov         ecx,2
 0055B759    mov         eax,55D1F0;'  cur_KFCI_0 = 0x%X (%d.%dGb)'
 0055B75E    call        0040D630
 0055B763    mov         edx,dword ptr [ebp-0A4]
 0055B769    mov         eax,dword ptr [ebp-4]
 0055B76C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B772    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B778    mov         ecx,dword ptr [eax]
 0055B77A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B77D    lea         eax,[ebp-0A8]
 0055B783    push        eax
 0055B784    mov         eax,[0056E344];^gvar_0059BF5C
 0055B789    movzx       eax,word ptr [eax+68]
 0055B78D    mov         dword ptr [ebp-58],eax
 0055B790    mov         byte ptr [ebp-54],0
 0055B794    mov         eax,[0056E344];^gvar_0059BF5C
 0055B799    movzx       eax,word ptr [eax+68]
 0055B79D    mov         ecx,0A
 0055B7A2    xor         edx,edx
 0055B7A4    div         eax,ecx
 0055B7A6    mov         dword ptr [ebp-50],eax
 0055B7A9    mov         byte ptr [ebp-4C],0
 0055B7AD    mov         eax,[0056E344];^gvar_0059BF5C
 0055B7B2    movzx       eax,word ptr [eax+68]
 0055B7B6    mov         ecx,0A
 0055B7BB    xor         edx,edx
 0055B7BD    div         eax,ecx
 0055B7BF    mov         dword ptr [ebp-48],edx
 0055B7C2    mov         byte ptr [ebp-44],0
 0055B7C6    lea         edx,[ebp-58]
 0055B7C9    mov         ecx,2
 0055B7CE    mov         eax,55D218;'  cur_KFCI_1 = 0x%X (%d.%dGb)'
 0055B7D3    call        0040D630
 0055B7D8    mov         edx,dword ptr [ebp-0A8]
 0055B7DE    mov         eax,dword ptr [ebp-4]
 0055B7E1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B7E7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B7ED    mov         ecx,dword ptr [eax]
 0055B7EF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B7F2    lea         eax,[ebp-0AC]
 0055B7F8    push        eax
 0055B7F9    mov         eax,[0056E344];^gvar_0059BF5C
 0055B7FE    movzx       eax,word ptr [eax+6A]
 0055B802    mov         dword ptr [ebp-58],eax
 0055B805    mov         byte ptr [ebp-54],0
 0055B809    mov         eax,[0056E344];^gvar_0059BF5C
 0055B80E    movzx       eax,word ptr [eax+6A]
 0055B812    mov         ecx,0A
 0055B817    xor         edx,edx
 0055B819    div         eax,ecx
 0055B81B    mov         dword ptr [ebp-50],eax
 0055B81E    mov         byte ptr [ebp-4C],0
 0055B822    mov         eax,[0056E344];^gvar_0059BF5C
 0055B827    movzx       eax,word ptr [eax+6A]
 0055B82B    mov         ecx,0A
 0055B830    xor         edx,edx
 0055B832    div         eax,ecx
 0055B834    mov         dword ptr [ebp-48],edx
 0055B837    mov         byte ptr [ebp-44],0
 0055B83B    lea         edx,[ebp-58]
 0055B83E    mov         ecx,2
 0055B843    mov         eax,55D240;'  cur_KFCI_2 = 0x%X (%d.%dGb)'
 0055B848    call        0040D630
 0055B84D    mov         edx,dword ptr [ebp-0AC]
 0055B853    mov         eax,dword ptr [ebp-4]
 0055B856    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B85C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B862    mov         ecx,dword ptr [eax]
 0055B864    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B867    lea         eax,[ebp-0B0]
 0055B86D    push        eax
 0055B86E    mov         eax,[0056E344];^gvar_0059BF5C
 0055B873    movzx       eax,word ptr [eax+6C]
 0055B877    mov         dword ptr [ebp-58],eax
 0055B87A    mov         byte ptr [ebp-54],0
 0055B87E    mov         eax,[0056E344];^gvar_0059BF5C
 0055B883    movzx       eax,word ptr [eax+6C]
 0055B887    mov         ecx,0A
 0055B88C    xor         edx,edx
 0055B88E    div         eax,ecx
 0055B890    mov         dword ptr [ebp-50],eax
 0055B893    mov         byte ptr [ebp-4C],0
 0055B897    mov         eax,[0056E344];^gvar_0059BF5C
 0055B89C    movzx       eax,word ptr [eax+6C]
 0055B8A0    mov         ecx,0A
 0055B8A5    xor         edx,edx
 0055B8A7    div         eax,ecx
 0055B8A9    mov         dword ptr [ebp-48],edx
 0055B8AC    mov         byte ptr [ebp-44],0
 0055B8B0    lea         edx,[ebp-58]
 0055B8B3    mov         ecx,2
 0055B8B8    mov         eax,55D268;'  cur_KFCI_3 = 0x%X (%d.%dGb)'
 0055B8BD    call        0040D630
 0055B8C2    mov         edx,dword ptr [ebp-0B0]
 0055B8C8    mov         eax,dword ptr [ebp-4]
 0055B8CB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B8D1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B8D7    mov         ecx,dword ptr [eax]
 0055B8D9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B8DC    lea         eax,[ebp-0B4]
 0055B8E2    push        eax
 0055B8E3    mov         eax,[0056E344];^gvar_0059BF5C
 0055B8E8    movzx       eax,word ptr [eax+6E]
 0055B8EC    mov         dword ptr [ebp-58],eax
 0055B8EF    mov         byte ptr [ebp-54],0
 0055B8F3    mov         eax,[0056E344];^gvar_0059BF5C
 0055B8F8    movzx       eax,word ptr [eax+6E]
 0055B8FC    mov         ecx,0A
 0055B901    xor         edx,edx
 0055B903    div         eax,ecx
 0055B905    mov         dword ptr [ebp-50],eax
 0055B908    mov         byte ptr [ebp-4C],0
 0055B90C    mov         eax,[0056E344];^gvar_0059BF5C
 0055B911    movzx       eax,word ptr [eax+6E]
 0055B915    mov         ecx,0A
 0055B91A    xor         edx,edx
 0055B91C    div         eax,ecx
 0055B91E    mov         dword ptr [ebp-48],edx
 0055B921    mov         byte ptr [ebp-44],0
 0055B925    lea         edx,[ebp-58]
 0055B928    mov         ecx,2
 0055B92D    mov         eax,55D290;'  cur_KFCI_4 = 0x%X (%d.%dGb)'
 0055B932    call        0040D630
 0055B937    mov         edx,dword ptr [ebp-0B4]
 0055B93D    mov         eax,dword ptr [ebp-4]
 0055B940    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B946    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B94C    mov         ecx,dword ptr [eax]
 0055B94E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B951    lea         eax,[ebp-0B8]
 0055B957    push        eax
 0055B958    mov         eax,[0056E344];^gvar_0059BF5C
 0055B95D    movzx       eax,word ptr [eax+70]
 0055B961    mov         dword ptr [ebp-58],eax
 0055B964    mov         byte ptr [ebp-54],0
 0055B968    mov         eax,[0056E344];^gvar_0059BF5C
 0055B96D    movzx       eax,word ptr [eax+70]
 0055B971    mov         ecx,0A
 0055B976    xor         edx,edx
 0055B978    div         eax,ecx
 0055B97A    mov         dword ptr [ebp-50],eax
 0055B97D    mov         byte ptr [ebp-4C],0
 0055B981    mov         eax,[0056E344];^gvar_0059BF5C
 0055B986    movzx       eax,word ptr [eax+70]
 0055B98A    mov         ecx,0A
 0055B98F    xor         edx,edx
 0055B991    div         eax,ecx
 0055B993    mov         dword ptr [ebp-48],edx
 0055B996    mov         byte ptr [ebp-44],0
 0055B99A    lea         edx,[ebp-58]
 0055B99D    mov         ecx,2
 0055B9A2    mov         eax,55D2B8;'  cur_KFCI_5 = 0x%X (%d.%dGb)'
 0055B9A7    call        0040D630
 0055B9AC    mov         edx,dword ptr [ebp-0B8]
 0055B9B2    mov         eax,dword ptr [ebp-4]
 0055B9B5    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055B9BB    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055B9C1    mov         ecx,dword ptr [eax]
 0055B9C3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055B9C6    lea         eax,[ebp-0BC]
 0055B9CC    push        eax
 0055B9CD    mov         eax,[0056E344];^gvar_0059BF5C
 0055B9D2    movzx       eax,word ptr [eax+72]
 0055B9D6    mov         dword ptr [ebp-58],eax
 0055B9D9    mov         byte ptr [ebp-54],0
 0055B9DD    mov         eax,[0056E344];^gvar_0059BF5C
 0055B9E2    movzx       eax,word ptr [eax+72]
 0055B9E6    mov         ecx,0A
 0055B9EB    xor         edx,edx
 0055B9ED    div         eax,ecx
 0055B9EF    mov         dword ptr [ebp-50],eax
 0055B9F2    mov         byte ptr [ebp-4C],0
 0055B9F6    mov         eax,[0056E344];^gvar_0059BF5C
 0055B9FB    movzx       eax,word ptr [eax+72]
 0055B9FF    mov         ecx,0A
 0055BA04    xor         edx,edx
 0055BA06    div         eax,ecx
 0055BA08    mov         dword ptr [ebp-48],edx
 0055BA0B    mov         byte ptr [ebp-44],0
 0055BA0F    lea         edx,[ebp-58]
 0055BA12    mov         ecx,2
 0055BA17    mov         eax,55D2E0;'  cur_KFCI_6 = 0x%X (%d.%dGb)'
 0055BA1C    call        0040D630
 0055BA21    mov         edx,dword ptr [ebp-0BC]
 0055BA27    mov         eax,dword ptr [ebp-4]
 0055BA2A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BA30    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BA36    mov         ecx,dword ptr [eax]
 0055BA38    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BA3B    lea         eax,[ebp-0C0]
 0055BA41    push        eax
 0055BA42    mov         eax,[0056E344];^gvar_0059BF5C
 0055BA47    movzx       eax,word ptr [eax+74]
 0055BA4B    mov         dword ptr [ebp-58],eax
 0055BA4E    mov         byte ptr [ebp-54],0
 0055BA52    mov         eax,[0056E344];^gvar_0059BF5C
 0055BA57    movzx       eax,word ptr [eax+74]
 0055BA5B    mov         ecx,0A
 0055BA60    xor         edx,edx
 0055BA62    div         eax,ecx
 0055BA64    mov         dword ptr [ebp-50],eax
 0055BA67    mov         byte ptr [ebp-4C],0
 0055BA6B    mov         eax,[0056E344];^gvar_0059BF5C
 0055BA70    movzx       eax,word ptr [eax+74]
 0055BA74    mov         ecx,0A
 0055BA79    xor         edx,edx
 0055BA7B    div         eax,ecx
 0055BA7D    mov         dword ptr [ebp-48],edx
 0055BA80    mov         byte ptr [ebp-44],0
 0055BA84    lea         edx,[ebp-58]
 0055BA87    mov         ecx,2
 0055BA8C    mov         eax,55D308;'  cur_KFCI_7 = 0x%X (%d.%dGb)'
 0055BA91    call        0040D630
 0055BA96    mov         edx,dword ptr [ebp-0C0]
 0055BA9C    mov         eax,dword ptr [ebp-4]
 0055BA9F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BAA5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BAAB    mov         ecx,dword ptr [eax]
 0055BAAD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BAB0    lea         eax,[ebp-0C4]
 0055BAB6    push        eax
 0055BAB7    mov         eax,[0056E344];^gvar_0059BF5C
 0055BABC    movzx       eax,word ptr [eax+76]
 0055BAC0    mov         dword ptr [ebp-58],eax
 0055BAC3    mov         byte ptr [ebp-54],0
 0055BAC7    mov         eax,[0056E344];^gvar_0059BF5C
 0055BACC    movzx       eax,word ptr [eax+76]
 0055BAD0    mov         ecx,0A
 0055BAD5    xor         edx,edx
 0055BAD7    div         eax,ecx
 0055BAD9    mov         dword ptr [ebp-50],eax
 0055BADC    mov         byte ptr [ebp-4C],0
 0055BAE0    mov         eax,[0056E344];^gvar_0059BF5C
 0055BAE5    movzx       eax,word ptr [eax+76]
 0055BAE9    mov         ecx,0A
 0055BAEE    xor         edx,edx
 0055BAF0    div         eax,ecx
 0055BAF2    mov         dword ptr [ebp-48],edx
 0055BAF5    mov         byte ptr [ebp-44],0
 0055BAF9    lea         edx,[ebp-58]
 0055BAFC    mov         ecx,2
 0055BB01    mov         eax,55D330;'  cur_KFCI_8 = 0x%X (%d.%dGb)'
 0055BB06    call        0040D630
 0055BB0B    mov         edx,dword ptr [ebp-0C4]
 0055BB11    mov         eax,dword ptr [ebp-4]
 0055BB14    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BB1A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BB20    mov         ecx,dword ptr [eax]
 0055BB22    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BB25    lea         eax,[ebp-0C8]
 0055BB2B    push        eax
 0055BB2C    mov         eax,[0056E344];^gvar_0059BF5C
 0055BB31    movzx       eax,word ptr [eax+78]
 0055BB35    mov         dword ptr [ebp-58],eax
 0055BB38    mov         byte ptr [ebp-54],0
 0055BB3C    mov         eax,[0056E344];^gvar_0059BF5C
 0055BB41    movzx       eax,word ptr [eax+78]
 0055BB45    mov         ecx,0A
 0055BB4A    xor         edx,edx
 0055BB4C    div         eax,ecx
 0055BB4E    mov         dword ptr [ebp-50],eax
 0055BB51    mov         byte ptr [ebp-4C],0
 0055BB55    mov         eax,[0056E344];^gvar_0059BF5C
 0055BB5A    movzx       eax,word ptr [eax+78]
 0055BB5E    mov         ecx,0A
 0055BB63    xor         edx,edx
 0055BB65    div         eax,ecx
 0055BB67    mov         dword ptr [ebp-48],edx
 0055BB6A    mov         byte ptr [ebp-44],0
 0055BB6E    lea         edx,[ebp-58]
 0055BB71    mov         ecx,2
 0055BB76    mov         eax,55D358;'  cur_KFCI_9 = 0x%X (%d.%dGb)'
 0055BB7B    call        0040D630
 0055BB80    mov         edx,dword ptr [ebp-0C8]
 0055BB86    mov         eax,dword ptr [ebp-4]
 0055BB89    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BB8F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BB95    mov         ecx,dword ptr [eax]
 0055BB97    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BB9A    mov         eax,dword ptr [ebp-4]
 0055BB9D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BBA3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BBA9    xor         edx,edx
 0055BBAB    mov         ecx,dword ptr [eax]
 0055BBAD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BBB0    lea         eax,[ebp-0CC]
 0055BBB6    push        eax
 0055BBB7    mov         eax,[0056E344];^gvar_0059BF5C
 0055BBBC    mov         eax,dword ptr [eax+7A]
 0055BBBF    mov         dword ptr [ebp-58],eax
 0055BBC2    mov         byte ptr [ebp-54],0
 0055BBC6    mov         eax,[0056E344];^gvar_0059BF5C
 0055BBCB    mov         eax,dword ptr [eax+7A]
 0055BBCE    mov         dword ptr [ebp-50],eax
 0055BBD1    mov         byte ptr [ebp-4C],0
 0055BBD5    mov         eax,[0056E344];^gvar_0059BF5C
 0055BBDA    mov         eax,dword ptr [eax+7A]
 0055BBDD    mov         ecx,1DCD65
 0055BBE2    xor         edx,edx
 0055BBE4    div         eax,ecx
 0055BBE6    mov         dword ptr [ebp-48],eax
 0055BBE9    mov         byte ptr [ebp-44],0
 0055BBED    lea         edx,[ebp-58]
 0055BBF0    mov         ecx,2
 0055BBF5    mov         eax,55D380;'  max_LBA_for_head_0 = 0x%X (%d) %dGb'
 0055BBFA    call        0040D630
 0055BBFF    mov         edx,dword ptr [ebp-0CC]
 0055BC05    mov         eax,dword ptr [ebp-4]
 0055BC08    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BC0E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BC14    mov         ecx,dword ptr [eax]
 0055BC16    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BC19    lea         eax,[ebp-0D0]
 0055BC1F    push        eax
 0055BC20    mov         eax,[0056E344];^gvar_0059BF5C
 0055BC25    mov         eax,dword ptr [eax+7E]
 0055BC28    mov         dword ptr [ebp-58],eax
 0055BC2B    mov         byte ptr [ebp-54],0
 0055BC2F    mov         eax,[0056E344];^gvar_0059BF5C
 0055BC34    mov         eax,dword ptr [eax+7E]
 0055BC37    mov         dword ptr [ebp-50],eax
 0055BC3A    mov         byte ptr [ebp-4C],0
 0055BC3E    mov         eax,[0056E344];^gvar_0059BF5C
 0055BC43    mov         eax,dword ptr [eax+7E]
 0055BC46    mov         ecx,1DCD65
 0055BC4B    xor         edx,edx
 0055BC4D    div         eax,ecx
 0055BC4F    mov         dword ptr [ebp-48],eax
 0055BC52    mov         byte ptr [ebp-44],0
 0055BC56    lea         edx,[ebp-58]
 0055BC59    mov         ecx,2
 0055BC5E    mov         eax,55D3B0;'  max_LBA_for_head_1 = 0x%X (%d) %dGb'
 0055BC63    call        0040D630
 0055BC68    mov         edx,dword ptr [ebp-0D0]
 0055BC6E    mov         eax,dword ptr [ebp-4]
 0055BC71    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BC77    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BC7D    mov         ecx,dword ptr [eax]
 0055BC7F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BC82    lea         eax,[ebp-0D4]
 0055BC88    push        eax
 0055BC89    mov         eax,[0056E344];^gvar_0059BF5C
 0055BC8E    mov         eax,dword ptr [eax+82]
 0055BC94    mov         dword ptr [ebp-58],eax
 0055BC97    mov         byte ptr [ebp-54],0
 0055BC9B    mov         eax,[0056E344];^gvar_0059BF5C
 0055BCA0    mov         eax,dword ptr [eax+82]
 0055BCA6    mov         dword ptr [ebp-50],eax
 0055BCA9    mov         byte ptr [ebp-4C],0
 0055BCAD    mov         eax,[0056E344];^gvar_0059BF5C
 0055BCB2    mov         eax,dword ptr [eax+82]
 0055BCB8    mov         ecx,1DCD65
 0055BCBD    xor         edx,edx
 0055BCBF    div         eax,ecx
 0055BCC1    mov         dword ptr [ebp-48],eax
 0055BCC4    mov         byte ptr [ebp-44],0
 0055BCC8    lea         edx,[ebp-58]
 0055BCCB    mov         ecx,2
 0055BCD0    mov         eax,55D3E0;'  max_LBA_for_head_2 = 0x%X (%d) %dGb'
 0055BCD5    call        0040D630
 0055BCDA    mov         edx,dword ptr [ebp-0D4]
 0055BCE0    mov         eax,dword ptr [ebp-4]
 0055BCE3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BCE9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BCEF    mov         ecx,dword ptr [eax]
 0055BCF1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BCF4    lea         eax,[ebp-0D8]
 0055BCFA    push        eax
 0055BCFB    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD00    mov         eax,dword ptr [eax+86]
 0055BD06    mov         dword ptr [ebp-58],eax
 0055BD09    mov         byte ptr [ebp-54],0
 0055BD0D    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD12    mov         eax,dword ptr [eax+86]
 0055BD18    mov         dword ptr [ebp-50],eax
 0055BD1B    mov         byte ptr [ebp-4C],0
 0055BD1F    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD24    mov         eax,dword ptr [eax+86]
 0055BD2A    mov         ecx,1DCD65
 0055BD2F    xor         edx,edx
 0055BD31    div         eax,ecx
 0055BD33    mov         dword ptr [ebp-48],eax
 0055BD36    mov         byte ptr [ebp-44],0
 0055BD3A    lea         edx,[ebp-58]
 0055BD3D    mov         ecx,2
 0055BD42    mov         eax,55D410;'  max_LBA_for_head_3 = 0x%X (%d) %dGb'
 0055BD47    call        0040D630
 0055BD4C    mov         edx,dword ptr [ebp-0D8]
 0055BD52    mov         eax,dword ptr [ebp-4]
 0055BD55    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BD5B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BD61    mov         ecx,dword ptr [eax]
 0055BD63    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BD66    lea         eax,[ebp-0DC]
 0055BD6C    push        eax
 0055BD6D    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD72    mov         eax,dword ptr [eax+8A]
 0055BD78    mov         dword ptr [ebp-58],eax
 0055BD7B    mov         byte ptr [ebp-54],0
 0055BD7F    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD84    mov         eax,dword ptr [eax+8A]
 0055BD8A    mov         dword ptr [ebp-50],eax
 0055BD8D    mov         byte ptr [ebp-4C],0
 0055BD91    mov         eax,[0056E344];^gvar_0059BF5C
 0055BD96    mov         eax,dword ptr [eax+8A]
 0055BD9C    mov         ecx,1DCD65
 0055BDA1    xor         edx,edx
 0055BDA3    div         eax,ecx
 0055BDA5    mov         dword ptr [ebp-48],eax
 0055BDA8    mov         byte ptr [ebp-44],0
 0055BDAC    lea         edx,[ebp-58]
 0055BDAF    mov         ecx,2
 0055BDB4    mov         eax,55D440;'  max_LBA_for_head_4 = 0x%X (%d) %dGb'
 0055BDB9    call        0040D630
 0055BDBE    mov         edx,dword ptr [ebp-0DC]
 0055BDC4    mov         eax,dword ptr [ebp-4]
 0055BDC7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BDCD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BDD3    mov         ecx,dword ptr [eax]
 0055BDD5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BDD8    lea         eax,[ebp-0E0]
 0055BDDE    push        eax
 0055BDDF    mov         eax,[0056E344];^gvar_0059BF5C
 0055BDE4    mov         eax,dword ptr [eax+8E]
 0055BDEA    mov         dword ptr [ebp-58],eax
 0055BDED    mov         byte ptr [ebp-54],0
 0055BDF1    mov         eax,[0056E344];^gvar_0059BF5C
 0055BDF6    mov         eax,dword ptr [eax+8E]
 0055BDFC    mov         dword ptr [ebp-50],eax
 0055BDFF    mov         byte ptr [ebp-4C],0
 0055BE03    mov         eax,[0056E344];^gvar_0059BF5C
 0055BE08    mov         eax,dword ptr [eax+8E]
 0055BE0E    mov         ecx,1DCD65
 0055BE13    xor         edx,edx
 0055BE15    div         eax,ecx
 0055BE17    mov         dword ptr [ebp-48],eax
 0055BE1A    mov         byte ptr [ebp-44],0
 0055BE1E    lea         edx,[ebp-58]
 0055BE21    mov         ecx,2
 0055BE26    mov         eax,55D470;'  max_LBA_for_head_5 = 0x%X (%d) %dGb'
 0055BE2B    call        0040D630
 0055BE30    mov         edx,dword ptr [ebp-0E0]
 0055BE36    mov         eax,dword ptr [ebp-4]
 0055BE39    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BE3F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BE45    mov         ecx,dword ptr [eax]
 0055BE47    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BE4A    lea         eax,[ebp-0E4]
 0055BE50    push        eax
 0055BE51    mov         eax,[0056E344];^gvar_0059BF5C
 0055BE56    mov         eax,dword ptr [eax+92]
 0055BE5C    mov         dword ptr [ebp-58],eax
 0055BE5F    mov         byte ptr [ebp-54],0
 0055BE63    mov         eax,[0056E344];^gvar_0059BF5C
 0055BE68    mov         eax,dword ptr [eax+92]
 0055BE6E    mov         dword ptr [ebp-50],eax
 0055BE71    mov         byte ptr [ebp-4C],0
 0055BE75    mov         eax,[0056E344];^gvar_0059BF5C
 0055BE7A    mov         eax,dword ptr [eax+92]
 0055BE80    mov         ecx,1DCD65
 0055BE85    xor         edx,edx
 0055BE87    div         eax,ecx
 0055BE89    mov         dword ptr [ebp-48],eax
 0055BE8C    mov         byte ptr [ebp-44],0
 0055BE90    lea         edx,[ebp-58]
 0055BE93    mov         ecx,2
 0055BE98    mov         eax,55D4A0;'  max_LBA_for_head_6 = 0x%X (%d) %dGb'
 0055BE9D    call        0040D630
 0055BEA2    mov         edx,dword ptr [ebp-0E4]
 0055BEA8    mov         eax,dword ptr [ebp-4]
 0055BEAB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BEB1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BEB7    mov         ecx,dword ptr [eax]
 0055BEB9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BEBC    lea         eax,[ebp-0E8]
 0055BEC2    push        eax
 0055BEC3    mov         eax,[0056E344];^gvar_0059BF5C
 0055BEC8    mov         eax,dword ptr [eax+96]
 0055BECE    mov         dword ptr [ebp-58],eax
 0055BED1    mov         byte ptr [ebp-54],0
 0055BED5    mov         eax,[0056E344];^gvar_0059BF5C
 0055BEDA    mov         eax,dword ptr [eax+96]
 0055BEE0    mov         dword ptr [ebp-50],eax
 0055BEE3    mov         byte ptr [ebp-4C],0
 0055BEE7    mov         eax,[0056E344];^gvar_0059BF5C
 0055BEEC    mov         eax,dword ptr [eax+96]
 0055BEF2    mov         ecx,1DCD65
 0055BEF7    xor         edx,edx
 0055BEF9    div         eax,ecx
 0055BEFB    mov         dword ptr [ebp-48],eax
 0055BEFE    mov         byte ptr [ebp-44],0
 0055BF02    lea         edx,[ebp-58]
 0055BF05    mov         ecx,2
 0055BF0A    mov         eax,55D4D0;'  max_LBA_for_head_7 = 0x%X (%d) %dGb'
 0055BF0F    call        0040D630
 0055BF14    mov         edx,dword ptr [ebp-0E8]
 0055BF1A    mov         eax,dword ptr [ebp-4]
 0055BF1D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BF23    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BF29    mov         ecx,dword ptr [eax]
 0055BF2B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BF2E    mov         eax,dword ptr [ebp-4]
 0055BF31    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BF37    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BF3D    xor         edx,edx
 0055BF3F    mov         ecx,dword ptr [eax]
 0055BF41    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BF44    lea         eax,[ebp-0EC]
 0055BF4A    push        eax
 0055BF4B    mov         eax,[0056E344];^gvar_0059BF5C
 0055BF50    mov         eax,dword ptr [eax+0A2]
 0055BF56    mov         dword ptr [ebp-38],eax
 0055BF59    mov         byte ptr [ebp-34],0
 0055BF5D    mov         eax,[0056E344];^gvar_0059BF5C
 0055BF62    mov         eax,dword ptr [eax+0A2]
 0055BF68    mov         dword ptr [ebp-30],eax
 0055BF6B    mov         byte ptr [ebp-2C],0
 0055BF6F    lea         edx,[ebp-38]
 0055BF72    mov         ecx,1
 0055BF77    mov         eax,55D500;'  max_user_cyls_for_head_0 = 0x%X (%d)'
 0055BF7C    call        0040D630
 0055BF81    mov         edx,dword ptr [ebp-0EC]
 0055BF87    mov         eax,dword ptr [ebp-4]
 0055BF8A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BF90    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BF96    mov         ecx,dword ptr [eax]
 0055BF98    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BF9B    lea         eax,[ebp-0F0]
 0055BFA1    push        eax
 0055BFA2    mov         eax,[0056E344];^gvar_0059BF5C
 0055BFA7    mov         eax,dword ptr [eax+0A6]
 0055BFAD    mov         dword ptr [ebp-38],eax
 0055BFB0    mov         byte ptr [ebp-34],0
 0055BFB4    mov         eax,[0056E344];^gvar_0059BF5C
 0055BFB9    mov         eax,dword ptr [eax+0A6]
 0055BFBF    mov         dword ptr [ebp-30],eax
 0055BFC2    mov         byte ptr [ebp-2C],0
 0055BFC6    lea         edx,[ebp-38]
 0055BFC9    mov         ecx,1
 0055BFCE    mov         eax,55D530;'  max_user_cyls_for_head_1 = 0x%X (%d)'
 0055BFD3    call        0040D630
 0055BFD8    mov         edx,dword ptr [ebp-0F0]
 0055BFDE    mov         eax,dword ptr [ebp-4]
 0055BFE1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055BFE7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055BFED    mov         ecx,dword ptr [eax]
 0055BFEF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055BFF2    lea         eax,[ebp-0F4]
 0055BFF8    push        eax
 0055BFF9    mov         eax,[0056E344];^gvar_0059BF5C
 0055BFFE    mov         eax,dword ptr [eax+0AA]
 0055C004    mov         dword ptr [ebp-38],eax
 0055C007    mov         byte ptr [ebp-34],0
 0055C00B    mov         eax,[0056E344];^gvar_0059BF5C
 0055C010    mov         eax,dword ptr [eax+0AA]
 0055C016    mov         dword ptr [ebp-30],eax
 0055C019    mov         byte ptr [ebp-2C],0
 0055C01D    lea         edx,[ebp-38]
 0055C020    mov         ecx,1
 0055C025    mov         eax,55D560;'  max_user_cyls_for_head_2 = 0x%X (%d)'
 0055C02A    call        0040D630
 0055C02F    mov         edx,dword ptr [ebp-0F4]
 0055C035    mov         eax,dword ptr [ebp-4]
 0055C038    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C03E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C044    mov         ecx,dword ptr [eax]
 0055C046    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C049    lea         eax,[ebp-0F8]
 0055C04F    push        eax
 0055C050    mov         eax,[0056E344];^gvar_0059BF5C
 0055C055    mov         eax,dword ptr [eax+0AE]
 0055C05B    mov         dword ptr [ebp-38],eax
 0055C05E    mov         byte ptr [ebp-34],0
 0055C062    mov         eax,[0056E344];^gvar_0059BF5C
 0055C067    mov         eax,dword ptr [eax+0AE]
 0055C06D    mov         dword ptr [ebp-30],eax
 0055C070    mov         byte ptr [ebp-2C],0
 0055C074    lea         edx,[ebp-38]
 0055C077    mov         ecx,1
 0055C07C    mov         eax,55D590;'  max_user_cyls_for_head_3 = 0x%X (%d)'
 0055C081    call        0040D630
 0055C086    mov         edx,dword ptr [ebp-0F8]
 0055C08C    mov         eax,dword ptr [ebp-4]
 0055C08F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C095    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C09B    mov         ecx,dword ptr [eax]
 0055C09D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C0A0    lea         eax,[ebp-0FC]
 0055C0A6    push        eax
 0055C0A7    mov         eax,[0056E344];^gvar_0059BF5C
 0055C0AC    mov         eax,dword ptr [eax+0B2]
 0055C0B2    mov         dword ptr [ebp-38],eax
 0055C0B5    mov         byte ptr [ebp-34],0
 0055C0B9    mov         eax,[0056E344];^gvar_0059BF5C
 0055C0BE    mov         eax,dword ptr [eax+0B2]
 0055C0C4    mov         dword ptr [ebp-30],eax
 0055C0C7    mov         byte ptr [ebp-2C],0
 0055C0CB    lea         edx,[ebp-38]
 0055C0CE    mov         ecx,1
 0055C0D3    mov         eax,55D5C0;'  max_user_cyls_for_head_4 = 0x%X (%d)'
 0055C0D8    call        0040D630
 0055C0DD    mov         edx,dword ptr [ebp-0FC]
 0055C0E3    mov         eax,dword ptr [ebp-4]
 0055C0E6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C0EC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C0F2    mov         ecx,dword ptr [eax]
 0055C0F4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C0F7    lea         eax,[ebp-100]
 0055C0FD    push        eax
 0055C0FE    mov         eax,[0056E344];^gvar_0059BF5C
 0055C103    mov         eax,dword ptr [eax+0B6]
 0055C109    mov         dword ptr [ebp-38],eax
 0055C10C    mov         byte ptr [ebp-34],0
 0055C110    mov         eax,[0056E344];^gvar_0059BF5C
 0055C115    mov         eax,dword ptr [eax+0B6]
 0055C11B    mov         dword ptr [ebp-30],eax
 0055C11E    mov         byte ptr [ebp-2C],0
 0055C122    lea         edx,[ebp-38]
 0055C125    mov         ecx,1
 0055C12A    mov         eax,55D5F0;'  max_user_cyls_for_head_5 = 0x%X (%d)'
 0055C12F    call        0040D630
 0055C134    mov         edx,dword ptr [ebp-100]
 0055C13A    mov         eax,dword ptr [ebp-4]
 0055C13D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C143    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C149    mov         ecx,dword ptr [eax]
 0055C14B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C14E    lea         eax,[ebp-104]
 0055C154    push        eax
 0055C155    mov         eax,[0056E344];^gvar_0059BF5C
 0055C15A    mov         eax,dword ptr [eax+0BA]
 0055C160    mov         dword ptr [ebp-38],eax
 0055C163    mov         byte ptr [ebp-34],0
 0055C167    mov         eax,[0056E344];^gvar_0059BF5C
 0055C16C    mov         eax,dword ptr [eax+0BA]
 0055C172    mov         dword ptr [ebp-30],eax
 0055C175    mov         byte ptr [ebp-2C],0
 0055C179    lea         edx,[ebp-38]
 0055C17C    mov         ecx,1
 0055C181    mov         eax,55D620;'  max_user_cyls_for_head_6 = 0x%X (%d)'
 0055C186    call        0040D630
 0055C18B    mov         edx,dword ptr [ebp-104]
 0055C191    mov         eax,dword ptr [ebp-4]
 0055C194    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C19A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C1A0    mov         ecx,dword ptr [eax]
 0055C1A2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C1A5    lea         eax,[ebp-108]
 0055C1AB    push        eax
 0055C1AC    mov         eax,[0056E344];^gvar_0059BF5C
 0055C1B1    mov         eax,dword ptr [eax+0BE]
 0055C1B7    mov         dword ptr [ebp-38],eax
 0055C1BA    mov         byte ptr [ebp-34],0
 0055C1BE    mov         eax,[0056E344];^gvar_0059BF5C
 0055C1C3    mov         eax,dword ptr [eax+0BE]
 0055C1C9    mov         dword ptr [ebp-30],eax
 0055C1CC    mov         byte ptr [ebp-2C],0
 0055C1D0    lea         edx,[ebp-38]
 0055C1D3    mov         ecx,1
 0055C1D8    mov         eax,55D650;'  max_user_cyls_for_head_7 = 0x%X (%d)'
 0055C1DD    call        0040D630
 0055C1E2    mov         edx,dword ptr [ebp-108]
 0055C1E8    mov         eax,dword ptr [ebp-4]
 0055C1EB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C1F1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C1F7    mov         ecx,dword ptr [eax]
 0055C1F9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C1FC    mov         eax,dword ptr [ebp-4]
 0055C1FF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C205    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C20B    xor         edx,edx
 0055C20D    mov         ecx,dword ptr [eax]
 0055C20F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C212    lea         eax,[ebp-10C]
 0055C218    push        eax
 0055C219    mov         eax,[0056E344];^gvar_0059BF5C
 0055C21E    mov         eax,dword ptr [eax+0CA]
 0055C224    mov         dword ptr [ebp-38],eax
 0055C227    mov         byte ptr [ebp-34],0
 0055C22B    mov         eax,[0056E344];^gvar_0059BF5C
 0055C230    mov         eax,dword ptr [eax+0CA]
 0055C236    mov         dword ptr [ebp-30],eax
 0055C239    mov         byte ptr [ebp-2C],0
 0055C23D    lea         edx,[ebp-38]
 0055C240    mov         ecx,1
 0055C245    mov         eax,55D680;'  max_virt_cyls_for_head_0 = 0x%X (%d)'
 0055C24A    call        0040D630
 0055C24F    mov         edx,dword ptr [ebp-10C]
 0055C255    mov         eax,dword ptr [ebp-4]
 0055C258    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C25E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C264    mov         ecx,dword ptr [eax]
 0055C266    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C269    lea         eax,[ebp-110]
 0055C26F    push        eax
 0055C270    mov         eax,[0056E344];^gvar_0059BF5C
 0055C275    mov         eax,dword ptr [eax+0CE]
 0055C27B    mov         dword ptr [ebp-38],eax
 0055C27E    mov         byte ptr [ebp-34],0
 0055C282    mov         eax,[0056E344];^gvar_0059BF5C
 0055C287    mov         eax,dword ptr [eax+0CE]
 0055C28D    mov         dword ptr [ebp-30],eax
 0055C290    mov         byte ptr [ebp-2C],0
 0055C294    lea         edx,[ebp-38]
 0055C297    mov         ecx,1
 0055C29C    mov         eax,55D6B0;'  max_virt_cyls_for_head_1 = 0x%X (%d)'
 0055C2A1    call        0040D630
 0055C2A6    mov         edx,dword ptr [ebp-110]
 0055C2AC    mov         eax,dword ptr [ebp-4]
 0055C2AF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C2B5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C2BB    mov         ecx,dword ptr [eax]
 0055C2BD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C2C0    lea         eax,[ebp-114]
 0055C2C6    push        eax
 0055C2C7    mov         eax,[0056E344];^gvar_0059BF5C
 0055C2CC    mov         eax,dword ptr [eax+0D2]
 0055C2D2    mov         dword ptr [ebp-38],eax
 0055C2D5    mov         byte ptr [ebp-34],0
 0055C2D9    mov         eax,[0056E344];^gvar_0059BF5C
 0055C2DE    mov         eax,dword ptr [eax+0D2]
 0055C2E4    mov         dword ptr [ebp-30],eax
 0055C2E7    mov         byte ptr [ebp-2C],0
 0055C2EB    lea         edx,[ebp-38]
 0055C2EE    mov         ecx,1
 0055C2F3    mov         eax,55D6E0;'  max_virt_cyls_for_head_2 = 0x%X (%d)'
 0055C2F8    call        0040D630
 0055C2FD    mov         edx,dword ptr [ebp-114]
 0055C303    mov         eax,dword ptr [ebp-4]
 0055C306    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C30C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C312    mov         ecx,dword ptr [eax]
 0055C314    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C317    lea         eax,[ebp-118]
 0055C31D    push        eax
 0055C31E    mov         eax,[0056E344];^gvar_0059BF5C
 0055C323    mov         eax,dword ptr [eax+0D6]
 0055C329    mov         dword ptr [ebp-38],eax
 0055C32C    mov         byte ptr [ebp-34],0
 0055C330    mov         eax,[0056E344];^gvar_0059BF5C
 0055C335    mov         eax,dword ptr [eax+0D6]
 0055C33B    mov         dword ptr [ebp-30],eax
 0055C33E    mov         byte ptr [ebp-2C],0
 0055C342    lea         edx,[ebp-38]
 0055C345    mov         ecx,1
 0055C34A    mov         eax,55D710;'  max_virt_cyls_for_head_3 = 0x%X (%d)'
 0055C34F    call        0040D630
 0055C354    mov         edx,dword ptr [ebp-118]
 0055C35A    mov         eax,dword ptr [ebp-4]
 0055C35D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C363    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C369    mov         ecx,dword ptr [eax]
 0055C36B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C36E    lea         eax,[ebp-11C]
 0055C374    push        eax
 0055C375    mov         eax,[0056E344];^gvar_0059BF5C
 0055C37A    mov         eax,dword ptr [eax+0DA]
 0055C380    mov         dword ptr [ebp-38],eax
 0055C383    mov         byte ptr [ebp-34],0
 0055C387    mov         eax,[0056E344];^gvar_0059BF5C
 0055C38C    mov         eax,dword ptr [eax+0DA]
 0055C392    mov         dword ptr [ebp-30],eax
 0055C395    mov         byte ptr [ebp-2C],0
 0055C399    lea         edx,[ebp-38]
 0055C39C    mov         ecx,1
 0055C3A1    mov         eax,55D740;'  max_virt_cyls_for_head_4 = 0x%X (%d)'
 0055C3A6    call        0040D630
 0055C3AB    mov         edx,dword ptr [ebp-11C]
 0055C3B1    mov         eax,dword ptr [ebp-4]
 0055C3B4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C3BA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C3C0    mov         ecx,dword ptr [eax]
 0055C3C2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C3C5    lea         eax,[ebp-120]
 0055C3CB    push        eax
 0055C3CC    mov         eax,[0056E344];^gvar_0059BF5C
 0055C3D1    mov         eax,dword ptr [eax+0DE]
 0055C3D7    mov         dword ptr [ebp-38],eax
 0055C3DA    mov         byte ptr [ebp-34],0
 0055C3DE    mov         eax,[0056E344];^gvar_0059BF5C
 0055C3E3    mov         eax,dword ptr [eax+0DE]
 0055C3E9    mov         dword ptr [ebp-30],eax
 0055C3EC    mov         byte ptr [ebp-2C],0
 0055C3F0    lea         edx,[ebp-38]
 0055C3F3    mov         ecx,1
 0055C3F8    mov         eax,55D770;'  max_virt_cyls_for_head_5 = 0x%X (%d)'
 0055C3FD    call        0040D630
 0055C402    mov         edx,dword ptr [ebp-120]
 0055C408    mov         eax,dword ptr [ebp-4]
 0055C40B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C411    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C417    mov         ecx,dword ptr [eax]
 0055C419    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C41C    lea         eax,[ebp-124]
 0055C422    push        eax
 0055C423    mov         eax,[0056E344];^gvar_0059BF5C
 0055C428    mov         eax,dword ptr [eax+0E2]
 0055C42E    mov         dword ptr [ebp-38],eax
 0055C431    mov         byte ptr [ebp-34],0
 0055C435    mov         eax,[0056E344];^gvar_0059BF5C
 0055C43A    mov         eax,dword ptr [eax+0E2]
 0055C440    mov         dword ptr [ebp-30],eax
 0055C443    mov         byte ptr [ebp-2C],0
 0055C447    lea         edx,[ebp-38]
 0055C44A    mov         ecx,1
 0055C44F    mov         eax,55D7A0;'  max_virt_cyls_for_head_6 = 0x%X (%d)'
 0055C454    call        0040D630
 0055C459    mov         edx,dword ptr [ebp-124]
 0055C45F    mov         eax,dword ptr [ebp-4]
 0055C462    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C468    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C46E    mov         ecx,dword ptr [eax]
 0055C470    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C473    lea         eax,[ebp-128]
 0055C479    push        eax
 0055C47A    mov         eax,[0056E344];^gvar_0059BF5C
 0055C47F    mov         eax,dword ptr [eax+0E6]
 0055C485    mov         dword ptr [ebp-38],eax
 0055C488    mov         byte ptr [ebp-34],0
 0055C48C    mov         eax,[0056E344];^gvar_0059BF5C
 0055C491    mov         eax,dword ptr [eax+0E6]
 0055C497    mov         dword ptr [ebp-30],eax
 0055C49A    mov         byte ptr [ebp-2C],0
 0055C49E    lea         edx,[ebp-38]
 0055C4A1    mov         ecx,1
 0055C4A6    mov         eax,55D7D0;'  max_virt_cyls_for_head_7 = 0x%X (%d)'
 0055C4AB    call        0040D630
 0055C4B0    mov         edx,dword ptr [ebp-128]
 0055C4B6    mov         eax,dword ptr [ebp-4]
 0055C4B9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C4BF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C4C5    mov         ecx,dword ptr [eax]
 0055C4C7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C4CA    mov         eax,dword ptr [ebp-4]
 0055C4CD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C4D3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C4D9    xor         edx,edx
 0055C4DB    mov         ecx,dword ptr [eax]
 0055C4DD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C4E0    lea         eax,[ebp-12C]
 0055C4E6    push        eax
 0055C4E7    mov         eax,[0056E344];^gvar_0059BF5C
 0055C4EC    movzx       eax,word ptr [eax+0F2]
 0055C4F3    mov         dword ptr [ebp-14],eax
 0055C4F6    mov         byte ptr [ebp-10],0
 0055C4FA    lea         edx,[ebp-14]
 0055C4FD    xor         ecx,ecx
 0055C4FF    mov         eax,55D800;'  rsvd_svo_cyls = 0x%X'
 0055C504    call        0040D630
 0055C509    mov         edx,dword ptr [ebp-12C]
 0055C50F    mov         eax,dword ptr [ebp-4]
 0055C512    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C518    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C51E    mov         ecx,dword ptr [eax]
 0055C520    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C523    lea         eax,[ebp-130]
 0055C529    push        eax
 0055C52A    mov         eax,[0056E344];^gvar_0059BF5C
 0055C52F    movzx       eax,word ptr [eax+0F4]
 0055C536    mov         dword ptr [ebp-14],eax
 0055C539    mov         byte ptr [ebp-10],0
 0055C53D    lea         edx,[ebp-14]
 0055C540    xor         ecx,ecx
 0055C542    mov         eax,55D820;'  rsvd_data_cyls = 0x%X'
 0055C547    call        0040D630
 0055C54C    mov         edx,dword ptr [ebp-130]
 0055C552    mov         eax,dword ptr [ebp-4]
 0055C555    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C55B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C561    mov         ecx,dword ptr [eax]
 0055C563    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C566    mov         eax,dword ptr [ebp-4]
 0055C569    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C56F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C575    xor         edx,edx
 0055C577    mov         ecx,dword ptr [eax]
 0055C579    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C57C    lea         eax,[ebp-134]
 0055C582    push        eax
 0055C583    mov         eax,[0056E344];^gvar_0059BF5C
 0055C588    movzx       eax,word ptr [eax+0FE]
 0055C58F    mov         dword ptr [ebp-14],eax
 0055C592    mov         byte ptr [ebp-10],0
 0055C596    lea         edx,[ebp-14]
 0055C599    xor         ecx,ecx
 0055C59B    mov         eax,55D840;'  trks_per_clstr_svo = 0x%X'
 0055C5A0    call        0040D630
 0055C5A5    mov         edx,dword ptr [ebp-134]
 0055C5AB    mov         eax,dword ptr [ebp-4]
 0055C5AE    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C5B4    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C5BA    mov         ecx,dword ptr [eax]
 0055C5BC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C5BF    lea         eax,[ebp-138]
 0055C5C5    push        eax
 0055C5C6    mov         eax,[0056E344];^gvar_0059BF5C
 0055C5CB    movzx       eax,word ptr [eax+100]
 0055C5D2    mov         dword ptr [ebp-14],eax
 0055C5D5    mov         byte ptr [ebp-10],0
 0055C5D9    lea         edx,[ebp-14]
 0055C5DC    xor         ecx,ecx
 0055C5DE    mov         eax,55D864;'  trks_per_clstr_rsvd = 0x%X'
 0055C5E3    call        0040D630
 0055C5E8    mov         edx,dword ptr [ebp-138]
 0055C5EE    mov         eax,dword ptr [ebp-4]
 0055C5F1    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C5F7    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C5FD    mov         ecx,dword ptr [eax]
 0055C5FF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C602    lea         eax,[ebp-13C]
 0055C608    push        eax
 0055C609    mov         eax,[0056E344];^gvar_0059BF5C
 0055C60E    movzx       eax,word ptr [eax+102]
 0055C615    mov         dword ptr [ebp-14],eax
 0055C618    mov         byte ptr [ebp-10],0
 0055C61C    lea         edx,[ebp-14]
 0055C61F    xor         ecx,ecx
 0055C621    mov         eax,55D88C;'  trks_per_clstr_for_head_0 = 0x%X'
 0055C626    call        0040D630
 0055C62B    mov         edx,dword ptr [ebp-13C]
 0055C631    mov         eax,dword ptr [ebp-4]
 0055C634    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C63A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C640    mov         ecx,dword ptr [eax]
 0055C642    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C645    lea         eax,[ebp-140]
 0055C64B    push        eax
 0055C64C    mov         eax,[0056E344];^gvar_0059BF5C
 0055C651    movzx       eax,word ptr [eax+104]
 0055C658    mov         dword ptr [ebp-14],eax
 0055C65B    mov         byte ptr [ebp-10],0
 0055C65F    lea         edx,[ebp-14]
 0055C662    xor         ecx,ecx
 0055C664    mov         eax,55D8B8;'  trks_per_clstr_for_head_1 = 0x%X'
 0055C669    call        0040D630
 0055C66E    mov         edx,dword ptr [ebp-140]
 0055C674    mov         eax,dword ptr [ebp-4]
 0055C677    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C67D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C683    mov         ecx,dword ptr [eax]
 0055C685    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C688    lea         eax,[ebp-144]
 0055C68E    push        eax
 0055C68F    mov         eax,[0056E344];^gvar_0059BF5C
 0055C694    movzx       eax,word ptr [eax+106]
 0055C69B    mov         dword ptr [ebp-14],eax
 0055C69E    mov         byte ptr [ebp-10],0
 0055C6A2    lea         edx,[ebp-14]
 0055C6A5    xor         ecx,ecx
 0055C6A7    mov         eax,55D8E4;'  trks_per_clstr_for_head_2 = 0x%X'
 0055C6AC    call        0040D630
 0055C6B1    mov         edx,dword ptr [ebp-144]
 0055C6B7    mov         eax,dword ptr [ebp-4]
 0055C6BA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C6C0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C6C6    mov         ecx,dword ptr [eax]
 0055C6C8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C6CB    lea         eax,[ebp-148]
 0055C6D1    push        eax
 0055C6D2    mov         eax,[0056E344];^gvar_0059BF5C
 0055C6D7    movzx       eax,word ptr [eax+108]
 0055C6DE    mov         dword ptr [ebp-14],eax
 0055C6E1    mov         byte ptr [ebp-10],0
 0055C6E5    lea         edx,[ebp-14]
 0055C6E8    xor         ecx,ecx
 0055C6EA    mov         eax,55D910;'  trks_per_clstr_for_head_3 = 0x%X'
 0055C6EF    call        0040D630
 0055C6F4    mov         edx,dword ptr [ebp-148]
 0055C6FA    mov         eax,dword ptr [ebp-4]
 0055C6FD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C703    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C709    mov         ecx,dword ptr [eax]
 0055C70B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C70E    lea         eax,[ebp-14C]
 0055C714    push        eax
 0055C715    mov         eax,[0056E344];^gvar_0059BF5C
 0055C71A    movzx       eax,word ptr [eax+10A]
 0055C721    mov         dword ptr [ebp-14],eax
 0055C724    mov         byte ptr [ebp-10],0
 0055C728    lea         edx,[ebp-14]
 0055C72B    xor         ecx,ecx
 0055C72D    mov         eax,55D93C;'  trks_per_clstr_for_head_4 = 0x%X'
 0055C732    call        0040D630
 0055C737    mov         edx,dword ptr [ebp-14C]
 0055C73D    mov         eax,dword ptr [ebp-4]
 0055C740    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C746    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C74C    mov         ecx,dword ptr [eax]
 0055C74E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C751    lea         eax,[ebp-150]
 0055C757    push        eax
 0055C758    mov         eax,[0056E344];^gvar_0059BF5C
 0055C75D    movzx       eax,word ptr [eax+10C]
 0055C764    mov         dword ptr [ebp-14],eax
 0055C767    mov         byte ptr [ebp-10],0
 0055C76B    lea         edx,[ebp-14]
 0055C76E    xor         ecx,ecx
 0055C770    mov         eax,55D968;'  trks_per_clstr_for_head_5 = 0x%X'
 0055C775    call        0040D630
 0055C77A    mov         edx,dword ptr [ebp-150]
 0055C780    mov         eax,dword ptr [ebp-4]
 0055C783    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C789    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C78F    mov         ecx,dword ptr [eax]
 0055C791    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C794    lea         eax,[ebp-154]
 0055C79A    push        eax
 0055C79B    mov         eax,[0056E344];^gvar_0059BF5C
 0055C7A0    movzx       eax,word ptr [eax+10E]
 0055C7A7    mov         dword ptr [ebp-14],eax
 0055C7AA    mov         byte ptr [ebp-10],0
 0055C7AE    lea         edx,[ebp-14]
 0055C7B1    xor         ecx,ecx
 0055C7B3    mov         eax,55D994;'  trks_per_clstr_for_head_6 = 0x%X'
 0055C7B8    call        0040D630
 0055C7BD    mov         edx,dword ptr [ebp-154]
 0055C7C3    mov         eax,dword ptr [ebp-4]
 0055C7C6    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C7CC    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C7D2    mov         ecx,dword ptr [eax]
 0055C7D4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C7D7    lea         eax,[ebp-158]
 0055C7DD    push        eax
 0055C7DE    mov         eax,[0056E344];^gvar_0059BF5C
 0055C7E3    movzx       eax,word ptr [eax+110]
 0055C7EA    mov         dword ptr [ebp-14],eax
 0055C7ED    mov         byte ptr [ebp-10],0
 0055C7F1    lea         edx,[ebp-14]
 0055C7F4    xor         ecx,ecx
 0055C7F6    mov         eax,55D9C0;'  trks_per_clstr_for_head_7 = 0x%X'
 0055C7FB    call        0040D630
 0055C800    mov         edx,dword ptr [ebp-158]
 0055C806    mov         eax,dword ptr [ebp-4]
 0055C809    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C80F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C815    mov         ecx,dword ptr [eax]
 0055C817    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C81A    mov         eax,dword ptr [ebp-4]
 0055C81D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C823    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C829    xor         edx,edx
 0055C82B    mov         ecx,dword ptr [eax]
 0055C82D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C830    lea         eax,[ebp-15C]
 0055C836    push        eax
 0055C837    mov         eax,[0056E344];^gvar_0059BF5C
 0055C83C    movzx       eax,word ptr [eax+4]
 0055C840    mov         dword ptr [ebp-14],eax
 0055C843    mov         byte ptr [ebp-10],0
 0055C847    lea         edx,[ebp-14]
 0055C84A    xor         ecx,ecx
 0055C84C    mov         eax,55D9EC;'  stroke = %d'
 0055C851    call        0040D630
 0055C856    mov         edx,dword ptr [ebp-15C]
 0055C85C    mov         eax,dword ptr [ebp-4]
 0055C85F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C865    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C86B    mov         ecx,dword ptr [eax]
 0055C86D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C870    lea         eax,[ebp-160]
 0055C876    push        eax
 0055C877    mov         eax,[0056E344];^gvar_0059BF5C
 0055C87C    movzx       eax,word ptr [eax+2]
 0055C880    mov         dword ptr [ebp-14],eax
 0055C883    mov         byte ptr [ebp-10],0
 0055C887    lea         edx,[ebp-14]
 0055C88A    xor         ecx,ecx
 0055C88C    mov         eax,55DA04;'  DCM = %d'
 0055C891    call        0040D630
 0055C896    mov         edx,dword ptr [ebp-160]
 0055C89C    mov         eax,dword ptr [ebp-4]
 0055C89F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C8A5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C8AB    mov         ecx,dword ptr [eax]
 0055C8AD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C8B0    mov         eax,dword ptr [ebp-4]
 0055C8B3    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C8B9    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C8BF    xor         edx,edx
 0055C8C1    mov         ecx,dword ptr [eax]
 0055C8C3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C8C6    mov         eax,[0056E344];^gvar_0059BF5C
 0055C8CB    cmp         word ptr [eax],100
>0055C8D0    jne         0055C95F
 0055C8D6    lea         eax,[ebp-164]
 0055C8DC    push        eax
 0055C8DD    mov         eax,[0056E344];^gvar_0059BF5C
 0055C8E2    mov         eax,dword ptr [eax+13A]
 0055C8E8    mov         dword ptr [ebp-14],eax
 0055C8EB    mov         byte ptr [ebp-10],0
 0055C8EF    lea         edx,[ebp-14]
 0055C8F2    xor         ecx,ecx
 0055C8F4    mov         eax,55DA18;'  TPI = 0x%X '
 0055C8F9    call        0040D630
 0055C8FE    mov         edx,dword ptr [ebp-164]
 0055C904    mov         eax,dword ptr [ebp-4]
 0055C907    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C90D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C913    mov         ecx,dword ptr [eax]
 0055C915    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C918    lea         eax,[ebp-168]
 0055C91E    push        eax
 0055C91F    mov         eax,[0056E344];^gvar_0059BF5C
 0055C924    mov         eax,dword ptr [eax+13E]
 0055C92A    mov         dword ptr [ebp-14],eax
 0055C92D    mov         byte ptr [ebp-10],0
 0055C931    lea         edx,[ebp-14]
 0055C934    xor         ecx,ecx
 0055C936    mov         eax,55DA30;'  KFCI= 0x%X '
 0055C93B    call        0040D630
 0055C940    mov         edx,dword ptr [ebp-168]
 0055C946    mov         eax,dword ptr [ebp-4]
 0055C949    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C94F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C955    mov         ecx,dword ptr [eax]
 0055C957    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0055C95A    jmp         0055CDBB
 0055C95F    lea         eax,[ebp-16C]
 0055C965    push        eax
 0055C966    mov         eax,[0056E344];^gvar_0059BF5C
 0055C96B    movzx       eax,byte ptr [eax+142]
 0055C972    mov         dword ptr [ebp-14],eax
 0055C975    mov         byte ptr [ebp-10],0
 0055C979    lea         edx,[ebp-14]
 0055C97C    xor         ecx,ecx
 0055C97E    mov         eax,55DA48;' Hd0 TPI = %d'
 0055C983    call        0040D630
 0055C988    mov         edx,dword ptr [ebp-16C]
 0055C98E    mov         eax,dword ptr [ebp-4]
 0055C991    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C997    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C99D    mov         ecx,dword ptr [eax]
 0055C99F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C9A2    lea         eax,[ebp-170]
 0055C9A8    push        eax
 0055C9A9    mov         eax,[0056E344];^gvar_0059BF5C
 0055C9AE    movzx       eax,byte ptr [eax+144]
 0055C9B5    mov         dword ptr [ebp-14],eax
 0055C9B8    mov         byte ptr [ebp-10],0
 0055C9BC    lea         edx,[ebp-14]
 0055C9BF    xor         ecx,ecx
 0055C9C1    mov         eax,55DA60;' Hd1 TPI = %d'
 0055C9C6    call        0040D630
 0055C9CB    mov         edx,dword ptr [ebp-170]
 0055C9D1    mov         eax,dword ptr [ebp-4]
 0055C9D4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055C9DA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055C9E0    mov         ecx,dword ptr [eax]
 0055C9E2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055C9E5    lea         eax,[ebp-174]
 0055C9EB    push        eax
 0055C9EC    mov         eax,[0056E344];^gvar_0059BF5C
 0055C9F1    movzx       eax,byte ptr [eax+146]
 0055C9F8    mov         dword ptr [ebp-14],eax
 0055C9FB    mov         byte ptr [ebp-10],0
 0055C9FF    lea         edx,[ebp-14]
 0055CA02    xor         ecx,ecx
 0055CA04    mov         eax,55DA78;' Hd2 TPI = %d'
 0055CA09    call        0040D630
 0055CA0E    mov         edx,dword ptr [ebp-174]
 0055CA14    mov         eax,dword ptr [ebp-4]
 0055CA17    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CA1D    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CA23    mov         ecx,dword ptr [eax]
 0055CA25    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CA28    lea         eax,[ebp-178]
 0055CA2E    push        eax
 0055CA2F    mov         eax,[0056E344];^gvar_0059BF5C
 0055CA34    movzx       eax,byte ptr [eax+148]
 0055CA3B    mov         dword ptr [ebp-14],eax
 0055CA3E    mov         byte ptr [ebp-10],0
 0055CA42    lea         edx,[ebp-14]
 0055CA45    xor         ecx,ecx
 0055CA47    mov         eax,55DA90;' Hd3 TPI = %d'
 0055CA4C    call        0040D630
 0055CA51    mov         edx,dword ptr [ebp-178]
 0055CA57    mov         eax,dword ptr [ebp-4]
 0055CA5A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CA60    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CA66    mov         ecx,dword ptr [eax]
 0055CA68    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CA6B    lea         eax,[ebp-17C]
 0055CA71    push        eax
 0055CA72    mov         eax,[0056E344];^gvar_0059BF5C
 0055CA77    movzx       eax,byte ptr [eax+14A]
 0055CA7E    mov         dword ptr [ebp-14],eax
 0055CA81    mov         byte ptr [ebp-10],0
 0055CA85    lea         edx,[ebp-14]
 0055CA88    xor         ecx,ecx
 0055CA8A    mov         eax,55DAA8;' Hd4 TPI = %d'
 0055CA8F    call        0040D630
 0055CA94    mov         edx,dword ptr [ebp-17C]
 0055CA9A    mov         eax,dword ptr [ebp-4]
 0055CA9D    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CAA3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CAA9    mov         ecx,dword ptr [eax]
 0055CAAB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CAAE    lea         eax,[ebp-180]
 0055CAB4    push        eax
 0055CAB5    mov         eax,[0056E344];^gvar_0059BF5C
 0055CABA    movzx       eax,byte ptr [eax+14C]
 0055CAC1    mov         dword ptr [ebp-14],eax
 0055CAC4    mov         byte ptr [ebp-10],0
 0055CAC8    lea         edx,[ebp-14]
 0055CACB    xor         ecx,ecx
 0055CACD    mov         eax,55DAC0;' Hd5 TPI = %d'
 0055CAD2    call        0040D630
 0055CAD7    mov         edx,dword ptr [ebp-180]
 0055CADD    mov         eax,dword ptr [ebp-4]
 0055CAE0    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CAE6    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CAEC    mov         ecx,dword ptr [eax]
 0055CAEE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CAF1    lea         eax,[ebp-184]
 0055CAF7    push        eax
 0055CAF8    mov         eax,[0056E344];^gvar_0059BF5C
 0055CAFD    movzx       eax,byte ptr [eax+14E]
 0055CB04    mov         dword ptr [ebp-14],eax
 0055CB07    mov         byte ptr [ebp-10],0
 0055CB0B    lea         edx,[ebp-14]
 0055CB0E    xor         ecx,ecx
 0055CB10    mov         eax,55DAD8;' Hd6 TPI = %d'
 0055CB15    call        0040D630
 0055CB1A    mov         edx,dword ptr [ebp-184]
 0055CB20    mov         eax,dword ptr [ebp-4]
 0055CB23    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CB29    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CB2F    mov         ecx,dword ptr [eax]
 0055CB31    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CB34    lea         eax,[ebp-188]
 0055CB3A    push        eax
 0055CB3B    mov         eax,[0056E344];^gvar_0059BF5C
 0055CB40    movzx       eax,byte ptr [eax+150]
 0055CB47    mov         dword ptr [ebp-14],eax
 0055CB4A    mov         byte ptr [ebp-10],0
 0055CB4E    lea         edx,[ebp-14]
 0055CB51    xor         ecx,ecx
 0055CB53    mov         eax,55DAF0;' Hd7 TPI = %d'
 0055CB58    call        0040D630
 0055CB5D    mov         edx,dword ptr [ebp-188]
 0055CB63    mov         eax,dword ptr [ebp-4]
 0055CB66    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CB6C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CB72    mov         ecx,dword ptr [eax]
 0055CB74    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CB77    mov         eax,dword ptr [ebp-4]
 0055CB7A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CB80    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CB86    xor         edx,edx
 0055CB88    mov         ecx,dword ptr [eax]
 0055CB8A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CB8D    lea         eax,[ebp-18C]
 0055CB93    push        eax
 0055CB94    mov         eax,[0056E344];^gvar_0059BF5C
 0055CB99    movzx       eax,byte ptr [eax+143]
 0055CBA0    mov         dword ptr [ebp-14],eax
 0055CBA3    mov         byte ptr [ebp-10],0
 0055CBA7    lea         edx,[ebp-14]
 0055CBAA    xor         ecx,ecx
 0055CBAC    mov         eax,55DB08;' Hd0 Capacity = %d'
 0055CBB1    call        0040D630
 0055CBB6    mov         edx,dword ptr [ebp-18C]
 0055CBBC    mov         eax,dword ptr [ebp-4]
 0055CBBF    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CBC5    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CBCB    mov         ecx,dword ptr [eax]
 0055CBCD    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CBD0    lea         eax,[ebp-190]
 0055CBD6    push        eax
 0055CBD7    mov         eax,[0056E344];^gvar_0059BF5C
 0055CBDC    movzx       eax,byte ptr [eax+145]
 0055CBE3    mov         dword ptr [ebp-14],eax
 0055CBE6    mov         byte ptr [ebp-10],0
 0055CBEA    lea         edx,[ebp-14]
 0055CBED    xor         ecx,ecx
 0055CBEF    mov         eax,55DB24;' Hd1 Capacity = %d'
 0055CBF4    call        0040D630
 0055CBF9    mov         edx,dword ptr [ebp-190]
 0055CBFF    mov         eax,dword ptr [ebp-4]
 0055CC02    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CC08    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CC0E    mov         ecx,dword ptr [eax]
 0055CC10    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CC13    lea         eax,[ebp-194]
 0055CC19    push        eax
 0055CC1A    mov         eax,[0056E344];^gvar_0059BF5C
 0055CC1F    movzx       eax,byte ptr [eax+147]
 0055CC26    mov         dword ptr [ebp-14],eax
 0055CC29    mov         byte ptr [ebp-10],0
 0055CC2D    lea         edx,[ebp-14]
 0055CC30    xor         ecx,ecx
 0055CC32    mov         eax,55DB40;' Hd2 Capacity = %d'
 0055CC37    call        0040D630
 0055CC3C    mov         edx,dword ptr [ebp-194]
 0055CC42    mov         eax,dword ptr [ebp-4]
 0055CC45    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CC4B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CC51    mov         ecx,dword ptr [eax]
 0055CC53    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CC56    lea         eax,[ebp-198]
 0055CC5C    push        eax
 0055CC5D    mov         eax,[0056E344];^gvar_0059BF5C
 0055CC62    movzx       eax,byte ptr [eax+149]
 0055CC69    mov         dword ptr [ebp-14],eax
 0055CC6C    mov         byte ptr [ebp-10],0
 0055CC70    lea         edx,[ebp-14]
 0055CC73    xor         ecx,ecx
 0055CC75    mov         eax,55DB5C;' Hd3 Capacity = %d'
 0055CC7A    call        0040D630
 0055CC7F    mov         edx,dword ptr [ebp-198]
 0055CC85    mov         eax,dword ptr [ebp-4]
 0055CC88    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CC8E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CC94    mov         ecx,dword ptr [eax]
 0055CC96    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CC99    lea         eax,[ebp-19C]
 0055CC9F    push        eax
 0055CCA0    mov         eax,[0056E344];^gvar_0059BF5C
 0055CCA5    movzx       eax,byte ptr [eax+14B]
 0055CCAC    mov         dword ptr [ebp-14],eax
 0055CCAF    mov         byte ptr [ebp-10],0
 0055CCB3    lea         edx,[ebp-14]
 0055CCB6    xor         ecx,ecx
 0055CCB8    mov         eax,55DB78;' Hd4 Capacity = %d'
 0055CCBD    call        0040D630
 0055CCC2    mov         edx,dword ptr [ebp-19C]
 0055CCC8    mov         eax,dword ptr [ebp-4]
 0055CCCB    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CCD1    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CCD7    mov         ecx,dword ptr [eax]
 0055CCD9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CCDC    lea         eax,[ebp-1A0]
 0055CCE2    push        eax
 0055CCE3    mov         eax,[0056E344];^gvar_0059BF5C
 0055CCE8    movzx       eax,byte ptr [eax+14D]
 0055CCEF    mov         dword ptr [ebp-14],eax
 0055CCF2    mov         byte ptr [ebp-10],0
 0055CCF6    lea         edx,[ebp-14]
 0055CCF9    xor         ecx,ecx
 0055CCFB    mov         eax,55DB94;' Hd5 Capacity = %d'
 0055CD00    call        0040D630
 0055CD05    mov         edx,dword ptr [ebp-1A0]
 0055CD0B    mov         eax,dword ptr [ebp-4]
 0055CD0E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CD14    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CD1A    mov         ecx,dword ptr [eax]
 0055CD1C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CD1F    lea         eax,[ebp-1A4]
 0055CD25    push        eax
 0055CD26    mov         eax,[0056E344];^gvar_0059BF5C
 0055CD2B    movzx       eax,byte ptr [eax+14F]
 0055CD32    mov         dword ptr [ebp-14],eax
 0055CD35    mov         byte ptr [ebp-10],0
 0055CD39    lea         edx,[ebp-14]
 0055CD3C    xor         ecx,ecx
 0055CD3E    mov         eax,55DBB0;' Hd6 Capacity = %d'
 0055CD43    call        0040D630
 0055CD48    mov         edx,dword ptr [ebp-1A4]
 0055CD4E    mov         eax,dword ptr [ebp-4]
 0055CD51    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CD57    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CD5D    mov         ecx,dword ptr [eax]
 0055CD5F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CD62    lea         eax,[ebp-1A8]
 0055CD68    push        eax
 0055CD69    mov         eax,[0056E344];^gvar_0059BF5C
 0055CD6E    movzx       eax,byte ptr [eax+151]
 0055CD75    mov         dword ptr [ebp-14],eax
 0055CD78    mov         byte ptr [ebp-10],0
 0055CD7C    lea         edx,[ebp-14]
 0055CD7F    xor         ecx,ecx
 0055CD81    mov         eax,55DBCC;' Hd7 Capacity = %d'
 0055CD86    call        0040D630
 0055CD8B    mov         edx,dword ptr [ebp-1A8]
 0055CD91    mov         eax,dword ptr [ebp-4]
 0055CD94    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CD9A    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CDA0    mov         ecx,dword ptr [eax]
 0055CDA2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CDA5    mov         eax,dword ptr [ebp-4]
 0055CDA8    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055CDAE    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055CDB4    xor         edx,edx
 0055CDB6    mov         ecx,dword ptr [eax]
 0055CDB8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055CDBB    xor         eax,eax
 0055CDBD    pop         edx
 0055CDBE    pop         ecx
 0055CDBF    pop         ecx
 0055CDC0    mov         dword ptr fs:[eax],edx
 0055CDC3    push        55CE02
 0055CDC8    lea         eax,[ebp-1A8]
 0055CDCE    mov         edx,54
 0055CDD3    call        @LStrArrayClr
 0055CDD8    lea         eax,[ebp-40]
 0055CDDB    mov         edx,2
 0055CDE0    call        @LStrArrayClr
 0055CDE5    lea         eax,[ebp-28]
 0055CDE8    mov         edx,5
 0055CDED    call        @LStrArrayClr
 0055CDF2    lea         eax,[ebp-0C]
 0055CDF5    call        @LStrClr
 0055CDFA    ret
>0055CDFB    jmp         @HandleFinally
>0055CE00    jmp         0055CDC8
 0055CE02    mov         esp,ebp
 0055CE04    pop         ebp
 0055CE05    ret
*}
end;

//0055DBE0
{*procedure TfmHDD.miGetDCMClick(?:?);
begin
 0055DBE0    push        ebp
 0055DBE1    mov         ebp,esp
 0055DBE3    add         esp,0FFFFFFE8
 0055DBE6    xor         ecx,ecx
 0055DBE8    mov         dword ptr [ebp-18],ecx
 0055DBEB    mov         dword ptr [ebp-0C],ecx
 0055DBEE    mov         dword ptr [ebp-8],edx
 0055DBF1    mov         dword ptr [ebp-4],eax
 0055DBF4    xor         eax,eax
 0055DBF6    push        ebp
 0055DBF7    push        55DCD3
 0055DBFC    push        dword ptr fs:[eax]
 0055DBFF    mov         dword ptr fs:[eax],esp
 0055DC02    mov         ax,2
 0055DC06    call        004D1860
 0055DC0B    test        al,al
>0055DC0D    je          0055DCB5
 0055DC13    mov         eax,dword ptr [ebp-4]
 0055DC16    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DC1C    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DC22    xor         edx,edx
 0055DC24    mov         ecx,dword ptr [eax]
 0055DC26    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DC29    mov         eax,dword ptr [ebp-4]
 0055DC2C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DC32    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DC38    mov         edx,55DCE8;' Available DCM options: '
 0055DC3D    mov         ecx,dword ptr [eax]
 0055DC3F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DC42    lea         eax,[ebp-0C]
 0055DC45    push        eax
 0055DC46    mov         eax,[0056E344];^gvar_0059BF5C
 0055DC4B    movzx       eax,word ptr [eax]
 0055DC4E    mov         dword ptr [ebp-14],eax
 0055DC51    mov         byte ptr [ebp-10],0
 0055DC55    lea         edx,[ebp-14]
 0055DC58    xor         ecx,ecx
 0055DC5A    mov         eax,55DD0C;'  Version = 0x%X '
 0055DC5F    call        0040D630
 0055DC64    mov         edx,dword ptr [ebp-0C]
 0055DC67    mov         eax,dword ptr [ebp-4]
 0055DC6A    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DC70    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DC76    mov         ecx,dword ptr [eax]
 0055DC78    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DC7B    lea         eax,[ebp-18]
 0055DC7E    push        eax
 0055DC7F    mov         eax,[0056E344];^gvar_0059BF5C
 0055DC84    movzx       eax,word ptr [eax+2]
 0055DC88    mov         dword ptr [ebp-14],eax
 0055DC8B    mov         byte ptr [ebp-10],0
 0055DC8F    lea         edx,[ebp-14]
 0055DC92    xor         ecx,ecx
 0055DC94    mov         eax,55DD28;'  numOptions = %2d'
 0055DC99    call        0040D630
 0055DC9E    mov         edx,dword ptr [ebp-18]
 0055DCA1    mov         eax,dword ptr [ebp-4]
 0055DCA4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DCAA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DCB0    mov         ecx,dword ptr [eax]
 0055DCB2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DCB5    xor         eax,eax
 0055DCB7    pop         edx
 0055DCB8    pop         ecx
 0055DCB9    pop         ecx
 0055DCBA    mov         dword ptr fs:[eax],edx
 0055DCBD    push        55DCDA
 0055DCC2    lea         eax,[ebp-18]
 0055DCC5    call        @LStrClr
 0055DCCA    lea         eax,[ebp-0C]
 0055DCCD    call        @LStrClr
 0055DCD2    ret
>0055DCD3    jmp         @HandleFinally
>0055DCD8    jmp         0055DCC2
 0055DCDA    mov         esp,ebp
 0055DCDC    pop         ebp
 0055DCDD    ret
end;*}

//0055DD3C
{*procedure TfmHDD.miGetDataTPIClick(?:?);
begin
 0055DD3C    push        ebp
 0055DD3D    mov         ebp,esp
 0055DD3F    add         esp,0FFFFFFCC
 0055DD42    xor         ecx,ecx
 0055DD44    mov         dword ptr [ebp-24],ecx
 0055DD47    mov         dword ptr [ebp-20],ecx
 0055DD4A    mov         dword ptr [ebp-14],ecx
 0055DD4D    mov         dword ptr [ebp-10],edx
 0055DD50    mov         dword ptr [ebp-4],eax
 0055DD53    xor         eax,eax
 0055DD55    push        ebp
 0055DD56    push        55DEB4
 0055DD5B    push        dword ptr fs:[eax]
 0055DD5E    mov         dword ptr fs:[eax],esp
 0055DD61    mov         ax,3
 0055DD65    call        004D1860
 0055DD6A    test        al,al
>0055DD6C    je          0055DE91
 0055DD72    mov         eax,dword ptr [ebp-4]
 0055DD75    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DD7B    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DD81    xor         edx,edx
 0055DD83    mov         ecx,dword ptr [eax]
 0055DD85    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DD88    mov         eax,dword ptr [ebp-4]
 0055DD8B    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DD91    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DD97    mov         edx,55DEC8;'Available DTPI options:'
 0055DD9C    mov         ecx,dword ptr [eax]
 0055DD9E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DDA1    lea         eax,[ebp-14]
 0055DDA4    push        eax
 0055DDA5    mov         eax,[0056E344];^gvar_0059BF5C
 0055DDAA    movzx       eax,word ptr [eax]
 0055DDAD    mov         dword ptr [ebp-1C],eax
 0055DDB0    mov         byte ptr [ebp-18],0
 0055DDB4    lea         edx,[ebp-1C]
 0055DDB7    xor         ecx,ecx
 0055DDB9    mov         eax,55DEE8;'  Version = 0x%X'
 0055DDBE    call        0040D630
 0055DDC3    mov         edx,dword ptr [ebp-14]
 0055DDC6    mov         eax,dword ptr [ebp-4]
 0055DDC9    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DDCF    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DDD5    mov         ecx,dword ptr [eax]
 0055DDD7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DDDA    lea         eax,[ebp-20]
 0055DDDD    push        eax
 0055DDDE    mov         eax,[0056E344];^gvar_0059BF5C
 0055DDE3    movzx       eax,word ptr [eax+2]
 0055DDE7    mov         dword ptr [ebp-1C],eax
 0055DDEA    mov         byte ptr [ebp-18],0
 0055DDEE    lea         edx,[ebp-1C]
 0055DDF1    xor         ecx,ecx
 0055DDF3    mov         eax,55DF04;'  numOptions = %2d'
 0055DDF8    call        0040D630
 0055DDFD    mov         edx,dword ptr [ebp-20]
 0055DE00    mov         eax,dword ptr [ebp-4]
 0055DE03    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DE09    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DE0F    mov         ecx,dword ptr [eax]
 0055DE11    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DE14    mov         eax,[0056E344];^gvar_0059BF5C
 0055DE19    movzx       eax,word ptr [eax+2]
 0055DE1D    dec         eax
 0055DE1E    test        eax,eax
>0055DE20    jl          0055DE91
 0055DE22    inc         eax
 0055DE23    mov         dword ptr [ebp-0C],eax
 0055DE26    mov         dword ptr [ebp-8],0
 0055DE2D    lea         eax,[ebp-24]
 0055DE30    push        eax
 0055DE31    mov         eax,dword ptr [ebp-8]
 0055DE34    lea         eax,[eax+eax*2]
 0055DE37    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055DE3D    movzx       eax,word ptr [edx+eax*2+4]
 0055DE42    mov         dword ptr [ebp-34],eax
 0055DE45    mov         byte ptr [ebp-30],0
 0055DE49    mov         eax,dword ptr [ebp-8]
 0055DE4C    lea         eax,[eax+eax*2]
 0055DE4F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055DE55    mov         eax,dword ptr [edx+eax*2+6]
 0055DE59    mov         dword ptr [ebp-2C],eax
 0055DE5C    mov         byte ptr [ebp-28],0
 0055DE60    lea         edx,[ebp-34]
 0055DE63    mov         ecx,1
 0055DE68    mov         eax,55DF20;'  %d  = 0x%X'
 0055DE6D    call        0040D630
 0055DE72    mov         edx,dword ptr [ebp-24]
 0055DE75    mov         eax,dword ptr [ebp-4]
 0055DE78    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DE7E    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DE84    mov         ecx,dword ptr [eax]
 0055DE86    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DE89    inc         dword ptr [ebp-8]
 0055DE8C    dec         dword ptr [ebp-0C]
>0055DE8F    jne         0055DE2D
 0055DE91    xor         eax,eax
 0055DE93    pop         edx
 0055DE94    pop         ecx
 0055DE95    pop         ecx
 0055DE96    mov         dword ptr fs:[eax],edx
 0055DE99    push        55DEBB
 0055DE9E    lea         eax,[ebp-24]
 0055DEA1    mov         edx,2
 0055DEA6    call        @LStrArrayClr
 0055DEAB    lea         eax,[ebp-14]
 0055DEAE    call        @LStrClr
 0055DEB3    ret
>0055DEB4    jmp         @HandleFinally
>0055DEB9    jmp         0055DE9E
 0055DEBB    mov         esp,ebp
 0055DEBD    pop         ebp
 0055DEBE    ret
end;*}

//0055DF30
{*procedure TfmHDD.miGetKFCICapacityClick(?:?);
begin
 0055DF30    push        ebp
 0055DF31    mov         ebp,esp
 0055DF33    add         esp,0FFFFFFC4
 0055DF36    xor         ecx,ecx
 0055DF38    mov         dword ptr [ebp-24],ecx
 0055DF3B    mov         dword ptr [ebp-20],ecx
 0055DF3E    mov         dword ptr [ebp-14],ecx
 0055DF41    mov         dword ptr [ebp-10],edx
 0055DF44    mov         dword ptr [ebp-4],eax
 0055DF47    xor         eax,eax
 0055DF49    push        ebp
 0055DF4A    push        55E0D0
 0055DF4F    push        dword ptr fs:[eax]
 0055DF52    mov         dword ptr fs:[eax],esp
 0055DF55    mov         ax,4
 0055DF59    call        004D1860
 0055DF5E    test        al,al
>0055DF60    je          0055E0AD
 0055DF66    mov         eax,dword ptr [ebp-4]
 0055DF69    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DF6F    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DF75    xor         edx,edx
 0055DF77    mov         ecx,dword ptr [eax]
 0055DF79    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DF7C    mov         eax,dword ptr [ebp-4]
 0055DF7F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DF85    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DF8B    mov         edx,55E0E4;' Available Capacity options: '
 0055DF90    mov         ecx,dword ptr [eax]
 0055DF92    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DF95    lea         eax,[ebp-14]
 0055DF98    push        eax
 0055DF99    mov         eax,[0056E344];^gvar_0059BF5C
 0055DF9E    movzx       eax,word ptr [eax]
 0055DFA1    mov         dword ptr [ebp-1C],eax
 0055DFA4    mov         byte ptr [ebp-18],0
 0055DFA8    lea         edx,[ebp-1C]
 0055DFAB    xor         ecx,ecx
 0055DFAD    mov         eax,55E10C;'  Version = 0x%X '
 0055DFB2    call        0040D630
 0055DFB7    mov         edx,dword ptr [ebp-14]
 0055DFBA    mov         eax,dword ptr [ebp-4]
 0055DFBD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DFC3    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055DFC9    mov         ecx,dword ptr [eax]
 0055DFCB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055DFCE    lea         eax,[ebp-20]
 0055DFD1    push        eax
 0055DFD2    mov         eax,[0056E344];^gvar_0059BF5C
 0055DFD7    movzx       eax,word ptr [eax+2]
 0055DFDB    mov         dword ptr [ebp-1C],eax
 0055DFDE    mov         byte ptr [ebp-18],0
 0055DFE2    lea         edx,[ebp-1C]
 0055DFE5    xor         ecx,ecx
 0055DFE7    mov         eax,55E128;'  numOptions = %2d'
 0055DFEC    call        0040D630
 0055DFF1    mov         edx,dword ptr [ebp-20]
 0055DFF4    mov         eax,dword ptr [ebp-4]
 0055DFF7    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055DFFD    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E003    mov         ecx,dword ptr [eax]
 0055E005    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E008    mov         eax,[0056E344];^gvar_0059BF5C
 0055E00D    movzx       eax,word ptr [eax+2]
 0055E011    dec         eax
 0055E012    test        eax,eax
>0055E014    jl          0055E0AD
 0055E01A    inc         eax
 0055E01B    mov         dword ptr [ebp-0C],eax
 0055E01E    mov         dword ptr [ebp-8],0
 0055E025    lea         eax,[ebp-24]
 0055E028    push        eax
 0055E029    mov         eax,dword ptr [ebp-8]
 0055E02C    lea         eax,[eax+eax*2]
 0055E02F    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055E035    movzx       eax,word ptr [edx+eax*2+4]
 0055E03A    mov         dword ptr [ebp-3C],eax
 0055E03D    mov         byte ptr [ebp-38],0
 0055E041    mov         eax,dword ptr [ebp-8]
 0055E044    lea         eax,[eax+eax*2]
 0055E047    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055E04D    mov         eax,dword ptr [edx+eax*2+6]
 0055E051    mov         dword ptr [ebp-34],eax
 0055E054    mov         byte ptr [ebp-30],0
 0055E058    mov         eax,dword ptr [ebp-8]
 0055E05B    lea         eax,[eax+eax*2]
 0055E05E    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0055E064    mov         eax,dword ptr [edx+eax*2+6]
 0055E068    mov         ecx,1DCD65
 0055E06D    xor         edx,edx
 0055E06F    div         eax,ecx
 0055E071    mov         dword ptr [ebp-2C],eax
 0055E074    mov         byte ptr [ebp-28],0
 0055E078    lea         edx,[ebp-3C]
 0055E07B    mov         ecx,2
 0055E080    mov         eax,55E144;'  %d  = 0x%X - %dGB'
 0055E085    call        0040D630
 0055E08A    mov         edx,dword ptr [ebp-24]
 0055E08D    mov         eax,dword ptr [ebp-4]
 0055E090    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055E096    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E09C    mov         ecx,dword ptr [eax]
 0055E09E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E0A1    inc         dword ptr [ebp-8]
 0055E0A4    dec         dword ptr [ebp-0C]
>0055E0A7    jne         0055E025
 0055E0AD    xor         eax,eax
 0055E0AF    pop         edx
 0055E0B0    pop         ecx
 0055E0B1    pop         ecx
 0055E0B2    mov         dword ptr fs:[eax],edx
 0055E0B5    push        55E0D7
 0055E0BA    lea         eax,[ebp-24]
 0055E0BD    mov         edx,2
 0055E0C2    call        @LStrArrayClr
 0055E0C7    lea         eax,[ebp-14]
 0055E0CA    call        @LStrClr
 0055E0CF    ret
>0055E0D0    jmp         @HandleFinally
>0055E0D5    jmp         0055E0BA
 0055E0D7    mov         esp,ebp
 0055E0D9    pop         ebp
 0055E0DA    ret
end;*}

//0055E158
{*procedure TfmHDD.miGetCapacityGroupsClick(?:?);
begin
 0055E158    push        ebp
 0055E159    mov         ebp,esp
 0055E15B    add         esp,0FFFFFFE8
 0055E15E    xor         ecx,ecx
 0055E160    mov         dword ptr [ebp-18],ecx
 0055E163    mov         dword ptr [ebp-0C],ecx
 0055E166    mov         dword ptr [ebp-8],edx
 0055E169    mov         dword ptr [ebp-4],eax
 0055E16C    xor         eax,eax
 0055E16E    push        ebp
 0055E16F    push        55E24B
 0055E174    push        dword ptr fs:[eax]
 0055E177    mov         dword ptr fs:[eax],esp
 0055E17A    mov         ax,0C
 0055E17E    call        004D1860
 0055E183    test        al,al
>0055E185    je          0055E22D
 0055E18B    mov         eax,dword ptr [ebp-4]
 0055E18E    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055E194    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E19A    xor         edx,edx
 0055E19C    mov         ecx,dword ptr [eax]
 0055E19E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E1A1    mov         eax,dword ptr [ebp-4]
 0055E1A4    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055E1AA    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E1B0    mov         edx,55E260;' Available Capacity Groups: '
 0055E1B5    mov         ecx,dword ptr [eax]
 0055E1B7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E1BA    lea         eax,[ebp-0C]
 0055E1BD    push        eax
 0055E1BE    mov         eax,[0056E344];^gvar_0059BF5C
 0055E1C3    movzx       eax,word ptr [eax]
 0055E1C6    mov         dword ptr [ebp-14],eax
 0055E1C9    mov         byte ptr [ebp-10],0
 0055E1CD    lea         edx,[ebp-14]
 0055E1D0    xor         ecx,ecx
 0055E1D2    mov         eax,55E288;'  Version = 0x%X '
 0055E1D7    call        0040D630
 0055E1DC    mov         edx,dword ptr [ebp-0C]
 0055E1DF    mov         eax,dword ptr [ebp-4]
 0055E1E2    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055E1E8    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E1EE    mov         ecx,dword ptr [eax]
 0055E1F0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E1F3    lea         eax,[ebp-18]
 0055E1F6    push        eax
 0055E1F7    mov         eax,[0056E344];^gvar_0059BF5C
 0055E1FC    movzx       eax,word ptr [eax+2]
 0055E200    mov         dword ptr [ebp-14],eax
 0055E203    mov         byte ptr [ebp-10],0
 0055E207    lea         edx,[ebp-14]
 0055E20A    xor         ecx,ecx
 0055E20C    mov         eax,55E2A4;'  numOptions = %d'
 0055E211    call        0040D630
 0055E216    mov         edx,dword ptr [ebp-18]
 0055E219    mov         eax,dword ptr [ebp-4]
 0055E21C    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055E222    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055E228    mov         ecx,dword ptr [eax]
 0055E22A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055E22D    xor         eax,eax
 0055E22F    pop         edx
 0055E230    pop         ecx
 0055E231    pop         ecx
 0055E232    mov         dword ptr fs:[eax],edx
 0055E235    push        55E252
 0055E23A    lea         eax,[ebp-18]
 0055E23D    call        @LStrClr
 0055E242    lea         eax,[ebp-0C]
 0055E245    call        @LStrClr
 0055E24A    ret
>0055E24B    jmp         @HandleFinally
>0055E250    jmp         0055E23A
 0055E252    mov         esp,ebp
 0055E254    pop         ebp
 0055E255    ret
end;*}

//0055E2B8
procedure TfmHDD.miSetDCMClick(Sender:TObject);
begin
{*
 0055E2B8    push        ebp
 0055E2B9    mov         ebp,esp
 0055E2BB    xor         ecx,ecx
 0055E2BD    push        ecx
 0055E2BE    push        ecx
 0055E2BF    push        ecx
 0055E2C0    push        ecx
 0055E2C1    push        ecx
 0055E2C2    push        ecx
 0055E2C3    push        ecx
 0055E2C4    mov         dword ptr [ebp-0C],edx
 0055E2C7    mov         dword ptr [ebp-4],eax
 0055E2CA    xor         eax,eax
 0055E2CC    push        ebp
 0055E2CD    push        55E429
 0055E2D2    push        dword ptr fs:[eax]
 0055E2D5    mov         dword ptr fs:[eax],esp
 0055E2D8    mov         eax,[0056E5A4];^gvar_0056DF04
 0055E2DD    mov         byte ptr [eax],0
 0055E2E0    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E2E5    cmp         dword ptr [eax],0
>0055E2E8    jne         0055E306
 0055E2EA    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055E2F0    mov         ecx,dword ptr [ecx]
 0055E2F2    mov         dl,1
 0055E2F4    mov         eax,[004F7EE0];TfmString
 0055E2F9    call        TfmProgress.Create;TfmString.Create
 0055E2FE    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055E304    mov         dword ptr [edx],eax
 0055E306    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E30B    mov         eax,dword ptr [eax]
 0055E30D    mov         edx,55E43C;'Selects the requested DCM'
 0055E312    call        TPanel.SetCaption
 0055E317    mov         eax,[0056E284];^gvar_0056DF34
 0055E31C    mov         eax,dword ptr [eax]
 0055E31E    mov         eax,dword ptr [eax+408]
 0055E324    cmp         byte ptr [eax+38],0
>0055E328    je          0055E35F
 0055E32A    mov         ax,1
 0055E32E    call        004D1860
 0055E333    test        al,al
>0055E335    je          0055E35F
 0055E337    lea         edx,[ebp-10]
 0055E33A    mov         eax,[0056E344];^gvar_0059BF5C
 0055E33F    movzx       eax,word ptr [eax+2]
 0055E343    call        IntToStr
 0055E348    mov         edx,dword ptr [ebp-10]
 0055E34B    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E350    mov         eax,dword ptr [eax]
 0055E352    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E358    call        TPanel.SetCaption
>0055E35D    jmp         0055E376
 0055E35F    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E364    mov         eax,dword ptr [eax]
 0055E366    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E36C    mov         edx,55E460;'0'
 0055E371    call        TPanel.SetCaption
 0055E376    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E37B    mov         eax,dword ptr [eax]
 0055E37D    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E383    mov         edx,8
 0055E388    call        TLabeledEdit.SetMaxLength
 0055E38D    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E392    mov         eax,dword ptr [eax]
 0055E394    mov         edx,dword ptr [eax]
 0055E396    call        dword ptr [edx+0EC]
 0055E39C    dec         eax
>0055E39D    jne         0055E3FE
 0055E39F    lea         edx,[ebp-14]
 0055E3A2    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E3A7    mov         eax,dword ptr [eax]
 0055E3A9    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E3AF    call        TPanel.GetCaption
 0055E3B4    mov         eax,dword ptr [ebp-14]
 0055E3B7    xor         edx,edx
 0055E3B9    call        0040C4A8
 0055E3BE    mov         word ptr [ebp-6],ax
 0055E3C2    mov         ax,word ptr [ebp-6]
 0055E3C6    call        004D18B8
 0055E3CB    call        004CEB6C
 0055E3D0    push        55E46C;'FmtSelect Set DCM '
 0055E3D5    lea         edx,[ebp-1C]
 0055E3D8    movzx       eax,word ptr [ebp-6]
 0055E3DC    call        IntToStr
 0055E3E1    push        dword ptr [ebp-1C]
 0055E3E4    push        55E488;' - '
 0055E3E9    lea         eax,[ebp-18]
 0055E3EC    mov         edx,3
 0055E3F1    call        @LStrCatN
 0055E3F6    mov         eax,dword ptr [ebp-18]
 0055E3F9    call        00544F6C
 0055E3FE    xor         eax,eax
 0055E400    pop         edx
 0055E401    pop         ecx
 0055E402    pop         ecx
 0055E403    mov         dword ptr fs:[eax],edx
 0055E406    push        55E430
 0055E40B    lea         eax,[ebp-1C]
 0055E40E    mov         edx,2
 0055E413    call        @LStrArrayClr
 0055E418    lea         eax,[ebp-14]
 0055E41B    call        @LStrClr
 0055E420    lea         eax,[ebp-10]
 0055E423    call        @LStrClr
 0055E428    ret
>0055E429    jmp         @HandleFinally
>0055E42E    jmp         0055E40B
 0055E430    mov         esp,ebp
 0055E432    pop         ebp
 0055E433    ret
*}
end;

//0055E48C
procedure TfmHDD.miSetTargetCapacityClick(Sender:TObject);
begin
{*
 0055E48C    push        ebp
 0055E48D    mov         ebp,esp
 0055E48F    xor         ecx,ecx
 0055E491    push        ecx
 0055E492    push        ecx
 0055E493    push        ecx
 0055E494    push        ecx
 0055E495    push        ecx
 0055E496    push        ecx
 0055E497    push        ecx
 0055E498    mov         dword ptr [ebp-0C],edx
 0055E49B    mov         dword ptr [ebp-4],eax
 0055E49E    xor         eax,eax
 0055E4A0    push        ebp
 0055E4A1    push        55E5FD
 0055E4A6    push        dword ptr fs:[eax]
 0055E4A9    mov         dword ptr fs:[eax],esp
 0055E4AC    mov         eax,[0056E5A4];^gvar_0056DF04
 0055E4B1    mov         byte ptr [eax],0
 0055E4B4    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E4B9    cmp         dword ptr [eax],0
>0055E4BC    jne         0055E4DA
 0055E4BE    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055E4C4    mov         ecx,dword ptr [ecx]
 0055E4C6    mov         dl,1
 0055E4C8    mov         eax,[004F7EE0];TfmString
 0055E4CD    call        TfmProgress.Create;TfmString.Create
 0055E4D2    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055E4D8    mov         dword ptr [edx],eax
 0055E4DA    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E4DF    mov         eax,dword ptr [eax]
 0055E4E1    mov         edx,55E610;'Selects the Target Capacity'
 0055E4E6    call        TPanel.SetCaption
 0055E4EB    mov         eax,[0056E284];^gvar_0056DF34
 0055E4F0    mov         eax,dword ptr [eax]
 0055E4F2    mov         eax,dword ptr [eax+408]
 0055E4F8    cmp         byte ptr [eax+38],0
>0055E4FC    je          0055E533
 0055E4FE    mov         ax,1
 0055E502    call        004D1860
 0055E507    test        al,al
>0055E509    je          0055E533
 0055E50B    lea         edx,[ebp-10]
 0055E50E    mov         eax,[0056E344];^gvar_0059BF5C
 0055E513    movzx       eax,word ptr [eax+14]
 0055E517    call        IntToStr
 0055E51C    mov         edx,dword ptr [ebp-10]
 0055E51F    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E524    mov         eax,dword ptr [eax]
 0055E526    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E52C    call        TPanel.SetCaption
>0055E531    jmp         0055E54A
 0055E533    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E538    mov         eax,dword ptr [eax]
 0055E53A    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E540    mov         edx,55E634;'0'
 0055E545    call        TPanel.SetCaption
 0055E54A    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E54F    mov         eax,dword ptr [eax]
 0055E551    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E557    mov         edx,8
 0055E55C    call        TLabeledEdit.SetMaxLength
 0055E561    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E566    mov         eax,dword ptr [eax]
 0055E568    mov         edx,dword ptr [eax]
 0055E56A    call        dword ptr [edx+0EC]
 0055E570    dec         eax
>0055E571    jne         0055E5D2
 0055E573    lea         edx,[ebp-14]
 0055E576    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E57B    mov         eax,dword ptr [eax]
 0055E57D    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E583    call        TPanel.GetCaption
 0055E588    mov         eax,dword ptr [ebp-14]
 0055E58B    xor         edx,edx
 0055E58D    call        0040C4A8
 0055E592    mov         word ptr [ebp-6],ax
 0055E596    mov         ax,word ptr [ebp-6]
 0055E59A    call        004D190C
 0055E59F    call        004CEB6C
 0055E5A4    push        55E640;'FmtSelect Set Target Capacity '
 0055E5A9    lea         edx,[ebp-1C]
 0055E5AC    movzx       eax,word ptr [ebp-6]
 0055E5B0    call        IntToStr
 0055E5B5    push        dword ptr [ebp-1C]
 0055E5B8    push        55E668;' - '
 0055E5BD    lea         eax,[ebp-18]
 0055E5C0    mov         edx,3
 0055E5C5    call        @LStrCatN
 0055E5CA    mov         eax,dword ptr [ebp-18]
 0055E5CD    call        00544F6C
 0055E5D2    xor         eax,eax
 0055E5D4    pop         edx
 0055E5D5    pop         ecx
 0055E5D6    pop         ecx
 0055E5D7    mov         dword ptr fs:[eax],edx
 0055E5DA    push        55E604
 0055E5DF    lea         eax,[ebp-1C]
 0055E5E2    mov         edx,2
 0055E5E7    call        @LStrArrayClr
 0055E5EC    lea         eax,[ebp-14]
 0055E5EF    call        @LStrClr
 0055E5F4    lea         eax,[ebp-10]
 0055E5F7    call        @LStrClr
 0055E5FC    ret
>0055E5FD    jmp         @HandleFinally
>0055E602    jmp         0055E5DF
 0055E604    mov         esp,ebp
 0055E606    pop         ebp
 0055E607    ret
*}
end;

//0055E66C
{*procedure TfmHDD.miSetHQCapacityClick(?:?);
begin
 0055E66C    push        ebp
 0055E66D    mov         ebp,esp
 0055E66F    xor         ecx,ecx
 0055E671    push        ecx
 0055E672    push        ecx
 0055E673    push        ecx
 0055E674    push        ecx
 0055E675    push        ecx
 0055E676    push        ecx
 0055E677    push        ecx
 0055E678    mov         dword ptr [ebp-0C],edx
 0055E67B    mov         dword ptr [ebp-4],eax
 0055E67E    xor         eax,eax
 0055E680    push        ebp
 0055E681    push        55E7DD
 0055E686    push        dword ptr fs:[eax]
 0055E689    mov         dword ptr fs:[eax],esp
 0055E68C    mov         eax,[0056E5A4];^gvar_0056DF04
 0055E691    mov         byte ptr [eax],0
 0055E694    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E699    cmp         dword ptr [eax],0
>0055E69C    jne         0055E6BA
 0055E69E    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055E6A4    mov         ecx,dword ptr [ecx]
 0055E6A6    mov         dl,1
 0055E6A8    mov         eax,[004F7EE0];TfmString
 0055E6AD    call        TfmProgress.Create;TfmString.Create
 0055E6B2    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055E6B8    mov         dword ptr [edx],eax
 0055E6BA    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E6BF    mov         eax,dword ptr [eax]
 0055E6C1    mov         edx,55E7F0;'Selects the HQ Capacity'
 0055E6C6    call        TPanel.SetCaption
 0055E6CB    mov         eax,[0056E284];^gvar_0056DF34
 0055E6D0    mov         eax,dword ptr [eax]
 0055E6D2    mov         eax,dword ptr [eax+408]
 0055E6D8    cmp         byte ptr [eax+38],0
>0055E6DC    je          0055E713
 0055E6DE    mov         ax,1
 0055E6E2    call        004D1860
 0055E6E7    test        al,al
>0055E6E9    je          0055E713
 0055E6EB    lea         edx,[ebp-10]
 0055E6EE    mov         eax,[0056E344];^gvar_0059BF5C
 0055E6F3    movzx       eax,word ptr [eax+1E]
 0055E6F7    call        IntToStr
 0055E6FC    mov         edx,dword ptr [ebp-10]
 0055E6FF    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E704    mov         eax,dword ptr [eax]
 0055E706    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E70C    call        TPanel.SetCaption
>0055E711    jmp         0055E72A
 0055E713    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E718    mov         eax,dword ptr [eax]
 0055E71A    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E720    mov         edx,55E810;'0'
 0055E725    call        TPanel.SetCaption
 0055E72A    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E72F    mov         eax,dword ptr [eax]
 0055E731    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E737    mov         edx,8
 0055E73C    call        TLabeledEdit.SetMaxLength
 0055E741    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E746    mov         eax,dword ptr [eax]
 0055E748    mov         edx,dword ptr [eax]
 0055E74A    call        dword ptr [edx+0EC]
 0055E750    dec         eax
>0055E751    jne         0055E7B2
 0055E753    lea         edx,[ebp-14]
 0055E756    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055E75B    mov         eax,dword ptr [eax]
 0055E75D    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055E763    call        TPanel.GetCaption
 0055E768    mov         eax,dword ptr [ebp-14]
 0055E76B    xor         edx,edx
 0055E76D    call        0040C4A8
 0055E772    mov         word ptr [ebp-6],ax
 0055E776    mov         ax,word ptr [ebp-6]
 0055E77A    call        004D1960
 0055E77F    call        004CEB6C
 0055E784    push        55E81C;'FmtSelect Set HQ Capacity '
 0055E789    lea         edx,[ebp-1C]
 0055E78C    movzx       eax,word ptr [ebp-6]
 0055E790    call        IntToStr
 0055E795    push        dword ptr [ebp-1C]
 0055E798    push        55E840;' - '
 0055E79D    lea         eax,[ebp-18]
 0055E7A0    mov         edx,3
 0055E7A5    call        @LStrCatN
 0055E7AA    mov         eax,dword ptr [ebp-18]
 0055E7AD    call        00544F6C
 0055E7B2    xor         eax,eax
 0055E7B4    pop         edx
 0055E7B5    pop         ecx
 0055E7B6    pop         ecx
 0055E7B7    mov         dword ptr fs:[eax],edx
 0055E7BA    push        55E7E4
 0055E7BF    lea         eax,[ebp-1C]
 0055E7C2    mov         edx,2
 0055E7C7    call        @LStrArrayClr
 0055E7CC    lea         eax,[ebp-14]
 0055E7CF    call        @LStrClr
 0055E7D4    lea         eax,[ebp-10]
 0055E7D7    call        @LStrClr
 0055E7DC    ret
>0055E7DD    jmp         @HandleFinally
>0055E7E2    jmp         0055E7BF
 0055E7E4    mov         esp,ebp
 0055E7E6    pop         ebp
 0055E7E7    ret
end;*}

//0055E844
{*procedure sub_0055E844(?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0055E844    push        ebp
 0055E845    mov         ebp,esp
 0055E847    add         esp,0FFFFFFDC
 0055E84A    push        ebx
 0055E84B    xor         ebx,ebx
 0055E84D    mov         dword ptr [ebp-10],ebx
 0055E850    mov         dword ptr [ebp-14],ebx
 0055E853    mov         dword ptr [ebp-0C],ecx
 0055E856    mov         dword ptr [ebp-8],edx
 0055E859    mov         dword ptr [ebp-4],eax
 0055E85C    mov         eax,dword ptr [ebp-4]
 0055E85F    call        @LStrAddRef
 0055E864    xor         eax,eax
 0055E866    push        ebp
 0055E867    push        55E9F2
 0055E86C    push        dword ptr fs:[eax]
 0055E86F    mov         dword ptr fs:[eax],esp
 0055E872    mov         dword ptr [ebp-24],1
 0055E879    lea         edx,[ebp-10]
 0055E87C    mov         eax,dword ptr [ebp-4]
 0055E87F    call        0040BFEC
 0055E884    mov         eax,dword ptr [ebp-10]
 0055E887    call        @LStrLen
 0055E88C    mov         dword ptr [ebp-18],eax
 0055E88F    xor         eax,eax
 0055E891    mov         dword ptr [ebp-20],eax
 0055E894    xor         eax,eax
 0055E896    mov         dword ptr [ebp-1C],eax
>0055E899    jmp         0055E9BD
 0055E89E    mov         edx,dword ptr [ebp-10]
 0055E8A1    mov         eax,55EA08;','
 0055E8A6    call        @LStrPos
 0055E8AB    mov         dword ptr [ebp-24],eax
 0055E8AE    cmp         dword ptr [ebp-24],0
>0055E8B2    jle         0055E8E8
 0055E8B4    lea         eax,[ebp-14]
 0055E8B7    push        eax
 0055E8B8    mov         ecx,dword ptr [ebp-24]
 0055E8BB    dec         ecx
 0055E8BC    mov         edx,1
 0055E8C1    mov         eax,dword ptr [ebp-10]
 0055E8C4    call        @LStrCopy
 0055E8C9    lea         eax,[ebp-10]
 0055E8CC    push        eax
 0055E8CD    mov         eax,dword ptr [ebp-10]
 0055E8D0    call        @LStrLen
 0055E8D5    mov         ecx,eax
 0055E8D7    sub         ecx,dword ptr [ebp-24]
 0055E8DA    mov         edx,dword ptr [ebp-24]
 0055E8DD    inc         edx
 0055E8DE    mov         eax,dword ptr [ebp-10]
 0055E8E1    call        @LStrCopy
>0055E8E6    jmp         0055E8F3
 0055E8E8    lea         eax,[ebp-14]
 0055E8EB    mov         edx,dword ptr [ebp-10]
 0055E8EE    call        @LStrLAsg
 0055E8F3    mov         eax,dword ptr [ebp-20]
 0055E8F6    cmp         eax,7
>0055E8F9    ja          0055E9B4
 0055E8FF    jmp         dword ptr [eax*4+55E906]
 0055E8FF    dd          0055E926
 0055E8FF    dd          0055E938
 0055E8FF    dd          0055E94A
 0055E8FF    dd          0055E95C
 0055E8FF    dd          0055E96E
 0055E8FF    dd          0055E980
 0055E8FF    dd          0055E992
 0055E8FF    dd          0055E9A4
 0055E926    xor         edx,edx
 0055E928    mov         eax,dword ptr [ebp-14]
 0055E92B    call        0040C4A8
 0055E930    mov         edx,dword ptr [ebp-8]
 0055E933    mov         word ptr [edx],ax
>0055E936    jmp         0055E9B4
 0055E938    xor         edx,edx
 0055E93A    mov         eax,dword ptr [ebp-14]
 0055E93D    call        0040C4A8
 0055E942    mov         edx,dword ptr [ebp-0C]
 0055E945    mov         word ptr [edx],ax
>0055E948    jmp         0055E9B4
 0055E94A    xor         edx,edx
 0055E94C    mov         eax,dword ptr [ebp-14]
 0055E94F    call        0040C4A8
 0055E954    mov         edx,dword ptr [ebp+1C]
 0055E957    mov         word ptr [edx],ax
>0055E95A    jmp         0055E9B4
 0055E95C    xor         edx,edx
 0055E95E    mov         eax,dword ptr [ebp-14]
 0055E961    call        0040C4A8
 0055E966    mov         edx,dword ptr [ebp+18]
 0055E969    mov         word ptr [edx],ax
>0055E96C    jmp         0055E9B4
 0055E96E    xor         edx,edx
 0055E970    mov         eax,dword ptr [ebp-14]
 0055E973    call        0040C4A8
 0055E978    mov         edx,dword ptr [ebp+14]
 0055E97B    mov         word ptr [edx],ax
>0055E97E    jmp         0055E9B4
 0055E980    xor         edx,edx
 0055E982    mov         eax,dword ptr [ebp-14]
 0055E985    call        0040C4A8
 0055E98A    mov         edx,dword ptr [ebp+10]
 0055E98D    mov         word ptr [edx],ax
>0055E990    jmp         0055E9B4
 0055E992    xor         edx,edx
 0055E994    mov         eax,dword ptr [ebp-14]
 0055E997    call        0040C4A8
 0055E99C    mov         edx,dword ptr [ebp+0C]
 0055E99F    mov         word ptr [edx],ax
>0055E9A2    jmp         0055E9B4
 0055E9A4    xor         edx,edx
 0055E9A6    mov         eax,dword ptr [ebp-14]
 0055E9A9    call        0040C4A8
 0055E9AE    mov         edx,dword ptr [ebp+8]
 0055E9B1    mov         word ptr [edx],ax
 0055E9B4    mov         eax,dword ptr [ebp-24]
 0055E9B7    add         dword ptr [ebp-1C],eax
 0055E9BA    inc         dword ptr [ebp-20]
 0055E9BD    mov         eax,dword ptr [ebp-1C]
 0055E9C0    cmp         eax,dword ptr [ebp-18]
>0055E9C3    jge         0055E9CF
 0055E9C5    cmp         dword ptr [ebp-24],0
>0055E9C9    jg          0055E89E
 0055E9CF    xor         eax,eax
 0055E9D1    pop         edx
 0055E9D2    pop         ecx
 0055E9D3    pop         ecx
 0055E9D4    mov         dword ptr fs:[eax],edx
 0055E9D7    push        55E9F9
 0055E9DC    lea         eax,[ebp-14]
 0055E9DF    mov         edx,2
 0055E9E4    call        @LStrArrayClr
 0055E9E9    lea         eax,[ebp-4]
 0055E9EC    call        @LStrClr
 0055E9F1    ret
>0055E9F2    jmp         @HandleFinally
>0055E9F7    jmp         0055E9DC
 0055E9F9    pop         ebx
 0055E9FA    mov         esp,ebp
 0055E9FC    pop         ebp
 0055E9FD    ret         18
end;*}

//0055EA0C
{*procedure TfmHDD.miSetTPIClick(?:?);
begin
 0055EA0C    push        ebp
 0055EA0D    mov         ebp,esp
 0055EA0F    add         esp,0FFFFFF98
 0055EA12    xor         ecx,ecx
 0055EA14    mov         dword ptr [ebp-68],ecx
 0055EA17    mov         dword ptr [ebp-64],ecx
 0055EA1A    mov         dword ptr [ebp-60],ecx
 0055EA1D    mov         dword ptr [ebp-1C],ecx
 0055EA20    mov         dword ptr [ebp-18],edx
 0055EA23    mov         dword ptr [ebp-4],eax
 0055EA26    xor         eax,eax
 0055EA28    push        ebp
 0055EA29    push        55ED8C
 0055EA2E    push        dword ptr fs:[eax]
 0055EA31    mov         dword ptr fs:[eax],esp
 0055EA34    mov         eax,[0056E5A4];^gvar_0056DF04
 0055EA39    mov         byte ptr [eax],0
 0055EA3C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EA41    cmp         dword ptr [eax],0
>0055EA44    jne         0055EA62
 0055EA46    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055EA4C    mov         ecx,dword ptr [ecx]
 0055EA4E    mov         dl,1
 0055EA50    mov         eax,[004F7EE0];TfmString
 0055EA55    call        TfmProgress.Create;TfmString.Create
 0055EA5A    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055EA60    mov         dword ptr [edx],eax
 0055EA62    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EA67    mov         eax,dword ptr [eax]
 0055EA69    mov         edx,55EDA0;'Selects the TPIs for all heads'
 0055EA6E    call        TPanel.SetCaption
 0055EA73    mov         eax,[0056E284];^gvar_0056DF34
 0055EA78    mov         eax,dword ptr [eax]
 0055EA7A    mov         eax,dword ptr [eax+408]
 0055EA80    cmp         byte ptr [eax+38],0
>0055EA84    je          0055EC30
 0055EA8A    mov         ax,1
 0055EA8E    call        004D1860
 0055EA93    test        al,al
>0055EA95    je          0055EC30
 0055EA9B    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAA0    cmp         word ptr [eax],100
>0055EAA5    jne         0055EB6B
 0055EAAB    lea         eax,[ebp-1C]
 0055EAAE    push        eax
 0055EAAF    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAB4    mov         eax,dword ptr [eax+13A]
 0055EABA    mov         dword ptr [ebp-5C],eax
 0055EABD    mov         byte ptr [ebp-58],0
 0055EAC1    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAC6    mov         eax,dword ptr [eax+13A]
 0055EACC    mov         dword ptr [ebp-54],eax
 0055EACF    mov         byte ptr [ebp-50],0
 0055EAD3    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAD8    mov         eax,dword ptr [eax+13A]
 0055EADE    mov         dword ptr [ebp-4C],eax
 0055EAE1    mov         byte ptr [ebp-48],0
 0055EAE5    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAEA    mov         eax,dword ptr [eax+13A]
 0055EAF0    mov         dword ptr [ebp-44],eax
 0055EAF3    mov         byte ptr [ebp-40],0
 0055EAF7    mov         eax,[0056E344];^gvar_0059BF5C
 0055EAFC    mov         eax,dword ptr [eax+13A]
 0055EB02    mov         dword ptr [ebp-3C],eax
 0055EB05    mov         byte ptr [ebp-38],0
 0055EB09    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB0E    mov         eax,dword ptr [eax+13A]
 0055EB14    mov         dword ptr [ebp-34],eax
 0055EB17    mov         byte ptr [ebp-30],0
 0055EB1B    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB20    mov         eax,dword ptr [eax+13A]
 0055EB26    mov         dword ptr [ebp-2C],eax
 0055EB29    mov         byte ptr [ebp-28],0
 0055EB2D    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB32    mov         eax,dword ptr [eax+13A]
 0055EB38    mov         dword ptr [ebp-24],eax
 0055EB3B    mov         byte ptr [ebp-20],0
 0055EB3F    lea         edx,[ebp-5C]
 0055EB42    mov         ecx,7
 0055EB47    mov         eax,55EDC8;'%d,%d,%d,%d,%d,%d,%d,%d'
 0055EB4C    call        0040D630
 0055EB51    mov         edx,dword ptr [ebp-1C]
 0055EB54    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EB59    mov         eax,dword ptr [eax]
 0055EB5B    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EB61    call        TPanel.SetCaption
>0055EB66    jmp         0055EC47
 0055EB6B    lea         eax,[ebp-60]
 0055EB6E    push        eax
 0055EB6F    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB74    movzx       eax,byte ptr [eax+142]
 0055EB7B    mov         dword ptr [ebp-5C],eax
 0055EB7E    mov         byte ptr [ebp-58],0
 0055EB82    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB87    movzx       eax,byte ptr [eax+144]
 0055EB8E    mov         dword ptr [ebp-54],eax
 0055EB91    mov         byte ptr [ebp-50],0
 0055EB95    mov         eax,[0056E344];^gvar_0059BF5C
 0055EB9A    movzx       eax,byte ptr [eax+146]
 0055EBA1    mov         dword ptr [ebp-4C],eax
 0055EBA4    mov         byte ptr [ebp-48],0
 0055EBA8    mov         eax,[0056E344];^gvar_0059BF5C
 0055EBAD    movzx       eax,byte ptr [eax+148]
 0055EBB4    mov         dword ptr [ebp-44],eax
 0055EBB7    mov         byte ptr [ebp-40],0
 0055EBBB    mov         eax,[0056E344];^gvar_0059BF5C
 0055EBC0    movzx       eax,byte ptr [eax+14A]
 0055EBC7    mov         dword ptr [ebp-3C],eax
 0055EBCA    mov         byte ptr [ebp-38],0
 0055EBCE    mov         eax,[0056E344];^gvar_0059BF5C
 0055EBD3    movzx       eax,byte ptr [eax+14C]
 0055EBDA    mov         dword ptr [ebp-34],eax
 0055EBDD    mov         byte ptr [ebp-30],0
 0055EBE1    mov         eax,[0056E344];^gvar_0059BF5C
 0055EBE6    movzx       eax,byte ptr [eax+14E]
 0055EBED    mov         dword ptr [ebp-2C],eax
 0055EBF0    mov         byte ptr [ebp-28],0
 0055EBF4    mov         eax,[0056E344];^gvar_0059BF5C
 0055EBF9    movzx       eax,byte ptr [eax+150]
 0055EC00    mov         dword ptr [ebp-24],eax
 0055EC03    mov         byte ptr [ebp-20],0
 0055EC07    lea         edx,[ebp-5C]
 0055EC0A    mov         ecx,7
 0055EC0F    mov         eax,55EDC8;'%d,%d,%d,%d,%d,%d,%d,%d'
 0055EC14    call        0040D630
 0055EC19    mov         edx,dword ptr [ebp-60]
 0055EC1C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EC21    mov         eax,dword ptr [eax]
 0055EC23    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EC29    call        TPanel.SetCaption
>0055EC2E    jmp         0055EC47
 0055EC30    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EC35    mov         eax,dword ptr [eax]
 0055EC37    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EC3D    mov         edx,55EDE8;'0,0,0,0,0,0,0,0'
 0055EC42    call        TPanel.SetCaption
 0055EC47    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EC4C    mov         eax,dword ptr [eax]
 0055EC4E    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EC54    mov         edx,14
 0055EC59    call        TLabeledEdit.SetMaxLength
 0055EC5E    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EC63    mov         eax,dword ptr [eax]
 0055EC65    mov         edx,dword ptr [eax]
 0055EC67    call        dword ptr [edx+0EC]
 0055EC6D    dec         eax
>0055EC6E    jne         0055ED5E
 0055EC74    lea         eax,[ebp-0A]
 0055EC77    push        eax
 0055EC78    lea         eax,[ebp-0C]
 0055EC7B    push        eax
 0055EC7C    lea         eax,[ebp-0E]
 0055EC7F    push        eax
 0055EC80    lea         eax,[ebp-10]
 0055EC83    push        eax
 0055EC84    lea         eax,[ebp-12]
 0055EC87    push        eax
 0055EC88    lea         eax,[ebp-14]
 0055EC8B    push        eax
 0055EC8C    lea         edx,[ebp-64]
 0055EC8F    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EC94    mov         eax,dword ptr [eax]
 0055EC96    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EC9C    call        TPanel.GetCaption
 0055ECA1    mov         eax,dword ptr [ebp-64]
 0055ECA4    lea         ecx,[ebp-8]
 0055ECA7    lea         edx,[ebp-6]
 0055ECAA    call        0055E844
 0055ECAF    lea         eax,[ebp-68]
 0055ECB2    push        eax
 0055ECB3    movzx       eax,word ptr [ebp-6]
 0055ECB7    mov         dword ptr [ebp-5C],eax
 0055ECBA    mov         byte ptr [ebp-58],0
 0055ECBE    movzx       eax,word ptr [ebp-8]
 0055ECC2    mov         dword ptr [ebp-54],eax
 0055ECC5    mov         byte ptr [ebp-50],0
 0055ECC9    movzx       eax,word ptr [ebp-0A]
 0055ECCD    mov         dword ptr [ebp-4C],eax
 0055ECD0    mov         byte ptr [ebp-48],0
 0055ECD4    movzx       eax,word ptr [ebp-0C]
 0055ECD8    mov         dword ptr [ebp-44],eax
 0055ECDB    mov         byte ptr [ebp-40],0
 0055ECDF    movzx       eax,word ptr [ebp-0E]
 0055ECE3    mov         dword ptr [ebp-3C],eax
 0055ECE6    mov         byte ptr [ebp-38],0
 0055ECEA    movzx       eax,word ptr [ebp-10]
 0055ECEE    mov         dword ptr [ebp-34],eax
 0055ECF1    mov         byte ptr [ebp-30],0
 0055ECF5    movzx       eax,word ptr [ebp-12]
 0055ECF9    mov         dword ptr [ebp-2C],eax
 0055ECFC    mov         byte ptr [ebp-28],0
 0055ED00    movzx       eax,word ptr [ebp-14]
 0055ED04    mov         dword ptr [ebp-24],eax
 0055ED07    mov         byte ptr [ebp-20],0
 0055ED0B    lea         edx,[ebp-5C]
 0055ED0E    mov         ecx,7
 0055ED13    mov         eax,55EE00;'FmtSelect_Set_TPI = %d,%d,%d,%d,%d,%d,%d,%d'
 0055ED18    call        0040D630
 0055ED1D    mov         eax,dword ptr [ebp-68]
 0055ED20    call        00544EB4
 0055ED25    mov         ax,word ptr [ebp-0C]
 0055ED29    push        eax
 0055ED2A    mov         ax,word ptr [ebp-0E]
 0055ED2E    push        eax
 0055ED2F    mov         ax,word ptr [ebp-10]
 0055ED33    push        eax
 0055ED34    mov         ax,word ptr [ebp-12]
 0055ED38    push        eax
 0055ED39    mov         ax,word ptr [ebp-14]
 0055ED3D    push        eax
 0055ED3E    mov         cx,word ptr [ebp-0A]
 0055ED42    mov         dx,word ptr [ebp-8]
 0055ED46    mov         ax,word ptr [ebp-6]
 0055ED4A    call        004D19B4
 0055ED4F    call        004CEB6C
 0055ED54    mov         eax,55EE34;'FmtSelect Set TPI - '
 0055ED59    call        00544F6C
 0055ED5E    xor         eax,eax
 0055ED60    pop         edx
 0055ED61    pop         ecx
 0055ED62    pop         ecx
 0055ED63    mov         dword ptr fs:[eax],edx
 0055ED66    push        55ED93
 0055ED6B    lea         eax,[ebp-68]
 0055ED6E    call        @LStrClr
 0055ED73    lea         eax,[ebp-64]
 0055ED76    call        @LStrClr
 0055ED7B    lea         eax,[ebp-60]
 0055ED7E    call        @LStrClr
 0055ED83    lea         eax,[ebp-1C]
 0055ED86    call        @LStrClr
 0055ED8B    ret
>0055ED8C    jmp         @HandleFinally
>0055ED91    jmp         0055ED6B
 0055ED93    mov         esp,ebp
 0055ED95    pop         ebp
 0055ED96    ret
end;*}

//0055EE4C
{*procedure TfmHDD.miSetCapacityClick(?:?);
begin
 0055EE4C    push        ebp
 0055EE4D    mov         ebp,esp
 0055EE4F    add         esp,0FFFFFF98
 0055EE52    xor         ecx,ecx
 0055EE54    mov         dword ptr [ebp-68],ecx
 0055EE57    mov         dword ptr [ebp-64],ecx
 0055EE5A    mov         dword ptr [ebp-60],ecx
 0055EE5D    mov         dword ptr [ebp-1C],ecx
 0055EE60    mov         dword ptr [ebp-18],edx
 0055EE63    mov         dword ptr [ebp-4],eax
 0055EE66    xor         eax,eax
 0055EE68    push        ebp
 0055EE69    push        55F1CC
 0055EE6E    push        dword ptr fs:[eax]
 0055EE71    mov         dword ptr fs:[eax],esp
 0055EE74    mov         eax,[0056E5A4];^gvar_0056DF04
 0055EE79    mov         byte ptr [eax],0
 0055EE7C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EE81    cmp         dword ptr [eax],0
>0055EE84    jne         0055EEA2
 0055EE86    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0055EE8C    mov         ecx,dword ptr [ecx]
 0055EE8E    mov         dl,1
 0055EE90    mov         eax,[004F7EE0];TfmString
 0055EE95    call        TfmProgress.Create;TfmString.Create
 0055EE9A    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 0055EEA0    mov         dword ptr [edx],eax
 0055EEA2    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EEA7    mov         eax,dword ptr [eax]
 0055EEA9    mov         edx,55F1E0;'Selects the Capacities for all heads'
 0055EEAE    call        TPanel.SetCaption
 0055EEB3    mov         eax,[0056E284];^gvar_0056DF34
 0055EEB8    mov         eax,dword ptr [eax]
 0055EEBA    mov         eax,dword ptr [eax+408]
 0055EEC0    cmp         byte ptr [eax+38],0
>0055EEC4    je          0055F070
 0055EECA    mov         ax,1
 0055EECE    call        004D1860
 0055EED3    test        al,al
>0055EED5    je          0055F070
 0055EEDB    mov         eax,[0056E344];^gvar_0059BF5C
 0055EEE0    cmp         word ptr [eax],100
>0055EEE5    jne         0055EFAB
 0055EEEB    lea         eax,[ebp-1C]
 0055EEEE    push        eax
 0055EEEF    mov         eax,[0056E344];^gvar_0059BF5C
 0055EEF4    mov         eax,dword ptr [eax+13E]
 0055EEFA    mov         dword ptr [ebp-5C],eax
 0055EEFD    mov         byte ptr [ebp-58],0
 0055EF01    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF06    mov         eax,dword ptr [eax+13E]
 0055EF0C    mov         dword ptr [ebp-54],eax
 0055EF0F    mov         byte ptr [ebp-50],0
 0055EF13    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF18    mov         eax,dword ptr [eax+13E]
 0055EF1E    mov         dword ptr [ebp-4C],eax
 0055EF21    mov         byte ptr [ebp-48],0
 0055EF25    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF2A    mov         eax,dword ptr [eax+13E]
 0055EF30    mov         dword ptr [ebp-44],eax
 0055EF33    mov         byte ptr [ebp-40],0
 0055EF37    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF3C    mov         eax,dword ptr [eax+13E]
 0055EF42    mov         dword ptr [ebp-3C],eax
 0055EF45    mov         byte ptr [ebp-38],0
 0055EF49    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF4E    mov         eax,dword ptr [eax+13E]
 0055EF54    mov         dword ptr [ebp-34],eax
 0055EF57    mov         byte ptr [ebp-30],0
 0055EF5B    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF60    mov         eax,dword ptr [eax+13E]
 0055EF66    mov         dword ptr [ebp-2C],eax
 0055EF69    mov         byte ptr [ebp-28],0
 0055EF6D    mov         eax,[0056E344];^gvar_0059BF5C
 0055EF72    mov         eax,dword ptr [eax+13E]
 0055EF78    mov         dword ptr [ebp-24],eax
 0055EF7B    mov         byte ptr [ebp-20],0
 0055EF7F    lea         edx,[ebp-5C]
 0055EF82    mov         ecx,7
 0055EF87    mov         eax,55F210;'%d,%d,%d,%d,%d,%d,%d,%d'
 0055EF8C    call        0040D630
 0055EF91    mov         edx,dword ptr [ebp-1C]
 0055EF94    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055EF99    mov         eax,dword ptr [eax]
 0055EF9B    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055EFA1    call        TPanel.SetCaption
>0055EFA6    jmp         0055F087
 0055EFAB    lea         eax,[ebp-60]
 0055EFAE    push        eax
 0055EFAF    mov         eax,[0056E344];^gvar_0059BF5C
 0055EFB4    movzx       eax,byte ptr [eax+143]
 0055EFBB    mov         dword ptr [ebp-5C],eax
 0055EFBE    mov         byte ptr [ebp-58],0
 0055EFC2    mov         eax,[0056E344];^gvar_0059BF5C
 0055EFC7    movzx       eax,byte ptr [eax+145]
 0055EFCE    mov         dword ptr [ebp-54],eax
 0055EFD1    mov         byte ptr [ebp-50],0
 0055EFD5    mov         eax,[0056E344];^gvar_0059BF5C
 0055EFDA    movzx       eax,byte ptr [eax+147]
 0055EFE1    mov         dword ptr [ebp-4C],eax
 0055EFE4    mov         byte ptr [ebp-48],0
 0055EFE8    mov         eax,[0056E344];^gvar_0059BF5C
 0055EFED    movzx       eax,byte ptr [eax+149]
 0055EFF4    mov         dword ptr [ebp-44],eax
 0055EFF7    mov         byte ptr [ebp-40],0
 0055EFFB    mov         eax,[0056E344];^gvar_0059BF5C
 0055F000    movzx       eax,byte ptr [eax+14B]
 0055F007    mov         dword ptr [ebp-3C],eax
 0055F00A    mov         byte ptr [ebp-38],0
 0055F00E    mov         eax,[0056E344];^gvar_0059BF5C
 0055F013    movzx       eax,byte ptr [eax+14D]
 0055F01A    mov         dword ptr [ebp-34],eax
 0055F01D    mov         byte ptr [ebp-30],0
 0055F021    mov         eax,[0056E344];^gvar_0059BF5C
 0055F026    movzx       eax,byte ptr [eax+14F]
 0055F02D    mov         dword ptr [ebp-2C],eax
 0055F030    mov         byte ptr [ebp-28],0
 0055F034    mov         eax,[0056E344];^gvar_0059BF5C
 0055F039    movzx       eax,byte ptr [eax+151]
 0055F040    mov         dword ptr [ebp-24],eax
 0055F043    mov         byte ptr [ebp-20],0
 0055F047    lea         edx,[ebp-5C]
 0055F04A    mov         ecx,7
 0055F04F    mov         eax,55F210;'%d,%d,%d,%d,%d,%d,%d,%d'
 0055F054    call        0040D630
 0055F059    mov         edx,dword ptr [ebp-60]
 0055F05C    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055F061    mov         eax,dword ptr [eax]
 0055F063    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055F069    call        TPanel.SetCaption
>0055F06E    jmp         0055F087
 0055F070    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055F075    mov         eax,dword ptr [eax]
 0055F077    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055F07D    mov         edx,55F230;'0,0,0,0,0,0,0,0'
 0055F082    call        TPanel.SetCaption
 0055F087    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055F08C    mov         eax,dword ptr [eax]
 0055F08E    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055F094    mov         edx,14
 0055F099    call        TLabeledEdit.SetMaxLength
 0055F09E    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055F0A3    mov         eax,dword ptr [eax]
 0055F0A5    mov         edx,dword ptr [eax]
 0055F0A7    call        dword ptr [edx+0EC]
 0055F0AD    dec         eax
>0055F0AE    jne         0055F19E
 0055F0B4    lea         eax,[ebp-0A]
 0055F0B7    push        eax
 0055F0B8    lea         eax,[ebp-0C]
 0055F0BB    push        eax
 0055F0BC    lea         eax,[ebp-0E]
 0055F0BF    push        eax
 0055F0C0    lea         eax,[ebp-10]
 0055F0C3    push        eax
 0055F0C4    lea         eax,[ebp-12]
 0055F0C7    push        eax
 0055F0C8    lea         eax,[ebp-14]
 0055F0CB    push        eax
 0055F0CC    lea         edx,[ebp-64]
 0055F0CF    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 0055F0D4    mov         eax,dword ptr [eax]
 0055F0D6    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 0055F0DC    call        TPanel.GetCaption
 0055F0E1    mov         eax,dword ptr [ebp-64]
 0055F0E4    lea         ecx,[ebp-8]
 0055F0E7    lea         edx,[ebp-6]
 0055F0EA    call        0055E844
 0055F0EF    lea         eax,[ebp-68]
 0055F0F2    push        eax
 0055F0F3    movzx       eax,word ptr [ebp-6]
 0055F0F7    mov         dword ptr [ebp-5C],eax
 0055F0FA    mov         byte ptr [ebp-58],0
 0055F0FE    movzx       eax,word ptr [ebp-8]
 0055F102    mov         dword ptr [ebp-54],eax
 0055F105    mov         byte ptr [ebp-50],0
 0055F109    movzx       eax,word ptr [ebp-0A]
 0055F10D    mov         dword ptr [ebp-4C],eax
 0055F110    mov         byte ptr [ebp-48],0
 0055F114    movzx       eax,word ptr [ebp-0C]
 0055F118    mov         dword ptr [ebp-44],eax
 0055F11B    mov         byte ptr [ebp-40],0
 0055F11F    movzx       eax,word ptr [ebp-0E]
 0055F123    mov         dword ptr [ebp-3C],eax
 0055F126    mov         byte ptr [ebp-38],0
 0055F12A    movzx       eax,word ptr [ebp-10]
 0055F12E    mov         dword ptr [ebp-34],eax
 0055F131    mov         byte ptr [ebp-30],0
 0055F135    movzx       eax,word ptr [ebp-12]
 0055F139    mov         dword ptr [ebp-2C],eax
 0055F13C    mov         byte ptr [ebp-28],0
 0055F140    movzx       eax,word ptr [ebp-14]
 0055F144    mov         dword ptr [ebp-24],eax
 0055F147    mov         byte ptr [ebp-20],0
 0055F14B    lea         edx,[ebp-5C]
 0055F14E    mov         ecx,7
 0055F153    mov         eax,55F248;'FmtSelect_Set_Capacity = %d,%d,%d,%d,%d,%d,%d,%d'
 0055F158    call        0040D630
 0055F15D    mov         eax,dword ptr [ebp-68]
 0055F160    call        00544EB4
 0055F165    mov         ax,word ptr [ebp-0C]
 0055F169    push        eax
 0055F16A    mov         ax,word ptr [ebp-0E]
 0055F16E    push        eax
 0055F16F    mov         ax,word ptr [ebp-10]
 0055F173    push        eax
 0055F174    mov         ax,word ptr [ebp-12]
 0055F178    push        eax
 0055F179    mov         ax,word ptr [ebp-14]
 0055F17D    push        eax
 0055F17E    mov         cx,word ptr [ebp-0A]
 0055F182    mov         dx,word ptr [ebp-8]
 0055F186    mov         ax,word ptr [ebp-6]
 0055F18A    call        004D1A3C
 0055F18F    call        004CEB6C
 0055F194    mov         eax,55F284;'FmtSelect Set Capacity - '
 0055F199    call        00544F6C
 0055F19E    xor         eax,eax
 0055F1A0    pop         edx
 0055F1A1    pop         ecx
 0055F1A2    pop         ecx
 0055F1A3    mov         dword ptr fs:[eax],edx
 0055F1A6    push        55F1D3
 0055F1AB    lea         eax,[ebp-68]
 0055F1AE    call        @LStrClr
 0055F1B3    lea         eax,[ebp-64]
 0055F1B6    call        @LStrClr
 0055F1BB    lea         eax,[ebp-60]
 0055F1BE    call        @LStrClr
 0055F1C3    lea         eax,[ebp-1C]
 0055F1C6    call        @LStrClr
 0055F1CB    ret
>0055F1CC    jmp         @HandleFinally
>0055F1D1    jmp         0055F1AB
 0055F1D3    mov         esp,ebp
 0055F1D5    pop         ebp
 0055F1D6    ret
end;*}

//0055F2A0
procedure TfmHDD.miClearTranslatorClick(Sender:TObject);
begin
{*
 0055F2A0    push        ebp
 0055F2A1    mov         ebp,esp
 0055F2A3    add         esp,0FFFFFFF8
 0055F2A6    mov         dword ptr [ebp-8],edx
 0055F2A9    mov         dword ptr [ebp-4],eax
 0055F2AC    mov         ax,31
 0055F2B0    call        005077AC
 0055F2B5    call        004CEB6C
 0055F2BA    mov         eax,55F2E8;'PushDown-List clear - '
 0055F2BF    call        00544F6C
 0055F2C4    mov         ax,32
 0055F2C8    call        005077AC
 0055F2CD    call        004CEB6C
 0055F2D2    mov         eax,55F308;'Relo-List clear - '
 0055F2D7    call        00544F6C
 0055F2DC    pop         ecx
 0055F2DD    pop         ecx
 0055F2DE    pop         ebp
 0055F2DF    ret
*}
end;

//0055F31C
procedure TfmHDD.miSMARTClick(Sender:TObject);
begin
{*
 0055F31C    push        ebp
 0055F31D    mov         ebp,esp
 0055F31F    add         esp,0FFFFFFF8
 0055F322    mov         dword ptr [ebp-8],edx
 0055F325    mov         dword ptr [ebp-4],eax
 0055F328    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055F32E    mov         eax,[00540278];TfmSmart
 0055F333    call        005404DC
 0055F338    pop         ecx
 0055F339    pop         ecx
 0055F33A    pop         ebp
 0055F33B    ret
*}
end;

//0055F33C
procedure TfmHDD.miEditTListClick(Sender:TObject);
begin
{*
 0055F33C    push        ebp
 0055F33D    mov         ebp,esp
 0055F33F    add         esp,0FFFFFFF8
 0055F342    mov         dword ptr [ebp-8],edx
 0055F345    mov         dword ptr [ebp-4],eax
 0055F348    mov         ecx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055F34E    mov         dx,36
 0055F352    mov         eax,[004F80C0];TfmDefectsEditor
 0055F357    call        004F84F0
 0055F35C    pop         ecx
 0055F35D    pop         ecx
 0055F35E    pop         ebp
 0055F35F    ret
*}
end;

//0055F360
procedure TfmHDD.miClearTListClick(Sender:TObject);
begin
{*
 0055F360    push        ebp
 0055F361    mov         ebp,esp
 0055F363    add         esp,0FFFFFFF8
 0055F366    mov         dword ptr [ebp-8],edx
 0055F369    mov         dword ptr [ebp-4],eax
 0055F36C    mov         ax,36
 0055F370    call        005077AC
 0055F375    call        004CEB6C
 0055F37A    mov         eax,55F390;'Clear T-List - '
 0055F37F    call        00544F6C
 0055F384    pop         ecx
 0055F385    pop         ecx
 0055F386    pop         ebp
 0055F387    ret
*}
end;

//0055F3A0
{*procedure TfmHDD.miClearFactoryFileClick(?:?);
begin
 0055F3A0    push        ebp
 0055F3A1    mov         ebp,esp
 0055F3A3    add         esp,0FFFFFFF8
 0055F3A6    mov         dword ptr [ebp-8],edx
 0055F3A9    mov         dword ptr [ebp-4],eax
 0055F3AC    call        004CED2C
 0055F3B1    push        0
 0055F3B3    push        0
 0055F3B5    push        0
 0055F3B7    push        0
 0055F3B9    push        0
 0055F3BB    mov         cx,2
 0055F3BF    mov         dx,1
 0055F3C3    mov         ax,0E
 0055F3C7    call        004CE5F4
 0055F3CC    call        004CEB6C
 0055F3D1    mov         eax,55F3E8;'Reset Drive Data Table (Factory File) - '
 0055F3D6    call        00544F6C
 0055F3DB    pop         ecx
 0055F3DC    pop         ecx
 0055F3DD    pop         ebp
 0055F3DE    ret
end;*}

//0055F414
procedure TfmHDD.tbViewSSLogsClick(Sender:TObject);
begin
{*
 0055F414    push        ebp
 0055F415    mov         ebp,esp
 0055F417    add         esp,0FFFFFFF8
 0055F41A    mov         dword ptr [ebp-8],edx
 0055F41D    mov         dword ptr [ebp-4],eax
 0055F420    xor         edx,edx
 0055F422    mov         eax,dword ptr [ebp-4]
 0055F425    call        TfmHDD.miViewCommonLogClick
 0055F42A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055F42F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055F435    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055F43B    xor         edx,edx
 0055F43D    mov         ecx,dword ptr [eax]
 0055F43F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055F442    xor         edx,edx
 0055F444    mov         eax,dword ptr [ebp-4]
 0055F447    call        TfmHDD.miViewSSStatisticClick
 0055F44C    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055F451    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055F457    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055F45D    xor         edx,edx
 0055F45F    mov         ecx,dword ptr [eax]
 0055F461    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055F464    pop         ecx
 0055F465    pop         ecx
 0055F466    pop         ebp
 0055F467    ret
*}
end;

//0055F468
{*procedure TfmHDD.miViewPreampIDClick(?:?);
begin
 0055F468    push        ebp
 0055F469    mov         ebp,esp
 0055F46B    mov         ecx,5
 0055F470    push        0
 0055F472    push        0
 0055F474    dec         ecx
>0055F475    jne         0055F470
 0055F477    push        ebx
 0055F478    mov         dword ptr [ebp-14],edx
 0055F47B    mov         dword ptr [ebp-4],eax
 0055F47E    xor         eax,eax
 0055F480    push        ebp
 0055F481    push        55F5B1
 0055F486    push        dword ptr fs:[eax]
 0055F489    mov         dword ptr fs:[eax],esp
 0055F48C    lea         edx,[ebp-1C]
 0055F48F    xor         eax,eax
 0055F491    call        00403214
 0055F496    mov         eax,dword ptr [ebp-1C]
 0055F499    lea         edx,[ebp-18]
 0055F49C    call        0040CC5C
 0055F4A1    lea         eax,[ebp-18]
 0055F4A4    mov         edx,55F5C8;'wdm.ini'
 0055F4A9    call        @LStrCat
 0055F4AE    mov         ecx,dword ptr [ebp-18]
 0055F4B1    mov         dl,1
 0055F4B3    mov         eax,[004497F8];TIniFile
 0055F4B8    call        TIniFile.Create;TIniFile.Create
 0055F4BD    mov         dword ptr [ebp-0C],eax
 0055F4C0    xor         eax,eax
 0055F4C2    push        ebp
 0055F4C3    push        55F587
 0055F4C8    push        dword ptr fs:[eax]
 0055F4CB    mov         dword ptr fs:[eax],esp
 0055F4CE    call        004CED2C
 0055F4D3    xor         eax,eax
 0055F4D5    call        004D1AC4
 0055F4DA    mov         byte ptr [ebp-5],al
 0055F4DD    mov         eax,[0056E3F8];^gvar_0059BF4C
 0055F4E2    cmp         byte ptr [eax],0
>0055F4E5    jne         0055F562
 0055F4E7    mov         eax,[0056E5A4];^gvar_0056DF04
 0055F4EC    cmp         byte ptr [eax],0
>0055F4EF    jne         0055F562
 0055F4F1    push        0
 0055F4F3    lea         eax,[ebp-10]
 0055F4F6    push        eax
 0055F4F7    lea         ecx,[ebp-20]
 0055F4FA    xor         eax,eax
 0055F4FC    mov         al,byte ptr [ebp-5]
 0055F4FF    mov         edx,2
 0055F504    call        IntToHex
 0055F509    mov         ecx,dword ptr [ebp-20]
 0055F50C    mov         edx,55F5D8;'PreAmp'
 0055F511    mov         eax,dword ptr [ebp-0C]
 0055F514    mov         ebx,dword ptr [eax]
 0055F516    call        dword ptr [ebx];TIniFile.sub_0044A254
 0055F518    push        55F5E8;#10+Pre-Amp ID:'
 0055F51D    lea         ecx,[ebp-28]
 0055F520    xor         eax,eax
 0055F522    mov         al,byte ptr [ebp-5]
 0055F525    mov         edx,2
 0055F52A    call        IntToHex
 0055F52F    push        dword ptr [ebp-28]
 0055F532    push        55F600;' '
 0055F537    push        dword ptr [ebp-10]
 0055F53A    lea         eax,[ebp-24]
 0055F53D    mov         edx,4
 0055F542    call        @LStrCatN
 0055F547    mov         edx,dword ptr [ebp-24]
 0055F54A    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055F54F    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055F555    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055F55B    mov         ecx,dword ptr [eax]
 0055F55D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
>0055F560    jmp         0055F571
 0055F562    call        004CEB6C
 0055F567    mov         eax,55F60C;'Read Pre-Amp ID - '
 0055F56C    call        00544F6C
 0055F571    xor         eax,eax
 0055F573    pop         edx
 0055F574    pop         ecx
 0055F575    pop         ecx
 0055F576    mov         dword ptr fs:[eax],edx
 0055F579    push        55F58E
 0055F57E    mov         eax,dword ptr [ebp-0C]
 0055F581    call        TObject.Free
 0055F586    ret
>0055F587    jmp         @HandleFinally
>0055F58C    jmp         0055F57E
 0055F58E    xor         eax,eax
 0055F590    pop         edx
 0055F591    pop         ecx
 0055F592    pop         ecx
 0055F593    mov         dword ptr fs:[eax],edx
 0055F596    push        55F5B8
 0055F59B    lea         eax,[ebp-28]
 0055F59E    mov         edx,5
 0055F5A3    call        @LStrArrayClr
 0055F5A8    lea         eax,[ebp-10]
 0055F5AB    call        @LStrClr
 0055F5B0    ret
>0055F5B1    jmp         @HandleFinally
>0055F5B6    jmp         0055F59B
 0055F5B8    pop         ebx
 0055F5B9    mov         esp,ebp
 0055F5BB    pop         ebp
 0055F5BC    ret
end;*}

//0055F620
{*procedure TfmHDD.miViewFieldListClick(?:?);
begin
 0055F620    push        ebp
 0055F621    mov         ebp,esp
 0055F623    add         esp,0FFFFFBC8
 0055F629    push        ebx
 0055F62A    xor         ecx,ecx
 0055F62C    mov         dword ptr [ebp-410],ecx
 0055F632    mov         dword ptr [ebp-42C],ecx
 0055F638    mov         dword ptr [ebp-430],ecx
 0055F63E    mov         dword ptr [ebp-40C],ecx
 0055F644    mov         dword ptr [ebp-408],ecx
 0055F64A    mov         dword ptr [ebp-404],ecx
 0055F650    mov         dword ptr [ebp-400],ecx
 0055F656    mov         dword ptr [ebp-3FC],ecx
 0055F65C    mov         dword ptr [ebp-10],ecx
 0055F65F    mov         dword ptr [ebp-14],ecx
 0055F662    mov         dword ptr [ebp-28],edx
 0055F665    mov         dword ptr [ebp-4],eax
 0055F668    mov         ecx,51
 0055F66D    lea         eax,[ebp-16C]
 0055F673    mov         edx,dword ptr ds:[4010C0];String
 0055F679    call        @AddRefArray
 0055F67E    xor         eax,eax
 0055F680    push        ebp
 0055F681    push        55FA8B
 0055F686    push        dword ptr fs:[eax]
 0055F689    mov         dword ptr fs:[eax],esp
 0055F68C    mov         dl,1
 0055F68E    mov         eax,[0041DE14];TMemoryStream
 0055F693    call        TObject.Create;TMemoryStream.Create
 0055F698    mov         dword ptr [ebp-8],eax
 0055F69B    xor         eax,eax
 0055F69D    push        ebp
 0055F69E    push        55FA33
 0055F6A3    push        dword ptr fs:[eax]
 0055F6A6    mov         dword ptr fs:[eax],esp
 0055F6A9    mov         dword ptr [ebp-18],1
 0055F6B0    cmp         dword ptr [ebp-18],1
>0055F6B4    jne         0055F6C5
 0055F6B6    lea         eax,[ebp-14]
 0055F6B9    mov         edx,55FAA0;'Std '
 0055F6BE    call        @LStrLAsg
>0055F6C3    jmp         0055F6E7
 0055F6C5    lea         edx,[ebp-3FC]
 0055F6CB    mov         eax,dword ptr [ebp-18]
 0055F6CE    dec         eax
 0055F6CF    call        IntToStr
 0055F6D4    mov         ecx,dword ptr [ebp-3FC]
 0055F6DA    lea         eax,[ebp-14]
 0055F6DD    mov         edx,55FAB0;'Alt'
 0055F6E2    call        @LStrCat3
 0055F6E7    push        0
 0055F6E9    mov         eax,dword ptr [ebp-8]
 0055F6EC    push        eax
 0055F6ED    xor         ecx,ecx
 0055F6EF    mov         dx,word ptr [ebp-18]
 0055F6F3    xor         eax,eax
 0055F6F5    call        004D1570
 0055F6FA    test        al,al
>0055F6FC    je          0055F7D9
 0055F702    xor         ecx,ecx
 0055F704    xor         edx,edx
 0055F706    mov         eax,dword ptr [ebp-8]
 0055F709    mov         ebx,dword ptr [eax]
 0055F70B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055F70E    mov         dword ptr [ebp-1C],1
 0055F715    lea         eax,[ebp-10]
 0055F718    mov         edx,55FABC;'                          '
 0055F71D    call        @LStrLAsg
 0055F722    lea         eax,[ebp-10]
 0055F725    call        00405598
 0055F72A    mov         edx,eax
 0055F72C    mov         ecx,18
 0055F731    mov         eax,dword ptr [ebp-8]
 0055F734    call        TStream.ReadBuffer
 0055F739    lea         edx,[ebp-400]
 0055F73F    mov         eax,dword ptr [ebp-10]
 0055F742    call        0040BFEC
 0055F747    mov         edx,dword ptr [ebp-400]
 0055F74D    lea         eax,[ebp-10]
 0055F750    call        @LStrLAsg
 0055F755    mov         eax,dword ptr [ebp-10]
 0055F758    call        @LStrLen
 0055F75D    dec         eax
 0055F75E    test        eax,eax
>0055F760    jle         0055F79E
 0055F762    mov         dword ptr [ebp-24],eax
 0055F765    mov         dword ptr [ebp-20],1
 0055F76C    mov         eax,dword ptr [ebp-10]
 0055F76F    mov         edx,dword ptr [ebp-20]
 0055F772    cmp         byte ptr [eax+edx-1],20
>0055F777    jb          0055F786
 0055F779    mov         eax,dword ptr [ebp-10]
 0055F77C    mov         edx,dword ptr [ebp-20]
 0055F77F    cmp         byte ptr [eax+edx-1],7F
>0055F784    jbe         0055F796
 0055F786    lea         eax,[ebp-10]
 0055F789    call        00405598
 0055F78E    mov         edx,dword ptr [ebp-20]
 0055F791    mov         byte ptr [eax+edx-1],20
 0055F796    inc         dword ptr [ebp-20]
 0055F799    dec         dword ptr [ebp-24]
>0055F79C    jne         0055F76C
 0055F79E    lea         edx,[ebp-404]
 0055F7A4    mov         eax,dword ptr [ebp-10]
 0055F7A7    call        0040BFEC
 0055F7AC    mov         edx,dword ptr [ebp-404]
 0055F7B2    mov         eax,dword ptr [ebp-1C]
 0055F7B5    lea         eax,[eax+eax*8]
 0055F7B8    lea         eax,[ebp+eax*4-16C]
 0055F7BF    mov         ecx,dword ptr [ebp-18]
 0055F7C2    lea         eax,[eax+ecx*4]
 0055F7C5    call        @LStrLAsg
 0055F7CA    inc         dword ptr [ebp-1C]
 0055F7CD    cmp         dword ptr [ebp-1C],9
>0055F7D1    jne         0055F715
>0055F7D7    jmp         0055F7E8
 0055F7D9    call        004CEB6C
 0055F7DE    mov         eax,55FAE0;'Get Field - '
 0055F7E3    call        00544F6C
 0055F7E8    inc         dword ptr [ebp-18]
 0055F7EB    cmp         dword ptr [ebp-18],7
>0055F7EF    jne         0055F6B0
 0055F7F5    mov         dword ptr [ebp-18],1
 0055F7FC    cmp         dword ptr [ebp-18],1
>0055F800    jne         0055F811
 0055F802    lea         eax,[ebp-14]
 0055F805    mov         edx,55FAA0;'Std '
 0055F80A    call        @LStrLAsg
>0055F80F    jmp         0055F833
 0055F811    lea         edx,[ebp-408]
 0055F817    mov         eax,dword ptr [ebp-18]
 0055F81A    dec         eax
 0055F81B    call        IntToStr
 0055F820    mov         ecx,dword ptr [ebp-408]
 0055F826    lea         eax,[ebp-14]
 0055F829    mov         edx,55FAB0;'Alt'
 0055F82E    call        @LStrCat3
 0055F833    push        0
 0055F835    mov         eax,dword ptr [ebp-8]
 0055F838    push        eax
 0055F839    mov         dx,word ptr [ebp-18]
 0055F83D    add         dx,6
 0055F841    xor         ecx,ecx
 0055F843    xor         eax,eax
 0055F845    call        004D1570
 0055F84A    test        al,al
>0055F84C    je          0055F898
 0055F84E    xor         ecx,ecx
 0055F850    xor         edx,edx
 0055F852    mov         eax,dword ptr [ebp-8]
 0055F855    mov         ebx,dword ptr [eax]
 0055F857    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0055F85A    mov         dword ptr [ebp-1C],1
 0055F861    lea         edx,[ebp-0C]
 0055F864    mov         ecx,4
 0055F869    mov         eax,dword ptr [ebp-8]
 0055F86C    call        TStream.ReadBuffer
 0055F871    mov         eax,dword ptr [ebp-0C]
 0055F874    xor         edx,edx
 0055F876    mov         ecx,dword ptr [ebp-1C]
 0055F879    lea         ecx,[ecx+ecx*8]
 0055F87C    lea         ecx,[ebp+ecx*8-3F8]
 0055F883    mov         ebx,dword ptr [ebp-18]
 0055F886    mov         dword ptr [ecx+ebx*8],eax
 0055F889    mov         dword ptr [ecx+ebx*8+4],edx
 0055F88D    inc         dword ptr [ebp-1C]
 0055F890    cmp         dword ptr [ebp-1C],9
>0055F894    jne         0055F861
>0055F896    jmp         0055F8A7
 0055F898    call        004CEB6C
 0055F89D    mov         eax,55FAE0;'Get Field - '
 0055F8A2    call        00544F6C
 0055F8A7    inc         dword ptr [ebp-18]
 0055F8AA    cmp         dword ptr [ebp-18],7
>0055F8AE    jne         0055F7FC
 0055F8B4    mov         dword ptr [ebp-18],1
 0055F8BB    cmp         dword ptr [ebp-18],1
>0055F8BF    jne         0055F8D0
 0055F8C1    lea         eax,[ebp-14]
 0055F8C4    mov         edx,55FAA0;'Std '
 0055F8C9    call        @LStrLAsg
>0055F8CE    jmp         0055F8F2
 0055F8D0    lea         edx,[ebp-40C]
 0055F8D6    mov         eax,dword ptr [ebp-18]
 0055F8D9    dec         eax
 0055F8DA    call        IntToStr
 0055F8DF    mov         ecx,dword ptr [ebp-40C]
 0055F8E5    lea         eax,[ebp-14]
 0055F8E8    mov         edx,55FAB0;'Alt'
 0055F8ED    call        @LStrCat3
 0055F8F2    mov         dword ptr [ebp-1C],1
 0055F8F9    lea         eax,[ebp-410]
 0055F8FF    push        eax
 0055F900    push        dword ptr [ebp-14]
 0055F903    push        55FAF8;' Fmt Model '
 0055F908    lea         edx,[ebp-430]
 0055F90E    mov         eax,dword ptr [ebp-1C]
 0055F911    call        IntToStr
 0055F916    push        dword ptr [ebp-430]
 0055F91C    push        55FB0C;' heads ='
 0055F921    mov         eax,dword ptr [ebp-1C]
 0055F924    lea         eax,[eax+eax*8]
 0055F927    lea         eax,[ebp+eax*4-16C]
 0055F92E    mov         edx,dword ptr [ebp-18]
 0055F931    push        dword ptr [eax+edx*4]
 0055F934    lea         eax,[ebp-42C]
 0055F93A    mov         edx,5
 0055F93F    call        @LStrCatN
 0055F944    mov         eax,dword ptr [ebp-42C]
 0055F94A    mov         dword ptr [ebp-428],eax
 0055F950    mov         byte ptr [ebp-424],0B
 0055F957    mov         eax,dword ptr [ebp-1C]
 0055F95A    lea         eax,[eax+eax*8]
 0055F95D    lea         eax,[ebp+eax*8-3F8]
 0055F964    mov         edx,dword ptr [ebp-18]
 0055F967    lea         eax,[eax+edx*8]
 0055F96A    mov         dword ptr [ebp-420],eax
 0055F970    mov         byte ptr [ebp-41C],10
 0055F977    push        0
 0055F979    push        1DCD65
 0055F97E    mov         eax,dword ptr [ebp-1C]
 0055F981    lea         eax,[eax+eax*8]
 0055F984    lea         eax,[ebp+eax*8-3F8]
 0055F98B    mov         edx,dword ptr [ebp-18]
 0055F98E    lea         eax,[eax+edx*8]
 0055F991    mov         edx,dword ptr [eax+4]
 0055F994    mov         eax,dword ptr [eax]
 0055F996    call        @_lldiv
 0055F99B    mov         dword ptr [ebp-438],eax
 0055F9A1    mov         dword ptr [ebp-434],edx
 0055F9A7    lea         eax,[ebp-438]
 0055F9AD    mov         dword ptr [ebp-418],eax
 0055F9B3    mov         byte ptr [ebp-414],10
 0055F9BA    lea         edx,[ebp-428]
 0055F9C0    mov         ecx,2
 0055F9C5    mov         eax,55FB20;'%-50s : %10d - %dGB'
 0055F9CA    call        0040D630
 0055F9CF    mov         edx,dword ptr [ebp-410]
 0055F9D5    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055F9DA    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055F9E0    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055F9E6    mov         ecx,dword ptr [eax]
 0055F9E8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055F9EB    inc         dword ptr [ebp-1C]
 0055F9EE    cmp         dword ptr [ebp-1C],9
>0055F9F2    jne         0055F8F9
 0055F9F8    mov         eax,[0056DE74];0x0 gvar_0056DE74:TfmHDD
 0055F9FD    mov         eax,dword ptr [eax+2F8];TfmHDD.reLog:TRichEdit
 0055FA03    mov         eax,dword ptr [eax+248];TRichEdit.FRichEditStrings:TStrings
 0055FA09    xor         edx,edx
 0055FA0B    mov         ecx,dword ptr [eax]
 0055FA0D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0055FA10    inc         dword ptr [ebp-18]
 0055FA13    cmp         dword ptr [ebp-18],7
>0055FA17    jne         0055F8BB
 0055FA1D    xor         eax,eax
 0055FA1F    pop         edx
 0055FA20    pop         ecx
 0055FA21    pop         ecx
 0055FA22    mov         dword ptr fs:[eax],edx
 0055FA25    push        55FA3A
 0055FA2A    mov         eax,dword ptr [ebp-8]
 0055FA2D    call        TObject.Free
 0055FA32    ret
>0055FA33    jmp         @HandleFinally
>0055FA38    jmp         0055FA2A
 0055FA3A    xor         eax,eax
 0055FA3C    pop         edx
 0055FA3D    pop         ecx
 0055FA3E    pop         ecx
 0055FA3F    mov         dword ptr fs:[eax],edx
 0055FA42    push        55FA92
 0055FA47    lea         eax,[ebp-430]
 0055FA4D    mov         edx,2
 0055FA52    call        @LStrArrayClr
 0055FA57    lea         eax,[ebp-410]
 0055FA5D    mov         edx,6
 0055FA62    call        @LStrArrayClr
 0055FA67    lea         eax,[ebp-16C]
 0055FA6D    mov         ecx,51
 0055FA72    mov         edx,dword ptr ds:[4010C0];String
 0055FA78    call        @FinalizeArray
 0055FA7D    lea         eax,[ebp-14]
 0055FA80    mov         edx,2
 0055FA85    call        @LStrArrayClr
 0055FA8A    ret
>0055FA8B    jmp         @HandleFinally
>0055FA90    jmp         0055FA47
 0055FA92    pop         ebx
 0055FA93    mov         esp,ebp
 0055FA95    pop         ebp
 0055FA96    ret
end;*}

//0055FB34
procedure TfmHDD.miEditFListClick(Sender:TObject);
begin
{*
 0055FB34    push        ebp
 0055FB35    mov         ebp,esp
 0055FB37    add         esp,0FFFFFFF8
 0055FB3A    mov         dword ptr [ebp-8],edx
 0055FB3D    mov         dword ptr [ebp-4],eax
 0055FB40    mov         edx,dword ptr ds:[56DE74];0x0 gvar_0056DE74:TfmHDD
 0055FB46    mov         eax,[00541BA8];TfmFList
 0055FB4B    call        00542058
 0055FB50    pop         ecx
 0055FB51    pop         ecx
 0055FB52    pop         ebp
 0055FB53    ret
*}
end;

//0055FB54
procedure TfmHDD.miSetDMA100ModeClick(Sender:TObject);
begin
{*
 0055FB54    push        ebp
 0055FB55    mov         ebp,esp
 0055FB57    add         esp,0FFFFFFF8
 0055FB5A    mov         dword ptr [ebp-8],edx
 0055FB5D    mov         dword ptr [ebp-4],eax
 0055FB60    mov         al,45
 0055FB62    call        00560900
 0055FB67    test        al,al
>0055FB69    je          0055FB77
 0055FB6B    mov         eax,55FB90;'Set DMA 100 Mode - OK'
 0055FB70    call        00544EB4
>0055FB75    jmp         0055FB81
 0055FB77    mov         eax,55FBB0;'Set DMA 100 Mode - Error'
 0055FB7C    call        00544EB4
 0055FB81    pop         ecx
 0055FB82    pop         ecx
 0055FB83    pop         ebp
 0055FB84    ret
*}
end;

//0055FBCC
procedure TfmHDD.miSetDMA66ModeClick(Sender:TObject);
begin
{*
 0055FBCC    push        ebp
 0055FBCD    mov         ebp,esp
 0055FBCF    add         esp,0FFFFFFF8
 0055FBD2    mov         dword ptr [ebp-8],edx
 0055FBD5    mov         dword ptr [ebp-4],eax
 0055FBD8    mov         al,43
 0055FBDA    call        00560900
 0055FBDF    test        al,al
>0055FBE1    je          0055FBEF
 0055FBE3    mov         eax,55FC08;'Set DMA 66 Mode - OK'
 0055FBE8    call        00544EB4
>0055FBED    jmp         0055FBF9
 0055FBEF    mov         eax,55FC28;'Set DMA 66 Mode - Error'
 0055FBF4    call        00544EB4
 0055FBF9    pop         ecx
 0055FBFA    pop         ecx
 0055FBFB    pop         ebp
 0055FBFC    ret
*}
end;

//0055FC40
procedure TfmHDD.miSetDMA33ModeClick(Sender:TObject);
begin
{*
 0055FC40    push        ebp
 0055FC41    mov         ebp,esp
 0055FC43    add         esp,0FFFFFFF8
 0055FC46    mov         dword ptr [ebp-8],edx
 0055FC49    mov         dword ptr [ebp-4],eax
 0055FC4C    mov         al,42
 0055FC4E    call        00560900
 0055FC53    test        al,al
>0055FC55    je          0055FC63
 0055FC57    mov         eax,55FC7C;'Set DMA 33 Mode - OK'
 0055FC5C    call        00544EB4
>0055FC61    jmp         0055FC6D
 0055FC63    mov         eax,55FC9C;'Set DMA 33 Mode - Error'
 0055FC68    call        00544EB4
 0055FC6D    pop         ecx
 0055FC6E    pop         ecx
 0055FC6F    pop         ebp
 0055FC70    ret
*}
end;

//0055FCB4
procedure TfmHDD.miB9_AutoAddtracktoPListClick(Sender:TObject);
begin
{*
 0055FCB4    push        ebp
 0055FCB5    mov         ebp,esp
 0055FCB7    add         esp,0FFFFFFF8
 0055FCBA    mov         dword ptr [ebp-8],edx
 0055FCBD    mov         dword ptr [ebp-4],eax
 0055FCC0    mov         eax,55FD08;'Auto Add Track to P-List - Start'
 0055FCC5    call        00544EB4
 0055FCCA    call        004CED2C
 0055FCCF    push        1
 0055FCD1    push        0
 0055FCD3    push        0
 0055FCD5    push        0
 0055FCD7    push        0
 0055FCD9    mov         cx,0B9
 0055FCDD    mov         dx,3
 0055FCE1    mov         ax,19
 0055FCE5    call        004CE5F4
 0055FCEA    mov         al,1
 0055FCEC    call        004CED14
 0055FCF1    mov         eax,55FD34;'Auto Add Track to P-List - '
 0055FCF6    call        00544F6C
 0055FCFB    pop         ecx
 0055FCFC    pop         ecx
 0055FCFD    pop         ebp
 0055FCFE    ret
*}
end;

//0055FD50
procedure TfmHDD.miBA_AutoAddBBtoGListClick(Sender:TObject);
begin
{*
 0055FD50    push        ebp
 0055FD51    mov         ebp,esp
 0055FD53    add         esp,0FFFFFFF8
 0055FD56    mov         dword ptr [ebp-8],edx
 0055FD59    mov         dword ptr [ebp-4],eax
 0055FD5C    mov         eax,55FDC0;'Auto Add BB to G-List - Start'
 0055FD61    call        00544EB4
 0055FD66    call        004CED2C
 0055FD6B    push        1
 0055FD6D    push        619
 0055FD72    push        0
 0055FD74    push        0
 0055FD76    push        0
 0055FD78    push        0
 0055FD7A    push        0
 0055FD7C    push        0FFFF
 0055FD81    push        0FFFF
 0055FD86    push        0FFFF
 0055FD8B    push        2
 0055FD8D    push        0
 0055FD8F    push        8
 0055FD91    mov         cx,0BA
 0055FD95    mov         dx,3
 0055FD99    mov         ax,19
 0055FD9D    call        004CE82C
 0055FDA2    mov         al,1
 0055FDA4    call        004CED14
 0055FDA9    mov         eax,55FDE8;'Auto Add BB to G-List - '
 0055FDAE    call        00544F6C
 0055FDB3    pop         ecx
 0055FDB4    pop         ecx
 0055FDB5    pop         ebp
 0055FDB6    ret
*}
end;

end.