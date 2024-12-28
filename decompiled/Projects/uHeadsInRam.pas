//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uHeadsInRam;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmRamHd = class(TForm)
  published
    btSet:TButton;//f2F8
    btSoftReset:TButton;//f2FC
    edMap:TLabeledEdit;//f300
    btGetMap:TButton;//f304
    btSupReset:TButton;//f308
    btRecalibrate:TButton;//f30C
    edHd:TLabeledEdit;//f310
    edAdress:TLabeledEdit;//f314
    cbManual:TCheckBox;//f318
    procedure btSetClick(Sender:TObject);//0053E104
    procedure btRecalibrateClick(Sender:TObject);//0053E04C
    //procedure edMapChange(?:?);//0053E584
    procedure cbManualClick(Sender:TObject);//0053E550
    procedure btSupResetClick(Sender:TObject);//0053DFF0
    procedure btSoftResetClick(Sender:TObject);//0053DF78
    procedure btGetMapClick(Sender:TObject);//0053D41C
    procedure FormShow(Sender:TObject);//0053D048
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053D020
  public
    f31C:dword;//f31C
  end;
    procedure sub_0053CFCC(?:TfmRamHd; ?:TfmHDD);//0053CFCC
    //procedure sub_0053D080(?:?);//0053D080
    //function sub_0053D0EC(?:TMemoryStream):?;//0053D0EC

implementation

{$R *.DFM}

//0053CFCC
procedure sub_0053CFCC(?:TfmRamHd; ?:TfmHDD);
begin
{*
 0053CFCC    push        ebp
 0053CFCD    mov         ebp,esp
 0053CFCF    add         esp,0FFFFFFF8
 0053CFD2    mov         dword ptr [ebp-8],edx
 0053CFD5    mov         dword ptr [ebp-4],eax
 0053CFD8    cmp         dword ptr ds:[56DDE4],0;gvar_0056DDE4:TfmRamHd
>0053CFDF    jne         0053CFF5
 0053CFE1    mov         ecx,dword ptr [ebp-8]
 0053CFE4    mov         dl,1
 0053CFE6    mov         eax,[0053CD0C];TfmRamHd
 0053CFEB    call        TfmProgress.Create;TfmRamHd.Create
 0053CFF0    mov         [0056DDE4],eax;gvar_0056DDE4:TfmRamHd
 0053CFF5    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053CFFA    cmp         byte ptr [eax+1A6],0;TfmRamHd.FShowing:Boolean
>0053D001    je          0053D012
 0053D003    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D008    mov         edx,dword ptr [eax]
 0053D00A    call        dword ptr [edx+0C4];TfmRamHd.sub_004A746C
>0053D010    jmp         0053D01C
 0053D012    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D017    call        004A7450
 0053D01C    pop         ecx
 0053D01D    pop         ecx
 0053D01E    pop         ebp
 0053D01F    ret
*}
end;

//0053D020
procedure TfmRamHd.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053D020    push        ebp
 0053D021    mov         ebp,esp
 0053D023    add         esp,0FFFFFFF4
 0053D026    mov         dword ptr [ebp-8],ecx
 0053D029    mov         dword ptr [ebp-0C],edx
 0053D02C    mov         dword ptr [ebp-4],eax
 0053D02F    mov         eax,[0056E5A4];^gvar_0056DF04
 0053D034    mov         byte ptr [eax],1
 0053D037    xor         eax,eax
 0053D039    mov         [0056DDE4],eax;gvar_0056DDE4:TfmRamHd
 0053D03E    mov         eax,dword ptr [ebp-8]
 0053D041    mov         byte ptr [eax],2
 0053D044    mov         esp,ebp
 0053D046    pop         ebp
 0053D047    ret
*}
end;

//0053D048
procedure TfmRamHd.FormShow(Sender:TObject);
begin
{*
 0053D048    push        ebp
 0053D049    mov         ebp,esp
 0053D04B    add         esp,0FFFFFFF8
 0053D04E    mov         dword ptr [ebp-8],edx
 0053D051    mov         dword ptr [ebp-4],eax
 0053D054    mov         eax,dword ptr [ebp-4]
 0053D057    xor         edx,edx
 0053D059    mov         dword ptr [eax+31C],edx;TfmRamHd.?f31C:dword
 0053D05F    mov         eax,[0056E284];^gvar_0056DF34
 0053D064    mov         eax,dword ptr [eax]
 0053D066    mov         eax,dword ptr [eax+408]
 0053D06C    cmp         byte ptr [eax+38],0
>0053D070    je          0053D07C
 0053D072    xor         edx,edx
 0053D074    mov         eax,dword ptr [ebp-4]
 0053D077    call        TfmRamHd.btGetMapClick
 0053D07C    pop         ecx
 0053D07D    pop         ecx
 0053D07E    pop         ebp
 0053D07F    ret
*}
end;

//0053D080
{*procedure sub_0053D080(?:?);
begin
 0053D080    push        ebp
 0053D081    mov         ebp,esp
 0053D083    push        ecx
 0053D084    mov         byte ptr [ebp-1],al
 0053D087    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D08C    mov         eax,dword ptr [eax+2FC];TfmRamHd.btSoftReset:TButton
 0053D092    mov         dl,byte ptr [ebp-1]
 0053D095    mov         ecx,dword ptr [eax]
 0053D097    call        dword ptr [ecx+64];TImage.SetEnabled
 0053D09A    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D09F    mov         eax,dword ptr [eax+30C];TfmRamHd.btRecalibrate:TButton
 0053D0A5    mov         dl,byte ptr [ebp-1]
 0053D0A8    mov         ecx,dword ptr [eax]
 0053D0AA    call        dword ptr [ecx+64];TImage.SetEnabled
 0053D0AD    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D0B2    mov         eax,dword ptr [eax+308];TfmRamHd.btSupReset:TButton
 0053D0B8    mov         dl,byte ptr [ebp-1]
 0053D0BB    mov         ecx,dword ptr [eax]
 0053D0BD    call        dword ptr [ecx+64];TImage.SetEnabled
 0053D0C0    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D0C5    mov         eax,dword ptr [eax+2F8];TfmRamHd.btSet:TButton
 0053D0CB    mov         dl,byte ptr [ebp-1]
 0053D0CE    mov         ecx,dword ptr [eax]
 0053D0D0    call        dword ptr [ecx+64];TImage.SetEnabled
 0053D0D3    mov         eax,[0056DDE4];0x0 gvar_0056DDE4:TfmRamHd
 0053D0D8    mov         eax,dword ptr [eax+304];TfmRamHd.btGetMap:TButton
 0053D0DE    mov         dl,byte ptr [ebp-1]
 0053D0E1    mov         ecx,dword ptr [eax]
 0053D0E3    call        dword ptr [ecx+64];TImage.SetEnabled
 0053D0E6    pop         ecx
 0053D0E7    pop         ebp
 0053D0E8    ret
end;*}

