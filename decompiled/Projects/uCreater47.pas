//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCreater47;

interface

uses
  SysUtils, Classes, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmCreater = class(TForm)
  published
    GroupBox1:TGroupBox;//f2F8
    TrackBar2:TTrackBar;//f2FC
    TrackBar3:TTrackBar;//f300
    TrackBar1:TTrackBar;//f304
    TrackBar4:TTrackBar;//f308
    TrackBar5:TTrackBar;//f30C
    TrackBar6:TTrackBar;//f310
    TrackBar7:TTrackBar;//f314
    Edit1:TEdit;//f318
    Edit2:TEdit;//f31C
    Edit3:TEdit;//f320
    Edit4:TEdit;//f324
    Edit5:TEdit;//f328
    Edit6:TEdit;//f32C
    Label1:TLabel;//f330
    Label3:TLabel;//f334
    Label4:TLabel;//f338
    TrackBar8:TTrackBar;//f33C
    TrackBar9:TTrackBar;//f340
    Edit7:TEdit;//f344
    Edit8:TEdit;//f348
    Label5:TLabel;//f34C
    cb8heads:TCheckBox;//f350
    btLoad:TButton;//f354
    btSave:TButton;//f358
    GroupBox2:TGroupBox;//f35C
    rgFrom:TRadioGroup;//f360
    btCreate:TButton;//f364
    cbDword40:TCheckBox;//f368
    //procedure Edit4Change(?:?);//005309D0
    //procedure Edit5Change(?:?);//00530A7C
    //procedure Edit6Change(?:?);//00530B28
    //procedure Edit1Change(?:?);//005307CC
    //procedure Edit2Change(?:?);//00530878
    //procedure Edit3Change(?:?);//00530924
    //procedure TrackBar8Change(?:?);//005306EC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00530D60
    procedure FormDestroy(Sender:TObject);//00530D80
    procedure cb8headsClick(Sender:TObject);//00530DA4
    //procedure TrackBar9Change(?:?);//0053075C
    //procedure Edit7Change(?:?);//00530BD4
    //procedure Edit8Change(?:?);//00530C80
    procedure btSaveClick(Sender:TObject);//00530314
    procedure ReadValue;//0052F8F4
    procedure WriteValue;//005300E0
    procedure btCreateClick(Sender:TObject);//0052F4EC
    procedure btLoadClick(Sender:TObject);//00530204
    procedure FormCreate(Sender:TObject);//00530D2C
    //procedure TrackBar7Change(?:?);//0053033C
    //procedure TrackBar4Change(?:?);//0053059C
    //procedure TrackBar5Change(?:?);//0053060C
    //procedure TrackBar6Change(?:?);//0053067C
    //procedure TrackBar1Change(?:?);//0053044C
    //procedure TrackBar2Change(?:?);//005304BC
    //procedure TrackBar3Change(?:?);//0053052C
  end;
    procedure sub_0052F070(?:TfmCreater; ?:TfmHDD);//0052F070
    procedure sub_0052F0C4;//0052F0C4
    //procedure sub_0052F21C(?:?; ?:?);//0052F21C
    procedure sub_0052F308;//0052F308

implementation

{$R *.DFM}

//0052F070
procedure sub_0052F070(?:TfmCreater; ?:TfmHDD);
begin
{*
 0052F070    push        ebp
 0052F071    mov         ebp,esp
 0052F073    add         esp,0FFFFFFF8
 0052F076    mov         dword ptr [ebp-8],edx
 0052F079    mov         dword ptr [ebp-4],eax
 0052F07C    cmp         dword ptr ds:[56D4FC],0;gvar_0056D4FC:TfmCreater
>0052F083    jne         0052F099
 0052F085    mov         ecx,dword ptr [ebp-8]
 0052F088    mov         dl,1
 0052F08A    mov         eax,[0052EB48];TfmCreater
 0052F08F    call        TfmProgress.Create;TfmCreater.Create
 0052F094    mov         [0056D4FC],eax;gvar_0056D4FC:TfmCreater
 0052F099    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F09E    cmp         byte ptr [eax+1A6],0;TfmCreater.FShowing:Boolean
>0052F0A5    je          0052F0B6
 0052F0A7    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F0AC    mov         edx,dword ptr [eax]
 0052F0AE    call        dword ptr [edx+0C4];TfmCreater.sub_004A746C
>0052F0B4    jmp         0052F0C0
 0052F0B6    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F0BB    call        004A7450
 0052F0C0    pop         ecx
 0052F0C1    pop         ecx
 0052F0C2    pop         ebp
 0052F0C3    ret
*}
end;

//0052F0C4
procedure sub_0052F0C4;
begin
{*
 0052F0C4    push        ebp
 0052F0C5    mov         ebp,esp
 0052F0C7    add         esp,0FFFFFFF8
 0052F0CA    push        ebx
 0052F0CB    xor         ecx,ecx
 0052F0CD    xor         edx,edx
 0052F0CF    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F0D4    mov         ebx,dword ptr [eax]
 0052F0D6    call        dword ptr [ebx+14]
 0052F0D9    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F0DE    call        004CE56C
 0052F0E3    mov         dword ptr [ebp-4],eax
 0052F0E6    cmp         dword ptr [ebp-4],4C594F52
>0052F0ED    jne         0052F126
 0052F0EF    mov         byte ptr ds:[597E78],1;gvar_00597E78
 0052F0F6    xor         ecx,ecx
 0052F0F8    mov         edx,1E
 0052F0FD    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F102    mov         ebx,dword ptr [eax]
 0052F104    call        dword ptr [ebx+14]
 0052F107    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F10C    call        004CE548
 0052F111    movzx       eax,ax
 0052F114    mov         dword ptr [ebp-4],eax
 0052F117    cmp         dword ptr [ebp-4],0
>0052F11B    jne         0052F15B
 0052F11D    mov         dword ptr [ebp-4],58
>0052F124    jmp         0052F15B
 0052F126    mov         byte ptr ds:[597E78],0;gvar_00597E78
 0052F12D    xor         ecx,ecx
 0052F12F    mov         edx,0A
 0052F134    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F139    mov         ebx,dword ptr [eax]
 0052F13B    call        dword ptr [ebx+14]
 0052F13E    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F143    call        004CE548
 0052F148    movzx       eax,ax
 0052F14B    mov         dword ptr [ebp-4],eax
 0052F14E    cmp         dword ptr [ebp-4],0
>0052F152    jne         0052F15B
 0052F154    mov         dword ptr [ebp-4],40
 0052F15B    xor         ecx,ecx
 0052F15D    mov         edx,dword ptr [ebp-4]
 0052F160    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F165    mov         ebx,dword ptr [eax]
 0052F167    call        dword ptr [ebx+14]
 0052F16A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0052F16F    mov         eax,dword ptr [eax]
 0052F171    mov         eax,dword ptr [eax+2F8]
 0052F177    mov         eax,dword ptr [eax+248]
 0052F17D    xor         edx,edx
 0052F17F    mov         ecx,dword ptr [eax]
 0052F181    call        dword ptr [ecx+38]
 0052F184    xor         eax,eax
 0052F186    mov         dword ptr [ebp-8],eax
 0052F189    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F18E    call        004CE548
 0052F193    mov         edx,dword ptr [ebp-8]
 0052F196    mov         word ptr [edx*4+597C4C],ax
 0052F19E    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F1A3    mov         eax,dword ptr [eax+368];TfmCreater.cbDword40:TCheckBox
 0052F1A9    mov         edx,dword ptr [eax]
 0052F1AB    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F1B1    test        al,al
>0052F1B3    je          0052F1C8
 0052F1B5    mov         cx,1
 0052F1B9    mov         edx,2
 0052F1BE    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F1C3    mov         ebx,dword ptr [eax]
 0052F1C5    call        dword ptr [ebx+14]
 0052F1C8    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F1CD    call        004CE548
 0052F1D2    mov         edx,dword ptr [ebp-8]
 0052F1D5    mov         word ptr [edx*4+597C4E],ax
 0052F1DD    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F1E2    mov         eax,dword ptr [eax+368];TfmCreater.cbDword40:TCheckBox
 0052F1E8    mov         edx,dword ptr [eax]
 0052F1EA    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F1F0    test        al,al
>0052F1F2    je          0052F207
 0052F1F4    mov         cx,1
 0052F1F8    mov         edx,2
 0052F1FD    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F202    mov         ebx,dword ptr [eax]
 0052F204    call        dword ptr [ebx+14]
 0052F207    inc         dword ptr [ebp-8]
 0052F20A    cmp         dword ptr [ebp-8],7
>0052F20E    jne         0052F189
 0052F214    pop         ebx
 0052F215    pop         ecx
 0052F216    pop         ecx
 0052F217    pop         ebp
 0052F218    ret
*}
end;

//0052F21C
{*procedure sub_0052F21C(?:?; ?:?);
begin
 0052F21C    push        ebp
 0052F21D    mov         ebp,esp
 0052F21F    add         esp,0FFFFFFF4
 0052F222    push        ebx
 0052F223    mov         dword ptr [ebp-8],edx
 0052F226    mov         word ptr [ebp-2],ax
 0052F22A    xor         ecx,ecx
 0052F22C    xor         edx,edx
 0052F22E    mov         eax,dword ptr [ebp-8]
 0052F231    mov         ebx,dword ptr [eax]
 0052F233    call        dword ptr [ebx+14]
 0052F236    mov         eax,dword ptr [ebp-8]
 0052F239    call        004CE56C
 0052F23E    mov         dword ptr [ebp-0C],eax
 0052F241    cmp         dword ptr [ebp-0C],4C594F52
>0052F248    jne         0052F262
 0052F24A    xor         ecx,ecx
 0052F24C    mov         edx,1C
 0052F251    mov         eax,dword ptr [ebp-8]
 0052F254    mov         ebx,dword ptr [eax]
 0052F256    call        dword ptr [ebx+14]
 0052F259    mov         byte ptr ds:[597E78],1;gvar_00597E78
>0052F260    jmp         0052F278
 0052F262    xor         ecx,ecx
 0052F264    mov         edx,0A
 0052F269    mov         eax,dword ptr [ebp-8]
 0052F26C    mov         ebx,dword ptr [eax]
 0052F26E    call        dword ptr [ebx+14]
 0052F271    mov         byte ptr ds:[597E78],0;gvar_00597E78
 0052F278    mov         eax,dword ptr [ebp-8]
 0052F27B    call        004CE548
 0052F280    mov         [00597C68],ax;gvar_00597C68
 0052F286    mov         eax,dword ptr [ebp-8]
 0052F289    call        004CE548
 0052F28E    mov         [00597C6C],ax;gvar_00597C6C
 0052F294    mov         eax,dword ptr [ebp-8]
 0052F297    call        004CE548
 0052F29C    mov         [00597C70],ax;gvar_00597C70
 0052F2A2    mov         eax,dword ptr [ebp-8]
 0052F2A5    call        004CE548
 0052F2AA    mov         [00597C74],ax;gvar_00597C74
 0052F2B0    movzx       eax,word ptr ds:[597C6C];0x0 gvar_00597C6C
 0052F2B7    movzx       edx,word ptr ds:[597C68];0x0 gvar_00597C68
 0052F2BE    sub         eax,edx
 0052F2C0    movzx       edx,word ptr [ebp-2]
 0052F2C4    mov         ecx,edx
 0052F2C6    cdq
 0052F2C7    idiv        eax,ecx
 0052F2C9    mov         [00597C6A],ax;gvar_00597C6A:Integer
 0052F2CF    movzx       eax,word ptr ds:[597C70];0x0 gvar_00597C70
 0052F2D6    movzx       edx,word ptr ds:[597C6C];0x0 gvar_00597C6C
 0052F2DD    sub         eax,edx
 0052F2DF    movzx       edx,word ptr [ebp-2]
 0052F2E3    mov         ecx,edx
 0052F2E5    cdq
 0052F2E6    idiv        eax,ecx
 0052F2E8    mov         [00597C6E],ax;gvar_00597C6E:Integer
 0052F2EE    mov         word ptr ds:[597C72],2;gvar_00597C72
 0052F2F7    mov         word ptr ds:[597C76],2;gvar_00597C76
 0052F300    pop         ebx
 0052F301    mov         esp,ebp
 0052F303    pop         ebp
 0052F304    ret
end;*}

