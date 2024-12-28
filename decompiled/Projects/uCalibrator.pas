//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCalibrator;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmCalibrator = class(TForm)
  published
    edDcm:TLabeledEdit;//f2F8
    edTask:TLabeledEdit;//f2FC
    edHex:TLabeledEdit;//f300
    edHeads:TLabeledEdit;//f304
    edMedia:TLabeledEdit;//f308
    cbTask:TComboBox;//f30C
    btGo:TButton;//f310
    cbFrom:TComboBox;//f314
    cbLoadC5:TCheckBox;//f318
    cbShow:TCheckBox;//f31C
    cbLoadC4:TCheckBox;//f320
    btGetDcm:TButton;//f324
    cbFile:TCheckBox;//f328
    cbInit:TCheckBox;//f32C
    cbTransient:TCheckBox;//f330
    cbLoadArcoMain:TCheckBox;//f334
    cbCode:TComboBox;//f338
    StaticText1:TStaticText;//f33C
    GroupBox1:TGroupBox;//f340
    btReadAll:TButton;//f344
    btWriteAll:TButton;//f348
    cbAltDcm:TCheckBox;//f34C
    cbPermOvly:TCheckBox;//f350
    //procedure cbFromChange(?:?);//0053421C
    procedure btGoClick(Sender:TObject);//005348A4
    procedure btWriteAllClick(Sender:TObject);//0053509C
    procedure btReadAllClick(Sender:TObject);//00535000
    //procedure FormClose(?:?; ?:?);//0053369C
    procedure cbTaskChange(Sender:TObject);//005333E8
    procedure FormShow(Sender:TObject);//00533B44
    procedure FormCreate(Sender:TObject);//00533B14
  end;
    procedure sub_00533394(?:TfmCalibrator; ?:TfmHDD);//00533394
    //procedure sub_005336BC(?:?; ?:?);//005336BC
    //procedure sub_00533C74(?:AnsiString; ?:?);//00533C74
    //function sub_005345FC(?:?; ?:?; ?:?):?;//005345FC

implementation

{$R *.DFM}

//00533394
procedure sub_00533394(?:TfmCalibrator; ?:TfmHDD);
begin
{*
 00533394    push        ebp
 00533395    mov         ebp,esp
 00533397    add         esp,0FFFFFFF8
 0053339A    mov         dword ptr [ebp-8],edx
 0053339D    mov         dword ptr [ebp-4],eax
 005333A0    cmp         dword ptr ds:[56D524],0;gvar_0056D524:TfmCalibrator
>005333A7    jne         005333BD
 005333A9    mov         ecx,dword ptr [ebp-8]
 005333AC    mov         dl,1
 005333AE    mov         eax,[00533014];TfmCalibrator
 005333B3    call        TfmProgress.Create;TfmCalibrator.Create
 005333B8    mov         [0056D524],eax;gvar_0056D524:TfmCalibrator
 005333BD    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 005333C2    cmp         byte ptr [eax+1A6],0;TfmCalibrator.FShowing:Boolean
>005333C9    je          005333DA
 005333CB    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 005333D0    mov         edx,dword ptr [eax]
 005333D2    call        dword ptr [edx+0C4];TfmCalibrator.sub_004A746C
>005333D8    jmp         005333E4
 005333DA    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 005333DF    call        004A7450
 005333E4    pop         ecx
 005333E5    pop         ecx
 005333E6    pop         ebp
 005333E7    ret
*}
end;

//005333E8
procedure TfmCalibrator.cbTaskChange(Sender:TObject);
begin
{*
 005333E8    push        ebp
 005333E9    mov         ebp,esp
 005333EB    xor         ecx,ecx
 005333ED    push        ecx
 005333EE    push        ecx
 005333EF    push        ecx
 005333F0    push        ecx
 005333F1    push        ecx
 005333F2    mov         dword ptr [ebp-8],edx
 005333F5    mov         dword ptr [ebp-4],eax
 005333F8    xor         eax,eax
 005333FA    push        ebp
 005333FB    push        533637
 00533400    push        dword ptr fs:[eax]
 00533403    mov         dword ptr fs:[eax],esp
 00533406    lea         edx,[ebp-10]
 00533409    mov         eax,dword ptr [ebp-4]
 0053340C    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00533412    call        TPanel.GetCaption
 00533417    mov         eax,dword ptr [ebp-10]
 0053341A    mov         dl,byte ptr [eax]
 0053341C    lea         eax,[ebp-0C]
 0053341F    call        @LStrFromChar
 00533424    mov         edx,dword ptr [ebp-0C]
 00533427    mov         eax,dword ptr [ebp-4]
 0053342A    mov         eax,dword ptr [eax+2FC];TfmCalibrator.edTask:TLabeledEdit
 00533430    call        TPanel.SetCaption
 00533435    lea         edx,[ebp-14]
 00533438    mov         eax,dword ptr [ebp-4]
 0053343B    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00533441    call        TPanel.GetCaption
 00533446    mov         eax,dword ptr [ebp-14]
 00533449    movzx       eax,byte ptr [eax]
 0053344C    cmp         eax,6B
>0053344F    jg          0053348A
>00533451    je          0053354B
 00533457    cmp         eax,4A
>0053345A    jg          00533475
>0053345C    je          00533563
 00533462    sub         eax,44
>00533465    je          005334C5
 00533467    sub         eax,2
>0053346A    je          00533503
>00533470    jmp         005335E4
 00533475    sub         eax,69
>00533478    je          0053351B
 0053347E    dec         eax
>0053347F    je          0053357B
>00533485    jmp         005335E4
 0053348A    cmp         eax,82
>0053348F    jg          005334AC
>00533491    je          005335A5
 00533497    sub         eax,6F
>0053349A    je          00533533
 005334A0    dec         eax
>005334A1    je          00533590
>005334A7    jmp         005335E4
 005334AC    sub         eax,84
>005334B1    je          005335BA
 005334B7    sub         eax,2
>005334BA    je          005335CF
>005334C0    jmp         005335E4
 005334C5    mov         edx,53364C;'19'
 005334CA    mov         eax,dword ptr [ebp-4]
 005334CD    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 005334D3    call        TPanel.SetCaption
 005334D8    mov         dl,1
 005334DA    mov         eax,dword ptr [ebp-4]
 005334DD    mov         eax,dword ptr [eax+318];TfmCalibrator.cbLoadC5:TCheckBox
 005334E3    mov         ecx,dword ptr [eax]
 005334E5    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 005334EB    mov         edx,533658;'C4'
 005334F0    mov         eax,dword ptr [ebp-4]
 005334F3    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 005334F9    call        TPanel.SetCaption
>005334FE    jmp         0053360A
 00533503    mov         edx,533658;'C4'
 00533508    mov         eax,dword ptr [ebp-4]
 0053350B    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533511    call        TPanel.SetCaption
>00533516    jmp         0053360A
 0053351B    mov         edx,533664;'C8'
 00533520    mov         eax,dword ptr [ebp-4]
 00533523    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533529    call        TPanel.SetCaption
>0053352E    jmp         0053360A
 00533533    mov         edx,533658;'C4'
 00533538    mov         eax,dword ptr [ebp-4]
 0053353B    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533541    call        TPanel.SetCaption
>00533546    jmp         0053360A
 0053354B    mov         edx,533670;'C3'
 00533550    mov         eax,dword ptr [ebp-4]
 00533553    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533559    call        TPanel.SetCaption
>0053355E    jmp         0053360A
 00533563    mov         edx,533658;'C4'
 00533568    mov         eax,dword ptr [ebp-4]
 0053356B    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533571    call        TPanel.SetCaption
>00533576    jmp         0053360A
 0053357B    mov         edx,533658;'C4'
 00533580    mov         eax,dword ptr [ebp-4]
 00533583    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533589    call        TPanel.SetCaption
>0053358E    jmp         0053360A
 00533590    mov         edx,533658;'C4'
 00533595    mov         eax,dword ptr [ebp-4]
 00533598    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 0053359E    call        TPanel.SetCaption
>005335A3    jmp         0053360A
 005335A5    mov         edx,53367C;'AA'
 005335AA    mov         eax,dword ptr [ebp-4]
 005335AD    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 005335B3    call        TPanel.SetCaption
>005335B8    jmp         0053360A
 005335BA    mov         edx,533688;'2900'
 005335BF    mov         eax,dword ptr [ebp-4]
 005335C2    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 005335C8    call        TPanel.SetCaption
>005335CD    jmp         0053360A
 005335CF    mov         edx,53367C;'AA'
 005335D4    mov         eax,dword ptr [ebp-4]
 005335D7    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 005335DD    call        TPanel.SetCaption
>005335E2    jmp         0053360A
 005335E4    mov         edx,533698;'32'
 005335E9    mov         eax,dword ptr [ebp-4]
 005335EC    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 005335F2    call        TPanel.SetCaption
 005335F7    mov         edx,533658;'C4'
 005335FC    mov         eax,dword ptr [ebp-4]
 005335FF    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 00533605    call        TPanel.SetCaption
 0053360A    xor         edx,edx
 0053360C    mov         eax,dword ptr [ebp-4]
 0053360F    call        TfmCalibrator.cbFromChange
 00533614    xor         eax,eax
 00533616    pop         edx
 00533617    pop         ecx
 00533618    pop         ecx
 00533619    mov         dword ptr fs:[eax],edx
 0053361C    push        53363E
 00533621    lea         eax,[ebp-14]
 00533624    mov         edx,2
 00533629    call        @LStrArrayClr
 0053362E    lea         eax,[ebp-0C]
 00533631    call        @LStrClr
 00533636    ret
>00533637    jmp         @HandleFinally
>0053363C    jmp         00533621
 0053363E    mov         esp,ebp
 00533640    pop         ebp
 00533641    ret
*}
end;

//0053369C
{*procedure TfmCalibrator.FormClose(?:?; ?:?);
begin
 0053369C    push        ebp
 0053369D    mov         ebp,esp
 0053369F    add         esp,0FFFFFFF4
 005336A2    mov         dword ptr [ebp-8],ecx
 005336A5    mov         dword ptr [ebp-0C],edx
 005336A8    mov         dword ptr [ebp-4],eax
 005336AB    xor         eax,eax
 005336AD    mov         [0056D524],eax;gvar_0056D524:TfmCalibrator
 005336B2    mov         eax,dword ptr [ebp-8]
 005336B5    mov         byte ptr [eax],2
 005336B8    mov         esp,ebp
 005336BA    pop         ebp
 005336BB    ret
end;*}

