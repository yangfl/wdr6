//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uFlash;

interface

uses
  SysUtils, Classes, StdCtrls, Menus, ExtCtrls;

type
  TfmFlash = class(TForm)
  published
    gbFlash:TGroupBox;//f2F8
    btRead:TButton;//f2FC
    btWrite:TButton;//f300
    btDump:TButton;//f304
    cbFlashLen:TComboBox;//f308
    btRepair:TButton;//f30C
    cbName:TCheckBox;//f310
    gbRomModules:TGroupBox;//f314
    lbRomModules:TListBox;//f318
    pmRomModules:TPopupMenu;//f31C
    miRead:TMenuItem;//f320
    miWrite:TMenuItem;//f324
    miCheck:TMenuItem;//f328
    N1:TMenuItem;//f32C
    miReadAll:TMenuItem;//f330
    N2:TMenuItem;//f334
    miDump:TMenuItem;//f338
    miCheckAll:TMenuItem;//f33C
    N3:TMenuItem;//f340
    miReadFlashDir:TMenuItem;//f344
    GroupBox1:TGroupBox;//f348
    btCreate:TButton;//f34C
    cb8heads:TCheckBox;//f350
    cbDword40:TCheckBox;//f354
    rgFrom:TRadioGroup;//f358
    procedure lbRomModulesDblClick(Sender:TObject);//0051016C
    procedure miCheckAllClick(Sender:TObject);//005102C8
    procedure miReadAllClick(Sender:TObject);//00510060
    procedure miCheckClick(Sender:TObject);//0050FE48
    procedure miDumpClick(Sender:TObject);//0050FF28
    procedure FormDestroy(Sender:TObject);//005109D0
    procedure FormCreate(Sender:TObject);//005109F4
    procedure cb8headsClick(Sender:TObject);//00510994
    procedure miReadFlashDirClick(Sender:TObject);//005103D4
    procedure btCreateClick(Sender:TObject);//00510814
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0050E0E8
    procedure btEraseClick(Sender:TObject);//0050E110
    procedure btWriteClick(Sender:TObject);//0050E030
    procedure btReadClick(Sender:TObject);//0050DC14
    procedure btDumpClick(Sender:TObject);//0050DCD4
    procedure miReadClick(Sender:TObject);//0050FC88
    procedure miWriteClick(Sender:TObject);//0050FD68
    procedure FormShow(Sender:TObject);//0050FB04
    //procedure btCheckClick(?:?);//0050F350
    //procedure btRepairClick(?:?);//0050F548
  end;
    procedure sub_0050D660(?:TfmFlash; ?:TfmHDD);//0050D660
    procedure sub_0050D6B4;//0050D6B4
    //function sub_0050D988:?;//0050D988
    //function sub_0050DDEC:?;//0050DDEC
    procedure sub_0050E6E4(?:TMemoryStream);//0050E6E4
    //function sub_0050EF34(?:?; ?:?; ?:?):?;//0050EF34
    procedure sub_0050EFA0(?:TMemoryStream);//0050EFA0
    //function sub_0050FBC0(?:?):?;//0050FBC0
    procedure sub_005103EC;//005103EC
    //procedure sub_00510544(?:?; ?:?);//00510544
    procedure sub_00510630;//00510630

implementation

{$R *.DFM}

//0050D660
procedure sub_0050D660(?:TfmFlash; ?:TfmHDD);
begin
{*
 0050D660    push        ebp
 0050D661    mov         ebp,esp
 0050D663    add         esp,0FFFFFFF8
 0050D666    mov         dword ptr [ebp-8],edx
 0050D669    mov         dword ptr [ebp-4],eax
 0050D66C    cmp         dword ptr ds:[56D418],0;gvar_0056D418:TfmFlash
>0050D673    jne         0050D689
 0050D675    mov         ecx,dword ptr [ebp-8]
 0050D678    mov         dl,1
 0050D67A    mov         eax,[0050D1D4];TfmFlash
 0050D67F    call        TfmProgress.Create;TfmFlash.Create
 0050D684    mov         [0056D418],eax;gvar_0056D418:TfmFlash
 0050D689    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050D68E    cmp         byte ptr [eax+1A6],0;TfmFlash.FShowing:Boolean
>0050D695    je          0050D6A6
 0050D697    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050D69C    mov         edx,dword ptr [eax]
 0050D69E    call        dword ptr [edx+0C4];TfmFlash.sub_004A746C
>0050D6A4    jmp         0050D6B0
 0050D6A6    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050D6AB    call        004A7450
 0050D6B0    pop         ecx
 0050D6B1    pop         ecx
 0050D6B2    pop         ebp
 0050D6B3    ret
*}
end;

//0050D6B4
procedure sub_0050D6B4;
begin
{*
 0050D6B4    push        ebp
 0050D6B5    mov         ebp,esp
 0050D6B7    mov         ecx,8
 0050D6BC    push        0
 0050D6BE    push        0
 0050D6C0    dec         ecx
>0050D6C1    jne         0050D6BC
 0050D6C3    push        ebx
 0050D6C4    xor         eax,eax
 0050D6C6    push        ebp
 0050D6C7    push        50D944
 0050D6CC    push        dword ptr fs:[eax]
 0050D6CF    mov         dword ptr fs:[eax],esp
 0050D6D2    mov         eax,[0056E5A4];^gvar_0056DF04
 0050D6D7    mov         byte ptr [eax],0
 0050D6DA    mov         dl,1
 0050D6DC    mov         eax,[0041DE14];TMemoryStream
 0050D6E1    call        TObject.Create;TMemoryStream.Create
 0050D6E6    mov         dword ptr [ebp-8],eax
 0050D6E9    xor         eax,eax
 0050D6EB    push        ebp
 0050D6EC    push        50D91A
 0050D6F1    push        dword ptr fs:[eax]
 0050D6F4    mov         dword ptr fs:[eax],esp
 0050D6F7    mov         eax,[0056E040];^gvar_005720C0
 0050D6FC    cmp         byte ptr [eax],0
>0050D6FF    je          0050D904
 0050D705    mov         edx,dword ptr [ebp-8]
 0050D708    mov         ax,0B
 0050D70C    call        005095B8
 0050D711    test        al,al
>0050D713    je          0050D904
 0050D719    lea         edx,[ebp-28]
 0050D71C    xor         eax,eax
 0050D71E    call        00403214
 0050D723    mov         eax,dword ptr [ebp-28]
 0050D726    lea         edx,[ebp-24]
 0050D729    call        0040CC5C
 0050D72E    lea         eax,[ebp-24]
 0050D731    mov         edx,50D958;'wdm.ini'
 0050D736    call        @LStrCat
 0050D73B    mov         ecx,dword ptr [ebp-24]
 0050D73E    mov         dl,1
 0050D740    mov         eax,[004497F8];TIniFile
 0050D745    call        TIniFile.Create;TIniFile.Create
 0050D74A    mov         dword ptr [ebp-0C],eax
 0050D74D    xor         eax,eax
 0050D74F    push        ebp
 0050D750    push        50D8FD
 0050D755    push        dword ptr fs:[eax]
 0050D758    mov         dword ptr fs:[eax],esp
 0050D75B    xor         ecx,ecx
 0050D75D    xor         edx,edx
 0050D75F    mov         eax,dword ptr [ebp-8]
 0050D762    mov         ebx,dword ptr [eax]
 0050D764    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D767    mov         eax,dword ptr [ebp-8]
 0050D76A    call        004CE56C
 0050D76F    mov         dword ptr [ebp-18],eax
 0050D772    cmp         dword ptr [ebp-18],4C594F52
>0050D779    jne         0050D8E7
 0050D77F    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050D784    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050D78A    mov         edx,dword ptr [eax]
 0050D78C    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0050D792    xor         ecx,ecx
 0050D794    mov         edx,6
 0050D799    mov         eax,dword ptr [ebp-8]
 0050D79C    mov         ebx,dword ptr [eax]
 0050D79E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D7A1    mov         eax,dword ptr [ebp-8]
 0050D7A4    call        004CE548
 0050D7A9    mov         word ptr [ebp-1A],ax
 0050D7AD    movzx       edx,word ptr [ebp-1A]
 0050D7B1    xor         ecx,ecx
 0050D7B3    mov         eax,dword ptr [ebp-8]
 0050D7B6    mov         ebx,dword ptr [eax]
 0050D7B8    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D7BB    mov         eax,dword ptr [ebp-8]
 0050D7BE    call        004CE528
 0050D7C3    mov         byte ptr [ebp-1B],al
 0050D7C6    xor         eax,eax
 0050D7C8    mov         al,byte ptr [ebp-1B]
 0050D7CB    test        eax,eax
>0050D7CD    jle         0050D8E7
 0050D7D3    mov         dword ptr [ebp-20],eax
 0050D7D6    mov         dword ptr [ebp-4],1
 0050D7DD    mov         eax,dword ptr [ebp-8]
 0050D7E0    call        004CE528
 0050D7E5    mov         byte ptr [ebp-0D],al
 0050D7E8    mov         cx,1
 0050D7EC    mov         edx,1
 0050D7F1    mov         eax,dword ptr [ebp-8]
 0050D7F4    mov         ebx,dword ptr [eax]
 0050D7F6    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D7F9    mov         eax,dword ptr [ebp-8]
 0050D7FC    call        004CE56C
 0050D801    mov         word ptr [ebp-10],ax
 0050D805    xor         edx,edx
 0050D807    mov         dl,byte ptr [ebp-0D]
 0050D80A    sub         edx,6
 0050D80D    mov         cx,1
 0050D811    mov         eax,dword ptr [ebp-8]
 0050D814    mov         ebx,dword ptr [eax]
 0050D816    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D819    cmp         word ptr [ebp-10],0
>0050D81E    jbe         0050D8DB
 0050D824    cmp         word ptr [ebp-10],0FF
>0050D82A    jbe         0050D864
 0050D82C    push        0
 0050D82E    lea         eax,[ebp-14]
 0050D831    push        eax
 0050D832    lea         ecx,[ebp-30]
 0050D835    movzx       eax,word ptr [ebp-10]
 0050D839    mov         edx,4
 0050D83E    call        IntToHex
 0050D843    mov         ecx,dword ptr [ebp-30]
 0050D846    lea         eax,[ebp-2C]
 0050D849    mov         edx,50D968;'ID'
 0050D84E    call        @LStrCat3
 0050D853    mov         ecx,dword ptr [ebp-2C]
 0050D856    mov         edx,50D974;'BLOCKS'
 0050D85B    mov         eax,dword ptr [ebp-0C]
 0050D85E    mov         ebx,dword ptr [eax]
 0050D860    call        dword ptr [ebx];TIniFile.sub_0044A254
>0050D862    jmp         0050D89A
 0050D864    push        0
 0050D866    lea         eax,[ebp-14]
 0050D869    push        eax
 0050D86A    lea         ecx,[ebp-38]
 0050D86D    movzx       eax,word ptr [ebp-10]
 0050D871    mov         edx,2
 0050D876    call        IntToHex
 0050D87B    mov         ecx,dword ptr [ebp-38]
 0050D87E    lea         eax,[ebp-34]
 0050D881    mov         edx,50D968;'ID'
 0050D886    call        @LStrCat3
 0050D88B    mov         ecx,dword ptr [ebp-34]
 0050D88E    mov         edx,50D974;'BLOCKS'
 0050D893    mov         eax,dword ptr [ebp-0C]
 0050D896    mov         ebx,dword ptr [eax]
 0050D898    call        dword ptr [ebx];TIniFile.sub_0044A254
 0050D89A    lea         ecx,[ebp-40]
 0050D89D    movzx       eax,word ptr [ebp-10]
 0050D8A1    mov         edx,2
 0050D8A6    call        IntToHex
 0050D8AB    push        dword ptr [ebp-40]
 0050D8AE    push        50D984;' - '
 0050D8B3    push        dword ptr [ebp-14]
 0050D8B6    lea         eax,[ebp-3C]
 0050D8B9    mov         edx,3
 0050D8BE    call        @LStrCatN
 0050D8C3    mov         edx,dword ptr [ebp-3C]
 0050D8C6    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050D8CB    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050D8D1    xor         ecx,ecx
 0050D8D3    mov         ebx,dword ptr [eax]
 0050D8D5    call        dword ptr [ebx+0D4];TListBox.sub_004792CC
 0050D8DB    inc         dword ptr [ebp-4]
 0050D8DE    dec         dword ptr [ebp-20]
>0050D8E1    jne         0050D7DD
 0050D8E7    xor         eax,eax
 0050D8E9    pop         edx
 0050D8EA    pop         ecx
 0050D8EB    pop         ecx
 0050D8EC    mov         dword ptr fs:[eax],edx
 0050D8EF    push        50D904
 0050D8F4    mov         eax,dword ptr [ebp-0C]
 0050D8F7    call        TObject.Free
 0050D8FC    ret
>0050D8FD    jmp         @HandleFinally
>0050D902    jmp         0050D8F4
 0050D904    xor         eax,eax
 0050D906    pop         edx
 0050D907    pop         ecx
 0050D908    pop         ecx
 0050D909    mov         dword ptr fs:[eax],edx
 0050D90C    push        50D921
 0050D911    mov         eax,dword ptr [ebp-8]
 0050D914    call        TObject.Free
 0050D919    ret
>0050D91A    jmp         @HandleFinally
>0050D91F    jmp         0050D911
 0050D921    xor         eax,eax
 0050D923    pop         edx
 0050D924    pop         ecx
 0050D925    pop         ecx
 0050D926    mov         dword ptr fs:[eax],edx
 0050D929    push        50D94B
 0050D92E    lea         eax,[ebp-40]
 0050D931    mov         edx,8
 0050D936    call        @LStrArrayClr
 0050D93B    lea         eax,[ebp-14]
 0050D93E    call        @LStrClr
 0050D943    ret
>0050D944    jmp         @HandleFinally
>0050D949    jmp         0050D92E
 0050D94B    pop         ebx
 0050D94C    mov         esp,ebp
 0050D94E    pop         ebp
 0050D94F    ret
*}
end;

//0050D988
{*function sub_0050D988:?;
begin
 0050D988    push        ebp
 0050D989    mov         ebp,esp
 0050D98B    mov         ecx,5
 0050D990    push        0
 0050D992    push        0
 0050D994    dec         ecx
>0050D995    jne         0050D990
 0050D997    push        ecx
 0050D998    push        ebx
 0050D999    xor         eax,eax
 0050D99B    push        ebp
 0050D99C    push        50DBB9
 0050D9A1    push        dword ptr fs:[eax]
 0050D9A4    mov         dword ptr fs:[eax],esp
 0050D9A7    mov         eax,[0056E2D0];^gvar_0056DF38
 0050D9AC    mov         eax,dword ptr [eax]
 0050D9AE    call        0040C9A4
 0050D9B3    test        al,al
>0050D9B5    jne         0050D9E0
 0050D9B7    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050D9BD    mov         ecx,dword ptr [ecx]
 0050D9BF    lea         eax,[ebp-18]
 0050D9C2    mov         edx,50DBD0;'Cannot create '
 0050D9C7    call        @LStrCat3
 0050D9CC    mov         ecx,dword ptr [ebp-18]
 0050D9CF    mov         dl,1
 0050D9D1    mov         eax,[0040B004];Exception
 0050D9D6    call        Exception.Create;Exception.Create
 0050D9DB    call        @RaiseExcept
 0050D9E0    mov         dl,1
 0050D9E2    mov         eax,[0041DE14];TMemoryStream
 0050D9E7    call        TObject.Create;TMemoryStream.Create
 0050D9EC    mov         dword ptr [ebp-8],eax
 0050D9EF    mov         eax,[0056E5A4];^gvar_0056DF04
 0050D9F4    mov         byte ptr [eax],0
 0050D9F7    xor         eax,eax
 0050D9F9    push        ebp
 0050D9FA    push        50DB82
 0050D9FF    push        dword ptr fs:[eax]
 0050DA02    mov         dword ptr fs:[eax],esp
 0050DA05    lea         edx,[ebp-1C]
 0050DA08    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050DA0D    mov         eax,dword ptr [eax+308];TfmFlash.cbFlashLen:TComboBox
 0050DA13    call        TPanel.GetCaption
 0050DA18    mov         eax,dword ptr [ebp-1C]
 0050DA1B    xor         edx,edx
 0050DA1D    call        0040C4A8
 0050DA22    mov         edx,eax
 0050DA24    mov         ecx,dword ptr [ebp-8]
 0050DA27    xor         eax,eax
 0050DA29    call        004D007C
 0050DA2E    mov         byte ptr [ebp-1],al
 0050DA31    cmp         byte ptr [ebp-1],0
>0050DA35    je          0050DB6C
 0050DA3B    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050DA40    mov         eax,dword ptr [eax+310];TfmFlash.cbName:TCheckBox
 0050DA46    mov         edx,dword ptr [eax]
 0050DA48    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050DA4E    test        al,al
>0050DA50    je          0050DB4C
 0050DA56    lea         eax,[ebp-14]
 0050DA59    mov         edx,50DBE8;'        '
 0050DA5E    call        @LStrLAsg
 0050DA63    mov         dl,1
 0050DA65    mov         eax,[0041DE14];TMemoryStream
 0050DA6A    call        TObject.Create;TMemoryStream.Create
 0050DA6F    mov         dword ptr [ebp-0C],eax
 0050DA72    xor         eax,eax
 0050DA74    push        ebp
 0050DA75    push        50DB45
 0050DA7A    push        dword ptr fs:[eax]
 0050DA7D    mov         dword ptr fs:[eax],esp
 0050DA80    mov         ecx,dword ptr [ebp-0C]
 0050DA83    xor         edx,edx
 0050DA85    mov         ax,1
 0050DA89    call        004CFEC8
 0050DA8E    test        al,al
>0050DA90    je          0050DB1A
 0050DA96    xor         ecx,ecx
 0050DA98    mov         edx,2
 0050DA9D    mov         eax,dword ptr [ebp-0C]
 0050DAA0    mov         ebx,dword ptr [eax]
 0050DAA2    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050DAA5    lea         eax,[ebp-14]
 0050DAA8    call        00405598
 0050DAAD    mov         edx,eax
 0050DAAF    mov         ecx,6
 0050DAB4    mov         eax,dword ptr [ebp-0C]
 0050DAB7    call        TStream.ReadBuffer
 0050DABC    mov         eax,[0056E2D0];^gvar_0056DF38
 0050DAC1    push        dword ptr [eax]
 0050DAC3    lea         eax,[ebp-20]
 0050DAC6    mov         edx,dword ptr [ebp-14]
 0050DAC9    mov         dl,byte ptr [edx]
 0050DACB    call        @LStrFromChar
 0050DAD0    push        dword ptr [ebp-20]
 0050DAD3    lea         eax,[ebp-24]
 0050DAD6    mov         edx,dword ptr [ebp-14]
 0050DAD9    mov         dl,byte ptr [edx+1]
 0050DADC    call        @LStrFromChar
 0050DAE1    push        dword ptr [ebp-24]
 0050DAE4    lea         eax,[ebp-28]
 0050DAE7    mov         edx,dword ptr [ebp-14]
 0050DAEA    mov         dl,byte ptr [edx+3]
 0050DAED    call        @LStrFromChar
 0050DAF2    push        dword ptr [ebp-28]
 0050DAF5    lea         eax,[ebp-2C]
 0050DAF8    mov         edx,dword ptr [ebp-14]
 0050DAFB    mov         dl,byte ptr [edx+4]
 0050DAFE    call        @LStrFromChar
 0050DB03    push        dword ptr [ebp-2C]
 0050DB06    push        50DBFC;'.bin'
 0050DB0B    lea         eax,[ebp-10]
 0050DB0E    mov         edx,6
 0050DB13    call        @LStrCatN
>0050DB18    jmp         0050DB2F
 0050DB1A    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050DB20    mov         edx,dword ptr [edx]
 0050DB22    lea         eax,[ebp-10]
 0050DB25    mov         ecx,50DC0C;'rom.bin'
 0050DB2A    call        @LStrCat3
 0050DB2F    xor         eax,eax
 0050DB31    pop         edx
 0050DB32    pop         ecx
 0050DB33    pop         ecx
 0050DB34    mov         dword ptr fs:[eax],edx
 0050DB37    push        50DB61
 0050DB3C    mov         eax,dword ptr [ebp-0C]
 0050DB3F    call        TObject.Free
 0050DB44    ret
>0050DB45    jmp         @HandleFinally
>0050DB4A    jmp         0050DB3C
 0050DB4C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050DB52    mov         edx,dword ptr [edx]
 0050DB54    lea         eax,[ebp-10]
 0050DB57    mov         ecx,50DC0C;'rom.bin'
 0050DB5C    call        @LStrCat3
 0050DB61    mov         edx,dword ptr [ebp-10]
 0050DB64    mov         eax,dword ptr [ebp-8]
 0050DB67    call        00423E84
 0050DB6C    xor         eax,eax
 0050DB6E    pop         edx
 0050DB6F    pop         ecx
 0050DB70    pop         ecx
 0050DB71    mov         dword ptr fs:[eax],edx
 0050DB74    push        50DB89
 0050DB79    mov         eax,dword ptr [ebp-8]
 0050DB7C    call        TObject.Free
 0050DB81    ret
>0050DB82    jmp         @HandleFinally
>0050DB87    jmp         0050DB79
 0050DB89    xor         eax,eax
 0050DB8B    pop         edx
 0050DB8C    pop         ecx
 0050DB8D    pop         ecx
 0050DB8E    mov         dword ptr fs:[eax],edx
 0050DB91    push        50DBC0
 0050DB96    lea         eax,[ebp-2C]
 0050DB99    mov         edx,4
 0050DB9E    call        @LStrArrayClr
 0050DBA3    lea         eax,[ebp-1C]
 0050DBA6    call        @LStrClr
 0050DBAB    lea         eax,[ebp-18]
 0050DBAE    mov         edx,3
 0050DBB3    call        @LStrArrayClr
 0050DBB8    ret
>0050DBB9    jmp         @HandleFinally
>0050DBBE    jmp         0050DB96
 0050DBC0    mov         al,byte ptr [ebp-1]
 0050DBC3    pop         ebx
 0050DBC4    mov         esp,ebp
 0050DBC6    pop         ebp
 0050DBC7    ret
end;*}

