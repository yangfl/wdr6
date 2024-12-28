//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCpuRam;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmCpuRam = class(TForm)
  published
    edLen:TLabeledEdit;//f2F8
    edStart:TLabeledEdit;//f2FC
    cbOffset:TComboBox;//f300
    btGetDramMap:TButton;//f304
    btRead:TButton;//f308
    btWrite:TButton;//f30C
    btDump:TButton;//f310
    procedure btDumpClick(Sender:TObject);//0053A028
    procedure btReadClick(Sender:TObject);//0053A980
    procedure btWriteClick(Sender:TObject);//0053AA54
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00539D58
    procedure btGetDramMapClick(Sender:TObject);//00539D80
    //procedure cbOffsetChange(?:?);//00539F88
  end;
    procedure sub_00539D04(?:TfmCpuRam; ?:TfmHDD);//00539D04
    //procedure sub_0053A10C(?:?; ?:?);//0053A10C
    //function sub_0053A638(?:?; ?:?):?;//0053A638
    //function sub_0053A7BC(?:?; ?:?):?;//0053A7BC

implementation

{$R *.DFM}

//00539D04
procedure sub_00539D04(?:TfmCpuRam; ?:TfmHDD);
begin
{*
 00539D04    push        ebp
 00539D05    mov         ebp,esp
 00539D07    add         esp,0FFFFFFF8
 00539D0A    mov         dword ptr [ebp-8],edx
 00539D0D    mov         dword ptr [ebp-4],eax
 00539D10    cmp         dword ptr ds:[56DDD8],0;gvar_0056DDD8:TfmCpuRam
>00539D17    jne         00539D2D
 00539D19    mov         ecx,dword ptr [ebp-8]
 00539D1C    mov         dl,1
 00539D1E    mov         eax,[00539AA8];TfmCpuRam
 00539D23    call        TfmProgress.Create;TfmCpuRam.Create
 00539D28    mov         [0056DDD8],eax;gvar_0056DDD8:TfmCpuRam
 00539D2D    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 00539D32    cmp         byte ptr [eax+1A6],0;TfmCpuRam.FShowing:Boolean
>00539D39    je          00539D4A
 00539D3B    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 00539D40    mov         edx,dword ptr [eax]
 00539D42    call        dword ptr [edx+0C4];TfmCpuRam.sub_004A746C
>00539D48    jmp         00539D54
 00539D4A    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 00539D4F    call        004A7450
 00539D54    pop         ecx
 00539D55    pop         ecx
 00539D56    pop         ebp
 00539D57    ret
*}
end;

//00539D58
procedure TfmCpuRam.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00539D58    push        ebp
 00539D59    mov         ebp,esp
 00539D5B    add         esp,0FFFFFFF4
 00539D5E    mov         dword ptr [ebp-8],ecx
 00539D61    mov         dword ptr [ebp-0C],edx
 00539D64    mov         dword ptr [ebp-4],eax
 00539D67    mov         eax,[0056E5A4];^gvar_0056DF04
 00539D6C    mov         byte ptr [eax],1
 00539D6F    xor         eax,eax
 00539D71    mov         [0056DDD8],eax;gvar_0056DDD8:TfmCpuRam
 00539D76    mov         eax,dword ptr [ebp-8]
 00539D79    mov         byte ptr [eax],2
 00539D7C    mov         esp,ebp
 00539D7E    pop         ebp
 00539D7F    ret
*}
end;

