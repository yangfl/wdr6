//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCPs;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmCPs = class(TForm)
  published
    btRead:TButton;//f2F8
    btReadAll:TButton;//f2FC
    btDump:TButton;//f300
    edCpNum:TLabeledEdit;//f304
    edParam:TLabeledEdit;//f308
    cbSelectCp:TComboBox;//f30C
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//005113DC
    procedure FormShow(Sender:TObject);//00511404
    //procedure cbSelectCpChange(?:?);//00511528
    procedure btReadClick(Sender:TObject);//00510EE0
    procedure btReadAllClick(Sender:TObject);//00511074
    procedure btDumpClick(Sender:TObject);//0051128C
  end;
    procedure sub_00510CA4(?:TfmCPs; ?:TfmHDD);//00510CA4
    //function sub_00510CF8(?:?; ?:?):?;//00510CF8

implementation

{$R *.DFM}

//00510CA4
procedure sub_00510CA4(?:TfmCPs; ?:TfmHDD);
begin
{*
 00510CA4    push        ebp
 00510CA5    mov         ebp,esp
 00510CA7    add         esp,0FFFFFFF8
 00510CAA    mov         dword ptr [ebp-8],edx
 00510CAD    mov         dword ptr [ebp-4],eax
 00510CB0    cmp         dword ptr ds:[56D44C],0;gvar_0056D44C:TfmCPs
>00510CB7    jne         00510CCD
 00510CB9    mov         ecx,dword ptr [ebp-8]
 00510CBC    mov         dl,1
 00510CBE    mov         eax,[00510A60];TfmCPs
 00510CC3    call        TfmProgress.Create;TfmCPs.Create
 00510CC8    mov         [0056D44C],eax;gvar_0056D44C:TfmCPs
 00510CCD    mov         eax,[0056D44C];0x0 gvar_0056D44C:TfmCPs
 00510CD2    cmp         byte ptr [eax+1A6],0;TfmCPs.FShowing:Boolean
>00510CD9    je          00510CEA
 00510CDB    mov         eax,[0056D44C];0x0 gvar_0056D44C:TfmCPs
 00510CE0    mov         edx,dword ptr [eax]
 00510CE2    call        dword ptr [edx+0C4];TfmCPs.sub_004A746C
>00510CE8    jmp         00510CF4
 00510CEA    mov         eax,[0056D44C];0x0 gvar_0056D44C:TfmCPs
 00510CEF    call        004A7450
 00510CF4    pop         ecx
 00510CF5    pop         ecx
 00510CF6    pop         ebp
 00510CF7    ret
*}
end;