//0050DC14
procedure TfmFlash.btReadClick(Sender:TObject);
begin
{*
 0050DC14    push        ebp
 0050DC15    mov         ebp,esp
 0050DC17    add         esp,0FFFFFFF8
 0050DC1A    mov         dword ptr [ebp-8],edx
 0050DC1D    mov         dword ptr [ebp-4],eax
 0050DC20    xor         edx,edx
 0050DC22    mov         eax,dword ptr [ebp-4]
 0050DC25    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 0050DC2B    mov         ecx,dword ptr [eax]
 0050DC2D    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC30    xor         edx,edx
 0050DC32    mov         eax,dword ptr [ebp-4]
 0050DC35    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 0050DC3B    mov         ecx,dword ptr [eax]
 0050DC3D    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC40    xor         edx,edx
 0050DC42    mov         eax,dword ptr [ebp-4]
 0050DC45    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 0050DC4B    mov         ecx,dword ptr [eax]
 0050DC4D    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC50    call        0050D988
 0050DC55    test        al,al
>0050DC57    je          0050DC65
 0050DC59    mov         eax,50DCAC;'Read Flash - OK'
 0050DC5E    call        00544EB4
>0050DC63    jmp         0050DC6F
 0050DC65    mov         eax,50DCC4;'Read Flash - '
 0050DC6A    call        00544F6C
 0050DC6F    mov         dl,1
 0050DC71    mov         eax,dword ptr [ebp-4]
 0050DC74    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 0050DC7A    mov         ecx,dword ptr [eax]
 0050DC7C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC7F    mov         dl,1
 0050DC81    mov         eax,dword ptr [ebp-4]
 0050DC84    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 0050DC8A    mov         ecx,dword ptr [eax]
 0050DC8C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC8F    mov         dl,1
 0050DC91    mov         eax,dword ptr [ebp-4]
 0050DC94    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 0050DC9A    mov         ecx,dword ptr [eax]
 0050DC9C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050DC9F    pop         ecx
 0050DCA0    pop         ecx
 0050DCA1    pop         ebp
 0050DCA2    ret
*}
end;

//0050DCD4
procedure TfmFlash.btDumpClick(Sender:TObject);
begin
{*
 0050DCD4    push        ebp
 0050DCD5    mov         ebp,esp
 0050DCD7    xor         ecx,ecx
 0050DCD9    push        ecx
 0050DCDA    push        ecx
 0050DCDB    push        ecx
 0050DCDC    push        ecx
 0050DCDD    push        ecx
 0050DCDE    mov         dword ptr [ebp-0C],edx
 0050DCE1    mov         dword ptr [ebp-4],eax
 0050DCE4    xor         eax,eax
 0050DCE6    push        ebp
 0050DCE7    push        50DDCF
 0050DCEC    push        dword ptr fs:[eax]
 0050DCEF    mov         dword ptr fs:[eax],esp
 0050DCF2    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050DCF7    mov         eax,dword ptr [eax+310];TfmFlash.cbName:TCheckBox
 0050DCFD    mov         edx,dword ptr [eax]
 0050DCFF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050DD05    test        al,al
>0050DD07    je          0050DD7E
 0050DD09    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050DD0F    mov         edx,dword ptr [edx]
 0050DD11    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DD16    mov         eax,dword ptr [eax]
 0050DD18    mov         eax,dword ptr [eax+35C]
 0050DD1E    call        TOpenDialog.SetInitialDir
 0050DD23    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DD28    mov         eax,dword ptr [eax]
 0050DD2A    mov         eax,dword ptr [eax+35C]
 0050DD30    mov         edx,dword ptr [eax]
 0050DD32    call        dword ptr [edx+3C]
 0050DD35    test        al,al
>0050DD37    je          0050DDAC
 0050DD39    lea         edx,[ebp-10]
 0050DD3C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DD41    mov         eax,dword ptr [eax]
 0050DD43    mov         eax,dword ptr [eax+35C]
 0050DD49    call        TOpenDialog.GetFileName
 0050DD4E    mov         eax,dword ptr [ebp-10]
 0050DD51    call        0040C94C
 0050DD56    test        al,al
>0050DD58    je          0050DDAC
 0050DD5A    lea         edx,[ebp-14]
 0050DD5D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DD62    mov         eax,dword ptr [eax]
 0050DD64    mov         eax,dword ptr [eax+35C]
 0050DD6A    call        TOpenDialog.GetFileName
 0050DD6F    mov         edx,dword ptr [ebp-14]
 0050DD72    mov         eax,[004F3EB8];TfmViewer
 0050DD77    call        004F4640
>0050DD7C    jmp         0050DDAC
 0050DD7E    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050DD84    mov         edx,dword ptr [edx]
 0050DD86    lea         eax,[ebp-8]
 0050DD89    mov         ecx,50DDE4;'rom.bin'
 0050DD8E    call        @LStrCat3
 0050DD93    mov         eax,dword ptr [ebp-8]
 0050DD96    call        0040C94C
 0050DD9B    test        al,al
>0050DD9D    je          0050DDAC
 0050DD9F    mov         edx,dword ptr [ebp-8]
 0050DDA2    mov         eax,[004F3EB8];TfmViewer
 0050DDA7    call        004F4640
 0050DDAC    xor         eax,eax
 0050DDAE    pop         edx
 0050DDAF    pop         ecx
 0050DDB0    pop         ecx
 0050DDB1    mov         dword ptr fs:[eax],edx
 0050DDB4    push        50DDD6
 0050DDB9    lea         eax,[ebp-14]
 0050DDBC    mov         edx,2
 0050DDC1    call        @LStrArrayClr
 0050DDC6    lea         eax,[ebp-8]
 0050DDC9    call        @LStrClr
 0050DDCE    ret
>0050DDCF    jmp         @HandleFinally
>0050DDD4    jmp         0050DDB9
 0050DDD6    mov         esp,ebp
 0050DDD8    pop         ebp
 0050DDD9    ret
*}
end;

//0050DDEC
{*function sub_0050DDEC:?;
begin
 0050DDEC    push        ebp
 0050DDED    mov         ebp,esp
 0050DDEF    xor         ecx,ecx
 0050DDF1    push        ecx
 0050DDF2    push        ecx
 0050DDF3    push        ecx
 0050DDF4    push        ecx
 0050DDF5    push        ecx
 0050DDF6    xor         eax,eax
 0050DDF8    push        ebp
 0050DDF9    push        50DF93
 0050DDFE    push        dword ptr fs:[eax]
 0050DE01    mov         dword ptr fs:[eax],esp
 0050DE04    mov         eax,[0056E5A4];^gvar_0056DF04
 0050DE09    mov         byte ptr [eax],0
 0050DE0C    mov         byte ptr [ebp-1],0
 0050DE10    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050DE16    mov         edx,dword ptr [edx]
 0050DE18    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DE1D    mov         eax,dword ptr [eax]
 0050DE1F    mov         eax,dword ptr [eax+35C]
 0050DE25    call        TOpenDialog.SetInitialDir
 0050DE2A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DE2F    mov         eax,dword ptr [eax]
 0050DE31    mov         eax,dword ptr [eax+35C]
 0050DE37    mov         edx,dword ptr [eax]
 0050DE39    call        dword ptr [edx+3C]
 0050DE3C    test        al,al
>0050DE3E    je          0050DF6C
 0050DE44    lea         edx,[ebp-0C]
 0050DE47    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DE4C    mov         eax,dword ptr [eax]
 0050DE4E    mov         eax,dword ptr [eax+35C]
 0050DE54    call        TOpenDialog.GetFileName
 0050DE59    mov         eax,dword ptr [ebp-0C]
 0050DE5C    call        0040C94C
 0050DE61    test        al,al
>0050DE63    je          0050DF6C
 0050DE69    mov         dl,1
 0050DE6B    mov         eax,[0041DE14];TMemoryStream
 0050DE70    call        TObject.Create;TMemoryStream.Create
 0050DE75    mov         dword ptr [ebp-8],eax
 0050DE78    xor         eax,eax
 0050DE7A    push        ebp
 0050DE7B    push        50DF65
 0050DE80    push        dword ptr fs:[eax]
 0050DE83    mov         dword ptr fs:[eax],esp
 0050DE86    lea         edx,[ebp-10]
 0050DE89    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050DE8E    mov         eax,dword ptr [eax]
 0050DE90    mov         eax,dword ptr [eax+35C]
 0050DE96    call        TOpenDialog.GetFileName
 0050DE9B    mov         edx,dword ptr [ebp-10]
 0050DE9E    mov         eax,dword ptr [ebp-8]
 0050DEA1    call        00423F8C
 0050DEA6    mov         eax,dword ptr [ebp-8]
 0050DEA9    mov         edx,dword ptr [eax]
 0050DEAB    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050DEAD    cmp         edx,0
>0050DEB0    jne         0050DEBB
 0050DEB2    cmp         eax,20000
>0050DEB7    jb          0050DED4
>0050DEB9    jmp         0050DEBD
>0050DEBB    jl          0050DED4
 0050DEBD    mov         eax,dword ptr [ebp-8]
 0050DEC0    mov         edx,dword ptr [eax]
 0050DEC2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050DEC4    cmp         edx,0
>0050DEC7    jne         0050DED2
 0050DEC9    cmp         eax,40000
>0050DECE    jbe         0050DEE8
>0050DED0    jmp         0050DED4
>0050DED2    jle         0050DEE8
 0050DED4    mov         eax,50DFAC;'Incorrect Flash File Size!'
 0050DED9    call        00544EB4
 0050DEDE    call        @TryFinallyExit
>0050DEE3    jmp         0050DF70
 0050DEE8    call        004D01EC
 0050DEED    test        al,al
>0050DEEF    je          0050DEFD
 0050DEF1    mov         eax,50DFD0;'Erase Flash - OK'
 0050DEF6    call        00544EB4
>0050DEFB    jmp         0050DF07
 0050DEFD    mov         eax,50DFEC;'Erase Flash - '
 0050DF02    call        00544F6C
 0050DF07    lea         edx,[ebp-14]
 0050DF0A    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050DF0F    mov         eax,dword ptr [eax+308];TfmFlash.cbFlashLen:TComboBox
 0050DF15    call        TPanel.GetCaption
 0050DF1A    mov         eax,dword ptr [ebp-14]
 0050DF1D    xor         edx,edx
 0050DF1F    call        0040C4A8
 0050DF24    mov         edx,eax
 0050DF26    mov         ecx,dword ptr [ebp-8]
 0050DF29    xor         eax,eax
 0050DF2B    call        004D02C8
 0050DF30    mov         byte ptr [ebp-1],al
 0050DF33    cmp         byte ptr [ebp-1],0
>0050DF37    je          0050DF45
 0050DF39    mov         eax,50E004;'Write Flash - OK'
 0050DF3E    call        00544EB4
>0050DF43    jmp         0050DF4F
 0050DF45    mov         eax,50E020;'Write Flash - '
 0050DF4A    call        00544F6C
 0050DF4F    xor         eax,eax
 0050DF51    pop         edx
 0050DF52    pop         ecx
 0050DF53    pop         ecx
 0050DF54    mov         dword ptr fs:[eax],edx
 0050DF57    push        50DF70
 0050DF5C    mov         eax,dword ptr [ebp-8]
 0050DF5F    call        TObject.Free
 0050DF64    ret
>0050DF65    jmp         @HandleFinally
>0050DF6A    jmp         0050DF5C
 0050DF6C    mov         byte ptr [ebp-1],0
 0050DF70    xor         eax,eax
 0050DF72    pop         edx
 0050DF73    pop         ecx
 0050DF74    pop         ecx
 0050DF75    mov         dword ptr fs:[eax],edx
 0050DF78    push        50DF9A
 0050DF7D    lea         eax,[ebp-14]
 0050DF80    call        @LStrClr
 0050DF85    lea         eax,[ebp-10]
 0050DF88    mov         edx,2
 0050DF8D    call        @LStrArrayClr
 0050DF92    ret
>0050DF93    jmp         @HandleFinally
>0050DF98    jmp         0050DF7D
 0050DF9A    mov         al,byte ptr [ebp-1]
 0050DF9D    mov         esp,ebp
 0050DF9F    pop         ebp
 0050DFA0    ret
end;*}

//0050E030
procedure TfmFlash.btWriteClick(Sender:TObject);
begin
{*
 0050E030    push        ebp
 0050E031    mov         ebp,esp
 0050E033    add         esp,0FFFFFFF8
 0050E036    mov         dword ptr [ebp-8],edx
 0050E039    mov         dword ptr [ebp-4],eax
 0050E03C    xor         edx,edx
 0050E03E    mov         eax,dword ptr [ebp-4]
 0050E041    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 0050E047    mov         ecx,dword ptr [eax]
 0050E049    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E04C    xor         edx,edx
 0050E04E    mov         eax,dword ptr [ebp-4]
 0050E051    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 0050E057    mov         ecx,dword ptr [eax]
 0050E059    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E05C    xor         edx,edx
 0050E05E    mov         eax,dword ptr [ebp-4]
 0050E061    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 0050E067    mov         ecx,dword ptr [eax]
 0050E069    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E06C    push        0
 0050E06E    mov         cx,word ptr ds:[50E0C0];0x3 gvar_0050E0C0
 0050E075    xor         edx,edx
 0050E077    mov         eax,50E0CC;'Write Flash !'+#10+Are You sure?'
 0050E07C    call        0043F788
 0050E081    cmp         eax,6
>0050E084    jne         0050E08B
 0050E086    call        0050DDEC
 0050E08B    mov         dl,1
 0050E08D    mov         eax,dword ptr [ebp-4]
 0050E090    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 0050E096    mov         ecx,dword ptr [eax]
 0050E098    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E09B    mov         dl,1
 0050E09D    mov         eax,dword ptr [ebp-4]
 0050E0A0    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 0050E0A6    mov         ecx,dword ptr [eax]
 0050E0A8    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E0AB    mov         dl,1
 0050E0AD    mov         eax,dword ptr [ebp-4]
 0050E0B0    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 0050E0B6    mov         ecx,dword ptr [eax]
 0050E0B8    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E0BB    pop         ecx
 0050E0BC    pop         ecx
 0050E0BD    pop         ebp
 0050E0BE    ret
*}
end;

//0050E0E8
procedure TfmFlash.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0050E0E8    push        ebp
 0050E0E9    mov         ebp,esp
 0050E0EB    add         esp,0FFFFFFF4
 0050E0EE    mov         dword ptr [ebp-8],ecx
 0050E0F1    mov         dword ptr [ebp-0C],edx
 0050E0F4    mov         dword ptr [ebp-4],eax
 0050E0F7    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E0FC    mov         byte ptr [eax],1
 0050E0FF    xor         eax,eax
 0050E101    mov         [0056D418],eax;gvar_0056D418:TfmFlash
 0050E106    mov         eax,dword ptr [ebp-8]
 0050E109    mov         byte ptr [eax],2
 0050E10C    mov         esp,ebp
 0050E10E    pop         ebp
 0050E10F    ret
*}
end;