//00539D80
procedure TfmCpuRam.btGetDramMapClick(Sender:TObject);
begin
{*
 00539D80    push        ebp
 00539D81    mov         ebp,esp
 00539D83    add         esp,0FFFFFFD0
 00539D86    push        ebx
 00539D87    xor         ecx,ecx
 00539D89    mov         dword ptr [ebp-30],ecx
 00539D8C    mov         dword ptr [ebp-18],ecx
 00539D8F    mov         dword ptr [ebp-2C],ecx
 00539D92    mov         dword ptr [ebp-14],edx
 00539D95    mov         dword ptr [ebp-4],eax
 00539D98    xor         eax,eax
 00539D9A    push        ebp
 00539D9B    push        539F46
 00539DA0    push        dword ptr fs:[eax]
 00539DA3    mov         dword ptr fs:[eax],esp
 00539DA6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00539DAB    mov         eax,dword ptr [eax]
 00539DAD    mov         eax,dword ptr [eax+2F8]
 00539DB3    mov         eax,dword ptr [eax+248]
 00539DB9    xor         edx,edx
 00539DBB    mov         ecx,dword ptr [eax]
 00539DBD    call        dword ptr [ecx+38]
 00539DC0    mov         eax,59BEAC
 00539DC5    xor         ecx,ecx
 00539DC7    mov         edx,78
 00539DCC    call        @FillChar
 00539DD1    mov         dl,1
 00539DD3    mov         eax,[0041DE14];TMemoryStream
 00539DD8    call        TObject.Create;TMemoryStream.Create
 00539DDD    mov         dword ptr [ebp-8],eax
 00539DE0    xor         eax,eax
 00539DE2    push        ebp
 00539DE3    push        539F1C
 00539DE8    push        dword ptr fs:[eax]
 00539DEB    mov         dword ptr fs:[eax],esp
 00539DEE    push        1
 00539DF0    mov         eax,dword ptr [ebp-8]
 00539DF3    push        eax
 00539DF4    xor         ecx,ecx
 00539DF6    xor         edx,edx
 00539DF8    mov         ax,0FA
 00539DFC    call        004D108C
 00539E01    test        al,al
>00539E03    je          00539EE7
 00539E09    xor         ecx,ecx
 00539E0B    xor         edx,edx
 00539E0D    mov         eax,dword ptr [ebp-8]
 00539E10    mov         ebx,dword ptr [eax]
 00539E12    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00539E15    xor         eax,eax
 00539E17    mov         dword ptr [ebp-10],eax
 00539E1A    lea         edx,[ebp-0C]
 00539E1D    mov         ecx,4
 00539E22    mov         eax,dword ptr [ebp-8]
 00539E25    call        TStream.ReadBuffer
 00539E2A    push        10
 00539E2C    call        user32.GetKeyState
 00539E31    test        ax,ax
>00539E34    jge         00539E86
 00539E36    lea         eax,[ebp-18]
 00539E39    push        eax
 00539E3A    mov         eax,dword ptr [ebp-0C]
 00539E3D    mov         dword ptr [ebp-28],eax
 00539E40    mov         byte ptr [ebp-24],0
 00539E44    lea         edx,[ebp-2C]
 00539E47    mov         eax,dword ptr [ebp-10]
 00539E4A    call        0053A10C
 00539E4F    mov         eax,dword ptr [ebp-2C]
 00539E52    mov         dword ptr [ebp-20],eax
 00539E55    mov         byte ptr [ebp-1C],0B
 00539E59    lea         edx,[ebp-28]
 00539E5C    mov         ecx,1
 00539E61    mov         eax,539F5C;'%8.8x - %s'
 00539E66    call        0040D630
 00539E6B    mov         edx,dword ptr [ebp-18]
 00539E6E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00539E73    mov         eax,dword ptr [eax]
 00539E75    mov         eax,dword ptr [eax+2F8]
 00539E7B    mov         eax,dword ptr [eax+248]
 00539E81    mov         ecx,dword ptr [eax]
 00539E83    call        dword ptr [ecx+38]
 00539E86    lea         edx,[ebp-30]
 00539E89    mov         eax,dword ptr [ebp-10]
 00539E8C    call        0053A10C
 00539E91    mov         edx,dword ptr [ebp-30]
 00539E94    mov         eax,dword ptr [ebp-4]
 00539E97    mov         eax,dword ptr [eax+300];TfmCpuRam.cbOffset:TComboBox
 00539E9D    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 00539EA3    mov         ecx,dword ptr [eax]
 00539EA5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 00539EA8    mov         eax,dword ptr [ebp-10]
 00539EAB    mov         edx,dword ptr [ebp-0C]
 00539EAE    mov         dword ptr [eax*4+59BEAC],edx
 00539EB5    inc         dword ptr [ebp-10]
 00539EB8    cmp         dword ptr [ebp-10],1E
>00539EBC    jne         00539E1A
 00539EC2    mov         eax,dword ptr [ebp-4]
 00539EC5    mov         eax,dword ptr [eax+300];TfmCpuRam.cbOffset:TComboBox
 00539ECB    xor         edx,edx
 00539ECD    mov         ecx,dword ptr [eax]
 00539ECF    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 00539ED5    mov         eax,dword ptr [ebp-4]
 00539ED8    mov         eax,dword ptr [eax+300];TfmCpuRam.cbOffset:TComboBox
 00539EDE    mov         dl,1
 00539EE0    mov         ecx,dword ptr [eax]
 00539EE2    call        dword ptr [ecx+64];TImage.SetEnabled
>00539EE5    jmp         00539F06
 00539EE7    mov         eax,dword ptr [ebp-4]
 00539EEA    mov         eax,dword ptr [eax+300];TfmCpuRam.cbOffset:TComboBox
 00539EF0    mov         dl,1
 00539EF2    mov         ecx,dword ptr [eax]
 00539EF4    call        dword ptr [ecx+64];TImage.SetEnabled
 00539EF7    call        004CEB6C
 00539EFC    mov         eax,539F70;'Read DRAM Offset Map - '
 00539F01    call        00544F6C
 00539F06    xor         eax,eax
 00539F08    pop         edx
 00539F09    pop         ecx
 00539F0A    pop         ecx
 00539F0B    mov         dword ptr fs:[eax],edx
 00539F0E    push        539F23
 00539F13    mov         eax,dword ptr [ebp-8]
 00539F16    call        TObject.Free
 00539F1B    ret
>00539F1C    jmp         @HandleFinally
>00539F21    jmp         00539F13
 00539F23    xor         eax,eax
 00539F25    pop         edx
 00539F26    pop         ecx
 00539F27    pop         ecx
 00539F28    mov         dword ptr fs:[eax],edx
 00539F2B    push        539F4D
 00539F30    lea         eax,[ebp-30]
 00539F33    mov         edx,2
 00539F38    call        @LStrArrayClr
 00539F3D    lea         eax,[ebp-18]
 00539F40    call        @LStrClr
 00539F45    ret
>00539F46    jmp         @HandleFinally
>00539F4B    jmp         00539F30
 00539F4D    pop         ebx
 00539F4E    mov         esp,ebp
 00539F50    pop         ebp
 00539F51    ret
*}
end;