//0053D0EC
{*function sub_0053D0EC(?:TMemoryStream):?;
begin
 0053D0EC    push        ebp
 0053D0ED    mov         ebp,esp
 0053D0EF    add         esp,0FFFFFFC8
 0053D0F2    push        ebx
 0053D0F3    mov         dword ptr [ebp-4],eax
 0053D0F6    mov         eax,[0056E304];^gvar_0056DF54
 0053D0FB    movzx       eax,word ptr [eax]
 0053D0FE    cmp         eax,0CE
>0053D103    jg          0053D14B
>0053D105    je          0053D239
 0053D10B    cmp         eax,78
>0053D10E    jg          0053D132
>0053D110    je          0053D1CB
 0053D116    sub         eax,65
>0053D119    je          0053D1CB
 0053D11F    sub         eax,9
>0053D122    je          0053D194
 0053D124    sub         eax,5
>0053D127    je          0053D1CB
>0053D12D    jmp         0053D2DB
 0053D132    sub         eax,0AC
>0053D137    je          0053D202
 0053D13D    sub         eax,8
>0053D140    je          0053D202
>0053D146    jmp         0053D2DB
 0053D14B    add         eax,0FFFFFF27
 0053D150    cmp         eax,0C
>0053D153    ja          0053D2DB
 0053D159    jmp         dword ptr [eax*4+53D160]
 0053D159    dd          0053D239
 0053D159    dd          0053D2DB
 0053D159    dd          0053D239
 0053D159    dd          0053D2DB
 0053D159    dd          0053D2DB
 0053D159    dd          0053D2DB
 0053D159    dd          0053D239
 0053D159    dd          0053D2DB
 0053D159    dd          0053D2DB
 0053D159    dd          0053D2DB
 0053D159    dd          0053D270
 0053D159    dd          0053D2DB
 0053D159    dd          0053D2A7
 0053D194    mov         eax,dword ptr ds:[56DE28];0x9101B084 gvar_0056DE28
 0053D19A    mov         dword ptr [ebp-28],eax
 0053D19D    mov         eax,dword ptr ds:[56DE2C];0x25007F00 gvar_0056DE2C
 0053D1A3    mov         dword ptr [ebp-24],eax
 0053D1A6    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D1AC    mov         dword ptr [ebp-30],eax
 0053D1AF    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D1B5    mov         dword ptr [ebp-2C],eax
 0053D1B8    mov         dword ptr [ebp-38],0
 0053D1BF    mov         dword ptr [ebp-34],0
>0053D1C6    jmp         0053D34B
 0053D1CB    mov         eax,dword ptr ds:[56DE30];0xB5F04800 gvar_0056DE30
 0053D1D1    mov         dword ptr [ebp-28],eax
 0053D1D4    mov         eax,dword ptr ds:[56DE34];0x9001B085 gvar_0056DE34
 0053D1DA    mov         dword ptr [ebp-24],eax
 0053D1DD    mov         eax,dword ptr ds:[56DE38];0xFFFFFF00 gvar_0056DE38
 0053D1E3    mov         dword ptr [ebp-30],eax
 0053D1E6    mov         eax,dword ptr ds:[56DE3C];0xFFFFFFFF gvar_0056DE3C
 0053D1EC    mov         dword ptr [ebp-2C],eax
 0053D1EF    mov         dword ptr [ebp-38],0
 0053D1F6    mov         dword ptr [ebp-34],0
>0053D1FD    jmp         0053D34B
 0053D202    mov         eax,dword ptr ds:[56DDF8];0x25002104 gvar_0056DDF8
 0053D208    mov         dword ptr [ebp-28],eax
 0053D20B    mov         eax,dword ptr ds:[56DDFC];0x82104388 gvar_0056DDFC
 0053D211    mov         dword ptr [ebp-24],eax
 0053D214    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D21A    mov         dword ptr [ebp-30],eax
 0053D21D    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D223    mov         dword ptr [ebp-2C],eax
 0053D226    mov         dword ptr [ebp-38],8
 0053D22D    mov         dword ptr [ebp-34],0
>0053D234    jmp         0053D34B
 0053D239    mov         eax,dword ptr ds:[56DE08];0x434E1C10 gvar_0056DE08
 0053D23F    mov         dword ptr [ebp-28],eax
 0053D242    mov         eax,dword ptr ds:[56DE0C];0xB0822400 gvar_0056DE0C
 0053D248    mov         dword ptr [ebp-24],eax
 0053D24B    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D251    mov         dword ptr [ebp-30],eax
 0053D254    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D25A    mov         dword ptr [ebp-2C],eax
 0053D25D    mov         dword ptr [ebp-38],0
 0053D264    mov         dword ptr [ebp-34],0
>0053D26B    jmp         0053D34B
 0053D270    mov         eax,dword ptr ds:[56DE00];0x4F8E2104 gvar_0056DE00
 0053D276    mov         dword ptr [ebp-28],eax
 0053D279    mov         eax,dword ptr ds:[56DE04];0x82104388 gvar_0056DE04
 0053D27F    mov         dword ptr [ebp-24],eax
 0053D282    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D288    mov         dword ptr [ebp-30],eax
 0053D28B    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D291    mov         dword ptr [ebp-2C],eax
 0053D294    mov         dword ptr [ebp-38],2
 0053D29B    mov         dword ptr [ebp-34],0
>0053D2A2    jmp         0053D34B
 0053D2A7    mov         eax,dword ptr ds:[56DDF0];0x10434E gvar_0056DDF0
 0053D2AD    mov         dword ptr [ebp-28],eax
 0053D2B0    mov         eax,dword ptr ds:[56DDF4];0xB0822400 gvar_0056DDF4
 0053D2B6    mov         dword ptr [ebp-24],eax
 0053D2B9    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D2BF    mov         dword ptr [ebp-30],eax
 0053D2C2    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D2C8    mov         dword ptr [ebp-2C],eax
 0053D2CB    mov         dword ptr [ebp-38],0
 0053D2D2    mov         dword ptr [ebp-34],0
>0053D2D9    jmp         0053D34B
 0053D2DB    mov         eax,[0056E040];^gvar_005720C0
 0053D2E0    cmp         byte ptr [eax],0
>0053D2E3    je          0053D319
 0053D2E5    mov         eax,dword ptr ds:[56DDE8];0x25002104 gvar_0056DDE8
 0053D2EB    mov         dword ptr [ebp-28],eax
 0053D2EE    mov         eax,dword ptr ds:[56DDEC];0x82104388 gvar_0056DDEC
 0053D2F4    mov         dword ptr [ebp-24],eax
 0053D2F7    mov         eax,dword ptr ds:[56DE10];0xFFFFFFFF gvar_0056DE10
 0053D2FD    mov         dword ptr [ebp-30],eax
 0053D300    mov         eax,dword ptr ds:[56DE14];0xFFFFFFFF gvar_0056DE14
 0053D306    mov         dword ptr [ebp-2C],eax
 0053D309    mov         dword ptr [ebp-38],8
 0053D310    mov         dword ptr [ebp-34],0
>0053D317    jmp         0053D34B
 0053D319    mov         eax,dword ptr ds:[56DE18];0x4800B5FE gvar_0056DE18
 0053D31F    mov         dword ptr [ebp-28],eax
 0053D322    mov         eax,dword ptr ds:[56DE1C];0x7F002500 gvar_0056DE1C
 0053D328    mov         dword ptr [ebp-24],eax
 0053D32B    mov         eax,dword ptr ds:[56DE20];0xFF00FFFF gvar_0056DE20
 0053D331    mov         dword ptr [ebp-30],eax
 0053D334    mov         eax,dword ptr ds:[56DE24];0xFFFFFFFF gvar_0056DE24
 0053D33A    mov         dword ptr [ebp-2C],eax
 0053D33D    mov         dword ptr [ebp-38],0
 0053D344    mov         dword ptr [ebp-34],0
 0053D34B    mov         dword ptr [ebp-10],0
 0053D352    mov         dword ptr [ebp-0C],0
 0053D359    mov         eax,[0056E5A4];^gvar_0056DF04
 0053D35E    mov         byte ptr [eax],0
 0053D361    mov         byte ptr [ebp-11],0
 0053D365    xor         ecx,ecx
 0053D367    xor         edx,edx
 0053D369    mov         eax,dword ptr [ebp-4]
 0053D36C    mov         ebx,dword ptr [eax]
 0053D36E    call        dword ptr [ebx+14]
>0053D371    jmp         0053D3CE
 0053D373    mov         eax,dword ptr [ebp-4]
 0053D376    call        004CE58C
 0053D37B    mov         dword ptr [ebp-20],eax
 0053D37E    mov         dword ptr [ebp-1C],edx
 0053D381    mov         eax,dword ptr [ebp-20]
 0053D384    mov         edx,dword ptr [ebp-1C]
 0053D387    and         eax,dword ptr [ebp-30]
 0053D38A    and         edx,dword ptr [ebp-2C]
 0053D38D    mov         dword ptr [ebp-20],eax
 0053D390    mov         dword ptr [ebp-1C],edx
 0053D393    mov         eax,dword ptr [ebp-20]
 0053D396    mov         edx,dword ptr [ebp-1C]
 0053D399    cmp         edx,dword ptr [ebp-24]
>0053D39C    jne         0053D3BD
 0053D39E    cmp         eax,dword ptr [ebp-28]
>0053D3A1    jne         0053D3BD
 0053D3A3    mov         byte ptr [ebp-11],1
 0053D3A7    mov         eax,dword ptr [ebp-4]
 0053D3AA    call        TStream.GetPosition
 0053D3AF    add         eax,dword ptr [ebp-38]
 0053D3B2    adc         edx,dword ptr [ebp-34]
 0053D3B5    mov         dword ptr [ebp-10],eax
 0053D3B8    mov         dword ptr [ebp-0C],edx
>0053D3BB    jmp         0053D3CE
 0053D3BD    mov         cx,1
 0053D3C1    mov         edx,0FFFFFFF9
 0053D3C6    mov         eax,dword ptr [ebp-4]
 0053D3C9    mov         ebx,dword ptr [eax]
 0053D3CB    call        dword ptr [ebx+14]
 0053D3CE    cmp         byte ptr [ebp-11],0
>0053D3D2    jne         0053D410
 0053D3D4    mov         eax,[0056E5A4];^gvar_0056DF04
 0053D3D9    cmp         byte ptr [eax],0
>0053D3DC    jne         0053D410
 0053D3DE    mov         eax,dword ptr [ebp-4]
 0053D3E1    mov         edx,dword ptr [eax]
 0053D3E3    call        dword ptr [edx]
 0053D3E5    sub         eax,8
 0053D3E8    sbb         edx,0
 0053D3EB    push        edx
 0053D3EC    push        eax
 0053D3ED    mov         eax,dword ptr [ebp-4]
 0053D3F0    call        TStream.GetPosition
 0053D3F5    cmp         edx,dword ptr [esp+4]
>0053D3F9    jne         0053D408
 0053D3FB    cmp         eax,dword ptr [esp]
 0053D3FE    pop         edx
 0053D3FF    pop         eax
>0053D400    jb          0053D373
>0053D406    jmp         0053D410
 0053D408    pop         edx
 0053D409    pop         eax
>0053D40A    jl          0053D373
 0053D410    mov         eax,dword ptr [ebp-10]
 0053D413    mov         edx,dword ptr [ebp-0C]
 0053D416    pop         ebx
 0053D417    mov         esp,ebp
 0053D419    pop         ebp
 0053D41A    ret
end;*}