//005336BC
{*procedure sub_005336BC(?:?; ?:?);
begin
 005336BC    push        ebp
 005336BD    mov         ebp,esp
 005336BF    add         esp,0FFFFFFF8
 005336C2    mov         dword ptr [ebp-8],edx
 005336C5    mov         byte ptr [ebp-1],al
 005336C8    xor         eax,eax
 005336CA    mov         al,byte ptr [ebp-1]
 005336CD    add         eax,0FFFFFFC0
 005336D0    cmp         eax,37
>005336D3    ja          0053395C
 005336D9    mov         al,byte ptr [eax+5336E6]
 005336DF    jmp         dword ptr [eax*4+53371E]
 005336DF    db          4
 005336DF    db          5
 005336DF    db          0
 005336DF    db          0
 005336DF    db          8
 005336DF    db          0
 005336DF    db          1
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          2
 005336DF    db          14
 005336DF    db          0
 005336DF    db          0
 005336DF    db          27
 005336DF    db          15
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          16
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          7
 005336DF    db          6
 005336DF    db          17
 005336DF    db          3
 005336DF    db          0
 005336DF    db          21
 005336DF    db          18
 005336DF    db          19
 005336DF    db          20
 005336DF    db          9
 005336DF    db          12
 005336DF    db          11
 005336DF    db          0
 005336DF    db          0
 005336DF    db          0
 005336DF    db          10
 005336DF    db          13
 005336DF    db          22
 005336DF    db          0
 005336DF    db          23
 005336DF    db          24
 005336DF    db          0
 005336DF    db          25
 005336DF    db          26
 005336DF    dd          0053395C
 005336DF    dd          0053378E
 005336DF    dd          005337A0
 005336DF    dd          005337B2
 005336DF    dd          005337C4
 005336DF    dd          005337D6
 005336DF    dd          005337E8
 005336DF    dd          005337FA
 005336DF    dd          0053380C
 005336DF    dd          0053381E
 005336DF    dd          00533830
 005336DF    dd          00533842
 005336DF    dd          00533854
 005336DF    dd          00533866
 005336DF    dd          00533878
 005336DF    dd          0053388A
 005336DF    dd          0053389C
 005336DF    dd          005338AE
 005336DF    dd          005338C0
 005336DF    dd          005338D2
 005336DF    dd          005338E4
 005336DF    dd          005338F3
 005336DF    dd          00533902
 005336DF    dd          00533911
 005336DF    dd          00533920
 005336DF    dd          0053392F
 005336DF    dd          0053393E
 005336DF    dd          0053394D
 0053378E    mov         eax,dword ptr [ebp-8]
 00533791    mov         edx,533970;'ARCO User Area'
 00533796    call        @LStrAsg
>0053379B    jmp         00533964
 005337A0    mov         eax,dword ptr [ebp-8]
 005337A3    mov         edx,533988;'SARCO User Area'
 005337A8    call        @LStrAsg
>005337AD    jmp         00533964
 005337B2    mov         eax,dword ptr [ebp-8]
 005337B5    mov         edx,5339A0;'OTC'
 005337BA    call        @LStrAsg
>005337BF    jmp         00533964
 005337C4    mov         eax,dword ptr [ebp-8]
 005337C7    mov         edx,5339AC;'VGA'
 005337CC    call        @LStrAsg
>005337D1    jmp         00533964
 005337D6    mov         eax,dword ptr [ebp-8]
 005337D9    mov         edx,5339B8;'DOW'
 005337DE    call        @LStrAsg
>005337E3    jmp         00533964
 005337E8    mov         eax,dword ptr [ebp-8]
 005337EB    mov         edx,5339C4;'ATI'
 005337F0    call        @LStrAsg
>005337F5    jmp         00533964
 005337FA    mov         eax,dword ptr [ebp-8]
 005337FD    mov         edx,5339D0;'MRA'
 00533802    call        @LStrAsg
>00533807    jmp         00533964
 0053380C    mov         eax,dword ptr [ebp-8]
 0053380F    mov         edx,5339DC;'ARCO Reserved Area'
 00533814    call        @LStrAsg
>00533819    jmp         00533964
 0053381E    mov         eax,dword ptr [ebp-8]
 00533821    mov         edx,5339F8;'LIAF'
 00533826    call        @LStrAsg
>0053382B    jmp         00533964
 00533830    mov         eax,dword ptr [ebp-8]
 00533833    mov         edx,533A08;'High SPT'
 00533838    call        @LStrAsg
>0053383D    jmp         00533964
 00533842    mov         eax,dword ptr [ebp-8]
 00533845    mov         edx,533A1C;'AZL'
 0053384A    call        @LStrAsg
>0053384F    jmp         00533964
 00533854    mov         eax,dword ptr [ebp-8]
 00533857    mov         edx,533A28;'Low SPT'
 0053385C    call        @LStrAsg
>00533861    jmp         00533964
 00533866    mov         eax,dword ptr [ebp-8]
 00533869    mov         edx,533A38;'p'
 0053386E    call        @LStrAsg
>00533873    jmp         00533964
 00533878    mov         eax,dword ptr [ebp-8]
 0053387B    mov         edx,533988;'SARCO User Area'
 00533880    call        @LStrAsg
>00533885    jmp         00533964
 0053388A    mov         eax,dword ptr [ebp-8]
 0053388D    mov         edx,533A44;'HQ User Area'
 00533892    call        @LStrAsg
>00533897    jmp         00533964
 0053389C    mov         eax,dword ptr [ebp-8]
 0053389F    mov         edx,533A5C;'X'
 005338A4    call        @LStrAsg
>005338A9    jmp         00533964
 005338AE    mov         eax,dword ptr [ebp-8]
 005338B1    mov         edx,533A68;'PBERT'
 005338B6    call        @LStrAsg
>005338BB    jmp         00533964
 005338C0    mov         eax,dword ptr [ebp-8]
 005338C3    mov         edx,533A78;'CO SPIN '
 005338C8    call        @LStrAsg
>005338CD    jmp         00533964
 005338D2    mov         eax,dword ptr [ebp-8]
 005338D5    mov         edx,533A8C;'CO STDBY'
 005338DA    call        @LStrAsg
>005338DF    jmp         00533964
 005338E4    mov         eax,dword ptr [ebp-8]
 005338E7    mov         edx,533AA0;'OW'
 005338EC    call        @LStrAsg
>005338F1    jmp         00533964
 005338F3    mov         eax,dword ptr [ebp-8]
 005338F6    mov         edx,533AAC;'e'
 005338FB    call        @LStrAsg
>00533900    jmp         00533964
 00533902    mov         eax,dword ptr [ebp-8]
 00533905    mov         edx,533AB8;'q'
 0053390A    call        @LStrAsg
>0053390F    jmp         00533964
 00533911    mov         eax,dword ptr [ebp-8]
 00533914    mov         edx,533AC4;'s'
 00533919    call        @LStrAsg
>0053391E    jmp         00533964
 00533920    mov         eax,dword ptr [ebp-8]
 00533923    mov         edx,533AD0;'t'
 00533928    call        @LStrAsg
>0053392D    jmp         00533964
 0053392F    mov         eax,dword ptr [ebp-8]
 00533932    mov         edx,533ADC;'v'
 00533937    call        @LStrAsg
>0053393C    jmp         00533964
 0053393E    mov         eax,dword ptr [ebp-8]
 00533941    mov         edx,533AE8;'w'
 00533946    call        @LStrAsg
>0053394B    jmp         00533964
 0053394D    mov         eax,dword ptr [ebp-8]
 00533950    mov         edx,533AF4;'ARCO Set to Default User Area'
 00533955    call        @LStrAsg
>0053395A    jmp         00533964
 0053395C    mov         eax,dword ptr [ebp-8]
 0053395F    call        @LStrClr
 00533964    pop         ecx
 00533965    pop         ecx
 00533966    pop         ebp
 00533967    ret
end;*}

//00533B14
procedure TfmCalibrator.FormCreate(Sender:TObject);
begin
{*
 00533B14    push        ebp
 00533B15    mov         ebp,esp
 00533B17    add         esp,0FFFFFFF8
 00533B1A    mov         dword ptr [ebp-8],edx
 00533B1D    mov         dword ptr [ebp-4],eax
 00533B20    mov         eax,[0056E284];^gvar_0056DF34
 00533B25    mov         eax,dword ptr [eax]
 00533B27    mov         eax,dword ptr [eax+408]
 00533B2D    cmp         byte ptr [eax+38],0
>00533B31    je          00533B3D
 00533B33    xor         edx,edx
 00533B35    mov         eax,dword ptr [ebp-4]
 00533B38    call        TfmCalibrator.cbFromChange
 00533B3D    pop         ecx
 00533B3E    pop         ecx
 00533B3F    pop         ebp
 00533B40    ret
*}
end;