//00539F88
{*procedure TfmCpuRam.cbOffsetChange(?:?);
begin
 00539F88    push        ebp
 00539F89    mov         ebp,esp
 00539F8B    add         esp,0FFFFFFF0
 00539F8E    xor         ecx,ecx
 00539F90    mov         dword ptr [ebp-0C],ecx
 00539F93    mov         dword ptr [ebp-10],ecx
 00539F96    mov         dword ptr [ebp-8],edx
 00539F99    mov         dword ptr [ebp-4],eax
 00539F9C    xor         eax,eax
 00539F9E    push        ebp
 00539F9F    push        53A00F
 00539FA4    push        dword ptr fs:[eax]
 00539FA7    mov         dword ptr fs:[eax],esp
 00539FAA    mov         eax,dword ptr [ebp-4]
 00539FAD    mov         eax,dword ptr [eax+300];TfmCpuRam.cbOffset:TComboBox
 00539FB3    mov         edx,dword ptr [eax]
 00539FB5    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00539FBB    mov         eax,dword ptr [eax*4+59BEAC]
 00539FC2    xor         edx,edx
 00539FC4    push        edx
 00539FC5    push        eax
 00539FC6    lea         edx,[ebp-10]
 00539FC9    mov         eax,8
 00539FCE    call        IntToHex
 00539FD3    mov         ecx,dword ptr [ebp-10]
 00539FD6    lea         eax,[ebp-0C]
 00539FD9    mov         edx,53A024;'$'
 00539FDE    call        @LStrCat3
 00539FE3    mov         edx,dword ptr [ebp-0C]
 00539FE6    mov         eax,dword ptr [ebp-4]
 00539FE9    mov         eax,dword ptr [eax+2FC];TfmCpuRam.edStart:TLabeledEdit
 00539FEF    call        TPanel.SetCaption
 00539FF4    xor         eax,eax
 00539FF6    pop         edx
 00539FF7    pop         ecx
 00539FF8    pop         ecx
 00539FF9    mov         dword ptr fs:[eax],edx
 00539FFC    push        53A016
 0053A001    lea         eax,[ebp-10]
 0053A004    mov         edx,2
 0053A009    call        @LStrArrayClr
 0053A00E    ret
>0053A00F    jmp         @HandleFinally
>0053A014    jmp         0053A001
 0053A016    mov         esp,ebp
 0053A018    pop         ebp
 0053A019    ret
end;*}

//0053A028
procedure TfmCpuRam.btDumpClick(Sender:TObject);
begin
{*
 0053A028    push        ebp
 0053A029    mov         ebp,esp
 0053A02B    add         esp,0FFFFFFE8
 0053A02E    xor         ecx,ecx
 0053A030    mov         dword ptr [ebp-18],ecx
 0053A033    mov         dword ptr [ebp-14],ecx
 0053A036    mov         dword ptr [ebp-8],ecx
 0053A039    mov         dword ptr [ebp-10],edx
 0053A03C    mov         dword ptr [ebp-4],eax
 0053A03F    xor         eax,eax
 0053A041    push        ebp
 0053A042    push        53A0E1
 0053A047    push        dword ptr fs:[eax]
 0053A04A    mov         dword ptr fs:[eax],esp
 0053A04D    lea         edx,[ebp-14]
 0053A050    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 0053A055    mov         eax,dword ptr [eax+2FC];TfmCpuRam.edStart:TLabeledEdit
 0053A05B    call        TPanel.GetCaption
 0053A060    mov         eax,dword ptr [ebp-14]
 0053A063    xor         edx,edx
 0053A065    call        0040C4A8
 0053A06A    mov         dword ptr [ebp-0C],eax
 0053A06D    mov         eax,[0056E2D0];^gvar_0056DF38
 0053A072    push        dword ptr [eax]
 0053A074    push        53A0F4;'Ram\'
 0053A079    mov         eax,dword ptr [ebp-0C]
 0053A07C    xor         edx,edx
 0053A07E    push        edx
 0053A07F    push        eax
 0053A080    lea         edx,[ebp-18]
 0053A083    mov         eax,8
 0053A088    call        IntToHex
 0053A08D    push        dword ptr [ebp-18]
 0053A090    push        53A104;'.bin'
 0053A095    lea         eax,[ebp-8]
 0053A098    mov         edx,4
 0053A09D    call        @LStrCatN
 0053A0A2    mov         eax,dword ptr [ebp-8]
 0053A0A5    call        0040C94C
 0053A0AA    test        al,al
>0053A0AC    je          0053A0BB
 0053A0AE    mov         edx,dword ptr [ebp-8]
 0053A0B1    mov         eax,[004F3EB8];TfmViewer
 0053A0B6    call        004F4640
 0053A0BB    xor         eax,eax
 0053A0BD    pop         edx
 0053A0BE    pop         ecx
 0053A0BF    pop         ecx
 0053A0C0    mov         dword ptr fs:[eax],edx
 0053A0C3    push        53A0E8
 0053A0C8    lea         eax,[ebp-18]
 0053A0CB    call        @LStrClr
 0053A0D0    lea         eax,[ebp-14]
 0053A0D3    call        @LStrClr
 0053A0D8    lea         eax,[ebp-8]
 0053A0DB    call        @LStrClr
 0053A0E0    ret
>0053A0E1    jmp         @HandleFinally
>0053A0E6    jmp         0053A0C8
 0053A0E8    mov         esp,ebp
 0053A0EA    pop         ebp
 0053A0EB    ret
*}
end;

