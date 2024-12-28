//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCustomPort;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  DevDesc = DevDesc = record//size=4E
f32:String;//f32
f36:String;//f36
f3A:String;//f3A
f3E:String;//f3E
end;;
  PCIDevDesc = PCIDevDesc = record//size=BA
f12:DevDesc;//f12
f60:DevDesc;//f60
fAE:String;//fAE
fB2:String;//fB2
fB6:String;//fB6
end;;
  TfmCustomPort = class(TForm)
  published
    lbControllers:TListBox;//f2F8
    Panel2:TPanel;//f2FC
    edBasePort:TLabeledEdit;//f300
    edControl:TLabeledEdit;//f304
    cbSlave:TCheckBox;//f308
    Panel1:TPanel;//f30C
    btScanPCI:TButton;//f310
    btScanUsb:TButton;//f314
    cbUSB:TCheckBox;//f318
    btCancel:TButton;//f31C
    btOK:TButton;//f320
    Panel4:TPanel;//f324
    Panel3:TPanel;//f328
    procedure btScanPCIClick(Sender:TObject);//00566E8C
    procedure lbControllersClick(Sender:TObject);//00567058
    procedure btScanUsbClick(Sender:TObject);//005671E0
    procedure btOKClick(Sender:TObject);//005617F0
    procedure btCancelClick(Sender:TObject);//00561828
    procedure FormShow(Sender:TObject);//00561858
  end;
    //function sub_005619F4(?:?; ?:?; ?:?; ?:?; ?:?):?;//005619F4
    //procedure sub_00561A3C(?:?; ?:?; ?:?);//00561A3C
    //procedure sub_00562158(?:?; ?:?; ?:?);//00562158
    //procedure sub_00566278(?:?; ?:?; ?:?);//00566278
    procedure sub_00566A50(?:TfmCustomPort);//00566A50

implementation

{$R *.DFM}

//005617F0
procedure TfmCustomPort.btOKClick(Sender:TObject);
begin
{*
 005617F0    push        ebp
 005617F1    mov         ebp,esp
 005617F3    add         esp,0FFFFFFF8
 005617F6    mov         dword ptr [ebp-8],edx
 005617F9    mov         dword ptr [ebp-4],eax
 005617FC    mov         eax,dword ptr [ebp-4]
 005617FF    mov         eax,dword ptr [eax+318];TfmCustomPort.cbUSB:TCheckBox
 00561805    mov         edx,dword ptr [eax]
 00561807    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0056180D    mov         edx,dword ptr ds:[56E280];^gvar_0056DF1C:Boolean
 00561813    mov         byte ptr [edx],al
 00561815    mov         eax,dword ptr [ebp-4]
 00561818    mov         dword ptr [eax+24C],1;TfmCustomPort.FModalResult:TModalResult
 00561822    pop         ecx
 00561823    pop         ecx
 00561824    pop         ebp
 00561825    ret
*}
end;

//00561828
procedure TfmCustomPort.btCancelClick(Sender:TObject);
begin
{*
 00561828    push        ebp
 00561829    mov         ebp,esp
 0056182B    add         esp,0FFFFFFF8
 0056182E    mov         dword ptr [ebp-8],edx
 00561831    mov         dword ptr [ebp-4],eax
 00561834    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00561839    cmp         byte ptr [eax],0
>0056183C    je          00561846
 0056183E    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00561843    mov         byte ptr [eax],0
 00561846    mov         eax,dword ptr [ebp-4]
 00561849    mov         dword ptr [eax+24C],2;TfmCustomPort.FModalResult:TModalResult
 00561853    pop         ecx
 00561854    pop         ecx
 00561855    pop         ebp
 00561856    ret
*}
end;

//00561858
procedure TfmCustomPort.FormShow(Sender:TObject);
begin
{*
 00561858    push        ebp
 00561859    mov         ebp,esp
 0056185B    xor         ecx,ecx
 0056185D    push        ecx
 0056185E    push        ecx
 0056185F    push        ecx
 00561860    push        ecx
 00561861    push        ecx
 00561862    push        ecx
 00561863    push        ecx
 00561864    push        ebx
 00561865    mov         dword ptr [ebp-0C],edx
 00561868    mov         dword ptr [ebp-4],eax
 0056186B    xor         eax,eax
 0056186D    push        ebp
 0056186E    push        561980
 00561873    push        dword ptr fs:[eax]
 00561876    mov         dword ptr fs:[eax],esp
 00561879    lea         edx,[ebp-14]
 0056187C    xor         eax,eax
 0056187E    call        00403214
 00561883    mov         eax,dword ptr [ebp-14]
 00561886    lea         edx,[ebp-10]
 00561889    call        0040CC5C
 0056188E    lea         eax,[ebp-10]
 00561891    mov         edx,561994;'wdm.ini'
 00561896    call        @LStrCat
 0056189B    mov         ecx,dword ptr [ebp-10]
 0056189E    mov         dl,1
 005618A0    mov         eax,[004497F8];TIniFile
 005618A5    call        TIniFile.Create;TIniFile.Create
 005618AA    mov         dword ptr [ebp-8],eax
 005618AD    xor         eax,eax
 005618AF    push        ebp
 005618B0    push        56192B
 005618B5    push        dword ptr fs:[eax]
 005618B8    mov         dword ptr fs:[eax],esp
 005618BB    push        5619A4;'$100'
 005618C0    lea         eax,[ebp-18]
 005618C3    push        eax
 005618C4    mov         ecx,5619B4;'BasePort'
 005618C9    mov         edx,5619C8;'SETTINGS'
 005618CE    mov         eax,dword ptr [ebp-8]
 005618D1    mov         ebx,dword ptr [eax]
 005618D3    call        dword ptr [ebx];TIniFile.sub_0044A254
 005618D5    mov         edx,dword ptr [ebp-18]
 005618D8    mov         eax,[0056DF30];0x0 gvar_0056DF30:TfmCustomPort
 005618DD    mov         eax,dword ptr [eax+300]
 005618E3    call        TPanel.SetCaption
 005618E8    push        5619DC;'$10E'
 005618ED    lea         eax,[ebp-1C]
 005618F0    push        eax
 005618F1    mov         ecx,5619EC;'Control'
 005618F6    mov         edx,5619C8;'SETTINGS'
 005618FB    mov         eax,dword ptr [ebp-8]
 005618FE    mov         ebx,dword ptr [eax]
 00561900    call        dword ptr [ebx];TIniFile.sub_0044A254
 00561902    mov         edx,dword ptr [ebp-1C]
 00561905    mov         eax,[0056DF30];0x0 gvar_0056DF30:TfmCustomPort
 0056190A    mov         eax,dword ptr [eax+304]
 00561910    call        TPanel.SetCaption
 00561915    xor         eax,eax
 00561917    pop         edx
 00561918    pop         ecx
 00561919    pop         ecx
 0056191A    mov         dword ptr fs:[eax],edx
 0056191D    push        561932
 00561922    mov         eax,dword ptr [ebp-8]
 00561925    call        TObject.Free
 0056192A    ret
>0056192B    jmp         @HandleFinally
>00561930    jmp         00561922
 00561932    mov         eax,[0056E284];^gvar_0056DF34
 00561937    mov         eax,dword ptr [eax]
 00561939    mov         eax,dword ptr [eax+408]
 0056193F    cmp         byte ptr [eax+38],0
>00561943    je          00561965
 00561945    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 0056194A    cmp         byte ptr [eax],0
>0056194D    je          0056195B
 0056194F    xor         edx,edx
 00561951    mov         eax,dword ptr [ebp-4]
 00561954    call        TfmCustomPort.btScanUsbClick
>00561959    jmp         00561965
 0056195B    xor         edx,edx
 0056195D    mov         eax,dword ptr [ebp-4]
 00561960    call        TfmCustomPort.btScanPCIClick
 00561965    xor         eax,eax
 00561967    pop         edx
 00561968    pop         ecx
 00561969    pop         ecx
 0056196A    mov         dword ptr fs:[eax],edx
 0056196D    push        561987
 00561972    lea         eax,[ebp-1C]
 00561975    mov         edx,4
 0056197A    call        @LStrArrayClr
 0056197F    ret
>00561980    jmp         @HandleFinally
>00561985    jmp         00561972
 00561987    pop         ebx
 00561988    mov         esp,ebp
 0056198A    pop         ebp
 0056198B    ret
*}
end;

//005619F4
{*function sub_005619F4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005619F4    push        ebp
 005619F5    mov         ebp,esp
 005619F7    add         esp,0FFFFFFF4
 005619FA    mov         byte ptr [ebp-2],cl
 005619FD    mov         byte ptr [ebp-1],dl
 00561A00    mov         dword ptr [ebp-0C],eax
 00561A03    push        edx
 00561A04    mov         eax,80000000
 00561A09    mov         al,byte ptr [ebp-1]
 00561A0C    or          ah,80
 00561A0F    shl         eax,10
 00561A12    mov         ah,byte ptr [ebp-2]
 00561A15    shl         ah,3
 00561A18    or          ah,byte ptr [ebp+0C]
 00561A1B    mov         al,byte ptr [ebp+8]
 00561A1E    and         al,0FC
 00561A20    mov         edx,0CF8
 00561A25    out         dl,eax
 00561A26    mov         edx,0CFC
 00561A2B    in          eax,dl
 00561A2C    mov         dword ptr [ebp-8],eax
 00561A2F    pop         edx
 00561A30    mov         eax,dword ptr [ebp-8]
 00561A33    mov         esp,ebp
 00561A35    pop         ebp
 00561A36    ret         8
end;*}

//00561A3C
{*procedure sub_00561A3C(?:?; ?:?; ?:?);
begin
 00561A3C    push        ebp
 00561A3D    mov         ebp,esp
 00561A3F    add         esp,0FFFFFFF0
 00561A42    push        ebx
 00561A43    xor         ebx,ebx
 00561A45    mov         dword ptr [ebp-10],ebx
 00561A48    mov         dword ptr [ebp-0C],ecx
 00561A4B    mov         word ptr [ebp-6],dx
 00561A4F    mov         dword ptr [ebp-4],eax
 00561A52    xor         eax,eax
 00561A54    push        ebp
 00561A55    push        561EF2
 00561A5A    push        dword ptr fs:[eax]
 00561A5D    mov         dword ptr fs:[eax],esp
 00561A60    movzx       eax,word ptr [ebp-6]
 00561A64    cmp         eax,1109
>00561A69    jg          00561B4A
>00561A6F    je          00561D7A
 00561A75    cmp         eax,105A
>00561A7A    jg          00561AE7
>00561A7C    je          00561CC6
 00561A82    cmp         eax,1022
>00561A87    jg          00561ABC
>00561A89    je          00561C6C
 00561A8F    sub         eax,0E11
>00561A94    je          00561C24
 00561A9A    sub         eax,1EF
>00561A9F    je          00561C36
 00561AA5    sub         eax,2
>00561AA8    je          00561C48
 00561AAE    sub         eax,9
>00561AB1    je          00561C5A
>00561AB7    jmp         00561EBB
 00561ABC    sub         eax,1039
>00561AC1    je          00561C7E
 00561AC7    sub         eax,9
>00561ACA    je          00561C90
 00561AD0    sub         eax,3
>00561AD3    je          00561CA2
 00561AD9    sub         eax,10
>00561ADC    je          00561CB4
>00561AE2    jmp         00561EBB
 00561AE7    cmp         eax,10DE
>00561AEC    jg          00561B1F
>00561AEE    je          00561D20
 00561AF4    sub         eax,1078
>00561AF9    je          00561CD8
 00561AFF    sub         eax,1D
>00561B02    je          00561CEA
 00561B08    sub         eax,18
>00561B0B    je          00561CFC
 00561B11    sub         eax,0C
>00561B14    je          00561D0E
>00561B1A    jmp         00561EBB
 00561B1F    sub         eax,10EC
>00561B24    je          00561D32
 00561B2A    sub         eax,15
>00561B2D    je          00561D44
 00561B33    sub         eax,2
>00561B36    je          00561D56
 00561B3C    sub         eax,3
>00561B3F    je          00561D68
>00561B45    jmp         00561EBB
 00561B4A    cmp         eax,17F3
>00561B4F    jg          00561BC0
>00561B51    je          00561E2E
 00561B57    cmp         eax,1217
>00561B5C    jg          00561B8F
>00561B5E    je          00561DD4
 00561B64    sub         eax,1145
>00561B69    je          00561D8C
 00561B6F    sub         eax,21
>00561B72    je          00561D9E
 00561B78    sub         eax,13
>00561B7B    je          00561DB0
 00561B81    sub         eax,32
>00561B84    je          00561DC2
>00561B8A    jmp         00561EBB
 00561B8F    sub         eax,1283
>00561B94    je          00561DE6
 00561B9A    sub         eax,366
>00561B9F    je          00561DF8
 00561BA5    sub         eax,0B3
>00561BAA    je          00561E0A
 00561BB0    sub         eax,89
>00561BB5    je          00561E1C
>00561BBB    jmp         00561EBB
 00561BC0    cmp         eax,907F
>00561BC5    jg          00561BFE
>00561BC7    je          00561E7F
 00561BCD    sub         eax,1DE1
>00561BD2    je          00561E40
 00561BD8    sub         eax,15A7
>00561BDD    je          00561E52
 00561BE3    sub         eax,4CFE
>00561BE8    je          00561E61
 00561BEE    sub         eax,0F7F
>00561BF3    je          00561E70
>00561BF9    jmp         00561EBB
 00561BFE    sub         eax,9412
>00561C03    je          00561E8E
 00561C09    sub         eax,18CF
>00561C0E    je          00561E9D
 00561C14    sub         eax,32B
>00561C19    je          00561EAC
>00561C1F    jmp         00561EBB
 00561C24    mov         eax,dword ptr [ebp-0C]
 00561C27    mov         edx,561F08;'Compaq'
 00561C2C    call        @LStrAsg
>00561C31    jmp         00561EDC
 00561C36    mov         eax,dword ptr [ebp-0C]
 00561C39    mov         edx,561F18;'LSI Logic'
 00561C3E    call        @LStrAsg
>00561C43    jmp         00561EDC
 00561C48    mov         eax,dword ptr [ebp-0C]
 00561C4B    mov         edx,561F2C;'ATI'
 00561C50    call        @LStrAsg
>00561C55    jmp         00561EDC
 00561C5A    mov         eax,dword ptr [ebp-0C]
 00561C5D    mov         edx,561F38;'Semiconductor'
 00561C62    call        @LStrAsg
>00561C67    jmp         00561EDC
 00561C6C    mov         eax,dword ptr [ebp-0C]
 00561C6F    mov         edx,561F50;'AMD'
 00561C74    call        @LStrAsg
>00561C79    jmp         00561EDC
 00561C7E    mov         eax,dword ptr [ebp-0C]
 00561C81    mov         edx,561F5C;'SiS'
 00561C86    call        @LStrAsg
>00561C8B    jmp         00561EDC
 00561C90    mov         eax,dword ptr [ebp-0C]
 00561C93    mov         edx,561F68;'Micron'
 00561C98    call        @LStrAsg
>00561C9D    jmp         00561EDC
 00561CA2    mov         eax,dword ptr [ebp-0C]
 00561CA5    mov         edx,561F78;'OPTi Inc'
 00561CAA    call        @LStrAsg
>00561CAF    jmp         00561EDC
 00561CB4    mov         eax,dword ptr [ebp-0C]
 00561CB7    mov         edx,561F8C;'Efar'
 00561CBC    call        @LStrAsg
>00561CC1    jmp         00561EDC
 00561CC6    mov         eax,dword ptr [ebp-0C]
 00561CC9    mov         edx,561F9C;'Promise'
 00561CCE    call        @LStrAsg
>00561CD3    jmp         00561EDC
 00561CD8    mov         eax,dword ptr [ebp-0C]
 00561CDB    mov         edx,561FAC;'Cyrix'
 00561CE0    call        @LStrAsg
>00561CE5    jmp         00561EDC
 00561CEA    mov         eax,dword ptr [ebp-0C]
 00561CED    mov         edx,561FBC;'CMD/SiI'
 00561CF2    call        @LStrAsg
>00561CF7    jmp         00561EDC
 00561CFC    mov         eax,dword ptr [ebp-0C]
 00561CFF    mov         edx,561FCC;'Symphony'
 00561D04    call        @LStrAsg
>00561D09    jmp         00561EDC
 00561D0E    mov         eax,dword ptr [ebp-0C]
 00561D11    mov         edx,561FE0;'ALi/ULi'
 00561D16    call        @LStrAsg
>00561D1B    jmp         00561EDC
 00561D20    mov         eax,dword ptr [ebp-0C]
 00561D23    mov         edx,561FF0;'Nvidia'
 00561D28    call        @LStrAsg
>00561D2D    jmp         00561EDC
 00561D32    mov         eax,dword ptr [ebp-0C]
 00561D35    mov         edx,562000;'Realtek'
 00561D3A    call        @LStrAsg
>00561D3F    jmp         00561EDC
 00561D44    mov         eax,dword ptr [ebp-0C]
 00561D47    mov         edx,562010;'Initio'
 00561D4C    call        @LStrAsg
>00561D51    jmp         00561EDC
 00561D56    mov         eax,dword ptr [ebp-0C]
 00561D59    mov         edx,562020;'HPT'
 00561D5E    call        @LStrAsg
>00561D63    jmp         00561EDC
 00561D68    mov         eax,dword ptr [ebp-0C]
 00561D6B    mov         edx,56202C;'VIA'
 00561D70    call        @LStrAsg
>00561D75    jmp         00561EDC
 00561D7A    mov         eax,dword ptr [ebp-0C]
 00561D7D    mov         edx,562038;'Adaptec'
 00561D82    call        @LStrAsg
>00561D87    jmp         00561EDC
 00561D8C    mov         eax,dword ptr [ebp-0C]
 00561D8F    mov         edx,562048;'Workbit'
 00561D94    call        @LStrAsg
>00561D99    jmp         00561EDC
 00561D9E    mov         eax,dword ptr [ebp-0C]
 00561DA1    mov         edx,562058;'Broadcom'
 00561DA6    call        @LStrAsg
>00561DAB    jmp         00561EDC
 00561DB0    mov         eax,dword ptr [ebp-0C]
 00561DB3    mov         edx,56206C;'Toshiba'
 00561DB8    call        @LStrAsg
>00561DBD    jmp         00561EDC
 00561DC2    mov         eax,dword ptr [ebp-0C]
 00561DC5    mov         edx,56207C;'Marvell'
 00561DCA    call        @LStrAsg
>00561DCF    jmp         00561EDC
 00561DD4    mov         eax,dword ptr [ebp-0C]
 00561DD7    mov         edx,56208C;'O2Micro'
 00561DDC    call        @LStrAsg
>00561DE1    jmp         00561EDC
 00561DE6    mov         eax,dword ptr [ebp-0C]
 00561DE9    mov         edx,56209C;'ITE'
 00561DEE    call        @LStrAsg
>00561DF3    jmp         00561EDC
 00561DF8    mov         eax,dword ptr [ebp-0C]
 00561DFB    mov         edx,5620A8;'Pacific'
 00561E00    call        @LStrAsg
>00561E05    jmp         00561EDC
 00561E0A    mov         eax,dword ptr [ebp-0C]
 00561E0D    mov         edx,5620B8;'Netcell'
 00561E12    call        @LStrAsg
>00561E17    jmp         00561EDC
 00561E1C    mov         eax,dword ptr [ebp-0C]
 00561E1F    mov         edx,5620C8;'Vitesse'
 00561E24    call        @LStrAsg
>00561E29    jmp         00561EDC
 00561E2E    mov         eax,dword ptr [ebp-0C]
 00561E31    mov         edx,5620D8;'RDC'
 00561E36    call        @LStrAsg
>00561E3B    jmp         00561EDC
 00561E40    mov         eax,dword ptr [ebp-0C]
 00561E43    mov         edx,5620E4;'Tekram'
 00561E48    call        @LStrAsg
>00561E4D    jmp         00561EDC
 00561E52    mov         eax,dword ptr [ebp-0C]
 00561E55    mov         edx,5620F4;'Hint'
 00561E5A    call        @LStrAsg
>00561E5F    jmp         00561EDC
 00561E61    mov         eax,dword ptr [ebp-0C]
 00561E64    mov         edx,562104;'Intel'
 00561E69    call        @LStrAsg
>00561E6E    jmp         00561EDC
 00561E70    mov         eax,dword ptr [ebp-0C]
 00561E73    mov         edx,562038;'Adaptec'
 00561E78    call        @LStrAsg
>00561E7D    jmp         00561EDC
 00561E7F    mov         eax,dword ptr [ebp-0C]
 00561E82    mov         edx,562114;'Atronic'
 00561E87    call        @LStrAsg
>00561E8C    jmp         00561EDC
 00561E8E    mov         eax,dword ptr [ebp-0C]
 00561E91    mov         edx,562124;'Holtek'
 00561E96    call        @LStrAsg
>00561E9B    jmp         00561EDC
 00561E9D    mov         eax,dword ptr [ebp-0C]
 00561EA0    mov         edx,562134;'ACE Lab'
 00561EA5    call        @LStrAsg
>00561EAA    jmp         00561EDC
 00561EAC    mov         eax,dword ptr [ebp-0C]
 00561EAF    mov         edx,562144;'IC Book'
 00561EB4    call        @LStrAsg
>00561EB9    jmp         00561EDC
 00561EBB    lea         ecx,[ebp-10]
 00561EBE    movzx       eax,word ptr [ebp-6]
 00561EC2    mov         edx,4
 00561EC7    call        IntToHex
 00561ECC    mov         edx,dword ptr [ebp-10]
 00561ECF    mov         eax,dword ptr [ebp-0C]
 00561ED2    mov         ecx,562154;'*'
 00561ED7    call        @LStrCat3
 00561EDC    xor         eax,eax
 00561EDE    pop         edx
 00561EDF    pop         ecx
 00561EE0    pop         ecx
 00561EE1    mov         dword ptr fs:[eax],edx
 00561EE4    push        561EF9
 00561EE9    lea         eax,[ebp-10]
 00561EEC    call        @LStrClr
 00561EF1    ret
>00561EF2    jmp         @HandleFinally
>00561EF7    jmp         00561EE9
 00561EF9    pop         ebx
 00561EFA    mov         esp,ebp
 00561EFC    pop         ebp
 00561EFD    ret
end;*}