//00533B44
procedure TfmCalibrator.FormShow(Sender:TObject);
begin
{*
 00533B44    push        ebp
 00533B45    mov         ebp,esp
 00533B47    add         esp,0FFFFFFF0
 00533B4A    xor         ecx,ecx
 00533B4C    mov         dword ptr [ebp-0C],ecx
 00533B4F    mov         dword ptr [ebp-10],ecx
 00533B52    mov         dword ptr [ebp-8],edx
 00533B55    mov         dword ptr [ebp-4],eax
 00533B58    xor         eax,eax
 00533B5A    push        ebp
 00533B5B    push        533C21
 00533B60    push        dword ptr fs:[eax]
 00533B63    mov         dword ptr fs:[eax],esp
 00533B66    lea         edx,[ebp-10]
 00533B69    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 00533B6E    call        TPanel.GetCaption
 00533B73    push        dword ptr [ebp-10]
 00533B76    push        533C34;' '
 00533B7B    mov         eax,[0056E284];^gvar_0056DF34
 00533B80    mov         eax,dword ptr [eax]
 00533B82    push        dword ptr [eax+420]
 00533B88    lea         eax,[ebp-0C]
 00533B8B    mov         edx,3
 00533B90    call        @LStrCatN
 00533B95    mov         edx,dword ptr [ebp-0C]
 00533B98    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 00533B9D    call        TPanel.SetCaption
 00533BA2    mov         eax,dword ptr [ebp-4]
 00533BA5    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00533BAB    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 00533BB1    mov         edx,533C40;'‚ - "#82"'
 00533BB6    mov         ecx,dword ptr [eax]
 00533BB8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00533BBB    mov         eax,dword ptr [ebp-4]
 00533BBE    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00533BC4    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 00533BCA    mov         edx,533C54;'„ - "#84"'
 00533BCF    mov         ecx,dword ptr [eax]
 00533BD1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00533BD4    mov         eax,dword ptr [ebp-4]
 00533BD7    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00533BDD    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 00533BE3    mov         edx,533C68;'† - "#86"'
 00533BE8    mov         ecx,dword ptr [eax]
 00533BEA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00533BED    mov         edx,dword ptr ds:[56E040];^gvar_005720C0
 00533BF3    mov         dl,byte ptr [edx]
 00533BF5    mov         eax,dword ptr [ebp-4]
 00533BF8    mov         eax,dword ptr [eax+330];TfmCalibrator.cbTransient:TCheckBox
 00533BFE    mov         ecx,dword ptr [eax]
 00533C00    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 00533C06    xor         eax,eax
 00533C08    pop         edx
 00533C09    pop         ecx
 00533C0A    pop         ecx
 00533C0B    mov         dword ptr fs:[eax],edx
 00533C0E    push        533C28
 00533C13    lea         eax,[ebp-10]
 00533C16    mov         edx,2
 00533C1B    call        @LStrArrayClr
 00533C20    ret
>00533C21    jmp         @HandleFinally
>00533C26    jmp         00533C13
 00533C28    mov         esp,ebp
 00533C2A    pop         ebp
 00533C2B    ret
*}
end;