//0053A10C
{*procedure sub_0053A10C(?:?; ?:?);
begin
 0053A10C    push        ebp
 0053A10D    mov         ebp,esp
 0053A10F    add         esp,0FFFFFFF8
 0053A112    mov         dword ptr [ebp-8],edx
 0053A115    mov         dword ptr [ebp-4],eax
 0053A118    mov         eax,dword ptr [ebp-4]
 0053A11B    cmp         eax,1D
>0053A11E    ja          0053A3A7
 0053A124    jmp         dword ptr [eax*4+53A12B]
 0053A124    dd          0053A1A3
 0053A124    dd          0053A1B5
 0053A124    dd          0053A1C7
 0053A124    dd          0053A1D9
 0053A124    dd          0053A1EB
 0053A124    dd          0053A1FD
 0053A124    dd          0053A20F
 0053A124    dd          0053A221
 0053A124    dd          0053A233
 0053A124    dd          0053A245
 0053A124    dd          0053A257
 0053A124    dd          0053A269
 0053A124    dd          0053A27B
 0053A124    dd          0053A28D
 0053A124    dd          0053A29F
 0053A124    dd          0053A2B1
 0053A124    dd          0053A2C3
 0053A124    dd          0053A2D5
 0053A124    dd          0053A2E7
 0053A124    dd          0053A2F9
 0053A124    dd          0053A30B
 0053A124    dd          0053A31D
 0053A124    dd          0053A32F
 0053A124    dd          0053A33E
 0053A124    dd          0053A34D
 0053A124    dd          0053A35C
 0053A124    dd          0053A36B
 0053A124    dd          0053A37A
 0053A124    dd          0053A389
 0053A124    dd          0053A398
 0053A1A3    mov         eax,dword ptr [ebp-8]
 0053A1A6    mov         edx,53A3BC;'CTLR_DATA'
 0053A1AB    call        @LStrAsg
>0053A1B0    jmp         0053A3AF
 0053A1B5    mov         eax,dword ptr [ebp-8]
 0053A1B8    mov         edx,53A3D0;'CTLR_CODE'
 0053A1BD    call        @LStrAsg
>0053A1C2    jmp         0053A3AF
 0053A1C7    mov         eax,dword ptr [ebp-8]
 0053A1CA    mov         edx,53A3E4;'SERVO_CODE'
 0053A1CF    call        @LStrAsg
>0053A1D4    jmp         0053A3AF
 0053A1D9    mov         eax,dword ptr [ebp-8]
 0053A1DC    mov         edx,53A3F8;'PERMOVL'
 0053A1E1    call        @LStrAsg
>0053A1E6    jmp         0053A3AF
 0053A1EB    mov         eax,dword ptr [ebp-8]
 0053A1EE    mov         edx,53A408;'RESERVED1'
 0053A1F3    call        @LStrAsg
>0053A1F8    jmp         0053A3AF
 0053A1FD    mov         eax,dword ptr [ebp-8]
 0053A200    mov         edx,53A41C;'STATIC_FILES'
 0053A205    call        @LStrAsg
>0053A20A    jmp         0053A3AF
 0053A20F    mov         eax,dword ptr [ebp-8]
 0053A212    mov         edx,53A434;'AW_SEGMENT'
 0053A217    call        @LStrAsg
>0053A21C    jmp         0053A3AF
 0053A221    mov         eax,dword ptr [ebp-8]
 0053A224    mov         edx,53A448;'VSC_KEY_SECTORS'
 0053A229    call        @LStrAsg
>0053A22E    jmp         0053A3AF
 0053A233    mov         eax,dword ptr [ebp-8]
 0053A236    mov         edx,53A460;'VSC_STATUS'
 0053A23B    call        @LStrAsg
>0053A240    jmp         0053A3AF
 0053A245    mov         eax,dword ptr [ebp-8]
 0053A248    mov         edx,53A474;'SMART_DATA_BUFFER'
 0053A24D    call        @LStrAsg
>0053A252    jmp         0053A3AF
 0053A257    mov         eax,dword ptr [ebp-8]
 0053A25A    mov         edx,53A490;'SELECTIVE_TEST_BUFFER'
 0053A25F    call        @LStrAsg
>0053A264    jmp         0053A3AF
 0053A269    mov         eax,dword ptr [ebp-8]
 0053A26C    mov         edx,53A4B0;'DIRECTORY'
 0053A271    call        @LStrAsg
>0053A276    jmp         0053A3AF
 0053A27B    mov         eax,dword ptr [ebp-8]
 0053A27E    mov         edx,53A4C4;'FLASH_DIR'
 0053A283    call        @LStrAsg
>0053A288    jmp         0053A3AF
 0053A28D    mov         eax,dword ptr [ebp-8]
 0053A290    mov         edx,53A4D8;'CONFIG_FILE'
 0053A295    call        @LStrAsg
>0053A29A    jmp         0053A3AF
 0053A29F    mov         eax,dword ptr [ebp-8]
 0053A2A2    mov         edx,53A4EC;'DISK_SECTOR_SCREEN'
 0053A2A7    call        @LStrAsg
>0053A2AC    jmp         0053A3AF
 0053A2B1    mov         eax,dword ptr [ebp-8]
 0053A2B4    mov         edx,53A508;'DEBUGSTOP_DATA'
 0053A2B9    call        @LStrAsg
>0053A2BE    jmp         0053A3AF
 0053A2C3    mov         eax,dword ptr [ebp-8]
 0053A2C6    mov         edx,53A520;'SEEK_PROFILE_READ'
 0053A2CB    call        @LStrAsg
>0053A2D0    jmp         0053A3AF
 0053A2D5    mov         eax,dword ptr [ebp-8]
 0053A2D8    mov         edx,53A53C;'SEEK_PROFILE_WRITE'
 0053A2DD    call        @LStrAsg
>0053A2E2    jmp         0053A3AF
 0053A2E7    mov         eax,dword ptr [ebp-8]
 0053A2EA    mov         edx,53A558;'DRM_LOG'
 0053A2EF    call        @LStrAsg
>0053A2F4    jmp         0053A3AF
 0053A2F9    mov         eax,dword ptr [ebp-8]
 0053A2FC    mov         edx,53A568;'CHANNEL_FILES'
 0053A301    call        @LStrAsg
>0053A306    jmp         0053A3AF
 0053A30B    mov         eax,dword ptr [ebp-8]
 0053A30E    mov         edx,53A580;'CHANNEL_FILE_DFH'
 0053A313    call        @LStrAsg
>0053A318    jmp         0053A3AF
 0053A31D    mov         eax,dword ptr [ebp-8]
 0053A320    mov         edx,53A59C;'SERVO_FILES'
 0053A325    call        @LStrAsg
>0053A32A    jmp         0053A3AF
 0053A32F    mov         eax,dword ptr [ebp-8]
 0053A332    mov         edx,53A5B0;'RPDLIST'
 0053A337    call        @LStrAsg
>0053A33C    jmp         0053A3AF
 0053A33E    mov         eax,dword ptr [ebp-8]
 0053A341    mov         edx,53A5C0;'RELOLIST'
 0053A346    call        @LStrAsg
>0053A34B    jmp         0053A3AF
 0053A34D    mov         eax,dword ptr [ebp-8]
 0053A350    mov         edx,53A5D4;'GLIST'
 0053A355    call        @LStrAsg
>0053A35A    jmp         0053A3AF
 0053A35C    mov         eax,dword ptr [ebp-8]
 0053A35F    mov         edx,53A5E4;'FLSH_CFG'
 0053A364    call        @LStrAsg
>0053A369    jmp         0053A3AF
 0053A36B    mov         eax,dword ptr [ebp-8]
 0053A36E    mov         edx,53A5F8;'PDLIST'
 0053A373    call        @LStrAsg
>0053A378    jmp         0053A3AF
 0053A37A    mov         eax,dword ptr [ebp-8]
 0053A37D    mov         edx,53A608;'CACHE_RELO'
 0053A382    call        @LStrAsg
>0053A387    jmp         0053A3AF
 0053A389    mov         eax,dword ptr [ebp-8]
 0053A38C    mov         edx,53A61C;'TRANSOVL'
 0053A391    call        @LStrAsg
>0053A396    jmp         0053A3AF
 0053A398    mov         eax,dword ptr [ebp-8]
 0053A39B    mov         edx,53A630;'PST_OVL'
 0053A3A0    call        @LStrAsg
>0053A3A5    jmp         0053A3AF
 0053A3A7    mov         eax,dword ptr [ebp-8]
 0053A3AA    call        @LStrClr
 0053A3AF    pop         ecx
 0053A3B0    pop         ecx
 0053A3B1    pop         ebp
 0053A3B2    ret
end;*}