//00562158
{*procedure sub_00562158(?:?; ?:?; ?:?);
begin
 00562158    push        ebp
 00562159    mov         ebp,esp
 0056215B    add         esp,0FFFFFFF0
 0056215E    push        ebx
 0056215F    xor         ebx,ebx
 00562161    mov         dword ptr [ebp-10],ebx
 00562164    mov         dword ptr [ebp-0C],ecx
 00562167    mov         word ptr [ebp-6],dx
 0056216B    mov         dword ptr [ebp-4],eax
 0056216E    xor         eax,eax
 00562170    push        ebp
 00562171    push        5642DC
 00562176    push        dword ptr fs:[eax]
 00562179    mov         dword ptr fs:[eax],esp
 0056217C    movzx       eax,word ptr [ebp-6]
 00562180    cmp         eax,27DF
>00562185    jg          005627E0
>0056218B    je          00563A85
 00562191    cmp         eax,591
>00562196    jg          005624A2
>0056219C    je          00563DE5
 005621A2    cmp         eax,240
>005621A7    jg          00562312
>005621AD    je          00563EE1
 005621B3    cmp         eax,85
>005621B8    jg          00562257
>005621BE    je          005633E9
 005621C4    cmp         eax,2D
>005621C7    jg          00562207
>005621C9    je          005640D9
 005621CF    cmp         eax,9
>005621D2    ja          0056429B
 005621D8    jmp         dword ptr [eax*4+5621DF]
 005621D8    dd          0056429B
 005621D8    dd          00562F8D
 005621D8    dd          005640C7
 005621D8    dd          0056375B
 005621D8    dd          0056376D
 005621D8    dd          00562EC7
 005621D8    dd          00562ED9
 005621D8    dd          0056377F
 005621D8    dd          00563791
 005621D8    dd          005637A3
 00562207    cmp         eax,53
>0056220A    jg          00562239
>0056220C    je          005633A1
 00562212    sub         eax,35
>00562215    je          0056336B
 0056221B    dec         eax
>0056221C    je          0056337D
 00562222    sub         eax,8
>00562225    je          0056338F
 0056222B    sub         eax,6
>0056222E    je          0056410F
>00562234    jmp         0056429B
 00562239    sub         eax,54
>0056223C    je          005633B3
 00562242    dec         eax
>00562243    je          005633C5
 00562249    sub         eax,10
>0056224C    je          005633D7
>00562252    jmp         0056429B
 00562257    cmp         eax,180
>0056225C    jg          005622BC
>0056225E    je          00562E49
 00562264    cmp         eax,0EE
>00562269    jg          0056229C
>0056226B    je          00563443
 00562271    sub         eax,8E
>00562276    je          005633FB
 0056227C    sub         eax,47
>0056227F    je          0056340D
 00562285    sub         eax,0E
>00562288    je          0056341F
 0056228E    sub         eax,2
>00562291    je          00563431
>00562297    jmp         0056429B
 0056229C    sub         eax,102
>005622A1    je          00563F5F
 005622A7    dec         eax
>005622A8    je          0056425F
 005622AE    sub         eax,2
>005622B1    je          00564250
>005622B7    jmp         0056429B
 005622BC    cmp         eax,212
>005622C1    jg          005622F2
>005622C3    je          00563E99
 005622C9    sub         eax,181
>005622CE    je          00562E5B
 005622D4    dec         eax
>005622D5    je          00562E6D
 005622DB    sub         eax,3A
>005622DE    je          00563455
 005622E4    sub         eax,55
>005622E7    je          00563E87
>005622ED    jmp         0056429B
 005622F2    sub         eax,213
>005622F7    je          00563EAB
 005622FD    dec         eax
>005622FE    je          00563EBD
 00562304    sub         eax,3
>00562307    je          00563ECF
>0056230D    jmp         0056429B
 00562312    cmp         eax,448
>00562317    jg          005623D8
>0056231D    je          0056351B
 00562323    cmp         eax,36E
>00562328    jg          00562382
>0056232A    je          0056349D
 00562330    cmp         eax,24B
>00562335    jg          00562364
>00562337    je          00563F17
 0056233D    sub         eax,241
>00562342    je          00562EFD
 00562348    dec         eax
>00562349    je          00563EF3
 0056234F    dec         eax
>00562350    je          00562F0F
 00562356    sub         eax,7
>00562359    je          00563F05
>0056235F    jmp         0056429B
 00562364    sub         eax,265
>00562369    je          00563467
 0056236F    dec         eax
>00562370    je          00563479
 00562376    dec         eax
>00562377    je          0056348B
>0056237D    jmp         0056429B
 00562382    cmp         eax,3F6
>00562387    jg          005623B8
>00562389    je          005634F7
 0056238F    sub         eax,37E
>00562394    je          005634AF
 0056239A    dec         eax
>0056239B    je          005634C1
 005623A1    sub         eax,68
>005623A4    je          005634D3
 005623AA    sub         eax,5
>005623AD    je          005634E5
>005623B3    jmp         0056429B
 005623B8    sub         eax,3F7
>005623BD    je          00563509
 005623C3    sub         eax,19
>005623C6    je          00563F29
 005623CC    dec         eax
>005623CD    je          00563F3B
>005623D3    jmp         0056429B
 005623D8    cmp         eax,502
>005623DD    jg          0056244A
>005623DF    je          005640FD
 005623E5    add         eax,0FFFFFBB4
 005623EA    cmp         eax,13
>005623ED    ja          0056429B
 005623F3    jmp         dword ptr [eax*4+5623FA]
 005623F3    dd          0056352D
 005623F3    dd          0056353F
 005623F3    dd          00563551
 005623F3    dd          00563563
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          0056429B
 005623F3    dd          00563575
 005623F3    dd          00563587
 005623F3    dd          00563599
 005623F3    dd          005635AB
 0056244A    cmp         eax,561
>0056244F    jg          00562480
>00562451    je          00563DAF
 00562457    sub         eax,550
>0056245C    je          005635BD
 00562462    sub         eax,4
>00562465    je          005635CF
 0056246B    dec         eax
>0056246C    je          005635E1
 00562472    sub         eax,0B
>00562475    je          005635F3
>0056247B    jmp         0056429B
 00562480    sub         eax,56C
>00562485    je          00563605
 0056248B    sub         eax,5
>0056248E    je          00563DC1
 00562494    sub         eax,10
>00562497    je          00563DD3
>0056249D    jmp         0056429B
 005624A2    cmp         eax,1740
>005624A7    jg          0056264F
>005624AD    je          005637C7
 005624B3    cmp         eax,0ABA
>005624B8    jg          0056258A
>005624BE    je          005636CB
 005624C4    cmp         eax,7F0
>005624C9    jg          00562534
>005624CB    je          00563629
 005624D1    cmp         eax,646
>005624D6    jg          00562509
>005624D8    je          0056419F
 005624DE    sub         eax,597
>005624E3    je          00562E91
 005624E9    sub         eax,6A
>005624EC    je          00562EA3
 005624F2    sub         eax,3F
>005624F5    je          0056417B
 005624FB    sub         eax,3
>005624FE    je          0056418D
>00562504    jmp         0056429B
 00562509    sub         eax,648
>0056250E    je          005641B1
 00562514    dec         eax
>00562515    je          005641C3
 0056251B    sub         eax,37
>0056251E    je          005641D5
 00562524    sub         eax,0D9
>00562529    je          00563617
>0056252F    jmp         0056429B
 00562534    cmp         eax,0AB6
>00562539    jg          0056256C
>0056253B    je          00563683
 00562541    sub         eax,7F4
>00562546    je          0056363B
 0056254C    sub         eax,4
>0056254F    je          0056364D
 00562555    sub         eax,2BC
>0056255A    je          0056365F
 00562560    dec         eax
>00562561    je          00563671
>00562567    jmp         0056429B
 0056256C    sub         eax,0AB7
>00562571    je          00563695
 00562577    dec         eax
>00562578    je          005636A7
 0056257E    dec         eax
>0056257F    je          005636B9
>00562585    jmp         0056429B
 0056258A    cmp         eax,0D30
>0056258F    jg          005625ED
>00562591    je          0056313D
 00562597    cmp         eax,0ABF
>0056259C    jg          005625C9
>0056259E    je          00563725
 005625A4    sub         eax,0ABB
>005625A9    je          005636DD
 005625AF    dec         eax
>005625B0    je          005636EF
 005625B6    dec         eax
>005625B7    je          00563701
 005625BD    dec         eax
>005625BE    je          00563713
>005625C4    jmp         0056429B
 005625C9    sub         eax,0AD0
>005625CE    je          00563737
 005625D4    sub         eax,4
>005625D7    je          00563749
 005625DD    sub         eax,248
>005625E2    je          00562EEB
>005625E8    jmp         0056429B
 005625ED    cmp         eax,1275
>005625F2    jg          00562629
>005625F4    je          00563161
 005625FA    sub         eax,0D38
>005625FF    je          0056314F
 00562605    sub         eax,2D8
>0056260A    je          00564169
 00562610    sub         eax,220
>00562615    je          00563845
 0056261B    sub         eax,4
>0056261E    je          00563857
>00562624    jmp         0056429B
 00562629    sub         eax,1571
>0056262E    je          00563DF7
 00562634    sub         eax,0B1
>00562639    je          00563FA7
 0056263F    sub         eax,0FE
>00562644    je          005637B5
>0056264A    jmp         0056429B
 0056264F    cmp         eax,25A2
>00562654    jg          00562725
>0056265A    je          00563941
 00562660    cmp         eax,244B
>00562665    jg          005626CD
>00562667    je          0056389F
 0056266D    cmp         eax,2310
>00562672    jg          005626AB
>00562674    je          005637FD
 0056267A    sub         eax,1742
>0056267F    je          005637D9
 00562685    sub         eax,0FF
>0056268A    je          00564157
 00562690    sub         eax,7D4
>00562695    je          00562F21
 0056269B    sub         eax,2EB
>005626A0    je          005637EB
>005626A6    jmp         0056429B
 005626AB    sub         eax,2411
>005626B0    je          00563869
 005626B6    sub         eax,10
>005626B9    je          0056387B
 005626BF    sub         eax,29
>005626C2    je          0056388D
>005626C8    jmp         0056429B
 005626CD    cmp         eax,24CB
>005626D2    jg          00562703
>005626D4    je          005638F9
 005626DA    sub         eax,245B
>005626DF    je          005638B1
 005626E5    sub         eax,2F
>005626E8    je          005638C3
 005626EE    dec         eax
>005626EF    je          005638D5
 005626F5    sub         eax,3F
>005626F8    je          005638E7
>005626FE    jmp         0056429B
 00562703    sub         eax,24D1
>00562708    je          0056390B
 0056270E    sub         eax,0A
>00562711    je          0056391D
 00562717    sub         eax,4
>0056271A    je          0056392F
>00562720    jmp         0056429B
 00562725    cmp         eax,2682
>0056272A    jg          0056278A
>0056272C    je          005639E3
 00562732    cmp         eax,2653
>00562737    jg          0056276A
>00562739    je          0056399B
 0056273F    sub         eax,25A3
>00562744    je          00563953
 0056274A    sub         eax,0D
>0056274D    je          00563965
 00562753    sub         eax,0A1
>00562758    je          00563977
 0056275E    dec         eax
>0056275F    je          00563989
>00562765    jmp         0056429B
 0056276A    sub         eax,266F
>0056276F    je          005639AD
 00562775    sub         eax,11
>00562778    je          005639BF
 0056277E    dec         eax
>0056277F    je          005639D1
>00562785    jmp         0056429B
 0056278A    cmp         eax,27C3
>0056278F    jg          005627C2
>00562791    je          00563A3D
 00562797    sub         eax,2683
>0056279C    je          005639F5
 005627A2    sub         eax,1B
>005627A5    je          00563A07
 005627AB    sub         eax,122
>005627B0    je          00563A19
 005627B6    dec         eax
>005627B7    je          00563A2B
>005627BD    jmp         0056429B
 005627C2    sub         eax,27C4
>005627C7    je          00563A4F
 005627CD    dec         eax
>005627CE    je          00563A61
 005627D4    dec         eax
>005627D5    je          00563A73
>005627DB    jmp         0056429B
 005627E0    cmp         eax,4390
>005627E5    jg          00562B0E
>005627EB    je          005630BF
 005627F1    cmp         eax,3512
>005627F6    jg          00562983
>005627FC    je          0056422F
 00562802    cmp         eax,292D
>00562807    jg          005628C0
>0056280D    je          00563BDB
 00562813    cmp         eax,2920
>00562818    jg          0056287B
>0056281A    je          00563B39
 00562820    cmp         eax,2825
>00562825    jg          00562854
>00562827    je          00563ADF
 0056282D    sub         eax,2820
>00562832    je          00563A97
 00562838    dec         eax
>00562839    je          00563AA9
 0056283F    dec         eax
>00562840    je          00563ABB
 00562846    sub         eax,2
>00562849    je          00563ACD
>0056284F    jmp         0056429B
 00562854    sub         eax,2828
>00562859    je          00563AF1
 0056285F    dec         eax
>00562860    je          00563B03
 00562866    dec         eax
>00562867    je          00563B15
 0056286D    sub         eax,26
>00562870    je          00563B27
>00562876    jmp         0056429B
 0056287B    add         eax,0FFFFD6DF
 00562880    cmp         eax,0B
>00562883    ja          0056429B
 00562889    jmp         dword ptr [eax*4+562890]
 00562889    dd          00563B4B
 00562889    dd          00563B5D
 00562889    dd          00563B6F
 00562889    dd          0056429B
 00562889    dd          00563B81
 00562889    dd          00563B93
 00562889    dd          0056429B
 00562889    dd          00563BA5
 00562889    dd          00563BB7
 00562889    dd          0056429B
 00562889    dd          0056429B
 00562889    dd          00563BC9
 005628C0    cmp         eax,3200
>005628C5    jg          0056292B
>005628C7    je          00563BFF
 005628CD    cmp         eax,3124
>005628D2    jg          00562909
>005628D4    je          0056420B
 005628DA    sub         eax,292E
>005628DF    je          00563BED
 005628E5    sub         eax,6F2
>005628EA    je          005640B5
 005628F0    sub         eax,0F2
>005628F5    je          005641E7
 005628FB    sub         eax,2
>005628FE    je          005641F9
>00562904    jmp         0056429B
 00562909    sub         eax,3132
>0056290E    je          0056421D
 00562914    sub         eax,17
>00562917    je          00563E09
 0056291D    sub         eax,1B
>00562920    je          00563E1B
>00562926    jmp         0056429B
 0056292B    cmp         eax,3371
>00562930    jg          00562963
>00562932    je          00563197
 00562938    sub         eax,3249
>0056293D    je          00563E2D
 00562943    sub         eax,0CF
>00562948    je          00563173
 0056294E    dec         eax
>0056294F    je          00563185
 00562955    sub         eax,30
>00562958    je          00563E3F
>0056295E    jmp         0056429B
 00562963    sub         eax,3373
>00562968    je          005631A9
 0056296E    sub         eax,2
>00562971    je          005631BB
 00562977    dec         eax
>00562978    je          005631CD
>0056297E    jmp         0056429B
 00562983    cmp         eax,3B26
>00562988    jg          00562A53
>0056298E    je          00563CB3
 00562994    cmp         eax,3A00
>00562999    jg          005629FD
>0056299B    je          00563C11
 005629A1    cmp         eax,3571
>005629A6    jg          005629D9
>005629A8    je          00563215
 005629AE    sub         eax,3515
>005629B3    je          005631DF
 005629B9    sub         eax,4
>005629BC    je          005631F1
 005629C2    sub         eax,18
>005629C5    je          00564241
 005629CB    sub         eax,3F
>005629CE    je          00563203
>005629D4    jmp         0056429B
 005629D9    sub         eax,3574
>005629DE    je          00563227
 005629E4    sub         eax,3
>005629E7    je          00563239
 005629ED    sub         eax,8B
>005629F2    je          00562EB5
>005629F8    jmp         0056429B
 005629FD    cmp         eax,3A26
>00562A02    jg          00562A33
>00562A04    je          00563C6B
 00562A0A    sub         eax,3A05
>00562A0F    je          00563C23
 00562A15    dec         eax
>00562A16    je          00563C35
 00562A1C    sub         eax,1A
>00562A1F    je          00563C47
 00562A25    sub         eax,5
>00562A28    je          00563C59
>00562A2E    jmp         0056429B
 00562A33    sub         eax,3B20
>00562A38    je          00563C7D
 00562A3E    sub         eax,4
>00562A41    je          00563C8F
 00562A47    dec         eax
>00562A48    je          00563CA1
>00562A4E    jmp         0056429B
 00562A53    cmp         eax,4149
>00562A58    jg          00562AB4
>00562A5A    je          00563E51
 00562A60    cmp         eax,3D17
>00562A65    jg          00562A92
>00562A67    je          0056324B
 00562A6D    sub         eax,3B2B
>00562A72    je          00563CC5
 00562A78    dec         eax
>00562A79    je          00563CD7
 00562A7F    dec         eax
>00562A80    je          00563CE9
 00562A86    dec         eax
>00562A87    je          00563CFB
>00562A8D    jmp         0056429B
 00562A92    sub         eax,3D18
>00562A97    je          0056325D
 00562A9D    sub         eax,5B
>00562AA0    je          0056326F
 00562AA6    sub         eax,2
>00562AA9    je          00563281
>00562AAF    jmp         0056429B
 00562AB4    cmp         eax,4379
>00562AB9    jg          00562AEC
>00562ABB    je          00563077
 00562AC1    sub         eax,4349
>00562AC6    je          0056302F
 00562ACC    sub         eax,20
>00562ACF    je          00563041
 00562AD5    sub         eax,5
>00562AD8    je          00563053
 00562ADE    sub         eax,8
>00562AE1    je          00563065
>00562AE7    jmp         0056429B
 00562AEC    sub         eax,437A
>00562AF1    je          00563089
 00562AF7    sub         eax,6
>00562AFA    je          0056309B
 00562B00    sub         eax,0C
>00562B03    je          005630AD
>00562B09    jmp         0056429B
 00562B0E    cmp         eax,6121
>00562B13    jg          00562CAA
>00562B19    je          0056406D
 00562B1F    cmp         eax,5081
>00562B24    jg          00562BEB
>00562B2A    je          00563FEF
 00562B30    cmp         eax,4D38
>00562B35    jg          00562B93
>00562B37    je          005632B7
 00562B3D    cmp         eax,4395
>00562B42    jg          00562B6F
>00562B44    je          00563119
 00562B4A    sub         eax,4391
>00562B4F    je          005630D1
 00562B55    dec         eax
>00562B56    je          005630E3
 00562B5C    dec         eax
>00562B5D    je          005630F5
 00562B63    dec         eax
>00562B64    je          00563107
>00562B6A    jmp         0056429B
 00562B6F    sub         eax,439C
>00562B74    je          0056312B
 00562B7A    sub         eax,994
>00562B7F    je          00563293
 00562B85    sub         eax,3
>00562B88    je          005632A5
>00562B8E    jmp         0056429B
 00562B93    cmp         eax,502B
>00562B98    jg          00562BCB
>00562B9A    je          00563D31
 00562BA0    sub         eax,4D68
>00562BA5    je          005632C9
 00562BAB    dec         eax
>00562BAC    je          005632DB
 00562BB2    sub         eax,2BF
>00562BB7    je          00563D0D
 00562BBD    sub         eax,2
>00562BC0    je          00563D1F
>00562BC6    jmp         0056429B
 00562BCB    sub         eax,5040
>00562BD0    je          00563FB9
 00562BD6    dec         eax
>00562BD7    je          00563FCB
 00562BDD    sub         eax,3F
>00562BE0    je          00563FDD
>00562BE6    jmp         0056429B
 00562BEB    cmp         eax,5289
>00562BF0    jg          00562C4E
>00562BF2    je          0056301D
 00562BF8    cmp         eax,5275
>00562BFD    jg          00562C2E
>00562BFF    je          005632ED
 00562C05    sub         eax,5215
>00562C0A    je          00562F9F
 00562C10    sub         eax,10
>00562C13    je          00562FB1
 00562C19    sub         eax,3
>00562C1C    je          00562FC3
 00562C22    dec         eax
>00562C23    je          00562FD5
>00562C29    jmp         0056429B
 00562C2E    sub         eax,5281
>00562C33    je          00562FE7
 00562C39    sub         eax,6
>00562C3C    je          00562FF9
 00562C42    dec         eax
>00562C43    je          0056300B
>00562C49    jmp         0056429B
 00562C4E    cmp         eax,6042
>00562C53    jg          00562C88
>00562C55    je          00564025
 00562C5B    sub         eax,5324
>00562C60    je          00563E63
 00562C66    sub         eax,1EF
>00562C6B    je          00562E7F
 00562C71    sub         eax,0B2D
>00562C76    je          00564001
 00562C7C    dec         eax
>00562C7D    je          00564013
>00562C83    jmp         0056429B
 00562C88    sub         eax,6080
>00562C8D    je          00564037
 00562C93    dec         eax
>00562C94    je          00564049
 00562C9A    sub         eax,80
>00562C9F    je          0056405B
>00562CA5    jmp         0056429B
 00562CAA    cmp         eax,7441
>00562CAF    jg          00562D80
>00562CB5    je          00562F69
 00562CBB    cmp         eax,7010
>00562CC0    jg          00562D24
>00562CC2    je          00563D43
 00562CC8    cmp         eax,6287
>00562CCD    jg          00562D00
>00562CCF    je          00563E75
 00562CD5    sub         eax,6123
>00562CDA    je          0056407F
 00562CE0    sub         eax,22
>00562CE3    je          00564091
 00562CE9    sub         eax,123
>00562CEE    je          005632FF
 00562CF4    dec         eax
>00562CF5    je          00563311
>00562CFB    jmp         0056429B
 00562D00    sub         eax,6565
>00562D05    je          00563F95
 00562D0B    sub         eax,0BD
>00562D10    je          00563323
 00562D16    sub         eax,7
>00562D19    je          00563335
>00562D1F    jmp         0056429B
 00562D24    cmp         eax,7275
>00562D29    jg          00562D5E
>00562D2B    je          00563347
 00562D31    sub         eax,7042
>00562D36    je          005640A3
 00562D3C    sub         eax,0CF
>00562D41    je          00563D55
 00562D47    sub         eax,63
>00562D4A    je          0056426E
 00562D50    sub         eax,25
>00562D53    je          00563D67
>00562D59    jmp         0056429B
 00562D5E    sub         eax,7401
>00562D63    je          00562F33
 00562D69    sub         eax,8
>00562D6C    je          00562F45
 00562D72    sub         eax,8
>00562D75    je          00562F57
>00562D7B    jmp         0056429B
 00562D80    cmp         eax,84CA
>00562D85    jg          00562DE7
>00562D87    je          00563D9D
 00562D8D    cmp         eax,811A
>00562D92    jg          00562DC9
>00562D94    je          00563D8B
 00562D9A    sub         eax,7469
>00562D9F    je          00562F7B
 00562DA5    sub         eax,198
>00562DAA    je          00563D79
 00562DB0    sub         eax,0A01
>00562DB5    je          00563359
 00562DBB    sub         eax,11
>00562DBE    je          00563F83
>00562DC4    jmp         0056429B
 00562DC9    sub         eax,8211
>00562DCE    je          0056380F
 00562DD4    dec         eax
>00562DD5    je          00563821
 00562DDB    dec         eax
>00562DDC    je          00563833
>00562DE2    jmp         0056429B
 00562DE7    cmp         eax,0D001
>00562DEC    jg          00562E25
>00562DEE    je          005640EB
 00562DF4    sub         eax,9130
>00562DF9    je          00563F71
 00562DFF    sub         eax,1D03
>00562E04    je          00563F4D
 00562E0A    sub         eax,1725
>00562E0F    je          00564121
 00562E15    sub         eax,0C9
>00562E1A    je          00564133
>00562E20    jmp         0056429B
 00562E25    sub         eax,0D568
>00562E2A    je          00564145
 00562E30    sub         eax,1AB9
>00562E35    je          0056427D
 00562E3B    sub         eax,3
>00562E3E    je          0056428C
>00562E44    jmp         0056429B
 00562E49    mov         eax,dword ptr [ebp-0C]
 00562E4C    mov         edx,5642F0;'180 IDE UDMA'
 00562E51    call        @LStrAsg
>00562E56    jmp         005642C6
 00562E5B    mov         eax,dword ptr [ebp-0C]
 00562E5E    mov         edx,564308;'181 IDE UDMA'
 00562E63    call        @LStrAsg
>00562E68    jmp         005642C6
 00562E6D    mov         eax,dword ptr [ebp-0C]
 00562E70    mov         edx,564320;'965/965L IDE'
 00562E75    call        @LStrAsg
>00562E7A    jmp         005642C6
 00562E7F    mov         eax,dword ptr [ebp-0C]
 00562E82    mov         edx,564338;'5513A/B IDE'
 00562E87    call        @LStrAsg
>00562E8C    jmp         005642C6
 00562E91    mov         eax,dword ptr [ebp-0C]
 00562E94    mov         edx,564338;'5513A/B IDE'
 00562E99    call        @LStrAsg
>00562E9E    jmp         005642C6
 00562EA3    mov         eax,dword ptr [ebp-0C]
 00562EA6    mov         edx,56434C;'83C601 EIDE'
 00562EAB    call        @LStrAsg
>00562EB0    jmp         005642C6
 00562EB5    mov         eax,dword ptr [ebp-0C]
 00562EB8    mov         edx,564360;'83C602 EIDE'
 00562EBD    call        @LStrAsg
>00562EC2    jmp         005642C6
 00562EC7    mov         eax,dword ptr [ebp-0C]
 00562ECA    mov         edx,564374;'PC3000 Board'
 00562ECF    call        @LStrAsg
>00562ED4    jmp         005642C6
 00562ED9    mov         eax,dword ptr [ebp-0C]
 00562EDC    mov         edx,56438C;'PC3000 UDMA'
 00562EE1    call        @LStrAsg
>00562EE6    jmp         005642C6
 00562EEB    mov         eax,dword ptr [ebp-0C]
 00562EEE    mov         edx,5643A0;'K-Tool Board'
 00562EF3    call        @LStrAsg
>00562EF8    jmp         005642C6
 00562EFD    mov         eax,dword ptr [ebp-0C]
 00562F00    mov         edx,5643B8;'1420SA SATA II RAID '
 00562F05    call        @LStrAsg
>00562F0A    jmp         005642C6
 00562F0F    mov         eax,dword ptr [ebp-0C]
 00562F12    mov         edx,5643D8;'1430SA SATA II RAID '
 00562F17    call        @LStrAsg
>00562F1C    jmp         005642C6
 00562F21    mov         eax,dword ptr [ebp-0C]
 00562F24    mov         edx,5643F8;'2015PL EIDE'
 00562F29    call        @LStrAsg
>00562F2E    jmp         005642C6
 00562F33    mov         eax,dword ptr [ebp-0C]
 00562F36    mov         edx,56440C;'AMD-755 IDE'
 00562F3B    call        @LStrAsg
>00562F40    jmp         005642C6
 00562F45    mov         eax,dword ptr [ebp-0C]
 00562F48    mov         edx,564420;'AMD-756 IDE'
 00562F4D    call        @LStrAsg
>00562F52    jmp         005642C6
 00562F57    mov         eax,dword ptr [ebp-0C]
 00562F5A    mov         edx,564434;'AMD-766 IDE'
 00562F5F    call        @LStrAsg
>00562F64    jmp         005642C6
 00562F69    mov         eax,dword ptr [ebp-0C]
 00562F6C    mov         edx,564448;'AMD-768 IDE'
 00562F71    call        @LStrAsg
>00562F76    jmp         005642C6
 00562F7B    mov         eax,dword ptr [ebp-0C]
 00562F7E    mov         edx,56445C;'AMD-8111 IDE'
 00562F83    call        @LStrAsg
>00562F88    jmp         005642C6
 00562F8D    mov         eax,dword ptr [ebp-0C]
 00562F90    mov         edx,564474;'53C810'
 00562F95    call        @LStrAsg
>00562F9A    jmp         005642C6
 00562F9F    mov         eax,dword ptr [ebp-0C]
 00562FA2    mov         edx,564484;'M5215 EIDE'
 00562FA7    call        @LStrAsg
>00562FAC    jmp         005642C6
 00562FB1    mov         eax,dword ptr [ebp-0C]
 00562FB4    mov         edx,564498;'M5225 EIDE'
 00562FB9    call        @LStrAsg
>00562FBE    jmp         005642C6
 00562FC3    mov         eax,dword ptr [ebp-0C]
 00562FC6    mov         edx,5644AC;'M5228 ATA/RAID'
 00562FCB    call        @LStrAsg
>00562FD0    jmp         005642C6
 00562FD5    mov         eax,dword ptr [ebp-0C]
 00562FD8    mov         edx,5644C4;'M5229 IDE'
 00562FDD    call        @LStrAsg
>00562FE2    jmp         005642C6
 00562FE7    mov         eax,dword ptr [ebp-0C]
 00562FEA    mov         edx,5644D8;'M5281 SATA/RAID'
 00562FEF    call        @LStrAsg
>00562FF4    jmp         005642C6
 00562FF9    mov         eax,dword ptr [ebp-0C]
 00562FFC    mov         edx,5644F0;'M5287 SATA'
 00563001    call        @LStrAsg
>00563006    jmp         005642C6
 0056300B    mov         eax,dword ptr [ebp-0C]
 0056300E    mov         edx,564504;'M5288 SATA'
 00563013    call        @LStrAsg
>00563018    jmp         005642C6
 0056301D    mov         eax,dword ptr [ebp-0C]
 00563020    mov         edx,564518;'M5289 SATA'
 00563025    call        @LStrAsg
>0056302A    jmp         005642C6
 0056302F    mov         eax,dword ptr [ebp-0C]
 00563032    mov         edx,56452C;'Dual Channel Bus Master PCI IDE'
 00563037    call        @LStrAsg
>0056303C    jmp         005642C6
 00563041    mov         eax,dword ptr [ebp-0C]
 00563044    mov         edx,564554;'Undefined'
 00563049    call        @LStrAsg
>0056304E    jmp         005642C6
 00563053    mov         eax,dword ptr [ebp-0C]
 00563056    mov         edx,564568;'436E SATA'
 0056305B    call        @LStrAsg
>00563060    jmp         005642C6
 00563065    mov         eax,dword ptr [ebp-0C]
 00563068    mov         edx,56457C;'IXP SB400 IDE'
 0056306D    call        @LStrAsg
>00563072    jmp         005642C6
 00563077    mov         eax,dword ptr [ebp-0C]
 0056307A    mov         edx,564594;'IXP SB400 SATA'
 0056307F    call        @LStrAsg
>00563084    jmp         005642C6
 00563089    mov         eax,dword ptr [ebp-0C]
 0056308C    mov         edx,564594;'IXP SB400 SATA'
 00563091    call        @LStrAsg
>00563096    jmp         005642C6
 0056309B    mov         eax,dword ptr [ebp-0C]
 0056309E    mov         edx,5645AC;'SB600 Non-Raid-5 SATA'
 005630A3    call        @LStrAsg
>005630A8    jmp         005642C6
 005630AD    mov         eax,dword ptr [ebp-0C]
 005630B0    mov         edx,5645CC;'SB600 IDE'
 005630B5    call        @LStrAsg
>005630BA    jmp         005642C6
 005630BF    mov         eax,dword ptr [ebp-0C]
 005630C2    mov         edx,5645E0;'SB700/SB800 SATA [IDE mode]'
 005630C7    call        @LStrAsg
>005630CC    jmp         005642C6
 005630D1    mov         eax,dword ptr [ebp-0C]
 005630D4    mov         edx,564604;'SB700/SB800 SATA [AHCI mode]'
 005630D9    call        @LStrAsg
>005630DE    jmp         005642C6
 005630E3    mov         eax,dword ptr [ebp-0C]
 005630E6    mov         edx,56462C;'SB700/SB800 SATA [Non-RAID5 mode]'
 005630EB    call        @LStrAsg
>005630F0    jmp         005642C6
 005630F5    mov         eax,dword ptr [ebp-0C]
 005630F8    mov         edx,564658;'SB700/SB800 SATA [RAID5 mode]'
 005630FD    call        @LStrAsg
>00563102    jmp         005642C6
 00563107    mov         eax,dword ptr [ebp-0C]
 0056310A    mov         edx,564680;'SB700/SB800 SATA [SATA and FC Enabled]'
 0056310F    call        @LStrAsg
>00563114    jmp         005642C6
 00563119    mov         eax,dword ptr [ebp-0C]
 0056311C    mov         edx,5646B0;'SB800 SATA [Storage mode with HyperFlash-PCIE]'
 00563121    call        @LStrAsg
>00563126    jmp         005642C6
 0056312B    mov         eax,dword ptr [ebp-0C]
 0056312E    mov         edx,5646E8;'SB700/SB800 IDE'
 00563133    call        @LStrAsg
>00563138    jmp         005642C6
 0056313D    mov         eax,dword ptr [ebp-0C]
 00563140    mov         edx,564700;'PDC20265 (FastTrak100 Lite/Ultra100)'
 00563145    call        @LStrAsg
>0056314A    jmp         005642C6
 0056314F    mov         eax,dword ptr [ebp-0C]
 00563152    mov         edx,564730;'PDC20263'
 00563157    call        @LStrAsg
>0056315C    jmp         005642C6
 00563161    mov         eax,dword ptr [ebp-0C]
 00563164    mov         edx,564744;'PDC20275'
 00563169    call        @LStrAsg
>0056316E    jmp         005642C6
 00563173    mov         eax,dword ptr [ebp-0C]
 00563176    mov         edx,564758;'PDC20318 (SATA150 TX4)'
 0056317B    call        @LStrAsg
>00563180    jmp         005642C6
 00563185    mov         eax,dword ptr [ebp-0C]
 00563188    mov         edx,564778;'PDC20319 (FastTrak S150 TX4)'
 0056318D    call        @LStrAsg
>00563192    jmp         005642C6
 00563197    mov         eax,dword ptr [ebp-0C]
 0056319A    mov         edx,5647A0;'PDC20371 (FastTrak S150 TX2plus)'
 0056319F    call        @LStrAsg
>005631A4    jmp         005642C6
 005631A9    mov         eax,dword ptr [ebp-0C]
 005631AC    mov         edx,5647CC;'PDC20378 (FastTrak 378/SATA 378)'
 005631B1    call        @LStrAsg
>005631B6    jmp         005642C6
 005631BB    mov         eax,dword ptr [ebp-0C]
 005631BE    mov         edx,5647F8;'PDC20375 (SATA150 TX2plus)'
 005631C3    call        @LStrAsg
>005631C8    jmp         005642C6
 005631CD    mov         eax,dword ptr [ebp-0C]
 005631D0    mov         edx,56481C;'PDC20376 (FastTrak 376)'
 005631D5    call        @LStrAsg
>005631DA    jmp         005642C6
 005631DF    mov         eax,dword ptr [ebp-0C]
 005631E2    mov         edx,56483C;'PDC40719 [FastTrak TX4300/TX4310]'
 005631E7    call        @LStrAsg
>005631EC    jmp         005642C6
 005631F1    mov         eax,dword ptr [ebp-0C]
 005631F4    mov         edx,564868;'PDC40519 (FastTrak TX4200)'
 005631F9    call        @LStrAsg
>005631FE    jmp         005642C6
 00563203    mov         eax,dword ptr [ebp-0C]
 00563206    mov         edx,56488C;'PDC20771 (FastTrak TX2300)'
 0056320B    call        @LStrAsg
>00563210    jmp         005642C6
 00563215    mov         eax,dword ptr [ebp-0C]
 00563218    mov         edx,5648B0;'PDC20571 (FastTrak TX2200)'
 0056321D    call        @LStrAsg
>00563222    jmp         005642C6
 00563227    mov         eax,dword ptr [ebp-0C]
 0056322A    mov         edx,5648D4;'PDC20579 SATAII 150 IDE'
 0056322F    call        @LStrAsg
>00563234    jmp         005642C6
 00563239    mov         eax,dword ptr [ebp-0C]
 0056323C    mov         edx,5648F4;'PDC40779 (SATA 300 779)'
 00563241    call        @LStrAsg
>00563246    jmp         005642C6
 0056324B    mov         eax,dword ptr [ebp-0C]
 0056324E    mov         edx,564914;'PDC40718 (SATA 300 TX4)'
 00563253    call        @LStrAsg
>00563258    jmp         005642C6
 0056325D    mov         eax,dword ptr [ebp-0C]
 00563260    mov         edx,564934;'PDC20518/PDC40518 (SATAII 150 TX4)'
 00563265    call        @LStrAsg
>0056326A    jmp         005642C6
 0056326F    mov         eax,dword ptr [ebp-0C]
 00563272    mov         edx,564960;'PDC40775 (SATA 300 TX2plus)'
 00563277    call        @LStrAsg
>0056327C    jmp         005642C6
 00563281    mov         eax,dword ptr [ebp-0C]
 00563284    mov         edx,564984;'PDC20575 (SATAII150 TX2plus)'
 00563289    call        @LStrAsg
>0056328E    jmp         005642C6
 00563293    mov         eax,dword ptr [ebp-0C]
 00563296    mov         edx,5649AC;'PDC20267 (FastTrak100/Ultra100)'
 0056329B    call        @LStrAsg
>005632A0    jmp         005642C6
 005632A5    mov         eax,dword ptr [ebp-0C]
 005632A8    mov         edx,5649D4;'PDC20246'
 005632AD    call        @LStrAsg
>005632B2    jmp         005642C6
 005632B7    mov         eax,dword ptr [ebp-0C]
 005632BA    mov         edx,5649E8;'PDC20262 (FastTrak66/Ultra66)'
 005632BF    call        @LStrAsg
>005632C4    jmp         005642C6
 005632C9    mov         eax,dword ptr [ebp-0C]
 005632CC    mov         edx,564A10;'PDC20268 (Ultra100 TX2)'
 005632D1    call        @LStrAsg
>005632D6    jmp         005642C6
 005632DB    mov         eax,dword ptr [ebp-0C]
 005632DE    mov         edx,564A30;'PDC20269'
 005632E3    call        @LStrAsg
>005632E8    jmp         005642C6
 005632ED    mov         eax,dword ptr [ebp-0C]
 005632F0    mov         edx,564A44;'PDC20276 (MBFastTrak133 Lite)'
 005632F5    call        @LStrAsg
>005632FA    jmp         005642C6
 005632FF    mov         eax,dword ptr [ebp-0C]
 00563302    mov         edx,564A6C;'PDC20270 (FastTrak100 LP/TX2/TX4)'
 00563307    call        @LStrAsg
>0056330C    jmp         005642C6
 00563311    mov         eax,dword ptr [ebp-0C]
 00563314    mov         edx,564A98;'PDC20271 (FastTrak TX2000)'
 00563319    call        @LStrAsg
>0056331E    jmp         005642C6
 00563323    mov         eax,dword ptr [ebp-0C]
 00563326    mov         edx,564ABC;'PDC20621 [SATA150 SX4] 4 Channel IDE RAID'
 0056332B    call        @LStrAsg
>00563330    jmp         005642C6
 00563335    mov         eax,dword ptr [ebp-0C]
 00563338    mov         edx,564AF0;'PDC20619 (FastTrak TX4000)'
 0056333D    call        @LStrAsg
>00563342    jmp         005642C6
 00563347    mov         eax,dword ptr [ebp-0C]
 0056334A    mov         edx,564B14;'PDC20277 (SBFastTrak133 Lite)'
 0056334F    call        @LStrAsg
>00563354    jmp         005642C6
 00563359    mov         eax,dword ptr [ebp-0C]
 0056335C    mov         edx,564B3C;'SATAII150 SX8'
 00563361    call        @LStrAsg
>00563366    jmp         005642C6
 0056336B    mov         eax,dword ptr [ebp-0C]
 0056336E    mov         edx,564B54;'MCP04 IDE'
 00563373    call        @LStrAsg
>00563378    jmp         005642C6
 0056337D    mov         eax,dword ptr [ebp-0C]
 00563380    mov         edx,564B68;'MCP04 SATA'
 00563385    call        @LStrAsg
>0056338A    jmp         005642C6
 0056338F    mov         eax,dword ptr [ebp-0C]
 00563392    mov         edx,564B68;'MCP04 SATA'
 00563397    call        @LStrAsg
>0056339C    jmp         005642C6
 005633A1    mov         eax,dword ptr [ebp-0C]
 005633A4    mov         edx,564B7C;'CK804 IDE'
 005633A9    call        @LStrAsg
>005633AE    jmp         005642C6
 005633B3    mov         eax,dword ptr [ebp-0C]
 005633B6    mov         edx,564B90;'CK804 SATA'
 005633BB    call        @LStrAsg
>005633C0    jmp         005642C6
 005633C5    mov         eax,dword ptr [ebp-0C]
 005633C8    mov         edx,564B90;'CK804 SATA'
 005633CD    call        @LStrAsg
>005633D2    jmp         005642C6
 005633D7    mov         eax,dword ptr [ebp-0C]
 005633DA    mov         edx,564BA4;'nForce2 IDE'
 005633DF    call        @LStrAsg
>005633E4    jmp         005642C6
 005633E9    mov         eax,dword ptr [ebp-0C]
 005633EC    mov         edx,564BB8;'MCP2A IDE'
 005633F1    call        @LStrAsg
>005633F6    jmp         005642C6
 005633FB    mov         eax,dword ptr [ebp-0C]
 005633FE    mov         edx,564BCC;'nForce2 SATA'
 00563403    call        @LStrAsg
>00563408    jmp         005642C6
 0056340D    mov         eax,dword ptr [ebp-0C]
 00563410    mov         edx,564BE4;'nForce3 IDE'
 00563415    call        @LStrAsg
>0056341A    jmp         005642C6
 0056341F    mov         eax,dword ptr [ebp-0C]
 00563422    mov         edx,564BF8;'nForce3 SATA'
 00563427    call        @LStrAsg
>0056342C    jmp         005642C6
 00563431    mov         eax,dword ptr [ebp-0C]
 00563434    mov         edx,564C10;'CK8S PATA (v2.5)'
 00563439    call        @LStrAsg
>0056343E    jmp         005642C6
 00563443    mov         eax,dword ptr [ebp-0C]
 00563446    mov         edx,564C2C;'nForce3 SATA 2'
 0056344B    call        @LStrAsg
>00563450    jmp         005642C6
 00563455    mov         eax,dword ptr [ebp-0C]
 00563458    mov         edx,564C44;'nForce IDE'
 0056345D    call        @LStrAsg
>00563462    jmp         005642C6
 00563467    mov         eax,dword ptr [ebp-0C]
 0056346A    mov         edx,564C58;'MCP51 IDE'
 0056346F    call        @LStrAsg
>00563474    jmp         005642C6
 00563479    mov         eax,dword ptr [ebp-0C]
 0056347C    mov         edx,564C6C;'MCP51 SATA'
 00563481    call        @LStrAsg
>00563486    jmp         005642C6
 0056348B    mov         eax,dword ptr [ebp-0C]
 0056348E    mov         edx,564C6C;'MCP51 SATA'
 00563493    call        @LStrAsg
>00563498    jmp         005642C6
 0056349D    mov         eax,dword ptr [ebp-0C]
 005634A0    mov         edx,564C80;'MCP55 IDE'
 005634A5    call        @LStrAsg
>005634AA    jmp         005642C6
 005634AF    mov         eax,dword ptr [ebp-0C]
 005634B2    mov         edx,564C94;'MCP55 SATA'
 005634B7    call        @LStrAsg
>005634BC    jmp         005642C6
 005634C1    mov         eax,dword ptr [ebp-0C]
 005634C4    mov         edx,564C94;'MCP55 SATA'
 005634C9    call        @LStrAsg
>005634CE    jmp         005642C6
 005634D3    mov         eax,dword ptr [ebp-0C]
 005634D6    mov         edx,564CA8;'MCP61 SATA'
 005634DB    call        @LStrAsg
>005634E0    jmp         005642C6
 005634E5    mov         eax,dword ptr [ebp-0C]
 005634E8    mov         edx,564CBC;'MCP61 IDE'
 005634ED    call        @LStrAsg
>005634F2    jmp         005642C6
 005634F7    mov         eax,dword ptr [ebp-0C]
 005634FA    mov         edx,564CA8;'MCP61 SATA'
 005634FF    call        @LStrAsg
>00563504    jmp         005642C6
 00563509    mov         eax,dword ptr [ebp-0C]
 0056350C    mov         edx,564CA8;'MCP61 SATA'
 00563511    call        @LStrAsg
>00563516    jmp         005642C6
 0056351B    mov         eax,dword ptr [ebp-0C]
 0056351E    mov         edx,564CD0;'MCP65 IDE'
 00563523    call        @LStrAsg
>00563528    jmp         005642C6
 0056352D    mov         eax,dword ptr [ebp-0C]
 00563530    mov         edx,564CE4;'MCP65 AHCI'
 00563535    call        @LStrAsg
>0056353A    jmp         005642C6
 0056353F    mov         eax,dword ptr [ebp-0C]
 00563542    mov         edx,564CE4;'MCP65 AHCI'
 00563547    call        @LStrAsg
>0056354C    jmp         005642C6
 00563551    mov         eax,dword ptr [ebp-0C]
 00563554    mov         edx,564CE4;'MCP65 AHCI'
 00563559    call        @LStrAsg
>0056355E    jmp         005642C6
 00563563    mov         eax,dword ptr [ebp-0C]
 00563566    mov         edx,564CE4;'MCP65 AHCI'
 0056356B    call        @LStrAsg
>00563570    jmp         005642C6
 00563575    mov         eax,dword ptr [ebp-0C]
 00563578    mov         edx,564CF8;'MCP65 SATA'
 0056357D    call        @LStrAsg
>00563582    jmp         005642C6
 00563587    mov         eax,dword ptr [ebp-0C]
 0056358A    mov         edx,564CF8;'MCP65 SATA'
 0056358F    call        @LStrAsg
>00563594    jmp         005642C6
 00563599    mov         eax,dword ptr [ebp-0C]
 0056359C    mov         edx,564CF8;'MCP65 SATA'
 005635A1    call        @LStrAsg
>005635A6    jmp         005642C6
 005635AB    mov         eax,dword ptr [ebp-0C]
 005635AE    mov         edx,564CF8;'MCP65 SATA'
 005635B3    call        @LStrAsg
>005635B8    jmp         005642C6
 005635BD    mov         eax,dword ptr [ebp-0C]
 005635C0    mov         edx,564D0C;'MCP67 AHCI'
 005635C5    call        @LStrAsg
>005635CA    jmp         005642C6
 005635CF    mov         eax,dword ptr [ebp-0C]
 005635D2    mov         edx,564D0C;'MCP67 AHCI'
 005635D7    call        @LStrAsg
>005635DC    jmp         005642C6
 005635E1    mov         eax,dword ptr [ebp-0C]
 005635E4    mov         edx,564D20;'MCP67 SATA'
 005635E9    call        @LStrAsg
>005635EE    jmp         005642C6
 005635F3    mov         eax,dword ptr [ebp-0C]
 005635F6    mov         edx,564D34;'MCP67 IDE'
 005635FB    call        @LStrAsg
>00563600    jmp         005642C6
 00563605    mov         eax,dword ptr [ebp-0C]
 00563608    mov         edx,564D48;'MCP73 IDE'
 0056360D    call        @LStrAsg
>00563612    jmp         005642C6
 00563617    mov         eax,dword ptr [ebp-0C]
 0056361A    mov         edx,564D5C;'MCP78S [GeForce 8200] IDE'
 0056361F    call        @LStrAsg
>00563624    jmp         005642C6
 00563629    mov         eax,dword ptr [ebp-0C]
 0056362C    mov         edx,564D48;'MCP73 IDE'
 00563631    call        @LStrAsg
>00563636    jmp         005642C6
 0056363B    mov         eax,dword ptr [ebp-0C]
 0056363E    mov         edx,564D80;'GeForce 7100/nForce 630i'
 00563643    call        @LStrAsg
>00563648    jmp         005642C6
 0056364D    mov         eax,dword ptr [ebp-0C]
 00563650    mov         edx,564DA4;'MCP73 SATA RAID'
 00563655    call        @LStrAsg
>0056365A    jmp         005642C6
 0056365F    mov         eax,dword ptr [ebp-0C]
 00563662    mov         edx,564DBC;'MCP79 SATA'
 00563667    call        @LStrAsg
>0056366C    jmp         005642C6
 00563671    mov         eax,dword ptr [ebp-0C]
 00563674    mov         edx,564DBC;'MCP79 SATA'
 00563679    call        @LStrAsg
>0056367E    jmp         005642C6
 00563683    mov         eax,dword ptr [ebp-0C]
 00563686    mov         edx,564DBC;'MCP79 SATA'
 0056368B    call        @LStrAsg
>00563690    jmp         005642C6
 00563695    mov         eax,dword ptr [ebp-0C]
 00563698    mov         edx,564DBC;'MCP79 SATA'
 0056369D    call        @LStrAsg
>005636A2    jmp         005642C6
 005636A7    mov         eax,dword ptr [ebp-0C]
 005636AA    mov         edx,564DD0;'MCP79 AHCI'
 005636AF    call        @LStrAsg
>005636B4    jmp         005642C6
 005636B9    mov         eax,dword ptr [ebp-0C]
 005636BC    mov         edx,564DD0;'MCP79 AHCI'
 005636C1    call        @LStrAsg
>005636C6    jmp         005642C6
 005636CB    mov         eax,dword ptr [ebp-0C]
 005636CE    mov         edx,564DD0;'MCP79 AHCI'
 005636D3    call        @LStrAsg
>005636D8    jmp         005642C6
 005636DD    mov         eax,dword ptr [ebp-0C]
 005636E0    mov         edx,564DD0;'MCP79 AHCI'
 005636E5    call        @LStrAsg
>005636EA    jmp         005642C6
 005636EF    mov         eax,dword ptr [ebp-0C]
 005636F2    mov         edx,564DE4;'MCP79 RAID'
 005636F7    call        @LStrAsg
>005636FC    jmp         005642C6
 00563701    mov         eax,dword ptr [ebp-0C]
 00563704    mov         edx,564DE4;'MCP79 RAID'
 00563709    call        @LStrAsg
>0056370E    jmp         005642C6
 00563713    mov         eax,dword ptr [ebp-0C]
 00563716    mov         edx,564DE4;'MCP79 RAID'
 0056371B    call        @LStrAsg
>00563720    jmp         005642C6
 00563725    mov         eax,dword ptr [ebp-0C]
 00563728    mov         edx,564DE4;'MCP79 RAID'
 0056372D    call        @LStrAsg
>00563732    jmp         005642C6
 00563737    mov         eax,dword ptr [ebp-0C]
 0056373A    mov         edx,564DF8;'MCP78S [GeForce 8200] SATA  (non-AHCI mode)'
 0056373F    call        @LStrAsg
>00563744    jmp         005642C6
 00563749    mov         eax,dword ptr [ebp-0C]
 0056374C    mov         edx,564E2C;'MCP78S [GeForce 8200] AHCI'
 00563751    call        @LStrAsg
>00563756    jmp         005642C6
 0056375B    mov         eax,dword ptr [ebp-0C]
 0056375E    mov         edx,564E50;'HighPoint 343/345/346/363'
 00563763    call        @LStrAsg
>00563768    jmp         005642C6
 0056376D    mov         eax,dword ptr [ebp-0C]
 00563770    mov         edx,564E74;'HighPoint 366/368/370/370A/372/372N'
 00563775    call        @LStrAsg
>0056377A    jmp         005642C6
 0056377F    mov         eax,dword ptr [ebp-0C]
 00563782    mov         edx,564EA0;'HighPoint 371/371N'
 00563787    call        @LStrAsg
>0056378C    jmp         005642C6
 00563791    mov         eax,dword ptr [ebp-0C]
 00563794    mov         edx,564EBC;'HighPoint 374'
 00563799    call        @LStrAsg
>0056379E    jmp         005642C6
 005637A3    mov         eax,dword ptr [ebp-0C]
 005637A6    mov         edx,564ED4;'HighPoint 372N-133'
 005637AB    call        @LStrAsg
>005637B0    jmp         005642C6
 005637B5    mov         eax,dword ptr [ebp-0C]
 005637B8    mov         edx,564EF0;'RocketRAID 1720 (2x SATA II RAID)'
 005637BD    call        @LStrAsg
>005637C2    jmp         005642C6
 005637C7    mov         eax,dword ptr [ebp-0C]
 005637CA    mov         edx,564F1C;'RocketRAID 1740'
 005637CF    call        @LStrAsg
>005637D4    jmp         005642C6
 005637D9    mov         eax,dword ptr [ebp-0C]
 005637DC    mov         edx,564F34;'RocketRAID 1742'
 005637E1    call        @LStrAsg
>005637E6    jmp         005642C6
 005637EB    mov         eax,dword ptr [ebp-0C]
 005637EE    mov         edx,564F4C;'RocketRAID 230x 4 Port SATA-II'
 005637F3    call        @LStrAsg
>005637F8    jmp         005642C6
 005637FD    mov         eax,dword ptr [ebp-0C]
 00563800    mov         edx,564F74;'RocketRAID 2310 4 Port SATA-II'
 00563805    call        @LStrAsg
>0056380A    jmp         005642C6
 0056380F    mov         eax,dword ptr [ebp-0C]
 00563812    mov         edx,564F9C;'IT8211 Single Channel UDMA 133'
 00563817    call        @LStrAsg
>0056381C    jmp         005642C6
 00563821    mov         eax,dword ptr [ebp-0C]
 00563824    mov         edx,564FC4;'IT8212 Dual channel ATA RAID'
 00563829    call        @LStrAsg
>0056382E    jmp         005642C6
 00563833    mov         eax,dword ptr [ebp-0C]
 00563836    mov         edx,564FEC;'IT8213 IDE'
 0056383B    call        @LStrAsg
>00563840    jmp         005642C6
 00563845    mov         eax,dword ptr [ebp-0C]
 00563848    mov         edx,565000;'82371FB PIIX IDE [Triton I]'
 0056384D    call        @LStrAsg
>00563852    jmp         005642C6
 00563857    mov         eax,dword ptr [ebp-0C]
 0056385A    mov         edx,565024;'430MX - 82371MX Mobile IDE (MPIIX)'
 0056385F    call        @LStrAsg
>00563864    jmp         005642C6
 00563869    mov         eax,dword ptr [ebp-0C]
 0056386C    mov         edx,565050;'82801AA IDE'
 00563871    call        @LStrAsg
>00563876    jmp         005642C6
 0056387B    mov         eax,dword ptr [ebp-0C]
 0056387E    mov         edx,565064;'82801AB IDE'
 00563883    call        @LStrAsg
>00563888    jmp         005642C6
 0056388D    mov         eax,dword ptr [ebp-0C]
 00563890    mov         edx,565078;'82801BAM IDE U100'
 00563895    call        @LStrAsg
>0056389A    jmp         005642C6
 0056389F    mov         eax,dword ptr [ebp-0C]
 005638A2    mov         edx,565094;'82801BA IDE U100'
 005638A7    call        @LStrAsg
>005638AC    jmp         005642C6
 005638B1    mov         eax,dword ptr [ebp-0C]
 005638B4    mov         edx,5650B0;'82801E IDE U100'
 005638B9    call        @LStrAsg
>005638BE    jmp         005642C6
 005638C3    mov         eax,dword ptr [ebp-0C]
 005638C6    mov         edx,5650C8;'82801CAM IDE U100'
 005638CB    call        @LStrAsg
>005638D0    jmp         005642C6
 005638D5    mov         eax,dword ptr [ebp-0C]
 005638D8    mov         edx,5650E4;'82801CA Ultra ATA Storage'
 005638DD    call        @LStrAsg
>005638E2    jmp         005642C6
 005638E7    mov         eax,dword ptr [ebp-0C]
 005638EA    mov         edx,565108;'82801DBM (ICH4-M) IDE'
 005638EF    call        @LStrAsg
>005638F4    jmp         005642C6
 005638F9    mov         eax,dword ptr [ebp-0C]
 005638FC    mov         edx,565128;'82801DB (ICH4) IDE'
 00563901    call        @LStrAsg
>00563906    jmp         005642C6
 0056390B    mov         eax,dword ptr [ebp-0C]
 0056390E    mov         edx,565144;'82801EB (ICH5) SATA'
 00563913    call        @LStrAsg
>00563918    jmp         005642C6
 0056391D    mov         eax,dword ptr [ebp-0C]
 00563920    mov         edx,565160;'82801EB/ER (ICH5/ICH5R) IDE'
 00563925    call        @LStrAsg
>0056392A    jmp         005642C6
 0056392F    mov         eax,dword ptr [ebp-0C]
 00563932    mov         edx,565184;'82801ER (ICH5R) SATA'
 00563937    call        @LStrAsg
>0056393C    jmp         005642C6
 00563941    mov         eax,dword ptr [ebp-0C]
 00563944    mov         edx,5651A4;'6300ESB PATA Storage'
 00563949    call        @LStrAsg
>0056394E    jmp         005642C6
 00563953    mov         eax,dword ptr [ebp-0C]
 00563956    mov         edx,5651C4;'6300ESB SATA Storage'
 0056395B    call        @LStrAsg
>00563960    jmp         005642C6
 00563965    mov         eax,dword ptr [ebp-0C]
 00563968    mov         edx,5651E4;'6300ESB SATA RAID'
 0056396D    call        @LStrAsg
>00563972    jmp         005642C6
 00563977    mov         eax,dword ptr [ebp-0C]
 0056397A    mov         edx,565200;'82801FB/FW (ICH6/ICH6W) SATA'
 0056397F    call        @LStrAsg
>00563984    jmp         005642C6
 00563989    mov         eax,dword ptr [ebp-0C]
 0056398C    mov         edx,565228;'82801FR/FRW (ICH6R/ICH6RW) SATA'
 00563991    call        @LStrAsg
>00563996    jmp         005642C6
 0056399B    mov         eax,dword ptr [ebp-0C]
 0056399E    mov         edx,565250;'82801FBM (ICH6M) SATA'
 005639A3    call        @LStrAsg
>005639A8    jmp         005642C6
 005639AD    mov         eax,dword ptr [ebp-0C]
 005639B0    mov         edx,565270;'82801FB/FBM/FR/FW/FRW (ICH6 Family) IDE'
 005639B5    call        @LStrAsg
>005639BA    jmp         005642C6
 005639BF    mov         eax,dword ptr [ebp-0C]
 005639C2    mov         edx,5652A0;'631xESB/632xESB/3100 Chipset SATA IDE'
 005639C7    call        @LStrAsg
>005639CC    jmp         005642C6
 005639D1    mov         eax,dword ptr [ebp-0C]
 005639D4    mov         edx,5652D0;'631xESB/632xESB SATA AHCI'
 005639D9    call        @LStrAsg
>005639DE    jmp         005642C6
 005639E3    mov         eax,dword ptr [ebp-0C]
 005639E6    mov         edx,5652F4;'631xESB/632xESB SATA RAID'
 005639EB    call        @LStrAsg
>005639F0    jmp         005642C6
 005639F5    mov         eax,dword ptr [ebp-0C]
 005639F8    mov         edx,5652F4;'631xESB/632xESB SATA RAID'
 005639FD    call        @LStrAsg
>00563A02    jmp         005642C6
 00563A07    mov         eax,dword ptr [ebp-0C]
 00563A0A    mov         edx,565318;'631xESB/632xESB IDE'
 00563A0F    call        @LStrAsg
>00563A14    jmp         005642C6
 00563A19    mov         eax,dword ptr [ebp-0C]
 00563A1C    mov         edx,565334;'82801GB/GR/GH (ICH7 Family) SATA IDE'
 00563A21    call        @LStrAsg
>00563A26    jmp         005642C6
 00563A2B    mov         eax,dword ptr [ebp-0C]
 00563A2E    mov         edx,565364;'82801GR/GH (ICH7 Family) SATA AHCI'
 00563A33    call        @LStrAsg
>00563A38    jmp         005642C6
 00563A3D    mov         eax,dword ptr [ebp-0C]
 00563A40    mov         edx,565390;'82801GR/GH (ICH7 Family) SATA RAID'
 00563A45    call        @LStrAsg
>00563A4A    jmp         005642C6
 00563A4F    mov         eax,dword ptr [ebp-0C]
 00563A52    mov         edx,5653BC;'82801GBM/GHM (ICH7 Family) SATA IDE'
 00563A57    call        @LStrAsg
>00563A5C    jmp         005642C6
 00563A61    mov         eax,dword ptr [ebp-0C]
 00563A64    mov         edx,5653E8;'82801GBM/GHM (ICH7 Family) SATA AHCI'
 00563A69    call        @LStrAsg
>00563A6E    jmp         005642C6
 00563A73    mov         eax,dword ptr [ebp-0C]
 00563A76    mov         edx,565418;'82801GHM (ICH7-M DH) SATA RAID'
 00563A7B    call        @LStrAsg
>00563A80    jmp         005642C6
 00563A85    mov         eax,dword ptr [ebp-0C]
 00563A88    mov         edx,565440;'82801G (ICH7 Family) IDE'
 00563A8D    call        @LStrAsg
>00563A92    jmp         005642C6
 00563A97    mov         eax,dword ptr [ebp-0C]
 00563A9A    mov         edx,565464;'82801H (ICH8 Family) 4 port SATA IDE'
 00563A9F    call        @LStrAsg
>00563AA4    jmp         005642C6
 00563AA9    mov         eax,dword ptr [ebp-0C]
 00563AAC    mov         edx,565494;'82801HR/HO/HH (ICH8R/DO/DH) 6 port SATA AHCI'
 00563AB1    call        @LStrAsg
>00563AB6    jmp         005642C6
 00563ABB    mov         eax,dword ptr [ebp-0C]
 00563ABE    mov         edx,5654CC;'82801 SATA RAID'
 00563AC3    call        @LStrAsg
>00563AC8    jmp         005642C6
 00563ACD    mov         eax,dword ptr [ebp-0C]
 00563AD0    mov         edx,5654E4;'82801HB (ICH8) 4 port SATA AHCI'
 00563AD5    call        @LStrAsg
>00563ADA    jmp         005642C6
 00563ADF    mov         eax,dword ptr [ebp-0C]
 00563AE2    mov         edx,56550C;'82801H (ICH8 Family) 2 port SATA IDE'
 00563AE7    call        @LStrAsg
>00563AEC    jmp         005642C6
 00563AF1    mov         eax,dword ptr [ebp-0C]
 00563AF4    mov         edx,56553C;'82801HBM/HEM (ICH8M/ICH8M-E) SATA IDE'
 00563AF9    call        @LStrAsg
>00563AFE    jmp         005642C6
 00563B03    mov         eax,dword ptr [ebp-0C]
 00563B06    mov         edx,56556C;'82801HBM/HEM (ICH8M/ICH8M-E) SATA AHCI'
 00563B0B    call        @LStrAsg
>00563B10    jmp         005642C6
 00563B15    mov         eax,dword ptr [ebp-0C]
 00563B18    mov         edx,56559C;'Mobile 82801 SATA RAID'
 00563B1D    call        @LStrAsg
>00563B22    jmp         005642C6
 00563B27    mov         eax,dword ptr [ebp-0C]
 00563B2A    mov         edx,5655BC;'82801HBM/HEM (ICH8M/ICH8M-E) IDE'
 00563B2F    call        @LStrAsg
>00563B34    jmp         005642C6
 00563B39    mov         eax,dword ptr [ebp-0C]
 00563B3C    mov         edx,5655E8;'82801IR/IO/IH (ICH9R/DO/DH) 4 port SATA IDE'
 00563B41    call        @LStrAsg
>00563B46    jmp         005642C6
 00563B4B    mov         eax,dword ptr [ebp-0C]
 00563B4E    mov         edx,56561C;'82801IB (ICH9) 2 port SATA IDE'
 00563B53    call        @LStrAsg
>00563B58    jmp         005642C6
 00563B5D    mov         eax,dword ptr [ebp-0C]
 00563B60    mov         edx,565644;'82801IR/IO/IH (ICH9R/DO/DH) 6 port SATA AHCI'
 00563B65    call        @LStrAsg
>00563B6A    jmp         005642C6
 00563B6F    mov         eax,dword ptr [ebp-0C]
 00563B72    mov         edx,56567C;'82801IB (ICH9) 4 port SATA AHCI'
 00563B77    call        @LStrAsg
>00563B7C    jmp         005642C6
 00563B81    mov         eax,dword ptr [ebp-0C]
 00563B84    mov         edx,5656A4;'82801IR/IO (ICH9R/DO) SATA RAID'
 00563B89    call        @LStrAsg
>00563B8E    jmp         005642C6
 00563B93    mov         eax,dword ptr [ebp-0C]
 00563B96    mov         edx,5656CC;'82801I (ICH9 Family) 2 port SATA IDE'
 00563B9B    call        @LStrAsg
>00563BA0    jmp         005642C6
 00563BA5    mov         eax,dword ptr [ebp-0C]
 00563BA8    mov         edx,5656FC;'ICH9M/M-E 2 port SATA IDE'
 00563BAD    call        @LStrAsg
>00563BB2    jmp         005642C6
 00563BB7    mov         eax,dword ptr [ebp-0C]
 00563BBA    mov         edx,565720;'ICH9M/M-E SATA AHCI'
 00563BBF    call        @LStrAsg
>00563BC4    jmp         005642C6
 00563BC9    mov         eax,dword ptr [ebp-0C]
 00563BCC    mov         edx,56573C;'ICH9M-E SATA RAID'
 00563BD1    call        @LStrAsg
>00563BD6    jmp         005642C6
 00563BDB    mov         eax,dword ptr [ebp-0C]
 00563BDE    mov         edx,5656FC;'ICH9M/M-E 2 port SATA IDE'
 00563BE3    call        @LStrAsg
>00563BE8    jmp         005642C6
 00563BED    mov         eax,dword ptr [ebp-0C]
 00563BF0    mov         edx,565758;'ICH9M SATA IDE'
 00563BF5    call        @LStrAsg
>00563BFA    jmp         005642C6
 00563BFF    mov         eax,dword ptr [ebp-0C]
 00563C02    mov         edx,565770;'GD31244 PCI-X SATA HBA'
 00563C07    call        @LStrAsg
>00563C0C    jmp         005642C6
 00563C11    mov         eax,dword ptr [ebp-0C]
 00563C14    mov         edx,565790;'82801JD/DO (ICH10 Family) 4-port SATA IDE'
 00563C19    call        @LStrAsg
>00563C1E    jmp         005642C6
 00563C23    mov         eax,dword ptr [ebp-0C]
 00563C26    mov         edx,5657C4;'82801JD/DO (ICH10 Family) SATA RAID'
 00563C2B    call        @LStrAsg
>00563C30    jmp         005642C6
 00563C35    mov         eax,dword ptr [ebp-0C]
 00563C38    mov         edx,5657F0;'82801JD/DO (ICH10 Family) 2-port SATA IDE'
 00563C3D    call        @LStrAsg
>00563C42    jmp         005642C6
 00563C47    mov         eax,dword ptr [ebp-0C]
 00563C4A    mov         edx,565824;'82801JI (ICH10 Family) 4 port SATA IDE'
 00563C4F    call        @LStrAsg
>00563C54    jmp         005642C6
 00563C59    mov         eax,dword ptr [ebp-0C]
 00563C5C    mov         edx,565854;'82801JIR (ICH10R) SATA RAID'
 00563C61    call        @LStrAsg
>00563C66    jmp         005642C6
 00563C6B    mov         eax,dword ptr [ebp-0C]
 00563C6E    mov         edx,565878;'82801JI (ICH10 Family) 2 port SATA IDE'
 00563C73    call        @LStrAsg
>00563C78    jmp         005642C6
 00563C7D    mov         eax,dword ptr [ebp-0C]
 00563C80    mov         edx,5658A8;'Ibex Peak 4 port SATA IDE'
 00563C85    call        @LStrAsg
>00563C8A    jmp         005642C6
 00563C8F    mov         eax,dword ptr [ebp-0C]
 00563C92    mov         edx,5658CC;'Ibex Peak SATA Enhanced RAID'
 00563C97    call        @LStrAsg
>00563C9C    jmp         005642C6
 00563CA1    mov         eax,dword ptr [ebp-0C]
 00563CA4    mov         edx,5658F4;'Ibex Peak SATA RAID'
 00563CA9    call        @LStrAsg
>00563CAE    jmp         005642C6
 00563CB3    mov         eax,dword ptr [ebp-0C]
 00563CB6    mov         edx,565910;'Ibex Peak 2 port SATA IDE'
 00563CBB    call        @LStrAsg
>00563CC0    jmp         005642C6
 00563CC5    mov         eax,dword ptr [ebp-0C]
 00563CC8    mov         edx,5658CC;'Ibex Peak SATA Enhanced RAID'
 00563CCD    call        @LStrAsg
>00563CD2    jmp         005642C6
 00563CD7    mov         eax,dword ptr [ebp-0C]
 00563CDA    mov         edx,5658F4;'Ibex Peak SATA RAID'
 00563CDF    call        @LStrAsg
>00563CE4    jmp         005642C6
 00563CE9    mov         eax,dword ptr [ebp-0C]
 00563CEC    mov         edx,565910;'Ibex Peak 2 port SATA IDE'
 00563CF1    call        @LStrAsg
>00563CF6    jmp         005642C6
 00563CFB    mov         eax,dword ptr [ebp-0C]
 00563CFE    mov         edx,5658A8;'Ibex Peak 4 port SATA IDE'
 00563D03    call        @LStrAsg
>00563D08    jmp         005642C6
 00563D0D    mov         eax,dword ptr [ebp-0C]
 00563D10    mov         edx,565934;'EP80579 S-ATA IDE'
 00563D15    call        @LStrAsg
>00563D1A    jmp         005642C6
 00563D1F    mov         eax,dword ptr [ebp-0C]
 00563D22    mov         edx,565950;'EP80579 S-ATA Reserved'
 00563D27    call        @LStrAsg
>00563D2C    jmp         005642C6
 00563D31    mov         eax,dword ptr [ebp-0C]
 00563D34    mov         edx,565950;'EP80579 S-ATA Reserved'
 00563D39    call        @LStrAsg
>00563D3E    jmp         005642C6
 00563D43    mov         eax,dword ptr [ebp-0C]
 00563D46    mov         edx,565970;'82371SB PIIX3 IDE [Natoma/Triton II]'
 00563D4B    call        @LStrAsg
>00563D50    jmp         005642C6
 00563D55    mov         eax,dword ptr [ebp-0C]
 00563D58    mov         edx,5659A0;'82371AB/EB/MB PIIX4 IDE'
 00563D5D    call        @LStrAsg
>00563D62    jmp         005642C6
 00563D67    mov         eax,dword ptr [ebp-0C]
 00563D6A    mov         edx,5659C0;'82440MX EIDE'
 00563D6F    call        @LStrAsg
>00563D74    jmp         005642C6
 00563D79    mov         eax,dword ptr [ebp-0C]
 00563D7C    mov         edx,5659D8;'82372FB PIIX5 IDE'
 00563D81    call        @LStrAsg
>00563D86    jmp         005642C6
 00563D8B    mov         eax,dword ptr [ebp-0C]
 00563D8E    mov         edx,5659F4;'System  Hub (SCH Poulsbo) IDE'
 00563D93    call        @LStrAsg
>00563D98    jmp         005642C6
 00563D9D    mov         eax,dword ptr [ebp-0C]
 00563DA0    mov         edx,565A1C;'450NX - 82451NX Memory & I/O'
 00563DA5    call        @LStrAsg
>00563DAA    jmp         005642C6
 00563DAF    mov         eax,dword ptr [ebp-0C]
 00563DB2    mov         edx,565A44;'VT82C576MV'
 00563DB7    call        @LStrAsg
>00563DBC    jmp         005642C6
 00563DC1    mov         eax,dword ptr [ebp-0C]
 00563DC4    mov         edx,565A58;'VT82C586x/VT82C686x/VT823x IDE'
 00563DC9    call        @LStrAsg
>00563DCE    jmp         005642C6
 00563DD3    mov         eax,dword ptr [ebp-0C]
 00563DD6    mov         edx,565A80;'CX700/VX700 RAID'
 00563DDB    call        @LStrAsg
>00563DE0    jmp         005642C6
 00563DE5    mov         eax,dword ptr [ebp-0C]
 00563DE8    mov         edx,565A9C;'VT8237A SATA 2-Port'
 00563DED    call        @LStrAsg
>00563DF2    jmp         005642C6
 00563DF7    mov         eax,dword ptr [ebp-0C]
 00563DFA    mov         edx,565AB8;'VT82C576M/VT82C586'
 00563DFF    call        @LStrAsg
>00563E04    jmp         005642C6
 00563E09    mov         eax,dword ptr [ebp-0C]
 00563E0C    mov         edx,565AD4;'VIA VT6420 SATA RAID'
 00563E11    call        @LStrAsg
>00563E16    jmp         005642C6
 00563E1B    mov         eax,dword ptr [ebp-0C]
 00563E1E    mov         edx,565AF4;'VT6410 ATA133 RAID'
 00563E23    call        @LStrAsg
>00563E28    jmp         005642C6
 00563E2D    mov         eax,dword ptr [ebp-0C]
 00563E30    mov         edx,565B10;'VT6421 IDE RAID'
 00563E35    call        @LStrAsg
>00563E3A    jmp         005642C6
 00563E3F    mov         eax,dword ptr [ebp-0C]
 00563E42    mov         edx,565B28;'VT8251 AHCI/SATA 4-Port'
 00563E47    call        @LStrAsg
>00563E4C    jmp         005642C6
 00563E51    mov         eax,dword ptr [ebp-0C]
 00563E54    mov         edx,565B48;'VT6420 IDE'
 00563E59    call        @LStrAsg
>00563E5E    jmp         005642C6
 00563E63    mov         eax,dword ptr [ebp-0C]
 00563E66    mov         edx,565B5C;'VX800 Serial ATA and EIDE'
 00563E6B    call        @LStrAsg
>00563E70    jmp         005642C6
 00563E75    mov         eax,dword ptr [ebp-0C]
 00563E78    mov         edx,565B80;'SATA RAID'
 00563E7D    call        @LStrAsg
>00563E82    jmp         005642C6
 00563E87    mov         eax,dword ptr [ebp-0C]
 00563E8A    mov         edx,565B94;'OSB4 IDE'
 00563E8F    call        @LStrAsg
>00563E94    jmp         005642C6
 00563E99    mov         eax,dword ptr [ebp-0C]
 00563E9C    mov         edx,565BA8;'CSB5 IDE'
 00563EA1    call        @LStrAsg
>00563EA6    jmp         005642C6
 00563EAB    mov         eax,dword ptr [ebp-0C]
 00563EAE    mov         edx,565BBC;'CSB6 RAID/IDE'
 00563EB3    call        @LStrAsg
>00563EB8    jmp         005642C6
 00563EBD    mov         eax,dword ptr [ebp-0C]
 00563EC0    mov         edx,565BD4;'BCM5785 [HT1000] IDE'
 00563EC5    call        @LStrAsg
>00563ECA    jmp         005642C6
 00563ECF    mov         eax,dword ptr [ebp-0C]
 00563ED2    mov         edx,565BF4;'CSB6 IDE'
 00563ED7    call        @LStrAsg
>00563EDC    jmp         005642C6
 00563EE1    mov         eax,dword ptr [ebp-0C]
 00563EE4    mov         edx,565C08;'K2 SATA'
 00563EE9    call        @LStrAsg
>00563EEE    jmp         005642C6
 00563EF3    mov         eax,dword ptr [ebp-0C]
 00563EF6    mov         edx,565C18;'RAIDCore BC4000'
 00563EFB    call        @LStrAsg
>00563F00    jmp         005642C6
 00563F05    mov         eax,dword ptr [ebp-0C]
 00563F08    mov         edx,565C30;'BCM5785 [HT1000] SATA (Native SATA Mode)'
 00563F0D    call        @LStrAsg
>00563F12    jmp         005642C6
 00563F17    mov         eax,dword ptr [ebp-0C]
 00563F1A    mov         edx,565C64;'BCM5785 [HT1000] SATA (PATA/IDE Mode)'
 00563F1F    call        @LStrAsg
>00563F24    jmp         005642C6
 00563F29    mov         eax,dword ptr [ebp-0C]
 00563F2C    mov         edx,565C94;'HT1100 SATA (Native SATA Mode)'
 00563F31    call        @LStrAsg
>00563F36    jmp         005642C6
 00563F3B    mov         eax,dword ptr [ebp-0C]
 00563F3E    mov         edx,565CBC;'HT1100 SATA (PATA / IDE Mode)'
 00563F43    call        @LStrAsg
>00563F48    jmp         005642C6
 00563F4D    mov         eax,dword ptr [ebp-0C]
 00563F50    mov         edx,565CE4;'Triflex Dual EIDE Controller'
 00563F55    call        @LStrAsg
>00563F5A    jmp         005642C6
 00563F5F    mov         eax,dword ptr [ebp-0C]
 00563F62    mov         edx,565D0C;'5530 IDE [Kahlua]'
 00563F67    call        @LStrAsg
>00563F6C    jmp         005642C6
 00563F71    mov         eax,dword ptr [ebp-0C]
 00563F74    mov         edx,565D28;'SLC90E66 [Victory66] IDE'
 00563F79    call        @LStrAsg
>00563F7E    jmp         005642C6
 00563F83    mov         eax,dword ptr [ebp-0C]
 00563F86    mov         edx,565D4C;'VXPro II IDE'
 00563F8B    call        @LStrAsg
>00563F90    jmp         005642C6
 00563F95    mov         eax,dword ptr [ebp-0C]
 00563F98    mov         edx,565D64;'6565'
 00563F9D    call        @LStrAsg
>00563FA2    jmp         005642C6
 00563FA7    mov         eax,dword ptr [ebp-0C]
 00563FAA    mov         edx,565D74;'INI-1623 PCI SATA-II'
 00563FAF    call        @LStrAsg
>00563FB4    jmp         005642C6
 00563FB9    mov         eax,dword ptr [ebp-0C]
 00563FBC    mov         edx,565D94;'MV88SX5040 4-port SATA I PCI-X'
 00563FC1    call        @LStrAsg
>00563FC6    jmp         005642C6
 00563FCB    mov         eax,dword ptr [ebp-0C]
 00563FCE    mov         edx,565DBC;'MV88SX5041 4-port SATA I PCI-X'
 00563FD3    call        @LStrAsg
>00563FD8    jmp         005642C6
 00563FDD    mov         eax,dword ptr [ebp-0C]
 00563FE0    mov         edx,565DE4;'MV88SX5080 8-port SATA I PCI-X'
 00563FE5    call        @LStrAsg
>00563FEA    jmp         005642C6
 00563FEF    mov         eax,dword ptr [ebp-0C]
 00563FF2    mov         edx,565E0C;'MV88SX5081 8-port SATA I PCI-X'
 00563FF7    call        @LStrAsg
>00563FFC    jmp         005642C6
 00564001    mov         eax,dword ptr [ebp-0C]
 00564004    mov         edx,564554;'Undefined'
 00564009    call        @LStrAsg
>0056400E    jmp         005642C6
 00564013    mov         eax,dword ptr [ebp-0C]
 00564016    mov         edx,565E34;'MV88SX6041 4-port SATA II PCI-X'
 0056401B    call        @LStrAsg
>00564020    jmp         005642C6
 00564025    mov         eax,dword ptr [ebp-0C]
 00564028    mov         edx,565E5C;'88SX6042 PCI-X 4-Port SATA-II'
 0056402D    call        @LStrAsg
>00564032    jmp         005642C6
 00564037    mov         eax,dword ptr [ebp-0C]
 0056403A    mov         edx,564554;'Undefined'
 0056403F    call        @LStrAsg
>00564044    jmp         005642C6
 00564049    mov         eax,dword ptr [ebp-0C]
 0056404C    mov         edx,565E84;'MV88SX6081 8-port SATA II PCI-X'
 00564051    call        @LStrAsg
>00564056    jmp         005642C6
 0056405B    mov         eax,dword ptr [ebp-0C]
 0056405E    mov         edx,565EAC;'88SE6101 single-port PATA133'
 00564063    call        @LStrAsg
>00564068    jmp         005642C6
 0056406D    mov         eax,dword ptr [ebp-0C]
 00564070    mov         edx,565ED4;'88SE6121 SATA II'
 00564075    call        @LStrAsg
>0056407A    jmp         005642C6
 0056407F    mov         eax,dword ptr [ebp-0C]
 00564082    mov         edx,564554;'Undefined'
 00564087    call        @LStrAsg
>0056408C    jmp         005642C6
 00564091    mov         eax,dword ptr [ebp-0C]
 00564094    mov         edx,565EF0;'88SE6145 SATA II PCI-E'
 00564099    call        @LStrAsg
>0056409E    jmp         005642C6
 005640A3    mov         eax,dword ptr [ebp-0C]
 005640A6    mov         edx,565F10;'88SX7042 PCI-e 4-port SATA-II'
 005640AB    call        @LStrAsg
>005640B0    jmp         005642C6
 005640B5    mov         eax,dword ptr [ebp-0C]
 005640B8    mov         edx,565F38;'Samurai IDE'
 005640BD    call        @LStrAsg
>005640C2    jmp         005642C6
 005640C7    mov         eax,dword ptr [ebp-0C]
 005640CA    mov         edx,565F4C;'87415/87560 IDE'
 005640CF    call        @LStrAsg
>005640D4    jmp         005642C6
 005640D9    mov         eax,dword ptr [ebp-0C]
 005640DC    mov         edx,565F64;'CS5535 IDE'
 005640E1    call        @LStrAsg
>005640E6    jmp         005642C6
 005640EB    mov         eax,dword ptr [ebp-0C]
 005640EE    mov         edx,565F78;'87410 IDE'
 005640F3    call        @LStrAsg
>005640F8    jmp         005642C6
 005640FD    mov         eax,dword ptr [ebp-0C]
 00564100    mov         edx,565F8C;'SCx200 IDE'
 00564105    call        @LStrAsg
>0056410A    jmp         005642C6
 0056410F    mov         eax,dword ptr [ebp-0C]
 00564112    mov         edx,565FA0;'Revolution Storage Processing Card'
 00564117    call        @LStrAsg
>0056411C    jmp         005642C6
 00564121    mov         eax,dword ptr [ebp-0C]
 00564124    mov         edx,565FCC;'82C558 [Viper-M ISA+IDE]'
 00564129    call        @LStrAsg
>0056412E    jmp         005642C6
 00564133    mov         eax,dword ptr [ebp-0C]
 00564136    mov         edx,565FF0;'82C621 [Viper-M/N+]'
 0056413B    call        @LStrAsg
>00564140    jmp         005642C6
 00564145    mov         eax,dword ptr [ebp-0C]
 00564148    mov         edx,56600C;'82C825 [Firebridge 2]'
 0056414D    call        @LStrAsg
>00564152    jmp         005642C6
 00564157    mov         eax,dword ptr [ebp-0C]
 0056415A    mov         edx,56602C;'ADMA-100 DiscStaQ ATA'
 0056415F    call        @LStrAsg
>00564164    jmp         005642C6
 00564169    mov         eax,dword ptr [ebp-0C]
 0056416C    mov         edx,56604C;'R1010 IDE'
 00564171    call        @LStrAsg
>00564176    jmp         005642C6
 0056417B    mov         eax,dword ptr [ebp-0C]
 0056417E    mov         edx,566060;'PCI0640'
 00564183    call        @LStrAsg
>00564188    jmp         005642C6
 0056418D    mov         eax,dword ptr [ebp-0C]
 00564190    mov         edx,566070;'PCI0643'
 00564195    call        @LStrAsg
>0056419A    jmp         005642C6
 0056419F    mov         eax,dword ptr [ebp-0C]
 005641A2    mov         edx,566080;'PCI0646'
 005641A7    call        @LStrAsg
>005641AC    jmp         005642C6
 005641B1    mov         eax,dword ptr [ebp-0C]
 005641B4    mov         edx,566090;'PCI0648'
 005641B9    call        @LStrAsg
>005641BE    jmp         005642C6
 005641C3    mov         eax,dword ptr [ebp-0C]
 005641C6    mov         edx,5660A0;'SiI 0649 Ultra ATA/100 PCI to ATA Host'
 005641CB    call        @LStrAsg
>005641D0    jmp         005642C6
 005641D5    mov         eax,dword ptr [ebp-0C]
 005641D8    mov         edx,5660D0;'PCI0680 Ultra ATA-133 Host'
 005641DD    call        @LStrAsg
>005641E2    jmp         005642C6
 005641E7    mov         eax,dword ptr [ebp-0C]
 005641EA    mov         edx,5660F4;'SiI 3112 [SATALink/SATARaid] SATA'
 005641EF    call        @LStrAsg
>005641F4    jmp         005642C6
 005641F9    mov         eax,dword ptr [ebp-0C]
 005641FC    mov         edx,566120;'SiI 3114 [SATALink/SATARaid] SATA'
 00564201    call        @LStrAsg
>00564206    jmp         005642C6
 0056420B    mov         eax,dword ptr [ebp-0C]
 0056420E    mov         edx,56614C;'SiI 3124 PCI-X SATA'
 00564213    call        @LStrAsg
>00564218    jmp         005642C6
 0056421D    mov         eax,dword ptr [ebp-0C]
 00564220    mov         edx,566168;'SiI 3132 Serial ATA Raid II'
 00564225    call        @LStrAsg
>0056422A    jmp         005642C6
 0056422F    mov         eax,dword ptr [ebp-0C]
 00564232    mov         edx,56618C;'SiI 3512 [SATALink/SATARaid] SATA'
 00564237    call        @LStrAsg
>0056423C    jmp         005642C6
 00564241    mov         eax,dword ptr [ebp-0C]
 00564244    mov         edx,5661B8;'Sil 3531 [SATALink/SATARaid] SATA'
 00564249    call        @LStrAsg
>0056424E    jmp         005642C6
 00564250    mov         eax,dword ptr [ebp-0C]
 00564253    mov         edx,5661E4;'SL82c105'
 00564258    call        @LStrAsg
>0056425D    jmp         005642C6
 0056425F    mov         eax,dword ptr [ebp-0C]
 00564262    mov         edx,5661F8;'EIDE Type-B'
 00564267    call        @LStrAsg
>0056426C    jmp         005642C6
 0056426E    mov         eax,dword ptr [ebp-0C]
 00564271    mov         edx,56620C;'VSC7174 PCI/PCI-X Serial ATA Host Bus'
 00564276    call        @LStrAsg
>0056427B    jmp         005642C6
 0056427D    mov         eax,dword ptr [ebp-0C]
 00564280    mov         edx,56623C;'NinjaPATA-32 Delkin Cardbus UDMA'
 00564285    call        @LStrAsg
>0056428A    jmp         005642C6
 0056428C    mov         eax,dword ptr [ebp-0C]
 0056428F    mov         edx,56623C;'NinjaPATA-32 Delkin Cardbus UDMA'
 00564294    call        @LStrAsg
>00564299    jmp         005642C6
 0056429B    push        566268;'ID '
 005642A0    lea         ecx,[ebp-10]
 005642A3    movzx       eax,word ptr [ebp-6]
 005642A7    mov         edx,4
 005642AC    call        IntToHex
 005642B1    push        dword ptr [ebp-10]
 005642B4    push        566274;'*'
 005642B9    mov         eax,dword ptr [ebp-0C]
 005642BC    mov         edx,3
 005642C1    call        @LStrCatN
 005642C6    xor         eax,eax
 005642C8    pop         edx
 005642C9    pop         ecx
 005642CA    pop         ecx
 005642CB    mov         dword ptr fs:[eax],edx
 005642CE    push        5642E3
 005642D3    lea         eax,[ebp-10]
 005642D6    call        @LStrClr
 005642DB    ret
>005642DC    jmp         @HandleFinally
>005642E1    jmp         005642D3
 005642E3    pop         ebx
 005642E4    mov         esp,ebp
 005642E6    pop         ebp
 005642E7    ret
end;*}