//0053D41C
procedure TfmRamHd.btGetMapClick(Sender:TObject);
begin
{*
 0053D41C    push        ebp
 0053D41D    mov         ebp,esp
 0053D41F    mov         ecx,11
 0053D424    push        0
 0053D426    push        0
 0053D428    dec         ecx
>0053D429    jne         0053D424
 0053D42B    push        ecx
 0053D42C    push        ebx
 0053D42D    mov         dword ptr [ebp-2C],edx
 0053D430    mov         dword ptr [ebp-4],eax
 0053D433    xor         eax,eax
 0053D435    push        ebp
 0053D436    push        53DD58
 0053D43B    push        dword ptr fs:[eax]
 0053D43E    mov         dword ptr fs:[eax],esp
 0053D441    xor         eax,eax
 0053D443    call        0053D080
 0053D448    mov         eax,dword ptr [ebp-4]
 0053D44B    mov         eax,dword ptr [eax+318];TfmRamHd.cbManual:TCheckBox
 0053D451    mov         edx,dword ptr [eax]
 0053D453    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053D459    test        al,al
>0053D45B    je          0053D72C
 0053D461    lea         edx,[ebp-30]
 0053D464    mov         eax,dword ptr [ebp-4]
 0053D467    mov         eax,dword ptr [eax+314];TfmRamHd.edAdress:TLabeledEdit
 0053D46D    call        TPanel.GetCaption
 0053D472    mov         eax,dword ptr [ebp-30]
 0053D475    xor         edx,edx
 0053D477    call        0040C4A8
 0053D47C    mov         edx,dword ptr [ebp-4]
 0053D47F    mov         dword ptr [edx+31C],eax;TfmRamHd.?f31C:dword
 0053D485    mov         eax,dword ptr [ebp-4]
 0053D488    mov         eax,dword ptr [eax+31C];TfmRamHd.?f31C:dword
 0053D48E    mov         dword ptr [ebp-18],eax
 0053D491    mov         dl,1
 0053D493    mov         eax,[0041DE14];TMemoryStream
 0053D498    call        TObject.Create;TMemoryStream.Create
 0053D49D    mov         dword ptr [ebp-8],eax
 0053D4A0    xor         eax,eax
 0053D4A2    push        ebp
 0053D4A3    push        53D725
 0053D4A8    push        dword ptr fs:[eax]
 0053D4AB    mov         dword ptr fs:[eax],esp
 0053D4AE    mov         eax,dword ptr [ebp-18]
 0053D4B1    and         eax,0FFFF0000
 0053D4B6    cmp         eax,4000000
>0053D4BB    jne         0053D6F2
 0053D4C1    mov         eax,dword ptr [ebp-8]
 0053D4C4    call        00423F20
 0053D4C9    mov         eax,dword ptr [ebp-18]
 0053D4CC    sub         eax,2
 0053D4CF    mov         ecx,dword ptr [ebp-8]
 0053D4D2    mov         edx,200
 0053D4D7    call        004D1204
 0053D4DC    test        al,al
>0053D4DE    je          0053D6D3
 0053D4E4    push        10
 0053D4E6    call        user32.GetKeyState
 0053D4EB    test        ax,ax
>0053D4EE    jge         0053D50D
 0053D4F0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D4F5    mov         eax,dword ptr [eax]
 0053D4F7    mov         eax,dword ptr [eax+2F8]
 0053D4FD    mov         eax,dword ptr [eax+248]
 0053D503    mov         edx,53DD6C;#10+Read SERVO_DATA - OK'
 0053D508    mov         ecx,dword ptr [eax]
 0053D50A    call        dword ptr [ecx+38]
 0053D50D    xor         ecx,ecx
 0053D50F    xor         edx,edx
 0053D511    mov         eax,dword ptr [ebp-8]
 0053D514    mov         ebx,dword ptr [eax]
 0053D516    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053D519    lea         eax,[ebp-20]
 0053D51C    mov         edx,53DD8C;'Heads Map is:'
 0053D521    call        @LStrLAsg
 0053D526    xor         eax,eax
 0053D528    mov         dword ptr [ebp-1C],eax
 0053D52B    mov         eax,dword ptr [ebp-8]
 0053D52E    call        004CE528
 0053D533    mov         byte ptr [ebp-21],al
 0053D536    push        dword ptr [ebp-20]
 0053D539    lea         ecx,[ebp-34]
 0053D53C    xor         eax,eax
 0053D53E    mov         al,byte ptr [ebp-21]
 0053D541    mov         edx,2
 0053D546    call        IntToHex
 0053D54B    push        dword ptr [ebp-34]
 0053D54E    push        53DDA4;' '
 0053D553    lea         eax,[ebp-20]
 0053D556    mov         edx,3
 0053D55B    call        @LStrCatN
 0053D560    inc         dword ptr [ebp-1C]
 0053D563    cmp         dword ptr [ebp-1C],12
>0053D567    jne         0053D52B
 0053D569    push        10
 0053D56B    call        user32.GetKeyState
 0053D570    test        ax,ax
>0053D573    jge         0053D590
 0053D575    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D57A    mov         eax,dword ptr [eax]
 0053D57C    mov         eax,dword ptr [eax+2F8]
 0053D582    mov         eax,dword ptr [eax+248]
 0053D588    mov         edx,dword ptr [ebp-20]
 0053D58B    mov         ecx,dword ptr [eax]
 0053D58D    call        dword ptr [ecx+38]
 0053D590    xor         ecx,ecx
 0053D592    xor         edx,edx
 0053D594    mov         eax,dword ptr [ebp-8]
 0053D597    mov         ebx,dword ptr [eax]
 0053D599    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053D59C    mov         eax,dword ptr [ebp-8]
 0053D59F    call        004CE528
 0053D5A4    mov         byte ptr [ebp-22],al
 0053D5A7    cmp         byte ptr [ebp-22],0
>0053D5AB    jne         0053D5BA
 0053D5AD    mov         eax,dword ptr [ebp-8]
 0053D5B0    call        004CE528
 0053D5B5    mov         byte ptr [ebp-22],al
>0053D5B8    jmp         0053D5CB
 0053D5BA    mov         cx,1
 0053D5BE    mov         edx,1
 0053D5C3    mov         eax,dword ptr [ebp-8]
 0053D5C6    mov         ebx,dword ptr [eax]
 0053D5C8    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053D5CB    lea         eax,[ebp-38]
 0053D5CE    push        eax
 0053D5CF    xor         eax,eax
 0053D5D1    mov         al,byte ptr [ebp-22]
 0053D5D4    mov         dword ptr [ebp-40],eax
 0053D5D7    mov         byte ptr [ebp-3C],0
 0053D5DB    lea         edx,[ebp-40]
 0053D5DE    xor         ecx,ecx
 0053D5E0    mov         eax,53DDB0;'%x'
 0053D5E5    call        0040D630
 0053D5EA    mov         edx,dword ptr [ebp-38]
 0053D5ED    mov         eax,dword ptr [ebp-4]
 0053D5F0    mov         eax,dword ptr [eax+310];TfmRamHd.edHd:TLabeledEdit
 0053D5F6    call        TPanel.SetCaption
 0053D5FB    cmp         byte ptr [ebp-22],9
>0053D5FF    jae         0053D675
 0053D601    lea         eax,[ebp-20]
 0053D604    call        @LStrClr
 0053D609    xor         eax,eax
 0053D60B    mov         al,byte ptr [ebp-22]
 0053D60E    test        eax,eax
>0053D610    jle         0053D659
 0053D612    mov         dword ptr [ebp-28],eax
 0053D615    mov         dword ptr [ebp-1C],1
 0053D61C    mov         eax,dword ptr [ebp-8]
 0053D61F    call        004CE528
 0053D624    mov         byte ptr [ebp-21],al
 0053D627    push        dword ptr [ebp-20]
 0053D62A    lea         ecx,[ebp-44]
 0053D62D    xor         eax,eax
 0053D62F    mov         al,byte ptr [ebp-21]
 0053D632    mov         edx,1
 0053D637    call        IntToHex
 0053D63C    push        dword ptr [ebp-44]
 0053D63F    push        53DDA4;' '
 0053D644    lea         eax,[ebp-20]
 0053D647    mov         edx,3
 0053D64C    call        @LStrCatN
 0053D651    inc         dword ptr [ebp-1C]
 0053D654    dec         dword ptr [ebp-28]
>0053D657    jne         0053D61C
 0053D659    lea         edx,[ebp-48]
 0053D65C    mov         eax,dword ptr [ebp-20]
 0053D65F    call        0040BFEC
 0053D664    mov         edx,dword ptr [ebp-48]
 0053D667    mov         eax,dword ptr [ebp-4]
 0053D66A    mov         eax,dword ptr [eax+300];TfmRamHd.edMap:TLabeledEdit
 0053D670    call        TPanel.SetCaption
 0053D675    cmp         byte ptr [ebp-22],0
>0053D679    jne         0053D6A5
 0053D67B    mov         eax,53DDBC;'Heads Amount: 0'+#10+Use "Spin Up"'
 0053D680    call        0043F8B4
 0053D685    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053D68B    mov         edx,dword ptr [edx]
 0053D68D    lea         eax,[ebp-4C]
 0053D690    mov         ecx,53DDE4;'SERVO_DATA.bin'
 0053D695    call        @LStrCat3
 0053D69A    mov         edx,dword ptr [ebp-4C]
 0053D69D    mov         eax,dword ptr [ebp-8]
 0053D6A0    call        00423E84
 0053D6A5    push        10
 0053D6A7    call        user32.GetKeyState
 0053D6AC    test        ax,ax
>0053D6AF    jge         0053D70F
 0053D6B1    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053D6B7    mov         edx,dword ptr [edx]
 0053D6B9    lea         eax,[ebp-50]
 0053D6BC    mov         ecx,53DDE4;'SERVO_DATA.bin'
 0053D6C1    call        @LStrCat3
 0053D6C6    mov         edx,dword ptr [ebp-50]
 0053D6C9    mov         eax,dword ptr [ebp-8]
 0053D6CC    call        00423E84
>0053D6D1    jmp         0053D70F
 0053D6D3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D6D8    mov         eax,dword ptr [eax]
 0053D6DA    mov         eax,dword ptr [eax+2F8]
 0053D6E0    mov         eax,dword ptr [eax+248]
 0053D6E6    mov         edx,53DDFC;'Read SERVO_DATA - ERROR'
 0053D6EB    mov         ecx,dword ptr [eax]
 0053D6ED    call        dword ptr [ecx+38]
>0053D6F0    jmp         0053D70F
 0053D6F2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D6F7    mov         eax,dword ptr [eax]
 0053D6F9    mov         eax,dword ptr [eax+2F8]
 0053D6FF    mov         eax,dword ptr [eax+248]
 0053D705    mov         edx,53DE1C;'Incorect Adress'
 0053D70A    mov         ecx,dword ptr [eax]
 0053D70C    call        dword ptr [ecx+38]
 0053D70F    xor         eax,eax
 0053D711    pop         edx
 0053D712    pop         ecx
 0053D713    pop         ecx
 0053D714    mov         dword ptr fs:[eax],edx
 0053D717    push        53DD16
 0053D71C    mov         eax,dword ptr [ebp-8]
 0053D71F    call        TObject.Free
 0053D724    ret
>0053D725    jmp         @HandleFinally
>0053D72A    jmp         0053D71C
 0053D72C    mov         dl,1
 0053D72E    mov         eax,[0041DE14];TMemoryStream
 0053D733    call        TObject.Create;TMemoryStream.Create
 0053D738    mov         dword ptr [ebp-8],eax
 0053D73B    xor         eax,eax
 0053D73D    push        ebp
 0053D73E    push        53DD0F
 0053D743    push        dword ptr fs:[eax]
 0053D746    mov         dword ptr fs:[eax],esp
 0053D749    mov         ecx,dword ptr [ebp-8]
 0053D74C    mov         edx,80000
 0053D751    mov         eax,0FFE10000
 0053D756    call        004D1204
 0053D75B    test        al,al
>0053D75D    je          0053DCDC
 0053D763    push        10
 0053D765    call        user32.GetKeyState
 0053D76A    test        ax,ax
>0053D76D    jge         0053D78C
 0053D76F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D774    mov         eax,dword ptr [eax]
 0053D776    mov         eax,dword ptr [eax+2F8]
 0053D77C    mov         eax,dword ptr [eax+248]
 0053D782    mov         edx,53DE34;#10+Read SERVO_CODE - OK'
 0053D787    mov         ecx,dword ptr [eax]
 0053D789    call        dword ptr [ecx+38]
 0053D78C    mov         eax,dword ptr [ebp-8]
 0053D78F    call        0053D0EC
 0053D794    mov         dword ptr [ebp-10],eax
 0053D797    mov         dword ptr [ebp-0C],edx
 0053D79A    cmp         dword ptr [ebp-0C],0
>0053D79E    jne         0053D7AC
 0053D7A0    cmp         dword ptr [ebp-10],0
>0053D7A4    jbe         0053DC53
>0053D7AA    jmp         0053D7B2
>0053D7AC    jle         0053DC53
 0053D7B2    push        10
 0053D7B4    call        user32.GetKeyState
 0053D7B9    test        ax,ax
>0053D7BC    jge         0053D816
 0053D7BE    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053D7C4    mov         edx,dword ptr [edx]
 0053D7C6    lea         eax,[ebp-54]
 0053D7C9    mov         ecx,53DE54;'SERVO_CODE.bin'
 0053D7CE    call        @LStrCat3
 0053D7D3    mov         edx,dword ptr [ebp-54]
 0053D7D6    mov         eax,dword ptr [ebp-8]
 0053D7D9    call        00423E84
 0053D7DE    lea         eax,[ebp-58]
 0053D7E1    push        eax
 0053D7E2    lea         eax,[ebp-10]
 0053D7E5    mov         dword ptr [ebp-40],eax
 0053D7E8    mov         byte ptr [ebp-3C],10
 0053D7EC    lea         edx,[ebp-40]
 0053D7EF    xor         ecx,ecx
 0053D7F1    mov         eax,53DE6C;'Pattern Offset: %x'
 0053D7F6    call        0040D630
 0053D7FB    mov         edx,dword ptr [ebp-58]
 0053D7FE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D803    mov         eax,dword ptr [eax]
 0053D805    mov         eax,dword ptr [eax+2F8]
 0053D80B    mov         eax,dword ptr [eax+248]
 0053D811    mov         ecx,dword ptr [eax]
 0053D813    call        dword ptr [ecx+38]
 0053D816    xor         ecx,ecx
 0053D818    mov         edx,dword ptr [ebp-10]
 0053D81B    mov         eax,dword ptr [ebp-8]
 0053D81E    mov         ebx,dword ptr [eax]
 0053D820    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053D823    mov         eax,dword ptr [ebp-8]
 0053D826    call        004CE528
 0053D82B    and         eax,0FF
 0053D830    mov         dword ptr [ebp-14],eax
 0053D833    push        10
 0053D835    call        user32.GetKeyState
 0053D83A    test        ax,ax
>0053D83D    jge         0053D877
 0053D83F    lea         eax,[ebp-5C]
 0053D842    push        eax
 0053D843    mov         eax,dword ptr [ebp-14]
 0053D846    mov         dword ptr [ebp-40],eax
 0053D849    mov         byte ptr [ebp-3C],0
 0053D84D    lea         edx,[ebp-40]
 0053D850    xor         ecx,ecx
 0053D852    mov         eax,53DE88;'Value OffsetDW: %x'
 0053D857    call        0040D630
 0053D85C    mov         edx,dword ptr [ebp-5C]
 0053D85F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D864    mov         eax,dword ptr [eax]
 0053D866    mov         eax,dword ptr [eax+2F8]
 0053D86C    mov         eax,dword ptr [eax+248]
 0053D872    mov         ecx,dword ptr [eax]
 0053D874    call        dword ptr [ecx+38]
 0053D877    mov         eax,dword ptr [ebp-8]
 0053D87A    call        TStream.GetPosition
 0053D87F    push        edx
 0053D880    push        eax
 0053D881    mov         eax,dword ptr [ebp-14]
 0053D884    shl         eax,2
 0053D887    xor         edx,edx
 0053D889    add         eax,dword ptr [esp]
 0053D88C    adc         edx,dword ptr [esp+4]
 0053D890    add         esp,8
 0053D893    add         eax,1
 0053D896    adc         edx,0
 0053D899    mov         dword ptr [ebp-10],eax
 0053D89C    mov         dword ptr [ebp-0C],edx
 0053D89F    mov         eax,dword ptr [ebp-10]
 0053D8A2    mov         edx,dword ptr [ebp-0C]
 0053D8A5    add         eax,4
 0053D8A8    adc         edx,0
 0053D8AB    sub         eax,1
 0053D8AE    sbb         edx,0
 0053D8B1    and         eax,0FFFFFFFC
 0053D8B7    mov         dword ptr [ebp-10],eax
 0053D8BA    mov         dword ptr [ebp-0C],edx
 0053D8BD    push        10
 0053D8BF    call        user32.GetKeyState
 0053D8C4    test        ax,ax
>0053D8C7    jge         0053D901
 0053D8C9    lea         eax,[ebp-60]
 0053D8CC    push        eax
 0053D8CD    lea         eax,[ebp-10]
 0053D8D0    mov         dword ptr [ebp-40],eax
 0053D8D3    mov         byte ptr [ebp-3C],10
 0053D8D7    lea         edx,[ebp-40]
 0053D8DA    xor         ecx,ecx
 0053D8DC    mov         eax,53DEA4;'Value Offset  : %x'
 0053D8E1    call        0040D630
 0053D8E6    mov         edx,dword ptr [ebp-60]
 0053D8E9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D8EE    mov         eax,dword ptr [eax]
 0053D8F0    mov         eax,dword ptr [eax+2F8]
 0053D8F6    mov         eax,dword ptr [eax+248]
 0053D8FC    mov         ecx,dword ptr [eax]
 0053D8FE    call        dword ptr [ecx+38]
 0053D901    xor         ecx,ecx
 0053D903    mov         edx,dword ptr [ebp-10]
 0053D906    mov         eax,dword ptr [ebp-8]
 0053D909    mov         ebx,dword ptr [eax]
 0053D90B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053D90E    mov         eax,dword ptr [ebp-8]
 0053D911    call        004CE58C
 0053D916    mov         dword ptr [ebp-18],eax
 0053D919    push        10
 0053D91B    call        user32.GetKeyState
 0053D920    test        ax,ax
>0053D923    jge         0053D95D
 0053D925    lea         eax,[ebp-64]
 0053D928    push        eax
 0053D929    mov         eax,dword ptr [ebp-18]
 0053D92C    mov         dword ptr [ebp-40],eax
 0053D92F    mov         byte ptr [ebp-3C],0
 0053D933    lea         edx,[ebp-40]
 0053D936    xor         ecx,ecx
 0053D938    mov         eax,53DEC0;'Value         : %x'
 0053D93D    call        0040D630
 0053D942    mov         edx,dword ptr [ebp-64]
 0053D945    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D94A    mov         eax,dword ptr [eax]
 0053D94C    mov         eax,dword ptr [eax+2F8]
 0053D952    mov         eax,dword ptr [eax+248]
 0053D958    mov         ecx,dword ptr [eax]
 0053D95A    call        dword ptr [ecx+38]
 0053D95D    mov         eax,dword ptr [ebp-4]
 0053D960    mov         edx,dword ptr [ebp-18]
 0053D963    mov         dword ptr [eax+31C],edx;TfmRamHd.?f31C:dword
 0053D969    lea         eax,[ebp-68]
 0053D96C    push        eax
 0053D96D    mov         eax,dword ptr [ebp-18]
 0053D970    mov         dword ptr [ebp-40],eax
 0053D973    mov         byte ptr [ebp-3C],0
 0053D977    lea         edx,[ebp-40]
 0053D97A    xor         ecx,ecx
 0053D97C    mov         eax,53DEDC;'$%x'
 0053D981    call        0040D630
 0053D986    mov         edx,dword ptr [ebp-68]
 0053D989    mov         eax,dword ptr [ebp-4]
 0053D98C    mov         eax,dword ptr [eax+314];TfmRamHd.edAdress:TLabeledEdit
 0053D992    call        TPanel.SetCaption
 0053D997    mov         eax,dword ptr [ebp-18]
 0053D99A    and         eax,0FFFF0000
 0053D99F    cmp         eax,4000000
>0053D9A4    jne         0053DC31
 0053D9AA    mov         eax,dword ptr [ebp-8]
 0053D9AD    call        00423F20
 0053D9B2    mov         eax,dword ptr [ebp-18]
 0053D9B5    sub         eax,2
 0053D9B8    mov         ecx,dword ptr [ebp-8]
 0053D9BB    mov         edx,200
 0053D9C0    call        004D1204
 0053D9C5    test        al,al
>0053D9C7    je          0053DC0F
 0053D9CD    push        10
 0053D9CF    call        user32.GetKeyState
 0053D9D4    test        ax,ax
>0053D9D7    jge         0053D9F6
 0053D9D9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053D9DE    mov         eax,dword ptr [eax]
 0053D9E0    mov         eax,dword ptr [eax+2F8]
 0053D9E6    mov         eax,dword ptr [eax+248]
 0053D9EC    mov         edx,53DEE8;'Read SERVO_DATA - OK'
 0053D9F1    mov         ecx,dword ptr [eax]
 0053D9F3    call        dword ptr [ecx+38]
 0053D9F6    xor         ecx,ecx
 0053D9F8    xor         edx,edx
 0053D9FA    mov         eax,dword ptr [ebp-8]
 0053D9FD    mov         ebx,dword ptr [eax]
 0053D9FF    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053DA02    lea         eax,[ebp-20]
 0053DA05    mov         edx,53DD8C;'Heads Map is:'
 0053DA0A    call        @LStrLAsg
 0053DA0F    xor         eax,eax
 0053DA11    mov         dword ptr [ebp-1C],eax
 0053DA14    mov         eax,dword ptr [ebp-8]
 0053DA17    call        004CE528
 0053DA1C    mov         byte ptr [ebp-21],al
 0053DA1F    push        dword ptr [ebp-20]
 0053DA22    lea         ecx,[ebp-6C]
 0053DA25    xor         eax,eax
 0053DA27    mov         al,byte ptr [ebp-21]
 0053DA2A    mov         edx,2
 0053DA2F    call        IntToHex
 0053DA34    push        dword ptr [ebp-6C]
 0053DA37    push        53DDA4;' '
 0053DA3C    lea         eax,[ebp-20]
 0053DA3F    mov         edx,3
 0053DA44    call        @LStrCatN
 0053DA49    inc         dword ptr [ebp-1C]
 0053DA4C    cmp         dword ptr [ebp-1C],12
>0053DA50    jne         0053DA14
 0053DA52    push        10
 0053DA54    call        user32.GetKeyState
 0053DA59    test        ax,ax
>0053DA5C    jge         0053DA79
 0053DA5E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DA63    mov         eax,dword ptr [eax]
 0053DA65    mov         eax,dword ptr [eax+2F8]
 0053DA6B    mov         eax,dword ptr [eax+248]
 0053DA71    mov         edx,dword ptr [ebp-20]
 0053DA74    mov         ecx,dword ptr [eax]
 0053DA76    call        dword ptr [ecx+38]
 0053DA79    xor         ecx,ecx
 0053DA7B    xor         edx,edx
 0053DA7D    mov         eax,dword ptr [ebp-8]
 0053DA80    mov         ebx,dword ptr [eax]
 0053DA82    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053DA85    mov         eax,dword ptr [ebp-8]
 0053DA88    call        004CE528
 0053DA8D    mov         byte ptr [ebp-22],al
 0053DA90    cmp         byte ptr [ebp-22],0
>0053DA94    jne         0053DAA3
 0053DA96    mov         eax,dword ptr [ebp-8]
 0053DA99    call        004CE528
 0053DA9E    mov         byte ptr [ebp-22],al
>0053DAA1    jmp         0053DAB4
 0053DAA3    mov         cx,1
 0053DAA7    mov         edx,1
 0053DAAC    mov         eax,dword ptr [ebp-8]
 0053DAAF    mov         ebx,dword ptr [eax]
 0053DAB1    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053DAB4    push        10
 0053DAB6    call        user32.GetKeyState
 0053DABB    test        ax,ax
>0053DABE    jge         0053DAFA
 0053DAC0    lea         eax,[ebp-70]
 0053DAC3    push        eax
 0053DAC4    xor         eax,eax
 0053DAC6    mov         al,byte ptr [ebp-22]
 0053DAC9    mov         dword ptr [ebp-40],eax
 0053DACC    mov         byte ptr [ebp-3C],0
 0053DAD0    lea         edx,[ebp-40]
 0053DAD3    xor         ecx,ecx
 0053DAD5    mov         eax,53DF08;'Heads Amount  : %x'
 0053DADA    call        0040D630
 0053DADF    mov         edx,dword ptr [ebp-70]
 0053DAE2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DAE7    mov         eax,dword ptr [eax]
 0053DAE9    mov         eax,dword ptr [eax+2F8]
 0053DAEF    mov         eax,dword ptr [eax+248]
 0053DAF5    mov         ecx,dword ptr [eax]
 0053DAF7    call        dword ptr [ecx+38]
 0053DAFA    lea         eax,[ebp-74]
 0053DAFD    push        eax
 0053DAFE    xor         eax,eax
 0053DB00    mov         al,byte ptr [ebp-22]
 0053DB03    mov         dword ptr [ebp-40],eax
 0053DB06    mov         byte ptr [ebp-3C],0
 0053DB0A    lea         edx,[ebp-40]
 0053DB0D    xor         ecx,ecx
 0053DB0F    mov         eax,53DDB0;'%x'
 0053DB14    call        0040D630
 0053DB19    mov         edx,dword ptr [ebp-74]
 0053DB1C    mov         eax,dword ptr [ebp-4]
 0053DB1F    mov         eax,dword ptr [eax+310];TfmRamHd.edHd:TLabeledEdit
 0053DB25    call        TPanel.SetCaption
 0053DB2A    cmp         byte ptr [ebp-22],9
>0053DB2E    jae         0053DBA4
 0053DB30    lea         eax,[ebp-20]
 0053DB33    call        @LStrClr
 0053DB38    xor         eax,eax
 0053DB3A    mov         al,byte ptr [ebp-22]
 0053DB3D    test        eax,eax
>0053DB3F    jle         0053DB88
 0053DB41    mov         dword ptr [ebp-28],eax
 0053DB44    mov         dword ptr [ebp-1C],1
 0053DB4B    mov         eax,dword ptr [ebp-8]
 0053DB4E    call        004CE528
 0053DB53    mov         byte ptr [ebp-21],al
 0053DB56    push        dword ptr [ebp-20]
 0053DB59    lea         ecx,[ebp-78]
 0053DB5C    xor         eax,eax
 0053DB5E    mov         al,byte ptr [ebp-21]
 0053DB61    mov         edx,1
 0053DB66    call        IntToHex
 0053DB6B    push        dword ptr [ebp-78]
 0053DB6E    push        53DDA4;' '
 0053DB73    lea         eax,[ebp-20]
 0053DB76    mov         edx,3
 0053DB7B    call        @LStrCatN
 0053DB80    inc         dword ptr [ebp-1C]
 0053DB83    dec         dword ptr [ebp-28]
>0053DB86    jne         0053DB4B
 0053DB88    lea         edx,[ebp-7C]
 0053DB8B    mov         eax,dword ptr [ebp-20]
 0053DB8E    call        0040BFEC
 0053DB93    mov         edx,dword ptr [ebp-7C]
 0053DB96    mov         eax,dword ptr [ebp-4]
 0053DB99    mov         eax,dword ptr [eax+300];TfmRamHd.edMap:TLabeledEdit
 0053DB9F    call        TPanel.SetCaption
 0053DBA4    cmp         byte ptr [ebp-22],0
>0053DBA8    jne         0053DBD4
 0053DBAA    mov         eax,53DDBC;'Heads Amount: 0'+#10+Use "Spin Up"'
 0053DBAF    call        0043F8B4
 0053DBB4    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053DBBA    mov         edx,dword ptr [edx]
 0053DBBC    lea         eax,[ebp-80]
 0053DBBF    mov         ecx,53DDE4;'SERVO_DATA.bin'
 0053DBC4    call        @LStrCat3
 0053DBC9    mov         edx,dword ptr [ebp-80]
 0053DBCC    mov         eax,dword ptr [ebp-8]
 0053DBCF    call        00423E84
 0053DBD4    push        10
 0053DBD6    call        user32.GetKeyState
 0053DBDB    test        ax,ax
>0053DBDE    jge         0053DCF9
 0053DBE4    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053DBEA    mov         edx,dword ptr [edx]
 0053DBEC    lea         eax,[ebp-84]
 0053DBF2    mov         ecx,53DDE4;'SERVO_DATA.bin'
 0053DBF7    call        @LStrCat3
 0053DBFC    mov         edx,dword ptr [ebp-84]
 0053DC02    mov         eax,dword ptr [ebp-8]
 0053DC05    call        00423E84
>0053DC0A    jmp         0053DCF9
 0053DC0F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DC14    mov         eax,dword ptr [eax]
 0053DC16    mov         eax,dword ptr [eax+2F8]
 0053DC1C    mov         eax,dword ptr [eax+248]
 0053DC22    mov         edx,53DDFC;'Read SERVO_DATA - ERROR'
 0053DC27    mov         ecx,dword ptr [eax]
 0053DC29    call        dword ptr [ecx+38]
>0053DC2C    jmp         0053DCF9
 0053DC31    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DC36    mov         eax,dword ptr [eax]
 0053DC38    mov         eax,dword ptr [eax+2F8]
 0053DC3E    mov         eax,dword ptr [eax+248]
 0053DC44    mov         edx,53DF24;'Incorect Value'
 0053DC49    mov         ecx,dword ptr [eax]
 0053DC4B    call        dword ptr [ecx+38]
>0053DC4E    jmp         0053DCF9
 0053DC53    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DC58    mov         eax,dword ptr [eax]
 0053DC5A    mov         eax,dword ptr [eax+2F8]
 0053DC60    mov         eax,dword ptr [eax+248]
 0053DC66    mov         edx,53DF3C;'Pattern Offset - NOT FOUND'
 0053DC6B    mov         ecx,dword ptr [eax]
 0053DC6D    call        dword ptr [ecx+38]
 0053DC70    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053DC76    mov         edx,dword ptr [edx]
 0053DC78    lea         eax,[ebp-88]
 0053DC7E    mov         ecx,53DE54;'SERVO_CODE.bin'
 0053DC83    call        @LStrCat3
 0053DC88    mov         edx,dword ptr [ebp-88]
 0053DC8E    mov         eax,dword ptr [ebp-8]
 0053DC91    call        00423E84
 0053DC96    mov         eax,dword ptr [ebp-8]
 0053DC99    call        00423F20
 0053DC9E    mov         ecx,dword ptr [ebp-8]
 0053DCA1    mov         edx,20000
 0053DCA6    mov         eax,4000000
 0053DCAB    call        004D1204
 0053DCB0    test        al,al
>0053DCB2    je          0053DCF9
 0053DCB4    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053DCBA    mov         edx,dword ptr [edx]
 0053DCBC    lea         eax,[ebp-8C]
 0053DCC2    mov         ecx,53DDE4;'SERVO_DATA.bin'
 0053DCC7    call        @LStrCat3
 0053DCCC    mov         edx,dword ptr [ebp-8C]
 0053DCD2    mov         eax,dword ptr [ebp-8]
 0053DCD5    call        00423E84
>0053DCDA    jmp         0053DCF9
 0053DCDC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053DCE1    mov         eax,dword ptr [eax]
 0053DCE3    mov         eax,dword ptr [eax+2F8]
 0053DCE9    mov         eax,dword ptr [eax+248]
 0053DCEF    mov         edx,53DF60;'Read SERVO_CODE - ERROR'
 0053DCF4    mov         ecx,dword ptr [eax]
 0053DCF6    call        dword ptr [ecx+38]
 0053DCF9    xor         eax,eax
 0053DCFB    pop         edx
 0053DCFC    pop         ecx
 0053DCFD    pop         ecx
 0053DCFE    mov         dword ptr fs:[eax],edx
 0053DD01    push        53DD16
 0053DD06    mov         eax,dword ptr [ebp-8]
 0053DD09    call        TObject.Free
 0053DD0E    ret
>0053DD0F    jmp         @HandleFinally
>0053DD14    jmp         0053DD06
 0053DD16    mov         al,1
 0053DD18    call        0053D080
 0053DD1D    xor         eax,eax
 0053DD1F    pop         edx
 0053DD20    pop         ecx
 0053DD21    pop         ecx
 0053DD22    mov         dword ptr fs:[eax],edx
 0053DD25    push        53DD5F
 0053DD2A    lea         eax,[ebp-8C]
 0053DD30    mov         edx,13
 0053DD35    call        @LStrArrayClr
 0053DD3A    lea         eax,[ebp-38]
 0053DD3D    mov         edx,2
 0053DD42    call        @LStrArrayClr
 0053DD47    lea         eax,[ebp-30]
 0053DD4A    call        @LStrClr
 0053DD4F    lea         eax,[ebp-20]
 0053DD52    call        @LStrClr
 0053DD57    ret
>0053DD58    jmp         @HandleFinally
>0053DD5D    jmp         0053DD2A
 0053DD5F    pop         ebx
 0053DD60    mov         esp,ebp
 0053DD62    pop         ebp
 0053DD63    ret
*}
end;