//0052F308
procedure sub_0052F308;
begin
{*
 0052F308    push        ebp
 0052F309    mov         ebp,esp
 0052F30B    add         esp,0FFFFFFF4
 0052F30E    push        ebx
 0052F30F    mov         eax,[0056D4FC];0x0 gvar_0056D4FC:TfmCreater
 0052F314    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052F31A    mov         edx,dword ptr [eax]
 0052F31C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F322    test        al,al
>0052F324    je          0052F32E
 0052F326    mov         word ptr [ebp-6],8
>0052F32C    jmp         0052F334
 0052F32E    mov         word ptr [ebp-6],6
 0052F334    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 0052F33A    mov         ax,word ptr [ebp-6]
 0052F33E    call        0052F21C
 0052F343    call        0052F0C4
 0052F348    movzx       edx,word ptr ds:[597C68];0x0 gvar_00597C68
 0052F34F    xor         ecx,ecx
 0052F351    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F356    mov         ebx,dword ptr [eax]
 0052F358    call        dword ptr [ebx+14]
 0052F35B    movzx       edx,word ptr ds:[597C54];0x0 gvar_00597C54
 0052F362    xor         ecx,ecx
 0052F364    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F369    mov         ebx,dword ptr [eax]
 0052F36B    call        dword ptr [ebx+14]
 0052F36E    movzx       eax,word ptr [ebp-6]
 0052F372    dec         eax
 0052F373    test        eax,eax
>0052F375    jl          0052F3E0
 0052F377    inc         eax
 0052F378    mov         dword ptr [ebp-0C],eax
 0052F37B    mov         dword ptr [ebp-4],0
 0052F382    movzx       ecx,word ptr ds:[597C6A];0x0 gvar_00597C6A:Integer
 0052F389    mov         edx,597C78
 0052F38E    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F393    call        TStream.ReadBuffer
 0052F398    movzx       eax,word ptr ds:[597C56];0x0 gvar_00597C56
 0052F39F    movzx       edx,word ptr [ebp-6]
 0052F3A3    mov         ecx,edx
 0052F3A5    xor         edx,edx
 0052F3A7    div         eax,ecx
 0052F3A9    mov         edx,eax
 0052F3AB    movzx       eax,word ptr ds:[597C6A];0x0 gvar_00597C6A:Integer
 0052F3B2    sub         edx,eax
 0052F3B4    mov         cx,1
 0052F3B8    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F3BD    mov         ebx,dword ptr [eax]
 0052F3BF    call        dword ptr [ebx+14]
 0052F3C2    movzx       ecx,word ptr ds:[597C6A];0x0 gvar_00597C6A:Integer
 0052F3C9    mov         edx,597C78
 0052F3CE    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F3D3    call        TStream.WriteBuffer
 0052F3D8    inc         dword ptr [ebp-4]
 0052F3DB    dec         dword ptr [ebp-0C]
>0052F3DE    jne         0052F382
 0052F3E0    movzx       edx,word ptr ds:[597C6C];0x0 gvar_00597C6C
 0052F3E7    xor         ecx,ecx
 0052F3E9    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F3EE    mov         ebx,dword ptr [eax]
 0052F3F0    call        dword ptr [ebx+14]
 0052F3F3    movzx       edx,word ptr ds:[597C58];0x0 gvar_00597C58
 0052F3FA    xor         ecx,ecx
 0052F3FC    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F401    mov         ebx,dword ptr [eax]
 0052F403    call        dword ptr [ebx+14]
 0052F406    movzx       eax,word ptr [ebp-6]
 0052F40A    dec         eax
 0052F40B    test        eax,eax
>0052F40D    jl          0052F478
 0052F40F    inc         eax
 0052F410    mov         dword ptr [ebp-0C],eax
 0052F413    mov         dword ptr [ebp-4],0
 0052F41A    movzx       ecx,word ptr ds:[597C6E];0x0 gvar_00597C6E:Integer
 0052F421    mov         edx,597C78
 0052F426    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F42B    call        TStream.ReadBuffer
 0052F430    movzx       eax,word ptr ds:[597C5A];0x0 gvar_00597C5A
 0052F437    movzx       edx,word ptr [ebp-6]
 0052F43B    mov         ecx,edx
 0052F43D    xor         edx,edx
 0052F43F    div         eax,ecx
 0052F441    mov         edx,eax
 0052F443    movzx       eax,word ptr ds:[597C6E];0x0 gvar_00597C6E:Integer
 0052F44A    sub         edx,eax
 0052F44C    mov         cx,1
 0052F450    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F455    mov         ebx,dword ptr [eax]
 0052F457    call        dword ptr [ebx+14]
 0052F45A    movzx       ecx,word ptr ds:[597C6E];0x0 gvar_00597C6E:Integer
 0052F461    mov         edx,597C78
 0052F466    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F46B    call        TStream.WriteBuffer
 0052F470    inc         dword ptr [ebp-4]
 0052F473    dec         dword ptr [ebp-0C]
>0052F476    jne         0052F41A
 0052F478    movzx       edx,word ptr ds:[597C70];0x0 gvar_00597C70
 0052F47F    xor         ecx,ecx
 0052F481    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F486    mov         ebx,dword ptr [eax]
 0052F488    call        dword ptr [ebx+14]
 0052F48B    movzx       edx,word ptr ds:[597C5C];0x0 gvar_00597C5C
 0052F492    xor         ecx,ecx
 0052F494    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F499    mov         ebx,dword ptr [eax]
 0052F49B    call        dword ptr [ebx+14]
 0052F49E    movzx       eax,word ptr [ebp-6]
 0052F4A2    dec         eax
 0052F4A3    test        eax,eax
>0052F4A5    jl          0052F4E6
 0052F4A7    inc         eax
 0052F4A8    mov         dword ptr [ebp-0C],eax
 0052F4AB    mov         dword ptr [ebp-4],0
 0052F4B2    movzx       ecx,word ptr ds:[597C72];0x0 gvar_00597C72
 0052F4B9    mov         edx,597C78
 0052F4BE    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 0052F4C3    call        TStream.ReadBuffer
 0052F4C8    movzx       ecx,word ptr ds:[597C72];0x0 gvar_00597C72
 0052F4CF    mov         edx,597C78
 0052F4D4    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F4D9    call        TStream.WriteBuffer
 0052F4DE    inc         dword ptr [ebp-4]
 0052F4E1    dec         dword ptr [ebp-0C]
>0052F4E4    jne         0052F4B2
 0052F4E6    pop         ebx
 0052F4E7    mov         esp,ebp
 0052F4E9    pop         ebp
 0052F4EA    ret
*}
end;

//0052F4EC
procedure TfmCreater.btCreateClick(Sender:TObject);
begin
{*
 0052F4EC    push        ebp
 0052F4ED    mov         ebp,esp
 0052F4EF    add         esp,0FFFFFFF4
 0052F4F2    mov         dword ptr [ebp-0C],edx
 0052F4F5    mov         dword ptr [ebp-4],eax
 0052F4F8    xor         edx,edx
 0052F4FA    mov         eax,dword ptr [ebp-4]
 0052F4FD    mov         eax,dword ptr [eax+358];TfmCreater.btSave:TButton
 0052F503    mov         ecx,dword ptr [eax]
 0052F505    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F508    xor         edx,edx
 0052F50A    mov         eax,dword ptr [ebp-4]
 0052F50D    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052F513    call        TTrackBar.SetPosition
 0052F518    xor         edx,edx
 0052F51A    mov         eax,dword ptr [ebp-4]
 0052F51D    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052F523    call        TTrackBar.SetPosition
 0052F528    xor         edx,edx
 0052F52A    mov         eax,dword ptr [ebp-4]
 0052F52D    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052F533    call        TTrackBar.SetPosition
 0052F538    xor         edx,edx
 0052F53A    mov         eax,dword ptr [ebp-4]
 0052F53D    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052F543    call        TTrackBar.SetPosition
 0052F548    xor         edx,edx
 0052F54A    mov         eax,dword ptr [ebp-4]
 0052F54D    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052F553    call        TTrackBar.SetPosition
 0052F558    xor         edx,edx
 0052F55A    mov         eax,dword ptr [ebp-4]
 0052F55D    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052F563    call        TTrackBar.SetPosition
 0052F568    mov         edx,0FFFF
 0052F56D    mov         eax,dword ptr [ebp-4]
 0052F570    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0052F576    call        TTrackBar.SetPosition
 0052F57B    xor         edx,edx
 0052F57D    mov         eax,dword ptr [ebp-4]
 0052F580    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052F586    call        TTrackBar.SetPosition
 0052F58B    xor         edx,edx
 0052F58D    mov         eax,dword ptr [ebp-4]
 0052F590    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052F596    call        TTrackBar.SetPosition
 0052F59B    mov         eax,dword ptr [ebp-4]
 0052F59E    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052F5A4    add         eax,80;TTrackBar.Hint:String
 0052F5A9    mov         edx,52F87C;'Head 0'
 0052F5AE    call        @LStrAsg
 0052F5B3    mov         eax,dword ptr [ebp-4]
 0052F5B6    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052F5BC    add         eax,80;TTrackBar.Hint:String
 0052F5C1    mov         edx,52F88C;'Head 1'
 0052F5C6    call        @LStrAsg
 0052F5CB    mov         eax,dword ptr [ebp-4]
 0052F5CE    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052F5D4    add         eax,80;TTrackBar.Hint:String
 0052F5D9    mov         edx,52F89C;'Head 2'
 0052F5DE    call        @LStrAsg
 0052F5E3    mov         eax,dword ptr [ebp-4]
 0052F5E6    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052F5EC    add         eax,80;TTrackBar.Hint:String
 0052F5F1    mov         edx,52F8AC;'Head 3'
 0052F5F6    call        @LStrAsg
 0052F5FB    mov         eax,dword ptr [ebp-4]
 0052F5FE    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052F604    add         eax,80;TTrackBar.Hint:String
 0052F609    mov         edx,52F8BC;'Head 4'
 0052F60E    call        @LStrAsg
 0052F613    mov         eax,dword ptr [ebp-4]
 0052F616    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052F61C    add         eax,80;TTrackBar.Hint:String
 0052F621    mov         edx,52F8CC;'Head 5'
 0052F626    call        @LStrAsg
 0052F62B    mov         eax,dword ptr [ebp-4]
 0052F62E    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0052F634    add         eax,80;TTrackBar.Hint:String
 0052F639    mov         edx,52F8DC;'Head 6'
 0052F63E    call        @LStrAsg
 0052F643    mov         eax,dword ptr [ebp-4]
 0052F646    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052F64C    add         eax,80;TTrackBar.Hint:String
 0052F651    mov         edx,52F8EC;'Head 7'
 0052F656    call        @LStrAsg
 0052F65B    xor         edx,edx
 0052F65D    mov         eax,dword ptr [ebp-4]
 0052F660    mov         eax,dword ptr [eax+318];TfmCreater.Edit1:TEdit
 0052F666    call        TPanel.SetCaption
 0052F66B    xor         edx,edx
 0052F66D    mov         eax,dword ptr [ebp-4]
 0052F670    mov         eax,dword ptr [eax+31C];TfmCreater.Edit2:TEdit
 0052F676    call        TPanel.SetCaption
 0052F67B    xor         edx,edx
 0052F67D    mov         eax,dword ptr [ebp-4]
 0052F680    mov         eax,dword ptr [eax+320];TfmCreater.Edit3:TEdit
 0052F686    call        TPanel.SetCaption
 0052F68B    xor         edx,edx
 0052F68D    mov         eax,dword ptr [ebp-4]
 0052F690    mov         eax,dword ptr [eax+324];TfmCreater.Edit4:TEdit
 0052F696    call        TPanel.SetCaption
 0052F69B    xor         edx,edx
 0052F69D    mov         eax,dword ptr [ebp-4]
 0052F6A0    mov         eax,dword ptr [eax+328];TfmCreater.Edit5:TEdit
 0052F6A6    call        TPanel.SetCaption
 0052F6AB    xor         edx,edx
 0052F6AD    mov         eax,dword ptr [ebp-4]
 0052F6B0    mov         eax,dword ptr [eax+32C];TfmCreater.Edit6:TEdit
 0052F6B6    call        TPanel.SetCaption
 0052F6BB    xor         edx,edx
 0052F6BD    mov         eax,dword ptr [ebp-4]
 0052F6C0    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 0052F6C6    call        TPanel.SetCaption
 0052F6CB    xor         edx,edx
 0052F6CD    mov         eax,dword ptr [ebp-4]
 0052F6D0    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 0052F6D6    call        TPanel.SetCaption
 0052F6DB    mov         eax,dword ptr [ebp-4]
 0052F6DE    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052F6E4    mov         edx,dword ptr [eax]
 0052F6E6    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F6EC    test        al,al
>0052F6EE    je          0052F73C
 0052F6F0    mov         dl,1
 0052F6F2    mov         eax,dword ptr [ebp-4]
 0052F6F5    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052F6FB    mov         ecx,dword ptr [eax]
 0052F6FD    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F700    mov         dl,1
 0052F702    mov         eax,dword ptr [ebp-4]
 0052F705    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052F70B    mov         ecx,dword ptr [eax]
 0052F70D    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F710    mov         dl,1
 0052F712    mov         eax,dword ptr [ebp-4]
 0052F715    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 0052F71B    mov         ecx,dword ptr [eax]
 0052F71D    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F720    mov         dl,1
 0052F722    mov         eax,dword ptr [ebp-4]
 0052F725    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 0052F72B    mov         ecx,dword ptr [eax]
 0052F72D    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F730    mov         dword ptr ds:[597E7C],8;gvar_00597E7C
>0052F73A    jmp         0052F786
 0052F73C    xor         edx,edx
 0052F73E    mov         eax,dword ptr [ebp-4]
 0052F741    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052F747    mov         ecx,dword ptr [eax]
 0052F749    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F74C    xor         edx,edx
 0052F74E    mov         eax,dword ptr [ebp-4]
 0052F751    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052F757    mov         ecx,dword ptr [eax]
 0052F759    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F75C    xor         edx,edx
 0052F75E    mov         eax,dword ptr [ebp-4]
 0052F761    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 0052F767    mov         ecx,dword ptr [eax]
 0052F769    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F76C    xor         edx,edx
 0052F76E    mov         eax,dword ptr [ebp-4]
 0052F771    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 0052F777    mov         ecx,dword ptr [eax]
 0052F779    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F77C    mov         dword ptr ds:[597E7C],6;gvar_00597E7C
 0052F786    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 0052F78C    mov         ax,47
 0052F790    call        005095B8
 0052F795    test        al,al
>0052F797    je          0052F870
 0052F79D    mov         eax,dword ptr [ebp-4]
 0052F7A0    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052F7A6    mov         edx,dword ptr [eax]
 0052F7A8    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F7AE    test        al,al
>0052F7B0    je          0052F7BE
 0052F7B2    mov         dword ptr ds:[597E7C],8;gvar_00597E7C
>0052F7BC    jmp         0052F7C8
 0052F7BE    mov         dword ptr ds:[597E7C],6;gvar_00597E7C
 0052F7C8    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 0052F7CE    mov         ax,[00597E7C];0x0 gvar_00597E7C
 0052F7D4    call        0052F21C
 0052F7D9    mov         eax,dword ptr [ebp-4]
 0052F7DC    call        TfmCreater.ReadValue
 0052F7E1    mov         dl,1
 0052F7E3    mov         eax,dword ptr [ebp-4]
 0052F7E6    mov         eax,dword ptr [eax+358];TfmCreater.btSave:TButton
 0052F7EC    mov         ecx,dword ptr [eax]
 0052F7EE    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F7F1    mov         dl,1
 0052F7F3    mov         eax,dword ptr [ebp-4]
 0052F7F6    mov         eax,dword ptr [eax+2F8];TfmCreater.GroupBox1:TGroupBox
 0052F7FC    mov         ecx,dword ptr [eax]
 0052F7FE    call        dword ptr [ecx+64];TImage.SetEnabled
 0052F801    mov         eax,dword ptr [ebp-4]
 0052F804    mov         eax,dword ptr [eax+360];TfmCreater.rgFrom:TRadioGroup
 0052F80A    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0052F810    dec         eax
>0052F811    je          0052F81E
 0052F813    dec         eax
>0052F814    je          0052F826
 0052F816    dec         eax
>0052F817    je          0052F82E
 0052F819    dec         eax
>0052F81A    je          0052F836
>0052F81C    jmp         0052F83E
 0052F81E    mov         word ptr [ebp-6],41
>0052F824    jmp         0052F844
 0052F826    mov         word ptr [ebp-6],42
>0052F82C    jmp         0052F844
 0052F82E    mov         word ptr [ebp-6],43
>0052F834    jmp         0052F844
 0052F836    mov         word ptr [ebp-6],46
>0052F83C    jmp         0052F844
 0052F83E    mov         word ptr [ebp-6],40
 0052F844    mov         edx,dword ptr ds:[597C48];0x0 gvar_00597C48:TMemoryStream
 0052F84A    mov         ax,word ptr [ebp-6]
 0052F84E    call        005095B8
 0052F853    test        al,al
>0052F855    je          0052F870
 0052F857    call        0052F0C4
 0052F85C    call        0052F308
 0052F861    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 0052F867    mov         ax,47
 0052F86B    call        0050980C
 0052F870    mov         esp,ebp
 0052F872    pop         ebp
 0052F873    ret
*}
end;