//0050E110
procedure TfmFlash.btEraseClick(Sender:TObject);
begin
{*
 0050E110    push        ebp
 0050E111    mov         ebp,esp
 0050E113    add         esp,0FFFFFFAC
 0050E116    push        ebx
 0050E117    xor         ecx,ecx
 0050E119    mov         dword ptr [ebp-50],ecx
 0050E11C    mov         dword ptr [ebp-54],ecx
 0050E11F    mov         dword ptr [ebp-48],ecx
 0050E122    mov         dword ptr [ebp-4C],ecx
 0050E125    mov         dword ptr [ebp-44],ecx
 0050E128    mov         dword ptr [ebp-3C],ecx
 0050E12B    mov         dword ptr [ebp-40],ecx
 0050E12E    mov         dword ptr [ebp-38],ecx
 0050E131    mov         dword ptr [ebp-14],edx
 0050E134    mov         dword ptr [ebp-4],eax
 0050E137    xor         eax,eax
 0050E139    push        ebp
 0050E13A    push        50E50C
 0050E13F    push        dword ptr fs:[eax]
 0050E142    mov         dword ptr fs:[eax],esp
 0050E145    mov         eax,[0056E040];^gvar_005720C0
 0050E14A    cmp         byte ptr [eax],0
>0050E14D    je          0050E4E7
 0050E153    mov         eax,[0056E2D0];^gvar_0056DF38
 0050E158    mov         eax,dword ptr [eax]
 0050E15A    call        0040C9A4
 0050E15F    test        al,al
>0050E161    jne         0050E18C
 0050E163    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050E169    mov         ecx,dword ptr [ecx]
 0050E16B    lea         eax,[ebp-38]
 0050E16E    mov         edx,50E520;'Cannot create '
 0050E173    call        @LStrCat3
 0050E178    mov         ecx,dword ptr [ebp-38]
 0050E17B    mov         dl,1
 0050E17D    mov         eax,[0040B004];Exception
 0050E182    call        Exception.Create;Exception.Create
 0050E187    call        @RaiseExcept
 0050E18C    xor         eax,eax
 0050E18E    mov         dword ptr [ebp-8],eax
 0050E191    mov         dl,1
 0050E193    mov         eax,[0041DE14];TMemoryStream
 0050E198    call        TObject.Create;TMemoryStream.Create
 0050E19D    mov         edx,dword ptr [ebp-8]
 0050E1A0    mov         dword ptr [ebp+edx*4-34],eax
 0050E1A4    mov         eax,dword ptr [ebp-8]
 0050E1A7    mov         byte ptr [ebp+eax-10],0
 0050E1AC    inc         dword ptr [ebp-8]
 0050E1AF    cmp         dword ptr [ebp-8],8
>0050E1B3    jne         0050E191
 0050E1B5    xor         eax,eax
 0050E1B7    push        ebp
 0050E1B8    push        50E4D4
 0050E1BD    push        dword ptr fs:[eax]
 0050E1C0    mov         dword ptr fs:[eax],esp
 0050E1C3    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E1C8    mov         byte ptr [eax],0
 0050E1CB    mov         eax,50E538;'Flash Repair - Start'
 0050E1D0    call        00544EB4
 0050E1D5    mov         edx,dword ptr [ebp-34]
 0050E1D8    mov         ax,109
 0050E1DC    call        004CF5C8
 0050E1E1    test        al,al
>0050E1E3    je          0050E214
 0050E1E5    mov         byte ptr [ebp-10],1
 0050E1E9    xor         ecx,ecx
 0050E1EB    mov         edx,200
 0050E1F0    mov         eax,dword ptr [ebp-34]
 0050E1F3    mov         ebx,dword ptr [eax]
 0050E1F5    call        dword ptr [ebx+14]
 0050E1F8    mov         eax,dword ptr [ebp-34]
 0050E1FB    mov         edx,dword ptr [eax]
 0050E1FD    call        dword ptr [edx]
 0050E1FF    sub         eax,200
 0050E204    sbb         edx,0
 0050E207    push        edx
 0050E208    push        eax
 0050E209    mov         edx,dword ptr [ebp-34]
 0050E20C    mov         eax,dword ptr [ebp-30]
 0050E20F    call        TStream.CopyFrom
 0050E214    mov         dword ptr [ebp-8],2
 0050E21B    push        7
 0050E21D    mov         ecx,dword ptr [ebp-8]
 0050E220    mov         edx,50E558;'Read Modules from Service Area'
 0050E225    mov         eax,[004F7B20];TfmProgres
 0050E22A    call        004F7D0C
>0050E22F    jmp         0050E2B7
 0050E234    mov         eax,dword ptr [ebp-8]
 0050E237    mov         edx,dword ptr [ebp+eax*4-34]
 0050E23B    mov         eax,dword ptr [ebp-8]
 0050E23E    mov         ax,word ptr [eax*2+56D418];gvar_0056D418:TfmFlash
 0050E246    call        005095B8
 0050E24B    test        al,al
>0050E24D    je          0050E257
 0050E24F    mov         eax,dword ptr [ebp-8]
 0050E252    mov         byte ptr [ebp+eax-10],1
 0050E257    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050E25C    cmp         byte ptr [eax],0
>0050E25F    jne         0050E26B
 0050E261    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E266    cmp         byte ptr [eax],0
>0050E269    je          0050E2A5
 0050E26B    push        50E580;'Read module '
 0050E270    lea         ecx,[ebp-40]
 0050E273    mov         eax,dword ptr [ebp-8]
 0050E276    movzx       eax,word ptr [eax*2+56D418];gvar_0056D418:TfmFlash
 0050E27E    mov         edx,3
 0050E283    call        IntToHex
 0050E288    push        dword ptr [ebp-40]
 0050E28B    push        50E598;' - '
 0050E290    lea         eax,[ebp-3C]
 0050E293    mov         edx,3
 0050E298    call        @LStrCatN
 0050E29D    mov         eax,dword ptr [ebp-3C]
 0050E2A0    call        00544F6C
 0050E2A5    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050E2AA    mov         eax,dword ptr [eax]
 0050E2AC    mov         edx,dword ptr [ebp-8]
 0050E2AF    call        004F7E2C
 0050E2B4    inc         dword ptr [ebp-8]
 0050E2B7    cmp         dword ptr [ebp-8],7
>0050E2BB    jg          0050E2CB
 0050E2BD    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E2C2    cmp         byte ptr [eax],0
>0050E2C5    je          0050E234
 0050E2CB    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050E2D0    mov         eax,dword ptr [eax]
 0050E2D2    call        004A7264
 0050E2D7    cmp         byte ptr [ebp-10],1
>0050E2DB    jne         0050E35C
 0050E2DD    push        0
 0050E2DF    mov         cx,word ptr ds:[50E59C];0x3 gvar_0050E59C
 0050E2E6    xor         edx,edx
 0050E2E8    mov         eax,50E5A8;'Write Flash !'+#10+Are You sure?'
 0050E2ED    call        0043F788
 0050E2F2    cmp         eax,6
>0050E2F5    jne         0050E33C
 0050E2F7    call        004D01EC
 0050E2FC    test        al,al
>0050E2FE    je          0050E30C
 0050E300    mov         eax,50E5CC;'Erase Flash - OK'
 0050E305    call        00544EB4
>0050E30A    jmp         0050E316
 0050E30C    mov         eax,50E5E8;'Erase Flash - '
 0050E311    call        00544F6C
 0050E316    mov         ecx,dword ptr [ebp-30]
 0050E319    xor         edx,edx
 0050E31B    xor         eax,eax
 0050E31D    call        004D02C8
 0050E322    test        al,al
>0050E324    je          0050E332
 0050E326    mov         eax,50E600;'Write Flash - OK'
 0050E32B    call        00544EB4
>0050E330    jmp         0050E33C
 0050E332    mov         eax,50E61C;'Write Flash - '
 0050E337    call        00544F6C
 0050E33C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050E342    mov         edx,dword ptr [edx]
 0050E344    lea         eax,[ebp-44]
 0050E347    mov         ecx,50E634;'NewFlash.bin'
 0050E34C    call        @LStrCat3
 0050E351    mov         edx,dword ptr [ebp-44]
 0050E354    mov         eax,dword ptr [ebp-30]
 0050E357    call        00423E84
 0050E35C    push        0
 0050E35E    mov         cx,word ptr ds:[50E59C];0x3 gvar_0050E59C
 0050E365    xor         edx,edx
 0050E367    mov         eax,50E64C;'Write Modules to Flash !'+#10+Are You sure?'
 0050E36C    call        0043F788
 0050E371    cmp         eax,6
>0050E374    jne         0050E4AC
 0050E37A    mov         dword ptr [ebp-8],2
 0050E381    push        7
 0050E383    mov         ecx,dword ptr [ebp-8]
 0050E386    mov         edx,50E67C;'Write Modules to Flash'
 0050E38B    mov         eax,[004F7B20];TfmProgres
 0050E390    call        004F7D0C
>0050E395    jmp         0050E48C
 0050E39A    mov         eax,dword ptr [ebp-8]
 0050E39D    cmp         byte ptr [ebp+eax-10],1
>0050E3A2    jne         0050E42C
 0050E3A8    mov         eax,dword ptr [ebp-8]
 0050E3AB    mov         dx,word ptr [eax*2+56D424]
 0050E3B3    mov         eax,dword ptr [ebp-8]
 0050E3B6    mov         eax,dword ptr [ebp+eax*4-34]
 0050E3BA    call        0050782C
 0050E3BF    mov         eax,dword ptr [ebp-8]
 0050E3C2    mov         eax,dword ptr [ebp+eax*4-34]
 0050E3C6    mov         dl,1
 0050E3C8    call        005014D0
 0050E3CD    mov         eax,dword ptr [ebp-8]
 0050E3D0    mov         edx,dword ptr [ebp+eax*4-34]
 0050E3D4    mov         eax,dword ptr [ebp-8]
 0050E3D7    mov         ax,word ptr [eax*2+56D424]
 0050E3DF    call        004CF728
 0050E3E4    mov         eax,[0056E2D0];^gvar_0056DF38
 0050E3E9    push        dword ptr [eax]
 0050E3EB    push        50E69C;'   '
 0050E3F0    lea         ecx,[ebp-4C]
 0050E3F3    mov         eax,dword ptr [ebp-8]
 0050E3F6    movzx       eax,word ptr [eax*2+56D424]
 0050E3FE    mov         edx,4
 0050E403    call        IntToHex
 0050E408    push        dword ptr [ebp-4C]
 0050E40B    push        50E6A8;'.rpm'
 0050E410    lea         eax,[ebp-48]
 0050E413    mov         edx,4
 0050E418    call        @LStrCatN
 0050E41D    mov         edx,dword ptr [ebp-48]
 0050E420    mov         eax,dword ptr [ebp-8]
 0050E423    mov         eax,dword ptr [ebp+eax*4-34]
 0050E427    call        00423E84
 0050E42C    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050E431    cmp         byte ptr [eax],0
>0050E434    jne         0050E440
 0050E436    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E43B    cmp         byte ptr [eax],0
>0050E43E    je          0050E47A
 0050E440    push        50E6B8;'Write module '
 0050E445    lea         ecx,[ebp-54]
 0050E448    mov         eax,dword ptr [ebp-8]
 0050E44B    movzx       eax,word ptr [eax*2+56D424]
 0050E453    mov         edx,2
 0050E458    call        IntToHex
 0050E45D    push        dword ptr [ebp-54]
 0050E460    push        50E598;' - '
 0050E465    lea         eax,[ebp-50]
 0050E468    mov         edx,3
 0050E46D    call        @LStrCatN
 0050E472    mov         eax,dword ptr [ebp-50]
 0050E475    call        00544F6C
 0050E47A    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050E47F    mov         eax,dword ptr [eax]
 0050E481    mov         edx,dword ptr [ebp-8]
 0050E484    call        004F7E2C
 0050E489    inc         dword ptr [ebp-8]
 0050E48C    cmp         dword ptr [ebp-8],7
>0050E490    jg          0050E4A0
 0050E492    mov         eax,[0056E5A4];^gvar_0056DF04
 0050E497    cmp         byte ptr [eax],0
>0050E49A    je          0050E39A
 0050E4A0    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050E4A5    mov         eax,dword ptr [eax]
 0050E4A7    call        004A7264
 0050E4AC    xor         eax,eax
 0050E4AE    pop         edx
 0050E4AF    pop         ecx
 0050E4B0    pop         ecx
 0050E4B1    mov         dword ptr fs:[eax],edx
 0050E4B4    push        50E4DB
 0050E4B9    xor         eax,eax
 0050E4BB    mov         dword ptr [ebp-8],eax
 0050E4BE    mov         eax,dword ptr [ebp-8]
 0050E4C1    mov         eax,dword ptr [ebp+eax*4-34]
 0050E4C5    call        TObject.Free
 0050E4CA    inc         dword ptr [ebp-8]
 0050E4CD    cmp         dword ptr [ebp-8],8
>0050E4D1    jne         0050E4BE
 0050E4D3    ret
>0050E4D4    jmp         @HandleFinally
>0050E4D9    jmp         0050E4B9
 0050E4DB    mov         eax,50E6D0;'Flash Repair - End'
 0050E4E0    call        00544EB4
>0050E4E5    jmp         0050E4F1
 0050E4E7    xor         edx,edx
 0050E4E9    mov         eax,dword ptr [ebp-4]
 0050E4EC    call        TfmFlash.btCreateClick
 0050E4F1    xor         eax,eax
 0050E4F3    pop         edx
 0050E4F4    pop         ecx
 0050E4F5    pop         ecx
 0050E4F6    mov         dword ptr fs:[eax],edx
 0050E4F9    push        50E513
 0050E4FE    lea         eax,[ebp-54]
 0050E501    mov         edx,8
 0050E506    call        @LStrArrayClr
 0050E50B    ret
>0050E50C    jmp         @HandleFinally
>0050E511    jmp         0050E4FE
 0050E513    pop         ebx
 0050E514    mov         esp,ebp
 0050E516    pop         ebp
 0050E517    ret
*}
end;