//00533C74
{*procedure sub_00533C74(?:AnsiString; ?:?);
begin
 00533C74    push        ebp
 00533C75    mov         ebp,esp
 00533C77    add         esp,0FFFFFFDC
 00533C7A    push        ebx
 00533C7B    xor         ecx,ecx
 00533C7D    mov         dword ptr [ebp-24],ecx
 00533C80    mov         dword ptr [ebp-20],ecx
 00533C83    mov         dword ptr [ebp-1C],ecx
 00533C86    mov         dword ptr [ebp-8],edx
 00533C89    mov         byte ptr [ebp-1],al
 00533C8C    xor         eax,eax
 00533C8E    push        ebp
 00533C8F    push        5341C9
 00533C94    push        dword ptr fs:[eax]
 00533C97    mov         dword ptr fs:[eax],esp
 00533C9A    mov         byte ptr [ebp-0D],0
 00533C9E    mov         dl,1
 00533CA0    mov         eax,[0041DE14];TMemoryStream
 00533CA5    call        TObject.Create;TMemoryStream.Create
 00533CAA    mov         dword ptr [ebp-0C],eax
 00533CAD    mov         eax,dword ptr [ebp-8]
 00533CB0    mov         edx,5341E0;'    '
 00533CB5    call        @LStrAsg
 00533CBA    xor         eax,eax
 00533CBC    push        ebp
 00533CBD    push        53419F
 00533CC2    push        dword ptr fs:[eax]
 00533CC5    mov         dword ptr fs:[eax],esp
 00533CC8    push        10
 00533CCA    call        user32.GetKeyState
 00533CCF    test        ax,ax
>00533CD2    jge         00533DA6
 00533CD8    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00533CDE    mov         edx,dword ptr [edx]
 00533CE0    lea         eax,[ebp-1C]
 00533CE3    mov         ecx,5341F0;'Modules'
 00533CE8    call        @LStrCat3
 00533CED    mov         edx,dword ptr [ebp-1C]
 00533CF0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533CF5    mov         eax,dword ptr [eax]
 00533CF7    mov         eax,dword ptr [eax+35C]
 00533CFD    call        TOpenDialog.SetInitialDir
 00533D02    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D07    mov         eax,dword ptr [eax]
 00533D09    mov         eax,dword ptr [eax+35C]
 00533D0F    add         eax,60
 00533D12    mov         edx,534200;'Co Result|*C?.rpm|All|*.*'
 00533D17    call        @LStrAsg
 00533D1C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D21    mov         eax,dword ptr [eax]
 00533D23    mov         eax,dword ptr [eax+35C]
 00533D29    add         eax,78
 00533D2C    call        @LStrClr
 00533D31    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D36    mov         eax,dword ptr [eax]
 00533D38    mov         eax,dword ptr [eax+35C]
 00533D3E    mov         edx,dword ptr [eax]
 00533D40    call        dword ptr [edx+3C]
 00533D43    test        al,al
>00533D45    je          00533D8C
 00533D47    lea         edx,[ebp-20]
 00533D4A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D4F    mov         eax,dword ptr [eax]
 00533D51    mov         eax,dword ptr [eax+35C]
 00533D57    call        TOpenDialog.GetFileName
 00533D5C    mov         eax,dword ptr [ebp-20]
 00533D5F    call        0040C94C
 00533D64    test        al,al
>00533D66    je          00533D8C
 00533D68    lea         edx,[ebp-24]
 00533D6B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D70    mov         eax,dword ptr [eax]
 00533D72    mov         eax,dword ptr [eax+35C]
 00533D78    call        TOpenDialog.GetFileName
 00533D7D    mov         edx,dword ptr [ebp-24]
 00533D80    mov         eax,dword ptr [ebp-0C]
 00533D83    call        00423F8C
 00533D88    mov         byte ptr [ebp-0D],1
 00533D8C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00533D91    mov         eax,dword ptr [eax]
 00533D93    mov         eax,dword ptr [eax+35C]
 00533D99    add         eax,60
 00533D9C    call        @LStrClr
>00533DA1    jmp         00534091
 00533DA6    xor         eax,eax
 00533DA8    mov         al,byte ptr [ebp-1]
 00533DAB    add         eax,0FFFFFFC0
 00533DAE    cmp         eax,46
>00533DB1    ja          00534091
 00533DB7    mov         al,byte ptr [eax+533DC4]
 00533DBD    jmp         dword ptr [eax*4+533E0B]
 00533DBD    db          17
 00533DBD    db          18
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          1
 00533DBD    db          0
 00533DBD    db          12
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          15
 00533DBD    db          15
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          13
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          16
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          19
 00533DBD    db          20
 00533DBD    db          21
 00533DBD    db          5
 00533DBD    db          0
 00533DBD    db          2
 00533DBD    db          3
 00533DBD    db          4
 00533DBD    db          22
 00533DBD    db          6
 00533DBD    db          10
 00533DBD    db          14
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          7
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          9
 00533DBD    db          8
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          11
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          23
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          0
 00533DBD    db          24
 00533DBD    dd          00534091
 00533DBD    dd          00533E6F
 00533DBD    dd          00533EDF
 00533DBD    dd          00533EF3
 00533DBD    dd          00533F07
 00533DBD    dd          00533F1B
 00533DBD    dd          00533F2F
 00533DBD    dd          00533F43
 00533DBD    dd          00533F57
 00533DBD    dd          00533F6B
 00533DBD    dd          00533F7F
 00533DBD    dd          00533F93
 00533DBD    dd          00533FA7
 00533DBD    dd          00533FBB
 00533DBD    dd          00533FCF
 00533DBD    dd          00533FE3
 00533DBD    dd          00533FF7
 00533DBD    dd          0053400B
 00533DBD    dd          0053401C
 00533DBD    dd          0053402D
 00533DBD    dd          0053403E
 00533DBD    dd          0053404F
 00533DBD    dd          00534060
 00533DBD    dd          00534071
 00533DBD    dd          00534082
 00533E6F    mov         eax,[0056E040];^gvar_005720C0
 00533E74    cmp         byte ptr [eax],0
>00533E77    je          00533E8D
 00533E79    mov         edx,dword ptr [ebp-0C]
 00533E7C    mov         ax,0C0
 00533E80    call        004CF5C8
 00533E85    mov         byte ptr [ebp-0D],al
>00533E88    jmp         00534091
 00533E8D    mov         eax,[0056E304];^gvar_0056DF54
 00533E92    mov         ax,word ptr [eax]
 00533E95    and         ax,0FF
 00533E99    cmp         ax,48
>00533E9D    jne         00533EBF
 00533E9F    push        0
 00533EA1    mov         eax,dword ptr [ebp-0C]
 00533EA4    push        eax
 00533EA5    mov         cx,1
 00533EA9    mov         dx,2
 00533EAD    mov         eax,20
 00533EB2    call        004FB62C
 00533EB7    mov         byte ptr [ebp-0D],al
>00533EBA    jmp         00534091
 00533EBF    push        0
 00533EC1    mov         eax,dword ptr [ebp-0C]
 00533EC4    push        eax
 00533EC5    mov         cx,1
 00533EC9    mov         dx,2
 00533ECD    mov         eax,40
 00533ED2    call        004FB62C
 00533ED7    mov         byte ptr [ebp-0D],al
>00533EDA    jmp         00534091
 00533EDF    mov         edx,dword ptr [ebp-0C]
 00533EE2    mov         ax,90
 00533EE6    call        004CF5C8
 00533EEB    mov         byte ptr [ebp-0D],al
>00533EEE    jmp         00534091
 00533EF3    mov         edx,dword ptr [ebp-0C]
 00533EF6    mov         ax,91
 00533EFA    call        004CF5C8
 00533EFF    mov         byte ptr [ebp-0D],al
>00533F02    jmp         00534091
 00533F07    mov         edx,dword ptr [ebp-0C]
 00533F0A    mov         ax,92
 00533F0E    call        004CF5C8
 00533F13    mov         byte ptr [ebp-0D],al
>00533F16    jmp         00534091
 00533F1B    mov         edx,dword ptr [ebp-0C]
 00533F1E    mov         ax,93
 00533F22    call        004CF5C8
 00533F27    mov         byte ptr [ebp-0D],al
>00533F2A    jmp         00534091
 00533F2F    mov         edx,dword ptr [ebp-0C]
 00533F32    mov         ax,94
 00533F36    call        004CF5C8
 00533F3B    mov         byte ptr [ebp-0D],al
>00533F3E    jmp         00534091
 00533F43    mov         edx,dword ptr [ebp-0C]
 00533F46    mov         ax,96
 00533F4A    call        004CF5C8
 00533F4F    mov         byte ptr [ebp-0D],al
>00533F52    jmp         00534091
 00533F57    mov         edx,dword ptr [ebp-0C]
 00533F5A    mov         ax,97
 00533F5E    call        004CF5C8
 00533F63    mov         byte ptr [ebp-0D],al
>00533F66    jmp         00534091
 00533F6B    mov         edx,dword ptr [ebp-0C]
 00533F6E    mov         ax,99
 00533F72    call        004CF5C8
 00533F77    mov         byte ptr [ebp-0D],al
>00533F7A    jmp         00534091
 00533F7F    mov         edx,dword ptr [ebp-0C]
 00533F82    mov         ax,9C
 00533F86    call        004CF5C8
 00533F8B    mov         byte ptr [ebp-0D],al
>00533F8E    jmp         00534091
 00533F93    mov         edx,dword ptr [ebp-0C]
 00533F96    mov         ax,0A5
 00533F9A    call        004CF5C8
 00533F9F    mov         byte ptr [ebp-0D],al
>00533FA2    jmp         00534091
 00533FA7    mov         edx,dword ptr [ebp-0C]
 00533FAA    mov         ax,0C1
 00533FAE    call        004CF5C8
 00533FB3    mov         byte ptr [ebp-0D],al
>00533FB6    jmp         00534091
 00533FBB    mov         edx,dword ptr [ebp-0C]
 00533FBE    mov         ax,0C2
 00533FC2    call        004CF5C8
 00533FC7    mov         byte ptr [ebp-0D],al
>00533FCA    jmp         00534091
 00533FCF    mov         edx,dword ptr [ebp-0C]
 00533FD2    mov         ax,0C6
 00533FD6    call        004CF5C8
 00533FDB    mov         byte ptr [ebp-0D],al
>00533FDE    jmp         00534091
 00533FE3    mov         edx,dword ptr [ebp-0C]
 00533FE6    mov         ax,0C7
 00533FEA    call        004CF5C8
 00533FEF    mov         byte ptr [ebp-0D],al
>00533FF2    jmp         00534091
 00533FF7    mov         edx,dword ptr [ebp-0C]
 00533FFA    mov         ax,0C9
 00533FFE    call        004CF5C8
 00534003    mov         byte ptr [ebp-0D],al
>00534006    jmp         00534091
 0053400B    mov         edx,dword ptr [ebp-0C]
 0053400E    mov         ax,0CA
 00534012    call        004CF5C8
 00534017    mov         byte ptr [ebp-0D],al
>0053401A    jmp         00534091
 0053401C    mov         edx,dword ptr [ebp-0C]
 0053401F    mov         ax,0CB
 00534023    call        004CF5C8
 00534028    mov         byte ptr [ebp-0D],al
>0053402B    jmp         00534091
 0053402D    mov         edx,dword ptr [ebp-0C]
 00534030    mov         ax,0CC
 00534034    call        004CF5C8
 00534039    mov         byte ptr [ebp-0D],al
>0053403C    jmp         00534091
 0053403E    mov         edx,dword ptr [ebp-0C]
 00534041    mov         ax,0CD
 00534045    call        004CF5C8
 0053404A    mov         byte ptr [ebp-0D],al
>0053404D    jmp         00534091
 0053404F    mov         edx,dword ptr [ebp-0C]
 00534052    mov         ax,0CE
 00534056    call        004CF5C8
 0053405B    mov         byte ptr [ebp-0D],al
>0053405E    jmp         00534091
 00534060    mov         edx,dword ptr [ebp-0C]
 00534063    mov         ax,0CF
 00534067    call        004CF5C8
 0053406C    mov         byte ptr [ebp-0D],al
>0053406F    jmp         00534091
 00534071    mov         edx,dword ptr [ebp-0C]
 00534074    mov         ax,0A9
 00534078    call        004CF5C8
 0053407D    mov         byte ptr [ebp-0D],al
>00534080    jmp         00534091
 00534082    mov         edx,dword ptr [ebp-0C]
 00534085    mov         ax,0AF
 00534089    call        004CF5C8
 0053408E    mov         byte ptr [ebp-0D],al
 00534091    cmp         byte ptr [ebp-0D],0
>00534095    je          00534189
 0053409B    xor         ecx,ecx
 0053409D    xor         edx,edx
 0053409F    mov         eax,dword ptr [ebp-0C]
 005340A2    mov         ebx,dword ptr [eax]
 005340A4    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005340A7    mov         eax,dword ptr [ebp-0C]
 005340AA    call        004CE56C
 005340AF    mov         dword ptr [ebp-14],eax
 005340B2    cmp         dword ptr [ebp-14],4C594F52
>005340B9    jne         005340CC
 005340BB    xor         ecx,ecx
 005340BD    mov         edx,82
 005340C2    mov         eax,dword ptr [ebp-0C]
 005340C5    mov         ebx,dword ptr [eax]
 005340C7    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>005340CA    jmp         005340DB
 005340CC    xor         ecx,ecx
 005340CE    mov         edx,6A
 005340D3    mov         eax,dword ptr [ebp-0C]
 005340D6    mov         ebx,dword ptr [eax]
 005340D8    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005340DB    mov         eax,dword ptr [ebp-0C]
 005340DE    call        004CE528
 005340E3    mov         byte ptr [ebp-15],al
 005340E6    cmp         byte ptr [ebp-15],0
>005340EA    je          005340F9
 005340EC    mov         eax,dword ptr [ebp-8]
 005340EF    call        00405598
 005340F4    mov         dl,byte ptr [ebp-15]
 005340F7    mov         byte ptr [eax],dl
 005340F9    mov         cx,1
 005340FD    mov         edx,3
 00534102    mov         eax,dword ptr [ebp-0C]
 00534105    mov         ebx,dword ptr [eax]
 00534107    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053410A    mov         eax,dword ptr [ebp-0C]
 0053410D    call        004CE528
 00534112    mov         byte ptr [ebp-15],al
 00534115    cmp         byte ptr [ebp-15],0
>00534119    je          00534129
 0053411B    mov         eax,dword ptr [ebp-8]
 0053411E    call        00405598
 00534123    mov         dl,byte ptr [ebp-15]
 00534126    mov         byte ptr [eax+1],dl
 00534129    mov         cx,1
 0053412D    mov         edx,3
 00534132    mov         eax,dword ptr [ebp-0C]
 00534135    mov         ebx,dword ptr [eax]
 00534137    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053413A    mov         eax,dword ptr [ebp-0C]
 0053413D    call        004CE528
 00534142    mov         byte ptr [ebp-15],al
 00534145    cmp         byte ptr [ebp-15],0
>00534149    je          00534159
 0053414B    mov         eax,dword ptr [ebp-8]
 0053414E    call        00405598
 00534153    mov         dl,byte ptr [ebp-15]
 00534156    mov         byte ptr [eax+2],dl
 00534159    mov         cx,1
 0053415D    mov         edx,3
 00534162    mov         eax,dword ptr [ebp-0C]
 00534165    mov         ebx,dword ptr [eax]
 00534167    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053416A    mov         eax,dword ptr [ebp-0C]
 0053416D    call        004CE528
 00534172    mov         byte ptr [ebp-15],al
 00534175    cmp         byte ptr [ebp-15],0
>00534179    je          00534189
 0053417B    mov         eax,dword ptr [ebp-8]
 0053417E    call        00405598
 00534183    mov         dl,byte ptr [ebp-15]
 00534186    mov         byte ptr [eax+3],dl
 00534189    xor         eax,eax
 0053418B    pop         edx
 0053418C    pop         ecx
 0053418D    pop         ecx
 0053418E    mov         dword ptr fs:[eax],edx
 00534191    push        5341A6
 00534196    mov         eax,dword ptr [ebp-0C]
 00534199    call        TObject.Free
 0053419E    ret
>0053419F    jmp         @HandleFinally
>005341A4    jmp         00534196
 005341A6    xor         eax,eax
 005341A8    pop         edx
 005341A9    pop         ecx
 005341AA    pop         ecx
 005341AB    mov         dword ptr fs:[eax],edx
 005341AE    push        5341D0
 005341B3    lea         eax,[ebp-24]
 005341B6    mov         edx,2
 005341BB    call        @LStrArrayClr
 005341C0    lea         eax,[ebp-1C]
 005341C3    call        @LStrClr
 005341C8    ret
>005341C9    jmp         @HandleFinally
>005341CE    jmp         005341B3
 005341D0    pop         ebx
 005341D1    mov         esp,ebp
 005341D3    pop         ebp
 005341D4    ret
end;*}