//0053DF78
procedure TfmRamHd.btSoftResetClick(Sender:TObject);
begin
{*
 0053DF78    push        ebp
 0053DF79    mov         ebp,esp
 0053DF7B    add         esp,0FFFFFFF8
 0053DF7E    mov         dword ptr [ebp-8],edx
 0053DF81    mov         dword ptr [ebp-4],eax
 0053DF84    xor         eax,eax
 0053DF86    call        0053D080
 0053DF8B    call        00560360
 0053DF90    mov         eax,[0056E3F8];^gvar_0059BF4C
 0053DF95    cmp         byte ptr [eax],0
>0053DF98    je          0053DFAB
 0053DF9A    call        004CEB6C
 0053DF9F    mov         eax,53DFC8;'Soft Reset - '
 0053DFA4    call        00544F6C
>0053DFA9    jmp         0053DFB5
 0053DFAB    mov         eax,53DFE0;'Soft Reset - OK'
 0053DFB0    call        00544EB4
 0053DFB5    mov         al,1
 0053DFB7    call        0053D080
 0053DFBC    pop         ecx
 0053DFBD    pop         ecx
 0053DFBE    pop         ebp
 0053DFBF    ret
*}
end;

//0053DFF0
procedure TfmRamHd.btSupResetClick(Sender:TObject);
begin
{*
 0053DFF0    push        ebp
 0053DFF1    mov         ebp,esp
 0053DFF3    add         esp,0FFFFFFF8
 0053DFF6    mov         dword ptr [ebp-8],edx
 0053DFF9    mov         dword ptr [ebp-4],eax
 0053DFFC    xor         eax,eax
 0053DFFE    call        0053D080
 0053E003    mov         ax,3
 0053E007    call        004CF350
 0053E00C    push        1F4
 0053E011    call        kernel32.Sleep
 0053E016    call        004CEB6C
 0053E01B    mov         eax,53E038;'Super Soft Reset - '
 0053E020    call        00544F6C
 0053E025    mov         al,1
 0053E027    call        0053D080
 0053E02C    pop         ecx
 0053E02D    pop         ecx
 0053E02E    pop         ebp
 0053E02F    ret
*}
end;