//0050E6E4
procedure sub_0050E6E4(?:TMemoryStream);
begin
{*
 0050E6E4    push        ebp
 0050E6E5    mov         ebp,esp
 0050E6E7    mov         ecx,0D
 0050E6EC    push        0
 0050E6EE    push        0
 0050E6F0    dec         ecx
>0050E6F1    jne         0050E6EC
 0050E6F3    push        ecx
 0050E6F4    push        ebx
 0050E6F5    mov         dword ptr [ebp-4],eax
 0050E6F8    xor         eax,eax
 0050E6FA    push        ebp
 0050E6FB    push        50EE48
 0050E700    push        dword ptr fs:[eax]
 0050E703    mov         dword ptr fs:[eax],esp
 0050E706    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050E70B    mov         eax,dword ptr [eax]
 0050E70D    mov         eax,dword ptr [eax+2F8]
 0050E713    mov         eax,dword ptr [eax+248]
 0050E719    call        TStrings.BeginUpdate
 0050E71E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050E723    mov         eax,dword ptr [eax]
 0050E725    mov         eax,dword ptr [eax+2F8]
 0050E72B    mov         eax,dword ptr [eax+248]
 0050E731    mov         edx,50EE5C;'Header'
 0050E736    mov         ecx,dword ptr [eax]
 0050E738    call        dword ptr [ecx+38]
 0050E73B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050E740    mov         eax,dword ptr [eax]
 0050E742    mov         eax,dword ptr [eax+2F8]
 0050E748    mov         eax,dword ptr [eax+248]
 0050E74E    mov         edx,50EE6C;'ID  FL     CA        FS        FA        LA        ST        US     CS'
 0050E753    mov         ecx,dword ptr [eax]
 0050E755    call        dword ptr [ecx+38]
 0050E758    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050E75D    mov         eax,dword ptr [eax]
 0050E75F    mov         eax,dword ptr [eax+2F8]
 0050E765    mov         eax,dword ptr [eax+248]
 0050E76B    mov         edx,50EEBC;'----------------------------------------------------------------------------...
 0050E770    mov         ecx,dword ptr [eax]
 0050E772    call        dword ptr [ecx+38]
 0050E775    xor         ecx,ecx
 0050E777    mov         edx,0C
 0050E77C    mov         eax,dword ptr [ebp-4]
 0050E77F    mov         ebx,dword ptr [eax]
 0050E781    call        dword ptr [ebx+14]
 0050E784    mov         eax,dword ptr [ebp-4]
 0050E787    call        004CE56C
 0050E78C    shr         eax,5
 0050E78F    mov         dword ptr [ebp-14],eax
 0050E792    xor         ecx,ecx
 0050E794    xor         edx,edx
 0050E796    mov         eax,dword ptr [ebp-4]
 0050E799    mov         ebx,dword ptr [eax]
 0050E79B    call        dword ptr [ebx+14]
 0050E79E    mov         eax,dword ptr [ebp-14]
 0050E7A1    dec         eax
 0050E7A2    test        eax,eax
>0050E7A4    jl          0050EE15
 0050E7AA    inc         eax
 0050E7AB    mov         dword ptr [ebp-18],eax
 0050E7AE    mov         dword ptr [ebp-8],0
 0050E7B5    mov         byte ptr [ebp-0D],0
 0050E7B9    mov         eax,dword ptr [ebp-4]
 0050E7BC    call        004CE548
 0050E7C1    mov         word ptr [ebp-0A],ax
 0050E7C5    mov         al,byte ptr [ebp-0A]
 0050E7C8    and         al,0FF
 0050E7CA    mov         edx,dword ptr [ebp-8]
 0050E7CD    shl         edx,2
 0050E7D0    mov         byte ptr [edx*8+5775C8],al
 0050E7D7    movzx       eax,word ptr [ebp-0A]
 0050E7DB    shr         eax,8
 0050E7DE    mov         edx,dword ptr [ebp-8]
 0050E7E1    shl         edx,2
 0050E7E4    mov         word ptr [edx*8+5775CA],ax
 0050E7EC    mov         al,byte ptr [ebp-0A]
 0050E7EF    and         al,0FF
 0050E7F1    add         byte ptr [ebp-0D],al
 0050E7F4    movzx       eax,word ptr [ebp-0A]
 0050E7F8    shr         eax,8
 0050E7FB    add         byte ptr [ebp-0D],al
 0050E7FE    mov         eax,dword ptr [ebp-4]
 0050E801    call        004CE548
 0050E806    mov         word ptr [ebp-0A],ax
 0050E80A    movzx       eax,word ptr [ebp-0A]
 0050E80E    mov         edx,dword ptr [ebp-8]
 0050E811    shl         edx,2
 0050E814    mov         dword ptr [edx*8+5775E0],eax
 0050E81B    mov         eax,dword ptr [ebp-8]
 0050E81E    shl         eax,2
 0050E821    shl         dword ptr [eax*8+5775E0],10
 0050E829    mov         al,byte ptr [ebp-0A]
 0050E82C    and         al,0FF
 0050E82E    add         byte ptr [ebp-0D],al
 0050E831    movzx       eax,word ptr [ebp-0A]
 0050E835    shr         eax,8
 0050E838    add         byte ptr [ebp-0D],al
 0050E83B    mov         eax,dword ptr [ebp-4]
 0050E83E    call        004CE548
 0050E843    mov         word ptr [ebp-0A],ax
 0050E847    mov         al,byte ptr [ebp-0A]
 0050E84A    and         al,0FF
 0050E84C    add         byte ptr [ebp-0D],al
 0050E84F    movzx       eax,word ptr [ebp-0A]
 0050E853    shr         eax,8
 0050E856    add         byte ptr [ebp-0D],al
 0050E859    mov         eax,dword ptr [ebp-4]
 0050E85C    call        004CE548
 0050E861    mov         word ptr [ebp-0C],ax
 0050E865    movzx       eax,word ptr [ebp-0C]
 0050E869    mov         edx,dword ptr [ebp-8]
 0050E86C    shl         edx,2
 0050E86F    mov         dword ptr [edx*8+5775CC],eax
 0050E876    mov         eax,dword ptr [ebp-8]
 0050E879    shl         eax,2
 0050E87C    shl         dword ptr [eax*8+5775CC],10
 0050E884    movzx       eax,word ptr [ebp-0A]
 0050E888    mov         edx,dword ptr [ebp-8]
 0050E88B    shl         edx,2
 0050E88E    or          dword ptr [edx*8+5775CC],eax
 0050E895    mov         al,byte ptr [ebp-0C]
 0050E898    and         al,0FF
 0050E89A    add         byte ptr [ebp-0D],al
 0050E89D    movzx       eax,word ptr [ebp-0C]
 0050E8A1    shr         eax,8
 0050E8A4    add         byte ptr [ebp-0D],al
 0050E8A7    mov         eax,dword ptr [ebp-4]
 0050E8AA    call        004CE548
 0050E8AF    mov         word ptr [ebp-0A],ax
 0050E8B3    mov         al,byte ptr [ebp-0A]
 0050E8B6    and         al,0FF
 0050E8B8    add         byte ptr [ebp-0D],al
 0050E8BB    movzx       eax,word ptr [ebp-0A]
 0050E8BF    shr         eax,8
 0050E8C2    add         byte ptr [ebp-0D],al
 0050E8C5    mov         eax,dword ptr [ebp-4]
 0050E8C8    call        004CE548
 0050E8CD    mov         word ptr [ebp-0C],ax
 0050E8D1    movzx       eax,word ptr [ebp-0C]
 0050E8D5    mov         edx,dword ptr [ebp-8]
 0050E8D8    shl         edx,2
 0050E8DB    mov         dword ptr [edx*8+5775D0],eax
 0050E8E2    mov         eax,dword ptr [ebp-8]
 0050E8E5    shl         eax,2
 0050E8E8    shl         dword ptr [eax*8+5775D0],10
 0050E8F0    movzx       eax,word ptr [ebp-0A]
 0050E8F4    mov         edx,dword ptr [ebp-8]
 0050E8F7    shl         edx,2
 0050E8FA    or          dword ptr [edx*8+5775D0],eax
 0050E901    mov         al,byte ptr [ebp-0C]
 0050E904    and         al,0FF
 0050E906    add         byte ptr [ebp-0D],al
 0050E909    movzx       eax,word ptr [ebp-0C]
 0050E90D    shr         eax,8
 0050E910    add         byte ptr [ebp-0D],al
 0050E913    mov         eax,dword ptr [ebp-4]
 0050E916    call        004CE548
 0050E91B    mov         word ptr [ebp-0A],ax
 0050E91F    mov         al,byte ptr [ebp-0A]
 0050E922    and         al,0FF
 0050E924    add         byte ptr [ebp-0D],al
 0050E927    movzx       eax,word ptr [ebp-0A]
 0050E92B    shr         eax,8
 0050E92E    add         byte ptr [ebp-0D],al
 0050E931    mov         eax,dword ptr [ebp-4]
 0050E934    call        004CE548
 0050E939    mov         word ptr [ebp-0C],ax
 0050E93D    movzx       eax,word ptr [ebp-0C]
 0050E941    mov         edx,dword ptr [ebp-8]
 0050E944    shl         edx,2
 0050E947    mov         dword ptr [edx*8+5775D4],eax
 0050E94E    mov         eax,dword ptr [ebp-8]
 0050E951    shl         eax,2
 0050E954    shl         dword ptr [eax*8+5775D4],10
 0050E95C    movzx       eax,word ptr [ebp-0A]
 0050E960    mov         edx,dword ptr [ebp-8]
 0050E963    shl         edx,2
 0050E966    or          dword ptr [edx*8+5775D4],eax
 0050E96D    mov         al,byte ptr [ebp-0C]
 0050E970    and         al,0FF
 0050E972    add         byte ptr [ebp-0D],al
 0050E975    movzx       eax,word ptr [ebp-0C]
 0050E979    shr         eax,8
 0050E97C    add         byte ptr [ebp-0D],al
 0050E97F    mov         eax,dword ptr [ebp-4]
 0050E982    call        004CE548
 0050E987    mov         word ptr [ebp-0A],ax
 0050E98B    mov         al,byte ptr [ebp-0A]
 0050E98E    and         al,0FF
 0050E990    add         byte ptr [ebp-0D],al
 0050E993    movzx       eax,word ptr [ebp-0A]
 0050E997    shr         eax,8
 0050E99A    add         byte ptr [ebp-0D],al
 0050E99D    mov         eax,dword ptr [ebp-4]
 0050E9A0    call        004CE548
 0050E9A5    mov         word ptr [ebp-0C],ax
 0050E9A9    movzx       eax,word ptr [ebp-0C]
 0050E9AD    mov         edx,dword ptr [ebp-8]
 0050E9B0    shl         edx,2
 0050E9B3    mov         dword ptr [edx*8+5775D8],eax
 0050E9BA    mov         eax,dword ptr [ebp-8]
 0050E9BD    shl         eax,2
 0050E9C0    shl         dword ptr [eax*8+5775D8],10
 0050E9C8    movzx       eax,word ptr [ebp-0A]
 0050E9CC    mov         edx,dword ptr [ebp-8]
 0050E9CF    shl         edx,2
 0050E9D2    or          dword ptr [edx*8+5775D8],eax
 0050E9D9    mov         al,byte ptr [ebp-0C]
 0050E9DC    and         al,0FF
 0050E9DE    add         byte ptr [ebp-0D],al
 0050E9E1    movzx       eax,word ptr [ebp-0C]
 0050E9E5    shr         eax,8
 0050E9E8    add         byte ptr [ebp-0D],al
 0050E9EB    mov         eax,dword ptr [ebp-4]
 0050E9EE    call        004CE548
 0050E9F3    mov         word ptr [ebp-0A],ax
 0050E9F7    mov         al,byte ptr [ebp-0A]
 0050E9FA    and         al,0FF
 0050E9FC    add         byte ptr [ebp-0D],al
 0050E9FF    movzx       eax,word ptr [ebp-0A]
 0050EA03    shr         eax,8
 0050EA06    add         byte ptr [ebp-0D],al
 0050EA09    mov         eax,dword ptr [ebp-4]
 0050EA0C    call        004CE548
 0050EA11    mov         word ptr [ebp-0C],ax
 0050EA15    movzx       eax,word ptr [ebp-0C]
 0050EA19    mov         edx,dword ptr [ebp-8]
 0050EA1C    shl         edx,2
 0050EA1F    mov         dword ptr [edx*8+5775DC],eax
 0050EA26    mov         eax,dword ptr [ebp-8]
 0050EA29    shl         eax,2
 0050EA2C    shl         dword ptr [eax*8+5775DC],10
 0050EA34    movzx       eax,word ptr [ebp-0A]
 0050EA38    mov         edx,dword ptr [ebp-8]
 0050EA3B    shl         edx,2
 0050EA3E    or          dword ptr [edx*8+5775DC],eax
 0050EA45    mov         al,byte ptr [ebp-0C]
 0050EA48    and         al,0FF
 0050EA4A    add         byte ptr [ebp-0D],al
 0050EA4D    movzx       eax,word ptr [ebp-0C]
 0050EA51    shr         eax,8
 0050EA54    add         byte ptr [ebp-0D],al
 0050EA57    mov         eax,dword ptr [ebp-4]
 0050EA5A    call        004CE548
 0050EA5F    mov         word ptr [ebp-0A],ax
 0050EA63    mov         al,byte ptr [ebp-0A]
 0050EA66    and         al,0FF
 0050EA68    add         byte ptr [ebp-0D],al
 0050EA6B    movzx       eax,word ptr [ebp-0A]
 0050EA6F    shr         eax,8
 0050EA72    add         byte ptr [ebp-0D],al
 0050EA75    mov         eax,dword ptr [ebp-4]
 0050EA78    call        004CE548
 0050EA7D    mov         word ptr [ebp-0A],ax
 0050EA81    mov         al,byte ptr [ebp-0A]
 0050EA84    and         al,0FF
 0050EA86    add         byte ptr [ebp-0D],al
 0050EA89    movzx       eax,word ptr [ebp-0A]
 0050EA8D    shr         eax,8
 0050EA90    add         byte ptr [ebp-0D],al
 0050EA93    mov         eax,dword ptr [ebp-4]
 0050EA96    call        004CE548
 0050EA9B    mov         word ptr [ebp-0A],ax
 0050EA9F    mov         al,byte ptr [ebp-0A]
 0050EAA2    and         al,0FF
 0050EAA4    add         byte ptr [ebp-0D],al
 0050EAA7    movzx       eax,word ptr [ebp-0A]
 0050EAAB    shr         eax,8
 0050EAAE    add         byte ptr [ebp-0D],al
 0050EAB1    movzx       eax,word ptr [ebp-0A]
 0050EAB5    mov         edx,dword ptr [ebp-8]
 0050EAB8    shl         edx,2
 0050EABB    or          dword ptr [edx*8+5775E0],eax
 0050EAC2    mov         eax,dword ptr [ebp-4]
 0050EAC5    call        004CE548
 0050EACA    mov         word ptr [ebp-0A],ax
 0050EACE    mov         al,byte ptr [ebp-0A]
 0050EAD1    and         al,0FF
 0050EAD3    add         byte ptr [ebp-0D],al
 0050EAD6    movzx       eax,word ptr [ebp-0A]
 0050EADA    shr         eax,8
 0050EADD    mov         edx,dword ptr [ebp-8]
 0050EAE0    shl         edx,2
 0050EAE3    mov         byte ptr [edx*8+5775E4],al
 0050EAEA    mov         eax,dword ptr [ebp-8]
 0050EAED    shl         eax,2
 0050EAF0    mov         al,byte ptr [eax*8+5775E4]
 0050EAF7    cmp         al,byte ptr [ebp-0D]
>0050EAFA    jne         0050EC7F
 0050EB00    lea         ecx,[ebp-20]
 0050EB03    mov         eax,dword ptr [ebp-8]
 0050EB06    shl         eax,2
 0050EB09    movzx       eax,byte ptr [eax*8+5775C8]
 0050EB11    mov         edx,2
 0050EB16    call        IntToHex
 0050EB1B    push        dword ptr [ebp-20]
 0050EB1E    push        50EF14;'  '
 0050EB23    lea         ecx,[ebp-24]
 0050EB26    mov         eax,dword ptr [ebp-8]
 0050EB29    shl         eax,2
 0050EB2C    movzx       eax,word ptr [eax*8+5775CA]
 0050EB34    mov         edx,2
 0050EB39    call        IntToHex
 0050EB3E    push        dword ptr [ebp-24]
 0050EB41    push        50EF14;'  '
 0050EB46    mov         eax,dword ptr [ebp-8]
 0050EB49    shl         eax,2
 0050EB4C    mov         eax,dword ptr [eax*8+5775CC]
 0050EB53    xor         edx,edx
 0050EB55    push        edx
 0050EB56    push        eax
 0050EB57    lea         edx,[ebp-28]
 0050EB5A    mov         eax,8
 0050EB5F    call        IntToHex
 0050EB64    push        dword ptr [ebp-28]
 0050EB67    push        50EF14;'  '
 0050EB6C    mov         eax,dword ptr [ebp-8]
 0050EB6F    shl         eax,2
 0050EB72    mov         eax,dword ptr [eax*8+5775D0]
 0050EB79    xor         edx,edx
 0050EB7B    push        edx
 0050EB7C    push        eax
 0050EB7D    lea         edx,[ebp-2C]
 0050EB80    mov         eax,8
 0050EB85    call        IntToHex
 0050EB8A    push        dword ptr [ebp-2C]
 0050EB8D    push        50EF14;'  '
 0050EB92    mov         eax,dword ptr [ebp-8]
 0050EB95    shl         eax,2
 0050EB98    mov         eax,dword ptr [eax*8+5775D4]
 0050EB9F    xor         edx,edx
 0050EBA1    push        edx
 0050EBA2    push        eax
 0050EBA3    lea         edx,[ebp-30]
 0050EBA6    mov         eax,8
 0050EBAB    call        IntToHex
 0050EBB0    push        dword ptr [ebp-30]
 0050EBB3    push        50EF14;'  '
 0050EBB8    mov         eax,dword ptr [ebp-8]
 0050EBBB    shl         eax,2
 0050EBBE    mov         eax,dword ptr [eax*8+5775D8]
 0050EBC5    xor         edx,edx
 0050EBC7    push        edx
 0050EBC8    push        eax
 0050EBC9    lea         edx,[ebp-34]
 0050EBCC    mov         eax,8
 0050EBD1    call        IntToHex
 0050EBD6    push        dword ptr [ebp-34]
 0050EBD9    push        50EF14;'  '
 0050EBDE    mov         eax,dword ptr [ebp-8]
 0050EBE1    shl         eax,2
 0050EBE4    mov         eax,dword ptr [eax*8+5775DC]
 0050EBEB    xor         edx,edx
 0050EBED    push        edx
 0050EBEE    push        eax
 0050EBEF    lea         edx,[ebp-38]
 0050EBF2    mov         eax,8
 0050EBF7    call        IntToHex
 0050EBFC    push        dword ptr [ebp-38]
 0050EBFF    push        50EF14;'  '
 0050EC04    mov         eax,dword ptr [ebp-8]
 0050EC07    shl         eax,2
 0050EC0A    mov         eax,dword ptr [eax*8+5775E0]
 0050EC11    xor         edx,edx
 0050EC13    push        edx
 0050EC14    push        eax
 0050EC15    lea         edx,[ebp-3C]
 0050EC18    mov         eax,8
 0050EC1D    call        IntToHex
 0050EC22    push        dword ptr [ebp-3C]
 0050EC25    push        50EF14;'  '
 0050EC2A    lea         ecx,[ebp-40]
 0050EC2D    mov         eax,dword ptr [ebp-8]
 0050EC30    shl         eax,2
 0050EC33    movzx       eax,byte ptr [eax*8+5775E4]
 0050EC3B    mov         edx,2
 0050EC40    call        IntToHex
 0050EC45    push        dword ptr [ebp-40]
 0050EC48    push        50EF14;'  '
 0050EC4D    push        50EF20;' - OK'
 0050EC52    lea         eax,[ebp-1C]
 0050EC55    mov         edx,13
 0050EC5A    call        @LStrCatN
 0050EC5F    mov         edx,dword ptr [ebp-1C]
 0050EC62    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EC67    mov         eax,dword ptr [eax]
 0050EC69    mov         eax,dword ptr [eax+2F8]
 0050EC6F    mov         eax,dword ptr [eax+248]
 0050EC75    mov         ecx,dword ptr [eax]
 0050EC77    call        dword ptr [ecx+38]
>0050EC7A    jmp         0050EE09
 0050EC7F    lea         ecx,[ebp-48]
 0050EC82    mov         eax,dword ptr [ebp-8]
 0050EC85    shl         eax,2
 0050EC88    movzx       eax,byte ptr [eax*8+5775C8]
 0050EC90    mov         edx,2
 0050EC95    call        IntToHex
 0050EC9A    push        dword ptr [ebp-48]
 0050EC9D    push        50EF14;'  '
 0050ECA2    lea         ecx,[ebp-4C]
 0050ECA5    mov         eax,dword ptr [ebp-8]
 0050ECA8    shl         eax,2
 0050ECAB    movzx       eax,word ptr [eax*8+5775CA]
 0050ECB3    mov         edx,2
 0050ECB8    call        IntToHex
 0050ECBD    push        dword ptr [ebp-4C]
 0050ECC0    push        50EF14;'  '
 0050ECC5    mov         eax,dword ptr [ebp-8]
 0050ECC8    shl         eax,2
 0050ECCB    mov         eax,dword ptr [eax*8+5775CC]
 0050ECD2    xor         edx,edx
 0050ECD4    push        edx
 0050ECD5    push        eax
 0050ECD6    lea         edx,[ebp-50]
 0050ECD9    mov         eax,8
 0050ECDE    call        IntToHex
 0050ECE3    push        dword ptr [ebp-50]
 0050ECE6    push        50EF14;'  '
 0050ECEB    mov         eax,dword ptr [ebp-8]
 0050ECEE    shl         eax,2
 0050ECF1    mov         eax,dword ptr [eax*8+5775D0]
 0050ECF8    xor         edx,edx
 0050ECFA    push        edx
 0050ECFB    push        eax
 0050ECFC    lea         edx,[ebp-54]
 0050ECFF    mov         eax,8
 0050ED04    call        IntToHex
 0050ED09    push        dword ptr [ebp-54]
 0050ED0C    push        50EF14;'  '
 0050ED11    mov         eax,dword ptr [ebp-8]
 0050ED14    shl         eax,2
 0050ED17    mov         eax,dword ptr [eax*8+5775D4]
 0050ED1E    xor         edx,edx
 0050ED20    push        edx
 0050ED21    push        eax
 0050ED22    lea         edx,[ebp-58]
 0050ED25    mov         eax,8
 0050ED2A    call        IntToHex
 0050ED2F    push        dword ptr [ebp-58]
 0050ED32    push        50EF14;'  '
 0050ED37    mov         eax,dword ptr [ebp-8]
 0050ED3A    shl         eax,2
 0050ED3D    mov         eax,dword ptr [eax*8+5775D8]
 0050ED44    xor         edx,edx
 0050ED46    push        edx
 0050ED47    push        eax
 0050ED48    lea         edx,[ebp-5C]
 0050ED4B    mov         eax,8
 0050ED50    call        IntToHex
 0050ED55    push        dword ptr [ebp-5C]
 0050ED58    push        50EF14;'  '
 0050ED5D    mov         eax,dword ptr [ebp-8]
 0050ED60    shl         eax,2
 0050ED63    mov         eax,dword ptr [eax*8+5775DC]
 0050ED6A    xor         edx,edx
 0050ED6C    push        edx
 0050ED6D    push        eax
 0050ED6E    lea         edx,[ebp-60]
 0050ED71    mov         eax,8
 0050ED76    call        IntToHex
 0050ED7B    push        dword ptr [ebp-60]
 0050ED7E    push        50EF14;'  '
 0050ED83    mov         eax,dword ptr [ebp-8]
 0050ED86    shl         eax,2
 0050ED89    mov         eax,dword ptr [eax*8+5775E0]
 0050ED90    xor         edx,edx
 0050ED92    push        edx
 0050ED93    push        eax
 0050ED94    lea         edx,[ebp-64]
 0050ED97    mov         eax,8
 0050ED9C    call        IntToHex
 0050EDA1    push        dword ptr [ebp-64]
 0050EDA4    push        50EF14;'  '
 0050EDA9    lea         ecx,[ebp-68]
 0050EDAC    mov         eax,dword ptr [ebp-8]
 0050EDAF    shl         eax,2
 0050EDB2    movzx       eax,byte ptr [eax*8+5775E4]
 0050EDBA    mov         edx,2
 0050EDBF    call        IntToHex
 0050EDC4    push        dword ptr [ebp-68]
 0050EDC7    push        50EF30;' < '
 0050EDCC    lea         ecx,[ebp-6C]
 0050EDCF    xor         eax,eax
 0050EDD1    mov         al,byte ptr [ebp-0D]
 0050EDD4    mov         edx,2
 0050EDD9    call        IntToHex
 0050EDDE    push        dword ptr [ebp-6C]
 0050EDE1    lea         eax,[ebp-44]
 0050EDE4    mov         edx,13
 0050EDE9    call        @LStrCatN
 0050EDEE    mov         edx,dword ptr [ebp-44]
 0050EDF1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EDF6    mov         eax,dword ptr [eax]
 0050EDF8    mov         eax,dword ptr [eax+2F8]
 0050EDFE    mov         eax,dword ptr [eax+248]
 0050EE04    mov         ecx,dword ptr [eax]
 0050EE06    call        dword ptr [ecx+38]
 0050EE09    inc         dword ptr [ebp-8]
 0050EE0C    dec         dword ptr [ebp-18]
>0050EE0F    jne         0050E7B5
 0050EE15    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EE1A    mov         eax,dword ptr [eax]
 0050EE1C    mov         eax,dword ptr [eax+2F8]
 0050EE22    mov         eax,dword ptr [eax+248]
 0050EE28    call        TStrings.EndUpdate
 0050EE2D    xor         eax,eax
 0050EE2F    pop         edx
 0050EE30    pop         ecx
 0050EE31    pop         ecx
 0050EE32    mov         dword ptr fs:[eax],edx
 0050EE35    push        50EE4F
 0050EE3A    lea         eax,[ebp-6C]
 0050EE3D    mov         edx,15
 0050EE42    call        @LStrArrayClr
 0050EE47    ret
>0050EE48    jmp         @HandleFinally
>0050EE4D    jmp         0050EE3A
 0050EE4F    pop         ebx
 0050EE50    mov         esp,ebp
 0050EE52    pop         ebp
 0050EE53    ret
*}
end;

//0050EF34
{*function sub_0050EF34(?:?; ?:?; ?:?):?;
begin
 0050EF34    push        ebp
 0050EF35    mov         ebp,esp
 0050EF37    add         esp,0FFFFFFEC
 0050EF3A    push        ebx
 0050EF3B    mov         dword ptr [ebp-8],edx
 0050EF3E    mov         dword ptr [ebp-4],eax
 0050EF41    mov         eax,dword ptr [ebp-4]
 0050EF44    mov         dword ptr [ebp-10],eax
 0050EF47    mov         eax,dword ptr [ebp-4]
 0050EF4A    add         eax,dword ptr [ebp-8]
 0050EF4D    dec         eax
 0050EF4E    mov         dword ptr [ebp-14],eax
 0050EF51    mov         byte ptr [ebp-0B],0
 0050EF55    mov         eax,dword ptr [ebp+8]
 0050EF58    mov         eax,dword ptr [eax-4]
 0050EF5B    xor         ecx,ecx
 0050EF5D    mov         edx,dword ptr [ebp-10]
 0050EF60    mov         ebx,dword ptr [eax]
 0050EF62    call        dword ptr [ebx+14]
>0050EF65    jmp         0050EF7E
 0050EF67    mov         eax,dword ptr [ebp+8]
 0050EF6A    mov         eax,dword ptr [eax-4]
 0050EF6D    call        004CE528
 0050EF72    mov         byte ptr [ebp-0A],al
 0050EF75    mov         al,byte ptr [ebp-0A]
 0050EF78    add         byte ptr [ebp-0B],al
 0050EF7B    inc         dword ptr [ebp-10]
 0050EF7E    mov         eax,[0056E5A4];^gvar_0056DF04
 0050EF83    cmp         byte ptr [eax],0
>0050EF86    jne         0050EF90
 0050EF88    mov         eax,dword ptr [ebp-10]
 0050EF8B    cmp         eax,dword ptr [ebp-14]
>0050EF8E    jb          0050EF67
 0050EF90    mov         al,byte ptr [ebp-0B]
 0050EF93    mov         byte ptr [ebp-9],al
 0050EF96    mov         al,byte ptr [ebp-9]
 0050EF99    pop         ebx
 0050EF9A    mov         esp,ebp
 0050EF9C    pop         ebp
 0050EF9D    ret
end;*}

