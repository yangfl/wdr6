//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uAtaReg;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmAtaReg = class(TForm)
  published
    ed1x0:TLabeledEdit;//f2F8
    ed1x1:TLabeledEdit;//f2FC
    ed1x2:TLabeledEdit;//f300
    ed1x3:TLabeledEdit;//f304
    ed1x4:TLabeledEdit;//f308
    ed1x5:TLabeledEdit;//f30C
    ed1x6:TLabeledEdit;//f310
    ed1x7:TLabeledEdit;//f314
    ed3x6:TLabeledEdit;//f318
    cbDataReg:TCheckBox;//f31C
    cbLba48reg:TCheckBox;//f320
    tmAtaReg:TTimer;//f324
    procedure FormShow(Sender:TObject);//005127F8
    //procedure tmAtaRegTimer(?:?);//00512310
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//005122E0
  end;
    procedure sub_0051228C(?:TfmAtaReg; ?:TfmHDD);//0051228C

implementation

{$R *.DFM}

//0051228C
procedure sub_0051228C(?:TfmAtaReg; ?:TfmHDD);
begin
{*
 0051228C    push        ebp
 0051228D    mov         ebp,esp
 0051228F    add         esp,0FFFFFFF8
 00512292    mov         dword ptr [ebp-8],edx
 00512295    mov         dword ptr [ebp-4],eax
 00512298    cmp         dword ptr ds:[56D454],0;gvar_0056D454:TfmAtaReg
>0051229F    jne         005122B5
 005122A1    mov         ecx,dword ptr [ebp-8]
 005122A4    mov         dl,1
 005122A6    mov         eax,[00512038];TfmAtaReg
 005122AB    call        TfmProgress.Create;TfmAtaReg.Create
 005122B0    mov         [0056D454],eax;gvar_0056D454:TfmAtaReg
 005122B5    mov         eax,[0056D454];0x0 gvar_0056D454:TfmAtaReg
 005122BA    cmp         byte ptr [eax+1A6],0;TfmAtaReg.FShowing:Boolean
>005122C1    je          005122D2
 005122C3    mov         eax,[0056D454];0x0 gvar_0056D454:TfmAtaReg
 005122C8    mov         edx,dword ptr [eax]
 005122CA    call        dword ptr [edx+0C4];TfmAtaReg.sub_004A746C
>005122D0    jmp         005122DC
 005122D2    mov         eax,[0056D454];0x0 gvar_0056D454:TfmAtaReg
 005122D7    call        004A7450
 005122DC    pop         ecx
 005122DD    pop         ecx
 005122DE    pop         ebp
 005122DF    ret
*}
end;

//005122E0
procedure TfmAtaReg.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 005122E0    push        ebp
 005122E1    mov         ebp,esp
 005122E3    add         esp,0FFFFFFF4
 005122E6    mov         dword ptr [ebp-8],ecx
 005122E9    mov         dword ptr [ebp-0C],edx
 005122EC    mov         dword ptr [ebp-4],eax
 005122EF    xor         edx,edx
 005122F1    mov         eax,dword ptr [ebp-4]
 005122F4    mov         eax,dword ptr [eax+324];TfmAtaReg.tmAtaReg:TTimer
 005122FA    call        TTimer.SetEnabled
 005122FF    xor         eax,eax
 00512301    mov         [0056D454],eax;gvar_0056D454:TfmAtaReg
 00512306    mov         eax,dword ptr [ebp-8]
 00512309    mov         byte ptr [eax],2
 0051230C    mov         esp,ebp
 0051230E    pop         ebp
 0051230F    ret
*}
end;

