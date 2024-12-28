//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uCreateFile;

interface

uses
  SysUtils, Classes, CheckLst, StdCtrls, ExtCtrls;

type
  TfmCreateFile = class(TForm)
  published
    clMaskBits:TCheckListBox;//f2F8
    btStart:TButton;//f2FC
    edId:TLabeledEdit;//f300
    edLen:TLabeledEdit;//f304
    procedure btStartClick(Sender:TObject);//0054004C
    procedure FormShow(Sender:TObject);//0053FF64
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053F8FC
  end;
    procedure sub_0053F8A8(?:TfmCreateFile; ?:TfmHDD);//0053F8A8
    //procedure sub_0053F924(?:?; ?:?);//0053F924

implementation

{$R *.DFM}

//0053F8A8
procedure sub_0053F8A8(?:TfmCreateFile; ?:TfmHDD);
begin
{*
 0053F8A8    push        ebp
 0053F8A9    mov         ebp,esp
 0053F8AB    add         esp,0FFFFFFF8
 0053F8AE    mov         dword ptr [ebp-8],edx
 0053F8B1    mov         dword ptr [ebp-4],eax
 0053F8B4    cmp         dword ptr ds:[56DE48],0;gvar_0056DE48:TfmCreateFile
>0053F8BB    jne         0053F8D1
 0053F8BD    mov         ecx,dword ptr [ebp-8]
 0053F8C0    mov         dl,1
 0053F8C2    mov         eax,[0053F6B0];TfmCreateFile
 0053F8C7    call        TfmProgress.Create;TfmCreateFile.Create
 0053F8CC    mov         [0056DE48],eax;gvar_0056DE48:TfmCreateFile
 0053F8D1    mov         eax,[0056DE48];0x0 gvar_0056DE48:TfmCreateFile
 0053F8D6    cmp         byte ptr [eax+1A6],0;TfmCreateFile.FShowing:Boolean
>0053F8DD    je          0053F8EE
 0053F8DF    mov         eax,[0056DE48];0x0 gvar_0056DE48:TfmCreateFile
 0053F8E4    mov         edx,dword ptr [eax]
 0053F8E6    call        dword ptr [edx+0C4];TfmCreateFile.sub_004A746C
>0053F8EC    jmp         0053F8F8
 0053F8EE    mov         eax,[0056DE48];0x0 gvar_0056DE48:TfmCreateFile
 0053F8F3    call        004A7450
 0053F8F8    pop         ecx
 0053F8F9    pop         ecx
 0053F8FA    pop         ebp
 0053F8FB    ret
*}
end;

//0053F8FC
procedure TfmCreateFile.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053F8FC    push        ebp
 0053F8FD    mov         ebp,esp
 0053F8FF    add         esp,0FFFFFFF4
 0053F902    mov         dword ptr [ebp-8],ecx
 0053F905    mov         dword ptr [ebp-0C],edx
 0053F908    mov         dword ptr [ebp-4],eax
 0053F90B    mov         eax,[0056E5A4];^gvar_0056DF04
 0053F910    mov         byte ptr [eax],1
 0053F913    xor         eax,eax
 0053F915    mov         [0056DE48],eax;gvar_0056DE48:TfmCreateFile
 0053F91A    mov         eax,dword ptr [ebp-8]
 0053F91D    mov         byte ptr [eax],2
 0053F920    mov         esp,ebp
 0053F922    pop         ebp
 0053F923    ret
*}
end;