//0053E04C
procedure TfmRamHd.btRecalibrateClick(Sender:TObject);
begin
{*
 0053E04C    push        ebp
 0053E04D    mov         ebp,esp
 0053E04F    add         esp,0FFFFFFF8
 0053E052    mov         dword ptr [ebp-8],edx
 0053E055    mov         dword ptr [ebp-4],eax
 0053E058    xor         eax,eax
 0053E05A    call        0053D080
 0053E05F    mov         eax,[0056E5A4];^gvar_0056DF04
 0053E064    mov         byte ptr [eax],0
 0053E067    push        0
 0053E069    push        0
 0053E06B    push        0A0
 0053E070    push        10
 0053E072    xor         ecx,ecx
 0053E074    xor         edx,edx
 0053E076    xor         eax,eax
 0053E078    call        0055FFC4
 0053E07D    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0053E082    cmp         byte ptr [eax],0
>0053E085    je          0053E08E
 0053E087    call        005600F0
>0053E08C    jmp         0053E093
 0053E08E    call        00560080
 0053E093    mov         eax,[0056E3F8];^gvar_0059BF4C
 0053E098    cmp         byte ptr [eax],0
>0053E09B    jne         0053E0B3
 0053E09D    mov         eax,[0056E5A4];^gvar_0056DF04
 0053E0A2    cmp         byte ptr [eax],0
>0053E0A5    jne         0053E0B3
 0053E0A7    mov         eax,53E0D8;'Recalibrate - OK'
 0053E0AC    call        00544EB4
>0053E0B1    jmp         0053E0C2
 0053E0B3    call        004CEB6C
 0053E0B8    mov         eax,53E0F4;'Recalibrate - '
 0053E0BD    call        00544F6C
 0053E0C2    mov         al,1
 0053E0C4    call        0053D080
 0053E0C9    pop         ecx
 0053E0CA    pop         ecx
 0053E0CB    pop         ebp
 0053E0CC    ret
*}
end;