//00566278
{*procedure sub_00566278(?:?; ?:?; ?:?);
begin
 00566278    push        ebp
 00566279    mov         ebp,esp
 0056627B    add         esp,0FFFFFFF4
 0056627E    mov         dword ptr [ebp-0C],ecx
 00566281    mov         word ptr [ebp-6],dx
 00566285    mov         dword ptr [ebp-4],eax
 00566288    movzx       eax,word ptr [ebp-6]
 0056628C    cmp         eax,604
>00566291    jg          00566396
>00566297    je          00566601
 0056629D    cmp         eax,301
>005662A2    jg          00566321
>005662A4    je          0056653B
 005662AA    cmp         eax,180
>005662AF    jg          005662E0
>005662B1    je          00566499
 005662B7    add         eax,0FFFFFF00
 005662BC    cmp         eax,4
>005662BF    ja          00566787
 005662C5    jmp         dword ptr [eax*4+5662CC]
 005662C5    dd          005664BD
 005662C5    dd          00566475
 005662C5    dd          005664CF
 005662C5    dd          005664E1
 005662C5    dd          00566487
 005662E0    cmp         eax,204
>005662E5    jg          00566306
>005662E7    je          00566505
 005662ED    sub         eax,200
>005662F2    je          005664AB
 005662F8    sub         eax,2
>005662FB    je          005664F3
>00566301    jmp         00566787
 00566306    sub         eax,280
>0056630B    je          00566517
 00566311    sub         eax,80
>00566316    je          00566529
>0056631C    jmp         00566787
 00566321    cmp         eax,500
>00566326    jg          0056636D
>00566328    je          005665A7
 0056632E    cmp         eax,400
>00566333    jg          00566354
>00566335    je          00566571
 0056633B    sub         eax,302
>00566340    je          0056654D
 00566346    sub         eax,7E
>00566349    je          0056655F
>0056634F    jmp         00566787
 00566354    sub         eax,401
>00566359    je          00566583
 0056635F    sub         eax,7F
>00566362    je          00566595
>00566368    jmp         00566787
 0056636D    sub         eax,501
>00566372    je          005665B9
 00566378    sub         eax,0FF
>0056637D    je          005665CB
 00566383    dec         eax
>00566384    je          005665DD
 0056638A    dec         eax
>0056638B    je          005665EF
>00566391    jmp         00566787
 00566396    cmp         eax,0C00
>0056639B    jg          00566416
>0056639D    je          005666D9
 005663A3    cmp         eax,680
>005663A8    jg          005663D9
>005663AA    je          0056666D
 005663B0    add         eax,0FFFFF9FB
 005663B5    cmp         eax,4
>005663B8    ja          00566787
 005663BE    jmp         dword ptr [eax*4+5663C5]
 005663BE    dd          00566613
 005663BE    dd          00566625
 005663BE    dd          00566637
 005663BE    dd          00566649
 005663BE    dd          0056665B
 005663D9    cmp         eax,702
>005663DE    jg          005663FD
>005663E0    je          005666A3
 005663E6    sub         eax,700
>005663EB    je          0056667F
 005663F1    dec         eax
>005663F2    je          00566691
>005663F8    jmp         00566787
 005663FD    sub         eax,703
>00566402    je          005666B5
 00566408    sub         eax,7D
>0056640B    je          005666C7
>00566411    jmp         00566787
 00566416    cmp         eax,0C06
>0056641B    jg          0056644C
>0056641D    je          0056673C
 00566423    add         eax,0FFFFF3FF
 00566428    cmp         eax,4
>0056642B    ja          00566787
 00566431    jmp         dword ptr [eax*4+566438]
 00566431    dd          005666EB
 00566431    dd          005666FD
 00566431    dd          0056670F
 00566431    dd          0056671E
 00566431    dd          0056672D
 0056644C    sub         eax,0D00
>00566451    je          0056674B
 00566457    dec         eax
>00566458    je          0056675A
 0056645E    sub         eax,0F
>00566461    je          00566769
 00566467    sub         eax,70
>0056646A    je          00566778
>00566470    jmp         00566787
 00566475    mov         eax,dword ptr [ebp-0C]
 00566478    mov         edx,5667A4;'Int ATA'
 0056647D    call        @LStrAsg
>00566482    jmp         00566798
 00566487    mov         eax,dword ptr [ebp-0C]
 0056648A    mov         edx,5667B4;'RAID'
 0056648F    call        @LStrAsg
>00566494    jmp         00566798
 00566499    mov         eax,dword ptr [ebp-0C]
 0056649C    mov         edx,5667C4;'Ext ATA'
 005664A1    call        @LStrAsg
>005664A6    jmp         00566798
 005664AB    mov         eax,dword ptr [ebp-0C]
 005664AE    mov         edx,5667D4;'Network'
 005664B3    call        @LStrAsg
>005664B8    jmp         00566798
 005664BD    mov         eax,dword ptr [ebp-0C]
 005664C0    mov         edx,5667E4;'SCSI'
 005664C5    call        @LStrAsg
>005664CA    jmp         00566798
 005664CF    mov         eax,dword ptr [ebp-0C]
 005664D2    mov         edx,5667F4;'FDC'
 005664D7    call        @LStrAsg
>005664DC    jmp         00566798
 005664E1    mov         eax,dword ptr [ebp-0C]
 005664E4    mov         edx,566800;'IPI'
 005664E9    call        @LStrAsg
>005664EE    jmp         00566798
 005664F3    mov         eax,dword ptr [ebp-0C]
 005664F6    mov         edx,56680C;'FDDI'
 005664FB    call        @LStrAsg
>00566500    jmp         00566798
 00566505    mov         eax,dword ptr [ebp-0C]
 00566508    mov         edx,56681C;'ISDN'
 0056650D    call        @LStrAsg
>00566512    jmp         00566798
 00566517    mov         eax,dword ptr [ebp-0C]
 0056651A    mov         edx,5667D4;'Network'
 0056651F    call        @LStrAsg
>00566524    jmp         00566798
 00566529    mov         eax,dword ptr [ebp-0C]
 0056652C    mov         edx,56682C;'Video'
 00566531    call        @LStrAsg
>00566536    jmp         00566798
 0056653B    mov         eax,dword ptr [ebp-0C]
 0056653E    mov         edx,56683C;'XGA'
 00566543    call        @LStrAsg
>00566548    jmp         00566798
 0056654D    mov         eax,dword ptr [ebp-0C]
 00566550    mov         edx,566848;'3D ctl'
 00566555    call        @LStrAsg
>0056655A    jmp         00566798
 0056655F    mov         eax,dword ptr [ebp-0C]
 00566562    mov         edx,566858;'Display'
 00566567    call        @LStrAsg
>0056656C    jmp         00566798
 00566571    mov         eax,dword ptr [ebp-0C]
 00566574    mov         edx,56682C;'Video'
 00566579    call        @LStrAsg
>0056657E    jmp         00566798
 00566583    mov         eax,dword ptr [ebp-0C]
 00566586    mov         edx,566868;'Audio'
 0056658B    call        @LStrAsg
>00566590    jmp         00566798
 00566595    mov         eax,dword ptr [ebp-0C]
 00566598    mov         edx,566878;'M-media'
 0056659D    call        @LStrAsg
>005665A2    jmp         00566798
 005665A7    mov         eax,dword ptr [ebp-0C]
 005665AA    mov         edx,566888;'RAM mem'
 005665AF    call        @LStrAsg
>005665B4    jmp         00566798
 005665B9    mov         eax,dword ptr [ebp-0C]
 005665BC    mov         edx,566898;'FLASH'
 005665C1    call        @LStrAsg
>005665C6    jmp         00566798
 005665CB    mov         eax,dword ptr [ebp-0C]
 005665CE    mov         edx,5668A8;'Host'
 005665D3    call        @LStrAsg
>005665D8    jmp         00566798
 005665DD    mov         eax,dword ptr [ebp-0C]
 005665E0    mov         edx,5668B8;'ISA brg'
 005665E5    call        @LStrAsg
>005665EA    jmp         00566798
 005665EF    mov         eax,dword ptr [ebp-0C]
 005665F2    mov         edx,5668C8;'EISA'
 005665F7    call        @LStrAsg
>005665FC    jmp         00566798
 00566601    mov         eax,dword ptr [ebp-0C]
 00566604    mov         edx,5668D8;'PCI brg'
 00566609    call        @LStrAsg
>0056660E    jmp         00566798
 00566613    mov         eax,dword ptr [ebp-0C]
 00566616    mov         edx,5668E8;'PCMCIA'
 0056661B    call        @LStrAsg
>00566620    jmp         00566798
 00566625    mov         eax,dword ptr [ebp-0C]
 00566628    mov         edx,5668F8;'NuBus'
 0056662D    call        @LStrAsg
>00566632    jmp         00566798
 00566637    mov         eax,dword ptr [ebp-0C]
 0056663A    mov         edx,566908;'CardBus'
 0056663F    call        @LStrAsg
>00566644    jmp         00566798
 00566649    mov         eax,dword ptr [ebp-0C]
 0056664C    mov         edx,566918;'RaceWay'
 00566651    call        @LStrAsg
>00566656    jmp         00566798
 0056665B    mov         eax,dword ptr [ebp-0C]
 0056665E    mov         edx,566928;'PCI-PCI'
 00566663    call        @LStrAsg
>00566668    jmp         00566798
 0056666D    mov         eax,dword ptr [ebp-0C]
 00566670    mov         edx,566938;'Bridge'
 00566675    call        @LStrAsg
>0056667A    jmp         00566798
 0056667F    mov         eax,dword ptr [ebp-0C]
 00566682    mov         edx,566948;'Serial'
 00566687    call        @LStrAsg
>0056668C    jmp         00566798
 00566691    mov         eax,dword ptr [ebp-0C]
 00566694    mov         edx,566958;'Parallel'
 00566699    call        @LStrAsg
>0056669E    jmp         00566798
 005666A3    mov         eax,dword ptr [ebp-0C]
 005666A6    mov         edx,56696C;'Multiport'
 005666AB    call        @LStrAsg
>005666B0    jmp         00566798
 005666B5    mov         eax,dword ptr [ebp-0C]
 005666B8    mov         edx,566980;'Modem'
 005666BD    call        @LStrAsg
>005666C2    jmp         00566798
 005666C7    mov         eax,dword ptr [ebp-0C]
 005666CA    mov         edx,566990;'Comm'
 005666CF    call        @LStrAsg
>005666D4    jmp         00566798
 005666D9    mov         eax,dword ptr [ebp-0C]
 005666DC    mov         edx,5669A0;'FireWire'
 005666E1    call        @LStrAsg
>005666E6    jmp         00566798
 005666EB    mov         eax,dword ptr [ebp-0C]
 005666EE    mov         edx,5669B4;'ACCESS'
 005666F3    call        @LStrAsg
>005666F8    jmp         00566798
 005666FD    mov         eax,dword ptr [ebp-0C]
 00566700    mov         edx,5669C4;'SSA'
 00566705    call        @LStrAsg
>0056670A    jmp         00566798
 0056670F    mov         eax,dword ptr [ebp-0C]
 00566712    mov         edx,5669D0;'USB ctrl'
 00566717    call        @LStrAsg
>0056671C    jmp         00566798
 0056671E    mov         eax,dword ptr [ebp-0C]
 00566721    mov         edx,5669E4;'Fibre'
 00566726    call        @LStrAsg
>0056672B    jmp         00566798
 0056672D    mov         eax,dword ptr [ebp-0C]
 00566730    mov         edx,5669F4;'SMBus'
 00566735    call        @LStrAsg
>0056673A    jmp         00566798
 0056673C    mov         eax,dword ptr [ebp-0C]
 0056673F    mov         edx,566A04;'Infini'
 00566744    call        @LStrAsg
>00566749    jmp         00566798
 0056674B    mov         eax,dword ptr [ebp-0C]
 0056674E    mov         edx,566A14;'IRDA'
 00566753    call        @LStrAsg
>00566758    jmp         00566798
 0056675A    mov         eax,dword ptr [ebp-0C]
 0056675D    mov         edx,566A24;'IR ctrl'
 00566762    call        @LStrAsg
>00566767    jmp         00566798
 00566769    mov         eax,dword ptr [ebp-0C]
 0056676C    mov         edx,566A34;'RF ctrl'
 00566771    call        @LStrAsg
>00566776    jmp         00566798
 00566778    mov         eax,dword ptr [ebp-0C]
 0056677B    mov         edx,566A44;'Wireless'
 00566780    call        @LStrAsg
>00566785    jmp         00566798
 00566787    mov         ecx,dword ptr [ebp-0C]
 0056678A    movzx       eax,word ptr [ebp-6]
 0056678E    mov         edx,4
 00566793    call        IntToHex
 00566798    mov         esp,ebp
 0056679A    pop         ebp
 0056679B    ret
end;*}

