//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uFlistEditor;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls, Menus;

type
  TfmFList = class(TForm)
  published
    edName1hd:TLabeledEdit;//f2F8
    StaticText1:TStaticText;//f2FC
    edName2hd:TLabeledEdit;//f300
    edName3hd:TLabeledEdit;//f304
    edName4hd:TLabeledEdit;//f308
    edName5hd:TLabeledEdit;//f30C
    edName6hd:TLabeledEdit;//f310
    edName7hd:TLabeledEdit;//f314
    edName8hd:TLabeledEdit;//f318
    edLba1hd:TEdit;//f31C
    StaticText2:TStaticText;//f320
    edLba2hd:TEdit;//f324
    edLba3hd:TEdit;//f328
    edLba4hd:TEdit;//f32C
    edLba5hd:TEdit;//f330
    edLba6hd:TEdit;//f334
    edLba7hd:TEdit;//f338
    edLba8hd:TEdit;//f33C
    btWrite:TButton;//f340
    btRead:TButton;//f344
    cbGroup:TComboBox;//f348
    btAuto:TButton;//f34C
    pmFromHeads:TPopupMenu;//f350
    miFromHead1:TMenuItem;//f354
    miFromHead2:TMenuItem;//f358
    miFromHead3:TMenuItem;//f35C
    miFromHead4:TMenuItem;//f360
    miFromHead5:TMenuItem;//f364
    miFromHead6:TMenuItem;//f368
    miFromHead7:TMenuItem;//f36C
    miFromHead8:TMenuItem;//f370
    procedure miFromHead3Click(Sender:TObject);//005431A4
    procedure miFromHead2Click(Sender:TObject);//00543134
    procedure miFromHead1Click(Sender:TObject);//005430CC
    procedure miFromHead5Click(Sender:TObject);//00543284
    procedure miFromHead8Click(Sender:TObject);//005433D4
    procedure miFromHead7Click(Sender:TObject);//00543364
    procedure miFromHead6Click(Sender:TObject);//005432F4
    procedure btReadClick(Sender:TObject);//00542130
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00542108
    procedure FormShow(Sender:TObject);//005420AC
    //procedure cbGroupChange(?:?);//00542738
    procedure miFromHead4Click(Sender:TObject);//00543214
    procedure btAutoClick(Sender:TObject);//00542DE4
    procedure btWriteClick(Sender:TObject);//00542754
  end;
    procedure sub_00542058(?:TfmFList; ?:TfmHDD);//00542058
    //procedure sub_00542E2C(?:TfmFList; ?:?; ?:?);//00542E2C

implementation

{$R *.DFM}

//00542058
procedure sub_00542058(?:TfmFList; ?:TfmHDD);
begin
{*
 00542058    push        ebp
 00542059    mov         ebp,esp
 0054205B    add         esp,0FFFFFFF8
 0054205E    mov         dword ptr [ebp-8],edx
 00542061    mov         dword ptr [ebp-4],eax
 00542064    cmp         dword ptr ds:[56DE70],0;gvar_0056DE70:TfmFList
>0054206B    jne         00542081
 0054206D    mov         ecx,dword ptr [ebp-8]
 00542070    mov         dl,1
 00542072    mov         eax,[00541BA8];TfmFList
 00542077    call        TfmProgress.Create;TfmFList.Create
 0054207C    mov         [0056DE70],eax;gvar_0056DE70:TfmFList
 00542081    mov         eax,[0056DE70];0x0 gvar_0056DE70:TfmFList
 00542086    cmp         byte ptr [eax+1A6],0;TfmFList.FShowing:Boolean
>0054208D    je          0054209E
 0054208F    mov         eax,[0056DE70];0x0 gvar_0056DE70:TfmFList
 00542094    mov         edx,dword ptr [eax]
 00542096    call        dword ptr [edx+0C4];TfmFList.sub_004A746C
>0054209C    jmp         005420A8
 0054209E    mov         eax,[0056DE70];0x0 gvar_0056DE70:TfmFList
 005420A3    call        004A7450
 005420A8    pop         ecx
 005420A9    pop         ecx
 005420AA    pop         ebp
 005420AB    ret
*}
end;

//005420AC
procedure TfmFList.FormShow(Sender:TObject);
begin
{*
 005420AC    push        ebp
 005420AD    mov         ebp,esp
 005420AF    add         esp,0FFFFFFF4
 005420B2    mov         dword ptr [ebp-0C],edx
 005420B5    mov         dword ptr [ebp-4],eax
 005420B8    mov         eax,[0056E284];^gvar_0056DF34
 005420BD    mov         eax,dword ptr [eax]
 005420BF    mov         eax,dword ptr [eax+408]
 005420C5    cmp         byte ptr [eax+38],0
>005420C9    je          00542103
 005420CB    call        004CF538
 005420D0    mov         byte ptr [ebp-5],al
 005420D3    cmp         byte ptr [ebp-5],0FF
>005420D7    je          00542103
 005420D9    mov         eax,[0056E5A4];^gvar_0056DF04
 005420DE    cmp         byte ptr [eax],0
>005420E1    jne         00542103
 005420E3    xor         edx,edx
 005420E5    mov         dl,byte ptr [ebp-5]
 005420E8    mov         eax,dword ptr [ebp-4]
 005420EB    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 005420F1    mov         ecx,dword ptr [eax]
 005420F3    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 005420F9    xor         edx,edx
 005420FB    mov         eax,dword ptr [ebp-4]
 005420FE    call        TfmFList.btReadClick
 00542103    mov         esp,ebp
 00542105    pop         ebp
 00542106    ret
*}
end;

//00542108
procedure TfmFList.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00542108    push        ebp
 00542109    mov         ebp,esp
 0054210B    add         esp,0FFFFFFF4
 0054210E    mov         dword ptr [ebp-8],ecx
 00542111    mov         dword ptr [ebp-0C],edx
 00542114    mov         dword ptr [ebp-4],eax
 00542117    xor         eax,eax
 00542119    mov         [0056DE70],eax;gvar_0056DE70:TfmFList
 0054211E    mov         eax,[0056E5A4];^gvar_0056DF04
 00542123    mov         byte ptr [eax],1
 00542126    mov         eax,dword ptr [ebp-8]
 00542129    mov         byte ptr [eax],2
 0054212C    mov         esp,ebp
 0054212E    pop         ebp
 0054212F    ret
*}
end;