//0050EFA0
procedure sub_0050EFA0(?:TMemoryStream);
begin
{*
 0050EFA0    push        ebp
 0050EFA1    mov         ebp,esp
 0050EFA3    mov         ecx,8
 0050EFA8    push        0
 0050EFAA    push        0
 0050EFAC    dec         ecx
>0050EFAD    jne         0050EFA8
 0050EFAF    push        ebx
 0050EFB0    mov         dword ptr [ebp-4],eax
 0050EFB3    xor         eax,eax
 0050EFB5    push        ebp
 0050EFB6    push        50F2B2
 0050EFBB    push        dword ptr fs:[eax]
 0050EFBE    mov         dword ptr fs:[eax],esp
 0050EFC1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EFC6    mov         eax,dword ptr [eax]
 0050EFC8    mov         eax,dword ptr [eax+2F8]
 0050EFCE    mov         eax,dword ptr [eax+248]
 0050EFD4    call        TStrings.BeginUpdate
 0050EFD9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EFDE    mov         eax,dword ptr [eax]
 0050EFE0    mov         eax,dword ptr [eax+2F8]
 0050EFE6    mov         eax,dword ptr [eax+248]
 0050EFEC    xor         edx,edx
 0050EFEE    mov         ecx,dword ptr [eax]
 0050EFF0    call        dword ptr [ecx+38]
 0050EFF3    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050EFF8    mov         eax,dword ptr [eax]
 0050EFFA    mov         eax,dword ptr [eax+2F8]
 0050F000    mov         eax,dword ptr [eax+248]
 0050F006    mov         edx,50F2C8;'Code Blocks'
 0050F00B    mov         ecx,dword ptr [eax]
 0050F00D    call        dword ptr [ecx+38]
 0050F010    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F015    mov         eax,dword ptr [eax]
 0050F017    mov         eax,dword ptr [eax+2F8]
 0050F01D    mov         eax,dword ptr [eax+248]
 0050F023    mov         edx,50F2DC;'ID      FA         FS      CS'
 0050F028    mov         ecx,dword ptr [eax]
 0050F02A    call        dword ptr [ecx+38]
 0050F02D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F032    mov         eax,dword ptr [eax]
 0050F034    mov         eax,dword ptr [eax+2F8]
 0050F03A    mov         eax,dword ptr [eax+248]
 0050F040    mov         edx,50F304;'--------------------------------'
 0050F045    mov         ecx,dword ptr [eax]
 0050F047    call        dword ptr [ecx+38]
 0050F04A    xor         ecx,ecx
 0050F04C    mov         edx,0C
 0050F051    mov         eax,dword ptr [ebp-4]
 0050F054    mov         ebx,dword ptr [eax]
 0050F056    call        dword ptr [ebx+14]
 0050F059    mov         eax,dword ptr [ebp-4]
 0050F05C    call        004CE56C
 0050F061    shr         eax,5
 0050F064    mov         dword ptr [ebp-10],eax
 0050F067    mov         eax,dword ptr [ebp-10]
 0050F06A    dec         eax
 0050F06B    test        eax,eax
>0050F06D    jl          0050F265
 0050F073    inc         eax
 0050F074    mov         dword ptr [ebp-14],eax
 0050F077    mov         dword ptr [ebp-0C],0
 0050F07E    mov         eax,dword ptr [ebp-0C]
 0050F081    shl         eax,2
 0050F084    mov         edx,dword ptr [eax*8+5775D4]
 0050F08B    mov         eax,dword ptr [ebp-0C]
 0050F08E    shl         eax,2
 0050F091    add         edx,dword ptr [eax*8+5775D0]
 0050F098    xor         ecx,ecx
 0050F09A    mov         eax,dword ptr [ebp-4]
 0050F09D    mov         ebx,dword ptr [eax]
 0050F09F    call        dword ptr [ebx+14]
 0050F0A2    mov         eax,dword ptr [ebp-4]
 0050F0A5    call        004CE528
 0050F0AA    mov         byte ptr [ebp-5],al
 0050F0AD    push        ebp
 0050F0AE    mov         eax,dword ptr [ebp-0C]
 0050F0B1    shl         eax,2
 0050F0B4    mov         edx,dword ptr [eax*8+5775CC]
 0050F0BB    mov         eax,dword ptr [ebp-0C]
 0050F0BE    shl         eax,2
 0050F0C1    mov         eax,dword ptr [eax*8+5775D4]
 0050F0C8    call        0050EF34
 0050F0CD    pop         ecx
 0050F0CE    mov         byte ptr [ebp-6],al
 0050F0D1    mov         al,byte ptr [ebp-6]
 0050F0D4    cmp         al,byte ptr [ebp-5]
>0050F0D7    jne         0050F193
 0050F0DD    lea         ecx,[ebp-1C]
 0050F0E0    mov         eax,dword ptr [ebp-0C]
 0050F0E3    shl         eax,2
 0050F0E6    movzx       eax,byte ptr [eax*8+5775C8]
 0050F0EE    mov         edx,2
 0050F0F3    call        IntToHex
 0050F0F8    push        dword ptr [ebp-1C]
 0050F0FB    push        50F330;'   '
 0050F100    mov         eax,dword ptr [ebp-0C]
 0050F103    shl         eax,2
 0050F106    mov         eax,dword ptr [eax*8+5775D4]
 0050F10D    xor         edx,edx
 0050F10F    push        edx
 0050F110    push        eax
 0050F111    lea         edx,[ebp-20]
 0050F114    mov         eax,8
 0050F119    call        IntToHex
 0050F11E    push        dword ptr [ebp-20]
 0050F121    push        50F330;'   '
 0050F126    mov         eax,dword ptr [ebp-0C]
 0050F129    shl         eax,2
 0050F12C    mov         eax,dword ptr [eax*8+5775CC]
 0050F133    xor         edx,edx
 0050F135    push        edx
 0050F136    push        eax
 0050F137    lea         edx,[ebp-24]
 0050F13A    mov         eax,8
 0050F13F    call        IntToHex
 0050F144    push        dword ptr [ebp-24]
 0050F147    push        50F330;'   '
 0050F14C    lea         ecx,[ebp-28]
 0050F14F    xor         eax,eax
 0050F151    mov         al,byte ptr [ebp-5]
 0050F154    mov         edx,2
 0050F159    call        IntToHex
 0050F15E    push        dword ptr [ebp-28]
 0050F161    push        50F33C;' - OK  '
 0050F166    lea         eax,[ebp-18]
 0050F169    mov         edx,8
 0050F16E    call        @LStrCatN
 0050F173    mov         edx,dword ptr [ebp-18]
 0050F176    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F17B    mov         eax,dword ptr [eax]
 0050F17D    mov         eax,dword ptr [eax+2F8]
 0050F183    mov         eax,dword ptr [eax+248]
 0050F189    mov         ecx,dword ptr [eax]
 0050F18B    call        dword ptr [ecx+38]
>0050F18E    jmp         0050F259
 0050F193    lea         ecx,[ebp-30]
 0050F196    mov         eax,dword ptr [ebp-0C]
 0050F199    shl         eax,2
 0050F19C    movzx       eax,byte ptr [eax*8+5775C8]
 0050F1A4    mov         edx,2
 0050F1A9    call        IntToHex
 0050F1AE    push        dword ptr [ebp-30]
 0050F1B1    push        50F330;'   '
 0050F1B6    mov         eax,dword ptr [ebp-0C]
 0050F1B9    shl         eax,2
 0050F1BC    mov         eax,dword ptr [eax*8+5775D4]
 0050F1C3    xor         edx,edx
 0050F1C5    push        edx
 0050F1C6    push        eax
 0050F1C7    lea         edx,[ebp-34]
 0050F1CA    mov         eax,8
 0050F1CF    call        IntToHex
 0050F1D4    push        dword ptr [ebp-34]
 0050F1D7    push        50F330;'   '
 0050F1DC    mov         eax,dword ptr [ebp-0C]
 0050F1DF    shl         eax,2
 0050F1E2    mov         eax,dword ptr [eax*8+5775CC]
 0050F1E9    xor         edx,edx
 0050F1EB    push        edx
 0050F1EC    push        eax
 0050F1ED    lea         edx,[ebp-38]
 0050F1F0    mov         eax,8
 0050F1F5    call        IntToHex
 0050F1FA    push        dword ptr [ebp-38]
 0050F1FD    push        50F330;'   '
 0050F202    lea         ecx,[ebp-3C]
 0050F205    xor         eax,eax
 0050F207    mov         al,byte ptr [ebp-5]
 0050F20A    mov         edx,2
 0050F20F    call        IntToHex
 0050F214    push        dword ptr [ebp-3C]
 0050F217    push        50F34C;' < '
 0050F21C    lea         ecx,[ebp-40]
 0050F21F    xor         eax,eax
 0050F221    mov         al,byte ptr [ebp-6]
 0050F224    mov         edx,2
 0050F229    call        IntToHex
 0050F22E    push        dword ptr [ebp-40]
 0050F231    lea         eax,[ebp-2C]
 0050F234    mov         edx,9
 0050F239    call        @LStrCatN
 0050F23E    mov         edx,dword ptr [ebp-2C]
 0050F241    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F246    mov         eax,dword ptr [eax]
 0050F248    mov         eax,dword ptr [eax+2F8]
 0050F24E    mov         eax,dword ptr [eax+248]
 0050F254    mov         ecx,dword ptr [eax]
 0050F256    call        dword ptr [ecx+38]
 0050F259    inc         dword ptr [ebp-0C]
 0050F25C    dec         dword ptr [ebp-14]
>0050F25F    jne         0050F07E
 0050F265    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F26A    mov         eax,dword ptr [eax]
 0050F26C    mov         eax,dword ptr [eax+2F8]
 0050F272    mov         eax,dword ptr [eax+248]
 0050F278    xor         edx,edx
 0050F27A    mov         ecx,dword ptr [eax]
 0050F27C    call        dword ptr [ecx+38]
 0050F27F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F284    mov         eax,dword ptr [eax]
 0050F286    mov         eax,dword ptr [eax+2F8]
 0050F28C    mov         eax,dword ptr [eax+248]
 0050F292    call        TStrings.EndUpdate
 0050F297    xor         eax,eax
 0050F299    pop         edx
 0050F29A    pop         ecx
 0050F29B    pop         ecx
 0050F29C    mov         dword ptr fs:[eax],edx
 0050F29F    push        50F2B9
 0050F2A4    lea         eax,[ebp-40]
 0050F2A7    mov         edx,0B
 0050F2AC    call        @LStrArrayClr
 0050F2B1    ret
>0050F2B2    jmp         @HandleFinally
>0050F2B7    jmp         0050F2A4
 0050F2B9    pop         ebx
 0050F2BA    mov         esp,ebp
 0050F2BC    pop         ebp
 0050F2BD    ret
*}
end;

//0050F350
{*procedure TfmFlash.btCheckClick(?:?);
begin
 0050F350    push        ebp
 0050F351    mov         ebp,esp
 0050F353    add         esp,0FFFFFFE8
 0050F356    xor         ecx,ecx
 0050F358    mov         dword ptr [ebp-18],ecx
 0050F35B    mov         dword ptr [ebp-14],ecx
 0050F35E    mov         dword ptr [ebp-10],ecx
 0050F361    mov         dword ptr [ebp-0C],edx
 0050F364    mov         dword ptr [ebp-4],eax
 0050F367    xor         eax,eax
 0050F369    push        ebp
 0050F36A    push        50F50D
 0050F36F    push        dword ptr fs:[eax]
 0050F372    mov         dword ptr fs:[eax],esp
 0050F375    mov         dl,1
 0050F377    mov         eax,[0041DE14];TMemoryStream
 0050F37C    call        TObject.Create;TMemoryStream.Create
 0050F381    mov         dword ptr [ebp-8],eax
 0050F384    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F389    mov         byte ptr [eax],0
 0050F38C    xor         eax,eax
 0050F38E    push        ebp
 0050F38F    push        50F4E3
 0050F394    push        dword ptr fs:[eax]
 0050F397    mov         dword ptr fs:[eax],esp
 0050F39A    push        10
 0050F39C    call        user32.GetKeyState
 0050F3A1    test        ax,ax
>0050F3A4    jge         0050F467
 0050F3AA    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050F3B0    mov         edx,dword ptr [edx]
 0050F3B2    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F3B7    mov         eax,dword ptr [eax]
 0050F3B9    mov         eax,dword ptr [eax+35C]
 0050F3BF    call        TOpenDialog.SetInitialDir
 0050F3C4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F3C9    mov         eax,dword ptr [eax]
 0050F3CB    mov         eax,dword ptr [eax+35C]
 0050F3D1    add         eax,78
 0050F3D4    call        @LStrClr
 0050F3D9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F3DE    mov         eax,dword ptr [eax]
 0050F3E0    mov         eax,dword ptr [eax+35C]
 0050F3E6    mov         edx,dword ptr [eax]
 0050F3E8    call        dword ptr [edx+3C]
 0050F3EB    test        al,al
>0050F3ED    je          0050F4CD
 0050F3F3    lea         edx,[ebp-10]
 0050F3F6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F3FB    mov         eax,dword ptr [eax]
 0050F3FD    mov         eax,dword ptr [eax+35C]
 0050F403    call        TOpenDialog.GetFileName
 0050F408    mov         eax,dword ptr [ebp-10]
 0050F40B    call        0040C94C
 0050F410    test        al,al
>0050F412    je          0050F4CD
 0050F418    lea         edx,[ebp-14]
 0050F41B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F420    mov         eax,dword ptr [eax]
 0050F422    mov         eax,dword ptr [eax+35C]
 0050F428    call        TOpenDialog.GetFileName
 0050F42D    mov         edx,dword ptr [ebp-14]
 0050F430    mov         eax,dword ptr [ebp-8]
 0050F433    call        00423F8C
 0050F438    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F43D    mov         eax,dword ptr [eax]
 0050F43F    mov         eax,dword ptr [eax+2F8]
 0050F445    mov         eax,dword ptr [eax+248]
 0050F44B    mov         edx,50F520;'Check Flash:'
 0050F450    mov         ecx,dword ptr [eax]
 0050F452    call        dword ptr [ecx+38]
 0050F455    mov         eax,dword ptr [ebp-8]
 0050F458    call        0050E6E4
 0050F45D    mov         eax,dword ptr [ebp-8]
 0050F460    call        0050EFA0
>0050F465    jmp         0050F4CD
 0050F467    lea         edx,[ebp-18]
 0050F46A    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050F46F    mov         eax,dword ptr [eax+308];TfmFlash.cbFlashLen:TComboBox
 0050F475    call        TPanel.GetCaption
 0050F47A    mov         eax,dword ptr [ebp-18]
 0050F47D    xor         edx,edx
 0050F47F    call        0040C4A8
 0050F484    mov         edx,eax
 0050F486    mov         ecx,dword ptr [ebp-8]
 0050F489    xor         eax,eax
 0050F48B    call        004D007C
 0050F490    test        al,al
>0050F492    je          0050F4C3
 0050F494    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050F499    mov         eax,dword ptr [eax]
 0050F49B    mov         eax,dword ptr [eax+2F8]
 0050F4A1    mov         eax,dword ptr [eax+248]
 0050F4A7    mov         edx,50F520;'Check Flash:'
 0050F4AC    mov         ecx,dword ptr [eax]
 0050F4AE    call        dword ptr [ecx+38]
 0050F4B1    mov         eax,dword ptr [ebp-8]
 0050F4B4    call        0050E6E4
 0050F4B9    mov         eax,dword ptr [ebp-8]
 0050F4BC    call        0050EFA0
>0050F4C1    jmp         0050F4CD
 0050F4C3    mov         eax,50F538;'Flash Read - '
 0050F4C8    call        00544F6C
 0050F4CD    xor         eax,eax
 0050F4CF    pop         edx
 0050F4D0    pop         ecx
 0050F4D1    pop         ecx
 0050F4D2    mov         dword ptr fs:[eax],edx
 0050F4D5    push        50F4EA
 0050F4DA    mov         eax,dword ptr [ebp-8]
 0050F4DD    call        TObject.Free
 0050F4E2    ret
>0050F4E3    jmp         @HandleFinally
>0050F4E8    jmp         0050F4DA
 0050F4EA    xor         eax,eax
 0050F4EC    pop         edx
 0050F4ED    pop         ecx
 0050F4EE    pop         ecx
 0050F4EF    mov         dword ptr fs:[eax],edx
 0050F4F2    push        50F514
 0050F4F7    lea         eax,[ebp-18]
 0050F4FA    call        @LStrClr
 0050F4FF    lea         eax,[ebp-14]
 0050F502    mov         edx,2
 0050F507    call        @LStrArrayClr
 0050F50C    ret
>0050F50D    jmp         @HandleFinally
>0050F512    jmp         0050F4F7
 0050F514    mov         esp,ebp
 0050F516    pop         ebp
 0050F517    ret
end;*}