//00510CF8
{*function sub_00510CF8(?:?; ?:?):?;
begin
 00510CF8    push        ebp
 00510CF9    mov         ebp,esp
 00510CFB    mov         ecx,4
 00510D00    push        0
 00510D02    push        0
 00510D04    dec         ecx
>00510D05    jne         00510D00
 00510D07    push        ecx
 00510D08    mov         word ptr [ebp-4],dx
 00510D0C    mov         word ptr [ebp-2],ax
 00510D10    xor         eax,eax
 00510D12    push        ebp
 00510D13    push        510E7F
 00510D18    push        dword ptr fs:[eax]
 00510D1B    mov         dword ptr fs:[eax],esp
 00510D1E    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00510D24    mov         edx,dword ptr [edx]
 00510D26    lea         eax,[ebp-14]
 00510D29    mov         ecx,510E98;'CPs'
 00510D2E    call        @LStrCat3
 00510D33    mov         eax,dword ptr [ebp-14]
 00510D36    call        0040C9A4
 00510D3B    test        al,al
>00510D3D    jne         00510D71
 00510D3F    push        510EA4;'Cannot create '
 00510D44    mov         eax,[0056E2D0];^gvar_0056DF38
 00510D49    push        dword ptr [eax]
 00510D4B    push        510E98;'CPs'
 00510D50    lea         eax,[ebp-18]
 00510D53    mov         edx,3
 00510D58    call        @LStrCatN
 00510D5D    mov         ecx,dword ptr [ebp-18]
 00510D60    mov         dl,1
 00510D62    mov         eax,[0040B004];Exception
 00510D67    call        Exception.Create;Exception.Create
 00510D6C    call        @RaiseExcept
 00510D71    mov         dl,1
 00510D73    mov         eax,[0041DE14];TMemoryStream
 00510D78    call        TObject.Create;TMemoryStream.Create
 00510D7D    mov         dword ptr [ebp-0C],eax
 00510D80    mov         eax,[0056E5A4];^gvar_0056DF04
 00510D85    mov         byte ptr [eax],0
 00510D88    mov         byte ptr [ebp-5],0
 00510D8C    xor         eax,eax
 00510D8E    push        ebp
 00510D8F    push        510E5D
 00510D94    push        dword ptr fs:[eax]
 00510D97    mov         dword ptr fs:[eax],esp
 00510D9A    mov         ecx,dword ptr [ebp-0C]
 00510D9D    mov         dx,word ptr [ebp-4]
 00510DA1    mov         ax,word ptr [ebp-2]
 00510DA5    call        004CFEC8
 00510DAA    test        al,al
>00510DAC    je          00510E47
 00510DB2    cmp         word ptr [ebp-4],0
>00510DB7    jne         00510DED
 00510DB9    mov         eax,[0056E2D0];^gvar_0056DF38
 00510DBE    push        dword ptr [eax]
 00510DC0    push        510EBC;'CPs\cp_'
 00510DC5    lea         ecx,[ebp-1C]
 00510DC8    movzx       eax,word ptr [ebp-2]
 00510DCC    mov         edx,2
 00510DD1    call        IntToHex
 00510DD6    push        dword ptr [ebp-1C]
 00510DD9    push        510ECC;'.bin'
 00510DDE    lea         eax,[ebp-10]
 00510DE1    mov         edx,4
 00510DE6    call        @LStrCatN
>00510DEB    jmp         00510E38
 00510DED    mov         eax,[0056E2D0];^gvar_0056DF38
 00510DF2    push        dword ptr [eax]
 00510DF4    push        510EBC;'CPs\cp_'
 00510DF9    lea         ecx,[ebp-20]
 00510DFC    movzx       eax,word ptr [ebp-2]
 00510E00    mov         edx,2
 00510E05    call        IntToHex
 00510E0A    push        dword ptr [ebp-20]
 00510E0D    push        510EDC;'_'
 00510E12    lea         ecx,[ebp-24]
 00510E15    movzx       eax,word ptr [ebp-4]
 00510E19    mov         edx,2
 00510E1E    call        IntToHex
 00510E23    push        dword ptr [ebp-24]
 00510E26    push        510ECC;'.bin'
 00510E2B    lea         eax,[ebp-10]
 00510E2E    mov         edx,6
 00510E33    call        @LStrCatN
 00510E38    mov         edx,dword ptr [ebp-10]
 00510E3B    mov         eax,dword ptr [ebp-0C]
 00510E3E    call        00423E84
 00510E43    mov         byte ptr [ebp-5],1
 00510E47    xor         eax,eax
 00510E49    pop         edx
 00510E4A    pop         ecx
 00510E4B    pop         ecx
 00510E4C    mov         dword ptr fs:[eax],edx
 00510E4F    push        510E64
 00510E54    mov         eax,dword ptr [ebp-0C]
 00510E57    call        TObject.Free
 00510E5C    ret
>00510E5D    jmp         @HandleFinally
>00510E62    jmp         00510E54
 00510E64    xor         eax,eax
 00510E66    pop         edx
 00510E67    pop         ecx
 00510E68    pop         ecx
 00510E69    mov         dword ptr fs:[eax],edx
 00510E6C    push        510E86
 00510E71    lea         eax,[ebp-24]
 00510E74    mov         edx,6
 00510E79    call        @LStrArrayClr
 00510E7E    ret
>00510E7F    jmp         @HandleFinally
>00510E84    jmp         00510E71
 00510E86    mov         al,byte ptr [ebp-5]
 00510E89    mov         esp,ebp
 00510E8B    pop         ebp
 00510E8C    ret
end;*}