//00542130
procedure TfmFList.btReadClick(Sender:TObject);
begin
{*
 00542130    push        ebp
 00542131    mov         ebp,esp
 00542133    mov         ecx,5B
 00542138    push        0
 0054213A    push        0
 0054213C    dec         ecx
>0054213D    jne         00542138
 0054213F    push        ebx
 00542140    mov         dword ptr [ebp-24],edx
 00542143    mov         dword ptr [ebp-4],eax
 00542146    mov         ecx,51
 0054214B    lea         eax,[ebp-16C]
 00542151    mov         edx,dword ptr ds:[4010C0];String
 00542157    call        @AddRefArray
 0054215C    xor         eax,eax
 0054215E    push        ebp
 0054215F    push        5426EF
 00542164    push        dword ptr fs:[eax]
 00542167    mov         dword ptr fs:[eax],esp
 0054216A    mov         eax,dword ptr [ebp-4]
 0054216D    mov         eax,dword ptr [eax+344];TfmFList.btRead:TButton
 00542173    xor         edx,edx
 00542175    mov         ecx,dword ptr [eax]
 00542177    call        dword ptr [ecx+64];TImage.SetEnabled
 0054217A    mov         eax,dword ptr [ebp-4]
 0054217D    mov         eax,dword ptr [eax+340];TfmFList.btWrite:TButton
 00542183    xor         edx,edx
 00542185    mov         ecx,dword ptr [eax]
 00542187    call        dword ptr [ecx+64];TImage.SetEnabled
 0054218A    mov         eax,dword ptr [ebp-4]
 0054218D    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 00542193    xor         edx,edx
 00542195    mov         ecx,dword ptr [eax]
 00542197    call        dword ptr [ecx+64];TImage.SetEnabled
 0054219A    mov         dl,1
 0054219C    mov         eax,[0041DE14];TMemoryStream
 005421A1    call        TObject.Create;TMemoryStream.Create
 005421A6    mov         dword ptr [ebp-8],eax
 005421A9    xor         eax,eax
 005421AB    push        ebp
 005421AC    push        542674
 005421B1    push        dword ptr fs:[eax]
 005421B4    mov         dword ptr fs:[eax],esp
 005421B7    mov         eax,dword ptr [ebp-4]
 005421BA    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 005421C0    mov         edx,dword ptr [eax]
 005421C2    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 005421C8    inc         eax
 005421C9    mov         dword ptr [ebp-14],eax
 005421CC    push        0
 005421CE    mov         eax,dword ptr [ebp-8]
 005421D1    push        eax
 005421D2    xor         ecx,ecx
 005421D4    mov         dx,word ptr [ebp-14]
 005421D8    xor         eax,eax
 005421DA    call        004D1570
 005421DF    test        al,al
>005421E1    je          005422BE
 005421E7    xor         ecx,ecx
 005421E9    xor         edx,edx
 005421EB    mov         eax,dword ptr [ebp-8]
 005421EE    mov         ebx,dword ptr [eax]
 005421F0    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005421F3    mov         dword ptr [ebp-18],1
 005421FA    lea         eax,[ebp-10]
 005421FD    mov         edx,542704;'                          '
 00542202    call        @LStrLAsg
 00542207    lea         eax,[ebp-10]
 0054220A    call        00405598
 0054220F    mov         edx,eax
 00542211    mov         ecx,18
 00542216    mov         eax,dword ptr [ebp-8]
 00542219    call        TStream.ReadBuffer
 0054221E    lea         edx,[ebp-2B4]
 00542224    mov         eax,dword ptr [ebp-10]
 00542227    call        0040BFEC
 0054222C    mov         edx,dword ptr [ebp-2B4]
 00542232    lea         eax,[ebp-10]
 00542235    call        @LStrLAsg
 0054223A    mov         eax,dword ptr [ebp-10]
 0054223D    call        @LStrLen
 00542242    dec         eax
 00542243    test        eax,eax
>00542245    jle         00542283
 00542247    mov         dword ptr [ebp-20],eax
 0054224A    mov         dword ptr [ebp-1C],1
 00542251    mov         eax,dword ptr [ebp-10]
 00542254    mov         edx,dword ptr [ebp-1C]
 00542257    cmp         byte ptr [eax+edx-1],20
>0054225C    jb          0054226B
 0054225E    mov         eax,dword ptr [ebp-10]
 00542261    mov         edx,dword ptr [ebp-1C]
 00542264    cmp         byte ptr [eax+edx-1],7F
>00542269    jbe         0054227B
 0054226B    lea         eax,[ebp-10]
 0054226E    call        00405598
 00542273    mov         edx,dword ptr [ebp-1C]
 00542276    mov         byte ptr [eax+edx-1],20
 0054227B    inc         dword ptr [ebp-1C]
 0054227E    dec         dword ptr [ebp-20]
>00542281    jne         00542251
 00542283    lea         edx,[ebp-2B8]
 00542289    mov         eax,dword ptr [ebp-10]
 0054228C    call        0040BFEC
 00542291    mov         edx,dword ptr [ebp-2B8]
 00542297    mov         eax,dword ptr [ebp-18]
 0054229A    lea         eax,[eax+eax*8]
 0054229D    lea         eax,[ebp+eax*4-16C]
 005422A4    mov         ecx,dword ptr [ebp-14]
 005422A7    lea         eax,[eax+ecx*4]
 005422AA    call        @LStrLAsg
 005422AF    inc         dword ptr [ebp-18]
 005422B2    cmp         dword ptr [ebp-18],9
>005422B6    jne         005421FA
>005422BC    jmp         005422CD
 005422BE    call        004CEB6C
 005422C3    mov         eax,542728;'Get Field - '
 005422C8    call        00544F6C
 005422CD    push        0
 005422CF    mov         eax,dword ptr [ebp-8]
 005422D2    push        eax
 005422D3    mov         dx,word ptr [ebp-14]
 005422D7    add         dx,6
 005422DB    xor         ecx,ecx
 005422DD    xor         eax,eax
 005422DF    call        004D1570
 005422E4    test        al,al
>005422E6    je          0054232C
 005422E8    xor         ecx,ecx
 005422EA    xor         edx,edx
 005422EC    mov         eax,dword ptr [ebp-8]
 005422EF    mov         ebx,dword ptr [eax]
 005422F1    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005422F4    mov         dword ptr [ebp-18],1
 005422FB    lea         edx,[ebp-0C]
 005422FE    mov         ecx,4
 00542303    mov         eax,dword ptr [ebp-8]
 00542306    call        TStream.ReadBuffer
 0054230B    mov         eax,dword ptr [ebp-18]
 0054230E    lea         eax,[eax+eax*8]
 00542311    lea         eax,[ebp+eax*4-2B0]
 00542318    mov         edx,dword ptr [ebp-14]
 0054231B    mov         ecx,dword ptr [ebp-0C]
 0054231E    mov         dword ptr [eax+edx*4],ecx
 00542321    inc         dword ptr [ebp-18]
 00542324    cmp         dword ptr [ebp-18],9
>00542328    jne         005422FB
>0054232A    jmp         0054233B
 0054232C    call        004CEB6C
 00542331    mov         eax,542728;'Get Field - '
 00542336    call        00544F6C
 0054233B    mov         dword ptr [ebp-18],1
 00542342    mov         eax,dword ptr [ebp-18]
 00542345    cmp         eax,8
>00542348    ja          00542651
 0054234E    jmp         dword ptr [eax*4+542355]
 0054234E    dd          00542651
 0054234E    dd          00542379
 0054234E    dd          005423D5
 0054234E    dd          00542431
 0054234E    dd          0054248D
 0054234E    dd          005424E9
 0054234E    dd          00542545
 0054234E    dd          005425A1
 0054234E    dd          005425FA
 00542379    mov         eax,dword ptr [ebp-18]
 0054237C    lea         eax,[eax+eax*8]
 0054237F    lea         eax,[ebp+eax*4-16C]
 00542386    mov         edx,dword ptr [ebp-14]
 00542389    mov         edx,dword ptr [eax+edx*4]
 0054238C    mov         eax,dword ptr [ebp-4]
 0054238F    mov         eax,dword ptr [eax+2F8];TfmFList.edName1hd:TLabeledEdit
 00542395    call        TPanel.SetCaption
 0054239A    mov         eax,dword ptr [ebp-18]
 0054239D    lea         eax,[eax+eax*8]
 005423A0    lea         eax,[ebp+eax*4-2B0]
 005423A7    mov         edx,dword ptr [ebp-14]
 005423AA    mov         eax,dword ptr [eax+edx*4]
 005423AD    xor         edx,edx
 005423AF    push        edx
 005423B0    push        eax
 005423B1    lea         eax,[ebp-2BC]
 005423B7    call        IntToStr
 005423BC    mov         edx,dword ptr [ebp-2BC]
 005423C2    mov         eax,dword ptr [ebp-4]
 005423C5    mov         eax,dword ptr [eax+31C];TfmFList.edLba1hd:TEdit
 005423CB    call        TPanel.SetCaption
>005423D0    jmp         00542651
 005423D5    mov         eax,dword ptr [ebp-18]
 005423D8    lea         eax,[eax+eax*8]
 005423DB    lea         eax,[ebp+eax*4-16C]
 005423E2    mov         edx,dword ptr [ebp-14]
 005423E5    mov         edx,dword ptr [eax+edx*4]
 005423E8    mov         eax,dword ptr [ebp-4]
 005423EB    mov         eax,dword ptr [eax+300];TfmFList.edName2hd:TLabeledEdit
 005423F1    call        TPanel.SetCaption
 005423F6    mov         eax,dword ptr [ebp-18]
 005423F9    lea         eax,[eax+eax*8]
 005423FC    lea         eax,[ebp+eax*4-2B0]
 00542403    mov         edx,dword ptr [ebp-14]
 00542406    mov         eax,dword ptr [eax+edx*4]
 00542409    xor         edx,edx
 0054240B    push        edx
 0054240C    push        eax
 0054240D    lea         eax,[ebp-2C0]
 00542413    call        IntToStr
 00542418    mov         edx,dword ptr [ebp-2C0]
 0054241E    mov         eax,dword ptr [ebp-4]
 00542421    mov         eax,dword ptr [eax+324];TfmFList.edLba2hd:TEdit
 00542427    call        TPanel.SetCaption
>0054242C    jmp         00542651
 00542431    mov         eax,dword ptr [ebp-18]
 00542434    lea         eax,[eax+eax*8]
 00542437    lea         eax,[ebp+eax*4-16C]
 0054243E    mov         edx,dword ptr [ebp-14]
 00542441    mov         edx,dword ptr [eax+edx*4]
 00542444    mov         eax,dword ptr [ebp-4]
 00542447    mov         eax,dword ptr [eax+304];TfmFList.edName3hd:TLabeledEdit
 0054244D    call        TPanel.SetCaption
 00542452    mov         eax,dword ptr [ebp-18]
 00542455    lea         eax,[eax+eax*8]
 00542458    lea         eax,[ebp+eax*4-2B0]
 0054245F    mov         edx,dword ptr [ebp-14]
 00542462    mov         eax,dword ptr [eax+edx*4]
 00542465    xor         edx,edx
 00542467    push        edx
 00542468    push        eax
 00542469    lea         eax,[ebp-2C4]
 0054246F    call        IntToStr
 00542474    mov         edx,dword ptr [ebp-2C4]
 0054247A    mov         eax,dword ptr [ebp-4]
 0054247D    mov         eax,dword ptr [eax+328];TfmFList.edLba3hd:TEdit
 00542483    call        TPanel.SetCaption
>00542488    jmp         00542651
 0054248D    mov         eax,dword ptr [ebp-18]
 00542490    lea         eax,[eax+eax*8]
 00542493    lea         eax,[ebp+eax*4-16C]
 0054249A    mov         edx,dword ptr [ebp-14]
 0054249D    mov         edx,dword ptr [eax+edx*4]
 005424A0    mov         eax,dword ptr [ebp-4]
 005424A3    mov         eax,dword ptr [eax+308];TfmFList.edName4hd:TLabeledEdit
 005424A9    call        TPanel.SetCaption
 005424AE    mov         eax,dword ptr [ebp-18]
 005424B1    lea         eax,[eax+eax*8]
 005424B4    lea         eax,[ebp+eax*4-2B0]
 005424BB    mov         edx,dword ptr [ebp-14]
 005424BE    mov         eax,dword ptr [eax+edx*4]
 005424C1    xor         edx,edx
 005424C3    push        edx
 005424C4    push        eax
 005424C5    lea         eax,[ebp-2C8]
 005424CB    call        IntToStr
 005424D0    mov         edx,dword ptr [ebp-2C8]
 005424D6    mov         eax,dword ptr [ebp-4]
 005424D9    mov         eax,dword ptr [eax+32C];TfmFList.edLba4hd:TEdit
 005424DF    call        TPanel.SetCaption
>005424E4    jmp         00542651
 005424E9    mov         eax,dword ptr [ebp-18]
 005424EC    lea         eax,[eax+eax*8]
 005424EF    lea         eax,[ebp+eax*4-16C]
 005424F6    mov         edx,dword ptr [ebp-14]
 005424F9    mov         edx,dword ptr [eax+edx*4]
 005424FC    mov         eax,dword ptr [ebp-4]
 005424FF    mov         eax,dword ptr [eax+30C];TfmFList.edName5hd:TLabeledEdit
 00542505    call        TPanel.SetCaption
 0054250A    mov         eax,dword ptr [ebp-18]
 0054250D    lea         eax,[eax+eax*8]
 00542510    lea         eax,[ebp+eax*4-2B0]
 00542517    mov         edx,dword ptr [ebp-14]
 0054251A    mov         eax,dword ptr [eax+edx*4]
 0054251D    xor         edx,edx
 0054251F    push        edx
 00542520    push        eax
 00542521    lea         eax,[ebp-2CC]
 00542527    call        IntToStr
 0054252C    mov         edx,dword ptr [ebp-2CC]
 00542532    mov         eax,dword ptr [ebp-4]
 00542535    mov         eax,dword ptr [eax+330];TfmFList.edLba5hd:TEdit
 0054253B    call        TPanel.SetCaption
>00542540    jmp         00542651
 00542545    mov         eax,dword ptr [ebp-18]
 00542548    lea         eax,[eax+eax*8]
 0054254B    lea         eax,[ebp+eax*4-16C]
 00542552    mov         edx,dword ptr [ebp-14]
 00542555    mov         edx,dword ptr [eax+edx*4]
 00542558    mov         eax,dword ptr [ebp-4]
 0054255B    mov         eax,dword ptr [eax+310];TfmFList.edName6hd:TLabeledEdit
 00542561    call        TPanel.SetCaption
 00542566    mov         eax,dword ptr [ebp-18]
 00542569    lea         eax,[eax+eax*8]
 0054256C    lea         eax,[ebp+eax*4-2B0]
 00542573    mov         edx,dword ptr [ebp-14]
 00542576    mov         eax,dword ptr [eax+edx*4]
 00542579    xor         edx,edx
 0054257B    push        edx
 0054257C    push        eax
 0054257D    lea         eax,[ebp-2D0]
 00542583    call        IntToStr
 00542588    mov         edx,dword ptr [ebp-2D0]
 0054258E    mov         eax,dword ptr [ebp-4]
 00542591    mov         eax,dword ptr [eax+334];TfmFList.edLba6hd:TEdit
 00542597    call        TPanel.SetCaption
>0054259C    jmp         00542651
 005425A1    mov         eax,dword ptr [ebp-18]
 005425A4    lea         eax,[eax+eax*8]
 005425A7    lea         eax,[ebp+eax*4-16C]
 005425AE    mov         edx,dword ptr [ebp-14]
 005425B1    mov         edx,dword ptr [eax+edx*4]
 005425B4    mov         eax,dword ptr [ebp-4]
 005425B7    mov         eax,dword ptr [eax+314];TfmFList.edName7hd:TLabeledEdit
 005425BD    call        TPanel.SetCaption
 005425C2    mov         eax,dword ptr [ebp-18]
 005425C5    lea         eax,[eax+eax*8]
 005425C8    lea         eax,[ebp+eax*4-2B0]
 005425CF    mov         edx,dword ptr [ebp-14]
 005425D2    mov         eax,dword ptr [eax+edx*4]
 005425D5    xor         edx,edx
 005425D7    push        edx
 005425D8    push        eax
 005425D9    lea         eax,[ebp-2D4]
 005425DF    call        IntToStr
 005425E4    mov         edx,dword ptr [ebp-2D4]
 005425EA    mov         eax,dword ptr [ebp-4]
 005425ED    mov         eax,dword ptr [eax+338];TfmFList.edLba7hd:TEdit
 005425F3    call        TPanel.SetCaption
>005425F8    jmp         00542651
 005425FA    mov         eax,dword ptr [ebp-18]
 005425FD    lea         eax,[eax+eax*8]
 00542600    lea         eax,[ebp+eax*4-16C]
 00542607    mov         edx,dword ptr [ebp-14]
 0054260A    mov         edx,dword ptr [eax+edx*4]
 0054260D    mov         eax,dword ptr [ebp-4]
 00542610    mov         eax,dword ptr [eax+318];TfmFList.edName8hd:TLabeledEdit
 00542616    call        TPanel.SetCaption
 0054261B    mov         eax,dword ptr [ebp-18]
 0054261E    lea         eax,[eax+eax*8]
 00542621    lea         eax,[ebp+eax*4-2B0]
 00542628    mov         edx,dword ptr [ebp-14]
 0054262B    mov         eax,dword ptr [eax+edx*4]
 0054262E    xor         edx,edx
 00542630    push        edx
 00542631    push        eax
 00542632    lea         eax,[ebp-2D8]
 00542638    call        IntToStr
 0054263D    mov         edx,dword ptr [ebp-2D8]
 00542643    mov         eax,dword ptr [ebp-4]
 00542646    mov         eax,dword ptr [eax+33C];TfmFList.edLba8hd:TEdit
 0054264C    call        TPanel.SetCaption
 00542651    inc         dword ptr [ebp-18]
 00542654    cmp         dword ptr [ebp-18],9
>00542658    jne         00542342
 0054265E    xor         eax,eax
 00542660    pop         edx
 00542661    pop         ecx
 00542662    pop         ecx
 00542663    mov         dword ptr fs:[eax],edx
 00542666    push        54267B
 0054266B    mov         eax,dword ptr [ebp-8]
 0054266E    call        TObject.Free
 00542673    ret
>00542674    jmp         @HandleFinally
>00542679    jmp         0054266B
 0054267B    mov         eax,dword ptr [ebp-4]
 0054267E    mov         eax,dword ptr [eax+344];TfmFList.btRead:TButton
 00542684    mov         dl,1
 00542686    mov         ecx,dword ptr [eax]
 00542688    call        dword ptr [ecx+64];TImage.SetEnabled
 0054268B    mov         eax,dword ptr [ebp-4]
 0054268E    mov         eax,dword ptr [eax+340];TfmFList.btWrite:TButton
 00542694    mov         dl,1
 00542696    mov         ecx,dword ptr [eax]
 00542698    call        dword ptr [ecx+64];TImage.SetEnabled
 0054269B    mov         eax,dword ptr [ebp-4]
 0054269E    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 005426A4    mov         dl,1
 005426A6    mov         ecx,dword ptr [eax]
 005426A8    call        dword ptr [ecx+64];TImage.SetEnabled
 005426AB    xor         eax,eax
 005426AD    pop         edx
 005426AE    pop         ecx
 005426AF    pop         ecx
 005426B0    mov         dword ptr fs:[eax],edx
 005426B3    push        5426F6
 005426B8    lea         eax,[ebp-2D8]
 005426BE    mov         edx,0A
 005426C3    call        @LStrArrayClr
 005426C8    lea         eax,[ebp-16C]
 005426CE    mov         ecx,51
 005426D3    mov         edx,dword ptr ds:[4010C0];String
 005426D9    call        @FinalizeArray
 005426DE    lea         eax,[ebp-28]
 005426E1    call        @LStrClr
 005426E6    lea         eax,[ebp-10]
 005426E9    call        @LStrClr
 005426EE    ret
>005426EF    jmp         @HandleFinally
>005426F4    jmp         005426B8
 005426F6    pop         ebx
 005426F7    mov         esp,ebp
 005426F9    pop         ebp
 005426FA    ret
*}
end;