//0053A638
{*function sub_0053A638(?:?; ?:?):?;
begin
 0053A638    push        ebp
 0053A639    mov         ebp,esp
 0053A63B    add         esp,0FFFFFFE0
 0053A63E    xor         ecx,ecx
 0053A640    mov         dword ptr [ebp-20],ecx
 0053A643    mov         dword ptr [ebp-1C],ecx
 0053A646    mov         dword ptr [ebp-18],ecx
 0053A649    mov         dword ptr [ebp-14],ecx
 0053A64C    mov         dword ptr [ebp-8],edx
 0053A64F    mov         dword ptr [ebp-4],eax
 0053A652    xor         eax,eax
 0053A654    push        ebp
 0053A655    push        53A76A
 0053A65A    push        dword ptr fs:[eax]
 0053A65D    mov         dword ptr fs:[eax],esp
 0053A660    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053A666    mov         edx,dword ptr [edx]
 0053A668    lea         eax,[ebp-18]
 0053A66B    mov         ecx,53A780;'Ram'
 0053A670    call        @LStrCat3
 0053A675    mov         eax,dword ptr [ebp-18]
 0053A678    call        0040C9A4
 0053A67D    test        al,al
>0053A67F    jne         0053A6B3
 0053A681    push        53A78C;'Cannot create '
 0053A686    mov         eax,[0056E2D0];^gvar_0056DF38
 0053A68B    push        dword ptr [eax]
 0053A68D    push        53A780;'Ram'
 0053A692    lea         eax,[ebp-1C]
 0053A695    mov         edx,3
 0053A69A    call        @LStrCatN
 0053A69F    mov         ecx,dword ptr [ebp-1C]
 0053A6A2    mov         dl,1
 0053A6A4    mov         eax,[0040B004];Exception
 0053A6A9    call        Exception.Create;Exception.Create
 0053A6AE    call        @RaiseExcept
 0053A6B3    mov         eax,[0056E5A4];^gvar_0056DF04
 0053A6B8    mov         byte ptr [eax],0
 0053A6BB    mov         byte ptr [ebp-9],0
 0053A6BF    mov         eax,[0056E2D0];^gvar_0056DF38
 0053A6C4    push        dword ptr [eax]
 0053A6C6    push        53A7A4;'Ram\'
 0053A6CB    mov         eax,dword ptr [ebp-4]
 0053A6CE    xor         edx,edx
 0053A6D0    push        edx
 0053A6D1    push        eax
 0053A6D2    lea         edx,[ebp-20]
 0053A6D5    mov         eax,8
 0053A6DA    call        IntToHex
 0053A6DF    push        dword ptr [ebp-20]
 0053A6E2    push        53A7B4;'.bin'
 0053A6E7    lea         eax,[ebp-14]
 0053A6EA    mov         edx,4
 0053A6EF    call        @LStrCatN
 0053A6F4    mov         dl,1
 0053A6F6    mov         eax,[0041DE14];TMemoryStream
 0053A6FB    call        TObject.Create;TMemoryStream.Create
 0053A700    mov         dword ptr [ebp-10],eax
 0053A703    xor         eax,eax
 0053A705    push        ebp
 0053A706    push        53A748
 0053A70B    push        dword ptr fs:[eax]
 0053A70E    mov         dword ptr fs:[eax],esp
 0053A711    mov         ecx,dword ptr [ebp-10]
 0053A714    mov         edx,dword ptr [ebp-8]
 0053A717    mov         eax,dword ptr [ebp-4]
 0053A71A    call        004D1204
 0053A71F    test        al,al
>0053A721    je          0053A732
 0053A723    mov         edx,dword ptr [ebp-14]
 0053A726    mov         eax,dword ptr [ebp-10]
 0053A729    call        00423E84
 0053A72E    mov         byte ptr [ebp-9],1
 0053A732    xor         eax,eax
 0053A734    pop         edx
 0053A735    pop         ecx
 0053A736    pop         ecx
 0053A737    mov         dword ptr fs:[eax],edx
 0053A73A    push        53A74F
 0053A73F    mov         eax,dword ptr [ebp-10]
 0053A742    call        TObject.Free
 0053A747    ret
>0053A748    jmp         @HandleFinally
>0053A74D    jmp         0053A73F
 0053A74F    xor         eax,eax
 0053A751    pop         edx
 0053A752    pop         ecx
 0053A753    pop         ecx
 0053A754    mov         dword ptr fs:[eax],edx
 0053A757    push        53A771
 0053A75C    lea         eax,[ebp-20]
 0053A75F    mov         edx,4
 0053A764    call        @LStrArrayClr
 0053A769    ret
>0053A76A    jmp         @HandleFinally
>0053A76F    jmp         0053A75C
 0053A771    mov         al,byte ptr [ebp-9]
 0053A774    mov         esp,ebp
 0053A776    pop         ebp
 0053A777    ret
end;*}