//00566A50
procedure sub_00566A50(?:TfmCustomPort);
begin
{*
 00566A50    push        ebp
 00566A51    mov         ebp,esp
 00566A53    add         esp,0FFFFFF5C
 00566A59    xor         edx,edx
 00566A5B    mov         dword ptr [ebp-0A4],edx
 00566A61    mov         dword ptr [ebp-0A0],edx
 00566A67    mov         dword ptr [ebp-9C],edx
 00566A6D    mov         dword ptr [ebp-3C],edx
 00566A70    mov         dword ptr [ebp-40],edx
 00566A73    mov         dword ptr [ebp-44],edx
 00566A76    mov         dword ptr [ebp-48],edx
 00566A79    mov         dword ptr [ebp-28],edx
 00566A7C    mov         dword ptr [ebp-4],eax
 00566A7F    lea         eax,[ebp-96]
 00566A85    mov         edx,dword ptr ds:[5614AC];DevDesc
 00566A8B    call        @AddRefRecord
 00566A90    xor         eax,eax
 00566A92    push        ebp
 00566A93    push        566E7F
 00566A98    push        dword ptr fs:[eax]
 00566A9B    mov         dword ptr fs:[eax],esp
 00566A9E    mov         eax,[0056E5A4];^gvar_0056DF04
 00566AA3    mov         byte ptr [eax],0
 00566AA6    mov         byte ptr [ebp-5],0
 00566AAA    xor         eax,eax
 00566AAC    mov         dword ptr [ebp-10],eax
 00566AAF    xor         eax,eax
 00566AB1    mov         [005AAB54],eax;gvar_005AAB54
 00566AB6    mov         byte ptr [ebp-7],0
 00566ABA    mov         eax,[0056E5A4];^gvar_0056DF04
 00566ABF    cmp         byte ptr [eax],0
>00566AC2    jne         00566E3B
 00566AC8    mov         byte ptr [ebp-8],0
 00566ACC    mov         eax,[0056E5A4];^gvar_0056DF04
 00566AD1    cmp         byte ptr [eax],0
>00566AD4    jne         00566E2E
 00566ADA    push        0
 00566ADC    push        0C
 00566ADE    mov         cl,byte ptr [ebp-8]
 00566AE1    mov         dl,byte ptr [ebp-7]
 00566AE4    mov         eax,dword ptr [ebp-4]
 00566AE7    call        005619F4
 00566AEC    mov         dword ptr [ebp-20],eax
 00566AEF    mov         eax,dword ptr [ebp-20]
 00566AF2    shr         eax,17
 00566AF5    and         eax,1
 00566AF8    cmp         eax,1
 00566AFB    sete        byte ptr [ebp-29]
 00566AFF    cmp         byte ptr [ebp-29],0
>00566B03    je          00566B0B
 00566B05    mov         byte ptr [ebp-0B],8
>00566B09    jmp         00566B0F
 00566B0B    mov         byte ptr [ebp-0B],1
 00566B0F    mov         al,byte ptr [ebp-0B]
 00566B12    test        al,al
>00566B14    jb          00566E21
 00566B1A    inc         eax
 00566B1B    mov         byte ptr [ebp-2B],al
 00566B1E    mov         byte ptr [ebp-9],0
 00566B22    mov         eax,[0056E5A4];^gvar_0056DF04
 00566B27    cmp         byte ptr [eax],0
>00566B2A    jne         00566E21
 00566B30    mov         eax,[0056E3C0];^Application:TApplication
 00566B35    mov         eax,dword ptr [eax]
 00566B37    call        004AB51C
 00566B3C    mov         al,byte ptr [ebp-9]
 00566B3F    push        eax
 00566B40    push        0
 00566B42    mov         cl,byte ptr [ebp-8]
 00566B45    mov         dl,byte ptr [ebp-7]
 00566B48    mov         eax,dword ptr [ebp-4]
 00566B4B    call        005619F4
 00566B50    mov         dword ptr [ebp-20],eax
 00566B53    mov         eax,dword ptr [ebp-20]
 00566B56    and         eax,0FFFF
 00566B5B    mov         dword ptr [ebp-18],eax
 00566B5E    mov         eax,dword ptr [ebp-20]
 00566B61    shr         eax,10
 00566B64    and         ax,0FFFF
 00566B68    mov         word ptr [ebp-22],ax
 00566B6C    cmp         word ptr [ebp-22],0FFFF
>00566B72    je          00566E15
 00566B78    cmp         word ptr [ebp-22],0
>00566B7D    je          00566E15
 00566B83    cmp         dword ptr [ebp-18],0ACE1
>00566B8A    jne         00566B99
 00566B8C    cmp         word ptr [ebp-22],5
>00566B91    jne         00566B99
 00566B93    mov         byte ptr [ebp-6],1
>00566B97    jmp         00566BB3
 00566B99    cmp         dword ptr [ebp-18],0ACE1
>00566BA0    jne         00566BAF
 00566BA2    cmp         word ptr [ebp-22],6
>00566BA7    jne         00566BAF
 00566BA9    mov         byte ptr [ebp-6],2
>00566BAD    jmp         00566BB3
 00566BAF    mov         byte ptr [ebp-6],0
 00566BB3    mov         al,byte ptr [ebp-9]
 00566BB6    push        eax
 00566BB7    push        8
 00566BB9    mov         cl,byte ptr [ebp-8]
 00566BBC    mov         dl,byte ptr [ebp-7]
 00566BBF    mov         eax,dword ptr [ebp-4]
 00566BC2    call        005619F4
 00566BC7    mov         dword ptr [ebp-20],eax
 00566BCA    mov         eax,dword ptr [ebp-20]
 00566BCD    shr         eax,8
 00566BD0    mov         byte ptr [ebp-0C],al
 00566BD3    mov         eax,dword ptr [ebp-20]
 00566BD6    shr         eax,10
 00566BD9    and         eax,0FFFF
 00566BDE    mov         dword ptr [ebp-14],eax
 00566BE1    cmp         dword ptr [ebp-14],0FFFF
>00566BE8    je          00566E15
 00566BEE    cmp         dword ptr [ebp-14],0
>00566BF2    je          00566E15
 00566BF8    cmp         dword ptr [ebp-14],101
>00566BFF    je          00566C17
 00566C01    cmp         dword ptr [ebp-14],104
>00566C08    je          00566C17
 00566C0A    cmp         dword ptr [ebp-14],180
>00566C11    jne         00566E15
 00566C17    mov         byte ptr [ebp-0A],0
 00566C1B    cmp         byte ptr [ebp-0A],0
>00566C1F    jne         00566C50
 00566C21    test        byte ptr [ebp-0C],1
>00566C25    jne         00566C39
 00566C27    cmp         dword ptr [ebp-14],101
>00566C2E    jne         00566C39
 00566C30    mov         dword ptr [ebp-20],1F0
>00566C37    jmp         00566C50
 00566C39    mov         al,byte ptr [ebp-9]
 00566C3C    push        eax
 00566C3D    push        10
 00566C3F    mov         cl,byte ptr [ebp-8]
 00566C42    mov         dl,byte ptr [ebp-7]
 00566C45    mov         eax,dword ptr [ebp-4]
 00566C48    call        005619F4
 00566C4D    mov         dword ptr [ebp-20],eax
 00566C50    cmp         byte ptr [ebp-0A],1
>00566C54    jne         00566CA6
 00566C56    mov         al,byte ptr [ebp-6]
 00566C59    sub         al,1
>00566C5B    jb          00566C65
>00566C5D    je          00566C96
 00566C5F    dec         al
>00566C61    je          00566C9D
>00566C63    jmp         00566CA6
 00566C65    test        byte ptr [ebp-0C],4
>00566C69    jne         00566C7D
 00566C6B    cmp         dword ptr [ebp-14],101
>00566C72    jne         00566C7D
 00566C74    mov         dword ptr [ebp-20],170
>00566C7B    jmp         00566CA6
 00566C7D    mov         al,byte ptr [ebp-9]
 00566C80    push        eax
 00566C81    push        18
 00566C83    mov         cl,byte ptr [ebp-8]
 00566C86    mov         dl,byte ptr [ebp-7]
 00566C89    mov         eax,dword ptr [ebp-4]
 00566C8C    call        005619F4
 00566C91    mov         dword ptr [ebp-20],eax
>00566C94    jmp         00566CA6
 00566C96    xor         eax,eax
 00566C98    mov         dword ptr [ebp-20],eax
>00566C9B    jmp         00566CA6
 00566C9D    mov         eax,dword ptr [ebp-10]
 00566CA0    add         eax,20
 00566CA3    mov         dword ptr [ebp-20],eax
 00566CA6    mov         eax,dword ptr [ebp-20]
 00566CA9    and         eax,0FFFC
 00566CAE    mov         dword ptr [ebp-10],eax
 00566CB1    cmp         byte ptr [ebp-6],0
>00566CB5    jbe         00566CC2
 00566CB7    mov         eax,dword ptr [ebp-10]
 00566CBA    add         eax,0E
 00566CBD    mov         dword ptr [ebp-20],eax
>00566CC0    jmp         00566D2C
 00566CC2    cmp         byte ptr [ebp-0A],0
>00566CC6    jne         00566CF7
 00566CC8    test        byte ptr [ebp-0C],1
>00566CCC    jne         00566CE0
 00566CCE    cmp         dword ptr [ebp-14],101
>00566CD5    jne         00566CE0
 00566CD7    mov         dword ptr [ebp-20],3F6
>00566CDE    jmp         00566CF7
 00566CE0    mov         al,byte ptr [ebp-9]
 00566CE3    push        eax
 00566CE4    push        14
 00566CE6    mov         cl,byte ptr [ebp-8]
 00566CE9    mov         dl,byte ptr [ebp-7]
 00566CEC    mov         eax,dword ptr [ebp-4]
 00566CEF    call        005619F4
 00566CF4    mov         dword ptr [ebp-20],eax
 00566CF7    cmp         byte ptr [ebp-0A],1
>00566CFB    jne         00566D2C
 00566CFD    test        byte ptr [ebp-0C],4
>00566D01    jne         00566D15
 00566D03    cmp         dword ptr [ebp-14],101
>00566D0A    jne         00566D15
 00566D0C    mov         dword ptr [ebp-20],376
>00566D13    jmp         00566D2C
 00566D15    mov         al,byte ptr [ebp-9]
 00566D18    push        eax
 00566D19    push        1C
 00566D1B    mov         cl,byte ptr [ebp-8]
 00566D1E    mov         dl,byte ptr [ebp-7]
 00566D21    mov         eax,dword ptr [ebp-4]
 00566D24    call        005619F4
 00566D29    mov         dword ptr [ebp-20],eax
 00566D2C    mov         ax,word ptr [ebp-20]
 00566D30    and         ax,0FFFC
 00566D34    add         ax,2
 00566D38    mov         word ptr [ebp-24],ax
 00566D3C    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566D43    mov         edx,dword ptr [ebp-18]
 00566D46    mov         dword ptr [eax*2+59F154],edx;gvar_0059F154:array[256] of ?
 00566D4D    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566D54    mov         edx,dword ptr [ebp-1C]
 00566D57    mov         dword ptr [eax*2+59F158],edx
 00566D5E    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566D65    mov         edx,dword ptr [ebp-10]
 00566D68    mov         dword ptr [eax*2+59F15C],edx
 00566D6F    movzx       eax,word ptr [ebp-24]
 00566D73    imul        edx,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566D7A    mov         dword ptr [edx*2+59F160],eax
 00566D81    lea         ecx,[ebp-9C]
 00566D87    mov         dx,word ptr [ebp-18]
 00566D8B    mov         eax,dword ptr [ebp-4]
 00566D8E    call        00561A3C
 00566D93    mov         edx,dword ptr [ebp-9C]
 00566D99    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566DA0    lea         eax,[eax*2+59F202]
 00566DA7    call        @LStrAsg
 00566DAC    lea         ecx,[ebp-0A0]
 00566DB2    mov         dx,word ptr [ebp-22]
 00566DB6    mov         eax,dword ptr [ebp-4]
 00566DB9    call        00562158
 00566DBE    mov         edx,dword ptr [ebp-0A0]
 00566DC4    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566DCB    lea         eax,[eax*2+59F206]
 00566DD2    call        @LStrAsg
 00566DD7    lea         ecx,[ebp-0A4]
 00566DDD    mov         dx,word ptr [ebp-14]
 00566DE1    mov         eax,dword ptr [ebp-4]
 00566DE4    call        00566278
 00566DE9    mov         edx,dword ptr [ebp-0A4]
 00566DEF    imul        eax,dword ptr ds:[5AAB54],5D;0x0 gvar_005AAB54
 00566DF6    lea         eax,[eax*2+59F20A]
 00566DFD    call        @LStrAsg
 00566E02    inc         dword ptr ds:[5AAB54];gvar_005AAB54
 00566E08    inc         byte ptr [ebp-0A]
 00566E0B    cmp         byte ptr [ebp-0A],2
>00566E0F    jne         00566C1B
 00566E15    inc         byte ptr [ebp-9]
 00566E18    dec         byte ptr [ebp-2B]
>00566E1B    jne         00566B22
 00566E21    inc         byte ptr [ebp-8]
 00566E24    cmp         byte ptr [ebp-8],20
>00566E28    jne         00566ACC
 00566E2E    inc         byte ptr [ebp-7]
 00566E31    cmp         byte ptr [ebp-7],0B
>00566E35    jne         00566ABA
 00566E3B    xor         eax,eax
 00566E3D    pop         edx
 00566E3E    pop         ecx
 00566E3F    pop         ecx
 00566E40    mov         dword ptr fs:[eax],edx
 00566E43    push        566E86
 00566E48    lea         eax,[ebp-0A4]
 00566E4E    mov         edx,3
 00566E53    call        @LStrArrayClr
 00566E58    lea         eax,[ebp-96]
 00566E5E    mov         edx,dword ptr ds:[5614AC];DevDesc
 00566E64    call        @FinalizeRecord
 00566E69    lea         eax,[ebp-48]
 00566E6C    mov         edx,4
 00566E71    call        @LStrArrayClr
 00566E76    lea         eax,[ebp-28]
 00566E79    call        @LStrClr
 00566E7E    ret
>00566E7F    jmp         @HandleFinally
>00566E84    jmp         00566E48
 00566E86    mov         esp,ebp
 00566E88    pop         ebp
 00566E89    ret
*}
end;