//00542738
{*procedure TfmFList.cbGroupChange(?:?);
begin
 00542738    push        ebp
 00542739    mov         ebp,esp
 0054273B    add         esp,0FFFFFFF8
 0054273E    mov         dword ptr [ebp-8],edx
 00542741    mov         dword ptr [ebp-4],eax
 00542744    xor         edx,edx
 00542746    mov         eax,dword ptr [ebp-4]
 00542749    call        TfmFList.btReadClick
 0054274E    pop         ecx
 0054274F    pop         ecx
 00542750    pop         ebp
 00542751    ret
end;*}

//00542754
procedure TfmFList.btWriteClick(Sender:TObject);
begin
{*
 00542754    push        ebp
 00542755    mov         ebp,esp
 00542757    mov         ecx,5D
 0054275C    push        0
 0054275E    push        0
 00542760    dec         ecx
>00542761    jne         0054275C
 00542763    push        ecx
 00542764    push        ebx
 00542765    mov         dword ptr [ebp-1C],edx
 00542768    mov         dword ptr [ebp-4],eax
 0054276B    mov         ecx,51
 00542770    lea         eax,[ebp-168]
 00542776    mov         edx,dword ptr ds:[4010C0];String
 0054277C    call        @AddRefArray
 00542781    xor         eax,eax
 00542783    push        ebp
 00542784    push        542D99
 00542789    push        dword ptr fs:[eax]
 0054278C    mov         dword ptr fs:[eax],esp
 0054278F    mov         eax,dword ptr [ebp-4]
 00542792    mov         eax,dword ptr [eax+344];TfmFList.btRead:TButton
 00542798    xor         edx,edx
 0054279A    mov         ecx,dword ptr [eax]
 0054279C    call        dword ptr [ecx+64];TImage.SetEnabled
 0054279F    mov         eax,dword ptr [ebp-4]
 005427A2    mov         eax,dword ptr [eax+340];TfmFList.btWrite:TButton
 005427A8    xor         edx,edx
 005427AA    mov         ecx,dword ptr [eax]
 005427AC    call        dword ptr [ecx+64];TImage.SetEnabled
 005427AF    mov         eax,dword ptr [ebp-4]
 005427B2    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 005427B8    xor         edx,edx
 005427BA    mov         ecx,dword ptr [eax]
 005427BC    call        dword ptr [ecx+64];TImage.SetEnabled
 005427BF    mov         dl,1
 005427C1    mov         eax,[0041DE14];TMemoryStream
 005427C6    call        TObject.Create;TMemoryStream.Create
 005427CB    mov         dword ptr [ebp-8],eax
 005427CE    xor         eax,eax
 005427D0    push        ebp
 005427D1    push        542D1E
 005427D6    push        dword ptr fs:[eax]
 005427D9    mov         dword ptr fs:[eax],esp
 005427DC    mov         eax,dword ptr [ebp-4]
 005427DF    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 005427E5    mov         edx,dword ptr [eax]
 005427E7    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 005427ED    inc         eax
 005427EE    mov         dword ptr [ebp-14],eax
 005427F1    mov         dword ptr [ebp-18],1
 005427F8    mov         eax,dword ptr [ebp-18]
 005427FB    cmp         eax,8
>005427FE    ja          00542B8F
 00542804    jmp         dword ptr [eax*4+54280B]
 00542804    dd          00542B8F
 00542804    dd          0054282F
 00542804    dd          0054289C
 00542804    dd          00542909
 00542804    dd          00542976
 00542804    dd          005429E3
 00542804    dd          00542A50
 00542804    dd          00542ABD
 00542804    dd          00542B27
 0054282F    lea         edx,[ebp-2B0]
 00542835    mov         eax,dword ptr [ebp-4]
 00542838    mov         eax,dword ptr [eax+2F8];TfmFList.edName1hd:TLabeledEdit
 0054283E    call        TPanel.GetCaption
 00542843    mov         edx,dword ptr [ebp-2B0]
 00542849    mov         eax,dword ptr [ebp-18]
 0054284C    lea         eax,[eax+eax*8]
 0054284F    lea         eax,[ebp+eax*4-168]
 00542856    mov         ecx,dword ptr [ebp-14]
 00542859    lea         eax,[eax+ecx*4]
 0054285C    call        @LStrLAsg
 00542861    push        0
 00542863    push        0
 00542865    lea         edx,[ebp-2B4]
 0054286B    mov         eax,dword ptr [ebp-4]
 0054286E    mov         eax,dword ptr [eax+31C];TfmFList.edLba1hd:TEdit
 00542874    call        TPanel.GetCaption
 00542879    mov         eax,dword ptr [ebp-2B4]
 0054287F    call        0040C504
 00542884    mov         edx,dword ptr [ebp-18]
 00542887    lea         edx,[edx+edx*8]
 0054288A    lea         edx,[ebp+edx*4-2AC]
 00542891    mov         ecx,dword ptr [ebp-14]
 00542894    mov         dword ptr [edx+ecx*4],eax
>00542897    jmp         00542B8F
 0054289C    lea         edx,[ebp-2B8]
 005428A2    mov         eax,dword ptr [ebp-4]
 005428A5    mov         eax,dword ptr [eax+300];TfmFList.edName2hd:TLabeledEdit
 005428AB    call        TPanel.GetCaption
 005428B0    mov         edx,dword ptr [ebp-2B8]
 005428B6    mov         eax,dword ptr [ebp-18]
 005428B9    lea         eax,[eax+eax*8]
 005428BC    lea         eax,[ebp+eax*4-168]
 005428C3    mov         ecx,dword ptr [ebp-14]
 005428C6    lea         eax,[eax+ecx*4]
 005428C9    call        @LStrLAsg
 005428CE    push        0
 005428D0    push        0
 005428D2    lea         edx,[ebp-2BC]
 005428D8    mov         eax,dword ptr [ebp-4]
 005428DB    mov         eax,dword ptr [eax+324];TfmFList.edLba2hd:TEdit
 005428E1    call        TPanel.GetCaption
 005428E6    mov         eax,dword ptr [ebp-2BC]
 005428EC    call        0040C504
 005428F1    mov         edx,dword ptr [ebp-18]
 005428F4    lea         edx,[edx+edx*8]
 005428F7    lea         edx,[ebp+edx*4-2AC]
 005428FE    mov         ecx,dword ptr [ebp-14]
 00542901    mov         dword ptr [edx+ecx*4],eax
>00542904    jmp         00542B8F
 00542909    lea         edx,[ebp-2C0]
 0054290F    mov         eax,dword ptr [ebp-4]
 00542912    mov         eax,dword ptr [eax+304];TfmFList.edName3hd:TLabeledEdit
 00542918    call        TPanel.GetCaption
 0054291D    mov         edx,dword ptr [ebp-2C0]
 00542923    mov         eax,dword ptr [ebp-18]
 00542926    lea         eax,[eax+eax*8]
 00542929    lea         eax,[ebp+eax*4-168]
 00542930    mov         ecx,dword ptr [ebp-14]
 00542933    lea         eax,[eax+ecx*4]
 00542936    call        @LStrLAsg
 0054293B    push        0
 0054293D    push        0
 0054293F    lea         edx,[ebp-2C4]
 00542945    mov         eax,dword ptr [ebp-4]
 00542948    mov         eax,dword ptr [eax+328];TfmFList.edLba3hd:TEdit
 0054294E    call        TPanel.GetCaption
 00542953    mov         eax,dword ptr [ebp-2C4]
 00542959    call        0040C504
 0054295E    mov         edx,dword ptr [ebp-18]
 00542961    lea         edx,[edx+edx*8]
 00542964    lea         edx,[ebp+edx*4-2AC]
 0054296B    mov         ecx,dword ptr [ebp-14]
 0054296E    mov         dword ptr [edx+ecx*4],eax
>00542971    jmp         00542B8F
 00542976    lea         edx,[ebp-2C8]
 0054297C    mov         eax,dword ptr [ebp-4]
 0054297F    mov         eax,dword ptr [eax+308];TfmFList.edName4hd:TLabeledEdit
 00542985    call        TPanel.GetCaption
 0054298A    mov         edx,dword ptr [ebp-2C8]
 00542990    mov         eax,dword ptr [ebp-18]
 00542993    lea         eax,[eax+eax*8]
 00542996    lea         eax,[ebp+eax*4-168]
 0054299D    mov         ecx,dword ptr [ebp-14]
 005429A0    lea         eax,[eax+ecx*4]
 005429A3    call        @LStrLAsg
 005429A8    push        0
 005429AA    push        0
 005429AC    lea         edx,[ebp-2CC]
 005429B2    mov         eax,dword ptr [ebp-4]
 005429B5    mov         eax,dword ptr [eax+32C];TfmFList.edLba4hd:TEdit
 005429BB    call        TPanel.GetCaption
 005429C0    mov         eax,dword ptr [ebp-2CC]
 005429C6    call        0040C504
 005429CB    mov         edx,dword ptr [ebp-18]
 005429CE    lea         edx,[edx+edx*8]
 005429D1    lea         edx,[ebp+edx*4-2AC]
 005429D8    mov         ecx,dword ptr [ebp-14]
 005429DB    mov         dword ptr [edx+ecx*4],eax
>005429DE    jmp         00542B8F
 005429E3    lea         edx,[ebp-2D0]
 005429E9    mov         eax,dword ptr [ebp-4]
 005429EC    mov         eax,dword ptr [eax+30C];TfmFList.edName5hd:TLabeledEdit
 005429F2    call        TPanel.GetCaption
 005429F7    mov         edx,dword ptr [ebp-2D0]
 005429FD    mov         eax,dword ptr [ebp-18]
 00542A00    lea         eax,[eax+eax*8]
 00542A03    lea         eax,[ebp+eax*4-168]
 00542A0A    mov         ecx,dword ptr [ebp-14]
 00542A0D    lea         eax,[eax+ecx*4]
 00542A10    call        @LStrLAsg
 00542A15    push        0
 00542A17    push        0
 00542A19    lea         edx,[ebp-2D4]
 00542A1F    mov         eax,dword ptr [ebp-4]
 00542A22    mov         eax,dword ptr [eax+330];TfmFList.edLba5hd:TEdit
 00542A28    call        TPanel.GetCaption
 00542A2D    mov         eax,dword ptr [ebp-2D4]
 00542A33    call        0040C504
 00542A38    mov         edx,dword ptr [ebp-18]
 00542A3B    lea         edx,[edx+edx*8]
 00542A3E    lea         edx,[ebp+edx*4-2AC]
 00542A45    mov         ecx,dword ptr [ebp-14]
 00542A48    mov         dword ptr [edx+ecx*4],eax
>00542A4B    jmp         00542B8F
 00542A50    lea         edx,[ebp-2D8]
 00542A56    mov         eax,dword ptr [ebp-4]
 00542A59    mov         eax,dword ptr [eax+310];TfmFList.edName6hd:TLabeledEdit
 00542A5F    call        TPanel.GetCaption
 00542A64    mov         edx,dword ptr [ebp-2D8]
 00542A6A    mov         eax,dword ptr [ebp-18]
 00542A6D    lea         eax,[eax+eax*8]
 00542A70    lea         eax,[ebp+eax*4-168]
 00542A77    mov         ecx,dword ptr [ebp-14]
 00542A7A    lea         eax,[eax+ecx*4]
 00542A7D    call        @LStrLAsg
 00542A82    push        0
 00542A84    push        0
 00542A86    lea         edx,[ebp-2DC]
 00542A8C    mov         eax,dword ptr [ebp-4]
 00542A8F    mov         eax,dword ptr [eax+334];TfmFList.edLba6hd:TEdit
 00542A95    call        TPanel.GetCaption
 00542A9A    mov         eax,dword ptr [ebp-2DC]
 00542AA0    call        0040C504
 00542AA5    mov         edx,dword ptr [ebp-18]
 00542AA8    lea         edx,[edx+edx*8]
 00542AAB    lea         edx,[ebp+edx*4-2AC]
 00542AB2    mov         ecx,dword ptr [ebp-14]
 00542AB5    mov         dword ptr [edx+ecx*4],eax
>00542AB8    jmp         00542B8F
 00542ABD    lea         edx,[ebp-2E0]
 00542AC3    mov         eax,dword ptr [ebp-4]
 00542AC6    mov         eax,dword ptr [eax+314];TfmFList.edName7hd:TLabeledEdit
 00542ACC    call        TPanel.GetCaption
 00542AD1    mov         edx,dword ptr [ebp-2E0]
 00542AD7    mov         eax,dword ptr [ebp-18]
 00542ADA    lea         eax,[eax+eax*8]
 00542ADD    lea         eax,[ebp+eax*4-168]
 00542AE4    mov         ecx,dword ptr [ebp-14]
 00542AE7    lea         eax,[eax+ecx*4]
 00542AEA    call        @LStrLAsg
 00542AEF    push        0
 00542AF1    push        0
 00542AF3    lea         edx,[ebp-2E4]
 00542AF9    mov         eax,dword ptr [ebp-4]
 00542AFC    mov         eax,dword ptr [eax+338];TfmFList.edLba7hd:TEdit
 00542B02    call        TPanel.GetCaption
 00542B07    mov         eax,dword ptr [ebp-2E4]
 00542B0D    call        0040C504
 00542B12    mov         edx,dword ptr [ebp-18]
 00542B15    lea         edx,[edx+edx*8]
 00542B18    lea         edx,[ebp+edx*4-2AC]
 00542B1F    mov         ecx,dword ptr [ebp-14]
 00542B22    mov         dword ptr [edx+ecx*4],eax
>00542B25    jmp         00542B8F
 00542B27    lea         edx,[ebp-2E8]
 00542B2D    mov         eax,dword ptr [ebp-4]
 00542B30    mov         eax,dword ptr [eax+318];TfmFList.edName8hd:TLabeledEdit
 00542B36    call        TPanel.GetCaption
 00542B3B    mov         edx,dword ptr [ebp-2E8]
 00542B41    mov         eax,dword ptr [ebp-18]
 00542B44    lea         eax,[eax+eax*8]
 00542B47    lea         eax,[ebp+eax*4-168]
 00542B4E    mov         ecx,dword ptr [ebp-14]
 00542B51    lea         eax,[eax+ecx*4]
 00542B54    call        @LStrLAsg
 00542B59    push        0
 00542B5B    push        0
 00542B5D    lea         edx,[ebp-2EC]
 00542B63    mov         eax,dword ptr [ebp-4]
 00542B66    mov         eax,dword ptr [eax+33C];TfmFList.edLba8hd:TEdit
 00542B6C    call        TPanel.GetCaption
 00542B71    mov         eax,dword ptr [ebp-2EC]
 00542B77    call        0040C504
 00542B7C    mov         edx,dword ptr [ebp-18]
 00542B7F    lea         edx,[edx+edx*8]
 00542B82    lea         edx,[ebp+edx*4-2AC]
 00542B89    mov         ecx,dword ptr [ebp-14]
 00542B8C    mov         dword ptr [edx+ecx*4],eax
 00542B8F    inc         dword ptr [ebp-18]
 00542B92    cmp         dword ptr [ebp-18],9
>00542B96    jne         005427F8
 00542B9C    push        0
 00542B9E    mov         eax,dword ptr [ebp-8]
 00542BA1    push        eax
 00542BA2    xor         ecx,ecx
 00542BA4    mov         dx,word ptr [ebp-14]
 00542BA8    xor         eax,eax
 00542BAA    call        004D1570
 00542BAF    test        al,al
>00542BB1    je          00542C55
 00542BB7    xor         ecx,ecx
 00542BB9    xor         edx,edx
 00542BBB    mov         eax,dword ptr [ebp-8]
 00542BBE    mov         ebx,dword ptr [eax]
 00542BC0    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00542BC3    mov         dword ptr [ebp-18],1
 00542BCA    lea         eax,[ebp-10]
 00542BCD    mov         edx,dword ptr [ebp-18]
 00542BD0    lea         edx,[edx+edx*8]
 00542BD3    lea         edx,[ebp+edx*4-168]
 00542BDA    mov         ecx,dword ptr [ebp-14]
 00542BDD    mov         edx,dword ptr [edx+ecx*4]
 00542BE0    call        @LStrLAsg
>00542BE5    jmp         00542BF4
 00542BE7    lea         eax,[ebp-10]
 00542BEA    mov         edx,542DB0;#0
 00542BEF    call        @LStrCat
 00542BF4    mov         eax,dword ptr [ebp-10]
 00542BF7    call        @LStrLen
 00542BFC    cmp         eax,18
>00542BFF    jl          00542BE7
 00542C01    lea         eax,[ebp-10]
 00542C04    call        00405598
 00542C09    mov         edx,eax
 00542C0B    mov         ecx,18
 00542C10    mov         eax,dword ptr [ebp-8]
 00542C13    call        TStream.WriteBuffer
 00542C18    inc         dword ptr [ebp-18]
 00542C1B    cmp         dword ptr [ebp-18],9
>00542C1F    jne         00542BCA
 00542C21    xor         ecx,ecx
 00542C23    xor         edx,edx
 00542C25    mov         eax,dword ptr [ebp-8]
 00542C28    mov         ebx,dword ptr [eax]
 00542C2A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00542C2D    push        0
 00542C2F    mov         eax,dword ptr [ebp-8]
 00542C32    push        eax
 00542C33    xor         ecx,ecx
 00542C35    mov         dx,word ptr [ebp-14]
 00542C39    xor         eax,eax
 00542C3B    call        004D16E8
 00542C40    test        al,al
>00542C42    jne         00542C64
 00542C44    call        004CEB6C
 00542C49    mov         eax,542DBC;'Set Field - '
 00542C4E    call        00544F6C
>00542C53    jmp         00542C64
 00542C55    call        004CEB6C
 00542C5A    mov         eax,542DD4;'Get Field - '
 00542C5F    call        00544F6C
 00542C64    push        0
 00542C66    mov         eax,dword ptr [ebp-8]
 00542C69    push        eax
 00542C6A    mov         dx,word ptr [ebp-14]
 00542C6E    add         dx,6
 00542C72    xor         ecx,ecx
 00542C74    xor         eax,eax
 00542C76    call        004D1570
 00542C7B    test        al,al
>00542C7D    je          00542CF9
 00542C7F    xor         ecx,ecx
 00542C81    xor         edx,edx
 00542C83    mov         eax,dword ptr [ebp-8]
 00542C86    mov         ebx,dword ptr [eax]
 00542C88    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00542C8B    mov         dword ptr [ebp-18],1
 00542C92    mov         eax,dword ptr [ebp-18]
 00542C95    lea         eax,[eax+eax*8]
 00542C98    lea         eax,[ebp+eax*4-2AC]
 00542C9F    mov         edx,dword ptr [ebp-14]
 00542CA2    mov         eax,dword ptr [eax+edx*4]
 00542CA5    mov         dword ptr [ebp-0C],eax
 00542CA8    lea         edx,[ebp-0C]
 00542CAB    mov         ecx,4
 00542CB0    mov         eax,dword ptr [ebp-8]
 00542CB3    call        TStream.WriteBuffer
 00542CB8    inc         dword ptr [ebp-18]
 00542CBB    cmp         dword ptr [ebp-18],9
>00542CBF    jne         00542C92
 00542CC1    xor         ecx,ecx
 00542CC3    xor         edx,edx
 00542CC5    mov         eax,dword ptr [ebp-8]
 00542CC8    mov         ebx,dword ptr [eax]
 00542CCA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00542CCD    push        0
 00542CCF    mov         eax,dword ptr [ebp-8]
 00542CD2    push        eax
 00542CD3    mov         dx,word ptr [ebp-14]
 00542CD7    add         dx,6
 00542CDB    xor         ecx,ecx
 00542CDD    xor         eax,eax
 00542CDF    call        004D16E8
 00542CE4    test        al,al
>00542CE6    jne         00542D08
 00542CE8    call        004CEB6C
 00542CED    mov         eax,542DBC;'Set Field - '
 00542CF2    call        00544F6C
>00542CF7    jmp         00542D08
 00542CF9    call        004CEB6C
 00542CFE    mov         eax,542DD4;'Get Field - '
 00542D03    call        00544F6C
 00542D08    xor         eax,eax
 00542D0A    pop         edx
 00542D0B    pop         ecx
 00542D0C    pop         ecx
 00542D0D    mov         dword ptr fs:[eax],edx
 00542D10    push        542D25
 00542D15    mov         eax,dword ptr [ebp-8]
 00542D18    call        TObject.Free
 00542D1D    ret
>00542D1E    jmp         @HandleFinally
>00542D23    jmp         00542D15
 00542D25    mov         eax,dword ptr [ebp-4]
 00542D28    mov         eax,dword ptr [eax+344];TfmFList.btRead:TButton
 00542D2E    mov         dl,1
 00542D30    mov         ecx,dword ptr [eax]
 00542D32    call        dword ptr [ecx+64];TImage.SetEnabled
 00542D35    mov         eax,dword ptr [ebp-4]
 00542D38    mov         eax,dword ptr [eax+340];TfmFList.btWrite:TButton
 00542D3E    mov         dl,1
 00542D40    mov         ecx,dword ptr [eax]
 00542D42    call        dword ptr [ecx+64];TImage.SetEnabled
 00542D45    mov         eax,dword ptr [ebp-4]
 00542D48    mov         eax,dword ptr [eax+348];TfmFList.cbGroup:TComboBox
 00542D4E    mov         dl,1
 00542D50    mov         ecx,dword ptr [eax]
 00542D52    call        dword ptr [ecx+64];TImage.SetEnabled
 00542D55    xor         eax,eax
 00542D57    pop         edx
 00542D58    pop         ecx
 00542D59    pop         ecx
 00542D5A    mov         dword ptr fs:[eax],edx
 00542D5D    push        542DA0
 00542D62    lea         eax,[ebp-2EC]
 00542D68    mov         edx,10
 00542D6D    call        @LStrArrayClr
 00542D72    lea         eax,[ebp-168]
 00542D78    mov         ecx,51
 00542D7D    mov         edx,dword ptr ds:[4010C0];String
 00542D83    call        @FinalizeArray
 00542D88    lea         eax,[ebp-20]
 00542D8B    call        @LStrClr
 00542D90    lea         eax,[ebp-10]
 00542D93    call        @LStrClr
 00542D98    ret
>00542D99    jmp         @HandleFinally
>00542D9E    jmp         00542D62
 00542DA0    pop         ebx
 00542DA1    mov         esp,ebp
 00542DA3    pop         ebp
 00542DA4    ret
*}
end;