//0053A7BC
{*function sub_0053A7BC(?:?; ?:?):?;
begin
 0053A7BC    push        ebp
 0053A7BD    mov         ebp,esp
 0053A7BF    add         esp,0FFFFFFE4
 0053A7C2    xor         ecx,ecx
 0053A7C4    mov         dword ptr [ebp-1C],ecx
 0053A7C7    mov         dword ptr [ebp-18],ecx
 0053A7CA    mov         dword ptr [ebp-14],ecx
 0053A7CD    mov         dword ptr [ebp-8],edx
 0053A7D0    mov         dword ptr [ebp-4],eax
 0053A7D3    xor         eax,eax
 0053A7D5    push        ebp
 0053A7D6    push        53A94D
 0053A7DB    push        dword ptr fs:[eax]
 0053A7DE    mov         dword ptr fs:[eax],esp
 0053A7E1    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053A7E7    mov         edx,dword ptr [edx]
 0053A7E9    lea         eax,[ebp-14]
 0053A7EC    mov         ecx,53A964;'Ram'
 0053A7F1    call        @LStrCat3
 0053A7F6    mov         eax,dword ptr [ebp-14]
 0053A7F9    call        0040C9A4
 0053A7FE    test        al,al
>0053A800    jne         0053A834
 0053A802    push        53A970;'Cannot create '
 0053A807    mov         eax,[0056E2D0];^gvar_0056DF38
 0053A80C    push        dword ptr [eax]
 0053A80E    push        53A964;'Ram'
 0053A813    lea         eax,[ebp-18]
 0053A816    mov         edx,3
 0053A81B    call        @LStrCatN
 0053A820    mov         ecx,dword ptr [ebp-18]
 0053A823    mov         dl,1
 0053A825    mov         eax,[0040B004];Exception
 0053A82A    call        Exception.Create;Exception.Create
 0053A82F    call        @RaiseExcept
 0053A834    mov         eax,[0056E5A4];^gvar_0056DF04
 0053A839    mov         byte ptr [eax],0
 0053A83C    mov         byte ptr [ebp-9],0
 0053A840    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053A846    mov         edx,dword ptr [edx]
 0053A848    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053A84D    mov         eax,dword ptr [eax]
 0053A84F    mov         eax,dword ptr [eax+35C]
 0053A855    call        TOpenDialog.SetInitialDir
 0053A85A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053A85F    mov         eax,dword ptr [eax]
 0053A861    mov         eax,dword ptr [eax+35C]
 0053A867    add         eax,78
 0053A86A    call        @LStrClr
 0053A86F    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053A874    mov         eax,dword ptr [eax]
 0053A876    mov         eax,dword ptr [eax+35C]
 0053A87C    mov         edx,dword ptr [eax]
 0053A87E    call        dword ptr [edx+3C]
 0053A881    test        al,al
>0053A883    je          0053A92A
 0053A889    mov         dl,1
 0053A88B    mov         eax,[0041DE14];TMemoryStream
 0053A890    call        TObject.Create;TMemoryStream.Create
 0053A895    mov         dword ptr [ebp-10],eax
 0053A898    xor         eax,eax
 0053A89A    push        ebp
 0053A89B    push        53A923
 0053A8A0    push        dword ptr fs:[eax]
 0053A8A3    mov         dword ptr fs:[eax],esp
 0053A8A6    lea         edx,[ebp-1C]
 0053A8A9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053A8AE    mov         eax,dword ptr [eax]
 0053A8B0    mov         eax,dword ptr [eax+35C]
 0053A8B6    call        TOpenDialog.GetFileName
 0053A8BB    mov         edx,dword ptr [ebp-1C]
 0053A8BE    mov         eax,dword ptr [ebp-10]
 0053A8C1    call        00423F8C
 0053A8C6    cmp         dword ptr [ebp-8],0
>0053A8CA    je          0053A8ED
 0053A8CC    mov         eax,dword ptr [ebp-10]
 0053A8CF    mov         edx,dword ptr [eax]
 0053A8D1    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0053A8D3    push        edx
 0053A8D4    push        eax
 0053A8D5    mov         eax,dword ptr [ebp-8]
 0053A8D8    xor         edx,edx
 0053A8DA    cmp         edx,dword ptr [esp+4]
>0053A8DE    jne         0053A8E9
 0053A8E0    cmp         eax,dword ptr [esp]
 0053A8E3    pop         edx
 0053A8E4    pop         eax
>0053A8E5    jbe         0053A8F7
>0053A8E7    jmp         0053A8ED
 0053A8E9    pop         edx
 0053A8EA    pop         eax
>0053A8EB    jle         0053A8F7
 0053A8ED    mov         eax,dword ptr [ebp-10]
 0053A8F0    mov         edx,dword ptr [eax]
 0053A8F2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0053A8F4    mov         dword ptr [ebp-8],eax
 0053A8F7    mov         ecx,dword ptr [ebp-10]
 0053A8FA    mov         edx,dword ptr [ebp-8]
 0053A8FD    mov         eax,dword ptr [ebp-4]
 0053A900    call        004D13AC
 0053A905    test        al,al
>0053A907    je          0053A90D
 0053A909    mov         byte ptr [ebp-9],1
 0053A90D    xor         eax,eax
 0053A90F    pop         edx
 0053A910    pop         ecx
 0053A911    pop         ecx
 0053A912    mov         dword ptr fs:[eax],edx
 0053A915    push        53A92A
 0053A91A    mov         eax,dword ptr [ebp-10]
 0053A91D    call        TObject.Free
 0053A922    ret
>0053A923    jmp         @HandleFinally
>0053A928    jmp         0053A91A
 0053A92A    xor         eax,eax
 0053A92C    pop         edx
 0053A92D    pop         ecx
 0053A92E    pop         ecx
 0053A92F    mov         dword ptr fs:[eax],edx
 0053A932    push        53A954
 0053A937    lea         eax,[ebp-1C]
 0053A93A    call        @LStrClr
 0053A93F    lea         eax,[ebp-18]
 0053A942    mov         edx,2
 0053A947    call        @LStrArrayClr
 0053A94C    ret
>0053A94D    jmp         @HandleFinally
>0053A952    jmp         0053A937
 0053A954    mov         al,byte ptr [ebp-9]
 0053A957    mov         esp,ebp
 0053A959    pop         ebp
 0053A95A    ret
end;*}