//0053E104
procedure TfmRamHd.btSetClick(Sender:TObject);
begin
{*
 0053E104    push        ebp
 0053E105    mov         ebp,esp
 0053E107    mov         ecx,0A
 0053E10C    push        0
 0053E10E    push        0
 0053E110    dec         ecx
>0053E111    jne         0053E10C
 0053E113    push        ebx
 0053E114    mov         dword ptr [ebp-20],edx
 0053E117    mov         dword ptr [ebp-4],eax
 0053E11A    xor         eax,eax
 0053E11C    push        ebp
 0053E11D    push        53E40E
 0053E122    push        dword ptr fs:[eax]
 0053E125    mov         dword ptr fs:[eax],esp
 0053E128    xor         eax,eax
 0053E12A    call        0053D080
 0053E12F    mov         eax,dword ptr [ebp-4]
 0053E132    cmp         dword ptr [eax+31C],0;TfmRamHd.?f31C:dword
>0053E139    jbe         0053E3BD
 0053E13F    mov         dl,1
 0053E141    mov         eax,[0041DE14];TMemoryStream
 0053E146    call        TObject.Create;TMemoryStream.Create
 0053E14B    mov         dword ptr [ebp-8],eax
 0053E14E    xor         eax,eax
 0053E150    push        ebp
 0053E151    push        53E3B6
 0053E156    push        dword ptr fs:[eax]
 0053E159    mov         dword ptr fs:[eax],esp
 0053E15C    mov         edx,9
 0053E161    mov         eax,dword ptr [ebp-8]
 0053E164    mov         ecx,dword ptr [eax]
 0053E166    call        dword ptr [ecx+4];TMemoryStream.sub_0042401C
 0053E169    lea         edx,[ebp-24]
 0053E16C    mov         eax,dword ptr [ebp-4]
 0053E16F    mov         eax,dword ptr [eax+300];TfmRamHd.edMap:TLabeledEdit
 0053E175    call        TPanel.GetCaption
 0053E17A    mov         eax,dword ptr [ebp-24]
 0053E17D    lea         edx,[ebp-10]
 0053E180    call        0040BFEC
 0053E185    mov         eax,dword ptr [ebp-10]
 0053E188    call        @LStrLen
 0053E18D    test        eax,eax
>0053E18F    jle         0053E396
 0053E195    xor         ecx,ecx
 0053E197    xor         edx,edx
 0053E199    mov         eax,dword ptr [ebp-8]
 0053E19C    mov         ebx,dword ptr [eax]
 0053E19E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053E1A1    mov         eax,dword ptr [ebp-10]
 0053E1A4    call        @LStrLen
 0053E1A9    and         eax,80000001
>0053E1AE    jns         0053E1B5
 0053E1B0    dec         eax
 0053E1B1    or          eax,0FFFFFFFE
 0053E1B4    inc         eax
 0053E1B5    test        eax,eax
>0053E1B7    jle         0053E1C6
 0053E1B9    lea         eax,[ebp-10]
 0053E1BC    mov         edx,53E424;' '
 0053E1C1    call        @LStrCat
 0053E1C6    mov         eax,dword ptr [ebp-10]
 0053E1C9    call        @LStrLen
 0053E1CE    sar         eax,1
>0053E1D0    jns         0053E1D5
 0053E1D2    adc         eax,0
 0053E1D5    mov         dword ptr [ebp-18],eax
 0053E1D8    xor         eax,eax
 0053E1DA    mov         dword ptr [ebp-0C],eax
 0053E1DD    mov         eax,dword ptr [ebp-0C]
 0053E1E0    cmp         eax,dword ptr [ebp-18]
>0053E1E3    jae         0053E23B
 0053E1E5    lea         eax,[ebp-30]
 0053E1E8    mov         edx,dword ptr [ebp-0C]
 0053E1EB    add         edx,edx
 0053E1ED    mov         ecx,dword ptr [ebp-10]
 0053E1F0    mov         dl,byte ptr [ecx+edx]
 0053E1F3    call        @LStrFromChar
 0053E1F8    mov         eax,dword ptr [ebp-30]
 0053E1FB    lea         edx,[ebp-2C]
 0053E1FE    call        0040BFEC
 0053E203    mov         ecx,dword ptr [ebp-2C]
 0053E206    lea         eax,[ebp-28]
 0053E209    mov         edx,53E430;'$'
 0053E20E    call        @LStrCat3
 0053E213    mov         eax,dword ptr [ebp-28]
 0053E216    xor         edx,edx
 0053E218    call        0040C4A8
 0053E21D    mov         byte ptr [ebp-11],al
 0053E220    lea         edx,[ebp-11]
 0053E223    mov         ecx,1
 0053E228    mov         eax,dword ptr [ebp-8]
 0053E22B    call        TStream.WriteBuffer
 0053E230    inc         dword ptr [ebp-0C]
 0053E233    mov         eax,dword ptr [ebp-0C]
 0053E236    cmp         eax,dword ptr [ebp-18]
>0053E239    jb          0053E1E5
 0053E23B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053E240    mov         eax,dword ptr [eax]
 0053E242    mov         eax,dword ptr [eax+2F8]
 0053E248    mov         eax,dword ptr [eax+248]
 0053E24E    xor         edx,edx
 0053E250    mov         ecx,dword ptr [eax]
 0053E252    call        dword ptr [ecx+38]
 0053E255    push        10
 0053E257    call        user32.GetKeyState
 0053E25C    test        ax,ax
>0053E25F    jge         0053E293
 0053E261    mov         eax,dword ptr [ebp-4]
 0053E264    mov         eax,dword ptr [eax+31C];TfmRamHd.?f31C:dword
 0053E26A    xor         edx,edx
 0053E26C    push        edx
 0053E26D    push        eax
 0053E26E    lea         edx,[ebp-38]
 0053E271    mov         eax,8
 0053E276    call        IntToHex
 0053E27B    mov         ecx,dword ptr [ebp-38]
 0053E27E    lea         eax,[ebp-34]
 0053E281    mov         edx,53E43C;'Head Map Adress is: '
 0053E286    call        @LStrCat3
 0053E28B    mov         eax,dword ptr [ebp-34]
 0053E28E    call        00544EB4
 0053E293    mov         eax,dword ptr [ebp-4]
 0053E296    mov         eax,dword ptr [eax+31C];TfmRamHd.?f31C:dword
 0053E29C    mov         ecx,dword ptr [ebp-8]
 0053E29F    mov         edx,dword ptr [ebp-18]
 0053E2A2    call        004D13AC
 0053E2A7    test        al,al
>0053E2A9    je          0053E2C5
 0053E2AB    lea         eax,[ebp-3C]
 0053E2AE    mov         ecx,dword ptr [ebp-10]
 0053E2B1    mov         edx,53E45C;'New Head Map is   : '
 0053E2B6    call        @LStrCat3
 0053E2BB    mov         eax,dword ptr [ebp-3C]
 0053E2BE    call        00544EB4
>0053E2C3    jmp         0053E2E7
 0053E2C5    push        53E47C;'Write New Head Map "'
 0053E2CA    push        dword ptr [ebp-10]
 0053E2CD    push        53E49C;'" - '
 0053E2D2    lea         eax,[ebp-40]
 0053E2D5    mov         edx,3
 0053E2DA    call        @LStrCatN
 0053E2DF    mov         eax,dword ptr [ebp-40]
 0053E2E2    call        00544F6C
 0053E2E7    lea         edx,[ebp-48]
 0053E2EA    mov         eax,dword ptr [ebp-4]
 0053E2ED    mov         eax,dword ptr [eax+310];TfmRamHd.edHd:TLabeledEdit
 0053E2F3    call        TPanel.GetCaption
 0053E2F8    mov         ecx,dword ptr [ebp-48]
 0053E2FB    lea         eax,[ebp-44]
 0053E2FE    mov         edx,53E430;'$'
 0053E303    call        @LStrCat3
 0053E308    mov         eax,dword ptr [ebp-44]
 0053E30B    xor         edx,edx
 0053E30D    call        0040C4A8
 0053E312    mov         byte ptr [ebp-19],al
 0053E315    xor         ecx,ecx
 0053E317    xor         edx,edx
 0053E319    mov         eax,dword ptr [ebp-8]
 0053E31C    mov         ebx,dword ptr [eax]
 0053E31E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053E321    lea         edx,[ebp-19]
 0053E324    mov         ecx,1
 0053E329    mov         eax,dword ptr [ebp-8]
 0053E32C    call        TStream.WriteBuffer
 0053E331    lea         edx,[ebp-19]
 0053E334    mov         ecx,1
 0053E339    mov         eax,dword ptr [ebp-8]
 0053E33C    call        TStream.WriteBuffer
 0053E341    mov         eax,dword ptr [ebp-4]
 0053E344    mov         eax,dword ptr [eax+31C];TfmRamHd.?f31C:dword
 0053E34A    sub         eax,2
 0053E34D    mov         ecx,dword ptr [ebp-8]
 0053E350    mov         edx,2
 0053E355    call        004D13AC
 0053E35A    test        al,al
>0053E35C    je          0053E38A
 0053E35E    lea         ecx,[ebp-50]
 0053E361    xor         eax,eax
 0053E363    mov         al,byte ptr [ebp-19]
 0053E366    mov         edx,1
 0053E36B    call        IntToHex
 0053E370    mov         ecx,dword ptr [ebp-50]
 0053E373    lea         eax,[ebp-4C]
 0053E376    mov         edx,53E4AC;'New Head Count is   : '
 0053E37B    call        @LStrCat3
 0053E380    mov         eax,dword ptr [ebp-4C]
 0053E383    call        00544EB4
>0053E388    jmp         0053E3A0
 0053E38A    mov         eax,53E4CC;'Write New Head Count - '
 0053E38F    call        00544F6C
>0053E394    jmp         0053E3A0
 0053E396    mov         eax,53E4EC;'No New Head Map'+#10+Plese Enter New Heads Map'
 0053E39B    call        0043F8B4
 0053E3A0    xor         eax,eax
 0053E3A2    pop         edx
 0053E3A3    pop         ecx
 0053E3A4    pop         ecx
 0053E3A5    mov         dword ptr fs:[eax],edx
 0053E3A8    push        53E3C7
 0053E3AD    mov         eax,dword ptr [ebp-8]
 0053E3B0    call        TObject.Free
 0053E3B5    ret
>0053E3B6    jmp         @HandleFinally
>0053E3BB    jmp         0053E3AD
 0053E3BD    mov         eax,53E520;'No Head Map Adress'+#10+Use "Get Heads Map" before'
 0053E3C2    call        0043F8B4
 0053E3C7    mov         al,1
 0053E3C9    call        0053D080
 0053E3CE    xor         eax,eax
 0053E3D0    pop         edx
 0053E3D1    pop         ecx
 0053E3D2    pop         ecx
 0053E3D3    mov         dword ptr fs:[eax],edx
 0053E3D6    push        53E415
 0053E3DB    lea         eax,[ebp-50]
 0053E3DE    mov         edx,2
 0053E3E3    call        @LStrArrayClr
 0053E3E8    lea         eax,[ebp-48]
 0053E3EB    call        @LStrClr
 0053E3F0    lea         eax,[ebp-44]
 0053E3F3    mov         edx,8
 0053E3F8    call        @LStrArrayClr
 0053E3FD    lea         eax,[ebp-24]
 0053E400    call        @LStrClr
 0053E405    lea         eax,[ebp-10]
 0053E408    call        @LStrClr
 0053E40D    ret
>0053E40E    jmp         @HandleFinally
>0053E413    jmp         0053E3DB
 0053E415    pop         ebx
 0053E416    mov         esp,ebp
 0053E418    pop         ebp
 0053E419    ret
*}
end;