//00542DE4
procedure TfmFList.btAutoClick(Sender:TObject);
begin
{*
 00542DE4    push        ebp
 00542DE5    mov         ebp,esp
 00542DE7    add         esp,0FFFFFFF8
 00542DEA    push        ebx
 00542DEB    mov         dword ptr [ebp-8],edx
 00542DEE    mov         dword ptr [ebp-4],eax
 00542DF1    mov         eax,[0056DE70];0x0 gvar_0056DE70:TfmFList
 00542DF6    mov         ecx,dword ptr [eax+44];TfmFList.Top:Integer
 00542DF9    mov         eax,dword ptr [ebp-4]
 00542DFC    mov         eax,dword ptr [eax+34C];TfmFList.btAuto:TButton
 00542E02    add         ecx,dword ptr [eax+44];TButton.Top:Integer
 00542E05    mov         eax,[0056DE70];0x0 gvar_0056DE70:TfmFList
 00542E0A    mov         edx,dword ptr [eax+40];TfmFList.Left:Integer
 00542E0D    mov         eax,dword ptr [ebp-4]
 00542E10    mov         eax,dword ptr [eax+34C];TfmFList.btAuto:TButton
 00542E16    add         edx,dword ptr [eax+40];TButton.Left:Integer
 00542E19    mov         eax,dword ptr [ebp-4]
 00542E1C    mov         eax,dword ptr [eax+350];TfmFList.pmFromHeads:TPopupMenu
 00542E22    mov         ebx,dword ptr [eax]
 00542E24    call        dword ptr [ebx+40];TPopupMenu.sub_0049DDAC
 00542E27    pop         ebx
 00542E28    pop         ecx
 00542E29    pop         ecx
 00542E2A    pop         ebp
 00542E2B    ret
*}
end;