//0050F548
{*procedure TfmFlash.btRepairClick(?:?);
begin
 0050F548    push        ebp
 0050F549    mov         ebp,esp
 0050F54B    add         esp,0FFFFFFAC
 0050F54E    push        ebx
 0050F54F    xor         ecx,ecx
 0050F551    mov         dword ptr [ebp-50],ecx
 0050F554    mov         dword ptr [ebp-54],ecx
 0050F557    mov         dword ptr [ebp-48],ecx
 0050F55A    mov         dword ptr [ebp-4C],ecx
 0050F55D    mov         dword ptr [ebp-44],ecx
 0050F560    mov         dword ptr [ebp-3C],ecx
 0050F563    mov         dword ptr [ebp-40],ecx
 0050F566    mov         dword ptr [ebp-38],ecx
 0050F569    mov         dword ptr [ebp-14],edx
 0050F56C    mov         dword ptr [ebp-4],eax
 0050F56F    xor         eax,eax
 0050F571    push        ebp
 0050F572    push        50F92A
 0050F577    push        dword ptr fs:[eax]
 0050F57A    mov         dword ptr fs:[eax],esp
 0050F57D    mov         eax,[0056E2D0];^gvar_0056DF38
 0050F582    mov         eax,dword ptr [eax]
 0050F584    call        0040C9A4
 0050F589    test        al,al
>0050F58B    jne         0050F5B6
 0050F58D    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050F593    mov         ecx,dword ptr [ecx]
 0050F595    lea         eax,[ebp-38]
 0050F598    mov         edx,50F940;'Cannot create '
 0050F59D    call        @LStrCat3
 0050F5A2    mov         ecx,dword ptr [ebp-38]
 0050F5A5    mov         dl,1
 0050F5A7    mov         eax,[0040B004];Exception
 0050F5AC    call        Exception.Create;Exception.Create
 0050F5B1    call        @RaiseExcept
 0050F5B6    xor         eax,eax
 0050F5B8    mov         dword ptr [ebp-8],eax
 0050F5BB    mov         dl,1
 0050F5BD    mov         eax,[0041DE14];TMemoryStream
 0050F5C2    call        TObject.Create;TMemoryStream.Create
 0050F5C7    mov         edx,dword ptr [ebp-8]
 0050F5CA    mov         dword ptr [ebp+edx*4-34],eax
 0050F5CE    mov         eax,dword ptr [ebp-8]
 0050F5D1    mov         byte ptr [ebp+eax-10],0
 0050F5D6    inc         dword ptr [ebp-8]
 0050F5D9    cmp         dword ptr [ebp-8],8
>0050F5DD    jne         0050F5BB
 0050F5DF    xor         eax,eax
 0050F5E1    push        ebp
 0050F5E2    push        50F8FE
 0050F5E7    push        dword ptr fs:[eax]
 0050F5EA    mov         dword ptr fs:[eax],esp
 0050F5ED    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F5F2    mov         byte ptr [eax],0
 0050F5F5    mov         eax,50F958;'Flash Repair - Start'
 0050F5FA    call        00544EB4
 0050F5FF    mov         edx,dword ptr [ebp-34]
 0050F602    mov         ax,109
 0050F606    call        004CF5C8
 0050F60B    test        al,al
>0050F60D    je          0050F63E
 0050F60F    mov         byte ptr [ebp-10],1
 0050F613    xor         ecx,ecx
 0050F615    mov         edx,200
 0050F61A    mov         eax,dword ptr [ebp-34]
 0050F61D    mov         ebx,dword ptr [eax]
 0050F61F    call        dword ptr [ebx+14]
 0050F622    mov         eax,dword ptr [ebp-34]
 0050F625    mov         edx,dword ptr [eax]
 0050F627    call        dword ptr [edx]
 0050F629    sub         eax,200
 0050F62E    sbb         edx,0
 0050F631    push        edx
 0050F632    push        eax
 0050F633    mov         edx,dword ptr [ebp-34]
 0050F636    mov         eax,dword ptr [ebp-30]
 0050F639    call        TStream.CopyFrom
 0050F63E    mov         dword ptr [ebp-8],2
 0050F645    push        7
 0050F647    mov         ecx,dword ptr [ebp-8]
 0050F64A    mov         edx,50F978;'Read Modules from Service Area'
 0050F64F    mov         eax,[004F7B20];TfmProgres
 0050F654    call        004F7D0C
>0050F659    jmp         0050F6E1
 0050F65E    mov         eax,dword ptr [ebp-8]
 0050F661    mov         edx,dword ptr [ebp+eax*4-34]
 0050F665    mov         eax,dword ptr [ebp-8]
 0050F668    mov         ax,word ptr [eax*2+56D430]
 0050F670    call        005095B8
 0050F675    test        al,al
>0050F677    je          0050F681
 0050F679    mov         eax,dword ptr [ebp-8]
 0050F67C    mov         byte ptr [ebp+eax-10],1
 0050F681    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050F686    cmp         byte ptr [eax],0
>0050F689    jne         0050F695
 0050F68B    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F690    cmp         byte ptr [eax],0
>0050F693    je          0050F6CF
 0050F695    push        50F9A0;'Read module '
 0050F69A    lea         ecx,[ebp-40]
 0050F69D    mov         eax,dword ptr [ebp-8]
 0050F6A0    movzx       eax,word ptr [eax*2+56D430]
 0050F6A8    mov         edx,3
 0050F6AD    call        IntToHex
 0050F6B2    push        dword ptr [ebp-40]
 0050F6B5    push        50F9B8;' - '
 0050F6BA    lea         eax,[ebp-3C]
 0050F6BD    mov         edx,3
 0050F6C2    call        @LStrCatN
 0050F6C7    mov         eax,dword ptr [ebp-3C]
 0050F6CA    call        00544F6C
 0050F6CF    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050F6D4    mov         eax,dword ptr [eax]
 0050F6D6    mov         edx,dword ptr [ebp-8]
 0050F6D9    call        004F7E2C
 0050F6DE    inc         dword ptr [ebp-8]
 0050F6E1    cmp         dword ptr [ebp-8],7
>0050F6E5    jg          0050F6F5
 0050F6E7    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F6EC    cmp         byte ptr [eax],0
>0050F6EF    je          0050F65E
 0050F6F5    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050F6FA    mov         eax,dword ptr [eax]
 0050F6FC    call        004A7264
 0050F701    cmp         byte ptr [ebp-10],1
>0050F705    jne         0050F786
 0050F707    push        0
 0050F709    mov         cx,word ptr ds:[50F9BC];0x3 gvar_0050F9BC
 0050F710    xor         edx,edx
 0050F712    mov         eax,50F9C8;'Write Flash !'+#10+Are You sure?'
 0050F717    call        0043F788
 0050F71C    cmp         eax,6
>0050F71F    jne         0050F766
 0050F721    call        004D01EC
 0050F726    test        al,al
>0050F728    je          0050F736
 0050F72A    mov         eax,50F9EC;'Erase Flash - OK'
 0050F72F    call        00544EB4
>0050F734    jmp         0050F740
 0050F736    mov         eax,50FA08;'Erase Flash - '
 0050F73B    call        00544F6C
 0050F740    mov         ecx,dword ptr [ebp-30]
 0050F743    xor         edx,edx
 0050F745    xor         eax,eax
 0050F747    call        004D02C8
 0050F74C    test        al,al
>0050F74E    je          0050F75C
 0050F750    mov         eax,50FA20;'Write Flash - OK'
 0050F755    call        00544EB4
>0050F75A    jmp         0050F766
 0050F75C    mov         eax,50FA3C;'Write Flash - '
 0050F761    call        00544F6C
 0050F766    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050F76C    mov         edx,dword ptr [edx]
 0050F76E    lea         eax,[ebp-44]
 0050F771    mov         ecx,50FA54;'NewFlash.bin'
 0050F776    call        @LStrCat3
 0050F77B    mov         edx,dword ptr [ebp-44]
 0050F77E    mov         eax,dword ptr [ebp-30]
 0050F781    call        00423E84
 0050F786    push        0
 0050F788    mov         cx,word ptr ds:[50F9BC];0x3 gvar_0050F9BC
 0050F78F    xor         edx,edx
 0050F791    mov         eax,50FA6C;'Write Modules to Flash !'+#10+Are You sure?'
 0050F796    call        0043F788
 0050F79B    cmp         eax,6
>0050F79E    jne         0050F8D6
 0050F7A4    mov         dword ptr [ebp-8],2
 0050F7AB    push        7
 0050F7AD    mov         ecx,dword ptr [ebp-8]
 0050F7B0    mov         edx,50FA9C;'Write Modules to Flash'
 0050F7B5    mov         eax,[004F7B20];TfmProgres
 0050F7BA    call        004F7D0C
>0050F7BF    jmp         0050F8B6
 0050F7C4    mov         eax,dword ptr [ebp-8]
 0050F7C7    cmp         byte ptr [ebp+eax-10],1
>0050F7CC    jne         0050F856
 0050F7D2    mov         eax,dword ptr [ebp-8]
 0050F7D5    mov         dx,word ptr [eax*2+56D43C]
 0050F7DD    mov         eax,dword ptr [ebp-8]
 0050F7E0    mov         eax,dword ptr [ebp+eax*4-34]
 0050F7E4    call        0050782C
 0050F7E9    mov         eax,dword ptr [ebp-8]
 0050F7EC    mov         eax,dword ptr [ebp+eax*4-34]
 0050F7F0    mov         dl,1
 0050F7F2    call        005014D0
 0050F7F7    mov         eax,dword ptr [ebp-8]
 0050F7FA    mov         edx,dword ptr [ebp+eax*4-34]
 0050F7FE    mov         eax,dword ptr [ebp-8]
 0050F801    mov         ax,word ptr [eax*2+56D43C]
 0050F809    call        004CF728
 0050F80E    mov         eax,[0056E2D0];^gvar_0056DF38
 0050F813    push        dword ptr [eax]
 0050F815    push        50FABC;'   '
 0050F81A    lea         ecx,[ebp-4C]
 0050F81D    mov         eax,dword ptr [ebp-8]
 0050F820    movzx       eax,word ptr [eax*2+56D43C]
 0050F828    mov         edx,4
 0050F82D    call        IntToHex
 0050F832    push        dword ptr [ebp-4C]
 0050F835    push        50FAC8;'.rpm'
 0050F83A    lea         eax,[ebp-48]
 0050F83D    mov         edx,4
 0050F842    call        @LStrCatN
 0050F847    mov         edx,dword ptr [ebp-48]
 0050F84A    mov         eax,dword ptr [ebp-8]
 0050F84D    mov         eax,dword ptr [ebp+eax*4-34]
 0050F851    call        00423E84
 0050F856    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050F85B    cmp         byte ptr [eax],0
>0050F85E    jne         0050F86A
 0050F860    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F865    cmp         byte ptr [eax],0
>0050F868    je          0050F8A4
 0050F86A    push        50FAD8;'Write module '
 0050F86F    lea         ecx,[ebp-54]
 0050F872    mov         eax,dword ptr [ebp-8]
 0050F875    movzx       eax,word ptr [eax*2+56D43C]
 0050F87D    mov         edx,2
 0050F882    call        IntToHex
 0050F887    push        dword ptr [ebp-54]
 0050F88A    push        50F9B8;' - '
 0050F88F    lea         eax,[ebp-50]
 0050F892    mov         edx,3
 0050F897    call        @LStrCatN
 0050F89C    mov         eax,dword ptr [ebp-50]
 0050F89F    call        00544F6C
 0050F8A4    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050F8A9    mov         eax,dword ptr [eax]
 0050F8AB    mov         edx,dword ptr [ebp-8]
 0050F8AE    call        004F7E2C
 0050F8B3    inc         dword ptr [ebp-8]
 0050F8B6    cmp         dword ptr [ebp-8],7
>0050F8BA    jg          0050F8CA
 0050F8BC    mov         eax,[0056E5A4];^gvar_0056DF04
 0050F8C1    cmp         byte ptr [eax],0
>0050F8C4    je          0050F7C4
 0050F8CA    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 0050F8CF    mov         eax,dword ptr [eax]
 0050F8D1    call        004A7264
 0050F8D6    xor         eax,eax
 0050F8D8    pop         edx
 0050F8D9    pop         ecx
 0050F8DA    pop         ecx
 0050F8DB    mov         dword ptr fs:[eax],edx
 0050F8DE    push        50F905
 0050F8E3    xor         eax,eax
 0050F8E5    mov         dword ptr [ebp-8],eax
 0050F8E8    mov         eax,dword ptr [ebp-8]
 0050F8EB    mov         eax,dword ptr [ebp+eax*4-34]
 0050F8EF    call        TObject.Free
 0050F8F4    inc         dword ptr [ebp-8]
 0050F8F7    cmp         dword ptr [ebp-8],8
>0050F8FB    jne         0050F8E8
 0050F8FD    ret
>0050F8FE    jmp         @HandleFinally
>0050F903    jmp         0050F8E3
 0050F905    mov         eax,50FAF0;'Flash Repair - End'
 0050F90A    call        00544EB4
 0050F90F    xor         eax,eax
 0050F911    pop         edx
 0050F912    pop         ecx
 0050F913    pop         ecx
 0050F914    mov         dword ptr fs:[eax],edx
 0050F917    push        50F931
 0050F91C    lea         eax,[ebp-54]
 0050F91F    mov         edx,8
 0050F924    call        @LStrArrayClr
 0050F929    ret
>0050F92A    jmp         @HandleFinally
>0050F92F    jmp         0050F91C
 0050F931    pop         ebx
 0050F932    mov         esp,ebp
 0050F934    pop         ebp
 0050F935    ret
end;*}

//0050FB04
procedure TfmFlash.FormShow(Sender:TObject);
begin
{*
 0050FB04    push        ebp
 0050FB05    mov         ebp,esp
 0050FB07    add         esp,0FFFFFFF0
 0050FB0A    xor         ecx,ecx
 0050FB0C    mov         dword ptr [ebp-0C],ecx
 0050FB0F    mov         dword ptr [ebp-10],ecx
 0050FB12    mov         dword ptr [ebp-8],edx
 0050FB15    mov         dword ptr [ebp-4],eax
 0050FB18    xor         eax,eax
 0050FB1A    push        ebp
 0050FB1B    push        50FBA8
 0050FB20    push        dword ptr fs:[eax]
 0050FB23    mov         dword ptr fs:[eax],esp
 0050FB26    mov         eax,[0056E284];^gvar_0056DF34
 0050FB2B    mov         eax,dword ptr [eax]
 0050FB2D    mov         eax,dword ptr [eax+408]
 0050FB33    cmp         byte ptr [eax+38],0
>0050FB37    je          0050FB3E
 0050FB39    call        0050D6B4
 0050FB3E    xor         edx,edx
 0050FB40    mov         eax,dword ptr [ebp-4]
 0050FB43    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FB49    mov         ecx,dword ptr [eax]
 0050FB4B    call        dword ptr [ecx+0D0];TListBox.sub_00479840
 0050FB51    lea         edx,[ebp-10]
 0050FB54    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FB59    call        TPanel.GetCaption
 0050FB5E    push        dword ptr [ebp-10]
 0050FB61    push        50FBBC;' '
 0050FB66    mov         eax,[0056E284];^gvar_0056DF34
 0050FB6B    mov         eax,dword ptr [eax]
 0050FB6D    push        dword ptr [eax+420]
 0050FB73    lea         eax,[ebp-0C]
 0050FB76    mov         edx,3
 0050FB7B    call        @LStrCatN
 0050FB80    mov         edx,dword ptr [ebp-0C]
 0050FB83    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FB88    call        TPanel.SetCaption
 0050FB8D    xor         eax,eax
 0050FB8F    pop         edx
 0050FB90    pop         ecx
 0050FB91    pop         ecx
 0050FB92    mov         dword ptr fs:[eax],edx
 0050FB95    push        50FBAF
 0050FB9A    lea         eax,[ebp-10]
 0050FB9D    mov         edx,2
 0050FBA2    call        @LStrArrayClr
 0050FBA7    ret
>0050FBA8    jmp         @HandleFinally
>0050FBAD    jmp         0050FB9A
 0050FBAF    mov         esp,ebp
 0050FBB1    pop         ebp
 0050FBB2    ret
*}
end;

//0050FBC0
{*function sub_0050FBC0(?:?):?;
begin
 0050FBC0    push        ebp
 0050FBC1    mov         ebp,esp
 0050FBC3    add         esp,0FFFFFFF0
 0050FBC6    xor         edx,edx
 0050FBC8    mov         dword ptr [ebp-10],edx
 0050FBCB    mov         dword ptr [ebp-0C],edx
 0050FBCE    mov         dword ptr [ebp-4],eax
 0050FBD1    mov         eax,dword ptr [ebp-4]
 0050FBD4    call        @LStrAddRef
 0050FBD9    xor         eax,eax
 0050FBDB    push        ebp
 0050FBDC    push        50FC5E
 0050FBE1    push        dword ptr fs:[eax]
 0050FBE4    mov         dword ptr fs:[eax],esp
 0050FBE7    mov         edx,dword ptr [ebp-4]
 0050FBEA    mov         eax,50FC78;' '
 0050FBEF    call        @LStrPos
 0050FBF4    mov         word ptr [ebp-8],ax
 0050FBF8    cmp         word ptr [ebp-8],0
>0050FBFD    jbe         0050FC35
 0050FBFF    lea         eax,[ebp-0C]
 0050FC02    push        eax
 0050FC03    movzx       ecx,word ptr [ebp-8]
 0050FC07    dec         ecx
 0050FC08    mov         edx,1
 0050FC0D    mov         eax,dword ptr [ebp-4]
 0050FC10    call        @LStrCopy
 0050FC15    lea         eax,[ebp-10]
 0050FC18    mov         ecx,dword ptr [ebp-0C]
 0050FC1B    mov         edx,50FC84;'$'
 0050FC20    call        @LStrCat3
 0050FC25    mov         eax,dword ptr [ebp-10]
 0050FC28    xor         edx,edx
 0050FC2A    call        0040C4A8
 0050FC2F    mov         word ptr [ebp-6],ax
>0050FC33    jmp         0050FC3B
 0050FC35    mov         word ptr [ebp-6],0
 0050FC3B    xor         eax,eax
 0050FC3D    pop         edx
 0050FC3E    pop         ecx
 0050FC3F    pop         ecx
 0050FC40    mov         dword ptr fs:[eax],edx
 0050FC43    push        50FC65
 0050FC48    lea         eax,[ebp-10]
 0050FC4B    mov         edx,2
 0050FC50    call        @LStrArrayClr
 0050FC55    lea         eax,[ebp-4]
 0050FC58    call        @LStrClr
 0050FC5D    ret
>0050FC5E    jmp         @HandleFinally
>0050FC63    jmp         0050FC48
 0050FC65    mov         ax,word ptr [ebp-6]
 0050FC69    mov         esp,ebp
 0050FC6B    pop         ebp
 0050FC6C    ret
end;*}

//0050FC88
procedure TfmFlash.miReadClick(Sender:TObject);
begin
{*
 0050FC88    push        ebp
 0050FC89    mov         ebp,esp
 0050FC8B    add         esp,0FFFFFFE8
 0050FC8E    push        ebx
 0050FC8F    xor         ecx,ecx
 0050FC91    mov         dword ptr [ebp-14],ecx
 0050FC94    mov         dword ptr [ebp-18],ecx
 0050FC97    mov         dword ptr [ebp-10],ecx
 0050FC9A    mov         dword ptr [ebp-0C],edx
 0050FC9D    mov         dword ptr [ebp-4],eax
 0050FCA0    xor         eax,eax
 0050FCA2    push        ebp
 0050FCA3    push        50FD3F
 0050FCA8    push        dword ptr fs:[eax]
 0050FCAB    mov         dword ptr fs:[eax],esp
 0050FCAE    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FCB3    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FCB9    mov         edx,dword ptr [eax]
 0050FCBB    call        dword ptr [edx+0CC];TListBox.sub_00479780
 0050FCC1    mov         edx,eax
 0050FCC3    lea         ecx,[ebp-10]
 0050FCC6    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FCCB    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FCD1    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0050FCD7    mov         ebx,dword ptr [eax]
 0050FCD9    call        dword ptr [ebx+0C];@AbstractError
 0050FCDC    mov         eax,dword ptr [ebp-10]
 0050FCDF    call        0050FBC0
 0050FCE4    mov         word ptr [ebp-6],ax
 0050FCE8    mov         ax,word ptr [ebp-6]
 0050FCEC    call        00501ED0
 0050FCF1    push        50FD54;'Read '
 0050FCF6    lea         ecx,[ebp-18]
 0050FCF9    movzx       eax,word ptr [ebp-6]
 0050FCFD    mov         edx,4
 0050FD02    call        IntToHex
 0050FD07    push        dword ptr [ebp-18]
 0050FD0A    push        50FD64;' - '
 0050FD0F    lea         eax,[ebp-14]
 0050FD12    mov         edx,3
 0050FD17    call        @LStrCatN
 0050FD1C    mov         eax,dword ptr [ebp-14]
 0050FD1F    call        00544F6C
 0050FD24    xor         eax,eax
 0050FD26    pop         edx
 0050FD27    pop         ecx
 0050FD28    pop         ecx
 0050FD29    mov         dword ptr fs:[eax],edx
 0050FD2C    push        50FD46
 0050FD31    lea         eax,[ebp-18]
 0050FD34    mov         edx,3
 0050FD39    call        @LStrArrayClr
 0050FD3E    ret
>0050FD3F    jmp         @HandleFinally
>0050FD44    jmp         0050FD31
 0050FD46    pop         ebx
 0050FD47    mov         esp,ebp
 0050FD49    pop         ebp
 0050FD4A    ret
*}
end;

//0050FD68
procedure TfmFlash.miWriteClick(Sender:TObject);
begin
{*
 0050FD68    push        ebp
 0050FD69    mov         ebp,esp
 0050FD6B    add         esp,0FFFFFFE8
 0050FD6E    push        ebx
 0050FD6F    xor         ecx,ecx
 0050FD71    mov         dword ptr [ebp-14],ecx
 0050FD74    mov         dword ptr [ebp-18],ecx
 0050FD77    mov         dword ptr [ebp-10],ecx
 0050FD7A    mov         dword ptr [ebp-0C],edx
 0050FD7D    mov         dword ptr [ebp-4],eax
 0050FD80    xor         eax,eax
 0050FD82    push        ebp
 0050FD83    push        50FE1F
 0050FD88    push        dword ptr fs:[eax]
 0050FD8B    mov         dword ptr fs:[eax],esp
 0050FD8E    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FD93    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FD99    mov         edx,dword ptr [eax]
 0050FD9B    call        dword ptr [edx+0CC];TListBox.sub_00479780
 0050FDA1    mov         edx,eax
 0050FDA3    lea         ecx,[ebp-10]
 0050FDA6    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FDAB    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FDB1    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0050FDB7    mov         ebx,dword ptr [eax]
 0050FDB9    call        dword ptr [ebx+0C];@AbstractError
 0050FDBC    mov         eax,dword ptr [ebp-10]
 0050FDBF    call        0050FBC0
 0050FDC4    mov         word ptr [ebp-6],ax
 0050FDC8    mov         ax,word ptr [ebp-6]
 0050FDCC    call        0050211C
 0050FDD1    push        50FE34;'Write '
 0050FDD6    lea         ecx,[ebp-18]
 0050FDD9    movzx       eax,word ptr [ebp-6]
 0050FDDD    mov         edx,4
 0050FDE2    call        IntToHex
 0050FDE7    push        dword ptr [ebp-18]
 0050FDEA    push        50FE44;' - '
 0050FDEF    lea         eax,[ebp-14]
 0050FDF2    mov         edx,3
 0050FDF7    call        @LStrCatN
 0050FDFC    mov         eax,dword ptr [ebp-14]
 0050FDFF    call        00544F6C
 0050FE04    xor         eax,eax
 0050FE06    pop         edx
 0050FE07    pop         ecx
 0050FE08    pop         ecx
 0050FE09    mov         dword ptr fs:[eax],edx
 0050FE0C    push        50FE26
 0050FE11    lea         eax,[ebp-18]
 0050FE14    mov         edx,3
 0050FE19    call        @LStrArrayClr
 0050FE1E    ret
>0050FE1F    jmp         @HandleFinally
>0050FE24    jmp         0050FE11
 0050FE26    pop         ebx
 0050FE27    mov         esp,ebp
 0050FE29    pop         ebp
 0050FE2A    ret
*}
end;