//0053F924
{*procedure sub_0053F924(?:?; ?:?);
begin
 0053F924    push        ebp
 0053F925    mov         ebp,esp
 0053F927    add         esp,0FFFFFFF4
 0053F92A    xor         ecx,ecx
 0053F92C    mov         dword ptr [ebp-0C],ecx
 0053F92F    mov         dword ptr [ebp-8],edx
 0053F932    mov         dword ptr [ebp-4],eax
 0053F935    xor         eax,eax
 0053F937    push        ebp
 0053F938    push        53FC27
 0053F93D    push        dword ptr fs:[eax]
 0053F940    mov         dword ptr fs:[eax],esp
 0053F943    mov         eax,dword ptr [ebp-4]
 0053F946    cmp         eax,1F
>0053F949    ja          0053FBFE
 0053F94F    jmp         dword ptr [eax*4+53F956]
 0053F94F    dd          0053F9D6
 0053F94F    dd          0053F9E8
 0053F94F    dd          0053F9FA
 0053F94F    dd          0053FA0C
 0053F94F    dd          0053FA1E
 0053F94F    dd          0053FA30
 0053F94F    dd          0053FA42
 0053F94F    dd          0053FA54
 0053F94F    dd          0053FA66
 0053F94F    dd          0053FA78
 0053F94F    dd          0053FA8A
 0053F94F    dd          0053FA9C
 0053F94F    dd          0053FAAE
 0053F94F    dd          0053FAC0
 0053F94F    dd          0053FAD2
 0053F94F    dd          0053FAE4
 0053F94F    dd          0053FAF6
 0053F94F    dd          0053FB08
 0053F94F    dd          0053FB1A
 0053F94F    dd          0053FB2C
 0053F94F    dd          0053FB3E
 0053F94F    dd          0053FB50
 0053F94F    dd          0053FB62
 0053F94F    dd          0053FB74
 0053F94F    dd          0053FB86
 0053F94F    dd          0053FB95
 0053F94F    dd          0053FBA4
 0053F94F    dd          0053FBB3
 0053F94F    dd          0053FBC2
 0053F94F    dd          0053FBD1
 0053F94F    dd          0053FBE0
 0053F94F    dd          0053FBEF
 0053F9D6    lea         eax,[ebp-0C]
 0053F9D9    mov         edx,53FC3C;'File in Region 0'
 0053F9DE    call        @LStrLAsg
>0053F9E3    jmp         0053FC06
 0053F9E8    lea         eax,[ebp-0C]
 0053F9EB    mov         edx,53FC58;'File in Region 1'
 0053F9F0    call        @LStrLAsg
>0053F9F5    jmp         0053FC06
 0053F9FA    lea         eax,[ebp-0C]
 0053F9FD    mov         edx,53FC74;'File in Region 2'
 0053FA02    call        @LStrLAsg
>0053FA07    jmp         0053FC06
 0053FA0C    lea         eax,[ebp-0C]
 0053FA0F    mov         edx,53FC90;'File in Region 3'
 0053FA14    call        @LStrLAsg
>0053FA19    jmp         0053FC06
 0053FA1E    lea         eax,[ebp-0C]
 0053FA21    mov         edx,53FCAC;'File in Region 4'
 0053FA26    call        @LStrLAsg
>0053FA2B    jmp         0053FC06
 0053FA30    lea         eax,[ebp-0C]
 0053FA33    mov         edx,53FCC8;'File in Region 5'
 0053FA38    call        @LStrLAsg
>0053FA3D    jmp         0053FC06
 0053FA42    lea         eax,[ebp-0C]
 0053FA45    mov         edx,53FCE4;'File in Region 6'
 0053FA4A    call        @LStrLAsg
>0053FA4F    jmp         0053FC06
 0053FA54    lea         eax,[ebp-0C]
 0053FA57    mov         edx,53FD00;'File in Region 7'
 0053FA5C    call        @LStrLAsg
>0053FA61    jmp         0053FC06
 0053FA66    lea         eax,[ebp-0C]
 0053FA69    mov         edx,53FD1C;'File in Flash'
 0053FA6E    call        @LStrLAsg
>0053FA73    jmp         0053FC06
 0053FA78    lea         eax,[ebp-0C]
 0053FA7B    mov         edx,53FD34;'Reserved 9'
 0053FA80    call        @LStrLAsg
>0053FA85    jmp         0053FC06
 0053FA8A    lea         eax,[ebp-0C]
 0053FA8D    mov         edx,53FD48;'File is Read Only'
 0053FA92    call        @LStrLAsg
>0053FA97    jmp         0053FC06
 0053FA9C    lea         eax,[ebp-0C]
 0053FA9F    mov         edx,53FD64;'CheckSum Validation'
 0053FAA4    call        @LStrLAsg
>0053FAA9    jmp         0053FC06
 0053FAAE    lea         eax,[ebp-0C]
 0053FAB1    mov         edx,53FD80;'File Header Exist'
 0053FAB6    call        @LStrLAsg
>0053FABB    jmp         0053FC06
 0053FAC0    lea         eax,[ebp-0C]
 0053FAC3    mov         edx,53FD9C;'File Place Holder'
 0053FAC8    call        @LStrLAsg
>0053FACD    jmp         0053FC06
 0053FAD2    lea         eax,[ebp-0C]
 0053FAD5    mov         edx,53FDB8;'File Static File'
 0053FADA    call        @LStrLAsg
>0053FADF    jmp         0053FC06
 0053FAE4    lea         eax,[ebp-0C]
 0053FAE7    mov         edx,53FDD4;'File is PTM'
 0053FAEC    call        @LStrLAsg
>0053FAF1    jmp         0053FC06
 0053FAF6    lea         eax,[ebp-0C]
 0053FAF9    mov         edx,53FDE8;'File is Super PTM'
 0053FAFE    call        @LStrLAsg
>0053FB03    jmp         0053FC06
 0053FB08    lea         eax,[ebp-0C]
 0053FB0B    mov         edx,53FE04;'File is Transient'
 0053FB10    call        @LStrLAsg
>0053FB15    jmp         0053FC06
 0053FB1A    lea         eax,[ebp-0C]
 0053FB1D    mov         edx,53FE20;'File is file Create'
 0053FB22    call        @LStrLAsg
>0053FB27    jmp         0053FC06
 0053FB2C    lea         eax,[ebp-0C]
 0053FB2F    mov         edx,53FE3C;'File is Preserved'
 0053FB34    call        @LStrLAsg
>0053FB39    jmp         0053FC06
 0053FB3E    lea         eax,[ebp-0C]
 0053FB41    mov         edx,53FE58;'File is Field Code'
 0053FB46    call        @LStrLAsg
>0053FB4B    jmp         0053FC06
 0053FB50    lea         eax,[ebp-0C]
 0053FB53    mov         edx,53FE74;'Create from End flag (Last Avail Space)'
 0053FB58    call        @LStrLAsg
>0053FB5D    jmp         0053FC06
 0053FB62    lea         eax,[ebp-0C]
 0053FB65    mov         edx,53FEA4;'Reserved 22'
 0053FB6A    call        @LStrLAsg
>0053FB6F    jmp         0053FC06
 0053FB74    lea         eax,[ebp-0C]
 0053FB77    mov         edx,53FEB8;'Reserved 23'
 0053FB7C    call        @LStrLAsg
>0053FB81    jmp         0053FC06
 0053FB86    lea         eax,[ebp-0C]
 0053FB89    mov         edx,53FECC;'Reserved 24'
 0053FB8E    call        @LStrLAsg
>0053FB93    jmp         0053FC06
 0053FB95    lea         eax,[ebp-0C]
 0053FB98    mov         edx,53FEE0;'Reserved 25'
 0053FB9D    call        @LStrLAsg
>0053FBA2    jmp         0053FC06
 0053FBA4    lea         eax,[ebp-0C]
 0053FBA7    mov         edx,53FEF4;'Reserved 26'
 0053FBAC    call        @LStrLAsg
>0053FBB1    jmp         0053FC06
 0053FBB3    lea         eax,[ebp-0C]
 0053FBB6    mov         edx,53FF08;'Reserved 27'
 0053FBBB    call        @LStrLAsg
>0053FBC0    jmp         0053FC06
 0053FBC2    lea         eax,[ebp-0C]
 0053FBC5    mov         edx,53FF1C;'Reserved 28'
 0053FBCA    call        @LStrLAsg
>0053FBCF    jmp         0053FC06
 0053FBD1    lea         eax,[ebp-0C]
 0053FBD4    mov         edx,53FF30;'Reserved 29'
 0053FBD9    call        @LStrLAsg
>0053FBDE    jmp         0053FC06
 0053FBE0    lea         eax,[ebp-0C]
 0053FBE3    mov         edx,53FF44;'Reserved 30'
 0053FBE8    call        @LStrLAsg
>0053FBED    jmp         0053FC06
 0053FBEF    lea         eax,[ebp-0C]
 0053FBF2    mov         edx,53FF58;'Reserved 31'
 0053FBF7    call        @LStrLAsg
>0053FBFC    jmp         0053FC06
 0053FBFE    lea         eax,[ebp-0C]
 0053FC01    call        @LStrClr
 0053FC06    mov         eax,dword ptr [ebp-8]
 0053FC09    mov         edx,dword ptr [ebp-0C]
 0053FC0C    call        @LStrAsg
 0053FC11    xor         eax,eax
 0053FC13    pop         edx
 0053FC14    pop         ecx
 0053FC15    pop         ecx
 0053FC16    mov         dword ptr fs:[eax],edx
 0053FC19    push        53FC2E
 0053FC1E    lea         eax,[ebp-0C]
 0053FC21    call        @LStrClr
 0053FC26    ret
>0053FC27    jmp         @HandleFinally
>0053FC2C    jmp         0053FC1E
 0053FC2E    mov         esp,ebp
 0053FC30    pop         ebp
 0053FC31    ret
end;*}