//00542E2C
{*procedure sub_00542E2C(?:TfmFList; ?:?; ?:?);
begin
 00542E2C    push        ebp
 00542E2D    mov         ebp,esp
 00542E2F    mov         ecx,7
 00542E34    push        0
 00542E36    push        0
 00542E38    dec         ecx
>00542E39    jne         00542E34
 00542E3B    push        ecx
 00542E3C    mov         dword ptr [ebp-4],eax
 00542E3F    xor         eax,eax
 00542E41    push        ebp
 00542E42    push        5430A5
 00542E47    push        dword ptr fs:[eax]
 00542E4A    mov         dword ptr fs:[eax],esp
 00542E4D    mov         dword ptr [ebp-8],1
 00542E54    mov         eax,dword ptr [ebp-8]
 00542E57    cdq
 00542E58    push        edx
 00542E59    push        eax
 00542E5A    mov         eax,dword ptr [ebp+8]
 00542E5D    mov         edx,dword ptr [ebp+0C]
 00542E60    call        @_llmul
 00542E65    mov         dword ptr [ebp-18],eax
 00542E68    mov         dword ptr [ebp-14],edx
 00542E6B    push        5430BC;'WD'
 00542E70    push        0
 00542E72    push        1DCD65
 00542E77    mov         eax,dword ptr [ebp-18]
 00542E7A    mov         edx,dword ptr [ebp-14]
 00542E7D    call        @_lldiv
 00542E82    push        edx
 00542E83    push        eax
 00542E84    lea         eax,[ebp-1C]
 00542E87    call        IntToStr
 00542E8C    push        dword ptr [ebp-1C]
 00542E8F    push        5430C8;'0'
 00542E94    lea         eax,[ebp-0C]
 00542E97    mov         edx,3
 00542E9C    call        @LStrCatN
 00542EA1    mov         eax,dword ptr [ebp-8]
 00542EA4    cmp         eax,8
>00542EA7    ja          00543075
 00542EAD    jmp         dword ptr [eax*4+542EB4]
 00542EAD    dd          00543075
 00542EAD    dd          00542ED8
 00542EAD    dd          00542F0D
 00542EAD    dd          00542F42
 00542EAD    dd          00542F77
 00542EAD    dd          00542FAC
 00542EAD    dd          00542FE1
 00542EAD    dd          00543013
 00542EAD    dd          00543045
 00542ED8    mov         eax,dword ptr [ebp-4]
 00542EDB    mov         eax,dword ptr [eax+2F8]
 00542EE1    mov         edx,dword ptr [ebp-0C]
 00542EE4    call        TPanel.SetCaption
 00542EE9    push        dword ptr [ebp-14]
 00542EEC    push        dword ptr [ebp-18]
 00542EEF    lea         eax,[ebp-20]
 00542EF2    call        IntToStr
 00542EF7    mov         edx,dword ptr [ebp-20]
 00542EFA    mov         eax,dword ptr [ebp-4]
 00542EFD    mov         eax,dword ptr [eax+31C]
 00542F03    call        TPanel.SetCaption
>00542F08    jmp         00543075
 00542F0D    mov         eax,dword ptr [ebp-4]
 00542F10    mov         eax,dword ptr [eax+300]
 00542F16    mov         edx,dword ptr [ebp-0C]
 00542F19    call        TPanel.SetCaption
 00542F1E    push        dword ptr [ebp-14]
 00542F21    push        dword ptr [ebp-18]
 00542F24    lea         eax,[ebp-24]
 00542F27    call        IntToStr
 00542F2C    mov         edx,dword ptr [ebp-24]
 00542F2F    mov         eax,dword ptr [ebp-4]
 00542F32    mov         eax,dword ptr [eax+324]
 00542F38    call        TPanel.SetCaption
>00542F3D    jmp         00543075
 00542F42    mov         eax,dword ptr [ebp-4]
 00542F45    mov         eax,dword ptr [eax+304]
 00542F4B    mov         edx,dword ptr [ebp-0C]
 00542F4E    call        TPanel.SetCaption
 00542F53    push        dword ptr [ebp-14]
 00542F56    push        dword ptr [ebp-18]
 00542F59    lea         eax,[ebp-28]
 00542F5C    call        IntToStr
 00542F61    mov         edx,dword ptr [ebp-28]
 00542F64    mov         eax,dword ptr [ebp-4]
 00542F67    mov         eax,dword ptr [eax+328]
 00542F6D    call        TPanel.SetCaption
>00542F72    jmp         00543075
 00542F77    mov         eax,dword ptr [ebp-4]
 00542F7A    mov         eax,dword ptr [eax+308]
 00542F80    mov         edx,dword ptr [ebp-0C]
 00542F83    call        TPanel.SetCaption
 00542F88    push        dword ptr [ebp-14]
 00542F8B    push        dword ptr [ebp-18]
 00542F8E    lea         eax,[ebp-2C]
 00542F91    call        IntToStr
 00542F96    mov         edx,dword ptr [ebp-2C]
 00542F99    mov         eax,dword ptr [ebp-4]
 00542F9C    mov         eax,dword ptr [eax+32C]
 00542FA2    call        TPanel.SetCaption
>00542FA7    jmp         00543075
 00542FAC    mov         eax,dword ptr [ebp-4]
 00542FAF    mov         eax,dword ptr [eax+30C]
 00542FB5    mov         edx,dword ptr [ebp-0C]
 00542FB8    call        TPanel.SetCaption
 00542FBD    push        dword ptr [ebp-14]
 00542FC0    push        dword ptr [ebp-18]
 00542FC3    lea         eax,[ebp-30]
 00542FC6    call        IntToStr
 00542FCB    mov         edx,dword ptr [ebp-30]
 00542FCE    mov         eax,dword ptr [ebp-4]
 00542FD1    mov         eax,dword ptr [eax+330]
 00542FD7    call        TPanel.SetCaption
>00542FDC    jmp         00543075
 00542FE1    mov         eax,dword ptr [ebp-4]
 00542FE4    mov         eax,dword ptr [eax+310]
 00542FEA    mov         edx,dword ptr [ebp-0C]
 00542FED    call        TPanel.SetCaption
 00542FF2    push        dword ptr [ebp-14]
 00542FF5    push        dword ptr [ebp-18]
 00542FF8    lea         eax,[ebp-34]
 00542FFB    call        IntToStr
 00543000    mov         edx,dword ptr [ebp-34]
 00543003    mov         eax,dword ptr [ebp-4]
 00543006    mov         eax,dword ptr [eax+334]
 0054300C    call        TPanel.SetCaption
>00543011    jmp         00543075
 00543013    mov         eax,dword ptr [ebp-4]
 00543016    mov         eax,dword ptr [eax+314]
 0054301C    mov         edx,dword ptr [ebp-0C]
 0054301F    call        TPanel.SetCaption
 00543024    push        dword ptr [ebp-14]
 00543027    push        dword ptr [ebp-18]
 0054302A    lea         eax,[ebp-38]
 0054302D    call        IntToStr
 00543032    mov         edx,dword ptr [ebp-38]
 00543035    mov         eax,dword ptr [ebp-4]
 00543038    mov         eax,dword ptr [eax+338]
 0054303E    call        TPanel.SetCaption
>00543043    jmp         00543075
 00543045    mov         eax,dword ptr [ebp-4]
 00543048    mov         eax,dword ptr [eax+318]
 0054304E    mov         edx,dword ptr [ebp-0C]
 00543051    call        TPanel.SetCaption
 00543056    push        dword ptr [ebp-14]
 00543059    push        dword ptr [ebp-18]
 0054305C    lea         eax,[ebp-3C]
 0054305F    call        IntToStr
 00543064    mov         edx,dword ptr [ebp-3C]
 00543067    mov         eax,dword ptr [ebp-4]
 0054306A    mov         eax,dword ptr [eax+33C]
 00543070    call        TPanel.SetCaption
 00543075    inc         dword ptr [ebp-8]
 00543078    cmp         dword ptr [ebp-8],9
>0054307C    jne         00542E54
 00543082    xor         eax,eax
 00543084    pop         edx
 00543085    pop         ecx
 00543086    pop         ecx
 00543087    mov         dword ptr fs:[eax],edx
 0054308A    push        5430AC
 0054308F    lea         eax,[ebp-3C]
 00543092    mov         edx,9
 00543097    call        @LStrArrayClr
 0054309C    lea         eax,[ebp-0C]
 0054309F    call        @LStrClr
 005430A4    ret
>005430A5    jmp         @HandleFinally
>005430AA    jmp         0054308F
 005430AC    mov         esp,ebp
 005430AE    pop         ebp
 005430AF    ret         8
end;*}