//00510EE0
procedure TfmCPs.btReadClick(Sender:TObject);
begin
{*
 00510EE0    push        ebp
 00510EE1    mov         ebp,esp
 00510EE3    xor         ecx,ecx
 00510EE5    push        ecx
 00510EE6    push        ecx
 00510EE7    push        ecx
 00510EE8    push        ecx
 00510EE9    push        ecx
 00510EEA    push        ecx
 00510EEB    push        ecx
 00510EEC    push        ecx
 00510EED    mov         dword ptr [ebp-8],edx
 00510EF0    mov         dword ptr [ebp-4],eax
 00510EF3    xor         eax,eax
 00510EF5    push        ebp
 00510EF6    push        51103B
 00510EFB    push        dword ptr fs:[eax]
 00510EFE    mov         dword ptr fs:[eax],esp
 00510F01    xor         edx,edx
 00510F03    mov         eax,dword ptr [ebp-4]
 00510F06    mov         eax,dword ptr [eax+2FC];TfmCPs.btReadAll:TButton
 00510F0C    mov         ecx,dword ptr [eax]
 00510F0E    call        dword ptr [ecx+64];TImage.SetEnabled
 00510F11    xor         edx,edx
 00510F13    mov         eax,dword ptr [ebp-4]
 00510F16    mov         eax,dword ptr [eax+2F8];TfmCPs.btRead:TButton
 00510F1C    mov         ecx,dword ptr [eax]
 00510F1E    call        dword ptr [ecx+64];TImage.SetEnabled
 00510F21    lea         edx,[ebp-0C]
 00510F24    mov         eax,dword ptr [ebp-4]
 00510F27    mov         eax,dword ptr [eax+308];TfmCPs.edParam:TLabeledEdit
 00510F2D    call        TPanel.GetCaption
 00510F32    mov         eax,dword ptr [ebp-0C]
 00510F35    xor         edx,edx
 00510F37    call        0040C4A8
 00510F3C    push        eax
 00510F3D    lea         edx,[ebp-10]
 00510F40    mov         eax,dword ptr [ebp-4]
 00510F43    mov         eax,dword ptr [eax+304];TfmCPs.edCpNum:TLabeledEdit
 00510F49    call        TPanel.GetCaption
 00510F4E    mov         eax,dword ptr [ebp-10]
 00510F51    xor         edx,edx
 00510F53    call        0040C4A8
 00510F58    pop         edx
 00510F59    call        00510CF8
 00510F5E    test        al,al
>00510F60    je          00510FE6
 00510F66    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00510F6B    cmp         dword ptr [eax],0
>00510F6E    je          00510FE6
 00510F70    push        511050;'CP_'
 00510F75    lea         edx,[ebp-1C]
 00510F78    mov         eax,dword ptr [ebp-4]
 00510F7B    mov         eax,dword ptr [eax+304];TfmCPs.edCpNum:TLabeledEdit
 00510F81    call        TPanel.GetCaption
 00510F86    mov         eax,dword ptr [ebp-1C]
 00510F89    xor         edx,edx
 00510F8B    call        0040C4A8
 00510F90    lea         ecx,[ebp-18]
 00510F93    mov         edx,2
 00510F98    call        IntToHex
 00510F9D    push        dword ptr [ebp-18]
 00510FA0    push        51105C;'_'
 00510FA5    lea         edx,[ebp-20]
 00510FA8    mov         eax,dword ptr [ebp-4]
 00510FAB    mov         eax,dword ptr [eax+308];TfmCPs.edParam:TLabeledEdit
 00510FB1    call        TPanel.GetCaption
 00510FB6    push        dword ptr [ebp-20]
 00510FB9    push        511068;' Read - OK'
 00510FBE    lea         eax,[ebp-14]
 00510FC1    mov         edx,5
 00510FC6    call        @LStrCatN
 00510FCB    mov         edx,dword ptr [ebp-14]
 00510FCE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00510FD3    mov         eax,dword ptr [eax]
 00510FD5    mov         eax,dword ptr [eax+2F8]
 00510FDB    mov         eax,dword ptr [eax+248]
 00510FE1    mov         ecx,dword ptr [eax]
 00510FE3    call        dword ptr [ecx+38]
 00510FE6    mov         dl,1
 00510FE8    mov         eax,dword ptr [ebp-4]
 00510FEB    mov         eax,dword ptr [eax+2F8];TfmCPs.btRead:TButton
 00510FF1    mov         ecx,dword ptr [eax]
 00510FF3    call        dword ptr [ecx+64];TImage.SetEnabled
 00510FF6    mov         dl,1
 00510FF8    mov         eax,dword ptr [ebp-4]
 00510FFB    mov         eax,dword ptr [eax+2FC];TfmCPs.btReadAll:TButton
 00511001    mov         ecx,dword ptr [eax]
 00511003    call        dword ptr [ecx+64];TImage.SetEnabled
 00511006    xor         eax,eax
 00511008    pop         edx
 00511009    pop         ecx
 0051100A    pop         ecx
 0051100B    mov         dword ptr fs:[eax],edx
 0051100E    push        511042
 00511013    lea         eax,[ebp-20]
 00511016    mov         edx,2
 0051101B    call        @LStrArrayClr
 00511020    lea         eax,[ebp-18]
 00511023    mov         edx,2
 00511028    call        @LStrArrayClr
 0051102D    lea         eax,[ebp-10]
 00511030    mov         edx,2
 00511035    call        @LStrArrayClr
 0051103A    ret
>0051103B    jmp         @HandleFinally
>00511040    jmp         00511013
 00511042    mov         esp,ebp
 00511044    pop         ebp
 00511045    ret
*}
end;