//0053E550
procedure TfmRamHd.cbManualClick(Sender:TObject);
begin
{*
 0053E550    push        ebp
 0053E551    mov         ebp,esp
 0053E553    add         esp,0FFFFFFF8
 0053E556    mov         dword ptr [ebp-8],edx
 0053E559    mov         dword ptr [ebp-4],eax
 0053E55C    mov         eax,dword ptr [ebp-4]
 0053E55F    mov         eax,dword ptr [eax+318];TfmRamHd.cbManual:TCheckBox
 0053E565    mov         edx,dword ptr [eax]
 0053E567    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053E56D    mov         edx,eax
 0053E56F    mov         eax,dword ptr [ebp-4]
 0053E572    mov         eax,dword ptr [eax+314];TfmRamHd.edAdress:TLabeledEdit
 0053E578    call        TImage.SetVisible
 0053E57D    pop         ecx
 0053E57E    pop         ecx
 0053E57F    pop         ebp
 0053E580    ret
*}
end;

//0053E584
{*procedure TfmRamHd.edMapChange(?:?);
begin
 0053E584    push        ebp
 0053E585    mov         ebp,esp
 0053E587    add         esp,0FFFFFFF4
 0053E58A    xor         ecx,ecx
 0053E58C    mov         dword ptr [ebp-0C],ecx
 0053E58F    mov         dword ptr [ebp-8],edx
 0053E592    mov         dword ptr [ebp-4],eax
 0053E595    xor         eax,eax
 0053E597    push        ebp
 0053E598    push        53E5DD
 0053E59D    push        dword ptr fs:[eax]
 0053E5A0    mov         dword ptr fs:[eax],esp
 0053E5A3    lea         edx,[ebp-0C]
 0053E5A6    mov         eax,dword ptr [ebp-4]
 0053E5A9    mov         eax,dword ptr [eax+314];TfmRamHd.edAdress:TLabeledEdit
 0053E5AF    call        TPanel.GetCaption
 0053E5B4    mov         eax,dword ptr [ebp-0C]
 0053E5B7    xor         edx,edx
 0053E5B9    call        0040C4A8
 0053E5BE    mov         edx,dword ptr [ebp-4]
 0053E5C1    mov         dword ptr [edx+31C],eax;TfmRamHd.?f31C:dword
 0053E5C7    xor         eax,eax
 0053E5C9    pop         edx
 0053E5CA    pop         ecx
 0053E5CB    pop         ecx
 0053E5CC    mov         dword ptr fs:[eax],edx
 0053E5CF    push        53E5E4
 0053E5D4    lea         eax,[ebp-0C]
 0053E5D7    call        @LStrClr
 0053E5DC    ret
>0053E5DD    jmp         @HandleFinally
>0053E5E2    jmp         0053E5D4
 0053E5E4    mov         esp,ebp
 0053E5E6    pop         ebp
 0053E5E7    ret
end;*}

end.