//0050FE48
procedure TfmFlash.miCheckClick(Sender:TObject);
begin
{*
 0050FE48    push        ebp
 0050FE49    mov         ebp,esp
 0050FE4B    add         esp,0FFFFFFE8
 0050FE4E    push        ebx
 0050FE4F    xor         ecx,ecx
 0050FE51    mov         dword ptr [ebp-14],ecx
 0050FE54    mov         dword ptr [ebp-18],ecx
 0050FE57    mov         dword ptr [ebp-10],ecx
 0050FE5A    mov         dword ptr [ebp-0C],edx
 0050FE5D    mov         dword ptr [ebp-4],eax
 0050FE60    xor         eax,eax
 0050FE62    push        ebp
 0050FE63    push        50FEFF
 0050FE68    push        dword ptr fs:[eax]
 0050FE6B    mov         dword ptr fs:[eax],esp
 0050FE6E    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FE73    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FE79    mov         edx,dword ptr [eax]
 0050FE7B    call        dword ptr [edx+0CC];TListBox.sub_00479780
 0050FE81    mov         edx,eax
 0050FE83    lea         ecx,[ebp-10]
 0050FE86    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FE8B    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FE91    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0050FE97    mov         ebx,dword ptr [eax]
 0050FE99    call        dword ptr [ebx+0C];@AbstractError
 0050FE9C    mov         eax,dword ptr [ebp-10]
 0050FE9F    call        0050FBC0
 0050FEA4    mov         word ptr [ebp-6],ax
 0050FEA8    mov         ax,word ptr [ebp-6]
 0050FEAC    call        004CF874
 0050FEB1    push        50FF14;'Check '
 0050FEB6    lea         ecx,[ebp-18]
 0050FEB9    movzx       eax,word ptr [ebp-6]
 0050FEBD    mov         edx,4
 0050FEC2    call        IntToHex
 0050FEC7    push        dword ptr [ebp-18]
 0050FECA    push        50FF24;' - '
 0050FECF    lea         eax,[ebp-14]
 0050FED2    mov         edx,3
 0050FED7    call        @LStrCatN
 0050FEDC    mov         eax,dword ptr [ebp-14]
 0050FEDF    call        00544F6C
 0050FEE4    xor         eax,eax
 0050FEE6    pop         edx
 0050FEE7    pop         ecx
 0050FEE8    pop         ecx
 0050FEE9    mov         dword ptr fs:[eax],edx
 0050FEEC    push        50FF06
 0050FEF1    lea         eax,[ebp-18]
 0050FEF4    mov         edx,3
 0050FEF9    call        @LStrArrayClr
 0050FEFE    ret
>0050FEFF    jmp         @HandleFinally
>0050FF04    jmp         0050FEF1
 0050FF06    pop         ebx
 0050FF07    mov         esp,ebp
 0050FF09    pop         ebp
 0050FF0A    ret
*}
end;

//0050FF28
procedure TfmFlash.miDumpClick(Sender:TObject);
begin
{*
 0050FF28    push        ebp
 0050FF29    mov         ebp,esp
 0050FF2B    xor         ecx,ecx
 0050FF2D    push        ecx
 0050FF2E    push        ecx
 0050FF2F    push        ecx
 0050FF30    push        ecx
 0050FF31    push        ecx
 0050FF32    push        ecx
 0050FF33    push        ecx
 0050FF34    push        ebx
 0050FF35    mov         dword ptr [ebp-10],edx
 0050FF38    mov         dword ptr [ebp-4],eax
 0050FF3B    xor         eax,eax
 0050FF3D    push        ebp
 0050FF3E    push        51002F
 0050FF43    push        dword ptr fs:[eax]
 0050FF46    mov         dword ptr fs:[eax],esp
 0050FF49    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FF4E    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FF54    mov         edx,dword ptr [eax]
 0050FF56    call        dword ptr [edx+0CC];TListBox.sub_00479780
 0050FF5C    mov         edx,eax
 0050FF5E    lea         ecx,[ebp-14]
 0050FF61    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0050FF66    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0050FF6C    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0050FF72    mov         ebx,dword ptr [eax]
 0050FF74    call        dword ptr [ebx+0C];@AbstractError
 0050FF77    mov         eax,dword ptr [ebp-14]
 0050FF7A    call        0050FBC0
 0050FF7F    mov         word ptr [ebp-6],ax
 0050FF83    mov         eax,[0056E040];^gvar_005720C0
 0050FF88    cmp         byte ptr [eax],0
>0050FF8B    je          0050FFC1
 0050FF8D    mov         eax,[0056E2D0];^gvar_0056DF38
 0050FF92    push        dword ptr [eax]
 0050FF94    push        510044;'Modules\   '
 0050FF99    lea         ecx,[ebp-18]
 0050FF9C    movzx       eax,word ptr [ebp-6]
 0050FFA0    mov         edx,4
 0050FFA5    call        IntToHex
 0050FFAA    push        dword ptr [ebp-18]
 0050FFAD    push        510058;'.rpm'
 0050FFB2    lea         eax,[ebp-0C]
 0050FFB5    mov         edx,4
 0050FFBA    call        @LStrCatN
>0050FFBF    jmp         0050FFF3
 0050FFC1    mov         eax,[0056E2D0];^gvar_0056DF38
 0050FFC6    push        dword ptr [eax]
 0050FFC8    push        510044;'Modules\   '
 0050FFCD    lea         ecx,[ebp-1C]
 0050FFD0    movzx       eax,word ptr [ebp-6]
 0050FFD4    mov         edx,2
 0050FFD9    call        IntToHex
 0050FFDE    push        dword ptr [ebp-1C]
 0050FFE1    push        510058;'.rpm'
 0050FFE6    lea         eax,[ebp-0C]
 0050FFE9    mov         edx,4
 0050FFEE    call        @LStrCatN
 0050FFF3    mov         eax,dword ptr [ebp-0C]
 0050FFF6    call        0040C94C
 0050FFFB    test        al,al
>0050FFFD    je          0051000C
 0050FFFF    mov         edx,dword ptr [ebp-0C]
 00510002    mov         eax,[004F3EB8];TfmViewer
 00510007    call        004F4640
 0051000C    xor         eax,eax
 0051000E    pop         edx
 0051000F    pop         ecx
 00510010    pop         ecx
 00510011    mov         dword ptr fs:[eax],edx
 00510014    push        510036
 00510019    lea         eax,[ebp-1C]
 0051001C    mov         edx,3
 00510021    call        @LStrArrayClr
 00510026    lea         eax,[ebp-0C]
 00510029    call        @LStrClr
 0051002E    ret
>0051002F    jmp         @HandleFinally
>00510034    jmp         00510019
 00510036    pop         ebx
 00510037    mov         esp,ebp
 00510039    pop         ebp
 0051003A    ret
*}
end;

//00510060
procedure TfmFlash.miReadAllClick(Sender:TObject);
begin
{*
 00510060    push        ebp
 00510061    mov         ebp,esp
 00510063    add         esp,0FFFFFFE8
 00510066    push        ebx
 00510067    xor         ecx,ecx
 00510069    mov         dword ptr [ebp-14],ecx
 0051006C    mov         dword ptr [ebp-18],ecx
 0051006F    mov         dword ptr [ebp-10],ecx
 00510072    mov         dword ptr [ebp-0C],edx
 00510075    mov         dword ptr [ebp-4],eax
 00510078    xor         eax,eax
 0051007A    push        ebp
 0051007B    push        510143
 00510080    push        dword ptr fs:[eax]
 00510083    mov         dword ptr fs:[eax],esp
 00510086    mov         eax,[0056E5A4];^gvar_0056DF04
 0051008B    mov         byte ptr [eax],0
 0051008E    mov         word ptr [ebp-8],0
>00510094    jmp         005100FF
 00510096    lea         ecx,[ebp-10]
 00510099    movzx       edx,word ptr [ebp-8]
 0051009D    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 005100A2    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 005100A8    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 005100AE    mov         ebx,dword ptr [eax]
 005100B0    call        dword ptr [ebx+0C];@AbstractError
 005100B3    mov         eax,dword ptr [ebp-10]
 005100B6    call        0050FBC0
 005100BB    mov         word ptr [ebp-6],ax
 005100BF    mov         ax,word ptr [ebp-6]
 005100C3    call        00501ED0
 005100C8    push        510158;'Read '
 005100CD    lea         ecx,[ebp-18]
 005100D0    movzx       eax,word ptr [ebp-6]
 005100D4    mov         edx,4
 005100D9    call        IntToHex
 005100DE    push        dword ptr [ebp-18]
 005100E1    push        510168;' - '
 005100E6    lea         eax,[ebp-14]
 005100E9    mov         edx,3
 005100EE    call        @LStrCatN
 005100F3    mov         eax,dword ptr [ebp-14]
 005100F6    call        00544F6C
 005100FB    inc         word ptr [ebp-8]
 005100FF    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 00510104    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 0051010A    mov         edx,dword ptr [eax]
 0051010C    call        dword ptr [edx+0C8];TListBox.sub_004797D4
 00510112    movzx       edx,word ptr [ebp-8]
 00510116    cmp         eax,edx
>00510118    jle         00510128
 0051011A    mov         eax,[0056E5A4];^gvar_0056DF04
 0051011F    cmp         byte ptr [eax],0
>00510122    je          00510096
 00510128    xor         eax,eax
 0051012A    pop         edx
 0051012B    pop         ecx
 0051012C    pop         ecx
 0051012D    mov         dword ptr fs:[eax],edx
 00510130    push        51014A
 00510135    lea         eax,[ebp-18]
 00510138    mov         edx,3
 0051013D    call        @LStrArrayClr
 00510142    ret
>00510143    jmp         @HandleFinally
>00510148    jmp         00510135
 0051014A    pop         ebx
 0051014B    mov         esp,ebp
 0051014D    pop         ebp
 0051014E    ret
*}
end;

//0051016C
procedure TfmFlash.lbRomModulesDblClick(Sender:TObject);
begin
{*
 0051016C    push        ebp
 0051016D    mov         ebp,esp
 0051016F    xor         ecx,ecx
 00510171    push        ecx
 00510172    push        ecx
 00510173    push        ecx
 00510174    push        ecx
 00510175    push        ecx
 00510176    push        ecx
 00510177    push        ecx
 00510178    push        ebx
 00510179    mov         dword ptr [ebp-10],edx
 0051017C    mov         dword ptr [ebp-4],eax
 0051017F    xor         eax,eax
 00510181    push        ebp
 00510182    push        510297
 00510187    push        dword ptr fs:[eax]
 0051018A    mov         dword ptr fs:[eax],esp
 0051018D    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 00510192    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 00510198    mov         edx,dword ptr [eax]
 0051019A    call        dword ptr [edx+0CC];TListBox.sub_00479780
 005101A0    mov         edx,eax
 005101A2    lea         ecx,[ebp-14]
 005101A5    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 005101AA    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 005101B0    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 005101B6    mov         ebx,dword ptr [eax]
 005101B8    call        dword ptr [ebx+0C];@AbstractError
 005101BB    mov         eax,dword ptr [ebp-14]
 005101BE    call        0050FBC0
 005101C3    mov         word ptr [ebp-6],ax
 005101C7    mov         eax,[0056E040];^gvar_005720C0
 005101CC    cmp         byte ptr [eax],0
>005101CF    je          00510205
 005101D1    mov         eax,[0056E2D0];^gvar_0056DF38
 005101D6    push        dword ptr [eax]
 005101D8    push        5102AC;'Modules\   '
 005101DD    lea         ecx,[ebp-18]
 005101E0    movzx       eax,word ptr [ebp-6]
 005101E4    mov         edx,4
 005101E9    call        IntToHex
 005101EE    push        dword ptr [ebp-18]
 005101F1    push        5102C0;'.rpm'
 005101F6    lea         eax,[ebp-0C]
 005101F9    mov         edx,4
 005101FE    call        @LStrCatN
>00510203    jmp         00510237
 00510205    mov         eax,[0056E2D0];^gvar_0056DF38
 0051020A    push        dword ptr [eax]
 0051020C    push        5102AC;'Modules\   '
 00510211    lea         ecx,[ebp-1C]
 00510214    movzx       eax,word ptr [ebp-6]
 00510218    mov         edx,2
 0051021D    call        IntToHex
 00510222    push        dword ptr [ebp-1C]
 00510225    push        5102C0;'.rpm'
 0051022A    lea         eax,[ebp-0C]
 0051022D    mov         edx,4
 00510232    call        @LStrCatN
 00510237    push        10
 00510239    call        user32.GetKeyState
 0051023E    test        ax,ax
>00510241    jge         0051024F
 00510243    xor         edx,edx
 00510245    mov         eax,dword ptr [ebp-4]
 00510248    call        TfmFlash.miReadClick
>0051024D    jmp         00510274
 0051024F    mov         eax,dword ptr [ebp-0C]
 00510252    call        0040C94C
 00510257    test        al,al
>00510259    je          0051026A
 0051025B    mov         edx,dword ptr [ebp-0C]
 0051025E    mov         eax,[004F3EB8];TfmViewer
 00510263    call        004F4640
>00510268    jmp         00510274
 0051026A    xor         edx,edx
 0051026C    mov         eax,dword ptr [ebp-4]
 0051026F    call        TfmFlash.miReadClick
 00510274    xor         eax,eax
 00510276    pop         edx
 00510277    pop         ecx
 00510278    pop         ecx
 00510279    mov         dword ptr fs:[eax],edx
 0051027C    push        51029E
 00510281    lea         eax,[ebp-1C]
 00510284    mov         edx,3
 00510289    call        @LStrArrayClr
 0051028E    lea         eax,[ebp-0C]
 00510291    call        @LStrClr
 00510296    ret
>00510297    jmp         @HandleFinally
>0051029C    jmp         00510281
 0051029E    pop         ebx
 0051029F    mov         esp,ebp
 005102A1    pop         ebp
 005102A2    ret
*}
end;

//005102C8
procedure TfmFlash.miCheckAllClick(Sender:TObject);
begin
{*
 005102C8    push        ebp
 005102C9    mov         ebp,esp
 005102CB    add         esp,0FFFFFFE8
 005102CE    push        ebx
 005102CF    xor         ecx,ecx
 005102D1    mov         dword ptr [ebp-14],ecx
 005102D4    mov         dword ptr [ebp-18],ecx
 005102D7    mov         dword ptr [ebp-10],ecx
 005102DA    mov         dword ptr [ebp-0C],edx
 005102DD    mov         dword ptr [ebp-4],eax
 005102E0    xor         eax,eax
 005102E2    push        ebp
 005102E3    push        5103AB
 005102E8    push        dword ptr fs:[eax]
 005102EB    mov         dword ptr fs:[eax],esp
 005102EE    mov         eax,[0056E5A4];^gvar_0056DF04
 005102F3    mov         byte ptr [eax],0
 005102F6    mov         word ptr [ebp-8],0
>005102FC    jmp         00510367
 005102FE    lea         ecx,[ebp-10]
 00510301    movzx       edx,word ptr [ebp-8]
 00510305    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0051030A    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 00510310    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00510316    mov         ebx,dword ptr [eax]
 00510318    call        dword ptr [ebx+0C];@AbstractError
 0051031B    mov         eax,dword ptr [ebp-10]
 0051031E    call        0050FBC0
 00510323    mov         word ptr [ebp-6],ax
 00510327    mov         ax,word ptr [ebp-6]
 0051032B    call        004CF874
 00510330    push        5103C0;'Check '
 00510335    lea         ecx,[ebp-18]
 00510338    movzx       eax,word ptr [ebp-6]
 0051033C    mov         edx,4
 00510341    call        IntToHex
 00510346    push        dword ptr [ebp-18]
 00510349    push        5103D0;' - '
 0051034E    lea         eax,[ebp-14]
 00510351    mov         edx,3
 00510356    call        @LStrCatN
 0051035B    mov         eax,dword ptr [ebp-14]
 0051035E    call        00544F6C
 00510363    inc         word ptr [ebp-8]
 00510367    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0051036C    mov         eax,dword ptr [eax+318];TfmFlash.lbRomModules:TListBox
 00510372    mov         edx,dword ptr [eax]
 00510374    call        dword ptr [edx+0C8];TListBox.sub_004797D4
 0051037A    movzx       edx,word ptr [ebp-8]
 0051037E    cmp         eax,edx
>00510380    jle         00510390
 00510382    mov         eax,[0056E5A4];^gvar_0056DF04
 00510387    cmp         byte ptr [eax],0
>0051038A    je          005102FE
 00510390    xor         eax,eax
 00510392    pop         edx
 00510393    pop         ecx
 00510394    pop         ecx
 00510395    mov         dword ptr fs:[eax],edx
 00510398    push        5103B2
 0051039D    lea         eax,[ebp-18]
 005103A0    mov         edx,3
 005103A5    call        @LStrArrayClr
 005103AA    ret
>005103AB    jmp         @HandleFinally
>005103B0    jmp         0051039D
 005103B2    pop         ebx
 005103B3    mov         esp,ebp
 005103B5    pop         ebp
 005103B6    ret
*}
end;

//005103D4
procedure TfmFlash.miReadFlashDirClick(Sender:TObject);
begin
{*
 005103D4    push        ebp
 005103D5    mov         ebp,esp
 005103D7    add         esp,0FFFFFFF8
 005103DA    mov         dword ptr [ebp-8],edx
 005103DD    mov         dword ptr [ebp-4],eax
 005103E0    call        0050D6B4
 005103E5    pop         ecx
 005103E6    pop         ecx
 005103E7    pop         ebp
 005103E8    ret
*}
end;