//00511074
procedure TfmCPs.btReadAllClick(Sender:TObject);
begin
{*
 00511074    push        ebp
 00511075    mov         ebp,esp
 00511077    mov         ecx,5
 0051107C    push        0
 0051107E    push        0
 00511080    dec         ecx
>00511081    jne         0051107C
 00511083    mov         dword ptr [ebp-10],edx
 00511086    mov         dword ptr [ebp-4],eax
 00511089    xor         eax,eax
 0051108B    push        ebp
 0051108C    push        511255
 00511091    push        dword ptr fs:[eax]
 00511094    mov         dword ptr fs:[eax],esp
 00511097    mov         eax,[0056E5A4];^gvar_0056DF04
 0051109C    mov         byte ptr [eax],0
 0051109F    mov         eax,dword ptr [ebp-4]
 005110A2    mov         eax,dword ptr [eax+2FC];TfmCPs.btReadAll:TButton
 005110A8    xor         edx,edx
 005110AA    mov         ecx,dword ptr [eax]
 005110AC    call        dword ptr [ecx+64];TImage.SetEnabled
 005110AF    mov         eax,dword ptr [ebp-4]
 005110B2    mov         eax,dword ptr [eax+2F8];TfmCPs.btRead:TButton
 005110B8    xor         edx,edx
 005110BA    mov         ecx,dword ptr [eax]
 005110BC    call        dword ptr [ecx+64];TImage.SetEnabled
 005110BF    xor         eax,eax
 005110C1    mov         dword ptr [ebp-8],eax
>005110C4    jmp         005111FE
 005110C9    lea         edx,[ebp-14]
 005110CC    mov         eax,dword ptr [ebp-4]
 005110CF    mov         eax,dword ptr [eax+308];TfmCPs.edParam:TLabeledEdit
 005110D5    call        TPanel.GetCaption
 005110DA    mov         eax,dword ptr [ebp-14]
 005110DD    xor         edx,edx
 005110DF    call        0040C4A8
 005110E4    mov         edx,eax
 005110E6    mov         ax,word ptr [ebp-8]
 005110EA    call        00510CF8
 005110EF    test        al,al
>005110F1    je          00511142
 005110F3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005110F8    cmp         dword ptr [eax],0
>005110FB    je          00511142
 005110FD    push        511268;'CP_'
 00511102    lea         ecx,[ebp-1C]
 00511105    mov         edx,2
 0051110A    mov         eax,dword ptr [ebp-8]
 0051110D    call        IntToHex
 00511112    push        dword ptr [ebp-1C]
 00511115    push        511274;' Read - OK'
 0051111A    lea         eax,[ebp-18]
 0051111D    mov         edx,3
 00511122    call        @LStrCatN
 00511127    mov         edx,dword ptr [ebp-18]
 0051112A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0051112F    mov         eax,dword ptr [eax]
 00511131    mov         eax,dword ptr [eax+2F8]
 00511137    mov         eax,dword ptr [eax+248]
 0051113D    mov         ecx,dword ptr [eax]
 0051113F    call        dword ptr [ecx+38]
 00511142    push        3E8
 00511147    call        kernel32.Sleep
 0051114C    cmp         dword ptr [ebp-8],0D
>00511150    jne         005111FB
 00511156    mov         dword ptr [ebp-0C],1
>0051115D    jmp         005111E7
 00511162    mov         dx,word ptr [ebp-0C]
 00511166    mov         ax,word ptr [ebp-8]
 0051116A    call        00510CF8
 0051116F    test        al,al
>00511171    je          005111DA
 00511173    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511178    cmp         dword ptr [eax],0
>0051117B    je          005111DA
 0051117D    push        511268;'CP_'
 00511182    lea         ecx,[ebp-24]
 00511185    mov         edx,2
 0051118A    mov         eax,dword ptr [ebp-8]
 0051118D    call        IntToHex
 00511192    push        dword ptr [ebp-24]
 00511195    push        511288;'_'
 0051119A    lea         ecx,[ebp-28]
 0051119D    mov         edx,1
 005111A2    mov         eax,dword ptr [ebp-0C]
 005111A5    call        IntToHex
 005111AA    push        dword ptr [ebp-28]
 005111AD    push        511274;' Read - OK'
 005111B2    lea         eax,[ebp-20]
 005111B5    mov         edx,5
 005111BA    call        @LStrCatN
 005111BF    mov         edx,dword ptr [ebp-20]
 005111C2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005111C7    mov         eax,dword ptr [eax]
 005111C9    mov         eax,dword ptr [eax+2F8]
 005111CF    mov         eax,dword ptr [eax+248]
 005111D5    mov         ecx,dword ptr [eax]
 005111D7    call        dword ptr [ecx+38]
 005111DA    push        1F4
 005111DF    call        kernel32.Sleep
 005111E4    inc         dword ptr [ebp-0C]
 005111E7    cmp         dword ptr [ebp-0C],8
>005111EB    jge         005111FB
 005111ED    mov         eax,[0056E5A4];^gvar_0056DF04
 005111F2    cmp         byte ptr [eax],0
>005111F5    je          00511162
 005111FB    inc         dword ptr [ebp-8]
 005111FE    cmp         dword ptr [ebp-8],18
>00511202    jge         00511212
 00511204    mov         eax,[0056E5A4];^gvar_0056DF04
 00511209    cmp         byte ptr [eax],0
>0051120C    je          005110C9
 00511212    mov         eax,dword ptr [ebp-4]
 00511215    mov         eax,dword ptr [eax+2F8];TfmCPs.btRead:TButton
 0051121B    mov         dl,1
 0051121D    mov         ecx,dword ptr [eax]
 0051121F    call        dword ptr [ecx+64];TImage.SetEnabled
 00511222    mov         eax,dword ptr [ebp-4]
 00511225    mov         eax,dword ptr [eax+2FC];TfmCPs.btReadAll:TButton
 0051122B    mov         dl,1
 0051122D    mov         ecx,dword ptr [eax]
 0051122F    call        dword ptr [ecx+64];TImage.SetEnabled
 00511232    xor         eax,eax
 00511234    pop         edx
 00511235    pop         ecx
 00511236    pop         ecx
 00511237    mov         dword ptr fs:[eax],edx
 0051123A    push        51125C
 0051123F    lea         eax,[ebp-28]
 00511242    mov         edx,5
 00511247    call        @LStrArrayClr
 0051124C    lea         eax,[ebp-14]
 0051124F    call        @LStrClr
 00511254    ret
>00511255    jmp         @HandleFinally
>0051125A    jmp         0051123F
 0051125C    mov         esp,ebp
 0051125E    pop         ebp
 0051125F    ret
*}
end;