//0053A980
procedure TfmCpuRam.btReadClick(Sender:TObject);
begin
{*
 0053A980    push        ebp
 0053A981    mov         ebp,esp
 0053A983    add         esp,0FFFFFFE8
 0053A986    xor         ecx,ecx
 0053A988    mov         dword ptr [ebp-18],ecx
 0053A98B    mov         dword ptr [ebp-14],ecx
 0053A98E    mov         dword ptr [ebp-10],edx
 0053A991    mov         dword ptr [ebp-4],eax
 0053A994    xor         eax,eax
 0053A996    push        ebp
 0053A997    push        53AA48
 0053A99C    push        dword ptr fs:[eax]
 0053A99F    mov         dword ptr fs:[eax],esp
 0053A9A2    xor         edx,edx
 0053A9A4    mov         eax,dword ptr [ebp-4]
 0053A9A7    mov         eax,dword ptr [eax+308];TfmCpuRam.btRead:TButton
 0053A9AD    mov         ecx,dword ptr [eax]
 0053A9AF    call        dword ptr [ecx+64];TImage.SetEnabled
 0053A9B2    xor         edx,edx
 0053A9B4    mov         eax,dword ptr [ebp-4]
 0053A9B7    mov         eax,dword ptr [eax+30C];TfmCpuRam.btWrite:TButton
 0053A9BD    mov         ecx,dword ptr [eax]
 0053A9BF    call        dword ptr [ecx+64];TImage.SetEnabled
 0053A9C2    lea         edx,[ebp-14]
 0053A9C5    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 0053A9CA    mov         eax,dword ptr [eax+2FC];TfmCpuRam.edStart:TLabeledEdit
 0053A9D0    call        TPanel.GetCaption
 0053A9D5    mov         eax,dword ptr [ebp-14]
 0053A9D8    xor         edx,edx
 0053A9DA    call        0040C4A8
 0053A9DF    mov         dword ptr [ebp-8],eax
 0053A9E2    lea         edx,[ebp-18]
 0053A9E5    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 0053A9EA    mov         eax,dword ptr [eax+2F8];TfmCpuRam.edLen:TLabeledEdit
 0053A9F0    call        TPanel.GetCaption
 0053A9F5    mov         eax,dword ptr [ebp-18]
 0053A9F8    xor         edx,edx
 0053A9FA    call        0040C4A8
 0053A9FF    mov         dword ptr [ebp-0C],eax
 0053AA02    mov         edx,dword ptr [ebp-0C]
 0053AA05    mov         eax,dword ptr [ebp-8]
 0053AA08    call        0053A638
 0053AA0D    mov         dl,1
 0053AA0F    mov         eax,dword ptr [ebp-4]
 0053AA12    mov         eax,dword ptr [eax+308];TfmCpuRam.btRead:TButton
 0053AA18    mov         ecx,dword ptr [eax]
 0053AA1A    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AA1D    mov         dl,1
 0053AA1F    mov         eax,dword ptr [ebp-4]
 0053AA22    mov         eax,dword ptr [eax+30C];TfmCpuRam.btWrite:TButton
 0053AA28    mov         ecx,dword ptr [eax]
 0053AA2A    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AA2D    xor         eax,eax
 0053AA2F    pop         edx
 0053AA30    pop         ecx
 0053AA31    pop         ecx
 0053AA32    mov         dword ptr fs:[eax],edx
 0053AA35    push        53AA4F
 0053AA3A    lea         eax,[ebp-18]
 0053AA3D    mov         edx,2
 0053AA42    call        @LStrArrayClr
 0053AA47    ret
>0053AA48    jmp         @HandleFinally
>0053AA4D    jmp         0053AA3A
 0053AA4F    mov         esp,ebp
 0053AA51    pop         ebp
 0053AA52    ret
*}
end;