//0053421C
{*procedure TfmCalibrator.cbFromChange(?:?);
begin
 0053421C    push        ebp
 0053421D    mov         ebp,esp
 0053421F    mov         ecx,0C
 00534224    push        0
 00534226    push        0
 00534228    dec         ecx
>00534229    jne         00534224
 0053422B    push        ecx
 0053422C    mov         dword ptr [ebp-0C],edx
 0053422F    mov         dword ptr [ebp-4],eax
 00534232    xor         eax,eax
 00534234    push        ebp
 00534235    push        5345D5
 0053423A    push        dword ptr fs:[eax]
 0053423D    mov         dword ptr fs:[eax],esp
 00534240    xor         edx,edx
 00534242    mov         eax,dword ptr [ebp-4]
 00534245    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 0053424B    call        TPanel.SetCaption
 00534250    mov         eax,dword ptr [ebp-4]
 00534253    mov         eax,dword ptr [eax+314];TfmCalibrator.cbFrom:TComboBox
 00534259    mov         edx,dword ptr [eax]
 0053425B    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00534261    cmp         eax,5
>00534264    ja          0053435B
 0053426A    jmp         dword ptr [eax*4+534271]
 0053426A    dd          00534289
 0053426A    dd          005342A9
 0053426A    dd          005342CC
 0053426A    dd          005342EC
 0053426A    dd          0053430C
 0053426A    dd          0053432C
 00534289    lea         edx,[ebp-10]
 0053428C    xor         eax,eax
 0053428E    call        004F7058
 00534293    mov         edx,dword ptr [ebp-10]
 00534296    mov         eax,dword ptr [ebp-4]
 00534299    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 0053429F    call        TPanel.SetCaption
>005342A4    jmp         0053435B
 005342A9    lea         edx,[ebp-14]
 005342AC    mov         eax,1
 005342B1    call        004F7058
 005342B6    mov         edx,dword ptr [ebp-14]
 005342B9    mov         eax,dword ptr [ebp-4]
 005342BC    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005342C2    call        TPanel.SetCaption
>005342C7    jmp         0053435B
 005342CC    lea         edx,[ebp-18]
 005342CF    mov         eax,2
 005342D4    call        004F7058
 005342D9    mov         edx,dword ptr [ebp-18]
 005342DC    mov         eax,dword ptr [ebp-4]
 005342DF    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005342E5    call        TPanel.SetCaption
>005342EA    jmp         0053435B
 005342EC    lea         edx,[ebp-1C]
 005342EF    mov         eax,3
 005342F4    call        004F7058
 005342F9    mov         edx,dword ptr [ebp-1C]
 005342FC    mov         eax,dword ptr [ebp-4]
 005342FF    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534305    call        TPanel.SetCaption
>0053430A    jmp         0053435B
 0053430C    lea         edx,[ebp-20]
 0053430F    mov         eax,4
 00534314    call        004F7058
 00534319    mov         edx,dword ptr [ebp-20]
 0053431C    mov         eax,dword ptr [ebp-4]
 0053431F    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534325    call        TPanel.SetCaption
>0053432A    jmp         0053435B
 0053432C    lea         edx,[ebp-28]
 0053432F    mov         eax,dword ptr [ebp-4]
 00534332    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00534338    call        TPanel.GetCaption
 0053433D    mov         eax,dword ptr [ebp-28]
 00534340    mov         al,byte ptr [eax]
 00534342    lea         edx,[ebp-24]
 00534345    call        00533C74
 0053434A    mov         edx,dword ptr [ebp-24]
 0053434D    mov         eax,dword ptr [ebp-4]
 00534350    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534356    call        TPanel.SetCaption
 0053435B    mov         eax,dword ptr [ebp-4]
 0053435E    mov         eax,dword ptr [eax+314];TfmCalibrator.cbFrom:TComboBox
 00534364    mov         edx,dword ptr [eax]
 00534366    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053436C    sub         eax,5
>0053436F    jb          0053437C
>00534371    je          00534483
>00534377    jmp         00534548
 0053437C    mov         dword ptr [ebp-8],1
>00534383    jmp         00534417
 00534388    lea         edx,[ebp-2C]
 0053438B    mov         eax,dword ptr [ebp-4]
 0053438E    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534394    call        TPanel.GetCaption
 00534399    mov         eax,dword ptr [ebp-2C]
 0053439C    mov         edx,dword ptr [ebp-8]
 0053439F    mov         al,byte ptr [eax+edx-1]
 005343A3    sub         al,48
>005343A5    je          005343E0
 005343A7    sub         al,5
>005343A9    jne         00534413
 005343AB    lea         edx,[ebp-34]
 005343AE    mov         eax,dword ptr [ebp-4]
 005343B1    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005343B7    call        TPanel.GetCaption
 005343BC    mov         eax,dword ptr [ebp-34]
 005343BF    mov         edx,dword ptr [ebp-8]
 005343C2    mov         dl,byte ptr [eax+edx]
 005343C5    lea         eax,[ebp-30]
 005343C8    call        @LStrFromChar
 005343CD    mov         edx,dword ptr [ebp-30]
 005343D0    mov         eax,dword ptr [ebp-4]
 005343D3    mov         eax,dword ptr [eax+308];TfmCalibrator.edMedia:TLabeledEdit
 005343D9    call        TPanel.SetCaption
>005343DE    jmp         00534413
 005343E0    lea         edx,[ebp-3C]
 005343E3    mov         eax,dword ptr [ebp-4]
 005343E6    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005343EC    call        TPanel.GetCaption
 005343F1    mov         eax,dword ptr [ebp-3C]
 005343F4    mov         edx,dword ptr [ebp-8]
 005343F7    mov         dl,byte ptr [eax+edx]
 005343FA    lea         eax,[ebp-38]
 005343FD    call        @LStrFromChar
 00534402    mov         edx,dword ptr [ebp-38]
 00534405    mov         eax,dword ptr [ebp-4]
 00534408    mov         eax,dword ptr [eax+304];TfmCalibrator.edHeads:TLabeledEdit
 0053440E    call        TPanel.SetCaption
 00534413    add         dword ptr [ebp-8],2
 00534417    lea         edx,[ebp-40]
 0053441A    mov         eax,dword ptr [ebp-4]
 0053441D    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534423    call        TPanel.GetCaption
 00534428    mov         eax,dword ptr [ebp-40]
 0053442B    call        @LStrLen
 00534430    cmp         eax,dword ptr [ebp-8]
>00534433    jg          00534388
 00534439    lea         edx,[ebp-44]
 0053443C    mov         eax,dword ptr [ebp-4]
 0053443F    mov         eax,dword ptr [eax+30C];TfmCalibrator.cbTask:TComboBox
 00534445    call        TPanel.GetCaption
 0053444A    mov         eax,dword ptr [ebp-44]
 0053444D    mov         al,byte ptr [eax]
 0053444F    sub         al,44
>00534451    jne         0053446B
 00534453    mov         edx,5345EC;'19'
 00534458    mov         eax,dword ptr [ebp-4]
 0053445B    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 00534461    call        TPanel.SetCaption
>00534466    jmp         00534548
 0053446B    mov         edx,5345F8;'32'
 00534470    mov         eax,dword ptr [ebp-4]
 00534473    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 00534479    call        TPanel.SetCaption
>0053447E    jmp         00534548
 00534483    lea         edx,[ebp-4C]
 00534486    mov         eax,dword ptr [ebp-4]
 00534489    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 0053448F    call        TPanel.GetCaption
 00534494    mov         eax,dword ptr [ebp-4C]
 00534497    mov         dl,byte ptr [eax]
 00534499    lea         eax,[ebp-48]
 0053449C    call        @LStrFromChar
 005344A1    mov         edx,dword ptr [ebp-48]
 005344A4    mov         eax,dword ptr [ebp-4]
 005344A7    mov         eax,dword ptr [eax+2FC];TfmCalibrator.edTask:TLabeledEdit
 005344AD    call        TPanel.SetCaption
 005344B2    lea         edx,[ebp-54]
 005344B5    mov         eax,dword ptr [ebp-4]
 005344B8    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005344BE    call        TPanel.GetCaption
 005344C3    mov         eax,dword ptr [ebp-54]
 005344C6    movzx       eax,byte ptr [eax+1]
 005344CA    lea         ecx,[ebp-50]
 005344CD    mov         edx,2
 005344D2    call        IntToHex
 005344D7    mov         edx,dword ptr [ebp-50]
 005344DA    mov         eax,dword ptr [ebp-4]
 005344DD    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 005344E3    call        TPanel.SetCaption
 005344E8    lea         edx,[ebp-5C]
 005344EB    mov         eax,dword ptr [ebp-4]
 005344EE    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 005344F4    call        TPanel.GetCaption
 005344F9    mov         eax,dword ptr [ebp-5C]
 005344FC    mov         dl,byte ptr [eax+3]
 005344FF    lea         eax,[ebp-58]
 00534502    call        @LStrFromChar
 00534507    mov         edx,dword ptr [ebp-58]
 0053450A    mov         eax,dword ptr [ebp-4]
 0053450D    mov         eax,dword ptr [eax+308];TfmCalibrator.edMedia:TLabeledEdit
 00534513    call        TPanel.SetCaption
 00534518    lea         edx,[ebp-64]
 0053451B    mov         eax,dword ptr [ebp-4]
 0053451E    mov         eax,dword ptr [eax+2F8];TfmCalibrator.edDcm:TLabeledEdit
 00534524    call        TPanel.GetCaption
 00534529    mov         eax,dword ptr [ebp-64]
 0053452C    mov         dl,byte ptr [eax+2]
 0053452F    lea         eax,[ebp-60]
 00534532    call        @LStrFromChar
 00534537    mov         edx,dword ptr [ebp-60]
 0053453A    mov         eax,dword ptr [ebp-4]
 0053453D    mov         eax,dword ptr [eax+304];TfmCalibrator.edHeads:TLabeledEdit
 00534543    call        TPanel.SetCaption
 00534548    xor         eax,eax
 0053454A    pop         edx
 0053454B    pop         ecx
 0053454C    pop         ecx
 0053454D    mov         dword ptr fs:[eax],edx
 00534550    push        5345DF
 00534555    lea         eax,[ebp-64]
 00534558    call        @LStrClr
 0053455D    lea         eax,[ebp-60]
 00534560    call        @LStrClr
 00534565    lea         eax,[ebp-5C]
 00534568    call        @LStrClr
 0053456D    lea         eax,[ebp-58]
 00534570    call        @LStrClr
 00534575    lea         eax,[ebp-54]
 00534578    call        @LStrClr
 0053457D    lea         eax,[ebp-50]
 00534580    call        @LStrClr
 00534585    lea         eax,[ebp-4C]
 00534588    call        @LStrClr
 0053458D    lea         eax,[ebp-48]
 00534590    call        @LStrClr
 00534595    lea         eax,[ebp-44]
 00534598    mov         edx,3
 0053459D    call        @LStrArrayClr
 005345A2    lea         eax,[ebp-38]
 005345A5    call        @LStrClr
 005345AA    lea         eax,[ebp-34]
 005345AD    call        @LStrClr
 005345B2    lea         eax,[ebp-30]
 005345B5    call        @LStrClr
 005345BA    lea         eax,[ebp-2C]
 005345BD    mov         edx,2
 005345C2    call        @LStrArrayClr
 005345C7    lea         eax,[ebp-24]
 005345CA    mov         edx,6
 005345CF    call        @LStrArrayClr
 005345D4    ret
>005345D5    jmp         @HandleFinally
>005345DA    jmp         00534555
 005345DF    mov         esp,ebp
 005345E1    pop         ebp
 005345E2    ret
end;*}