//0051128C
procedure TfmCPs.btDumpClick(Sender:TObject);
begin
{*
 0051128C    push        ebp
 0051128D    mov         ebp,esp
 0051128F    xor         ecx,ecx
 00511291    push        ecx
 00511292    push        ecx
 00511293    push        ecx
 00511294    push        ecx
 00511295    push        ecx
 00511296    push        ecx
 00511297    push        ecx
 00511298    mov         dword ptr [ebp-8],edx
 0051129B    mov         dword ptr [ebp-4],eax
 0051129E    xor         eax,eax
 005112A0    push        ebp
 005112A1    push        5113AA
 005112A6    push        dword ptr fs:[eax]
 005112A9    mov         dword ptr fs:[eax],esp
 005112AC    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005112B2    mov         edx,dword ptr [edx]
 005112B4    lea         eax,[ebp-0C]
 005112B7    mov         ecx,5113C0;'CPs'
 005112BC    call        @LStrCat3
 005112C1    mov         eax,dword ptr [ebp-0C]
 005112C4    call        0040C9A4
 005112C9    test        al,al
>005112CB    jne         005112FF
 005112CD    push        5113CC;'Cannot create '
 005112D2    mov         eax,[0056E2D0];^gvar_0056DF38
 005112D7    push        dword ptr [eax]
 005112D9    push        5113C0;'CPs'
 005112DE    lea         eax,[ebp-10]
 005112E1    mov         edx,3
 005112E6    call        @LStrCatN
 005112EB    mov         ecx,dword ptr [ebp-10]
 005112EE    mov         dl,1
 005112F0    mov         eax,[0040B004];Exception
 005112F5    call        Exception.Create;Exception.Create
 005112FA    call        @RaiseExcept
 005112FF    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00511305    mov         edx,dword ptr [edx]
 00511307    lea         eax,[ebp-14]
 0051130A    mov         ecx,5113C0;'CPs'
 0051130F    call        @LStrCat3
 00511314    mov         edx,dword ptr [ebp-14]
 00511317    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0051131C    mov         eax,dword ptr [eax]
 0051131E    mov         eax,dword ptr [eax+35C]
 00511324    call        TOpenDialog.SetInitialDir
 00511329    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0051132E    mov         eax,dword ptr [eax]
 00511330    mov         eax,dword ptr [eax+35C]
 00511336    mov         edx,dword ptr [eax]
 00511338    call        dword ptr [edx+3C]
 0051133B    test        al,al
>0051133D    je          00511382
 0051133F    lea         edx,[ebp-18]
 00511342    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511347    mov         eax,dword ptr [eax]
 00511349    mov         eax,dword ptr [eax+35C]
 0051134F    call        TOpenDialog.GetFileName
 00511354    mov         eax,dword ptr [ebp-18]
 00511357    call        0040C94C
 0051135C    test        al,al
>0051135E    je          00511382
 00511360    lea         edx,[ebp-1C]
 00511363    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00511368    mov         eax,dword ptr [eax]
 0051136A    mov         eax,dword ptr [eax+35C]
 00511370    call        TOpenDialog.GetFileName
 00511375    mov         edx,dword ptr [ebp-1C]
 00511378    mov         eax,[004F3EB8];TfmViewer
 0051137D    call        004F4640
 00511382    xor         eax,eax
 00511384    pop         edx
 00511385    pop         ecx
 00511386    pop         ecx
 00511387    mov         dword ptr fs:[eax],edx
 0051138A    push        5113B1
 0051138F    lea         eax,[ebp-1C]
 00511392    mov         edx,2
 00511397    call        @LStrArrayClr
 0051139C    lea         eax,[ebp-14]
 0051139F    mov         edx,3
 005113A4    call        @LStrArrayClr
 005113A9    ret
>005113AA    jmp         @HandleFinally
>005113AF    jmp         0051138F
 005113B1    mov         esp,ebp
 005113B3    pop         ebp
 005113B4    ret
*}
end;