//00566E8C
procedure TfmCustomPort.btScanPCIClick(Sender:TObject);
begin
{*
 00566E8C    push        ebp
 00566E8D    mov         ebp,esp
 00566E8F    add         esp,0FFFFFFE4
 00566E92    xor         ecx,ecx
 00566E94    mov         dword ptr [ebp-14],ecx
 00566E97    mov         dword ptr [ebp-18],ecx
 00566E9A    mov         dword ptr [ebp-1C],ecx
 00566E9D    mov         dword ptr [ebp-10],edx
 00566EA0    mov         dword ptr [ebp-4],eax
 00566EA3    xor         eax,eax
 00566EA5    push        ebp
 00566EA6    push        56701C
 00566EAB    push        dword ptr fs:[eax]
 00566EAE    mov         dword ptr fs:[eax],esp
 00566EB1    xor         edx,edx
 00566EB3    mov         eax,dword ptr [ebp-4]
 00566EB6    mov         eax,dword ptr [eax+310];TfmCustomPort.btScanPCI:TButton
 00566EBC    mov         ecx,dword ptr [eax]
 00566EBE    call        dword ptr [ecx+64];TImage.SetEnabled
 00566EC1    xor         edx,edx
 00566EC3    mov         eax,dword ptr [ebp-4]
 00566EC6    mov         eax,dword ptr [eax+314];TfmCustomPort.btScanUsb:TButton
 00566ECC    mov         ecx,dword ptr [eax]
 00566ECE    call        dword ptr [ecx+64];TImage.SetEnabled
 00566ED1    mov         eax,dword ptr [ebp-4]
 00566ED4    call        00566A50
 00566ED9    mov         eax,dword ptr [ebp-4]
 00566EDC    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 00566EE2    mov         edx,dword ptr [eax]
 00566EE4    call        dword ptr [edx+0D8];TCustomListBox.Clear
 00566EEA    mov         eax,[005AAB54];0x0 gvar_005AAB54
 00566EEF    dec         eax
 00566EF0    test        eax,eax
>00566EF2    jl          00566FA6
 00566EF8    inc         eax
 00566EF9    mov         dword ptr [ebp-0C],eax
 00566EFC    mov         dword ptr [ebp-8],0
 00566F03    imul        eax,dword ptr [ebp-8],5D
 00566F07    mov         eax,dword ptr [eax*2+59F15C]
 00566F0E    xor         edx,edx
 00566F10    push        edx
 00566F11    push        eax
 00566F12    lea         edx,[ebp-18]
 00566F15    mov         eax,4
 00566F1A    call        IntToHex
 00566F1F    push        dword ptr [ebp-18]
 00566F22    push        567030;'/'
 00566F27    imul        eax,dword ptr [ebp-8],5D
 00566F2B    mov         eax,dword ptr [eax*2+59F160]
 00566F32    xor         edx,edx
 00566F34    push        edx
 00566F35    push        eax
 00566F36    lea         edx,[ebp-1C]
 00566F39    mov         eax,4
 00566F3E    call        IntToHex
 00566F43    push        dword ptr [ebp-1C]
 00566F46    push        56703C;' - '
 00566F4B    imul        eax,dword ptr [ebp-8],5D
 00566F4F    push        dword ptr [eax*2+59F20A]
 00566F56    push        567048;': '
 00566F5B    imul        eax,dword ptr [ebp-8],5D
 00566F5F    push        dword ptr [eax*2+59F202]
 00566F66    push        567054;' '
 00566F6B    imul        eax,dword ptr [ebp-8],5D
 00566F6F    push        dword ptr [eax*2+59F206]
 00566F76    lea         eax,[ebp-14]
 00566F79    mov         edx,9
 00566F7E    call        @LStrCatN
 00566F83    mov         edx,dword ptr [ebp-14]
 00566F86    mov         eax,dword ptr [ebp-4]
 00566F89    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 00566F8F    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00566F95    mov         ecx,dword ptr [eax]
 00566F97    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00566F9A    inc         dword ptr [ebp-8]
 00566F9D    dec         dword ptr [ebp-0C]
>00566FA0    jne         00566F03
 00566FA6    mov         dl,1
 00566FA8    mov         eax,dword ptr [ebp-4]
 00566FAB    mov         eax,dword ptr [eax+310];TfmCustomPort.btScanPCI:TButton
 00566FB1    mov         ecx,dword ptr [eax]
 00566FB3    call        dword ptr [ecx+64];TImage.SetEnabled
 00566FB6    mov         dl,1
 00566FB8    mov         eax,dword ptr [ebp-4]
 00566FBB    mov         eax,dword ptr [eax+314];TfmCustomPort.btScanUsb:TButton
 00566FC1    mov         ecx,dword ptr [eax]
 00566FC3    call        dword ptr [ecx+64];TImage.SetEnabled
 00566FC6    xor         edx,edx
 00566FC8    mov         eax,dword ptr [ebp-4]
 00566FCB    mov         eax,dword ptr [eax+318];TfmCustomPort.cbUSB:TCheckBox
 00566FD1    mov         ecx,dword ptr [eax]
 00566FD3    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 00566FD9    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00566FDE    mov         byte ptr [eax],0
 00566FE1    mov         dl,1
 00566FE3    mov         eax,dword ptr [ebp-4]
 00566FE6    mov         eax,dword ptr [eax+300];TfmCustomPort.edBasePort:TLabeledEdit
 00566FEC    mov         ecx,dword ptr [eax]
 00566FEE    call        dword ptr [ecx+64];TImage.SetEnabled
 00566FF1    mov         dl,1
 00566FF3    mov         eax,dword ptr [ebp-4]
 00566FF6    mov         eax,dword ptr [eax+304];TfmCustomPort.edControl:TLabeledEdit
 00566FFC    mov         ecx,dword ptr [eax]
 00566FFE    call        dword ptr [ecx+64];TImage.SetEnabled
 00567001    xor         eax,eax
 00567003    pop         edx
 00567004    pop         ecx
 00567005    pop         ecx
 00567006    mov         dword ptr fs:[eax],edx
 00567009    push        567023
 0056700E    lea         eax,[ebp-1C]
 00567011    mov         edx,3
 00567016    call        @LStrArrayClr
 0056701B    ret
>0056701C    jmp         @HandleFinally
>00567021    jmp         0056700E
 00567023    mov         esp,ebp
 00567025    pop         ebp
 00567026    ret
*}
end;