//0052F8F4
procedure TfmCreater.ReadValue;
begin
{*
 0052F8F4    push        ebp
 0052F8F5    mov         ebp,esp
 0052F8F7    add         esp,0FFFFFFA4
 0052F8FA    push        ebx
 0052F8FB    xor         edx,edx
 0052F8FD    mov         dword ptr [ebp-24],edx
 0052F900    mov         dword ptr [ebp-20],edx
 0052F903    mov         dword ptr [ebp-1C],edx
 0052F906    mov         dword ptr [ebp-18],edx
 0052F909    mov         dword ptr [ebp-14],edx
 0052F90C    mov         dword ptr [ebp-10],edx
 0052F90F    mov         dword ptr [ebp-0C],edx
 0052F912    mov         dword ptr [ebp-8],edx
 0052F915    mov         dword ptr [ebp-4],eax
 0052F918    xor         eax,eax
 0052F91A    push        ebp
 0052F91B    push        5300D4
 0052F920    push        dword ptr fs:[eax]
 0052F923    mov         dword ptr fs:[eax],esp
 0052F926    movzx       edx,word ptr ds:[597C70];0x0 gvar_00597C70
 0052F92D    xor         ecx,ecx
 0052F92F    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F934    mov         ebx,dword ptr [eax]
 0052F936    call        dword ptr [ebx+14]
 0052F939    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F93E    call        004CE548
 0052F943    movzx       edx,ax
 0052F946    mov         eax,dword ptr [ebp-4]
 0052F949    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052F94F    call        TTrackBar.SetPosition
 0052F954    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F959    call        004CE548
 0052F95E    movzx       edx,ax
 0052F961    mov         eax,dword ptr [ebp-4]
 0052F964    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052F96A    call        TTrackBar.SetPosition
 0052F96F    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F974    call        004CE548
 0052F979    movzx       edx,ax
 0052F97C    mov         eax,dword ptr [ebp-4]
 0052F97F    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052F985    call        TTrackBar.SetPosition
 0052F98A    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F98F    call        004CE548
 0052F994    movzx       edx,ax
 0052F997    mov         eax,dword ptr [ebp-4]
 0052F99A    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052F9A0    call        TTrackBar.SetPosition
 0052F9A5    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F9AA    call        004CE548
 0052F9AF    movzx       edx,ax
 0052F9B2    mov         eax,dword ptr [ebp-4]
 0052F9B5    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052F9BB    call        TTrackBar.SetPosition
 0052F9C0    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F9C5    call        004CE548
 0052F9CA    movzx       edx,ax
 0052F9CD    mov         eax,dword ptr [ebp-4]
 0052F9D0    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052F9D6    call        TTrackBar.SetPosition
 0052F9DB    mov         eax,dword ptr [ebp-4]
 0052F9DE    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052F9E4    mov         edx,dword ptr [eax]
 0052F9E6    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F9EC    test        al,al
>0052F9EE    je          0052FA26
 0052F9F0    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052F9F5    call        004CE548
 0052F9FA    movzx       edx,ax
 0052F9FD    mov         eax,dword ptr [ebp-4]
 0052FA00    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FA06    call        TTrackBar.SetPosition
 0052FA0B    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0052FA10    call        004CE548
 0052FA15    movzx       edx,ax
 0052FA18    mov         eax,dword ptr [ebp-4]
 0052FA1B    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FA21    call        TTrackBar.SetPosition
 0052FA26    lea         ecx,[ebp-8]
 0052FA29    mov         eax,dword ptr [ebp-4]
 0052FA2C    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FA32    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FA38    mov         edx,4
 0052FA3D    call        IntToHex
 0052FA42    mov         edx,dword ptr [ebp-8]
 0052FA45    mov         eax,dword ptr [ebp-4]
 0052FA48    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FA4E    add         eax,80;TTrackBar.Hint:String
 0052FA53    call        @LStrAsg
 0052FA58    lea         ecx,[ebp-0C]
 0052FA5B    mov         eax,dword ptr [ebp-4]
 0052FA5E    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FA64    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FA6A    mov         edx,4
 0052FA6F    call        IntToHex
 0052FA74    mov         edx,dword ptr [ebp-0C]
 0052FA77    mov         eax,dword ptr [ebp-4]
 0052FA7A    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FA80    add         eax,80;TTrackBar.Hint:String
 0052FA85    call        @LStrAsg
 0052FA8A    lea         ecx,[ebp-10]
 0052FA8D    mov         eax,dword ptr [ebp-4]
 0052FA90    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FA96    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FA9C    mov         edx,4
 0052FAA1    call        IntToHex
 0052FAA6    mov         edx,dword ptr [ebp-10]
 0052FAA9    mov         eax,dword ptr [ebp-4]
 0052FAAC    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FAB2    add         eax,80;TTrackBar.Hint:String
 0052FAB7    call        @LStrAsg
 0052FABC    lea         ecx,[ebp-14]
 0052FABF    mov         eax,dword ptr [ebp-4]
 0052FAC2    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FAC8    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FACE    mov         edx,4
 0052FAD3    call        IntToHex
 0052FAD8    mov         edx,dword ptr [ebp-14]
 0052FADB    mov         eax,dword ptr [ebp-4]
 0052FADE    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FAE4    add         eax,80;TTrackBar.Hint:String
 0052FAE9    call        @LStrAsg
 0052FAEE    lea         ecx,[ebp-18]
 0052FAF1    mov         eax,dword ptr [ebp-4]
 0052FAF4    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FAFA    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FB00    mov         edx,4
 0052FB05    call        IntToHex
 0052FB0A    mov         edx,dword ptr [ebp-18]
 0052FB0D    mov         eax,dword ptr [ebp-4]
 0052FB10    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FB16    add         eax,80;TTrackBar.Hint:String
 0052FB1B    call        @LStrAsg
 0052FB20    lea         ecx,[ebp-1C]
 0052FB23    mov         eax,dword ptr [ebp-4]
 0052FB26    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FB2C    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FB32    mov         edx,4
 0052FB37    call        IntToHex
 0052FB3C    mov         edx,dword ptr [ebp-1C]
 0052FB3F    mov         eax,dword ptr [ebp-4]
 0052FB42    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FB48    add         eax,80;TTrackBar.Hint:String
 0052FB4D    call        @LStrAsg
 0052FB52    mov         eax,dword ptr [ebp-4]
 0052FB55    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052FB5B    mov         edx,dword ptr [eax]
 0052FB5D    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052FB63    test        al,al
>0052FB65    je          0052FBCB
 0052FB67    lea         ecx,[ebp-20]
 0052FB6A    mov         eax,dword ptr [ebp-4]
 0052FB6D    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FB73    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FB79    mov         edx,4
 0052FB7E    call        IntToHex
 0052FB83    mov         edx,dword ptr [ebp-20]
 0052FB86    mov         eax,dword ptr [ebp-4]
 0052FB89    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FB8F    add         eax,80;TTrackBar.Hint:String
 0052FB94    call        @LStrAsg
 0052FB99    lea         ecx,[ebp-24]
 0052FB9C    mov         eax,dword ptr [ebp-4]
 0052FB9F    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FBA5    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FBAB    mov         edx,4
 0052FBB0    call        IntToHex
 0052FBB5    mov         edx,dword ptr [ebp-24]
 0052FBB8    mov         eax,dword ptr [ebp-4]
 0052FBBB    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FBC1    add         eax,80;TTrackBar.Hint:String
 0052FBC6    call        @LStrAsg
 0052FBCB    mov         eax,dword ptr [ebp-4]
 0052FBCE    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 0052FBD4    mov         edx,dword ptr [eax]
 0052FBD6    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052FBDC    test        al,al
>0052FBDE    je          0052FE99
 0052FBE4    mov         eax,dword ptr [ebp-4]
 0052FBE7    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FBED    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FBF3    mov         dword ptr [ebp-44],eax
 0052FBF6    mov         eax,dword ptr [ebp-4]
 0052FBF9    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FBFF    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC05    mov         dword ptr [ebp-40],eax
 0052FC08    mov         eax,dword ptr [ebp-4]
 0052FC0B    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FC11    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC17    mov         dword ptr [ebp-3C],eax
 0052FC1A    mov         eax,dword ptr [ebp-4]
 0052FC1D    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FC23    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC29    mov         dword ptr [ebp-38],eax
 0052FC2C    mov         eax,dword ptr [ebp-4]
 0052FC2F    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FC35    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC3B    mov         dword ptr [ebp-34],eax
 0052FC3E    mov         eax,dword ptr [ebp-4]
 0052FC41    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FC47    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC4D    mov         dword ptr [ebp-30],eax
 0052FC50    mov         eax,dword ptr [ebp-4]
 0052FC53    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FC59    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC5F    mov         dword ptr [ebp-2C],eax
 0052FC62    mov         eax,dword ptr [ebp-4]
 0052FC65    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FC6B    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC71    mov         dword ptr [ebp-28],eax
 0052FC74    lea         eax,[ebp-44]
 0052FC77    mov         edx,7
 0052FC7C    call        00437420
 0052FC81    mov         ebx,eax
 0052FC83    mov         eax,dword ptr [ebp-4]
 0052FC86    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FC8C    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FC92    mov         dword ptr [ebp-44],eax
 0052FC95    mov         eax,dword ptr [ebp-4]
 0052FC98    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FC9E    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCA4    mov         dword ptr [ebp-40],eax
 0052FCA7    mov         eax,dword ptr [ebp-4]
 0052FCAA    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FCB0    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCB6    mov         dword ptr [ebp-3C],eax
 0052FCB9    mov         eax,dword ptr [ebp-4]
 0052FCBC    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FCC2    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCC8    mov         dword ptr [ebp-38],eax
 0052FCCB    mov         eax,dword ptr [ebp-4]
 0052FCCE    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FCD4    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCDA    mov         dword ptr [ebp-34],eax
 0052FCDD    mov         eax,dword ptr [ebp-4]
 0052FCE0    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FCE6    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCEC    mov         dword ptr [ebp-30],eax
 0052FCEF    mov         eax,dword ptr [ebp-4]
 0052FCF2    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FCF8    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FCFE    mov         dword ptr [ebp-2C],eax
 0052FD01    mov         eax,dword ptr [ebp-4]
 0052FD04    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FD0A    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD10    mov         dword ptr [ebp-28],eax
 0052FD13    lea         eax,[ebp-44]
 0052FD16    mov         edx,7
 0052FD1B    call        00437420
 0052FD20    test        eax,eax
>0052FD22    jns         0052FD27
 0052FD24    add         eax,3
 0052FD27    sar         eax,2
 0052FD2A    add         ebx,eax
 0052FD2C    mov         edx,ebx
 0052FD2E    mov         eax,dword ptr [ebp-4]
 0052FD31    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0052FD37    call        TTrackBar.SetPosition
 0052FD3C    mov         eax,dword ptr [ebp-4]
 0052FD3F    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FD45    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD4B    mov         dword ptr [ebp-44],eax
 0052FD4E    mov         eax,dword ptr [ebp-4]
 0052FD51    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FD57    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD5D    mov         dword ptr [ebp-40],eax
 0052FD60    mov         eax,dword ptr [ebp-4]
 0052FD63    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FD69    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD6F    mov         dword ptr [ebp-3C],eax
 0052FD72    mov         eax,dword ptr [ebp-4]
 0052FD75    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FD7B    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD81    mov         dword ptr [ebp-38],eax
 0052FD84    mov         eax,dword ptr [ebp-4]
 0052FD87    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FD8D    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FD93    mov         dword ptr [ebp-34],eax
 0052FD96    mov         eax,dword ptr [ebp-4]
 0052FD99    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FD9F    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FDA5    mov         dword ptr [ebp-30],eax
 0052FDA8    mov         eax,dword ptr [ebp-4]
 0052FDAB    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FDB1    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FDB7    mov         dword ptr [ebp-2C],eax
 0052FDBA    mov         eax,dword ptr [ebp-4]
 0052FDBD    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FDC3    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FDC9    mov         dword ptr [ebp-28],eax
 0052FDCC    lea         eax,[ebp-44]
 0052FDCF    mov         edx,7
 0052FDD4    call        00437420
 0052FDD9    mov         ebx,eax
 0052FDDB    mov         eax,dword ptr [ebp-4]
 0052FDDE    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FDE4    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FDEA    mov         dword ptr [ebp-44],eax
 0052FDED    mov         eax,dword ptr [ebp-4]
 0052FDF0    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FDF6    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FDFC    mov         dword ptr [ebp-40],eax
 0052FDFF    mov         eax,dword ptr [ebp-4]
 0052FE02    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FE08    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE0E    mov         dword ptr [ebp-3C],eax
 0052FE11    mov         eax,dword ptr [ebp-4]
 0052FE14    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FE1A    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE20    mov         dword ptr [ebp-38],eax
 0052FE23    mov         eax,dword ptr [ebp-4]
 0052FE26    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FE2C    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE32    mov         dword ptr [ebp-34],eax
 0052FE35    mov         eax,dword ptr [ebp-4]
 0052FE38    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FE3E    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE44    mov         dword ptr [ebp-30],eax
 0052FE47    mov         eax,dword ptr [ebp-4]
 0052FE4A    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 0052FE50    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE56    mov         dword ptr [ebp-2C],eax
 0052FE59    mov         eax,dword ptr [ebp-4]
 0052FE5C    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 0052FE62    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FE68    mov         dword ptr [ebp-28],eax
 0052FE6B    lea         eax,[ebp-44]
 0052FE6E    mov         edx,7
 0052FE73    call        00437420
 0052FE78    test        eax,eax
>0052FE7A    jns         0052FE7F
 0052FE7C    add         eax,7
 0052FE7F    sar         eax,3
 0052FE82    add         ebx,eax
 0052FE84    mov         edx,ebx
 0052FE86    mov         eax,dword ptr [ebp-4]
 0052FE89    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0052FE8F    call        TTrackBar.SetMin
>0052FE94    jmp         005300B9
 0052FE99    mov         eax,dword ptr [ebp-4]
 0052FE9C    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FEA2    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FEA8    mov         dword ptr [ebp-5C],eax
 0052FEAB    mov         eax,dword ptr [ebp-4]
 0052FEAE    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FEB4    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FEBA    mov         dword ptr [ebp-58],eax
 0052FEBD    mov         eax,dword ptr [ebp-4]
 0052FEC0    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FEC6    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FECC    mov         dword ptr [ebp-54],eax
 0052FECF    mov         eax,dword ptr [ebp-4]
 0052FED2    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FED8    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FEDE    mov         dword ptr [ebp-50],eax
 0052FEE1    mov         eax,dword ptr [ebp-4]
 0052FEE4    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FEEA    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FEF0    mov         dword ptr [ebp-4C],eax
 0052FEF3    mov         eax,dword ptr [ebp-4]
 0052FEF6    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FEFC    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF02    mov         dword ptr [ebp-48],eax
 0052FF05    lea         eax,[ebp-5C]
 0052FF08    mov         edx,5
 0052FF0D    call        00437420
 0052FF12    mov         ebx,eax
 0052FF14    mov         eax,dword ptr [ebp-4]
 0052FF17    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FF1D    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF23    mov         dword ptr [ebp-5C],eax
 0052FF26    mov         eax,dword ptr [ebp-4]
 0052FF29    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FF2F    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF35    mov         dword ptr [ebp-58],eax
 0052FF38    mov         eax,dword ptr [ebp-4]
 0052FF3B    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FF41    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF47    mov         dword ptr [ebp-54],eax
 0052FF4A    mov         eax,dword ptr [ebp-4]
 0052FF4D    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FF53    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF59    mov         dword ptr [ebp-50],eax
 0052FF5C    mov         eax,dword ptr [ebp-4]
 0052FF5F    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FF65    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF6B    mov         dword ptr [ebp-4C],eax
 0052FF6E    mov         eax,dword ptr [ebp-4]
 0052FF71    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0052FF77    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FF7D    mov         dword ptr [ebp-48],eax
 0052FF80    lea         eax,[ebp-5C]
 0052FF83    mov         edx,5
 0052FF88    call        00437420
 0052FF8D    test        eax,eax
>0052FF8F    jns         0052FF94
 0052FF91    add         eax,3
 0052FF94    sar         eax,2
 0052FF97    add         ebx,eax
 0052FF99    mov         edx,ebx
 0052FF9B    mov         eax,dword ptr [ebp-4]
 0052FF9E    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0052FFA4    call        TTrackBar.SetPosition
 0052FFA9    mov         eax,dword ptr [ebp-4]
 0052FFAC    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0052FFB2    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FFB8    mov         dword ptr [ebp-5C],eax
 0052FFBB    mov         eax,dword ptr [ebp-4]
 0052FFBE    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0052FFC4    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FFCA    mov         dword ptr [ebp-58],eax
 0052FFCD    mov         eax,dword ptr [ebp-4]
 0052FFD0    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0052FFD6    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FFDC    mov         dword ptr [ebp-54],eax
 0052FFDF    mov         eax,dword ptr [ebp-4]
 0052FFE2    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0052FFE8    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0052FFEE    mov         dword ptr [ebp-50],eax
 0052FFF1    mov         eax,dword ptr [ebp-4]
 0052FFF4    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0052FFFA    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530000    mov         dword ptr [ebp-4C],eax
 00530003    mov         eax,dword ptr [ebp-4]
 00530006    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0053000C    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530012    mov         dword ptr [ebp-48],eax
 00530015    lea         eax,[ebp-5C]
 00530018    mov         edx,5
 0053001D    call        00437420
 00530022    mov         ebx,eax
 00530024    mov         eax,dword ptr [ebp-4]
 00530027    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 0053002D    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530033    mov         dword ptr [ebp-5C],eax
 00530036    mov         eax,dword ptr [ebp-4]
 00530039    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0053003F    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530045    mov         dword ptr [ebp-58],eax
 00530048    mov         eax,dword ptr [ebp-4]
 0053004B    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 00530051    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530057    mov         dword ptr [ebp-54],eax
 0053005A    mov         eax,dword ptr [ebp-4]
 0053005D    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 00530063    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 00530069    mov         dword ptr [ebp-50],eax
 0053006C    mov         eax,dword ptr [ebp-4]
 0053006F    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 00530075    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053007B    mov         dword ptr [ebp-4C],eax
 0053007E    mov         eax,dword ptr [ebp-4]
 00530081    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 00530087    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053008D    mov         dword ptr [ebp-48],eax
 00530090    lea         eax,[ebp-5C]
 00530093    mov         edx,5
 00530098    call        00437420
 0053009D    test        eax,eax
>0053009F    jns         005300A4
 005300A1    add         eax,7
 005300A4    sar         eax,3
 005300A7    add         ebx,eax
 005300A9    mov         edx,ebx
 005300AB    mov         eax,dword ptr [ebp-4]
 005300AE    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 005300B4    call        TTrackBar.SetMin
 005300B9    xor         eax,eax
 005300BB    pop         edx
 005300BC    pop         ecx
 005300BD    pop         ecx
 005300BE    mov         dword ptr fs:[eax],edx
 005300C1    push        5300DB
 005300C6    lea         eax,[ebp-24]
 005300C9    mov         edx,8
 005300CE    call        @LStrArrayClr
 005300D3    ret
>005300D4    jmp         @HandleFinally
>005300D9    jmp         005300C6
 005300DB    pop         ebx
 005300DC    mov         esp,ebp
 005300DE    pop         ebp
 005300DF    ret
*}
end;