//005345FC
{*function sub_005345FC(?:?; ?:?; ?:?):?;
begin
 005345FC    push        ebp
 005345FD    mov         ebp,esp
 005345FF    add         esp,0FFFFFFD8
 00534602    push        ebx
 00534603    xor         ebx,ebx
 00534605    mov         dword ptr [ebp-28],ebx
 00534608    mov         dword ptr [ebp-24],ebx
 0053460B    mov         dword ptr [ebp-20],ebx
 0053460E    mov         dword ptr [ebp-1C],ebx
 00534611    mov         dword ptr [ebp-18],ebx
 00534614    mov         word ptr [ebp-0A],cx
 00534618    mov         dword ptr [ebp-8],edx
 0053461B    mov         word ptr [ebp-2],ax
 0053461F    xor         eax,eax
 00534621    push        ebp
 00534622    push        534825
 00534627    push        dword ptr fs:[eax]
 0053462A    mov         dword ptr fs:[eax],esp
 0053462D    mov         byte ptr [ebp-11],0
 00534631    mov         dl,1
 00534633    mov         eax,[0041DE14];TMemoryStream
 00534638    call        TObject.Create;TMemoryStream.Create
 0053463D    mov         dword ptr [ebp-10],eax
 00534640    xor         eax,eax
 00534642    push        ebp
 00534643    push        5347F6
 00534648    push        dword ptr fs:[eax]
 0053464B    mov         dword ptr fs:[eax],esp
 0053464E    mov         eax,[0056D524];0x0 gvar_0056D524:TfmCalibrator
 00534653    mov         eax,dword ptr [eax+328];TfmCalibrator.cbFile:TCheckBox
 00534659    mov         edx,dword ptr [eax]
 0053465B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534661    test        al,al
>00534663    je          0053478F
 00534669    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053466F    mov         edx,dword ptr [edx]
 00534671    lea         eax,[ebp-18]
 00534674    mov         ecx,53483C;'Modules\'
 00534679    call        @LStrCat3
 0053467E    mov         edx,dword ptr [ebp-18]
 00534681    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534686    mov         eax,dword ptr [eax]
 00534688    mov         eax,dword ptr [eax+35C]
 0053468E    call        TOpenDialog.SetInitialDir
 00534693    push        534850;'Calibrator|*'
 00534698    lea         ecx,[ebp-1C]
 0053469B    movzx       eax,word ptr [ebp-2]
 0053469F    mov         edx,2
 005346A4    call        IntToHex
 005346A9    push        dword ptr [ebp-1C]
 005346AC    push        534868;'.rpm|All|*.*'
 005346B1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005346B6    mov         eax,dword ptr [eax]
 005346B8    mov         eax,dword ptr [eax+35C]
 005346BE    add         eax,60
 005346C1    mov         edx,3
 005346C6    call        @LStrCatN
 005346CB    push        534880;'   '
 005346D0    lea         ecx,[ebp-20]
 005346D3    movzx       eax,word ptr [ebp-2]
 005346D7    mov         edx,2
 005346DC    call        IntToHex
 005346E1    push        dword ptr [ebp-20]
 005346E4    push        53488C;'.rpm'
 005346E9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005346EE    mov         eax,dword ptr [eax]
 005346F0    mov         eax,dword ptr [eax+35C]
 005346F6    add         eax,78
 005346F9    mov         edx,3
 005346FE    call        @LStrCatN
 00534703    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534708    mov         eax,dword ptr [eax]
 0053470A    mov         eax,dword ptr [eax+35C]
 00534710    mov         edx,dword ptr [eax]
 00534712    call        dword ptr [edx+3C]
 00534715    test        al,al
>00534717    je          0053475E
 00534719    lea         edx,[ebp-24]
 0053471C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534721    mov         eax,dword ptr [eax]
 00534723    mov         eax,dword ptr [eax+35C]
 00534729    call        TOpenDialog.GetFileName
 0053472E    mov         eax,dword ptr [ebp-24]
 00534731    call        0040C94C
 00534736    test        al,al
>00534738    je          0053475E
 0053473A    lea         edx,[ebp-28]
 0053473D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534742    mov         eax,dword ptr [eax]
 00534744    mov         eax,dword ptr [eax+35C]
 0053474A    call        TOpenDialog.GetFileName
 0053474F    mov         edx,dword ptr [ebp-28]
 00534752    mov         eax,dword ptr [ebp-10]
 00534755    call        00423F8C
 0053475A    mov         byte ptr [ebp-11],1
 0053475E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534763    mov         eax,dword ptr [eax]
 00534765    mov         eax,dword ptr [eax+35C]
 0053476B    add         eax,60
 0053476E    mov         edx,53489C;'All|*.*'
 00534773    call        @LStrAsg
 00534778    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053477D    mov         eax,dword ptr [eax]
 0053477F    mov         eax,dword ptr [eax+35C]
 00534785    add         eax,78
 00534788    call        @LStrClr
>0053478D    jmp         0053479E
 0053478F    mov         edx,dword ptr [ebp-10]
 00534792    mov         ax,word ptr [ebp-2]
 00534796    call        004CF5C8
 0053479B    mov         byte ptr [ebp-11],al
 0053479E    cmp         byte ptr [ebp-11],0
>005347A2    je          005347DC
 005347A4    push        0
 005347A6    push        200
 005347AB    mov         eax,dword ptr [ebp-10]
 005347AE    mov         edx,dword ptr [eax]
 005347B0    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005347B2    add         eax,1FF
 005347B7    adc         edx,0
 005347BA    call        @_lldiv
 005347BF    mov         word ptr [ebp-14],ax
 005347C3    mov         eax,dword ptr [ebp-10]
 005347C6    push        eax
 005347C7    movzx       ecx,word ptr [ebp-14]
 005347CB    mov         edx,dword ptr [ebp-8]
 005347CE    mov         ax,word ptr [ebp-0A]
 005347D2    call        004D05AC
 005347D7    mov         byte ptr [ebp-0B],al
>005347DA    jmp         005347E0
 005347DC    mov         byte ptr [ebp-0B],0
 005347E0    xor         eax,eax
 005347E2    pop         edx
 005347E3    pop         ecx
 005347E4    pop         ecx
 005347E5    mov         dword ptr fs:[eax],edx
 005347E8    push        5347FD
 005347ED    mov         eax,dword ptr [ebp-10]
 005347F0    call        TObject.Free
 005347F5    ret
>005347F6    jmp         @HandleFinally
>005347FB    jmp         005347ED
 005347FD    xor         eax,eax
 005347FF    pop         edx
 00534800    pop         ecx
 00534801    pop         ecx
 00534802    mov         dword ptr fs:[eax],edx
 00534805    push        53482C
 0053480A    lea         eax,[ebp-28]
 0053480D    mov         edx,2
 00534812    call        @LStrArrayClr
 00534817    lea         eax,[ebp-20]
 0053481A    mov         edx,3
 0053481F    call        @LStrArrayClr
 00534824    ret
>00534825    jmp         @HandleFinally
>0053482A    jmp         0053480A
 0053482C    mov         al,byte ptr [ebp-0B]
 0053482F    pop         ebx
 00534830    mov         esp,ebp
 00534832    pop         ebp
 00534833    ret
end;*}