//00567058
procedure TfmCustomPort.lbControllersClick(Sender:TObject);
begin
{*
 00567058    push        ebp
 00567059    mov         ebp,esp
 0056705B    xor         ecx,ecx
 0056705D    push        ecx
 0056705E    push        ecx
 0056705F    push        ecx
 00567060    push        ecx
 00567061    push        ecx
 00567062    push        ecx
 00567063    mov         dword ptr [ebp-8],edx
 00567066    mov         dword ptr [ebp-4],eax
 00567069    xor         eax,eax
 0056706B    push        ebp
 0056706C    push        5671C7
 00567071    push        dword ptr fs:[eax]
 00567074    mov         dword ptr fs:[eax],esp
 00567077    mov         eax,dword ptr [ebp-4]
 0056707A    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 00567080    mov         edx,dword ptr [eax]
 00567082    call        dword ptr [edx+0CC];TListBox.sub_00479780
 00567088    inc         eax
>00567089    jle         005671AC
 0056708F    mov         eax,dword ptr [ebp-4]
 00567092    mov         eax,dword ptr [eax+318];TfmCustomPort.cbUSB:TCheckBox
 00567098    mov         edx,dword ptr [eax]
 0056709A    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005670A0    test        al,al
>005670A2    je          00567112
 005670A4    mov         eax,[0056E318];^gvar_0056CC30
 005670A9    mov         eax,dword ptr [eax]
 005670AB    push        eax
 005670AC    call        kernel32.CloseHandle
 005670B1    mov         eax,dword ptr [ebp-4]
 005670B4    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 005670BA    mov         edx,dword ptr [eax]
 005670BC    call        dword ptr [edx+0CC];TListBox.sub_00479780
 005670C2    mov         edx,eax
 005670C4    shl         eax,5
 005670C7    sub         eax,edx
 005670C9    mov         eax,dword ptr [eax+5AAB5C]
 005670CF    call        004CBCD4
 005670D4    mov         edx,dword ptr ds:[56E318];^gvar_0056CC30
 005670DA    mov         dword ptr [edx],eax
 005670DC    mov         eax,[0056E318];^gvar_0056CC30
 005670E1    cmp         dword ptr [eax],0FFFFFFFF
>005670E4    jne         005671AC
 005670EA    mov         eax,dword ptr [ebp-4]
 005670ED    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 005670F3    mov         edx,dword ptr [eax]
 005670F5    call        dword ptr [edx+0CC];TListBox.sub_00479780
 005670FB    mov         edx,eax
 005670FD    shl         eax,5
 00567100    sub         eax,edx
 00567102    mov         eax,dword ptr [eax+5AAB64]
 00567108    call        0043F8B4
>0056710D    jmp         005671AC
 00567112    mov         eax,dword ptr [ebp-4]
 00567115    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 0056711B    mov         edx,dword ptr [eax]
 0056711D    call        dword ptr [edx+0CC];TListBox.sub_00479780
 00567123    imul        eax,eax,5D
 00567126    mov         eax,dword ptr [eax*2+59F15C]
 0056712D    xor         edx,edx
 0056712F    push        edx
 00567130    push        eax
 00567131    lea         edx,[ebp-10]
 00567134    mov         eax,4
 00567139    call        IntToHex
 0056713E    mov         ecx,dword ptr [ebp-10]
 00567141    lea         eax,[ebp-0C]
 00567144    mov         edx,5671DC;'$'
 00567149    call        @LStrCat3
 0056714E    mov         edx,dword ptr [ebp-0C]
 00567151    mov         eax,dword ptr [ebp-4]
 00567154    mov         eax,dword ptr [eax+300];TfmCustomPort.edBasePort:TLabeledEdit
 0056715A    call        TPanel.SetCaption
 0056715F    mov         eax,dword ptr [ebp-4]
 00567162    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 00567168    mov         edx,dword ptr [eax]
 0056716A    call        dword ptr [edx+0CC];TListBox.sub_00479780
 00567170    imul        eax,eax,5D
 00567173    mov         eax,dword ptr [eax*2+59F160]
 0056717A    xor         edx,edx
 0056717C    push        edx
 0056717D    push        eax
 0056717E    lea         edx,[ebp-18]
 00567181    mov         eax,4
 00567186    call        IntToHex
 0056718B    mov         ecx,dword ptr [ebp-18]
 0056718E    lea         eax,[ebp-14]
 00567191    mov         edx,5671DC;'$'
 00567196    call        @LStrCat3
 0056719B    mov         edx,dword ptr [ebp-14]
 0056719E    mov         eax,dword ptr [ebp-4]
 005671A1    mov         eax,dword ptr [eax+304];TfmCustomPort.edControl:TLabeledEdit
 005671A7    call        TPanel.SetCaption
 005671AC    xor         eax,eax
 005671AE    pop         edx
 005671AF    pop         ecx
 005671B0    pop         ecx
 005671B1    mov         dword ptr fs:[eax],edx
 005671B4    push        5671CE
 005671B9    lea         eax,[ebp-18]
 005671BC    mov         edx,4
 005671C1    call        @LStrArrayClr
 005671C6    ret
>005671C7    jmp         @HandleFinally
>005671CC    jmp         005671B9
 005671CE    mov         esp,ebp
 005671D0    pop         ebp
 005671D1    ret
*}
end;