//005113DC
procedure TfmCPs.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 005113DC    push        ebp
 005113DD    mov         ebp,esp
 005113DF    add         esp,0FFFFFFF4
 005113E2    mov         dword ptr [ebp-8],ecx
 005113E5    mov         dword ptr [ebp-0C],edx
 005113E8    mov         dword ptr [ebp-4],eax
 005113EB    mov         eax,[0056E5A4];^gvar_0056DF04
 005113F0    mov         byte ptr [eax],1
 005113F3    xor         eax,eax
 005113F5    mov         [0056D44C],eax;gvar_0056D44C:TfmCPs
 005113FA    mov         eax,dword ptr [ebp-8]
 005113FD    mov         byte ptr [eax],2
 00511400    mov         esp,ebp
 00511402    pop         ebp
 00511403    ret
*}
end;

//00511404
procedure TfmCPs.FormShow(Sender:TObject);
begin
{*
 00511404    push        ebp
 00511405    mov         ebp,esp
 00511407    add         esp,0FFFFFFE0
 0051140A    push        ebx
 0051140B    xor         ecx,ecx
 0051140D    mov         dword ptr [ebp-20],ecx
 00511410    mov         dword ptr [ebp-18],ecx
 00511413    mov         dword ptr [ebp-1C],ecx
 00511416    mov         dword ptr [ebp-10],ecx
 00511419    mov         dword ptr [ebp-14],edx
 0051141C    mov         dword ptr [ebp-4],eax
 0051141F    xor         eax,eax
 00511421    push        ebp
 00511422    push        5114FB
 00511427    push        dword ptr fs:[eax]
 0051142A    mov         dword ptr fs:[eax],esp
 0051142D    lea         edx,[ebp-1C]
 00511430    xor         eax,eax
 00511432    call        00403214
 00511437    mov         eax,dword ptr [ebp-1C]
 0051143A    lea         edx,[ebp-18]
 0051143D    call        0040CC5C
 00511442    lea         eax,[ebp-18]
 00511445    mov         edx,511510;'wdm.ini'
 0051144A    call        @LStrCat
 0051144F    mov         ecx,dword ptr [ebp-18]
 00511452    mov         dl,1
 00511454    mov         eax,[004497F8];TIniFile
 00511459    call        TIniFile.Create;TIniFile.Create
 0051145E    mov         dword ptr [ebp-8],eax
 00511461    xor         eax,eax
 00511463    push        ebp
 00511464    push        5114D1
 00511469    push        dword ptr fs:[eax]
 0051146C    mov         dword ptr fs:[eax],esp
 0051146F    mov         dword ptr [ebp-0C],1
 00511476    push        0
 00511478    lea         eax,[ebp-10]
 0051147B    push        eax
 0051147C    lea         ecx,[ebp-20]
 0051147F    mov         edx,2
 00511484    mov         eax,dword ptr [ebp-0C]
 00511487    call        IntToHex
 0051148C    mov         ecx,dword ptr [ebp-20]
 0051148F    mov         edx,511520;'CPAGES'
 00511494    mov         eax,dword ptr [ebp-8]
 00511497    mov         ebx,dword ptr [eax]
 00511499    call        dword ptr [ebx];TIniFile.sub_0044A254
 0051149B    mov         eax,dword ptr [ebp-4]
 0051149E    mov         eax,dword ptr [eax+30C];TfmCPs.cbSelectCp:TComboBox
 005114A4    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 005114AA    mov         edx,dword ptr [ebp-10]
 005114AD    mov         ecx,dword ptr [eax]
 005114AF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 005114B2    inc         dword ptr [ebp-0C]
 005114B5    cmp         dword ptr [ebp-0C],11
>005114B9    jne         00511476
 005114BB    xor         eax,eax
 005114BD    pop         edx
 005114BE    pop         ecx
 005114BF    pop         ecx
 005114C0    mov         dword ptr fs:[eax],edx
 005114C3    push        5114D8
 005114C8    mov         eax,dword ptr [ebp-8]
 005114CB    call        TObject.Free
 005114D0    ret
>005114D1    jmp         @HandleFinally
>005114D6    jmp         005114C8
 005114D8    xor         eax,eax
 005114DA    pop         edx
 005114DB    pop         ecx
 005114DC    pop         ecx
 005114DD    mov         dword ptr fs:[eax],edx
 005114E0    push        511502
 005114E5    lea         eax,[ebp-20]
 005114E8    mov         edx,3
 005114ED    call        @LStrArrayClr
 005114F2    lea         eax,[ebp-10]
 005114F5    call        @LStrClr
 005114FA    ret
>005114FB    jmp         @HandleFinally
>00511500    jmp         005114E5
 00511502    pop         ebx
 00511503    mov         esp,ebp
 00511505    pop         ebp
 00511506    ret
*}
end;