//005348A4
procedure TfmCalibrator.btGoClick(Sender:TObject);
begin
{*
 005348A4    push        ebp
 005348A5    mov         ebp,esp
 005348A7    mov         ecx,2B
 005348AC    push        0
 005348AE    push        0
 005348B0    dec         ecx
>005348B1    jne         005348AC
 005348B3    mov         dword ptr [ebp-18],edx
 005348B6    mov         dword ptr [ebp-4],eax
 005348B9    xor         eax,eax
 005348BB    push        ebp
 005348BC    push        534E64
 005348C1    push        dword ptr fs:[eax]
 005348C4    mov         dword ptr fs:[eax],esp
 005348C7    xor         edx,edx
 005348C9    mov         eax,dword ptr [ebp-4]
 005348CC    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 005348D2    mov         ecx,dword ptr [eax]
 005348D4    call        dword ptr [ecx+64];TImage.SetEnabled
 005348D7    lea         edx,[ebp-20]
 005348DA    mov         eax,dword ptr [ebp-4]
 005348DD    mov         eax,dword ptr [eax+338];TfmCalibrator.cbCode:TComboBox
 005348E3    call        TPanel.GetCaption
 005348E8    mov         ecx,dword ptr [ebp-20]
 005348EB    lea         eax,[ebp-1C]
 005348EE    mov         edx,534E78;'$'
 005348F3    call        @LStrCat3
 005348F8    mov         eax,dword ptr [ebp-1C]
 005348FB    mov         edx,0C4
 00534900    call        0040C4A8
 00534905    mov         word ptr [ebp-10],ax
 00534909    lea         edx,[ebp-128]
 0053490F    mov         eax,dword ptr [ebp-4]
 00534912    mov         eax,dword ptr [eax+2FC];TfmCalibrator.edTask:TLabeledEdit
 00534918    call        TPanel.GetCaption
 0053491D    mov         eax,dword ptr [ebp-128]
 00534923    lea         edx,[ebp-124]
 00534929    call        0040BFEC
 0053492E    mov         edx,dword ptr [ebp-124]
 00534934    lea         eax,[ebp-120]
 0053493A    mov         ecx,0FF
 0053493F    call        @LStrToString
 00534944    lea         edx,[ebp-120]
 0053494A    lea         eax,[ebp-8]
 0053494D    mov         cl,1
 0053494F    call        @PStrNCpy
 00534954    lea         edx,[ebp-130]
 0053495A    mov         eax,dword ptr [ebp-4]
 0053495D    mov         eax,dword ptr [eax+300];TfmCalibrator.edHex:TLabeledEdit
 00534963    call        TPanel.GetCaption
 00534968    mov         ecx,dword ptr [ebp-130]
 0053496E    lea         eax,[ebp-12C]
 00534974    mov         edx,534E78;'$'
 00534979    call        @LStrCat3
 0053497E    mov         eax,dword ptr [ebp-12C]
 00534984    xor         edx,edx
 00534986    call        0040C4A8
 0053498B    mov         word ptr [ebp-0E],ax
 0053498F    lea         edx,[ebp-138]
 00534995    mov         eax,dword ptr [ebp-4]
 00534998    mov         eax,dword ptr [eax+304];TfmCalibrator.edHeads:TLabeledEdit
 0053499E    call        TPanel.GetCaption
 005349A3    mov         eax,dword ptr [ebp-138]
 005349A9    lea         edx,[ebp-134]
 005349AF    call        0040BFEC
 005349B4    mov         edx,dword ptr [ebp-134]
 005349BA    lea         eax,[ebp-120]
 005349C0    mov         ecx,0FF
 005349C5    call        @LStrToString
 005349CA    lea         edx,[ebp-120]
 005349D0    lea         eax,[ebp-0A]
 005349D3    mov         cl,1
 005349D5    call        @PStrNCpy
 005349DA    lea         edx,[ebp-140]
 005349E0    mov         eax,dword ptr [ebp-4]
 005349E3    mov         eax,dword ptr [eax+308];TfmCalibrator.edMedia:TLabeledEdit
 005349E9    call        TPanel.GetCaption
 005349EE    mov         eax,dword ptr [ebp-140]
 005349F4    lea         edx,[ebp-13C]
 005349FA    call        0040BFEC
 005349FF    mov         edx,dword ptr [ebp-13C]
 00534A05    lea         eax,[ebp-120]
 00534A0B    mov         ecx,0FF
 00534A10    call        @LStrToString
 00534A15    lea         edx,[ebp-120]
 00534A1B    lea         eax,[ebp-0C]
 00534A1E    mov         cl,1
 00534A20    call        @PStrNCpy
 00534A25    cmp         byte ptr [ebp-8],0
>00534A29    je          00534A62
 00534A2B    cmp         byte ptr [ebp-7],40
>00534A2F    jb          00534A62
 00534A31    cmp         byte ptr [ebp-7],90
>00534A35    ja          00534A62
 00534A37    cmp         word ptr [ebp-0E],0
>00534A3C    je          00534A62
 00534A3E    cmp         byte ptr [ebp-9],0
>00534A42    je          00534A62
 00534A44    cmp         byte ptr [ebp-9],30
>00534A48    jb          00534A62
 00534A4A    cmp         byte ptr [ebp-9],7E
>00534A4E    ja          00534A62
 00534A50    cmp         byte ptr [ebp-0C],0
>00534A54    je          00534A62
 00534A56    cmp         byte ptr [ebp-0B],30
>00534A5A    jb          00534A62
 00534A5C    cmp         byte ptr [ebp-0B],7E
>00534A60    jbe         00534A81
 00534A62    mov         eax,534E84;'Invalid Task !'
 00534A67    call        0043F8B4
 00534A6C    mov         dl,1
 00534A6E    mov         eax,dword ptr [ebp-4]
 00534A71    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00534A77    mov         ecx,dword ptr [eax]
 00534A79    call        dword ptr [ecx+64];TImage.SetEnabled
>00534A7C    jmp         00534DDE
 00534A81    mov         eax,dword ptr [ebp-4]
 00534A84    mov         eax,dword ptr [eax+334];TfmCalibrator.cbLoadArcoMain:TCheckBox
 00534A8A    mov         edx,dword ptr [eax]
 00534A8C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534A92    test        al,al
>00534A94    je          00534AA4
 00534A96    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534A9B    mov         eax,dword ptr [eax]
 00534A9D    xor         edx,edx
 00534A9F    call        TfmHDD.miLoadARCOMainClick
 00534AA4    mov         eax,dword ptr [ebp-4]
 00534AA7    mov         eax,dword ptr [eax+350];TfmCalibrator.cbPermOvly:TCheckBox
 00534AAD    mov         edx,dword ptr [eax]
 00534AAF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534AB5    test        al,al
>00534AB7    je          00534AD7
 00534AB9    mov         cx,3
 00534ABD    xor         edx,edx
 00534ABF    mov         ax,11
 00534AC3    call        005345FC
 00534AC8    call        004CEB6C
 00534ACD    mov         eax,534E9C;'Load Permanent Overlay - '
 00534AD2    call        00544F6C
 00534AD7    mov         eax,dword ptr [ebp-4]
 00534ADA    mov         eax,dword ptr [eax+330];TfmCalibrator.cbTransient:TCheckBox
 00534AE0    mov         edx,dword ptr [eax]
 00534AE2    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534AE8    test        al,al
>00534AEA    je          00534B0A
 00534AEC    mov         cx,2
 00534AF0    xor         edx,edx
 00534AF2    mov         ax,1B
 00534AF6    call        005345FC
 00534AFB    call        004CEB6C
 00534B00    mov         eax,534EC0;'Load Transient Overlay - '
 00534B05    call        00544F6C
 00534B0A    mov         eax,dword ptr [ebp-4]
 00534B0D    mov         eax,dword ptr [eax+320];TfmCalibrator.cbLoadC4:TCheckBox
 00534B13    mov         edx,dword ptr [eax]
 00534B15    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534B1B    test        al,al
>00534B1D    je          00534B65
 00534B1F    mov         cx,4
 00534B23    xor         edx,edx
 00534B25    mov         ax,word ptr [ebp-10]
 00534B29    call        005345FC
 00534B2E    test        al,al
>00534B30    jne         00534B56
 00534B32    call        004CEB6C
 00534B37    mov         eax,534EE4;'Load Calibrator to PST slot - '
 00534B3C    call        00544F6C
 00534B41    mov         dl,1
 00534B43    mov         eax,dword ptr [ebp-4]
 00534B46    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00534B4C    mov         ecx,dword ptr [eax]
 00534B4E    call        dword ptr [ecx+64];TImage.SetEnabled
>00534B51    jmp         00534DDE
 00534B56    call        004CEB6C
 00534B5B    mov         eax,534EE4;'Load Calibrator to PST slot - '
 00534B60    call        00544F6C
 00534B65    mov         eax,dword ptr [ebp-4]
 00534B68    mov         eax,dword ptr [eax+318];TfmCalibrator.cbLoadC5:TCheckBox
 00534B6E    mov         edx,dword ptr [eax]
 00534B70    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534B76    test        al,al
>00534B78    je          00534BF4
 00534B7A    mov         eax,dword ptr [ebp-4]
 00534B7D    mov         eax,dword ptr [eax+34C];TfmCalibrator.cbAltDcm:TCheckBox
 00534B83    mov         edx,dword ptr [eax]
 00534B85    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534B8B    test        al,al
>00534B8D    je          00534BA6
 00534B8F    mov         cx,4
 00534B93    mov         edx,200
 00534B98    mov         ax,0C5
 00534B9C    call        005345FC
 00534BA1    mov         byte ptr [ebp-11],al
>00534BA4    jmp         00534BBB
 00534BA6    mov         cx,4
 00534BAA    mov         edx,100
 00534BAF    mov         ax,0C5
 00534BB3    call        005345FC
 00534BB8    mov         byte ptr [ebp-11],al
 00534BBB    cmp         byte ptr [ebp-11],0
>00534BBF    jne         00534BE5
 00534BC1    call        004CEB6C
 00534BC6    mov         eax,534F0C;'Load DCM to PST slot - '
 00534BCB    call        00544F6C
 00534BD0    mov         dl,1
 00534BD2    mov         eax,dword ptr [ebp-4]
 00534BD5    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00534BDB    mov         ecx,dword ptr [eax]
 00534BDD    call        dword ptr [ecx+64];TImage.SetEnabled
>00534BE0    jmp         00534DDE
 00534BE5    call        004CEB6C
 00534BEA    mov         eax,534F0C;'Load DCM to PST slot - '
 00534BEF    call        00544F6C
 00534BF4    push        534F2C;'Task:  '
 00534BF9    lea         eax,[ebp-148]
 00534BFF    mov         dl,byte ptr [ebp-7]
 00534C02    call        @LStrFromChar
 00534C07    push        dword ptr [ebp-148]
 00534C0D    push        534F3C;' - '
 00534C12    mov         al,byte ptr [ebp-7]
 00534C15    lea         edx,[ebp-14C]
 00534C1B    call        005336BC
 00534C20    push        dword ptr [ebp-14C]
 00534C26    push        534F48;#10
 00534C2B    push        534F54;'Hex:   '
 00534C30    lea         ecx,[ebp-150]
 00534C36    movzx       eax,word ptr [ebp-0E]
 00534C3A    xor         edx,edx
 00534C3C    call        IntToHex
 00534C41    push        dword ptr [ebp-150]
 00534C47    push        534F48;#10
 00534C4C    push        534F64;'Heads: '
 00534C51    lea         eax,[ebp-154]
 00534C57    mov         dl,byte ptr [ebp-9]
 00534C5A    call        @LStrFromChar
 00534C5F    push        dword ptr [ebp-154]
 00534C65    push        534F48;#10
 00534C6A    push        534F74;'Madia: '
 00534C6F    lea         eax,[ebp-158]
 00534C75    mov         dl,byte ptr [ebp-0B]
 00534C78    call        @LStrFromChar
 00534C7D    push        dword ptr [ebp-158]
 00534C83    lea         eax,[ebp-144]
 00534C89    mov         edx,0D
 00534C8E    call        @LStrCatN
 00534C93    mov         edx,dword ptr [ebp-144]
 00534C99    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00534C9E    mov         eax,dword ptr [eax]
 00534CA0    mov         eax,dword ptr [eax+2F8]
 00534CA6    mov         eax,dword ptr [eax+248]
 00534CAC    mov         ecx,dword ptr [eax]
 00534CAE    call        dword ptr [ecx+38]
 00534CB1    push        0
 00534CB3    mov         cx,word ptr ds:[534F7C];0x3 gvar_00534F7C
 00534CBA    xor         edx,edx
 00534CBC    mov         eax,534F88;'Start Calibrator !'+#10+Are You sure?'
 00534CC1    call        0043F788
 00534CC6    cmp         eax,6
>00534CC9    jne         00534DCE
 00534CCF    mov         eax,534FB4;'Calibrator - Start'
 00534CD4    call        00544EB4
 00534CD9    call        004CED2C
 00534CDE    mov         eax,dword ptr [ebp-4]
 00534CE1    mov         eax,dword ptr [eax+32C];TfmCalibrator.cbInit:TCheckBox
 00534CE7    mov         edx,dword ptr [eax]
 00534CE9    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534CEF    test        al,al
>00534CF1    je          00534D3C
 00534CF3    push        1
 00534CF5    xor         eax,eax
 00534CF7    mov         al,byte ptr [ebp-7]
 00534CFA    push        eax
 00534CFB    push        0
 00534CFD    mov         ax,word ptr [ebp-0E]
 00534D01    push        eax
 00534D02    push        0
 00534D04    xor         eax,eax
 00534D06    mov         al,byte ptr [ebp-9]
 00534D09    push        eax
 00534D0A    push        0
 00534D0C    xor         eax,eax
 00534D0E    mov         al,byte ptr [ebp-0B]
 00534D11    push        eax
 00534D12    push        0
 00534D14    push        0
 00534D16    push        0
 00534D18    push        0
 00534D1A    push        0
 00534D1C    mov         cx,word ptr [ebp-10]
 00534D20    mov         dx,5
 00534D24    mov         ax,19
 00534D28    call        004CE82C
 00534D2D    call        004CEB6C
 00534D32    mov         eax,534FD0;'Calibrator Init - '
 00534D37    call        00544F6C
 00534D3C    mov         eax,dword ptr [ebp-4]
 00534D3F    mov         eax,dword ptr [eax+31C];TfmCalibrator.cbShow:TCheckBox
 00534D45    mov         edx,dword ptr [eax]
 00534D47    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534D4D    test        al,al
>00534D4F    je          00534D59
 00534D51    mov         word ptr [ebp-6],3
>00534D57    jmp         00534D5F
 00534D59    mov         word ptr [ebp-6],4
 00534D5F    push        1
 00534D61    xor         eax,eax
 00534D63    mov         al,byte ptr [ebp-7]
 00534D66    push        eax
 00534D67    push        0
 00534D69    mov         ax,word ptr [ebp-0E]
 00534D6D    push        eax
 00534D6E    push        0
 00534D70    xor         eax,eax
 00534D72    mov         al,byte ptr [ebp-9]
 00534D75    push        eax
 00534D76    push        0
 00534D78    xor         eax,eax
 00534D7A    mov         al,byte ptr [ebp-0B]
 00534D7D    push        eax
 00534D7E    push        0
 00534D80    push        0
 00534D82    push        0
 00534D84    push        0
 00534D86    push        0
 00534D88    mov         cx,word ptr [ebp-10]
 00534D8C    mov         dx,word ptr [ebp-6]
 00534D90    mov         ax,19
 00534D94    call        004CE82C
 00534D99    mov         eax,dword ptr [ebp-4]
 00534D9C    mov         eax,dword ptr [eax+31C];TfmCalibrator.cbShow:TCheckBox
 00534DA2    mov         edx,dword ptr [eax]
 00534DA4    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00534DAA    test        al,al
>00534DAC    je          00534DBA
 00534DAE    mov         al,1
 00534DB0    call        004CED14
 00534DB5    call        004CCA5C
 00534DBA    call        004CEB6C
 00534DBF    mov         eax,534FEC;'Calibrator End - '
 00534DC4    call        00544F6C
 00534DC9    call        005451D0
 00534DCE    mov         dl,1
 00534DD0    mov         eax,dword ptr [ebp-4]
 00534DD3    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00534DD9    mov         ecx,dword ptr [eax]
 00534DDB    call        dword ptr [ecx+64];TImage.SetEnabled
 00534DDE    xor         eax,eax
 00534DE0    pop         edx
 00534DE1    pop         ecx
 00534DE2    pop         ecx
 00534DE3    mov         dword ptr fs:[eax],edx
 00534DE6    push        534E6B
 00534DEB    lea         eax,[ebp-158]
 00534DF1    mov         edx,6
 00534DF6    call        @LStrArrayClr
 00534DFB    lea         eax,[ebp-140]
 00534E01    call        @LStrClr
 00534E06    lea         eax,[ebp-13C]
 00534E0C    call        @LStrClr
 00534E11    lea         eax,[ebp-138]
 00534E17    call        @LStrClr
 00534E1C    lea         eax,[ebp-134]
 00534E22    call        @LStrClr
 00534E27    lea         eax,[ebp-130]
 00534E2D    call        @LStrClr
 00534E32    lea         eax,[ebp-12C]
 00534E38    call        @LStrClr
 00534E3D    lea         eax,[ebp-128]
 00534E43    call        @LStrClr
 00534E48    lea         eax,[ebp-124]
 00534E4E    call        @LStrClr
 00534E53    lea         eax,[ebp-20]
 00534E56    call        @LStrClr
 00534E5B    lea         eax,[ebp-1C]
 00534E5E    call        @LStrClr
 00534E63    ret
>00534E64    jmp         @HandleFinally
>00534E69    jmp         00534DEB
 00534E6B    mov         esp,ebp
 00534E6D    pop         ebp
 00534E6E    ret
*}
end;