//005671E0
procedure TfmCustomPort.btScanUsbClick(Sender:TObject);
begin
{*
 005671E0    push        ebp
 005671E1    mov         ebp,esp
 005671E3    add         esp,0FFFFFFEC
 005671E6    mov         dword ptr [ebp-14],edx
 005671E9    mov         dword ptr [ebp-4],eax
 005671EC    xor         edx,edx
 005671EE    mov         eax,dword ptr [ebp-4]
 005671F1    mov         eax,dword ptr [eax+310];TfmCustomPort.btScanPCI:TButton
 005671F7    mov         ecx,dword ptr [eax]
 005671F9    call        dword ptr [ecx+64];TImage.SetEnabled
 005671FC    xor         edx,edx
 005671FE    mov         eax,dword ptr [ebp-4]
 00567201    mov         eax,dword ptr [eax+314];TfmCustomPort.btScanUsb:TButton
 00567207    mov         ecx,dword ptr [eax]
 00567209    call        dword ptr [ecx+64];TImage.SetEnabled
 0056720C    lea         edx,[ebp-8]
 0056720F    mov         eax,5AAB58;gvar_005AAB58:array[41] of ?
 00567214    call        00560F08
 00567219    cmp         dword ptr [ebp-8],0
>0056721D    jle         0056726F
 0056721F    mov         eax,dword ptr [ebp-4]
 00567222    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 00567228    mov         edx,dword ptr [eax]
 0056722A    call        dword ptr [edx+0D8];TCustomListBox.Clear
 00567230    mov         eax,dword ptr [ebp-8]
 00567233    dec         eax
 00567234    test        eax,eax
>00567236    jl          0056726F
 00567238    inc         eax
 00567239    mov         dword ptr [ebp-10],eax
 0056723C    mov         dword ptr [ebp-0C],0
 00567243    mov         eax,dword ptr [ebp-0C]
 00567246    mov         edx,eax
 00567248    shl         eax,5
 0056724B    sub         eax,edx
 0056724D    mov         edx,dword ptr [eax+5AAB64]
 00567253    mov         eax,dword ptr [ebp-4]
 00567256    mov         eax,dword ptr [eax+2F8];TfmCustomPort.lbControllers:TListBox
 0056725C    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00567262    mov         ecx,dword ptr [eax]
 00567264    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00567267    inc         dword ptr [ebp-0C]
 0056726A    dec         dword ptr [ebp-10]
>0056726D    jne         00567243
 0056726F    mov         dl,1
 00567271    mov         eax,dword ptr [ebp-4]
 00567274    mov         eax,dword ptr [eax+310];TfmCustomPort.btScanPCI:TButton
 0056727A    mov         ecx,dword ptr [eax]
 0056727C    call        dword ptr [ecx+64];TImage.SetEnabled
 0056727F    mov         dl,1
 00567281    mov         eax,dword ptr [ebp-4]
 00567284    mov         eax,dword ptr [eax+314];TfmCustomPort.btScanUsb:TButton
 0056728A    mov         ecx,dword ptr [eax]
 0056728C    call        dword ptr [ecx+64];TImage.SetEnabled
 0056728F    mov         dl,1
 00567291    mov         eax,dword ptr [ebp-4]
 00567294    mov         eax,dword ptr [eax+318];TfmCustomPort.cbUSB:TCheckBox
 0056729A    mov         ecx,dword ptr [eax]
 0056729C    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 005672A2    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005672A7    mov         byte ptr [eax],1
 005672AA    xor         edx,edx
 005672AC    mov         eax,dword ptr [ebp-4]
 005672AF    mov         eax,dword ptr [eax+300];TfmCustomPort.edBasePort:TLabeledEdit
 005672B5    mov         ecx,dword ptr [eax]
 005672B7    call        dword ptr [ecx+64];TImage.SetEnabled
 005672BA    xor         edx,edx
 005672BC    mov         eax,dword ptr [ebp-4]
 005672BF    mov         eax,dword ptr [eax+304];TfmCustomPort.edControl:TLabeledEdit
 005672C5    mov         ecx,dword ptr [eax]
 005672C7    call        dword ptr [ecx+64];TImage.SetEnabled
 005672CA    mov         esp,ebp
 005672CC    pop         ebp
 005672CD    ret
*}
end;