//005103EC
procedure sub_005103EC;
begin
{*
 005103EC    push        ebp
 005103ED    mov         ebp,esp
 005103EF    add         esp,0FFFFFFF8
 005103F2    push        ebx
 005103F3    xor         ecx,ecx
 005103F5    xor         edx,edx
 005103F7    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 005103FC    mov         ebx,dword ptr [eax]
 005103FE    call        dword ptr [ebx+14]
 00510401    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 00510406    call        004CE56C
 0051040B    mov         dword ptr [ebp-4],eax
 0051040E    cmp         dword ptr [ebp-4],4C594F52
>00510415    jne         0051044E
 00510417    mov         byte ptr ds:[57795C],1;gvar_0057795C
 0051041E    xor         ecx,ecx
 00510420    mov         edx,1E
 00510425    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 0051042A    mov         ebx,dword ptr [eax]
 0051042C    call        dword ptr [ebx+14]
 0051042F    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 00510434    call        004CE548
 00510439    movzx       eax,ax
 0051043C    mov         dword ptr [ebp-4],eax
 0051043F    cmp         dword ptr [ebp-4],0
>00510443    jne         00510483
 00510445    mov         dword ptr [ebp-4],58
>0051044C    jmp         00510483
 0051044E    mov         byte ptr ds:[57795C],0;gvar_0057795C
 00510455    xor         ecx,ecx
 00510457    mov         edx,0A
 0051045C    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 00510461    mov         ebx,dword ptr [eax]
 00510463    call        dword ptr [ebx+14]
 00510466    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 0051046B    call        004CE548
 00510470    movzx       eax,ax
 00510473    mov         dword ptr [ebp-4],eax
 00510476    cmp         dword ptr [ebp-4],0
>0051047A    jne         00510483
 0051047C    mov         dword ptr [ebp-4],40
 00510483    xor         ecx,ecx
 00510485    mov         edx,dword ptr [ebp-4]
 00510488    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 0051048D    mov         ebx,dword ptr [eax]
 0051048F    call        dword ptr [ebx+14]
 00510492    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00510497    mov         eax,dword ptr [eax]
 00510499    mov         eax,dword ptr [eax+2F8]
 0051049F    mov         eax,dword ptr [eax+248]
 005104A5    xor         edx,edx
 005104A7    mov         ecx,dword ptr [eax]
 005104A9    call        dword ptr [ecx+38]
 005104AC    xor         eax,eax
 005104AE    mov         dword ptr [ebp-8],eax
 005104B1    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005104B6    call        004CE548
 005104BB    mov         edx,dword ptr [ebp-8]
 005104BE    mov         word ptr [edx*4+577730],ax
 005104C6    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 005104CB    mov         eax,dword ptr [eax+354];TfmFlash.cbDword40:TCheckBox
 005104D1    mov         edx,dword ptr [eax]
 005104D3    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005104D9    test        al,al
>005104DB    je          005104F0
 005104DD    mov         cx,1
 005104E1    mov         edx,2
 005104E6    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005104EB    mov         ebx,dword ptr [eax]
 005104ED    call        dword ptr [ebx+14]
 005104F0    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005104F5    call        004CE548
 005104FA    mov         edx,dword ptr [ebp-8]
 005104FD    mov         word ptr [edx*4+577732],ax
 00510505    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0051050A    mov         eax,dword ptr [eax+354];TfmFlash.cbDword40:TCheckBox
 00510510    mov         edx,dword ptr [eax]
 00510512    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00510518    test        al,al
>0051051A    je          0051052F
 0051051C    mov         cx,1
 00510520    mov         edx,2
 00510525    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 0051052A    mov         ebx,dword ptr [eax]
 0051052C    call        dword ptr [ebx+14]
 0051052F    inc         dword ptr [ebp-8]
 00510532    cmp         dword ptr [ebp-8],7
>00510536    jne         005104B1
 0051053C    pop         ebx
 0051053D    pop         ecx
 0051053E    pop         ecx
 0051053F    pop         ebp
 00510540    ret
*}
end;

//00510544
{*procedure sub_00510544(?:?; ?:?);
begin
 00510544    push        ebp
 00510545    mov         ebp,esp
 00510547    add         esp,0FFFFFFF4
 0051054A    push        ebx
 0051054B    mov         dword ptr [ebp-8],edx
 0051054E    mov         word ptr [ebp-2],ax
 00510552    xor         ecx,ecx
 00510554    xor         edx,edx
 00510556    mov         eax,dword ptr [ebp-8]
 00510559    mov         ebx,dword ptr [eax]
 0051055B    call        dword ptr [ebx+14]
 0051055E    mov         eax,dword ptr [ebp-8]
 00510561    call        004CE56C
 00510566    mov         dword ptr [ebp-0C],eax
 00510569    cmp         dword ptr [ebp-0C],4C594F52
>00510570    jne         0051058A
 00510572    xor         ecx,ecx
 00510574    mov         edx,1C
 00510579    mov         eax,dword ptr [ebp-8]
 0051057C    mov         ebx,dword ptr [eax]
 0051057E    call        dword ptr [ebx+14]
 00510581    mov         byte ptr ds:[57795C],1;gvar_0057795C
>00510588    jmp         005105A0
 0051058A    xor         ecx,ecx
 0051058C    mov         edx,0A
 00510591    mov         eax,dword ptr [ebp-8]
 00510594    mov         ebx,dword ptr [eax]
 00510596    call        dword ptr [ebx+14]
 00510599    mov         byte ptr ds:[57795C],0;gvar_0057795C
 005105A0    mov         eax,dword ptr [ebp-8]
 005105A3    call        004CE548
 005105A8    mov         [0057774C],ax;gvar_0057774C
 005105AE    mov         eax,dword ptr [ebp-8]
 005105B1    call        004CE548
 005105B6    mov         [00577750],ax;gvar_00577750
 005105BC    mov         eax,dword ptr [ebp-8]
 005105BF    call        004CE548
 005105C4    mov         [00577754],ax;gvar_00577754
 005105CA    mov         eax,dword ptr [ebp-8]
 005105CD    call        004CE548
 005105D2    mov         [00577758],ax;gvar_00577758
 005105D8    movzx       eax,word ptr ds:[577750];0x0 gvar_00577750
 005105DF    movzx       edx,word ptr ds:[57774C];0x0 gvar_0057774C
 005105E6    sub         eax,edx
 005105E8    movzx       edx,word ptr [ebp-2]
 005105EC    mov         ecx,edx
 005105EE    cdq
 005105EF    idiv        eax,ecx
 005105F1    mov         [0057774E],ax;gvar_0057774E:Integer
 005105F7    movzx       eax,word ptr ds:[577754];0x0 gvar_00577754
 005105FE    movzx       edx,word ptr ds:[577750];0x0 gvar_00577750
 00510605    sub         eax,edx
 00510607    movzx       edx,word ptr [ebp-2]
 0051060B    mov         ecx,edx
 0051060D    cdq
 0051060E    idiv        eax,ecx
 00510610    mov         [00577752],ax;gvar_00577752:Integer
 00510616    mov         word ptr ds:[577756],2;gvar_00577756
 0051061F    mov         word ptr ds:[57775A],2;gvar_0057775A
 00510628    pop         ebx
 00510629    mov         esp,ebp
 0051062B    pop         ebp
 0051062C    ret
end;*}

//00510630
procedure sub_00510630;
begin
{*
 00510630    push        ebp
 00510631    mov         ebp,esp
 00510633    add         esp,0FFFFFFF4
 00510636    push        ebx
 00510637    mov         eax,[0056D418];0x0 gvar_0056D418:TfmFlash
 0051063C    mov         eax,dword ptr [eax+350];TfmFlash.cb8heads:TCheckBox
 00510642    mov         edx,dword ptr [eax]
 00510644    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0051064A    test        al,al
>0051064C    je          00510656
 0051064E    mov         word ptr [ebp-6],8
>00510654    jmp         0051065C
 00510656    mov         word ptr [ebp-6],6
 0051065C    mov         edx,dword ptr ds:[577728];0x0 gvar_00577728:TMemoryStream
 00510662    mov         ax,word ptr [ebp-6]
 00510666    call        00510544
 0051066B    call        005103EC
 00510670    movzx       edx,word ptr ds:[57774C];0x0 gvar_0057774C
 00510677    xor         ecx,ecx
 00510679    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 0051067E    mov         ebx,dword ptr [eax]
 00510680    call        dword ptr [ebx+14]
 00510683    movzx       edx,word ptr ds:[577738];0x0 gvar_00577738
 0051068A    xor         ecx,ecx
 0051068C    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 00510691    mov         ebx,dword ptr [eax]
 00510693    call        dword ptr [ebx+14]
 00510696    movzx       eax,word ptr [ebp-6]
 0051069A    dec         eax
 0051069B    test        eax,eax
>0051069D    jl          00510708
 0051069F    inc         eax
 005106A0    mov         dword ptr [ebp-0C],eax
 005106A3    mov         dword ptr [ebp-4],0
 005106AA    movzx       ecx,word ptr ds:[57774E];0x0 gvar_0057774E:Integer
 005106B1    mov         edx,57775C
 005106B6    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005106BB    call        TStream.ReadBuffer
 005106C0    movzx       eax,word ptr ds:[57773A];0x0 gvar_0057773A
 005106C7    movzx       edx,word ptr [ebp-6]
 005106CB    mov         ecx,edx
 005106CD    xor         edx,edx
 005106CF    div         eax,ecx
 005106D1    mov         edx,eax
 005106D3    movzx       eax,word ptr ds:[57774E];0x0 gvar_0057774E:Integer
 005106DA    sub         edx,eax
 005106DC    mov         cx,1
 005106E0    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005106E5    mov         ebx,dword ptr [eax]
 005106E7    call        dword ptr [ebx+14]
 005106EA    movzx       ecx,word ptr ds:[57774E];0x0 gvar_0057774E:Integer
 005106F1    mov         edx,57775C
 005106F6    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 005106FB    call        TStream.WriteBuffer
 00510700    inc         dword ptr [ebp-4]
 00510703    dec         dword ptr [ebp-0C]
>00510706    jne         005106AA
 00510708    movzx       edx,word ptr ds:[577750];0x0 gvar_00577750
 0051070F    xor         ecx,ecx
 00510711    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 00510716    mov         ebx,dword ptr [eax]
 00510718    call        dword ptr [ebx+14]
 0051071B    movzx       edx,word ptr ds:[57773C];0x0 gvar_0057773C
 00510722    xor         ecx,ecx
 00510724    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 00510729    mov         ebx,dword ptr [eax]
 0051072B    call        dword ptr [ebx+14]
 0051072E    movzx       eax,word ptr [ebp-6]
 00510732    dec         eax
 00510733    test        eax,eax
>00510735    jl          005107A0
 00510737    inc         eax
 00510738    mov         dword ptr [ebp-0C],eax
 0051073B    mov         dword ptr [ebp-4],0
 00510742    movzx       ecx,word ptr ds:[577752];0x0 gvar_00577752:Integer
 00510749    mov         edx,57775C
 0051074E    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 00510753    call        TStream.ReadBuffer
 00510758    movzx       eax,word ptr ds:[57773E];0x0 gvar_0057773E
 0051075F    movzx       edx,word ptr [ebp-6]
 00510763    mov         ecx,edx
 00510765    xor         edx,edx
 00510767    div         eax,ecx
 00510769    mov         edx,eax
 0051076B    movzx       eax,word ptr ds:[577752];0x0 gvar_00577752:Integer
 00510772    sub         edx,eax
 00510774    mov         cx,1
 00510778    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 0051077D    mov         ebx,dword ptr [eax]
 0051077F    call        dword ptr [ebx+14]
 00510782    movzx       ecx,word ptr ds:[577752];0x0 gvar_00577752:Integer
 00510789    mov         edx,57775C
 0051078E    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 00510793    call        TStream.WriteBuffer
 00510798    inc         dword ptr [ebp-4]
 0051079B    dec         dword ptr [ebp-0C]
>0051079E    jne         00510742
 005107A0    movzx       edx,word ptr ds:[577754];0x0 gvar_00577754
 005107A7    xor         ecx,ecx
 005107A9    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 005107AE    mov         ebx,dword ptr [eax]
 005107B0    call        dword ptr [ebx+14]
 005107B3    movzx       edx,word ptr ds:[577740];0x0 gvar_00577740
 005107BA    xor         ecx,ecx
 005107BC    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005107C1    mov         ebx,dword ptr [eax]
 005107C3    call        dword ptr [ebx+14]
 005107C6    movzx       eax,word ptr [ebp-6]
 005107CA    dec         eax
 005107CB    test        eax,eax
>005107CD    jl          0051080E
 005107CF    inc         eax
 005107D0    mov         dword ptr [ebp-0C],eax
 005107D3    mov         dword ptr [ebp-4],0
 005107DA    movzx       ecx,word ptr ds:[577756];0x0 gvar_00577756
 005107E1    mov         edx,57775C
 005107E6    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005107EB    call        TStream.ReadBuffer
 005107F0    movzx       ecx,word ptr ds:[577756];0x0 gvar_00577756
 005107F7    mov         edx,57775C
 005107FC    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 00510801    call        TStream.WriteBuffer
 00510806    inc         dword ptr [ebp-4]
 00510809    dec         dword ptr [ebp-0C]
>0051080C    jne         005107DA
 0051080E    pop         ebx
 0051080F    mov         esp,ebp
 00510811    pop         ebp
 00510812    ret
*}
end;

//00510814
procedure TfmFlash.btCreateClick(Sender:TObject);
begin
{*
 00510814    push        ebp
 00510815    mov         ebp,esp
 00510817    add         esp,0FFFFFFF4
 0051081A    mov         dword ptr [ebp-0C],edx
 0051081D    mov         dword ptr [ebp-4],eax
 00510820    xor         edx,edx
 00510822    mov         eax,dword ptr [ebp-4]
 00510825    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 0051082B    mov         ecx,dword ptr [eax]
 0051082D    call        dword ptr [ecx+64];TImage.SetEnabled
 00510830    xor         edx,edx
 00510832    mov         eax,dword ptr [ebp-4]
 00510835    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 0051083B    mov         ecx,dword ptr [eax]
 0051083D    call        dword ptr [ecx+64];TImage.SetEnabled
 00510840    xor         edx,edx
 00510842    mov         eax,dword ptr [ebp-4]
 00510845    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 0051084B    mov         ecx,dword ptr [eax]
 0051084D    call        dword ptr [ecx+64];TImage.SetEnabled
 00510850    xor         edx,edx
 00510852    mov         eax,dword ptr [ebp-4]
 00510855    mov         eax,dword ptr [eax+34C];TfmFlash.btCreate:TButton
 0051085B    mov         ecx,dword ptr [eax]
 0051085D    call        dword ptr [ecx+64];TImage.SetEnabled
 00510860    mov         eax,dword ptr [ebp-4]
 00510863    mov         eax,dword ptr [eax+350];TfmFlash.cb8heads:TCheckBox
 00510869    mov         edx,dword ptr [eax]
 0051086B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00510871    test        al,al
>00510873    je          00510881
 00510875    mov         dword ptr ds:[577960],8;gvar_00577960
>0051087F    jmp         0051088B
 00510881    mov         dword ptr ds:[577960],6;gvar_00577960
 0051088B    mov         edx,dword ptr ds:[577728];0x0 gvar_00577728:TMemoryStream
 00510891    mov         ax,47
 00510895    call        005095B8
 0051089A    test        al,al
>0051089C    je          0051094D
 005108A2    mov         eax,dword ptr [ebp-4]
 005108A5    mov         eax,dword ptr [eax+350];TfmFlash.cb8heads:TCheckBox
 005108AB    mov         edx,dword ptr [eax]
 005108AD    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005108B3    test        al,al
>005108B5    je          005108C3
 005108B7    mov         dword ptr ds:[577960],8;gvar_00577960
>005108C1    jmp         005108CD
 005108C3    mov         dword ptr ds:[577960],6;gvar_00577960
 005108CD    mov         edx,dword ptr ds:[577728];0x0 gvar_00577728:TMemoryStream
 005108D3    mov         ax,[00577960];0x0 gvar_00577960
 005108D9    call        00510544
 005108DE    mov         eax,dword ptr [ebp-4]
 005108E1    mov         eax,dword ptr [eax+358];TfmFlash.rgFrom:TRadioGroup
 005108E7    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 005108ED    dec         eax
>005108EE    je          005108FB
 005108F0    dec         eax
>005108F1    je          00510903
 005108F3    dec         eax
>005108F4    je          0051090B
 005108F6    dec         eax
>005108F7    je          00510913
>005108F9    jmp         0051091B
 005108FB    mov         word ptr [ebp-6],41
>00510901    jmp         00510921
 00510903    mov         word ptr [ebp-6],42
>00510909    jmp         00510921
 0051090B    mov         word ptr [ebp-6],43
>00510911    jmp         00510921
 00510913    mov         word ptr [ebp-6],46
>00510919    jmp         00510921
 0051091B    mov         word ptr [ebp-6],40
 00510921    mov         edx,dword ptr ds:[57772C];0x0 gvar_0057772C:TMemoryStream
 00510927    mov         ax,word ptr [ebp-6]
 0051092B    call        005095B8
 00510930    test        al,al
>00510932    je          0051094D
 00510934    call        005103EC
 00510939    call        00510630
 0051093E    mov         edx,dword ptr ds:[577728];0x0 gvar_00577728:TMemoryStream
 00510944    mov         ax,47
 00510948    call        0050980C
 0051094D    mov         dl,1
 0051094F    mov         eax,dword ptr [ebp-4]
 00510952    mov         eax,dword ptr [eax+2FC];TfmFlash.btRead:TButton
 00510958    mov         ecx,dword ptr [eax]
 0051095A    call        dword ptr [ecx+64];TImage.SetEnabled
 0051095D    mov         dl,1
 0051095F    mov         eax,dword ptr [ebp-4]
 00510962    mov         eax,dword ptr [eax+300];TfmFlash.btWrite:TButton
 00510968    mov         ecx,dword ptr [eax]
 0051096A    call        dword ptr [ecx+64];TImage.SetEnabled
 0051096D    mov         dl,1
 0051096F    mov         eax,dword ptr [ebp-4]
 00510972    mov         eax,dword ptr [eax+30C];TfmFlash.btRepair:TButton
 00510978    mov         ecx,dword ptr [eax]
 0051097A    call        dword ptr [ecx+64];TImage.SetEnabled
 0051097D    mov         dl,1
 0051097F    mov         eax,dword ptr [ebp-4]
 00510982    mov         eax,dword ptr [eax+34C];TfmFlash.btCreate:TButton
 00510988    mov         ecx,dword ptr [eax]
 0051098A    call        dword ptr [ecx+64];TImage.SetEnabled
 0051098D    mov         esp,ebp
 0051098F    pop         ebp
 00510990    ret
*}
end;

//00510994
procedure TfmFlash.cb8headsClick(Sender:TObject);
begin
{*
 00510994    push        ebp
 00510995    mov         ebp,esp
 00510997    add         esp,0FFFFFFF8
 0051099A    mov         dword ptr [ebp-8],edx
 0051099D    mov         dword ptr [ebp-4],eax
 005109A0    mov         eax,dword ptr [ebp-4]
 005109A3    mov         eax,dword ptr [eax+350];TfmFlash.cb8heads:TCheckBox
 005109A9    mov         edx,dword ptr [eax]
 005109AB    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005109B1    test        al,al
>005109B3    je          005109C1
 005109B5    mov         dword ptr ds:[577960],8;gvar_00577960
>005109BF    jmp         005109CB
 005109C1    mov         dword ptr ds:[577960],6;gvar_00577960
 005109CB    pop         ecx
 005109CC    pop         ecx
 005109CD    pop         ebp
 005109CE    ret
*}
end;

//005109D0
procedure TfmFlash.FormDestroy(Sender:TObject);
begin
{*
 005109D0    push        ebp
 005109D1    mov         ebp,esp
 005109D3    add         esp,0FFFFFFF8
 005109D6    mov         dword ptr [ebp-8],edx
 005109D9    mov         dword ptr [ebp-4],eax
 005109DC    mov         eax,[0057772C];0x0 gvar_0057772C:TMemoryStream
 005109E1    call        TObject.Free
 005109E6    mov         eax,[00577728];0x0 gvar_00577728:TMemoryStream
 005109EB    call        TObject.Free
 005109F0    pop         ecx
 005109F1    pop         ecx
 005109F2    pop         ebp
 005109F3    ret
*}
end;

//005109F4
procedure TfmFlash.FormCreate(Sender:TObject);
begin
{*
 005109F4    push        ebp
 005109F5    mov         ebp,esp
 005109F7    add         esp,0FFFFFFF8
 005109FA    mov         dword ptr [ebp-8],edx
 005109FD    mov         dword ptr [ebp-4],eax
 00510A00    mov         dl,1
 00510A02    mov         eax,[0041DE14];TMemoryStream
 00510A07    call        TObject.Create;TMemoryStream.Create
 00510A0C    mov         [00577728],eax;gvar_00577728:TMemoryStream
 00510A11    mov         dl,1
 00510A13    mov         eax,[0041DE14];TMemoryStream
 00510A18    call        TObject.Create;TMemoryStream.Create
 00510A1D    mov         [0057772C],eax;gvar_0057772C:TMemoryStream
 00510A22    pop         ecx
 00510A23    pop         ecx
 00510A24    pop         ebp
 00510A25    ret
*}
end;

end.