//005430CC
procedure TfmFList.miFromHead1Click(Sender:TObject);
begin
{*
 005430CC    push        ebp
 005430CD    mov         ebp,esp
 005430CF    add         esp,0FFFFFFF4
 005430D2    xor         ecx,ecx
 005430D4    mov         dword ptr [ebp-0C],ecx
 005430D7    mov         dword ptr [ebp-8],edx
 005430DA    mov         dword ptr [ebp-4],eax
 005430DD    xor         eax,eax
 005430DF    push        ebp
 005430E0    push        543128
 005430E5    push        dword ptr fs:[eax]
 005430E8    mov         dword ptr fs:[eax],esp
 005430EB    push        0
 005430ED    push        0
 005430EF    lea         edx,[ebp-0C]
 005430F2    mov         eax,dword ptr [ebp-4]
 005430F5    mov         eax,dword ptr [eax+31C];TfmFList.edLba1hd:TEdit
 005430FB    call        TPanel.GetCaption
 00543100    mov         eax,dword ptr [ebp-0C]
 00543103    call        0040C504
 00543108    push        edx
 00543109    push        eax
 0054310A    mov         eax,dword ptr [ebp-4]
 0054310D    call        00542E2C
 00543112    xor         eax,eax
 00543114    pop         edx
 00543115    pop         ecx
 00543116    pop         ecx
 00543117    mov         dword ptr fs:[eax],edx
 0054311A    push        54312F
 0054311F    lea         eax,[ebp-0C]
 00543122    call        @LStrClr
 00543127    ret
>00543128    jmp         @HandleFinally
>0054312D    jmp         0054311F
 0054312F    mov         esp,ebp
 00543131    pop         ebp
 00543132    ret
*}
end;