Initialization
Finalization
//005672D0
{*
 005672D0    push        ebp
 005672D1    mov         ebp,esp
 005672D3    xor         eax,eax
 005672D5    push        ebp
 005672D6    push        567321
 005672DB    push        dword ptr fs:[eax]
 005672DE    mov         dword ptr fs:[eax],esp
 005672E1    inc         dword ptr ds:[59F150]
>005672E7    jne         00567313
 005672E9    mov         eax,5AAB58;gvar_005AAB58:array[41] of ?
 005672EE    mov         ecx,29
 005672F3    mov         edx,dword ptr ds:[560E54];TST_PhysicalDrive
 005672F9    call        @FinalizeArray
 005672FE    mov         eax,59F154;gvar_0059F154:array[256] of ?
 00567303    mov         ecx,100
 00567308    mov         edx,dword ptr ds:[5614E4];PCIDevDesc
 0056730E    call        @FinalizeArray
 00567313    xor         eax,eax
 00567315    pop         edx
 00567316    pop         ecx
 00567317    pop         ecx
 00567318    mov         dword ptr fs:[eax],edx
 0056731B    push        567328
 00567320    ret
>00567321    jmp         @HandleFinally
>00567326    jmp         00567320
 00567328    pop         ebp
 00567329    ret
*}
end.