//005300E0
procedure TfmCreater.WriteValue;
begin
{*
 005300E0    push        ebp
 005300E1    mov         ebp,esp
 005300E3    push        ecx
 005300E4    push        ebx
 005300E5    mov         dword ptr [ebp-4],eax
 005300E8    movzx       edx,word ptr ds:[597C70];0x0 gvar_00597C70
 005300EF    xor         ecx,ecx
 005300F1    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 005300F6    mov         ebx,dword ptr [eax]
 005300F8    call        dword ptr [ebx+14]
 005300FB    mov         eax,dword ptr [ebp-4]
 005300FE    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 00530104    lea         edx,[eax+228];TTrackBar.Position:Integer
 0053010A    mov         ecx,2
 0053010F    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 00530114    call        TStream.WriteBuffer
 00530119    mov         eax,dword ptr [ebp-4]
 0053011C    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 00530122    lea         edx,[eax+228];TTrackBar.Position:Integer
 00530128    mov         ecx,2
 0053012D    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 00530132    call        TStream.WriteBuffer
 00530137    mov         eax,dword ptr [ebp-4]
 0053013A    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 00530140    lea         edx,[eax+228];TTrackBar.Position:Integer
 00530146    mov         ecx,2
 0053014B    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 00530150    call        TStream.WriteBuffer
 00530155    mov         eax,dword ptr [ebp-4]
 00530158    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 0053015E    lea         edx,[eax+228];TTrackBar.Position:Integer
 00530164    mov         ecx,2
 00530169    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0053016E    call        TStream.WriteBuffer
 00530173    mov         eax,dword ptr [ebp-4]
 00530176    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 0053017C    lea         edx,[eax+228];TTrackBar.Position:Integer
 00530182    mov         ecx,2
 00530187    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 0053018C    call        TStream.WriteBuffer
 00530191    mov         eax,dword ptr [ebp-4]
 00530194    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 0053019A    lea         edx,[eax+228];TTrackBar.Position:Integer
 005301A0    mov         ecx,2
 005301A5    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 005301AA    call        TStream.WriteBuffer
 005301AF    mov         eax,dword ptr [ebp-4]
 005301B2    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 005301B8    mov         edx,dword ptr [eax]
 005301BA    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005301C0    test        al,al
>005301C2    je          00530200
 005301C4    mov         eax,dword ptr [ebp-4]
 005301C7    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 005301CD    lea         edx,[eax+228];TTrackBar.Position:Integer
 005301D3    mov         ecx,2
 005301D8    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 005301DD    call        TStream.WriteBuffer
 005301E2    mov         eax,dword ptr [ebp-4]
 005301E5    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 005301EB    lea         edx,[eax+228];TTrackBar.Position:Integer
 005301F1    mov         ecx,2
 005301F6    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 005301FB    call        TStream.WriteBuffer
 00530200    pop         ebx
 00530201    pop         ecx
 00530202    pop         ebp
 00530203    ret
*}
end;