//00543134
procedure TfmFList.miFromHead2Click(Sender:TObject);
begin
{*
 00543134    push        ebp
 00543135    mov         ebp,esp
 00543137    add         esp,0FFFFFFF4
 0054313A    xor         ecx,ecx
 0054313C    mov         dword ptr [ebp-0C],ecx
 0054313F    mov         dword ptr [ebp-8],edx
 00543142    mov         dword ptr [ebp-4],eax
 00543145    xor         eax,eax
 00543147    push        ebp
 00543148    push        543199
 0054314D    push        dword ptr fs:[eax]
 00543150    mov         dword ptr fs:[eax],esp
 00543153    push        0
 00543155    push        2
 00543157    push        0
 00543159    push        0
 0054315B    lea         edx,[ebp-0C]
 0054315E    mov         eax,dword ptr [ebp-4]
 00543161    mov         eax,dword ptr [eax+324];TfmFList.edLba2hd:TEdit
 00543167    call        TPanel.GetCaption
 0054316C    mov         eax,dword ptr [ebp-0C]
 0054316F    call        0040C504
 00543174    call        @_lldiv
 00543179    push        edx
 0054317A    push        eax
 0054317B    mov         eax,dword ptr [ebp-4]
 0054317E    call        00542E2C
 00543183    xor         eax,eax
 00543185    pop         edx
 00543186    pop         ecx
 00543187    pop         ecx
 00543188    mov         dword ptr fs:[eax],edx
 0054318B    push        5431A0
 00543190    lea         eax,[ebp-0C]
 00543193    call        @LStrClr
 00543198    ret
>00543199    jmp         @HandleFinally
>0054319E    jmp         00543190
 005431A0    mov         esp,ebp
 005431A2    pop         ebp
 005431A3    ret
*}
end;

//005431A4
procedure TfmFList.miFromHead3Click(Sender:TObject);
begin
{*
 005431A4    push        ebp
 005431A5    mov         ebp,esp
 005431A7    add         esp,0FFFFFFF4
 005431AA    xor         ecx,ecx
 005431AC    mov         dword ptr [ebp-0C],ecx
 005431AF    mov         dword ptr [ebp-8],edx
 005431B2    mov         dword ptr [ebp-4],eax
 005431B5    xor         eax,eax
 005431B7    push        ebp
 005431B8    push        543209
 005431BD    push        dword ptr fs:[eax]
 005431C0    mov         dword ptr fs:[eax],esp
 005431C3    push        0
 005431C5    push        3
 005431C7    push        0
 005431C9    push        0
 005431CB    lea         edx,[ebp-0C]
 005431CE    mov         eax,dword ptr [ebp-4]
 005431D1    mov         eax,dword ptr [eax+328];TfmFList.edLba3hd:TEdit
 005431D7    call        TPanel.GetCaption
 005431DC    mov         eax,dword ptr [ebp-0C]
 005431DF    call        0040C504
 005431E4    call        @_lldiv
 005431E9    push        edx
 005431EA    push        eax
 005431EB    mov         eax,dword ptr [ebp-4]
 005431EE    call        00542E2C
 005431F3    xor         eax,eax
 005431F5    pop         edx
 005431F6    pop         ecx
 005431F7    pop         ecx
 005431F8    mov         dword ptr fs:[eax],edx
 005431FB    push        543210
 00543200    lea         eax,[ebp-0C]
 00543203    call        @LStrClr
 00543208    ret
>00543209    jmp         @HandleFinally
>0054320E    jmp         00543200
 00543210    mov         esp,ebp
 00543212    pop         ebp
 00543213    ret
*}
end;