//0053AA54
procedure TfmCpuRam.btWriteClick(Sender:TObject);
begin
{*
 0053AA54    push        ebp
 0053AA55    mov         ebp,esp
 0053AA57    add         esp,0FFFFFFE8
 0053AA5A    xor         ecx,ecx
 0053AA5C    mov         dword ptr [ebp-18],ecx
 0053AA5F    mov         dword ptr [ebp-14],ecx
 0053AA62    mov         dword ptr [ebp-10],edx
 0053AA65    mov         dword ptr [ebp-4],eax
 0053AA68    xor         eax,eax
 0053AA6A    push        ebp
 0053AA6B    push        53AB1C
 0053AA70    push        dword ptr fs:[eax]
 0053AA73    mov         dword ptr fs:[eax],esp
 0053AA76    xor         edx,edx
 0053AA78    mov         eax,dword ptr [ebp-4]
 0053AA7B    mov         eax,dword ptr [eax+308];TfmCpuRam.btRead:TButton
 0053AA81    mov         ecx,dword ptr [eax]
 0053AA83    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AA86    xor         edx,edx
 0053AA88    mov         eax,dword ptr [ebp-4]
 0053AA8B    mov         eax,dword ptr [eax+30C];TfmCpuRam.btWrite:TButton
 0053AA91    mov         ecx,dword ptr [eax]
 0053AA93    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AA96    lea         edx,[ebp-14]
 0053AA99    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 0053AA9E    mov         eax,dword ptr [eax+2FC];TfmCpuRam.edStart:TLabeledEdit
 0053AAA4    call        TPanel.GetCaption
 0053AAA9    mov         eax,dword ptr [ebp-14]
 0053AAAC    xor         edx,edx
 0053AAAE    call        0040C4A8
 0053AAB3    mov         dword ptr [ebp-8],eax
 0053AAB6    lea         edx,[ebp-18]
 0053AAB9    mov         eax,[0056DDD8];0x0 gvar_0056DDD8:TfmCpuRam
 0053AABE    mov         eax,dword ptr [eax+2F8];TfmCpuRam.edLen:TLabeledEdit
 0053AAC4    call        TPanel.GetCaption
 0053AAC9    mov         eax,dword ptr [ebp-18]
 0053AACC    xor         edx,edx
 0053AACE    call        0040C4A8
 0053AAD3    mov         dword ptr [ebp-0C],eax
 0053AAD6    mov         edx,dword ptr [ebp-0C]
 0053AAD9    mov         eax,dword ptr [ebp-8]
 0053AADC    call        0053A7BC
 0053AAE1    mov         dl,1
 0053AAE3    mov         eax,dword ptr [ebp-4]
 0053AAE6    mov         eax,dword ptr [eax+308];TfmCpuRam.btRead:TButton
 0053AAEC    mov         ecx,dword ptr [eax]
 0053AAEE    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AAF1    mov         dl,1
 0053AAF3    mov         eax,dword ptr [ebp-4]
 0053AAF6    mov         eax,dword ptr [eax+30C];TfmCpuRam.btWrite:TButton
 0053AAFC    mov         ecx,dword ptr [eax]
 0053AAFE    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AB01    xor         eax,eax
 0053AB03    pop         edx
 0053AB04    pop         ecx
 0053AB05    pop         ecx
 0053AB06    mov         dword ptr fs:[eax],edx
 0053AB09    push        53AB23
 0053AB0E    lea         eax,[ebp-18]
 0053AB11    mov         edx,2
 0053AB16    call        @LStrArrayClr
 0053AB1B    ret
>0053AB1C    jmp         @HandleFinally
>0053AB21    jmp         0053AB0E
 0053AB23    mov         esp,ebp
 0053AB25    pop         ebp
 0053AB26    ret
*}
end;

end.