//00530204
procedure TfmCreater.btLoadClick(Sender:TObject);
begin
{*
 00530204    push        ebp
 00530205    mov         ebp,esp
 00530207    add         esp,0FFFFFFF8
 0053020A    mov         dword ptr [ebp-8],edx
 0053020D    mov         dword ptr [ebp-4],eax
 00530210    mov         eax,dword ptr [ebp-4]
 00530213    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 00530219    mov         edx,dword ptr [eax]
 0053021B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00530221    test        al,al
>00530223    je          00530267
 00530225    mov         dl,1
 00530227    mov         eax,dword ptr [ebp-4]
 0053022A    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530230    mov         ecx,dword ptr [eax]
 00530232    call        dword ptr [ecx+64];TImage.SetEnabled
 00530235    mov         dl,1
 00530237    mov         eax,dword ptr [ebp-4]
 0053023A    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530240    mov         ecx,dword ptr [eax]
 00530242    call        dword ptr [ecx+64];TImage.SetEnabled
 00530245    mov         dl,1
 00530247    mov         eax,dword ptr [ebp-4]
 0053024A    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530250    mov         ecx,dword ptr [eax]
 00530252    call        dword ptr [ecx+64];TImage.SetEnabled
 00530255    mov         dl,1
 00530257    mov         eax,dword ptr [ebp-4]
 0053025A    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 00530260    mov         ecx,dword ptr [eax]
 00530262    call        dword ptr [ecx+64];TImage.SetEnabled
>00530265    jmp         005302A7
 00530267    xor         edx,edx
 00530269    mov         eax,dword ptr [ebp-4]
 0053026C    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530272    mov         ecx,dword ptr [eax]
 00530274    call        dword ptr [ecx+64];TImage.SetEnabled
 00530277    xor         edx,edx
 00530279    mov         eax,dword ptr [ebp-4]
 0053027C    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530282    mov         ecx,dword ptr [eax]
 00530284    call        dword ptr [ecx+64];TImage.SetEnabled
 00530287    xor         edx,edx
 00530289    mov         eax,dword ptr [ebp-4]
 0053028C    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530292    mov         ecx,dword ptr [eax]
 00530294    call        dword ptr [ecx+64];TImage.SetEnabled
 00530297    xor         edx,edx
 00530299    mov         eax,dword ptr [ebp-4]
 0053029C    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 005302A2    mov         ecx,dword ptr [eax]
 005302A4    call        dword ptr [ecx+64];TImage.SetEnabled
 005302A7    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 005302AD    mov         ax,47
 005302B1    call        005095B8
 005302B6    test        al,al
>005302B8    je          0053030E
 005302BA    mov         eax,dword ptr [ebp-4]
 005302BD    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 005302C3    mov         edx,dword ptr [eax]
 005302C5    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005302CB    test        al,al
>005302CD    je          005302DB
 005302CF    mov         dword ptr ds:[597E7C],8;gvar_00597E7C
>005302D9    jmp         005302E5
 005302DB    mov         dword ptr ds:[597E7C],6;gvar_00597E7C
 005302E5    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 005302EB    mov         ax,[00597E7C];0x0 gvar_00597E7C
 005302F1    call        0052F21C
 005302F6    mov         eax,dword ptr [ebp-4]
 005302F9    call        TfmCreater.ReadValue
 005302FE    mov         dl,1
 00530300    mov         eax,dword ptr [ebp-4]
 00530303    mov         eax,dword ptr [eax+358];TfmCreater.btSave:TButton
 00530309    mov         ecx,dword ptr [eax]
 0053030B    call        dword ptr [ecx+64];TImage.SetEnabled
 0053030E    pop         ecx
 0053030F    pop         ecx
 00530310    pop         ebp
 00530311    ret
*}
end;

//00530314
procedure TfmCreater.btSaveClick(Sender:TObject);
begin
{*
 00530314    push        ebp
 00530315    mov         ebp,esp
 00530317    add         esp,0FFFFFFF8
 0053031A    mov         dword ptr [ebp-8],edx
 0053031D    mov         dword ptr [ebp-4],eax
 00530320    mov         eax,dword ptr [ebp-4]
 00530323    call        TfmCreater.WriteValue
 00530328    mov         edx,dword ptr ds:[597C44];0x0 gvar_00597C44:TMemoryStream
 0053032E    mov         ax,47
 00530332    call        0050980C
 00530337    pop         ecx
 00530338    pop         ecx
 00530339    pop         ebp
 0053033A    ret
*}
end;

//0053033C
{*procedure TfmCreater.TrackBar7Change(?:?);
begin
 0053033C    push        ebp
 0053033D    mov         ebp,esp
 0053033F    add         esp,0FFFFFFF8
 00530342    mov         dword ptr [ebp-8],edx
 00530345    mov         dword ptr [ebp-4],eax
 00530348    mov         eax,dword ptr [ebp-4]
 0053034B    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 00530351    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 00530357    mov         eax,dword ptr [ebp-4]
 0053035A    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 00530360    call        TTrackBar.SetMax
 00530365    mov         eax,dword ptr [ebp-4]
 00530368    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0053036E    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 00530374    mov         eax,dword ptr [ebp-4]
 00530377    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 0053037D    call        TTrackBar.SetMax
 00530382    mov         eax,dword ptr [ebp-4]
 00530385    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 0053038B    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 00530391    mov         eax,dword ptr [ebp-4]
 00530394    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0053039A    call        TTrackBar.SetMax
 0053039F    mov         eax,dword ptr [ebp-4]
 005303A2    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 005303A8    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 005303AE    mov         eax,dword ptr [ebp-4]
 005303B1    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 005303B7    call        TTrackBar.SetMax
 005303BC    mov         eax,dword ptr [ebp-4]
 005303BF    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 005303C5    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 005303CB    mov         eax,dword ptr [ebp-4]
 005303CE    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 005303D4    call        TTrackBar.SetMax
 005303D9    mov         eax,dword ptr [ebp-4]
 005303DC    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 005303E2    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 005303E8    mov         eax,dword ptr [ebp-4]
 005303EB    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 005303F1    call        TTrackBar.SetMax
 005303F6    mov         eax,dword ptr [ebp-4]
 005303F9    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 005303FF    mov         edx,dword ptr [eax]
 00530401    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00530407    test        al,al
>00530409    je          00530445
 0053040B    mov         eax,dword ptr [ebp-4]
 0053040E    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 00530414    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 0053041A    mov         eax,dword ptr [ebp-4]
 0053041D    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530423    call        TTrackBar.SetMax
 00530428    mov         eax,dword ptr [ebp-4]
 0053042B    mov         eax,dword ptr [eax+314];TfmCreater.TrackBar7:TTrackBar
 00530431    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 00530437    mov         eax,dword ptr [ebp-4]
 0053043A    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530440    call        TTrackBar.SetMax
 00530445    pop         ecx
 00530446    pop         ecx
 00530447    pop         ebp
 00530448    ret
end;*}

//0053044C
{*procedure TfmCreater.TrackBar1Change(?:?);
begin
 0053044C    push        ebp
 0053044D    mov         ebp,esp
 0053044F    add         esp,0FFFFFFF4
 00530452    xor         ecx,ecx
 00530454    mov         dword ptr [ebp-0C],ecx
 00530457    mov         dword ptr [ebp-8],edx
 0053045A    mov         dword ptr [ebp-4],eax
 0053045D    xor         eax,eax
 0053045F    push        ebp
 00530460    push        5304AE
 00530465    push        dword ptr fs:[eax]
 00530468    mov         dword ptr fs:[eax],esp
 0053046B    lea         ecx,[ebp-0C]
 0053046E    mov         eax,dword ptr [ebp-4]
 00530471    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 00530477    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053047D    mov         edx,4
 00530482    call        IntToHex
 00530487    mov         edx,dword ptr [ebp-0C]
 0053048A    mov         eax,dword ptr [ebp-4]
 0053048D    mov         eax,dword ptr [eax+318];TfmCreater.Edit1:TEdit
 00530493    call        TPanel.SetCaption
 00530498    xor         eax,eax
 0053049A    pop         edx
 0053049B    pop         ecx
 0053049C    pop         ecx
 0053049D    mov         dword ptr fs:[eax],edx
 005304A0    push        5304B5
 005304A5    lea         eax,[ebp-0C]
 005304A8    call        @LStrClr
 005304AD    ret
>005304AE    jmp         @HandleFinally
>005304B3    jmp         005304A5
 005304B5    mov         esp,ebp
 005304B7    pop         ebp
 005304B8    ret
end;*}