//0053FF64
procedure TfmCreateFile.FormShow(Sender:TObject);
begin
{*
 0053FF64    push        ebp
 0053FF65    mov         ebp,esp
 0053FF67    add         esp,0FFFFFFF0
 0053FF6A    xor         ecx,ecx
 0053FF6C    mov         dword ptr [ebp-10],ecx
 0053FF6F    mov         dword ptr [ebp-0C],edx
 0053FF72    mov         dword ptr [ebp-4],eax
 0053FF75    xor         eax,eax
 0053FF77    push        ebp
 0053FF78    push        540040
 0053FF7D    push        dword ptr fs:[eax]
 0053FF80    mov         dword ptr fs:[eax],esp
 0053FF83    mov         eax,dword ptr [ebp-4]
 0053FF86    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 0053FF8C    mov         edx,dword ptr [eax]
 0053FF8E    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0053FF94    xor         eax,eax
 0053FF96    mov         dword ptr [ebp-8],eax
 0053FF99    lea         edx,[ebp-10]
 0053FF9C    mov         eax,dword ptr [ebp-8]
 0053FF9F    call        0053F924
 0053FFA4    mov         edx,dword ptr [ebp-10]
 0053FFA7    mov         eax,dword ptr [ebp-4]
 0053FFAA    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 0053FFB0    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0053FFB6    mov         ecx,dword ptr [eax]
 0053FFB8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053FFBB    inc         dword ptr [ebp-8]
 0053FFBE    cmp         dword ptr [ebp-8],20
>0053FFC2    jne         0053FF99
 0053FFC4    mov         cl,1
 0053FFC6    xor         edx,edx
 0053FFC8    mov         eax,dword ptr [ebp-4]
 0053FFCB    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 0053FFD1    call        004D2F60
 0053FFD6    mov         cl,1
 0053FFD8    mov         edx,1
 0053FFDD    mov         eax,dword ptr [ebp-4]
 0053FFE0    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 0053FFE6    call        004D2F60
 0053FFEB    mov         cl,1
 0053FFED    mov         edx,0B
 0053FFF2    mov         eax,dword ptr [ebp-4]
 0053FFF5    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 0053FFFB    call        004D2F60
 00540000    mov         cl,1
 00540002    mov         edx,0C
 00540007    mov         eax,dword ptr [ebp-4]
 0054000A    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 00540010    call        004D2F60
 00540015    mov         cl,1
 00540017    mov         edx,12
 0054001C    mov         eax,dword ptr [ebp-4]
 0054001F    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 00540025    call        004D2F60
 0054002A    xor         eax,eax
 0054002C    pop         edx
 0054002D    pop         ecx
 0054002E    pop         ecx
 0054002F    mov         dword ptr fs:[eax],edx
 00540032    push        540047
 00540037    lea         eax,[ebp-10]
 0054003A    call        @LStrClr
 0054003F    ret
>00540040    jmp         @HandleFinally
>00540045    jmp         00540037
 00540047    mov         esp,ebp
 00540049    pop         ebp
 0054004A    ret
*}
end;