//00543214
procedure TfmFList.miFromHead4Click(Sender:TObject);
begin
{*
 00543214    push        ebp
 00543215    mov         ebp,esp
 00543217    add         esp,0FFFFFFF4
 0054321A    xor         ecx,ecx
 0054321C    mov         dword ptr [ebp-0C],ecx
 0054321F    mov         dword ptr [ebp-8],edx
 00543222    mov         dword ptr [ebp-4],eax
 00543225    xor         eax,eax
 00543227    push        ebp
 00543228    push        543279
 0054322D    push        dword ptr fs:[eax]
 00543230    mov         dword ptr fs:[eax],esp
 00543233    push        0
 00543235    push        4
 00543237    push        0
 00543239    push        0
 0054323B    lea         edx,[ebp-0C]
 0054323E    mov         eax,dword ptr [ebp-4]
 00543241    mov         eax,dword ptr [eax+32C];TfmFList.edLba4hd:TEdit
 00543247    call        TPanel.GetCaption
 0054324C    mov         eax,dword ptr [ebp-0C]
 0054324F    call        0040C504
 00543254    call        @_lldiv
 00543259    push        edx
 0054325A    push        eax
 0054325B    mov         eax,dword ptr [ebp-4]
 0054325E    call        00542E2C
 00543263    xor         eax,eax
 00543265    pop         edx
 00543266    pop         ecx
 00543267    pop         ecx
 00543268    mov         dword ptr fs:[eax],edx
 0054326B    push        543280
 00543270    lea         eax,[ebp-0C]
 00543273    call        @LStrClr
 00543278    ret
>00543279    jmp         @HandleFinally
>0054327E    jmp         00543270
 00543280    mov         esp,ebp
 00543282    pop         ebp
 00543283    ret
*}
end;

//00543284
procedure TfmFList.miFromHead5Click(Sender:TObject);
begin
{*
 00543284    push        ebp
 00543285    mov         ebp,esp
 00543287    add         esp,0FFFFFFF4
 0054328A    xor         ecx,ecx
 0054328C    mov         dword ptr [ebp-0C],ecx
 0054328F    mov         dword ptr [ebp-8],edx
 00543292    mov         dword ptr [ebp-4],eax
 00543295    xor         eax,eax
 00543297    push        ebp
 00543298    push        5432E9
 0054329D    push        dword ptr fs:[eax]
 005432A0    mov         dword ptr fs:[eax],esp
 005432A3    push        0
 005432A5    push        5
 005432A7    push        0
 005432A9    push        0
 005432AB    lea         edx,[ebp-0C]
 005432AE    mov         eax,dword ptr [ebp-4]
 005432B1    mov         eax,dword ptr [eax+330];TfmFList.edLba5hd:TEdit
 005432B7    call        TPanel.GetCaption
 005432BC    mov         eax,dword ptr [ebp-0C]
 005432BF    call        0040C504
 005432C4    call        @_lldiv
 005432C9    push        edx
 005432CA    push        eax
 005432CB    mov         eax,dword ptr [ebp-4]
 005432CE    call        00542E2C
 005432D3    xor         eax,eax
 005432D5    pop         edx
 005432D6    pop         ecx
 005432D7    pop         ecx
 005432D8    mov         dword ptr fs:[eax],edx
 005432DB    push        5432F0
 005432E0    lea         eax,[ebp-0C]
 005432E3    call        @LStrClr
 005432E8    ret
>005432E9    jmp         @HandleFinally
>005432EE    jmp         005432E0
 005432F0    mov         esp,ebp
 005432F2    pop         ebp
 005432F3    ret
*}
end;

//005432F4
procedure TfmFList.miFromHead6Click(Sender:TObject);
begin
{*
 005432F4    push        ebp
 005432F5    mov         ebp,esp
 005432F7    add         esp,0FFFFFFF4
 005432FA    xor         ecx,ecx
 005432FC    mov         dword ptr [ebp-0C],ecx
 005432FF    mov         dword ptr [ebp-8],edx
 00543302    mov         dword ptr [ebp-4],eax
 00543305    xor         eax,eax
 00543307    push        ebp
 00543308    push        543359
 0054330D    push        dword ptr fs:[eax]
 00543310    mov         dword ptr fs:[eax],esp
 00543313    push        0
 00543315    push        6
 00543317    push        0
 00543319    push        0
 0054331B    lea         edx,[ebp-0C]
 0054331E    mov         eax,dword ptr [ebp-4]
 00543321    mov         eax,dword ptr [eax+334];TfmFList.edLba6hd:TEdit
 00543327    call        TPanel.GetCaption
 0054332C    mov         eax,dword ptr [ebp-0C]
 0054332F    call        0040C504
 00543334    call        @_lldiv
 00543339    push        edx
 0054333A    push        eax
 0054333B    mov         eax,dword ptr [ebp-4]
 0054333E    call        00542E2C
 00543343    xor         eax,eax
 00543345    pop         edx
 00543346    pop         ecx
 00543347    pop         ecx
 00543348    mov         dword ptr fs:[eax],edx
 0054334B    push        543360
 00543350    lea         eax,[ebp-0C]
 00543353    call        @LStrClr
 00543358    ret
>00543359    jmp         @HandleFinally
>0054335E    jmp         00543350
 00543360    mov         esp,ebp
 00543362    pop         ebp
 00543363    ret
*}
end;

//00543364
procedure TfmFList.miFromHead7Click(Sender:TObject);
begin
{*
 00543364    push        ebp
 00543365    mov         ebp,esp
 00543367    add         esp,0FFFFFFF4
 0054336A    xor         ecx,ecx
 0054336C    mov         dword ptr [ebp-0C],ecx
 0054336F    mov         dword ptr [ebp-8],edx
 00543372    mov         dword ptr [ebp-4],eax
 00543375    xor         eax,eax
 00543377    push        ebp
 00543378    push        5433C9
 0054337D    push        dword ptr fs:[eax]
 00543380    mov         dword ptr fs:[eax],esp
 00543383    push        0
 00543385    push        7
 00543387    push        0
 00543389    push        0
 0054338B    lea         edx,[ebp-0C]
 0054338E    mov         eax,dword ptr [ebp-4]
 00543391    mov         eax,dword ptr [eax+338];TfmFList.edLba7hd:TEdit
 00543397    call        TPanel.GetCaption
 0054339C    mov         eax,dword ptr [ebp-0C]
 0054339F    call        0040C504
 005433A4    call        @_lldiv
 005433A9    push        edx
 005433AA    push        eax
 005433AB    mov         eax,dword ptr [ebp-4]
 005433AE    call        00542E2C
 005433B3    xor         eax,eax
 005433B5    pop         edx
 005433B6    pop         ecx
 005433B7    pop         ecx
 005433B8    mov         dword ptr fs:[eax],edx
 005433BB    push        5433D0
 005433C0    lea         eax,[ebp-0C]
 005433C3    call        @LStrClr
 005433C8    ret
>005433C9    jmp         @HandleFinally
>005433CE    jmp         005433C0
 005433D0    mov         esp,ebp
 005433D2    pop         ebp
 005433D3    ret
*}
end;

//005433D4
procedure TfmFList.miFromHead8Click(Sender:TObject);
begin
{*
 005433D4    push        ebp
 005433D5    mov         ebp,esp
 005433D7    add         esp,0FFFFFFF4
 005433DA    xor         ecx,ecx
 005433DC    mov         dword ptr [ebp-0C],ecx
 005433DF    mov         dword ptr [ebp-8],edx
 005433E2    mov         dword ptr [ebp-4],eax
 005433E5    xor         eax,eax
 005433E7    push        ebp
 005433E8    push        543439
 005433ED    push        dword ptr fs:[eax]
 005433F0    mov         dword ptr fs:[eax],esp
 005433F3    push        0
 005433F5    push        8
 005433F7    push        0
 005433F9    push        0
 005433FB    lea         edx,[ebp-0C]
 005433FE    mov         eax,dword ptr [ebp-4]
 00543401    mov         eax,dword ptr [eax+33C];TfmFList.edLba8hd:TEdit
 00543407    call        TPanel.GetCaption
 0054340C    mov         eax,dword ptr [ebp-0C]
 0054340F    call        0040C504
 00543414    call        @_lldiv
 00543419    push        edx
 0054341A    push        eax
 0054341B    mov         eax,dword ptr [ebp-4]
 0054341E    call        00542E2C
 00543423    xor         eax,eax
 00543425    pop         edx
 00543426    pop         ecx
 00543427    pop         ecx
 00543428    mov         dword ptr fs:[eax],edx
 0054342B    push        543440
 00543430    lea         eax,[ebp-0C]
 00543433    call        @LStrClr
 00543438    ret
>00543439    jmp         @HandleFinally
>0054343E    jmp         00543430
 00543440    mov         esp,ebp
 00543442    pop         ebp
 00543443    ret
*}
end;

end.