//005304BC
{*procedure TfmCreater.TrackBar2Change(?:?);
begin
 005304BC    push        ebp
 005304BD    mov         ebp,esp
 005304BF    add         esp,0FFFFFFF4
 005304C2    xor         ecx,ecx
 005304C4    mov         dword ptr [ebp-0C],ecx
 005304C7    mov         dword ptr [ebp-8],edx
 005304CA    mov         dword ptr [ebp-4],eax
 005304CD    xor         eax,eax
 005304CF    push        ebp
 005304D0    push        53051E
 005304D5    push        dword ptr fs:[eax]
 005304D8    mov         dword ptr fs:[eax],esp
 005304DB    lea         ecx,[ebp-0C]
 005304DE    mov         eax,dword ptr [ebp-4]
 005304E1    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 005304E7    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 005304ED    mov         edx,4
 005304F2    call        IntToHex
 005304F7    mov         edx,dword ptr [ebp-0C]
 005304FA    mov         eax,dword ptr [ebp-4]
 005304FD    mov         eax,dword ptr [eax+31C];TfmCreater.Edit2:TEdit
 00530503    call        TPanel.SetCaption
 00530508    xor         eax,eax
 0053050A    pop         edx
 0053050B    pop         ecx
 0053050C    pop         ecx
 0053050D    mov         dword ptr fs:[eax],edx
 00530510    push        530525
 00530515    lea         eax,[ebp-0C]
 00530518    call        @LStrClr
 0053051D    ret
>0053051E    jmp         @HandleFinally
>00530523    jmp         00530515
 00530525    mov         esp,ebp
 00530527    pop         ebp
 00530528    ret
end;*}

//0053052C
{*procedure TfmCreater.TrackBar3Change(?:?);
begin
 0053052C    push        ebp
 0053052D    mov         ebp,esp
 0053052F    add         esp,0FFFFFFF4
 00530532    xor         ecx,ecx
 00530534    mov         dword ptr [ebp-0C],ecx
 00530537    mov         dword ptr [ebp-8],edx
 0053053A    mov         dword ptr [ebp-4],eax
 0053053D    xor         eax,eax
 0053053F    push        ebp
 00530540    push        53058E
 00530545    push        dword ptr fs:[eax]
 00530548    mov         dword ptr fs:[eax],esp
 0053054B    lea         ecx,[ebp-0C]
 0053054E    mov         eax,dword ptr [ebp-4]
 00530551    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 00530557    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053055D    mov         edx,4
 00530562    call        IntToHex
 00530567    mov         edx,dword ptr [ebp-0C]
 0053056A    mov         eax,dword ptr [ebp-4]
 0053056D    mov         eax,dword ptr [eax+320];TfmCreater.Edit3:TEdit
 00530573    call        TPanel.SetCaption
 00530578    xor         eax,eax
 0053057A    pop         edx
 0053057B    pop         ecx
 0053057C    pop         ecx
 0053057D    mov         dword ptr fs:[eax],edx
 00530580    push        530595
 00530585    lea         eax,[ebp-0C]
 00530588    call        @LStrClr
 0053058D    ret
>0053058E    jmp         @HandleFinally
>00530593    jmp         00530585
 00530595    mov         esp,ebp
 00530597    pop         ebp
 00530598    ret
end;*}

//0053059C
{*procedure TfmCreater.TrackBar4Change(?:?);
begin
 0053059C    push        ebp
 0053059D    mov         ebp,esp
 0053059F    add         esp,0FFFFFFF4
 005305A2    xor         ecx,ecx
 005305A4    mov         dword ptr [ebp-0C],ecx
 005305A7    mov         dword ptr [ebp-8],edx
 005305AA    mov         dword ptr [ebp-4],eax
 005305AD    xor         eax,eax
 005305AF    push        ebp
 005305B0    push        5305FE
 005305B5    push        dword ptr fs:[eax]
 005305B8    mov         dword ptr fs:[eax],esp
 005305BB    lea         ecx,[ebp-0C]
 005305BE    mov         eax,dword ptr [ebp-4]
 005305C1    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 005305C7    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 005305CD    mov         edx,4
 005305D2    call        IntToHex
 005305D7    mov         edx,dword ptr [ebp-0C]
 005305DA    mov         eax,dword ptr [ebp-4]
 005305DD    mov         eax,dword ptr [eax+324];TfmCreater.Edit4:TEdit
 005305E3    call        TPanel.SetCaption
 005305E8    xor         eax,eax
 005305EA    pop         edx
 005305EB    pop         ecx
 005305EC    pop         ecx
 005305ED    mov         dword ptr fs:[eax],edx
 005305F0    push        530605
 005305F5    lea         eax,[ebp-0C]
 005305F8    call        @LStrClr
 005305FD    ret
>005305FE    jmp         @HandleFinally
>00530603    jmp         005305F5
 00530605    mov         esp,ebp
 00530607    pop         ebp
 00530608    ret
end;*}

//0053060C
{*procedure TfmCreater.TrackBar5Change(?:?);
begin
 0053060C    push        ebp
 0053060D    mov         ebp,esp
 0053060F    add         esp,0FFFFFFF4
 00530612    xor         ecx,ecx
 00530614    mov         dword ptr [ebp-0C],ecx
 00530617    mov         dword ptr [ebp-8],edx
 0053061A    mov         dword ptr [ebp-4],eax
 0053061D    xor         eax,eax
 0053061F    push        ebp
 00530620    push        53066E
 00530625    push        dword ptr fs:[eax]
 00530628    mov         dword ptr fs:[eax],esp
 0053062B    lea         ecx,[ebp-0C]
 0053062E    mov         eax,dword ptr [ebp-4]
 00530631    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 00530637    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053063D    mov         edx,4
 00530642    call        IntToHex
 00530647    mov         edx,dword ptr [ebp-0C]
 0053064A    mov         eax,dword ptr [ebp-4]
 0053064D    mov         eax,dword ptr [eax+328];TfmCreater.Edit5:TEdit
 00530653    call        TPanel.SetCaption
 00530658    xor         eax,eax
 0053065A    pop         edx
 0053065B    pop         ecx
 0053065C    pop         ecx
 0053065D    mov         dword ptr fs:[eax],edx
 00530660    push        530675
 00530665    lea         eax,[ebp-0C]
 00530668    call        @LStrClr
 0053066D    ret
>0053066E    jmp         @HandleFinally
>00530673    jmp         00530665
 00530675    mov         esp,ebp
 00530677    pop         ebp
 00530678    ret
end;*}

//0053067C
{*procedure TfmCreater.TrackBar6Change(?:?);
begin
 0053067C    push        ebp
 0053067D    mov         ebp,esp
 0053067F    add         esp,0FFFFFFF4
 00530682    xor         ecx,ecx
 00530684    mov         dword ptr [ebp-0C],ecx
 00530687    mov         dword ptr [ebp-8],edx
 0053068A    mov         dword ptr [ebp-4],eax
 0053068D    xor         eax,eax
 0053068F    push        ebp
 00530690    push        5306DE
 00530695    push        dword ptr fs:[eax]
 00530698    mov         dword ptr fs:[eax],esp
 0053069B    lea         ecx,[ebp-0C]
 0053069E    mov         eax,dword ptr [ebp-4]
 005306A1    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 005306A7    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 005306AD    mov         edx,4
 005306B2    call        IntToHex
 005306B7    mov         edx,dword ptr [ebp-0C]
 005306BA    mov         eax,dword ptr [ebp-4]
 005306BD    mov         eax,dword ptr [eax+32C];TfmCreater.Edit6:TEdit
 005306C3    call        TPanel.SetCaption
 005306C8    xor         eax,eax
 005306CA    pop         edx
 005306CB    pop         ecx
 005306CC    pop         ecx
 005306CD    mov         dword ptr fs:[eax],edx
 005306D0    push        5306E5
 005306D5    lea         eax,[ebp-0C]
 005306D8    call        @LStrClr
 005306DD    ret
>005306DE    jmp         @HandleFinally
>005306E3    jmp         005306D5
 005306E5    mov         esp,ebp
 005306E7    pop         ebp
 005306E8    ret
end;*}

//005306EC
{*procedure TfmCreater.TrackBar8Change(?:?);
begin
 005306EC    push        ebp
 005306ED    mov         ebp,esp
 005306EF    add         esp,0FFFFFFF4
 005306F2    xor         ecx,ecx
 005306F4    mov         dword ptr [ebp-0C],ecx
 005306F7    mov         dword ptr [ebp-8],edx
 005306FA    mov         dword ptr [ebp-4],eax
 005306FD    xor         eax,eax
 005306FF    push        ebp
 00530700    push        53074E
 00530705    push        dword ptr fs:[eax]
 00530708    mov         dword ptr fs:[eax],esp
 0053070B    lea         ecx,[ebp-0C]
 0053070E    mov         eax,dword ptr [ebp-4]
 00530711    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530717    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053071D    mov         edx,4
 00530722    call        IntToHex
 00530727    mov         edx,dword ptr [ebp-0C]
 0053072A    mov         eax,dword ptr [ebp-4]
 0053072D    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530733    call        TPanel.SetCaption
 00530738    xor         eax,eax
 0053073A    pop         edx
 0053073B    pop         ecx
 0053073C    pop         ecx
 0053073D    mov         dword ptr fs:[eax],edx
 00530740    push        530755
 00530745    lea         eax,[ebp-0C]
 00530748    call        @LStrClr
 0053074D    ret
>0053074E    jmp         @HandleFinally
>00530753    jmp         00530745
 00530755    mov         esp,ebp
 00530757    pop         ebp
 00530758    ret
end;*}

//0053075C
{*procedure TfmCreater.TrackBar9Change(?:?);
begin
 0053075C    push        ebp
 0053075D    mov         ebp,esp
 0053075F    add         esp,0FFFFFFF4
 00530762    xor         ecx,ecx
 00530764    mov         dword ptr [ebp-0C],ecx
 00530767    mov         dword ptr [ebp-8],edx
 0053076A    mov         dword ptr [ebp-4],eax
 0053076D    xor         eax,eax
 0053076F    push        ebp
 00530770    push        5307BE
 00530775    push        dword ptr fs:[eax]
 00530778    mov         dword ptr fs:[eax],esp
 0053077B    lea         ecx,[ebp-0C]
 0053077E    mov         eax,dword ptr [ebp-4]
 00530781    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530787    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 0053078D    mov         edx,4
 00530792    call        IntToHex
 00530797    mov         edx,dword ptr [ebp-0C]
 0053079A    mov         eax,dword ptr [ebp-4]
 0053079D    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 005307A3    call        TPanel.SetCaption
 005307A8    xor         eax,eax
 005307AA    pop         edx
 005307AB    pop         ecx
 005307AC    pop         ecx
 005307AD    mov         dword ptr fs:[eax],edx
 005307B0    push        5307C5
 005307B5    lea         eax,[ebp-0C]
 005307B8    call        @LStrClr
 005307BD    ret
>005307BE    jmp         @HandleFinally
>005307C3    jmp         005307B5
 005307C5    mov         esp,ebp
 005307C7    pop         ebp
 005307C8    ret
end;*}

//005307CC
{*procedure TfmCreater.Edit1Change(?:?);
begin
 005307CC    push        ebp
 005307CD    mov         ebp,esp
 005307CF    xor         ecx,ecx
 005307D1    push        ecx
 005307D2    push        ecx
 005307D3    push        ecx
 005307D4    push        ecx
 005307D5    push        ecx
 005307D6    mov         dword ptr [ebp-8],edx
 005307D9    mov         dword ptr [ebp-4],eax
 005307DC    xor         eax,eax
 005307DE    push        ebp
 005307DF    push        530860
 005307E4    push        dword ptr fs:[eax]
 005307E7    mov         dword ptr fs:[eax],esp
 005307EA    lea         edx,[ebp-0C]
 005307ED    mov         eax,dword ptr [ebp-4]
 005307F0    mov         eax,dword ptr [eax+318];TfmCreater.Edit1:TEdit
 005307F6    call        TPanel.GetCaption
 005307FB    cmp         dword ptr [ebp-0C],0
>005307FF    je          0053083A
 00530801    lea         edx,[ebp-14]
 00530804    mov         eax,dword ptr [ebp-4]
 00530807    mov         eax,dword ptr [eax+318];TfmCreater.Edit1:TEdit
 0053080D    call        TPanel.GetCaption
 00530812    mov         ecx,dword ptr [ebp-14]
 00530815    lea         eax,[ebp-10]
 00530818    mov         edx,530874;'0x'
 0053081D    call        @LStrCat3
 00530822    mov         eax,dword ptr [ebp-10]
 00530825    call        0040C468
 0053082A    mov         edx,eax
 0053082C    mov         eax,dword ptr [ebp-4]
 0053082F    mov         eax,dword ptr [eax+304];TfmCreater.TrackBar1:TTrackBar
 00530835    call        TTrackBar.SetPosition
 0053083A    xor         eax,eax
 0053083C    pop         edx
 0053083D    pop         ecx
 0053083E    pop         ecx
 0053083F    mov         dword ptr fs:[eax],edx
 00530842    push        530867
 00530847    lea         eax,[ebp-14]
 0053084A    call        @LStrClr
 0053084F    lea         eax,[ebp-10]
 00530852    call        @LStrClr
 00530857    lea         eax,[ebp-0C]
 0053085A    call        @LStrClr
 0053085F    ret
>00530860    jmp         @HandleFinally
>00530865    jmp         00530847
 00530867    mov         esp,ebp
 00530869    pop         ebp
 0053086A    ret
end;*}