//0054004C
procedure TfmCreateFile.btStartClick(Sender:TObject);
begin
{*
 0054004C    push        ebp
 0054004D    mov         ebp,esp
 0054004F    mov         ecx,6
 00540054    push        0
 00540056    push        0
 00540058    dec         ecx
>00540059    jne         00540054
 0054005B    push        ecx
 0054005C    mov         dword ptr [ebp-14],edx
 0054005F    mov         dword ptr [ebp-4],eax
 00540062    xor         eax,eax
 00540064    push        ebp
 00540065    push        5401E4
 0054006A    push        dword ptr fs:[eax]
 0054006D    mov         dword ptr fs:[eax],esp
 00540070    xor         eax,eax
 00540072    mov         dword ptr [ebp-0C],eax
 00540075    xor         eax,eax
 00540077    mov         dword ptr [ebp-8],eax
 0054007A    mov         edx,dword ptr [ebp-8]
 0054007D    mov         eax,dword ptr [ebp-4]
 00540080    mov         eax,dword ptr [eax+2F8];TfmCreateFile.clMaskBits:TCheckListBox
 00540086    call        004D3074
 0054008B    test        al,al
>0054008D    je          0054009E
 0054008F    mov         ecx,dword ptr [ebp-8]
 00540092    mov         eax,1
 00540097    shl         eax,cl
 00540099    or          dword ptr [ebp-0C],eax
>0054009C    jmp         005400AD
 0054009E    mov         ecx,dword ptr [ebp-8]
 005400A1    mov         eax,1
 005400A6    shl         eax,cl
 005400A8    not         eax
 005400AA    and         dword ptr [ebp-0C],eax
 005400AD    inc         dword ptr [ebp-8]
 005400B0    cmp         dword ptr [ebp-8],20
>005400B4    jne         0054007A
 005400B6    lea         edx,[ebp-18]
 005400B9    mov         eax,dword ptr [ebp-4]
 005400BC    mov         eax,dword ptr [eax+304];TfmCreateFile.edLen:TLabeledEdit
 005400C2    call        TPanel.GetCaption
 005400C7    mov         eax,dword ptr [ebp-18]
 005400CA    xor         edx,edx
 005400CC    call        0040C4A8
 005400D1    mov         word ptr [ebp-0E],ax
 005400D5    lea         edx,[ebp-1C]
 005400D8    mov         eax,dword ptr [ebp-4]
 005400DB    mov         eax,dword ptr [eax+300];TfmCreateFile.edId:TLabeledEdit
 005400E1    call        TPanel.GetCaption
 005400E6    mov         eax,dword ptr [ebp-1C]
 005400E9    xor         edx,edx
 005400EB    call        0040C4A8
 005400F0    mov         word ptr [ebp-10],ax
 005400F4    push        0
 005400F6    push        5401F8;'Create Module '
 005400FB    lea         ecx,[ebp-24]
 005400FE    movzx       eax,word ptr [ebp-10]
 00540102    mov         edx,4
 00540107    call        IntToHex
 0054010C    push        dword ptr [ebp-24]
 0054010F    push        540210;'!'+#10+Are You sure?'
 00540114    lea         eax,[ebp-20]
 00540117    mov         edx,3
 0054011C    call        @LStrCatN
 00540121    mov         eax,dword ptr [ebp-20]
 00540124    mov         cx,word ptr ds:[540220];0x3 gvar_00540220
 0054012B    xor         edx,edx
 0054012D    call        0043F788
 00540132    cmp         eax,6
>00540135    jne         005401BC
 0054013B    mov         cx,word ptr [ebp-0E]
 0054013F    mov         edx,dword ptr [ebp-0C]
 00540142    mov         ax,word ptr [ebp-10]
 00540146    call        004CFC1C
 0054014B    test        al,al
>0054014D    je          00540184
 0054014F    push        5401F8;'Create Module '
 00540154    lea         ecx,[ebp-2C]
 00540157    movzx       eax,word ptr [ebp-10]
 0054015B    mov         edx,4
 00540160    call        IntToHex
 00540165    push        dword ptr [ebp-2C]
 00540168    push        54022C;' - OK'
 0054016D    lea         eax,[ebp-28]
 00540170    mov         edx,3
 00540175    call        @LStrCatN
 0054017A    mov         eax,dword ptr [ebp-28]
 0054017D    call        00544EB4
>00540182    jmp         005401BC
 00540184    call        004CEB6C
 00540189    push        5401F8;'Create Module '
 0054018E    lea         ecx,[ebp-34]
 00540191    movzx       eax,word ptr [ebp-10]
 00540195    mov         edx,4
 0054019A    call        IntToHex
 0054019F    push        dword ptr [ebp-34]
 005401A2    push        54023C;' - '
 005401A7    lea         eax,[ebp-30]
 005401AA    mov         edx,3
 005401AF    call        @LStrCatN
 005401B4    mov         eax,dword ptr [ebp-30]
 005401B7    call        00544F6C
 005401BC    xor         eax,eax
 005401BE    pop         edx
 005401BF    pop         ecx
 005401C0    pop         ecx
 005401C1    mov         dword ptr fs:[eax],edx
 005401C4    push        5401EB
 005401C9    lea         eax,[ebp-34]
 005401CC    mov         edx,6
 005401D1    call        @LStrArrayClr
 005401D6    lea         eax,[ebp-1C]
 005401D9    mov         edx,2
 005401DE    call        @LStrArrayClr
 005401E3    ret
>005401E4    jmp         @HandleFinally
>005401E9    jmp         005401C9
 005401EB    mov         esp,ebp
 005401ED    pop         ebp
 005401EE    ret
*}
end;

end.