//00511528
{*procedure TfmCPs.cbSelectCpChange(?:?);
begin
 00511528    push        ebp
 00511529    mov         ebp,esp
 0051152B    add         esp,0FFFFFFF0
 0051152E    xor         ecx,ecx
 00511530    mov         dword ptr [ebp-0C],ecx
 00511533    mov         dword ptr [ebp-10],ecx
 00511536    mov         dword ptr [ebp-8],edx
 00511539    mov         dword ptr [ebp-4],eax
 0051153C    xor         eax,eax
 0051153E    push        ebp
 0051153F    push        5115A5
 00511544    push        dword ptr fs:[eax]
 00511547    mov         dword ptr fs:[eax],esp
 0051154A    mov         eax,dword ptr [ebp-4]
 0051154D    mov         eax,dword ptr [eax+30C];TfmCPs.cbSelectCp:TComboBox
 00511553    mov         edx,dword ptr [eax]
 00511555    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0051155B    inc         eax
 0051155C    lea         ecx,[ebp-10]
 0051155F    mov         edx,2
 00511564    call        IntToHex
 00511569    mov         ecx,dword ptr [ebp-10]
 0051156C    lea         eax,[ebp-0C]
 0051156F    mov         edx,5115B8;'$'
 00511574    call        @LStrCat3
 00511579    mov         edx,dword ptr [ebp-0C]
 0051157C    mov         eax,dword ptr [ebp-4]
 0051157F    mov         eax,dword ptr [eax+304];TfmCPs.edCpNum:TLabeledEdit
 00511585    call        TPanel.SetCaption
 0051158A    xor         eax,eax
 0051158C    pop         edx
 0051158D    pop         ecx
 0051158E    pop         ecx
 0051158F    mov         dword ptr fs:[eax],edx
 00511592    push        5115AC
 00511597    lea         eax,[ebp-10]
 0051159A    mov         edx,2
 0051159F    call        @LStrArrayClr
 005115A4    ret
>005115A5    jmp         @HandleFinally
>005115AA    jmp         00511597
 005115AC    mov         esp,ebp
 005115AE    pop         ebp
 005115AF    ret
end;*}

end.