//00530878
{*procedure TfmCreater.Edit2Change(?:?);
begin
 00530878    push        ebp
 00530879    mov         ebp,esp
 0053087B    xor         ecx,ecx
 0053087D    push        ecx
 0053087E    push        ecx
 0053087F    push        ecx
 00530880    push        ecx
 00530881    push        ecx
 00530882    mov         dword ptr [ebp-8],edx
 00530885    mov         dword ptr [ebp-4],eax
 00530888    xor         eax,eax
 0053088A    push        ebp
 0053088B    push        53090C
 00530890    push        dword ptr fs:[eax]
 00530893    mov         dword ptr fs:[eax],esp
 00530896    lea         edx,[ebp-0C]
 00530899    mov         eax,dword ptr [ebp-4]
 0053089C    mov         eax,dword ptr [eax+31C];TfmCreater.Edit2:TEdit
 005308A2    call        TPanel.GetCaption
 005308A7    cmp         dword ptr [ebp-0C],0
>005308AB    je          005308E6
 005308AD    lea         edx,[ebp-14]
 005308B0    mov         eax,dword ptr [ebp-4]
 005308B3    mov         eax,dword ptr [eax+31C];TfmCreater.Edit2:TEdit
 005308B9    call        TPanel.GetCaption
 005308BE    mov         ecx,dword ptr [ebp-14]
 005308C1    lea         eax,[ebp-10]
 005308C4    mov         edx,530920;'0x'
 005308C9    call        @LStrCat3
 005308CE    mov         eax,dword ptr [ebp-10]
 005308D1    call        0040C468
 005308D6    mov         edx,eax
 005308D8    mov         eax,dword ptr [ebp-4]
 005308DB    mov         eax,dword ptr [eax+2FC];TfmCreater.TrackBar2:TTrackBar
 005308E1    call        TTrackBar.SetPosition
 005308E6    xor         eax,eax
 005308E8    pop         edx
 005308E9    pop         ecx
 005308EA    pop         ecx
 005308EB    mov         dword ptr fs:[eax],edx
 005308EE    push        530913
 005308F3    lea         eax,[ebp-14]
 005308F6    call        @LStrClr
 005308FB    lea         eax,[ebp-10]
 005308FE    call        @LStrClr
 00530903    lea         eax,[ebp-0C]
 00530906    call        @LStrClr
 0053090B    ret
>0053090C    jmp         @HandleFinally
>00530911    jmp         005308F3
 00530913    mov         esp,ebp
 00530915    pop         ebp
 00530916    ret
end;*}

//00530924
{*procedure TfmCreater.Edit3Change(?:?);
begin
 00530924    push        ebp
 00530925    mov         ebp,esp
 00530927    xor         ecx,ecx
 00530929    push        ecx
 0053092A    push        ecx
 0053092B    push        ecx
 0053092C    push        ecx
 0053092D    push        ecx
 0053092E    mov         dword ptr [ebp-8],edx
 00530931    mov         dword ptr [ebp-4],eax
 00530934    xor         eax,eax
 00530936    push        ebp
 00530937    push        5309B8
 0053093C    push        dword ptr fs:[eax]
 0053093F    mov         dword ptr fs:[eax],esp
 00530942    lea         edx,[ebp-0C]
 00530945    mov         eax,dword ptr [ebp-4]
 00530948    mov         eax,dword ptr [eax+320];TfmCreater.Edit3:TEdit
 0053094E    call        TPanel.GetCaption
 00530953    cmp         dword ptr [ebp-0C],0
>00530957    je          00530992
 00530959    lea         edx,[ebp-14]
 0053095C    mov         eax,dword ptr [ebp-4]
 0053095F    mov         eax,dword ptr [eax+320];TfmCreater.Edit3:TEdit
 00530965    call        TPanel.GetCaption
 0053096A    mov         ecx,dword ptr [ebp-14]
 0053096D    lea         eax,[ebp-10]
 00530970    mov         edx,5309CC;'0x'
 00530975    call        @LStrCat3
 0053097A    mov         eax,dword ptr [ebp-10]
 0053097D    call        0040C468
 00530982    mov         edx,eax
 00530984    mov         eax,dword ptr [ebp-4]
 00530987    mov         eax,dword ptr [eax+300];TfmCreater.TrackBar3:TTrackBar
 0053098D    call        TTrackBar.SetPosition
 00530992    xor         eax,eax
 00530994    pop         edx
 00530995    pop         ecx
 00530996    pop         ecx
 00530997    mov         dword ptr fs:[eax],edx
 0053099A    push        5309BF
 0053099F    lea         eax,[ebp-14]
 005309A2    call        @LStrClr
 005309A7    lea         eax,[ebp-10]
 005309AA    call        @LStrClr
 005309AF    lea         eax,[ebp-0C]
 005309B2    call        @LStrClr
 005309B7    ret
>005309B8    jmp         @HandleFinally
>005309BD    jmp         0053099F
 005309BF    mov         esp,ebp
 005309C1    pop         ebp
 005309C2    ret
end;*}

//005309D0
{*procedure TfmCreater.Edit4Change(?:?);
begin
 005309D0    push        ebp
 005309D1    mov         ebp,esp
 005309D3    xor         ecx,ecx
 005309D5    push        ecx
 005309D6    push        ecx
 005309D7    push        ecx
 005309D8    push        ecx
 005309D9    push        ecx
 005309DA    mov         dword ptr [ebp-8],edx
 005309DD    mov         dword ptr [ebp-4],eax
 005309E0    xor         eax,eax
 005309E2    push        ebp
 005309E3    push        530A64
 005309E8    push        dword ptr fs:[eax]
 005309EB    mov         dword ptr fs:[eax],esp
 005309EE    lea         edx,[ebp-0C]
 005309F1    mov         eax,dword ptr [ebp-4]
 005309F4    mov         eax,dword ptr [eax+324];TfmCreater.Edit4:TEdit
 005309FA    call        TPanel.GetCaption
 005309FF    cmp         dword ptr [ebp-0C],0
>00530A03    je          00530A3E
 00530A05    lea         edx,[ebp-14]
 00530A08    mov         eax,dword ptr [ebp-4]
 00530A0B    mov         eax,dword ptr [eax+324];TfmCreater.Edit4:TEdit
 00530A11    call        TPanel.GetCaption
 00530A16    mov         ecx,dword ptr [ebp-14]
 00530A19    lea         eax,[ebp-10]
 00530A1C    mov         edx,530A78;'0x'
 00530A21    call        @LStrCat3
 00530A26    mov         eax,dword ptr [ebp-10]
 00530A29    call        0040C468
 00530A2E    mov         edx,eax
 00530A30    mov         eax,dword ptr [ebp-4]
 00530A33    mov         eax,dword ptr [eax+308];TfmCreater.TrackBar4:TTrackBar
 00530A39    call        TTrackBar.SetPosition
 00530A3E    xor         eax,eax
 00530A40    pop         edx
 00530A41    pop         ecx
 00530A42    pop         ecx
 00530A43    mov         dword ptr fs:[eax],edx
 00530A46    push        530A6B
 00530A4B    lea         eax,[ebp-14]
 00530A4E    call        @LStrClr
 00530A53    lea         eax,[ebp-10]
 00530A56    call        @LStrClr
 00530A5B    lea         eax,[ebp-0C]
 00530A5E    call        @LStrClr
 00530A63    ret
>00530A64    jmp         @HandleFinally
>00530A69    jmp         00530A4B
 00530A6B    mov         esp,ebp
 00530A6D    pop         ebp
 00530A6E    ret
end;*}

//00530A7C
{*procedure TfmCreater.Edit5Change(?:?);
begin
 00530A7C    push        ebp
 00530A7D    mov         ebp,esp
 00530A7F    xor         ecx,ecx
 00530A81    push        ecx
 00530A82    push        ecx
 00530A83    push        ecx
 00530A84    push        ecx
 00530A85    push        ecx
 00530A86    mov         dword ptr [ebp-8],edx
 00530A89    mov         dword ptr [ebp-4],eax
 00530A8C    xor         eax,eax
 00530A8E    push        ebp
 00530A8F    push        530B10
 00530A94    push        dword ptr fs:[eax]
 00530A97    mov         dword ptr fs:[eax],esp
 00530A9A    lea         edx,[ebp-0C]
 00530A9D    mov         eax,dword ptr [ebp-4]
 00530AA0    mov         eax,dword ptr [eax+328];TfmCreater.Edit5:TEdit
 00530AA6    call        TPanel.GetCaption
 00530AAB    cmp         dword ptr [ebp-0C],0
>00530AAF    je          00530AEA
 00530AB1    lea         edx,[ebp-14]
 00530AB4    mov         eax,dword ptr [ebp-4]
 00530AB7    mov         eax,dword ptr [eax+328];TfmCreater.Edit5:TEdit
 00530ABD    call        TPanel.GetCaption
 00530AC2    mov         ecx,dword ptr [ebp-14]
 00530AC5    lea         eax,[ebp-10]
 00530AC8    mov         edx,530B24;'0x'
 00530ACD    call        @LStrCat3
 00530AD2    mov         eax,dword ptr [ebp-10]
 00530AD5    call        0040C468
 00530ADA    mov         edx,eax
 00530ADC    mov         eax,dword ptr [ebp-4]
 00530ADF    mov         eax,dword ptr [eax+30C];TfmCreater.TrackBar5:TTrackBar
 00530AE5    call        TTrackBar.SetPosition
 00530AEA    xor         eax,eax
 00530AEC    pop         edx
 00530AED    pop         ecx
 00530AEE    pop         ecx
 00530AEF    mov         dword ptr fs:[eax],edx
 00530AF2    push        530B17
 00530AF7    lea         eax,[ebp-14]
 00530AFA    call        @LStrClr
 00530AFF    lea         eax,[ebp-10]
 00530B02    call        @LStrClr
 00530B07    lea         eax,[ebp-0C]
 00530B0A    call        @LStrClr
 00530B0F    ret
>00530B10    jmp         @HandleFinally
>00530B15    jmp         00530AF7
 00530B17    mov         esp,ebp
 00530B19    pop         ebp
 00530B1A    ret
end;*}