//00535000
procedure TfmCalibrator.btReadAllClick(Sender:TObject);
begin
{*
 00535000    push        ebp
 00535001    mov         ebp,esp
 00535003    add         esp,0FFFFFFF8
 00535006    mov         dword ptr [ebp-8],edx
 00535009    mov         dword ptr [ebp-4],eax
 0053500C    xor         edx,edx
 0053500E    mov         eax,dword ptr [ebp-4]
 00535011    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00535017    mov         ecx,dword ptr [eax]
 00535019    call        dword ptr [ecx+64];TImage.SetEnabled
 0053501C    xor         edx,edx
 0053501E    mov         eax,dword ptr [ebp-4]
 00535021    mov         eax,dword ptr [eax+344];TfmCalibrator.btReadAll:TButton
 00535027    mov         ecx,dword ptr [eax]
 00535029    call        dword ptr [ecx+64];TImage.SetEnabled
 0053502C    xor         edx,edx
 0053502E    mov         eax,dword ptr [ebp-4]
 00535031    mov         eax,dword ptr [eax+348];TfmCalibrator.btWriteAll:TButton
 00535037    mov         ecx,dword ptr [eax]
 00535039    call        dword ptr [ecx+64];TImage.SetEnabled
 0053503C    mov         edx,dword ptr ds:[56D524];0x0 gvar_0056D524:TfmCalibrator
 00535042    mov         eax,[00500738];TfmModules
 00535047    call        0050121C
 0053504C    mov         eax,[0056E500];^gvar_0056D404:TfmModules
 00535051    mov         eax,dword ptr [eax]
 00535053    xor         edx,edx
 00535055    call        TfmModules.miRoadMapClearClick
 0053505A    mov         eax,[0056E500];^gvar_0056D404:TfmModules
 0053505F    mov         eax,dword ptr [eax]
 00535061    xor         edx,edx
 00535063    call        TfmModules.miReadAllClick
 00535068    mov         dl,1
 0053506A    mov         eax,dword ptr [ebp-4]
 0053506D    mov         eax,dword ptr [eax+344];TfmCalibrator.btReadAll:TButton
 00535073    mov         ecx,dword ptr [eax]
 00535075    call        dword ptr [ecx+64];TImage.SetEnabled
 00535078    mov         dl,1
 0053507A    mov         eax,dword ptr [ebp-4]
 0053507D    mov         eax,dword ptr [eax+348];TfmCalibrator.btWriteAll:TButton
 00535083    mov         ecx,dword ptr [eax]
 00535085    call        dword ptr [ecx+64];TImage.SetEnabled
 00535088    mov         dl,1
 0053508A    mov         eax,dword ptr [ebp-4]
 0053508D    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 00535093    mov         ecx,dword ptr [eax]
 00535095    call        dword ptr [ecx+64];TImage.SetEnabled
 00535098    pop         ecx
 00535099    pop         ecx
 0053509A    pop         ebp
 0053509B    ret
*}
end;

//0053509C
procedure TfmCalibrator.btWriteAllClick(Sender:TObject);
begin
{*
 0053509C    push        ebp
 0053509D    mov         ebp,esp
 0053509F    add         esp,0FFFFFFF8
 005350A2    mov         dword ptr [ebp-8],edx
 005350A5    mov         dword ptr [ebp-4],eax
 005350A8    xor         edx,edx
 005350AA    mov         eax,dword ptr [ebp-4]
 005350AD    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 005350B3    mov         ecx,dword ptr [eax]
 005350B5    call        dword ptr [ecx+64];TImage.SetEnabled
 005350B8    xor         edx,edx
 005350BA    mov         eax,dword ptr [ebp-4]
 005350BD    mov         eax,dword ptr [eax+344];TfmCalibrator.btReadAll:TButton
 005350C3    mov         ecx,dword ptr [eax]
 005350C5    call        dword ptr [ecx+64];TImage.SetEnabled
 005350C8    xor         edx,edx
 005350CA    mov         eax,dword ptr [ebp-4]
 005350CD    mov         eax,dword ptr [eax+348];TfmCalibrator.btWriteAll:TButton
 005350D3    mov         ecx,dword ptr [eax]
 005350D5    call        dword ptr [ecx+64];TImage.SetEnabled
 005350D8    mov         edx,dword ptr ds:[56D524];0x0 gvar_0056D524:TfmCalibrator
 005350DE    mov         eax,[00500738];TfmModules
 005350E3    call        0050121C
 005350E8    mov         eax,[0056E500];^gvar_0056D404:TfmModules
 005350ED    mov         eax,dword ptr [eax]
 005350EF    xor         edx,edx
 005350F1    call        TfmModules.miRoadMapClearClick
 005350F6    mov         eax,[0056E500];^gvar_0056D404:TfmModules
 005350FB    mov         eax,dword ptr [eax]
 005350FD    xor         edx,edx
 005350FF    call        TfmModules.miWriteAllClick
 00535104    mov         dl,1
 00535106    mov         eax,dword ptr [ebp-4]
 00535109    mov         eax,dword ptr [eax+344];TfmCalibrator.btReadAll:TButton
 0053510F    mov         ecx,dword ptr [eax]
 00535111    call        dword ptr [ecx+64];TImage.SetEnabled
 00535114    mov         dl,1
 00535116    mov         eax,dword ptr [ebp-4]
 00535119    mov         eax,dword ptr [eax+348];TfmCalibrator.btWriteAll:TButton
 0053511F    mov         ecx,dword ptr [eax]
 00535121    call        dword ptr [ecx+64];TImage.SetEnabled
 00535124    mov         dl,1
 00535126    mov         eax,dword ptr [ebp-4]
 00535129    mov         eax,dword ptr [eax+310];TfmCalibrator.btGo:TButton
 0053512F    mov         ecx,dword ptr [eax]
 00535131    call        dword ptr [ecx+64];TImage.SetEnabled
 00535134    pop         ecx
 00535135    pop         ecx
 00535136    pop         ebp
 00535137    ret
*}
end;

end.