//00512310
{*procedure TfmAtaReg.tmAtaRegTimer(?:?);
begin
 00512310    push        ebp
 00512311    mov         ebp,esp
 00512313    mov         ecx,0D
 00512318    push        0
 0051231A    push        0
 0051231C    dec         ecx
>0051231D    jne         00512318
 0051231F    push        ecx
 00512320    mov         dword ptr [ebp-18],edx
 00512323    mov         dword ptr [ebp-4],eax
 00512326    xor         eax,eax
 00512328    push        ebp
 00512329    push        5127ED
 0051232E    push        dword ptr fs:[eax]
 00512331    mov         dword ptr fs:[eax],esp
 00512334    mov         word ptr [ebp-14],0
 0051233A    call        0055FE88
 0051233F    mov         eax,[0056E25C];^gvar_0059BF53
 00512344    cmp         byte ptr [eax],0
>00512347    jne         005127D2
 0051234D    mov         eax,[0056E494];^gvar_0056DF18
 00512352    mov         ax,word ptr [eax]
 00512355    xor         edx,edx
 00512357    call        0055FE70
 0051235C    mov         eax,dword ptr [ebp-4]
 0051235F    mov         eax,dword ptr [eax+31C];TfmAtaReg.cbDataReg:TCheckBox
 00512365    mov         edx,dword ptr [eax]
 00512367    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0051236D    test        al,al
>0051236F    je          00512382
 00512371    mov         eax,[0056E1D4];^gvar_0056DF14
 00512376    mov         ax,word ptr [eax]
 00512379    call        0055FE54
 0051237E    mov         word ptr [ebp-14],ax
 00512382    mov         eax,[0056E1D4];^gvar_0056DF14
 00512387    mov         ax,word ptr [eax]
 0051238A    inc         eax
 0051238B    call        0055FE3C
 00512390    mov         byte ptr [ebp-5],al
 00512393    mov         eax,[0056E1D4];^gvar_0056DF14
 00512398    mov         ax,word ptr [eax]
 0051239B    add         ax,2
 0051239F    call        0055FE3C
 005123A4    mov         byte ptr [ebp-6],al
 005123A7    mov         eax,[0056E1D4];^gvar_0056DF14
 005123AC    mov         ax,word ptr [eax]
 005123AF    add         ax,3
 005123B3    call        0055FE3C
 005123B8    mov         byte ptr [ebp-7],al
 005123BB    mov         eax,[0056E1D4];^gvar_0056DF14
 005123C0    mov         ax,word ptr [eax]
 005123C3    add         ax,4
 005123C7    call        0055FE3C
 005123CC    mov         byte ptr [ebp-8],al
 005123CF    mov         eax,[0056E1D4];^gvar_0056DF14
 005123D4    mov         ax,word ptr [eax]
 005123D7    add         ax,5
 005123DB    call        0055FE3C
 005123E0    mov         byte ptr [ebp-9],al
 005123E3    mov         eax,[0056E1D4];^gvar_0056DF14
 005123E8    mov         ax,word ptr [eax]
 005123EB    add         ax,6
 005123EF    call        0055FE3C
 005123F4    mov         byte ptr [ebp-0A],al
 005123F7    mov         eax,[0056E1D4];^gvar_0056DF14
 005123FC    mov         ax,word ptr [eax]
 005123FF    add         ax,7
 00512403    call        0055FE3C
 00512408    mov         byte ptr [ebp-0B],al
 0051240B    mov         eax,[0056E494];^gvar_0056DF18
 00512410    mov         ax,word ptr [eax]
 00512413    call        0055FE3C
 00512418    mov         byte ptr [ebp-0C],al
 0051241B    mov         eax,dword ptr [ebp-4]
 0051241E    mov         eax,dword ptr [eax+320];TfmAtaReg.cbLba48reg:TCheckBox
 00512424    mov         edx,dword ptr [eax]
 00512426    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0051242C    test        al,al
>0051242E    je          005124C7
 00512434    mov         eax,[0056E494];^gvar_0056DF18
 00512439    mov         ax,word ptr [eax]
 0051243C    mov         dl,80
 0051243E    call        0055FE70
 00512443    mov         eax,[0056E1D4];^gvar_0056DF14
 00512448    mov         ax,word ptr [eax]
 0051244B    inc         eax
 0051244C    call        0055FE3C
 00512451    mov         byte ptr [ebp-0D],al
 00512454    mov         eax,[0056E1D4];^gvar_0056DF14
 00512459    mov         ax,word ptr [eax]
 0051245C    add         ax,2
 00512460    call        0055FE3C
 00512465    mov         byte ptr [ebp-0E],al
 00512468    mov         eax,[0056E1D4];^gvar_0056DF14
 0051246D    mov         ax,word ptr [eax]
 00512470    add         ax,3
 00512474    call        0055FE3C
 00512479    mov         byte ptr [ebp-0F],al
 0051247C    mov         eax,[0056E1D4];^gvar_0056DF14
 00512481    mov         ax,word ptr [eax]
 00512484    add         ax,4
 00512488    call        0055FE3C
 0051248D    mov         byte ptr [ebp-10],al
 00512490    mov         eax,[0056E1D4];^gvar_0056DF14
 00512495    mov         ax,word ptr [eax]
 00512498    add         ax,5
 0051249C    call        0055FE3C
 005124A1    mov         byte ptr [ebp-11],al
 005124A4    mov         eax,[0056E1D4];^gvar_0056DF14
 005124A9    mov         ax,word ptr [eax]
 005124AC    add         ax,6
 005124B0    call        0055FE3C
 005124B5    mov         byte ptr [ebp-12],al
 005124B8    mov         eax,[0056E494];^gvar_0056DF18
 005124BD    mov         ax,word ptr [eax]
 005124C0    xor         edx,edx
 005124C2    call        0055FE70
 005124C7    mov         eax,dword ptr [ebp-4]
 005124CA    mov         eax,dword ptr [eax+31C];TfmAtaReg.cbDataReg:TCheckBox
 005124D0    mov         edx,dword ptr [eax]
 005124D2    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005124D8    test        al,al
>005124DA    je          00512500
 005124DC    lea         ecx,[ebp-1C]
 005124DF    movzx       eax,word ptr [ebp-14]
 005124E3    mov         edx,4
 005124E8    call        IntToHex
 005124ED    mov         edx,dword ptr [ebp-1C]
 005124F0    mov         eax,dword ptr [ebp-4]
 005124F3    mov         eax,dword ptr [eax+2F8];TfmAtaReg.ed1x0:TLabeledEdit
 005124F9    call        TPanel.SetCaption
>005124FE    jmp         00512510
 00512500    xor         edx,edx
 00512502    mov         eax,dword ptr [ebp-4]
 00512505    mov         eax,dword ptr [eax+2F8];TfmAtaReg.ed1x0:TLabeledEdit
 0051250B    call        TPanel.SetCaption
 00512510    mov         eax,dword ptr [ebp-4]
 00512513    mov         eax,dword ptr [eax+320];TfmAtaReg.cbLba48reg:TCheckBox
 00512519    mov         edx,dword ptr [eax]
 0051251B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00512521    test        al,al
>00512523    je          005126BA
 00512529    lea         ecx,[ebp-20]
 0051252C    xor         eax,eax
 0051252E    mov         al,byte ptr [ebp-0D]
 00512531    mov         edx,2
 00512536    call        IntToHex
 0051253B    lea         eax,[ebp-20]
 0051253E    push        eax
 0051253F    lea         ecx,[ebp-24]
 00512542    xor         eax,eax
 00512544    mov         al,byte ptr [ebp-5]
 00512547    mov         edx,2
 0051254C    call        IntToHex
 00512551    mov         edx,dword ptr [ebp-24]
 00512554    pop         eax
 00512555    call        @LStrCat
 0051255A    mov         edx,dword ptr [ebp-20]
 0051255D    mov         eax,dword ptr [ebp-4]
 00512560    mov         eax,dword ptr [eax+2FC];TfmAtaReg.ed1x1:TLabeledEdit
 00512566    call        TPanel.SetCaption
 0051256B    lea         ecx,[ebp-28]
 0051256E    xor         eax,eax
 00512570    mov         al,byte ptr [ebp-0E]
 00512573    mov         edx,2
 00512578    call        IntToHex
 0051257D    lea         eax,[ebp-28]
 00512580    push        eax
 00512581    lea         ecx,[ebp-2C]
 00512584    xor         eax,eax
 00512586    mov         al,byte ptr [ebp-6]
 00512589    mov         edx,2
 0051258E    call        IntToHex
 00512593    mov         edx,dword ptr [ebp-2C]
 00512596    pop         eax
 00512597    call        @LStrCat
 0051259C    mov         edx,dword ptr [ebp-28]
 0051259F    mov         eax,dword ptr [ebp-4]
 005125A2    mov         eax,dword ptr [eax+300];TfmAtaReg.ed1x2:TLabeledEdit
 005125A8    call        TPanel.SetCaption
 005125AD    lea         ecx,[ebp-30]
 005125B0    xor         eax,eax
 005125B2    mov         al,byte ptr [ebp-0F]
 005125B5    mov         edx,2
 005125BA    call        IntToHex
 005125BF    lea         eax,[ebp-30]
 005125C2    push        eax
 005125C3    lea         ecx,[ebp-34]
 005125C6    xor         eax,eax
 005125C8    mov         al,byte ptr [ebp-7]
 005125CB    mov         edx,2
 005125D0    call        IntToHex
 005125D5    mov         edx,dword ptr [ebp-34]
 005125D8    pop         eax
 005125D9    call        @LStrCat
 005125DE    mov         edx,dword ptr [ebp-30]
 005125E1    mov         eax,dword ptr [ebp-4]
 005125E4    mov         eax,dword ptr [eax+304];TfmAtaReg.ed1x3:TLabeledEdit
 005125EA    call        TPanel.SetCaption
 005125EF    lea         ecx,[ebp-38]
 005125F2    xor         eax,eax
 005125F4    mov         al,byte ptr [ebp-10]
 005125F7    mov         edx,2
 005125FC    call        IntToHex
 00512601    lea         eax,[ebp-38]
 00512604    push        eax
 00512605    lea         ecx,[ebp-3C]
 00512608    xor         eax,eax
 0051260A    mov         al,byte ptr [ebp-8]
 0051260D    mov         edx,2
 00512612    call        IntToHex
 00512617    mov         edx,dword ptr [ebp-3C]
 0051261A    pop         eax
 0051261B    call        @LStrCat
 00512620    mov         edx,dword ptr [ebp-38]
 00512623    mov         eax,dword ptr [ebp-4]
 00512626    mov         eax,dword ptr [eax+308];TfmAtaReg.ed1x4:TLabeledEdit
 0051262C    call        TPanel.SetCaption
 00512631    lea         ecx,[ebp-40]
 00512634    xor         eax,eax
 00512636    mov         al,byte ptr [ebp-11]
 00512639    mov         edx,2
 0051263E    call        IntToHex
 00512643    lea         eax,[ebp-40]
 00512646    push        eax
 00512647    lea         ecx,[ebp-44]
 0051264A    xor         eax,eax
 0051264C    mov         al,byte ptr [ebp-9]
 0051264F    mov         edx,2
 00512654    call        IntToHex
 00512659    mov         edx,dword ptr [ebp-44]
 0051265C    pop         eax
 0051265D    call        @LStrCat
 00512662    mov         edx,dword ptr [ebp-40]
 00512665    mov         eax,dword ptr [ebp-4]
 00512668    mov         eax,dword ptr [eax+30C];TfmAtaReg.ed1x5:TLabeledEdit
 0051266E    call        TPanel.SetCaption
 00512673    lea         ecx,[ebp-48]
 00512676    xor         eax,eax
 00512678    mov         al,byte ptr [ebp-12]
 0051267B    mov         edx,2
 00512680    call        IntToHex
 00512685    lea         eax,[ebp-48]
 00512688    push        eax
 00512689    lea         ecx,[ebp-4C]
 0051268C    xor         eax,eax
 0051268E    mov         al,byte ptr [ebp-0A]
 00512691    mov         edx,2
 00512696    call        IntToHex
 0051269B    mov         edx,dword ptr [ebp-4C]
 0051269E    pop         eax
 0051269F    call        @LStrCat
 005126A4    mov         edx,dword ptr [ebp-48]
 005126A7    mov         eax,dword ptr [ebp-4]
 005126AA    mov         eax,dword ptr [eax+310];TfmAtaReg.ed1x6:TLabeledEdit
 005126B0    call        TPanel.SetCaption
>005126B5    jmp         005127D2
 005126BA    lea         ecx,[ebp-50]
 005126BD    xor         eax,eax
 005126BF    mov         al,byte ptr [ebp-5]
 005126C2    mov         edx,2
 005126C7    call        IntToHex
 005126CC    mov         edx,dword ptr [ebp-50]
 005126CF    mov         eax,dword ptr [ebp-4]
 005126D2    mov         eax,dword ptr [eax+2FC];TfmAtaReg.ed1x1:TLabeledEdit
 005126D8    call        TPanel.SetCaption
 005126DD    lea         ecx,[ebp-54]
 005126E0    xor         eax,eax
 005126E2    mov         al,byte ptr [ebp-6]
 005126E5    mov         edx,2
 005126EA    call        IntToHex
 005126EF    mov         edx,dword ptr [ebp-54]
 005126F2    mov         eax,dword ptr [ebp-4]
 005126F5    mov         eax,dword ptr [eax+300];TfmAtaReg.ed1x2:TLabeledEdit
 005126FB    call        TPanel.SetCaption
 00512700    lea         ecx,[ebp-58]
 00512703    xor         eax,eax
 00512705    mov         al,byte ptr [ebp-7]
 00512708    mov         edx,2
 0051270D    call        IntToHex
 00512712    mov         edx,dword ptr [ebp-58]
 00512715    mov         eax,dword ptr [ebp-4]
 00512718    mov         eax,dword ptr [eax+304];TfmAtaReg.ed1x3:TLabeledEdit
 0051271E    call        TPanel.SetCaption
 00512723    lea         ecx,[ebp-5C]
 00512726    xor         eax,eax
 00512728    mov         al,byte ptr [ebp-8]
 0051272B    mov         edx,2
 00512730    call        IntToHex
 00512735    mov         edx,dword ptr [ebp-5C]
 00512738    mov         eax,dword ptr [ebp-4]
 0051273B    mov         eax,dword ptr [eax+308];TfmAtaReg.ed1x4:TLabeledEdit
 00512741    call        TPanel.SetCaption
 00512746    lea         ecx,[ebp-60]
 00512749    xor         eax,eax
 0051274B    mov         al,byte ptr [ebp-9]
 0051274E    mov         edx,2
 00512753    call        IntToHex
 00512758    mov         edx,dword ptr [ebp-60]
 0051275B    mov         eax,dword ptr [ebp-4]
 0051275E    mov         eax,dword ptr [eax+30C];TfmAtaReg.ed1x5:TLabeledEdit
 00512764    call        TPanel.SetCaption
 00512769    lea         ecx,[ebp-64]
 0051276C    xor         eax,eax
 0051276E    mov         al,byte ptr [ebp-0A]
 00512771    mov         edx,2
 00512776    call        IntToHex
 0051277B    mov         edx,dword ptr [ebp-64]
 0051277E    mov         eax,dword ptr [ebp-4]
 00512781    mov         eax,dword ptr [eax+310];TfmAtaReg.ed1x6:TLabeledEdit
 00512787    call        TPanel.SetCaption
 0051278C    lea         ecx,[ebp-68]
 0051278F    xor         eax,eax
 00512791    mov         al,byte ptr [ebp-0B]
 00512794    mov         edx,2
 00512799    call        IntToHex
 0051279E    mov         edx,dword ptr [ebp-68]
 005127A1    mov         eax,dword ptr [ebp-4]
 005127A4    mov         eax,dword ptr [eax+314];TfmAtaReg.ed1x7:TLabeledEdit
 005127AA    call        TPanel.SetCaption
 005127AF    lea         ecx,[ebp-6C]
 005127B2    xor         eax,eax
 005127B4    mov         al,byte ptr [ebp-0C]
 005127B7    mov         edx,2
 005127BC    call        IntToHex
 005127C1    mov         edx,dword ptr [ebp-6C]
 005127C4    mov         eax,dword ptr [ebp-4]
 005127C7    mov         eax,dword ptr [eax+318];TfmAtaReg.ed3x6:TLabeledEdit
 005127CD    call        TPanel.SetCaption
 005127D2    xor         eax,eax
 005127D4    pop         edx
 005127D5    pop         ecx
 005127D6    pop         ecx
 005127D7    mov         dword ptr fs:[eax],edx
 005127DA    push        5127F4
 005127DF    lea         eax,[ebp-6C]
 005127E2    mov         edx,15
 005127E7    call        @LStrArrayClr
 005127EC    ret
>005127ED    jmp         @HandleFinally
>005127F2    jmp         005127DF
 005127F4    mov         esp,ebp
 005127F6    pop         ebp
 005127F7    ret
end;*}

//005127F8
procedure TfmAtaReg.FormShow(Sender:TObject);
begin
{*
 005127F8    push        ebp
 005127F9    mov         ebp,esp
 005127FB    add         esp,0FFFFFFF8
 005127FE    mov         dword ptr [ebp-8],edx
 00512801    mov         dword ptr [ebp-4],eax
 00512804    mov         dl,1
 00512806    mov         eax,dword ptr [ebp-4]
 00512809    mov         eax,dword ptr [eax+324];TfmAtaReg.tmAtaReg:TTimer
 0051280F    call        TTimer.SetEnabled
 00512814    pop         ecx
 00512815    pop         ecx
 00512816    pop         ebp
 00512817    ret
*}
end;

end.