//00530B28
{*procedure TfmCreater.Edit6Change(?:?);
begin
 00530B28    push        ebp
 00530B29    mov         ebp,esp
 00530B2B    xor         ecx,ecx
 00530B2D    push        ecx
 00530B2E    push        ecx
 00530B2F    push        ecx
 00530B30    push        ecx
 00530B31    push        ecx
 00530B32    mov         dword ptr [ebp-8],edx
 00530B35    mov         dword ptr [ebp-4],eax
 00530B38    xor         eax,eax
 00530B3A    push        ebp
 00530B3B    push        530BBC
 00530B40    push        dword ptr fs:[eax]
 00530B43    mov         dword ptr fs:[eax],esp
 00530B46    lea         edx,[ebp-0C]
 00530B49    mov         eax,dword ptr [ebp-4]
 00530B4C    mov         eax,dword ptr [eax+32C];TfmCreater.Edit6:TEdit
 00530B52    call        TPanel.GetCaption
 00530B57    cmp         dword ptr [ebp-0C],0
>00530B5B    je          00530B96
 00530B5D    lea         edx,[ebp-14]
 00530B60    mov         eax,dword ptr [ebp-4]
 00530B63    mov         eax,dword ptr [eax+32C];TfmCreater.Edit6:TEdit
 00530B69    call        TPanel.GetCaption
 00530B6E    mov         ecx,dword ptr [ebp-14]
 00530B71    lea         eax,[ebp-10]
 00530B74    mov         edx,530BD0;'0x'
 00530B79    call        @LStrCat3
 00530B7E    mov         eax,dword ptr [ebp-10]
 00530B81    call        0040C468
 00530B86    mov         edx,eax
 00530B88    mov         eax,dword ptr [ebp-4]
 00530B8B    mov         eax,dword ptr [eax+310];TfmCreater.TrackBar6:TTrackBar
 00530B91    call        TTrackBar.SetPosition
 00530B96    xor         eax,eax
 00530B98    pop         edx
 00530B99    pop         ecx
 00530B9A    pop         ecx
 00530B9B    mov         dword ptr fs:[eax],edx
 00530B9E    push        530BC3
 00530BA3    lea         eax,[ebp-14]
 00530BA6    call        @LStrClr
 00530BAB    lea         eax,[ebp-10]
 00530BAE    call        @LStrClr
 00530BB3    lea         eax,[ebp-0C]
 00530BB6    call        @LStrClr
 00530BBB    ret
>00530BBC    jmp         @HandleFinally
>00530BC1    jmp         00530BA3
 00530BC3    mov         esp,ebp
 00530BC5    pop         ebp
 00530BC6    ret
end;*}

//00530BD4
{*procedure TfmCreater.Edit7Change(?:?);
begin
 00530BD4    push        ebp
 00530BD5    mov         ebp,esp
 00530BD7    xor         ecx,ecx
 00530BD9    push        ecx
 00530BDA    push        ecx
 00530BDB    push        ecx
 00530BDC    push        ecx
 00530BDD    push        ecx
 00530BDE    mov         dword ptr [ebp-8],edx
 00530BE1    mov         dword ptr [ebp-4],eax
 00530BE4    xor         eax,eax
 00530BE6    push        ebp
 00530BE7    push        530C68
 00530BEC    push        dword ptr fs:[eax]
 00530BEF    mov         dword ptr fs:[eax],esp
 00530BF2    lea         edx,[ebp-0C]
 00530BF5    mov         eax,dword ptr [ebp-4]
 00530BF8    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530BFE    call        TPanel.GetCaption
 00530C03    cmp         dword ptr [ebp-0C],0
>00530C07    je          00530C42
 00530C09    lea         edx,[ebp-14]
 00530C0C    mov         eax,dword ptr [ebp-4]
 00530C0F    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530C15    call        TPanel.GetCaption
 00530C1A    mov         ecx,dword ptr [ebp-14]
 00530C1D    lea         eax,[ebp-10]
 00530C20    mov         edx,530C7C;'0x'
 00530C25    call        @LStrCat3
 00530C2A    mov         eax,dword ptr [ebp-10]
 00530C2D    call        0040C468
 00530C32    mov         edx,eax
 00530C34    mov         eax,dword ptr [ebp-4]
 00530C37    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530C3D    call        TTrackBar.SetPosition
 00530C42    xor         eax,eax
 00530C44    pop         edx
 00530C45    pop         ecx
 00530C46    pop         ecx
 00530C47    mov         dword ptr fs:[eax],edx
 00530C4A    push        530C6F
 00530C4F    lea         eax,[ebp-14]
 00530C52    call        @LStrClr
 00530C57    lea         eax,[ebp-10]
 00530C5A    call        @LStrClr
 00530C5F    lea         eax,[ebp-0C]
 00530C62    call        @LStrClr
 00530C67    ret
>00530C68    jmp         @HandleFinally
>00530C6D    jmp         00530C4F
 00530C6F    mov         esp,ebp
 00530C71    pop         ebp
 00530C72    ret
end;*}

//00530C80
{*procedure TfmCreater.Edit8Change(?:?);
begin
 00530C80    push        ebp
 00530C81    mov         ebp,esp
 00530C83    xor         ecx,ecx
 00530C85    push        ecx
 00530C86    push        ecx
 00530C87    push        ecx
 00530C88    push        ecx
 00530C89    push        ecx
 00530C8A    mov         dword ptr [ebp-8],edx
 00530C8D    mov         dword ptr [ebp-4],eax
 00530C90    xor         eax,eax
 00530C92    push        ebp
 00530C93    push        530D14
 00530C98    push        dword ptr fs:[eax]
 00530C9B    mov         dword ptr fs:[eax],esp
 00530C9E    lea         edx,[ebp-0C]
 00530CA1    mov         eax,dword ptr [ebp-4]
 00530CA4    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 00530CAA    call        TPanel.GetCaption
 00530CAF    cmp         dword ptr [ebp-0C],0
>00530CB3    je          00530CEE
 00530CB5    lea         edx,[ebp-14]
 00530CB8    mov         eax,dword ptr [ebp-4]
 00530CBB    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 00530CC1    call        TPanel.GetCaption
 00530CC6    mov         ecx,dword ptr [ebp-14]
 00530CC9    lea         eax,[ebp-10]
 00530CCC    mov         edx,530D28;'0x'
 00530CD1    call        @LStrCat3
 00530CD6    mov         eax,dword ptr [ebp-10]
 00530CD9    call        0040C468
 00530CDE    mov         edx,eax
 00530CE0    mov         eax,dword ptr [ebp-4]
 00530CE3    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530CE9    call        TTrackBar.SetPosition
 00530CEE    xor         eax,eax
 00530CF0    pop         edx
 00530CF1    pop         ecx
 00530CF2    pop         ecx
 00530CF3    mov         dword ptr fs:[eax],edx
 00530CF6    push        530D1B
 00530CFB    lea         eax,[ebp-14]
 00530CFE    call        @LStrClr
 00530D03    lea         eax,[ebp-10]
 00530D06    call        @LStrClr
 00530D0B    lea         eax,[ebp-0C]
 00530D0E    call        @LStrClr
 00530D13    ret
>00530D14    jmp         @HandleFinally
>00530D19    jmp         00530CFB
 00530D1B    mov         esp,ebp
 00530D1D    pop         ebp
 00530D1E    ret
end;*}

//00530D2C
procedure TfmCreater.FormCreate(Sender:TObject);
begin
{*
 00530D2C    push        ebp
 00530D2D    mov         ebp,esp
 00530D2F    add         esp,0FFFFFFF8
 00530D32    mov         dword ptr [ebp-8],edx
 00530D35    mov         dword ptr [ebp-4],eax
 00530D38    mov         dl,1
 00530D3A    mov         eax,[0041DE14];TMemoryStream
 00530D3F    call        TObject.Create;TMemoryStream.Create
 00530D44    mov         [00597C44],eax;gvar_00597C44:TMemoryStream
 00530D49    mov         dl,1
 00530D4B    mov         eax,[0041DE14];TMemoryStream
 00530D50    call        TObject.Create;TMemoryStream.Create
 00530D55    mov         [00597C48],eax;gvar_00597C48:TMemoryStream
 00530D5A    pop         ecx
 00530D5B    pop         ecx
 00530D5C    pop         ebp
 00530D5D    ret
*}
end;

//00530D60
procedure TfmCreater.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00530D60    push        ebp
 00530D61    mov         ebp,esp
 00530D63    add         esp,0FFFFFFF4
 00530D66    mov         dword ptr [ebp-8],ecx
 00530D69    mov         dword ptr [ebp-0C],edx
 00530D6C    mov         dword ptr [ebp-4],eax
 00530D6F    mov         eax,dword ptr [ebp-8]
 00530D72    mov         byte ptr [eax],2
 00530D75    xor         eax,eax
 00530D77    mov         [0056D4FC],eax;gvar_0056D4FC:TfmCreater
 00530D7C    mov         esp,ebp
 00530D7E    pop         ebp
 00530D7F    ret
*}
end;

//00530D80
procedure TfmCreater.FormDestroy(Sender:TObject);
begin
{*
 00530D80    push        ebp
 00530D81    mov         ebp,esp
 00530D83    add         esp,0FFFFFFF8
 00530D86    mov         dword ptr [ebp-8],edx
 00530D89    mov         dword ptr [ebp-4],eax
 00530D8C    mov         eax,[00597C48];0x0 gvar_00597C48:TMemoryStream
 00530D91    call        TObject.Free
 00530D96    mov         eax,[00597C44];0x0 gvar_00597C44:TMemoryStream
 00530D9B    call        TObject.Free
 00530DA0    pop         ecx
 00530DA1    pop         ecx
 00530DA2    pop         ebp
 00530DA3    ret
*}
end;

//00530DA4
procedure TfmCreater.cb8headsClick(Sender:TObject);
begin
{*
 00530DA4    push        ebp
 00530DA5    mov         ebp,esp
 00530DA7    add         esp,0FFFFFFF8
 00530DAA    mov         dword ptr [ebp-8],edx
 00530DAD    mov         dword ptr [ebp-4],eax
 00530DB0    mov         eax,dword ptr [ebp-4]
 00530DB3    mov         eax,dword ptr [eax+350];TfmCreater.cb8heads:TCheckBox
 00530DB9    mov         edx,dword ptr [eax]
 00530DBB    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00530DC1    test        al,al
>00530DC3    je          00530E11
 00530DC5    mov         dl,1
 00530DC7    mov         eax,dword ptr [ebp-4]
 00530DCA    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530DD0    mov         ecx,dword ptr [eax]
 00530DD2    call        dword ptr [ecx+64];TImage.SetEnabled
 00530DD5    mov         dl,1
 00530DD7    mov         eax,dword ptr [ebp-4]
 00530DDA    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530DE0    mov         ecx,dword ptr [eax]
 00530DE2    call        dword ptr [ecx+64];TImage.SetEnabled
 00530DE5    mov         dl,1
 00530DE7    mov         eax,dword ptr [ebp-4]
 00530DEA    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530DF0    mov         ecx,dword ptr [eax]
 00530DF2    call        dword ptr [ecx+64];TImage.SetEnabled
 00530DF5    mov         dl,1
 00530DF7    mov         eax,dword ptr [ebp-4]
 00530DFA    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 00530E00    mov         ecx,dword ptr [eax]
 00530E02    call        dword ptr [ecx+64];TImage.SetEnabled
 00530E05    mov         dword ptr ds:[597E7C],8;gvar_00597E7C
>00530E0F    jmp         00530E5B
 00530E11    xor         edx,edx
 00530E13    mov         eax,dword ptr [ebp-4]
 00530E16    mov         eax,dword ptr [eax+33C];TfmCreater.TrackBar8:TTrackBar
 00530E1C    mov         ecx,dword ptr [eax]
 00530E1E    call        dword ptr [ecx+64];TImage.SetEnabled
 00530E21    xor         edx,edx
 00530E23    mov         eax,dword ptr [ebp-4]
 00530E26    mov         eax,dword ptr [eax+340];TfmCreater.TrackBar9:TTrackBar
 00530E2C    mov         ecx,dword ptr [eax]
 00530E2E    call        dword ptr [ecx+64];TImage.SetEnabled
 00530E31    xor         edx,edx
 00530E33    mov         eax,dword ptr [ebp-4]
 00530E36    mov         eax,dword ptr [eax+344];TfmCreater.Edit7:TEdit
 00530E3C    mov         ecx,dword ptr [eax]
 00530E3E    call        dword ptr [ecx+64];TImage.SetEnabled
 00530E41    xor         edx,edx
 00530E43    mov         eax,dword ptr [ebp-4]
 00530E46    mov         eax,dword ptr [eax+348];TfmCreater.Edit8:TEdit
 00530E4C    mov         ecx,dword ptr [eax]
 00530E4E    call        dword ptr [ecx+64];TImage.SetEnabled
 00530E51    mov         dword ptr ds:[597E7C],6;gvar_00597E7C
 00530E5B    pop         ecx
 00530E5C    pop         ecx
 00530E5D    pop         ebp
 00530E5E    ret
*}
end;

end.