//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uHeadsMap;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmHeadsMap = class(TForm)
  published
    gbKillHead:TGroupBox;//f2F8
    btOk:TButton;//f2FC
    edKillHead:TLabeledEdit;//f300
    gbHeadsMap:TGroupBox;//f304
    cbHead0:TCheckBox;//f308
    cbHead1:TCheckBox;//f30C
    cbHead2:TCheckBox;//f310
    cbHead3:TCheckBox;//f314
    cbHead4:TCheckBox;//f318
    cbHead5:TCheckBox;//f31C
    cbHead6:TCheckBox;//f320
    cbHead7:TCheckBox;//f324
    cbUseHeadsMap:TCheckBox;//f328
    edInUseHeads:TLabeledEdit;//f32C
    edPhysicalHeads:TLabeledEdit;//f330
    btWrite:TButton;//f334
    btRead:TButton;//f338
    btSave:TButton;//f33C
    btLoad:TButton;//f340
    rbModule0A:TRadioButton;//f344
    rbFlash:TRadioButton;//f348
    edGoodHeadMap:TLabeledEdit;//f34C
    cbAutoMap2:TCheckBox;//f350
    gbTestHeads:TGroupBox;//f354
    btTestHeads:TButton;//f358
    rbUa:TRadioButton;//f35C
    rbSa:TRadioButton;//f360
    edTstTracks:TLabeledEdit;//f364
    edActHeadsTst:TLabeledEdit;//f368
    btGetActHeads:TButton;//f36C
    edNativeHeadMap:TLabeledEdit;//f370
    btCreate:TButton;//f374
    edTpi:TLabeledEdit;//f378
    cbClsTransl:TCheckBox;//f37C
    cbWrtTst:TCheckBox;//f380
    procedure rbUaClick(Sender:TObject);//0050CC4C
    procedure btTestHeadsClick(Sender:TObject);//0050C8C8
    procedure btWriteClick(Sender:TObject);//0050C72C
    procedure btGetActHeadsClick(Sender:TObject);//0050CC80
    procedure FormDestroy(Sender:TObject);//0050CED0
    //procedure btCorrectRegionClick(?:?);//0050CEB8
    procedure btCreateClick(Sender:TObject);//0050CD70
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0050C704
    procedure btLoadClick(Sender:TObject);//0050C094
    procedure btReadClick(Sender:TObject);//0050BEE0
    procedure btOkClick(Sender:TObject);//0050B758
    procedure FormShow(Sender:TObject);//0050B8F8
    procedure rbModule0AClick(Sender:TObject);//0050C6BC
    procedure cbHead0Click(Sender:TObject);//0050C3EC
    procedure btSaveClick(Sender:TObject);//0050C298
  end;
    procedure sub_0050B704(?:TfmHeadsMap; ?:TfmHDD);//0050B704
    procedure sub_0050BA20;//0050BA20
    procedure sub_0050BCEC;//0050BCEC
    procedure sub_0050CEEC;//0050CEEC

implementation

{$R *.DFM}

//0050B704
procedure sub_0050B704(?:TfmHeadsMap; ?:TfmHDD);
begin
{*
 0050B704    push        ebp
 0050B705    mov         ebp,esp
 0050B707    add         esp,0FFFFFFF8
 0050B70A    mov         dword ptr [ebp-8],edx
 0050B70D    mov         dword ptr [ebp-4],eax
 0050B710    cmp         dword ptr ds:[56D410],0;gvar_0056D410:TfmHeadsMap
>0050B717    jne         0050B72D
 0050B719    mov         ecx,dword ptr [ebp-8]
 0050B71C    mov         dl,1
 0050B71E    mov         eax,[0050B224];TfmHeadsMap
 0050B723    call        TfmProgress.Create;TfmHeadsMap.Create
 0050B728    mov         [0056D410],eax;gvar_0056D410:TfmHeadsMap
 0050B72D    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050B732    cmp         byte ptr [eax+1A6],0;TfmHeadsMap.FShowing:Boolean
>0050B739    je          0050B74A
 0050B73B    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050B740    mov         edx,dword ptr [eax]
 0050B742    call        dword ptr [edx+0C4];TfmHeadsMap.sub_004A746C
>0050B748    jmp         0050B754
 0050B74A    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050B74F    call        004A7450
 0050B754    pop         ecx
 0050B755    pop         ecx
 0050B756    pop         ebp
 0050B757    ret
*}
end;

//0050B758
procedure TfmHeadsMap.btOkClick(Sender:TObject);
begin
{*
 0050B758    push        ebp
 0050B759    mov         ebp,esp
 0050B75B    xor         ecx,ecx
 0050B75D    push        ecx
 0050B75E    push        ecx
 0050B75F    push        ecx
 0050B760    push        ecx
 0050B761    push        ecx
 0050B762    push        ecx
 0050B763    push        ecx
 0050B764    push        ecx
 0050B765    mov         dword ptr [ebp-0C],edx
 0050B768    mov         dword ptr [ebp-4],eax
 0050B76B    xor         eax,eax
 0050B76D    push        ebp
 0050B76E    push        50B86C
 0050B773    push        dword ptr fs:[eax]
 0050B776    mov         dword ptr fs:[eax],esp
 0050B779    lea         edx,[ebp-10]
 0050B77C    mov         eax,dword ptr [ebp-4]
 0050B77F    mov         eax,dword ptr [eax+300];TfmHeadsMap.edKillHead:TLabeledEdit
 0050B785    call        TPanel.GetCaption
 0050B78A    mov         eax,dword ptr [ebp-10]
 0050B78D    xor         edx,edx
 0050B78F    call        0040C4A8
 0050B794    mov         dword ptr [ebp-8],eax
 0050B797    push        0
 0050B799    push        50B880;'Kill Virtual Head: '
 0050B79E    lea         edx,[ebp-18]
 0050B7A1    mov         eax,dword ptr [ebp-8]
 0050B7A4    call        IntToStr
 0050B7A9    push        dword ptr [ebp-18]
 0050B7AC    push        50B89C;#10+Are You sure?'
 0050B7B1    lea         eax,[ebp-14]
 0050B7B4    mov         edx,3
 0050B7B9    call        @LStrCatN
 0050B7BE    mov         eax,dword ptr [ebp-14]
 0050B7C1    mov         cx,word ptr ds:[50B8AC];0x3 gvar_0050B8AC
 0050B7C8    xor         edx,edx
 0050B7CA    call        0043F788
 0050B7CF    cmp         eax,6
>0050B7D2    jne         0050B849
 0050B7D4    mov         eax,dword ptr [ebp-4]
 0050B7D7    mov         eax,dword ptr [eax+37C];TfmHeadsMap.cbClsTransl:TCheckBox
 0050B7DD    mov         edx,dword ptr [eax]
 0050B7DF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050B7E5    test        al,al
>0050B7E7    je          0050B80F
 0050B7E9    mov         ax,31
 0050B7ED    call        005077AC
 0050B7F2    mov         eax,50B8B8;'PushDown-List clear - '
 0050B7F7    call        00544F6C
 0050B7FC    mov         ax,32
 0050B800    call        005077AC
 0050B805    mov         eax,50B8D8;'Relo-List clear - '
 0050B80A    call        00544F6C
 0050B80F    mov         al,byte ptr [ebp-8]
 0050B812    call        004D0048
 0050B817    call        004CEB6C
 0050B81C    push        50B880;'Kill Virtual Head: '
 0050B821    lea         edx,[ebp-20]
 0050B824    mov         eax,dword ptr [ebp-8]
 0050B827    call        IntToStr
 0050B82C    push        dword ptr [ebp-20]
 0050B82F    push        50B8F4;' - '
 0050B834    lea         eax,[ebp-1C]
 0050B837    mov         edx,3
 0050B83C    call        @LStrCatN
 0050B841    mov         eax,dword ptr [ebp-1C]
 0050B844    call        00544F6C
 0050B849    xor         eax,eax
 0050B84B    pop         edx
 0050B84C    pop         ecx
 0050B84D    pop         ecx
 0050B84E    mov         dword ptr fs:[eax],edx
 0050B851    push        50B873
 0050B856    lea         eax,[ebp-20]
 0050B859    mov         edx,4
 0050B85E    call        @LStrArrayClr
 0050B863    lea         eax,[ebp-10]
 0050B866    call        @LStrClr
 0050B86B    ret
>0050B86C    jmp         @HandleFinally
>0050B871    jmp         0050B856
 0050B873    mov         esp,ebp
 0050B875    pop         ebp
 0050B876    ret
*}
end;

//0050B8F8
procedure TfmHeadsMap.FormShow(Sender:TObject);
begin
{*
 0050B8F8    push        ebp
 0050B8F9    mov         ebp,esp
 0050B8FB    add         esp,0FFFFFFF0
 0050B8FE    xor         ecx,ecx
 0050B900    mov         dword ptr [ebp-0C],ecx
 0050B903    mov         dword ptr [ebp-10],ecx
 0050B906    mov         dword ptr [ebp-8],edx
 0050B909    mov         dword ptr [ebp-4],eax
 0050B90C    xor         eax,eax
 0050B90E    push        ebp
 0050B90F    push        50BA08
 0050B914    push        dword ptr fs:[eax]
 0050B917    mov         dword ptr fs:[eax],esp
 0050B91A    mov         dl,1
 0050B91C    mov         eax,[0041DE14];TMemoryStream
 0050B921    call        TObject.Create;TMemoryStream.Create
 0050B926    mov         [0056D414],eax;gvar_0056D414:TMemoryStream
 0050B92B    xor         edx,edx
 0050B92D    mov         eax,dword ptr [ebp-4]
 0050B930    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050B936    mov         ecx,dword ptr [eax]
 0050B938    call        dword ptr [ecx+64];TImage.SetEnabled
 0050B93B    xor         edx,edx
 0050B93D    mov         eax,dword ptr [ebp-4]
 0050B940    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050B946    mov         ecx,dword ptr [eax]
 0050B948    call        dword ptr [ecx+64];TImage.SetEnabled
 0050B94B    mov         eax,[0056E040];^gvar_005720C0
 0050B950    cmp         byte ptr [eax],0
>0050B953    je          0050B97A
 0050B955    mov         dl,1
 0050B957    mov         eax,dword ptr [ebp-4]
 0050B95A    mov         eax,dword ptr [eax+344];TfmHeadsMap.rbModule0A:TRadioButton
 0050B960    mov         ecx,dword ptr [eax]
 0050B962    call        dword ptr [ecx+0CC];TRadioButton.SetChecked
 0050B968    xor         edx,edx
 0050B96A    mov         eax,dword ptr [ebp-4]
 0050B96D    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050B973    mov         ecx,dword ptr [eax]
 0050B975    call        dword ptr [ecx+64];TImage.SetEnabled
>0050B978    jmp         0050B98A
 0050B97A    mov         dl,1
 0050B97C    mov         eax,dword ptr [ebp-4]
 0050B97F    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050B985    mov         ecx,dword ptr [eax]
 0050B987    call        dword ptr [ecx+64];TImage.SetEnabled
 0050B98A    mov         eax,[0056E284];^gvar_0056DF34
 0050B98F    mov         eax,dword ptr [eax]
 0050B991    mov         eax,dword ptr [eax+408]
 0050B997    cmp         byte ptr [eax+38],0
>0050B99B    je          0050B9B1
 0050B99D    xor         edx,edx
 0050B99F    mov         eax,dword ptr [ebp-4]
 0050B9A2    call        TfmHeadsMap.btReadClick
 0050B9A7    xor         edx,edx
 0050B9A9    mov         eax,dword ptr [ebp-4]
 0050B9AC    call        TfmHeadsMap.btGetActHeadsClick
 0050B9B1    lea         edx,[ebp-10]
 0050B9B4    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050B9B9    call        TPanel.GetCaption
 0050B9BE    push        dword ptr [ebp-10]
 0050B9C1    push        50BA1C;' '
 0050B9C6    mov         eax,[0056E284];^gvar_0056DF34
 0050B9CB    mov         eax,dword ptr [eax]
 0050B9CD    push        dword ptr [eax+420]
 0050B9D3    lea         eax,[ebp-0C]
 0050B9D6    mov         edx,3
 0050B9DB    call        @LStrCatN
 0050B9E0    mov         edx,dword ptr [ebp-0C]
 0050B9E3    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050B9E8    call        TPanel.SetCaption
 0050B9ED    xor         eax,eax
 0050B9EF    pop         edx
 0050B9F0    pop         ecx
 0050B9F1    pop         ecx
 0050B9F2    mov         dword ptr fs:[eax],edx
 0050B9F5    push        50BA0F
 0050B9FA    lea         eax,[ebp-10]
 0050B9FD    mov         edx,2
 0050BA02    call        @LStrArrayClr
 0050BA07    ret
>0050BA08    jmp         @HandleFinally
>0050BA0D    jmp         0050B9FA
 0050BA0F    mov         esp,ebp
 0050BA11    pop         ebp
 0050BA12    ret
*}
end;

//0050BA20
procedure sub_0050BA20;
begin
{*
 0050BA20    push        ebp
 0050BA21    mov         ebp,esp
 0050BA23    mov         ecx,5
 0050BA28    push        0
 0050BA2A    push        0
 0050BA2C    dec         ecx
>0050BA2D    jne         0050BA28
 0050BA2F    push        ecx
 0050BA30    xor         eax,eax
 0050BA32    push        ebp
 0050BA33    push        50BCD5
 0050BA38    push        dword ptr fs:[eax]
 0050BA3B    mov         dword ptr fs:[eax],esp
 0050BA3E    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BA43    mov         eax,dword ptr [eax+344];TfmHeadsMap.rbModule0A:TRadioButton
 0050BA49    mov         edx,dword ptr [eax]
 0050BA4B    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050BA51    test        al,al
>0050BA53    je          0050BA83
 0050BA55    cmp         word ptr ds:[5745C4],4F52;gvar_005745C4
>0050BA5E    jne         0050BA7A
 0050BA60    cmp         word ptr ds:[5745C6],4C59;gvar_005745C6
>0050BA69    jne         0050BA7A
 0050BA6B    movzx       eax,word ptr ds:[5745CA];0x0 gvar_005745CA
 0050BA72    shr         eax,1
 0050BA74    inc         eax
 0050BA75    mov         dword ptr [ebp-0C],eax
>0050BA78    jmp         0050BA8A
 0050BA7A    mov         dword ptr [ebp-0C],0D
>0050BA81    jmp         0050BA8A
 0050BA83    mov         dword ptr [ebp-0C],0E9
 0050BA8A    mov         eax,dword ptr [ebp-0C]
 0050BA8D    mov         al,byte ptr [eax*2+5745C4];gvar_005745C4
 0050BA94    mov         byte ptr [ebp-1],al
 0050BA97    mov         eax,dword ptr [ebp-0C]
 0050BA9A    movzx       eax,word ptr [eax*2+5745C4];gvar_005745C4
 0050BAA2    shr         eax,8
 0050BAA5    mov         byte ptr [ebp-2],al
 0050BAA8    mov         eax,dword ptr [ebp-0C]
 0050BAAB    mov         al,byte ptr [eax*2+5745C6];gvar_005745C6
 0050BAB2    mov         byte ptr [ebp-3],al
 0050BAB5    mov         eax,dword ptr [ebp-0C]
 0050BAB8    movzx       eax,word ptr [eax*2+5745C6];gvar_005745C6
 0050BAC0    shr         eax,8
 0050BAC3    mov         byte ptr [ebp-4],al
 0050BAC6    mov         eax,dword ptr [ebp-0C]
 0050BAC9    mov         al,byte ptr [eax*2+5745C8]
 0050BAD0    mov         byte ptr [ebp-5],al
 0050BAD3    mov         al,byte ptr [ebp-4]
 0050BAD6    and         al,1
 0050BAD8    cmp         al,1
 0050BADA    sete        dl
 0050BADD    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BAE2    mov         eax,dword ptr [eax+308];TfmHeadsMap.cbHead0:TCheckBox
 0050BAE8    mov         ecx,dword ptr [eax]
 0050BAEA    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BAF0    mov         al,byte ptr [ebp-4]
 0050BAF3    and         al,2
 0050BAF5    cmp         al,2
 0050BAF7    sete        dl
 0050BAFA    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BAFF    mov         eax,dword ptr [eax+30C];TfmHeadsMap.cbHead1:TCheckBox
 0050BB05    mov         ecx,dword ptr [eax]
 0050BB07    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB0D    mov         al,byte ptr [ebp-4]
 0050BB10    and         al,4
 0050BB12    cmp         al,4
 0050BB14    sete        dl
 0050BB17    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BB1C    mov         eax,dword ptr [eax+310];TfmHeadsMap.cbHead2:TCheckBox
 0050BB22    mov         ecx,dword ptr [eax]
 0050BB24    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB2A    mov         al,byte ptr [ebp-4]
 0050BB2D    and         al,8
 0050BB2F    cmp         al,8
 0050BB31    sete        dl
 0050BB34    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BB39    mov         eax,dword ptr [eax+314];TfmHeadsMap.cbHead3:TCheckBox
 0050BB3F    mov         ecx,dword ptr [eax]
 0050BB41    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB47    mov         al,byte ptr [ebp-4]
 0050BB4A    and         al,10
 0050BB4C    cmp         al,10
 0050BB4E    sete        dl
 0050BB51    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BB56    mov         eax,dword ptr [eax+318];TfmHeadsMap.cbHead4:TCheckBox
 0050BB5C    mov         ecx,dword ptr [eax]
 0050BB5E    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB64    mov         al,byte ptr [ebp-4]
 0050BB67    and         al,20
 0050BB69    cmp         al,20
 0050BB6B    sete        dl
 0050BB6E    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BB73    mov         eax,dword ptr [eax+31C];TfmHeadsMap.cbHead5:TCheckBox
 0050BB79    mov         ecx,dword ptr [eax]
 0050BB7B    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB81    mov         al,byte ptr [ebp-4]
 0050BB84    and         al,40
 0050BB86    cmp         al,40
 0050BB88    sete        dl
 0050BB8B    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BB90    mov         eax,dword ptr [eax+320];TfmHeadsMap.cbHead6:TCheckBox
 0050BB96    mov         ecx,dword ptr [eax]
 0050BB98    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BB9E    mov         al,byte ptr [ebp-4]
 0050BBA1    and         al,80
 0050BBA3    cmp         al,80
 0050BBA5    sete        dl
 0050BBA8    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BBAD    mov         eax,dword ptr [eax+324];TfmHeadsMap.cbHead7:TCheckBox
 0050BBB3    mov         ecx,dword ptr [eax]
 0050BBB5    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BBBB    test        byte ptr [ebp-1],1
 0050BBBF    sete        dl
 0050BBC2    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BBC7    mov         eax,dword ptr [eax+328];TfmHeadsMap.cbUseHeadsMap:TCheckBox
 0050BBCD    mov         ecx,dword ptr [eax]
 0050BBCF    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0050BBD5    lea         edx,[ebp-10]
 0050BBD8    xor         eax,eax
 0050BBDA    mov         al,byte ptr [ebp-3]
 0050BBDD    call        IntToStr
 0050BBE2    mov         edx,dword ptr [ebp-10]
 0050BBE5    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BBEA    mov         eax,dword ptr [eax+330];TfmHeadsMap.edPhysicalHeads:TLabeledEdit
 0050BBF0    call        TPanel.SetCaption
 0050BBF5    lea         edx,[ebp-14]
 0050BBF8    xor         eax,eax
 0050BBFA    mov         al,byte ptr [ebp-2]
 0050BBFD    call        IntToStr
 0050BC02    mov         edx,dword ptr [ebp-14]
 0050BC05    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BC0A    mov         eax,dword ptr [eax+32C];TfmHeadsMap.edInUseHeads:TLabeledEdit
 0050BC10    call        TPanel.SetCaption
 0050BC15    lea         ecx,[ebp-1C]
 0050BC18    xor         eax,eax
 0050BC1A    mov         al,byte ptr [ebp-4]
 0050BC1D    mov         edx,2
 0050BC22    call        IntToHex
 0050BC27    mov         ecx,dword ptr [ebp-1C]
 0050BC2A    lea         eax,[ebp-18]
 0050BC2D    mov         edx,50BCE8;'$'
 0050BC32    call        @LStrCat3
 0050BC37    mov         edx,dword ptr [ebp-18]
 0050BC3A    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BC3F    mov         eax,dword ptr [eax+370];TfmHeadsMap.edNativeHeadMap:TLabeledEdit
 0050BC45    call        TPanel.SetCaption
 0050BC4A    lea         ecx,[ebp-24]
 0050BC4D    xor         eax,eax
 0050BC4F    mov         al,byte ptr [ebp-5]
 0050BC52    mov         edx,2
 0050BC57    call        IntToHex
 0050BC5C    mov         ecx,dword ptr [ebp-24]
 0050BC5F    lea         eax,[ebp-20]
 0050BC62    mov         edx,50BCE8;'$'
 0050BC67    call        @LStrCat3
 0050BC6C    mov         edx,dword ptr [ebp-20]
 0050BC6F    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BC74    mov         eax,dword ptr [eax+34C];TfmHeadsMap.edGoodHeadMap:TLabeledEdit
 0050BC7A    call        TPanel.SetCaption
 0050BC7F    lea         ecx,[ebp-2C]
 0050BC82    mov         eax,dword ptr [ebp-0C]
 0050BC85    movzx       eax,word ptr [eax*2+5745D4]
 0050BC8D    mov         edx,4
 0050BC92    call        IntToHex
 0050BC97    mov         ecx,dword ptr [ebp-2C]
 0050BC9A    lea         eax,[ebp-28]
 0050BC9D    mov         edx,50BCE8;'$'
 0050BCA2    call        @LStrCat3
 0050BCA7    mov         edx,dword ptr [ebp-28]
 0050BCAA    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BCAF    mov         eax,dword ptr [eax+378];TfmHeadsMap.edTpi:TLabeledEdit
 0050BCB5    call        TPanel.SetCaption
 0050BCBA    xor         eax,eax
 0050BCBC    pop         edx
 0050BCBD    pop         ecx
 0050BCBE    pop         ecx
 0050BCBF    mov         dword ptr fs:[eax],edx
 0050BCC2    push        50BCDC
 0050BCC7    lea         eax,[ebp-2C]
 0050BCCA    mov         edx,8
 0050BCCF    call        @LStrArrayClr
 0050BCD4    ret
>0050BCD5    jmp         @HandleFinally
>0050BCDA    jmp         0050BCC7
 0050BCDC    mov         esp,ebp
 0050BCDE    pop         ebp
 0050BCDF    ret
*}
end;

//0050BCEC
procedure sub_0050BCEC;
begin
{*
 0050BCEC    push        ebp
 0050BCED    mov         ebp,esp
 0050BCEF    mov         ecx,4
 0050BCF4    push        0
 0050BCF6    push        0
 0050BCF8    dec         ecx
>0050BCF9    jne         0050BCF4
 0050BCFB    push        ecx
 0050BCFC    xor         eax,eax
 0050BCFE    push        ebp
 0050BCFF    push        50BED5
 0050BD04    push        dword ptr fs:[eax]
 0050BD07    mov         dword ptr fs:[eax],esp
 0050BD0A    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BD0F    mov         eax,dword ptr [eax+344];TfmHeadsMap.rbModule0A:TRadioButton
 0050BD15    mov         edx,dword ptr [eax]
 0050BD17    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050BD1D    test        al,al
>0050BD1F    je          0050BD4E
 0050BD21    cmp         word ptr ds:[5745C4],4F52;gvar_005745C4
>0050BD2A    jne         0050BD45
 0050BD2C    cmp         word ptr ds:[5745C6],4C59;gvar_005745C6
>0050BD35    jne         0050BD45
 0050BD37    movzx       eax,word ptr ds:[5745CA];0x0 gvar_005745CA
 0050BD3E    shr         eax,1
 0050BD40    mov         dword ptr [ebp-0C],eax
>0050BD43    jmp         0050BD55
 0050BD45    mov         dword ptr [ebp-0C],0C
>0050BD4C    jmp         0050BD55
 0050BD4E    mov         dword ptr [ebp-0C],0E8
 0050BD55    mov         byte ptr [ebp-3],0
 0050BD59    mov         word ptr [ebp-2],0
 0050BD5F    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BD64    mov         eax,dword ptr [eax+328];TfmHeadsMap.cbUseHeadsMap:TCheckBox
 0050BD6A    mov         edx,dword ptr [eax]
 0050BD6C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050BD72    test        al,al
>0050BD74    jne         0050BD7C
 0050BD76    or          byte ptr [ebp-3],1
>0050BD7A    jmp         0050BD80
 0050BD7C    and         byte ptr [ebp-3],0FE
 0050BD80    lea         edx,[ebp-14]
 0050BD83    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BD88    mov         eax,dword ptr [eax+330];TfmHeadsMap.edPhysicalHeads:TLabeledEdit
 0050BD8E    call        TPanel.GetCaption
 0050BD93    mov         eax,dword ptr [ebp-14]
 0050BD96    xor         edx,edx
 0050BD98    call        0040C4A8
 0050BD9D    mov         byte ptr [ebp-5],al
 0050BDA0    lea         edx,[ebp-18]
 0050BDA3    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BDA8    mov         eax,dword ptr [eax+32C];TfmHeadsMap.edInUseHeads:TLabeledEdit
 0050BDAE    call        TPanel.GetCaption
 0050BDB3    mov         eax,dword ptr [ebp-18]
 0050BDB6    xor         edx,edx
 0050BDB8    call        0040C4A8
 0050BDBD    mov         byte ptr [ebp-4],al
 0050BDC0    lea         edx,[ebp-1C]
 0050BDC3    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BDC8    mov         eax,dword ptr [eax+370];TfmHeadsMap.edNativeHeadMap:TLabeledEdit
 0050BDCE    call        TPanel.GetCaption
 0050BDD3    mov         eax,dword ptr [ebp-1C]
 0050BDD6    xor         edx,edx
 0050BDD8    call        0040C4A8
 0050BDDD    mov         byte ptr [ebp-6],al
 0050BDE0    lea         edx,[ebp-20]
 0050BDE3    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BDE8    mov         eax,dword ptr [eax+34C];TfmHeadsMap.edGoodHeadMap:TLabeledEdit
 0050BDEE    call        TPanel.GetCaption
 0050BDF3    mov         eax,dword ptr [ebp-20]
 0050BDF6    xor         edx,edx
 0050BDF8    call        0040C4A8
 0050BDFD    mov         byte ptr [ebp-7],al
 0050BE00    xor         eax,eax
 0050BE02    mov         al,byte ptr [ebp-4]
 0050BE05    shl         eax,8
 0050BE08    xor         edx,edx
 0050BE0A    mov         dl,byte ptr [ebp-3]
 0050BE0D    or          ax,dx
 0050BE10    mov         edx,dword ptr [ebp-0C]
 0050BE13    mov         word ptr [edx*2+5745C6],ax;gvar_005745C6
 0050BE1B    xor         eax,eax
 0050BE1D    mov         al,byte ptr [ebp-6]
 0050BE20    shl         eax,8
 0050BE23    xor         edx,edx
 0050BE25    mov         dl,byte ptr [ebp-5]
 0050BE28    or          ax,dx
 0050BE2B    mov         edx,dword ptr [ebp-0C]
 0050BE2E    mov         word ptr [edx*2+5745C8],ax
 0050BE36    xor         eax,eax
 0050BE38    mov         al,byte ptr [ebp-7]
 0050BE3B    mov         edx,dword ptr [ebp-0C]
 0050BE3E    mov         word ptr [edx*2+5745CA],ax;gvar_005745CA
 0050BE46    lea         edx,[ebp-24]
 0050BE49    mov         eax,[0056D410];0x0 gvar_0056D410:TfmHeadsMap
 0050BE4E    mov         eax,dword ptr [eax+378];TfmHeadsMap.edTpi:TLabeledEdit
 0050BE54    call        TPanel.GetCaption
 0050BE59    mov         eax,dword ptr [ebp-24]
 0050BE5C    xor         edx,edx
 0050BE5E    call        0040C4A8
 0050BE63    mov         edx,dword ptr [ebp-0C]
 0050BE66    mov         word ptr [edx*2+5745D6],ax
 0050BE6E    xor         eax,eax
 0050BE70    mov         dword ptr [ebp-10],eax
 0050BE73    mov         eax,dword ptr [ebp-0C]
 0050BE76    add         eax,dword ptr [ebp-10]
 0050BE79    mov         ax,word ptr [eax*2+5745C4];gvar_005745C4
 0050BE81    and         ax,0FF
 0050BE85    add         word ptr [ebp-2],ax
 0050BE89    mov         eax,dword ptr [ebp-0C]
 0050BE8C    add         eax,dword ptr [ebp-10]
 0050BE8F    movzx       eax,word ptr [eax*2+5745C4];gvar_005745C4
 0050BE97    shr         eax,8
 0050BE9A    add         word ptr [ebp-2],ax
 0050BE9E    inc         dword ptr [ebp-10]
 0050BEA1    cmp         dword ptr [ebp-10],0F
>0050BEA5    jne         0050BE73
 0050BEA7    mov         ax,word ptr [ebp-2]
 0050BEAB    not         ax
 0050BEAE    inc         eax
 0050BEAF    mov         edx,dword ptr [ebp-0C]
 0050BEB2    mov         word ptr [edx*2+5745E2],ax
 0050BEBA    xor         eax,eax
 0050BEBC    pop         edx
 0050BEBD    pop         ecx
 0050BEBE    pop         ecx
 0050BEBF    mov         dword ptr fs:[eax],edx
 0050BEC2    push        50BEDC
 0050BEC7    lea         eax,[ebp-24]
 0050BECA    mov         edx,5
 0050BECF    call        @LStrArrayClr
 0050BED4    ret
>0050BED5    jmp         @HandleFinally
>0050BEDA    jmp         0050BEC7
 0050BEDC    mov         esp,ebp
 0050BEDE    pop         ebp
 0050BEDF    ret
*}
end;

//0050BEE0
procedure TfmHeadsMap.btReadClick(Sender:TObject);
begin
{*
 0050BEE0    push        ebp
 0050BEE1    mov         ebp,esp
 0050BEE3    add         esp,0FFFFFFF8
 0050BEE6    push        ebx
 0050BEE7    mov         dword ptr [ebp-8],edx
 0050BEEA    mov         dword ptr [ebp-4],eax
 0050BEED    mov         eax,[0056E5A4];^gvar_0056DF04
 0050BEF2    mov         byte ptr [eax],0
 0050BEF5    mov         eax,5745C4;gvar_005745C4
 0050BEFA    xor         ecx,ecx
 0050BEFC    mov         edx,3000
 0050BF01    call        @FillChar
 0050BF06    cmp         dword ptr ds:[56D414],0;gvar_0056D414:TMemoryStream
>0050BF0D    jne         0050BF22
 0050BF0F    mov         dl,1
 0050BF11    mov         eax,[0041DE14];TMemoryStream
 0050BF16    call        TObject.Create;TMemoryStream.Create
 0050BF1B    mov         [0056D414],eax;gvar_0056D414:TMemoryStream
>0050BF20    jmp         0050BF2C
 0050BF22    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BF27    call        00423F20
 0050BF2C    mov         eax,dword ptr [ebp-4]
 0050BF2F    mov         eax,dword ptr [eax+344];TfmHeadsMap.rbModule0A:TRadioButton
 0050BF35    mov         edx,dword ptr [eax]
 0050BF37    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050BF3D    test        al,al
>0050BF3F    je          0050BF87
 0050BF41    mov         edx,dword ptr ds:[56D414];0x0 gvar_0056D414:TMemoryStream
 0050BF47    mov         ax,0A
 0050BF4B    call        004CF5C8
 0050BF50    test        al,al
>0050BF52    je          0050BF7B
 0050BF54    xor         ecx,ecx
 0050BF56    xor         edx,edx
 0050BF58    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BF5D    mov         ebx,dword ptr [eax]
 0050BF5F    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050BF62    mov         edx,5745C4;gvar_005745C4
 0050BF67    mov         ecx,200
 0050BF6C    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BF71    mov         ebx,dword ptr [eax]
 0050BF73    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
>0050BF76    jmp         0050BFFF
 0050BF7B    mov         eax,50C034;'Read Module id0A - '
 0050BF80    call        00544F6C
>0050BF85    jmp         0050BFFF
 0050BF87    mov         ecx,dword ptr ds:[56D414];0x0 gvar_0056D414:TMemoryStream
 0050BF8D    xor         edx,edx
 0050BF8F    xor         eax,eax
 0050BF91    call        004D007C
 0050BF96    test        al,al
>0050BF98    je          0050BFD6
 0050BF9A    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BF9F    mov         edx,dword ptr [eax]
 0050BFA1    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050BFA3    cmp         edx,0
>0050BFA6    jne         0050BFD6
 0050BFA8    cmp         eax,20000
>0050BFAD    jne         0050BFD6
 0050BFAF    xor         ecx,ecx
 0050BFB1    mov         edx,1FE00
 0050BFB6    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BFBB    mov         ebx,dword ptr [eax]
 0050BFBD    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050BFC0    mov         edx,5745C4;gvar_005745C4
 0050BFC5    mov         ecx,200
 0050BFCA    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BFCF    mov         ebx,dword ptr [eax]
 0050BFD1    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
>0050BFD4    jmp         0050BFE0
 0050BFD6    mov         eax,50C050;'Flash Read - '
 0050BFDB    call        00544F6C
 0050BFE0    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050BFE5    mov         edx,dword ptr [eax]
 0050BFE7    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050BFE9    cmp         edx,0
>0050BFEC    jne         0050BFF3
 0050BFEE    cmp         eax,20000
>0050BFF3    je          0050BFFF
 0050BFF5    mov         eax,50C068;'Flash Size<>131072'+#10+Please use Module id0A'
 0050BFFA    call        0043F8B4
 0050BFFF    call        0050BA20
 0050C004    mov         dl,1
 0050C006    mov         eax,dword ptr [ebp-4]
 0050C009    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050C00F    mov         ecx,dword ptr [eax]
 0050C011    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C014    mov         dl,1
 0050C016    mov         eax,dword ptr [ebp-4]
 0050C019    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050C01F    mov         ecx,dword ptr [eax]
 0050C021    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C024    pop         ebx
 0050C025    pop         ecx
 0050C026    pop         ecx
 0050C027    pop         ebp
 0050C028    ret
*}
end;

//0050C094
procedure TfmHeadsMap.btLoadClick(Sender:TObject);
begin
{*
 0050C094    push        ebp
 0050C095    mov         ebp,esp
 0050C097    add         esp,0FFFFFFF0
 0050C09A    push        ebx
 0050C09B    xor         ecx,ecx
 0050C09D    mov         dword ptr [ebp-10],ecx
 0050C0A0    mov         dword ptr [ebp-0C],ecx
 0050C0A3    mov         dword ptr [ebp-8],edx
 0050C0A6    mov         dword ptr [ebp-4],eax
 0050C0A9    xor         eax,eax
 0050C0AB    push        ebp
 0050C0AC    push        50C272
 0050C0B1    push        dword ptr fs:[eax]
 0050C0B4    mov         dword ptr fs:[eax],esp
 0050C0B7    mov         eax,[0056E5A4];^gvar_0056DF04
 0050C0BC    mov         byte ptr [eax],0
 0050C0BF    mov         eax,5745C4;gvar_005745C4
 0050C0C4    xor         ecx,ecx
 0050C0C6    mov         edx,3000
 0050C0CB    call        @FillChar
 0050C0D0    cmp         dword ptr ds:[56D414],0;gvar_0056D414:TMemoryStream
>0050C0D7    jne         0050C0EC
 0050C0D9    mov         dl,1
 0050C0DB    mov         eax,[0041DE14];TMemoryStream
 0050C0E0    call        TObject.Create;TMemoryStream.Create
 0050C0E5    mov         [0056D414],eax;gvar_0056D414:TMemoryStream
>0050C0EA    jmp         0050C0F6
 0050C0EC    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C0F1    call        00423F20
 0050C0F6    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C0FB    mov         eax,dword ptr [eax]
 0050C0FD    mov         eax,dword ptr [eax+35C]
 0050C103    add         eax,78
 0050C106    call        @LStrClr
 0050C10B    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050C111    mov         edx,dword ptr [edx]
 0050C113    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C118    mov         eax,dword ptr [eax]
 0050C11A    mov         eax,dword ptr [eax+35C]
 0050C120    call        TOpenDialog.SetInitialDir
 0050C125    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C12A    mov         eax,dword ptr [eax]
 0050C12C    mov         eax,dword ptr [eax+35C]
 0050C132    mov         edx,dword ptr [eax]
 0050C134    call        dword ptr [edx+3C]
 0050C137    test        al,al
>0050C139    je          0050C257
 0050C13F    lea         edx,[ebp-0C]
 0050C142    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C147    mov         eax,dword ptr [eax]
 0050C149    mov         eax,dword ptr [eax+35C]
 0050C14F    call        TOpenDialog.GetFileName
 0050C154    mov         eax,dword ptr [ebp-0C]
 0050C157    call        0040C94C
 0050C15C    test        al,al
>0050C15E    je          0050C257
 0050C164    lea         edx,[ebp-10]
 0050C167    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C16C    mov         eax,dword ptr [eax]
 0050C16E    mov         eax,dword ptr [eax+35C]
 0050C174    call        TOpenDialog.GetFileName
 0050C179    mov         edx,dword ptr [ebp-10]
 0050C17C    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C181    call        00423F8C
 0050C186    mov         eax,dword ptr [ebp-4]
 0050C189    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C18F    mov         edx,dword ptr [eax]
 0050C191    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C197    test        al,al
>0050C199    je          0050C1C3
 0050C19B    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C1A0    mov         edx,dword ptr [eax]
 0050C1A2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050C1A4    cmp         edx,0
>0050C1A7    jne         0050C1B2
 0050C1A9    cmp         eax,20000
>0050C1AE    jae         0050C1E8
>0050C1B0    jmp         0050C1B4
>0050C1B2    jge         0050C1E8
 0050C1B4    mov         eax,50C288;'Incorrect File!'
 0050C1B9    call        0043F8B4
>0050C1BE    jmp         0050C257
 0050C1C3    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C1C8    mov         edx,dword ptr [eax]
 0050C1CA    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050C1CC    cmp         edx,0
>0050C1CF    jne         0050C1DA
 0050C1D1    cmp         eax,200
>0050C1D6    jbe         0050C1E8
>0050C1D8    jmp         0050C1DC
>0050C1DA    jle         0050C1E8
 0050C1DC    mov         eax,50C288;'Incorrect File!'
 0050C1E1    call        0043F8B4
>0050C1E6    jmp         0050C257
 0050C1E8    mov         eax,dword ptr [ebp-4]
 0050C1EB    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C1F1    mov         edx,dword ptr [eax]
 0050C1F3    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C1F9    test        al,al
>0050C1FB    je          0050C210
 0050C1FD    xor         ecx,ecx
 0050C1FF    mov         edx,1FE00
 0050C204    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C209    mov         ebx,dword ptr [eax]
 0050C20B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>0050C20E    jmp         0050C21E
 0050C210    xor         ecx,ecx
 0050C212    xor         edx,edx
 0050C214    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C219    mov         ebx,dword ptr [eax]
 0050C21B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050C21E    mov         edx,5745C4;gvar_005745C4
 0050C223    mov         ecx,200
 0050C228    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C22D    mov         ebx,dword ptr [eax]
 0050C22F    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 0050C232    call        0050BA20
 0050C237    mov         dl,1
 0050C239    mov         eax,dword ptr [ebp-4]
 0050C23C    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050C242    mov         ecx,dword ptr [eax]
 0050C244    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C247    mov         dl,1
 0050C249    mov         eax,dword ptr [ebp-4]
 0050C24C    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050C252    mov         ecx,dword ptr [eax]
 0050C254    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C257    xor         eax,eax
 0050C259    pop         edx
 0050C25A    pop         ecx
 0050C25B    pop         ecx
 0050C25C    mov         dword ptr fs:[eax],edx
 0050C25F    push        50C279
 0050C264    lea         eax,[ebp-10]
 0050C267    mov         edx,2
 0050C26C    call        @LStrArrayClr
 0050C271    ret
>0050C272    jmp         @HandleFinally
>0050C277    jmp         0050C264
 0050C279    pop         ebx
 0050C27A    mov         esp,ebp
 0050C27C    pop         ebp
 0050C27D    ret
*}
end;

//0050C298
procedure TfmHeadsMap.btSaveClick(Sender:TObject);
begin
{*
 0050C298    push        ebp
 0050C299    mov         ebp,esp
 0050C29B    add         esp,0FFFFFFF4
 0050C29E    push        ebx
 0050C29F    xor         ecx,ecx
 0050C2A1    mov         dword ptr [ebp-0C],ecx
 0050C2A4    mov         dword ptr [ebp-8],edx
 0050C2A7    mov         dword ptr [ebp-4],eax
 0050C2AA    xor         eax,eax
 0050C2AC    push        ebp
 0050C2AD    push        50C3BA
 0050C2B2    push        dword ptr fs:[eax]
 0050C2B5    mov         dword ptr fs:[eax],esp
 0050C2B8    call        0050BCEC
 0050C2BD    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0050C2C3    mov         edx,dword ptr [edx]
 0050C2C5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C2CA    mov         eax,dword ptr [eax]
 0050C2CC    mov         eax,dword ptr [eax+364]
 0050C2D2    call        TOpenDialog.SetInitialDir
 0050C2D7    mov         eax,dword ptr [ebp-4]
 0050C2DA    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C2E0    mov         edx,dword ptr [eax]
 0050C2E2    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C2E8    test        al,al
>0050C2EA    je          0050C308
 0050C2EC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C2F1    mov         eax,dword ptr [eax]
 0050C2F3    mov         eax,dword ptr [eax+364]
 0050C2F9    add         eax,78
 0050C2FC    mov         edx,50C3D0;'rom.bin'
 0050C301    call        @LStrAsg
>0050C306    jmp         0050C322
 0050C308    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C30D    mov         eax,dword ptr [eax]
 0050C30F    mov         eax,dword ptr [eax+364]
 0050C315    add         eax,78
 0050C318    mov         edx,50C3E0;'   0A.rpm'
 0050C31D    call        @LStrAsg
 0050C322    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C327    mov         eax,dword ptr [eax]
 0050C329    mov         eax,dword ptr [eax+364]
 0050C32F    mov         edx,dword ptr [eax]
 0050C331    call        dword ptr [edx+3C]
 0050C334    test        al,al
>0050C336    je          0050C3A4
 0050C338    mov         eax,dword ptr [ebp-4]
 0050C33B    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C341    mov         edx,dword ptr [eax]
 0050C343    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C349    test        al,al
>0050C34B    je          0050C360
 0050C34D    xor         ecx,ecx
 0050C34F    mov         edx,1FE00
 0050C354    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C359    mov         ebx,dword ptr [eax]
 0050C35B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>0050C35E    jmp         0050C36E
 0050C360    xor         ecx,ecx
 0050C362    xor         edx,edx
 0050C364    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C369    mov         ebx,dword ptr [eax]
 0050C36B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050C36E    mov         edx,5745C4;gvar_005745C4
 0050C373    mov         ecx,200
 0050C378    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C37D    mov         ebx,dword ptr [eax]
 0050C37F    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 0050C382    lea         edx,[ebp-0C]
 0050C385    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C38A    mov         eax,dword ptr [eax]
 0050C38C    mov         eax,dword ptr [eax+364]
 0050C392    call        TOpenDialog.GetFileName
 0050C397    mov         edx,dword ptr [ebp-0C]
 0050C39A    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C39F    call        00423E84
 0050C3A4    xor         eax,eax
 0050C3A6    pop         edx
 0050C3A7    pop         ecx
 0050C3A8    pop         ecx
 0050C3A9    mov         dword ptr fs:[eax],edx
 0050C3AC    push        50C3C1
 0050C3B1    lea         eax,[ebp-0C]
 0050C3B4    call        @LStrClr
 0050C3B9    ret
>0050C3BA    jmp         @HandleFinally
>0050C3BF    jmp         0050C3B1
 0050C3C1    pop         ebx
 0050C3C2    mov         esp,ebp
 0050C3C4    pop         ebp
 0050C3C5    ret
*}
end;

//0050C3EC
procedure TfmHeadsMap.cbHead0Click(Sender:TObject);
begin
{*
 0050C3EC    push        ebp
 0050C3ED    mov         ebp,esp
 0050C3EF    mov         ecx,5
 0050C3F4    push        0
 0050C3F6    push        0
 0050C3F8    dec         ecx
>0050C3F9    jne         0050C3F4
 0050C3FB    mov         dword ptr [ebp-10],edx
 0050C3FE    mov         dword ptr [ebp-4],eax
 0050C401    xor         eax,eax
 0050C403    push        ebp
 0050C404    push        50C6A5
 0050C409    push        dword ptr fs:[eax]
 0050C40C    mov         dword ptr fs:[eax],esp
 0050C40F    xor         eax,eax
 0050C411    mov         dword ptr [ebp-8],eax
 0050C414    mov         eax,dword ptr [ebp-4]
 0050C417    mov         eax,dword ptr [eax+308];TfmHeadsMap.cbHead0:TCheckBox
 0050C41D    mov         edx,dword ptr [eax]
 0050C41F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C425    test        al,al
>0050C427    je          0050C42C
 0050C429    inc         dword ptr [ebp-8]
 0050C42C    mov         eax,dword ptr [ebp-4]
 0050C42F    mov         eax,dword ptr [eax+30C];TfmHeadsMap.cbHead1:TCheckBox
 0050C435    mov         edx,dword ptr [eax]
 0050C437    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C43D    test        al,al
>0050C43F    je          0050C444
 0050C441    inc         dword ptr [ebp-8]
 0050C444    mov         eax,dword ptr [ebp-4]
 0050C447    mov         eax,dword ptr [eax+310];TfmHeadsMap.cbHead2:TCheckBox
 0050C44D    mov         edx,dword ptr [eax]
 0050C44F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C455    test        al,al
>0050C457    je          0050C45C
 0050C459    inc         dword ptr [ebp-8]
 0050C45C    mov         eax,dword ptr [ebp-4]
 0050C45F    mov         eax,dword ptr [eax+314];TfmHeadsMap.cbHead3:TCheckBox
 0050C465    mov         edx,dword ptr [eax]
 0050C467    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C46D    test        al,al
>0050C46F    je          0050C474
 0050C471    inc         dword ptr [ebp-8]
 0050C474    mov         eax,dword ptr [ebp-4]
 0050C477    mov         eax,dword ptr [eax+318];TfmHeadsMap.cbHead4:TCheckBox
 0050C47D    mov         edx,dword ptr [eax]
 0050C47F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C485    test        al,al
>0050C487    je          0050C48C
 0050C489    inc         dword ptr [ebp-8]
 0050C48C    mov         eax,dword ptr [ebp-4]
 0050C48F    mov         eax,dword ptr [eax+31C];TfmHeadsMap.cbHead5:TCheckBox
 0050C495    mov         edx,dword ptr [eax]
 0050C497    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C49D    test        al,al
>0050C49F    je          0050C4A4
 0050C4A1    inc         dword ptr [ebp-8]
 0050C4A4    mov         eax,dword ptr [ebp-4]
 0050C4A7    mov         eax,dword ptr [eax+320];TfmHeadsMap.cbHead6:TCheckBox
 0050C4AD    mov         edx,dword ptr [eax]
 0050C4AF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C4B5    test        al,al
>0050C4B7    je          0050C4BC
 0050C4B9    inc         dword ptr [ebp-8]
 0050C4BC    mov         eax,dword ptr [ebp-4]
 0050C4BF    mov         eax,dword ptr [eax+324];TfmHeadsMap.cbHead7:TCheckBox
 0050C4C5    mov         edx,dword ptr [eax]
 0050C4C7    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C4CD    test        al,al
>0050C4CF    je          0050C4D4
 0050C4D1    inc         dword ptr [ebp-8]
 0050C4D4    lea         edx,[ebp-14]
 0050C4D7    mov         eax,dword ptr [ebp-8]
 0050C4DA    call        IntToStr
 0050C4DF    mov         edx,dword ptr [ebp-14]
 0050C4E2    mov         eax,dword ptr [ebp-4]
 0050C4E5    mov         eax,dword ptr [eax+330];TfmHeadsMap.edPhysicalHeads:TLabeledEdit
 0050C4EB    call        TPanel.SetCaption
 0050C4F0    mov         byte ptr [ebp-9],0
 0050C4F4    mov         eax,dword ptr [ebp-4]
 0050C4F7    mov         eax,dword ptr [eax+308];TfmHeadsMap.cbHead0:TCheckBox
 0050C4FD    mov         edx,dword ptr [eax]
 0050C4FF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C505    test        al,al
>0050C507    je          0050C50F
 0050C509    or          byte ptr [ebp-9],1
>0050C50D    jmp         0050C513
 0050C50F    and         byte ptr [ebp-9],0FE
 0050C513    mov         eax,dword ptr [ebp-4]
 0050C516    mov         eax,dword ptr [eax+30C];TfmHeadsMap.cbHead1:TCheckBox
 0050C51C    mov         edx,dword ptr [eax]
 0050C51E    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C524    test        al,al
>0050C526    je          0050C52E
 0050C528    or          byte ptr [ebp-9],2
>0050C52C    jmp         0050C532
 0050C52E    and         byte ptr [ebp-9],0FD
 0050C532    mov         eax,dword ptr [ebp-4]
 0050C535    mov         eax,dword ptr [eax+310];TfmHeadsMap.cbHead2:TCheckBox
 0050C53B    mov         edx,dword ptr [eax]
 0050C53D    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C543    test        al,al
>0050C545    je          0050C54D
 0050C547    or          byte ptr [ebp-9],4
>0050C54B    jmp         0050C551
 0050C54D    and         byte ptr [ebp-9],0FB
 0050C551    mov         eax,dword ptr [ebp-4]
 0050C554    mov         eax,dword ptr [eax+314];TfmHeadsMap.cbHead3:TCheckBox
 0050C55A    mov         edx,dword ptr [eax]
 0050C55C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C562    test        al,al
>0050C564    je          0050C56C
 0050C566    or          byte ptr [ebp-9],8
>0050C56A    jmp         0050C570
 0050C56C    and         byte ptr [ebp-9],0F7
 0050C570    mov         eax,dword ptr [ebp-4]
 0050C573    mov         eax,dword ptr [eax+318];TfmHeadsMap.cbHead4:TCheckBox
 0050C579    mov         edx,dword ptr [eax]
 0050C57B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C581    test        al,al
>0050C583    je          0050C58B
 0050C585    or          byte ptr [ebp-9],10
>0050C589    jmp         0050C58F
 0050C58B    and         byte ptr [ebp-9],0EF
 0050C58F    mov         eax,dword ptr [ebp-4]
 0050C592    mov         eax,dword ptr [eax+31C];TfmHeadsMap.cbHead5:TCheckBox
 0050C598    mov         edx,dword ptr [eax]
 0050C59A    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C5A0    test        al,al
>0050C5A2    je          0050C5AA
 0050C5A4    or          byte ptr [ebp-9],20
>0050C5A8    jmp         0050C5AE
 0050C5AA    and         byte ptr [ebp-9],0DF
 0050C5AE    mov         eax,dword ptr [ebp-4]
 0050C5B1    mov         eax,dword ptr [eax+320];TfmHeadsMap.cbHead6:TCheckBox
 0050C5B7    mov         edx,dword ptr [eax]
 0050C5B9    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C5BF    test        al,al
>0050C5C1    je          0050C5C9
 0050C5C3    or          byte ptr [ebp-9],40
>0050C5C7    jmp         0050C5CD
 0050C5C9    and         byte ptr [ebp-9],0BF
 0050C5CD    mov         eax,dword ptr [ebp-4]
 0050C5D0    mov         eax,dword ptr [eax+324];TfmHeadsMap.cbHead7:TCheckBox
 0050C5D6    mov         edx,dword ptr [eax]
 0050C5D8    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C5DE    test        al,al
>0050C5E0    je          0050C5E8
 0050C5E2    or          byte ptr [ebp-9],80
>0050C5E6    jmp         0050C5EC
 0050C5E8    and         byte ptr [ebp-9],7F
 0050C5EC    lea         ecx,[ebp-1C]
 0050C5EF    xor         eax,eax
 0050C5F1    mov         al,byte ptr [ebp-9]
 0050C5F4    mov         edx,2
 0050C5F9    call        IntToHex
 0050C5FE    mov         ecx,dword ptr [ebp-1C]
 0050C601    lea         eax,[ebp-18]
 0050C604    mov         edx,50C6B8;'$'
 0050C609    call        @LStrCat3
 0050C60E    mov         edx,dword ptr [ebp-18]
 0050C611    mov         eax,dword ptr [ebp-4]
 0050C614    mov         eax,dword ptr [eax+370];TfmHeadsMap.edNativeHeadMap:TLabeledEdit
 0050C61A    call        TPanel.SetCaption
 0050C61F    mov         eax,dword ptr [ebp-4]
 0050C622    mov         eax,dword ptr [eax+350];TfmHeadsMap.cbAutoMap2:TCheckBox
 0050C628    mov         edx,dword ptr [eax]
 0050C62A    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C630    test        al,al
>0050C632    je          0050C68A
 0050C634    lea         edx,[ebp-20]
 0050C637    mov         eax,dword ptr [ebp-8]
 0050C63A    call        IntToStr
 0050C63F    mov         edx,dword ptr [ebp-20]
 0050C642    mov         eax,dword ptr [ebp-4]
 0050C645    mov         eax,dword ptr [eax+32C];TfmHeadsMap.edInUseHeads:TLabeledEdit
 0050C64B    call        TPanel.SetCaption
 0050C650    mov         ecx,dword ptr [ebp-8]
 0050C653    dec         ecx
 0050C654    mov         eax,2
 0050C659    shl         eax,cl
 0050C65B    dec         eax
 0050C65C    lea         ecx,[ebp-28]
 0050C65F    mov         edx,2
 0050C664    call        IntToHex
 0050C669    mov         ecx,dword ptr [ebp-28]
 0050C66C    lea         eax,[ebp-24]
 0050C66F    mov         edx,50C6B8;'$'
 0050C674    call        @LStrCat3
 0050C679    mov         edx,dword ptr [ebp-24]
 0050C67C    mov         eax,dword ptr [ebp-4]
 0050C67F    mov         eax,dword ptr [eax+34C];TfmHeadsMap.edGoodHeadMap:TLabeledEdit
 0050C685    call        TPanel.SetCaption
 0050C68A    xor         eax,eax
 0050C68C    pop         edx
 0050C68D    pop         ecx
 0050C68E    pop         ecx
 0050C68F    mov         dword ptr fs:[eax],edx
 0050C692    push        50C6AC
 0050C697    lea         eax,[ebp-28]
 0050C69A    mov         edx,6
 0050C69F    call        @LStrArrayClr
 0050C6A4    ret
>0050C6A5    jmp         @HandleFinally
>0050C6AA    jmp         0050C697
 0050C6AC    mov         esp,ebp
 0050C6AE    pop         ebp
 0050C6AF    ret
*}
end;

//0050C6BC
procedure TfmHeadsMap.rbModule0AClick(Sender:TObject);
begin
{*
 0050C6BC    push        ebp
 0050C6BD    mov         ebp,esp
 0050C6BF    add         esp,0FFFFFFF8
 0050C6C2    mov         dword ptr [ebp-8],edx
 0050C6C5    mov         dword ptr [ebp-4],eax
 0050C6C8    xor         edx,edx
 0050C6CA    mov         eax,dword ptr [ebp-4]
 0050C6CD    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050C6D3    mov         ecx,dword ptr [eax]
 0050C6D5    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C6D8    xor         edx,edx
 0050C6DA    mov         eax,dword ptr [ebp-4]
 0050C6DD    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050C6E3    mov         ecx,dword ptr [eax]
 0050C6E5    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C6E8    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C6ED    mov         eax,dword ptr [eax]
 0050C6EF    mov         eax,dword ptr [eax+364]
 0050C6F5    add         eax,78
 0050C6F8    call        @LStrClr
 0050C6FD    pop         ecx
 0050C6FE    pop         ecx
 0050C6FF    pop         ebp
 0050C700    ret
*}
end;

//0050C704
procedure TfmHeadsMap.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0050C704    push        ebp
 0050C705    mov         ebp,esp
 0050C707    add         esp,0FFFFFFF4
 0050C70A    mov         dword ptr [ebp-8],ecx
 0050C70D    mov         dword ptr [ebp-0C],edx
 0050C710    mov         dword ptr [ebp-4],eax
 0050C713    xor         eax,eax
 0050C715    mov         [0056D410],eax;gvar_0056D410:TfmHeadsMap
 0050C71A    mov         eax,[0056E5A4];^gvar_0056DF04
 0050C71F    mov         byte ptr [eax],1
 0050C722    mov         eax,dword ptr [ebp-8]
 0050C725    mov         byte ptr [eax],2
 0050C728    mov         esp,ebp
 0050C72A    pop         ebp
 0050C72B    ret
*}
end;

//0050C72C
procedure TfmHeadsMap.btWriteClick(Sender:TObject);
begin
{*
 0050C72C    push        ebp
 0050C72D    mov         ebp,esp
 0050C72F    add         esp,0FFFFFFF8
 0050C732    push        ebx
 0050C733    mov         dword ptr [ebp-8],edx
 0050C736    mov         dword ptr [ebp-4],eax
 0050C739    xor         edx,edx
 0050C73B    mov         eax,dword ptr [ebp-4]
 0050C73E    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050C744    mov         ecx,dword ptr [eax]
 0050C746    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C749    xor         edx,edx
 0050C74B    mov         eax,dword ptr [ebp-4]
 0050C74E    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050C754    mov         ecx,dword ptr [eax]
 0050C756    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C759    call        0050BCEC
 0050C75E    mov         eax,dword ptr [ebp-4]
 0050C761    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C767    mov         edx,dword ptr [eax]
 0050C769    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C76F    test        al,al
>0050C771    je          0050C786
 0050C773    xor         ecx,ecx
 0050C775    mov         edx,1FE00
 0050C77A    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C77F    mov         ebx,dword ptr [eax]
 0050C781    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>0050C784    jmp         0050C794
 0050C786    xor         ecx,ecx
 0050C788    xor         edx,edx
 0050C78A    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C78F    mov         ebx,dword ptr [eax]
 0050C791    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050C794    mov         edx,5745C4;gvar_005745C4
 0050C799    mov         ecx,200
 0050C79E    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C7A3    mov         ebx,dword ptr [eax]
 0050C7A5    call        dword ptr [ebx+10];TMemoryStream.sub_0042412C
 0050C7A8    xor         ecx,ecx
 0050C7AA    xor         edx,edx
 0050C7AC    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050C7B1    mov         ebx,dword ptr [eax]
 0050C7B3    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050C7B6    mov         eax,dword ptr [ebp-4]
 0050C7B9    mov         eax,dword ptr [eax+348];TfmHeadsMap.rbFlash:TRadioButton
 0050C7BF    mov         edx,dword ptr [eax]
 0050C7C1    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C7C7    test        al,al
>0050C7C9    je          0050C80F
 0050C7CB    push        0
 0050C7CD    mov         cx,word ptr ds:[50C850];0x3 gvar_0050C850
 0050C7D4    xor         edx,edx
 0050C7D6    mov         eax,50C85C;'Write Flash !'+#10+Are You sure?'
 0050C7DB    call        0043F788
 0050C7E0    cmp         eax,6
>0050C7E3    jne         0050C828
 0050C7E5    call        004D01EC
 0050C7EA    mov         eax,50C880;'Erase Flash - '
 0050C7EF    call        00544F6C
 0050C7F4    mov         ecx,dword ptr ds:[56D414];0x0 gvar_0056D414:TMemoryStream
 0050C7FA    xor         edx,edx
 0050C7FC    xor         eax,eax
 0050C7FE    call        004D02C8
 0050C803    mov         eax,50C898;'Write Flash - '
 0050C808    call        00544F6C
>0050C80D    jmp         0050C828
 0050C80F    mov         edx,dword ptr ds:[56D414];0x0 gvar_0056D414:TMemoryStream
 0050C815    mov         ax,0A
 0050C819    call        004CF728
 0050C81E    mov         eax,50C8B0;'Write Module id0A - '
 0050C823    call        00544F6C
 0050C828    mov         dl,1
 0050C82A    mov         eax,dword ptr [ebp-4]
 0050C82D    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050C833    mov         ecx,dword ptr [eax]
 0050C835    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C838    mov         dl,1
 0050C83A    mov         eax,dword ptr [ebp-4]
 0050C83D    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050C843    mov         ecx,dword ptr [eax]
 0050C845    call        dword ptr [ecx+64];TImage.SetEnabled
 0050C848    pop         ebx
 0050C849    pop         ecx
 0050C84A    pop         ecx
 0050C84B    pop         ebp
 0050C84C    ret
*}
end;

//0050C8C8
procedure TfmHeadsMap.btTestHeadsClick(Sender:TObject);
begin
{*
 0050C8C8    push        ebp
 0050C8C9    mov         ebp,esp
 0050C8CB    mov         ecx,8
 0050C8D0    push        0
 0050C8D2    push        0
 0050C8D4    dec         ecx
>0050C8D5    jne         0050C8D0
 0050C8D7    mov         dword ptr [ebp-20],edx
 0050C8DA    mov         dword ptr [ebp-4],eax
 0050C8DD    xor         eax,eax
 0050C8DF    push        ebp
 0050C8E0    push        50CB94
 0050C8E5    push        dword ptr fs:[eax]
 0050C8E8    mov         dword ptr fs:[eax],esp
 0050C8EB    mov         eax,[0056E5A4];^gvar_0056DF04
 0050C8F0    mov         byte ptr [eax],0
 0050C8F3    lea         edx,[ebp-24]
 0050C8F6    mov         eax,dword ptr [ebp-4]
 0050C8F9    mov         eax,dword ptr [eax+368];TfmHeadsMap.edActHeadsTst:TLabeledEdit
 0050C8FF    call        TPanel.GetCaption
 0050C904    mov         eax,dword ptr [ebp-24]
 0050C907    xor         edx,edx
 0050C909    call        0040C4A8
 0050C90E    mov         dword ptr [ebp-0C],eax
 0050C911    cmp         dword ptr [ebp-0C],0
>0050C915    jne         0050C955
 0050C917    push        50CBA8;'Please, Press ">" (Get Active Heads)'+#10+or Enter "'
 0050C91C    lea         edx,[ebp-2C]
 0050C91F    mov         eax,dword ptr [ebp-4]
 0050C922    mov         eax,dword ptr [eax+330];TfmHeadsMap.edPhysicalHeads:TLabeledEdit
 0050C928    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0050C92E    call        TPanel.GetCaption
 0050C933    push        dword ptr [ebp-2C]
 0050C936    push        50CBE0;'" value'
 0050C93B    lea         eax,[ebp-28]
 0050C93E    mov         edx,3
 0050C943    call        @LStrCatN
 0050C948    mov         eax,dword ptr [ebp-28]
 0050C94B    call        0043F8B4
>0050C950    jmp         0050CB4F
 0050C955    xor         eax,eax
 0050C957    mov         dword ptr [ebp-8],eax
 0050C95A    mov         eax,dword ptr [ebp-4]
 0050C95D    mov         eax,dword ptr [eax+360];TfmHeadsMap.rbSa:TRadioButton
 0050C963    mov         edx,dword ptr [eax]
 0050C965    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050C96B    test        al,al
>0050C96D    je          0050C978
 0050C96F    mov         dword ptr [ebp-10],0FFFFFFFC
>0050C976    jmp         0050C996
 0050C978    lea         edx,[ebp-30]
 0050C97B    mov         eax,dword ptr [ebp-4]
 0050C97E    mov         eax,dword ptr [eax+364];TfmHeadsMap.edTstTracks:TLabeledEdit
 0050C984    call        TPanel.GetCaption
 0050C989    mov         eax,dword ptr [ebp-30]
 0050C98C    xor         edx,edx
 0050C98E    call        0040C4A8
 0050C993    mov         dword ptr [ebp-10],eax
 0050C996    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050C99B    mov         eax,dword ptr [eax]
 0050C99D    mov         eax,dword ptr [eax+2F8]
 0050C9A3    mov         eax,dword ptr [eax+248]
 0050C9A9    xor         edx,edx
 0050C9AB    mov         ecx,dword ptr [eax]
 0050C9AD    call        dword ptr [ecx+38]
>0050C9B0    jmp         0050CB39
 0050C9B5    mov         eax,dword ptr [ebp-4]
 0050C9B8    mov         eax,dword ptr [eax+380];TfmHeadsMap.cbWrtTst:TCheckBox
 0050C9BE    mov         edx,dword ptr [eax]
 0050C9C0    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0050C9C6    test        al,al
>0050C9C8    je          0050CA9D
 0050C9CE    mov         eax,[0056E344];^gvar_0059BF5C
 0050C9D3    xor         ecx,ecx
 0050C9D5    mov         edx,3000
 0050C9DA    call        @FillChar
 0050C9DF    lea         eax,[ebp-18]
 0050C9E2    mov         edx,50CBF0;'Write Test  '
 0050C9E7    call        @LStrLAsg
 0050C9EC    lea         eax,[ebp-1C]
 0050C9EF    mov         edx,50CC08;'            '
 0050C9F4    call        @LStrLAsg
 0050C9F9    lea         eax,[ebp-18]
 0050C9FC    call        00405598
 0050CA01    mov         edx,dword ptr ds:[56E344];^gvar_0059BF5C
 0050CA07    mov         ecx,0C
 0050CA0C    call        Move
 0050CA11    mov         al,byte ptr [ebp-8]
 0050CA14    push        eax
 0050CA15    mov         ecx,dword ptr [ebp-10]
 0050CA18    mov         dx,1
 0050CA1C    mov         ax,1
 0050CA20    call        004CEFA4
 0050CA25    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050CA2A    cmp         byte ptr [eax],0
>0050CA2D    jne         0050CA3E
 0050CA2F    mov         eax,[0056E5A4];^gvar_0056DF04
 0050CA34    cmp         byte ptr [eax],0
>0050CA37    jne         0050CA3E
 0050CA39    call        004CEC08
 0050CA3E    mov         al,byte ptr [ebp-8]
 0050CA41    push        eax
 0050CA42    mov         ecx,dword ptr [ebp-10]
 0050CA45    mov         dx,1
 0050CA49    mov         ax,1
 0050CA4D    call        004CEE3C
 0050CA52    mov         eax,[0056E3F8];^gvar_0059BF4C
 0050CA57    cmp         byte ptr [eax],0
>0050CA5A    jne         0050CA84
 0050CA5C    mov         eax,[0056E5A4];^gvar_0056DF04
 0050CA61    cmp         byte ptr [eax],0
>0050CA64    jne         0050CA84
 0050CA66    call        004CEAB4
 0050CA6B    lea         eax,[ebp-1C]
 0050CA6E    call        00405598
 0050CA73    mov         edx,eax
 0050CA75    mov         eax,[0056E344];^gvar_0059BF5C
 0050CA7A    mov         ecx,0C
 0050CA7F    call        Move
 0050CA84    mov         eax,dword ptr [ebp-18]
 0050CA87    mov         edx,dword ptr [ebp-1C]
 0050CA8A    call        @LStrCmp
>0050CA8F    je          0050CA97
 0050CA91    mov         byte ptr [ebp-11],0
>0050CA95    jmp         0050CAAE
 0050CA97    mov         byte ptr [ebp-11],1
>0050CA9B    jmp         0050CAAE
 0050CA9D    xor         ecx,ecx
 0050CA9F    mov         dx,word ptr [ebp-8]
 0050CAA3    mov         eax,dword ptr [ebp-10]
 0050CAA6    call        004CF00C
 0050CAAB    mov         byte ptr [ebp-11],al
 0050CAAE    cmp         byte ptr [ebp-11],0
>0050CAB2    je          0050CAF6
 0050CAB4    push        50CC20;'Head '
 0050CAB9    lea         edx,[ebp-38]
 0050CABC    mov         eax,dword ptr [ebp-8]
 0050CABF    call        IntToStr
 0050CAC4    push        dword ptr [ebp-38]
 0050CAC7    push        50CC30;' is GOOD'
 0050CACC    lea         eax,[ebp-34]
 0050CACF    mov         edx,3
 0050CAD4    call        @LStrCatN
 0050CAD9    mov         edx,dword ptr [ebp-34]
 0050CADC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050CAE1    mov         eax,dword ptr [eax]
 0050CAE3    mov         eax,dword ptr [eax+2F8]
 0050CAE9    mov         eax,dword ptr [eax+248]
 0050CAEF    mov         ecx,dword ptr [eax]
 0050CAF1    call        dword ptr [ecx+38]
>0050CAF4    jmp         0050CB36
 0050CAF6    push        50CC20;'Head '
 0050CAFB    lea         edx,[ebp-40]
 0050CAFE    mov         eax,dword ptr [ebp-8]
 0050CB01    call        IntToStr
 0050CB06    push        dword ptr [ebp-40]
 0050CB09    push        50CC44;' is BAD'
 0050CB0E    lea         eax,[ebp-3C]
 0050CB11    mov         edx,3
 0050CB16    call        @LStrCatN
 0050CB1B    mov         edx,dword ptr [ebp-3C]
 0050CB1E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0050CB23    mov         eax,dword ptr [eax]
 0050CB25    mov         eax,dword ptr [eax+2F8]
 0050CB2B    mov         eax,dword ptr [eax+248]
 0050CB31    mov         ecx,dword ptr [eax]
 0050CB33    call        dword ptr [ecx+38]
 0050CB36    inc         dword ptr [ebp-8]
 0050CB39    mov         eax,dword ptr [ebp-8]
 0050CB3C    cmp         eax,dword ptr [ebp-0C]
>0050CB3F    jge         0050CB4F
 0050CB41    mov         eax,[0056E5A4];^gvar_0056DF04
 0050CB46    cmp         byte ptr [eax],0
>0050CB49    je          0050C9B5
 0050CB4F    xor         eax,eax
 0050CB51    pop         edx
 0050CB52    pop         ecx
 0050CB53    pop         ecx
 0050CB54    mov         dword ptr fs:[eax],edx
 0050CB57    push        50CB9B
 0050CB5C    lea         eax,[ebp-40]
 0050CB5F    mov         edx,4
 0050CB64    call        @LStrArrayClr
 0050CB69    lea         eax,[ebp-30]
 0050CB6C    mov         edx,2
 0050CB71    call        @LStrArrayClr
 0050CB76    lea         eax,[ebp-28]
 0050CB79    call        @LStrClr
 0050CB7E    lea         eax,[ebp-24]
 0050CB81    call        @LStrClr
 0050CB86    lea         eax,[ebp-1C]
 0050CB89    mov         edx,2
 0050CB8E    call        @LStrArrayClr
 0050CB93    ret
>0050CB94    jmp         @HandleFinally
>0050CB99    jmp         0050CB5C
 0050CB9B    mov         esp,ebp
 0050CB9D    pop         ebp
 0050CB9E    ret
*}
end;

//0050CC4C
procedure TfmHeadsMap.rbUaClick(Sender:TObject);
begin
{*
 0050CC4C    push        ebp
 0050CC4D    mov         ebp,esp
 0050CC4F    add         esp,0FFFFFFF8
 0050CC52    mov         dword ptr [ebp-8],edx
 0050CC55    mov         dword ptr [ebp-4],eax
 0050CC58    mov         eax,dword ptr [ebp-4]
 0050CC5B    mov         eax,dword ptr [eax+35C];TfmHeadsMap.rbUa:TRadioButton
 0050CC61    mov         edx,dword ptr [eax]
 0050CC63    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0050CC69    mov         edx,eax
 0050CC6B    mov         eax,dword ptr [ebp-4]
 0050CC6E    mov         eax,dword ptr [eax+364];TfmHeadsMap.edTstTracks:TLabeledEdit
 0050CC74    call        TImage.SetVisible
 0050CC79    pop         ecx
 0050CC7A    pop         ecx
 0050CC7B    pop         ebp
 0050CC7C    ret
*}
end;

//0050CC80
procedure TfmHeadsMap.btGetActHeadsClick(Sender:TObject);
begin
{*
 0050CC80    push        ebp
 0050CC81    mov         ebp,esp
 0050CC83    add         esp,0FFFFFFF0
 0050CC86    push        ebx
 0050CC87    xor         ecx,ecx
 0050CC89    mov         dword ptr [ebp-10],ecx
 0050CC8C    mov         dword ptr [ebp-0C],edx
 0050CC8F    mov         dword ptr [ebp-4],eax
 0050CC92    xor         eax,eax
 0050CC94    push        ebp
 0050CC95    push        50CD43
 0050CC9A    push        dword ptr fs:[eax]
 0050CC9D    mov         dword ptr fs:[eax],esp
 0050CCA0    mov         dl,1
 0050CCA2    mov         eax,[0041DE14];TMemoryStream
 0050CCA7    call        TObject.Create;TMemoryStream.Create
 0050CCAC    mov         dword ptr [ebp-8],eax
 0050CCAF    xor         eax,eax
 0050CCB1    push        ebp
 0050CCB2    push        50CD26
 0050CCB7    push        dword ptr fs:[eax]
 0050CCBA    mov         dword ptr fs:[eax],esp
 0050CCBD    mov         ecx,dword ptr [ebp-8]
 0050CCC0    xor         edx,edx
 0050CCC2    mov         ax,1
 0050CCC6    call        00509E08
 0050CCCB    test        al,al
>0050CCCD    je          0050CD06
 0050CCCF    xor         ecx,ecx
 0050CCD1    mov         edx,1E
 0050CCD6    mov         eax,dword ptr [ebp-8]
 0050CCD9    mov         ebx,dword ptr [eax]
 0050CCDB    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CCDE    mov         eax,dword ptr [ebp-8]
 0050CCE1    call        004CE528
 0050CCE6    and         eax,0FF
 0050CCEB    lea         edx,[ebp-10]
 0050CCEE    call        IntToStr
 0050CCF3    mov         edx,dword ptr [ebp-10]
 0050CCF6    mov         eax,dword ptr [ebp-4]
 0050CCF9    mov         eax,dword ptr [eax+368];TfmHeadsMap.edActHeadsTst:TLabeledEdit
 0050CCFF    call        TPanel.SetCaption
>0050CD04    jmp         0050CD10
 0050CD06    mov         eax,50CD58;'Read Drive Parametrs - '
 0050CD0B    call        00544F6C
 0050CD10    xor         eax,eax
 0050CD12    pop         edx
 0050CD13    pop         ecx
 0050CD14    pop         ecx
 0050CD15    mov         dword ptr fs:[eax],edx
 0050CD18    push        50CD2D
 0050CD1D    mov         eax,dword ptr [ebp-8]
 0050CD20    call        TObject.Free
 0050CD25    ret
>0050CD26    jmp         @HandleFinally
>0050CD2B    jmp         0050CD1D
 0050CD2D    xor         eax,eax
 0050CD2F    pop         edx
 0050CD30    pop         ecx
 0050CD31    pop         ecx
 0050CD32    mov         dword ptr fs:[eax],edx
 0050CD35    push        50CD4A
 0050CD3A    lea         eax,[ebp-10]
 0050CD3D    call        @LStrClr
 0050CD42    ret
>0050CD43    jmp         @HandleFinally
>0050CD48    jmp         0050CD3A
 0050CD4A    pop         ebx
 0050CD4B    mov         esp,ebp
 0050CD4D    pop         ebp
 0050CD4E    ret
*}
end;

//0050CD70
procedure TfmHeadsMap.btCreateClick(Sender:TObject);
begin
{*
 0050CD70    push        ebp
 0050CD71    mov         ebp,esp
 0050CD73    add         esp,0FFFFFFF4
 0050CD76    push        ebx
 0050CD77    mov         dword ptr [ebp-0C],edx
 0050CD7A    mov         dword ptr [ebp-4],eax
 0050CD7D    mov         eax,[0056E5A4];^gvar_0056DF04
 0050CD82    mov         byte ptr [eax],0
 0050CD85    mov         eax,5745C4;gvar_005745C4
 0050CD8A    xor         ecx,ecx
 0050CD8C    mov         edx,3000
 0050CD91    call        @FillChar
 0050CD96    mov         eax,dword ptr [ebp-4]
 0050CD99    mov         eax,dword ptr [eax+344];TfmHeadsMap.rbModule0A:TRadioButton
 0050CD9F    mov         dl,1
 0050CDA1    mov         ecx,dword ptr [eax]
 0050CDA3    call        dword ptr [ecx+0CC];TRadioButton.SetChecked
 0050CDA9    cmp         dword ptr ds:[56D414],0;gvar_0056D414:TMemoryStream
>0050CDB0    jne         0050CDC5
 0050CDB2    mov         dl,1
 0050CDB4    mov         eax,[0041DE14];TMemoryStream
 0050CDB9    call        TObject.Create;TMemoryStream.Create
 0050CDBE    mov         [0056D414],eax;gvar_0056D414:TMemoryStream
>0050CDC3    jmp         0050CDCF
 0050CDC5    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050CDCA    call        00423F20
 0050CDCF    mov         eax,[0056E040];^gvar_005720C0
 0050CDD4    cmp         byte ptr [eax],0
>0050CDD7    je          0050CDF7
 0050CDD9    push        50CEA0;'ID000A'
 0050CDDE    push        0A
 0050CDE0    mov         ecx,dword ptr ds:[56F668];0x0 HInstance:LongWord
 0050CDE6    mov         dl,1
 0050CDE8    mov         eax,[0041DE90];TResourceStream
 0050CDED    call        TResourceStream.Create;TResourceStream.Create
 0050CDF2    mov         dword ptr [ebp-8],eax
>0050CDF5    jmp         0050CE13
 0050CDF7    push        50CEB0;'ID0A'
 0050CDFC    push        0A
 0050CDFE    mov         ecx,dword ptr ds:[56F668];0x0 HInstance:LongWord
 0050CE04    mov         dl,1
 0050CE06    mov         eax,[0041DE90];TResourceStream
 0050CE0B    call        TResourceStream.Create;TResourceStream.Create
 0050CE10    mov         dword ptr [ebp-8],eax
 0050CE13    xor         eax,eax
 0050CE15    push        ebp
 0050CE16    push        50CE45
 0050CE1B    push        dword ptr fs:[eax]
 0050CE1E    mov         dword ptr fs:[eax],esp
 0050CE21    mov         edx,dword ptr ds:[56D414];0x0 gvar_0056D414:TMemoryStream
 0050CE27    mov         eax,dword ptr [ebp-8]
 0050CE2A    call        00423E54
 0050CE2F    xor         eax,eax
 0050CE31    pop         edx
 0050CE32    pop         ecx
 0050CE33    pop         ecx
 0050CE34    mov         dword ptr fs:[eax],edx
 0050CE37    push        50CE4C
 0050CE3C    mov         eax,dword ptr [ebp-8]
 0050CE3F    call        TObject.Free
 0050CE44    ret
>0050CE45    jmp         @HandleFinally
>0050CE4A    jmp         0050CE3C
 0050CE4C    xor         ecx,ecx
 0050CE4E    xor         edx,edx
 0050CE50    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050CE55    mov         ebx,dword ptr [eax]
 0050CE57    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CE5A    mov         edx,5745C4;gvar_005745C4
 0050CE5F    mov         ecx,200
 0050CE64    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050CE69    mov         ebx,dword ptr [eax]
 0050CE6B    call        dword ptr [ebx+0C];TMemoryStream.sub_00423D8C
 0050CE6E    call        0050BA20
 0050CE73    mov         eax,dword ptr [ebp-4]
 0050CE76    mov         eax,dword ptr [eax+33C];TfmHeadsMap.btSave:TButton
 0050CE7C    mov         dl,1
 0050CE7E    mov         ecx,dword ptr [eax]
 0050CE80    call        dword ptr [ecx+64];TImage.SetEnabled
 0050CE83    mov         eax,dword ptr [ebp-4]
 0050CE86    mov         eax,dword ptr [eax+334];TfmHeadsMap.btWrite:TButton
 0050CE8C    mov         dl,1
 0050CE8E    mov         ecx,dword ptr [eax]
 0050CE90    call        dword ptr [ecx+64];TImage.SetEnabled
 0050CE93    pop         ebx
 0050CE94    mov         esp,ebp
 0050CE96    pop         ebp
 0050CE97    ret
*}
end;

//0050CEB8
{*procedure TfmHeadsMap.btCorrectRegionClick(?:?);
begin
 0050CEB8    push        ebp
 0050CEB9    mov         ebp,esp
 0050CEBB    add         esp,0FFFFFFF8
 0050CEBE    mov         dword ptr [ebp-8],edx
 0050CEC1    mov         dword ptr [ebp-4],eax
 0050CEC4    call        004FEB04
 0050CEC9    pop         ecx
 0050CECA    pop         ecx
 0050CECB    pop         ebp
 0050CECC    ret
end;*}

//0050CED0
procedure TfmHeadsMap.FormDestroy(Sender:TObject);
begin
{*
 0050CED0    push        ebp
 0050CED1    mov         ebp,esp
 0050CED3    add         esp,0FFFFFFF8
 0050CED6    mov         dword ptr [ebp-8],edx
 0050CED9    mov         dword ptr [ebp-4],eax
 0050CEDC    mov         eax,[0056D414];0x0 gvar_0056D414:TMemoryStream
 0050CEE1    call        TObject.Free
 0050CEE6    pop         ecx
 0050CEE7    pop         ecx
 0050CEE8    pop         ebp
 0050CEE9    ret
*}
end;

//0050CEEC
procedure sub_0050CEEC;
begin
{*
 0050CEEC    push        ebp
 0050CEED    mov         ebp,esp
 0050CEEF    add         esp,0FFFFFFD8
 0050CEF2    push        ebx
 0050CEF3    xor         eax,eax
 0050CEF5    mov         dword ptr [ebp-1C],eax
 0050CEF8    mov         dword ptr [ebp-24],eax
 0050CEFB    xor         eax,eax
 0050CEFD    push        ebp
 0050CEFE    push        50D12A
 0050CF03    push        dword ptr fs:[eax]
 0050CF06    mov         dword ptr fs:[eax],esp
 0050CF09    mov         eax,[0056E5A4];^gvar_0056DF04
 0050CF0E    mov         byte ptr [eax],0
 0050CF11    mov         dl,1
 0050CF13    mov         eax,[0041DE14];TMemoryStream
 0050CF18    call        TObject.Create;TMemoryStream.Create
 0050CF1D    mov         dword ptr [ebp-0C],eax
 0050CF20    xor         eax,eax
 0050CF22    push        ebp
 0050CF23    push        50D105
 0050CF28    push        dword ptr fs:[eax]
 0050CF2B    mov         dword ptr fs:[eax],esp
 0050CF2E    mov         edx,dword ptr [ebp-0C]
 0050CF31    mov         ax,0A
 0050CF35    call        005095B8
 0050CF3A    mov         byte ptr [ebp-0D],al
 0050CF3D    mov         eax,dword ptr [ebp-0C]
 0050CF40    mov         edx,dword ptr [eax]
 0050CF42    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0050CF44    cmp         edx,0
>0050CF47    jne         0050CF51
 0050CF49    cmp         eax,0
 0050CF4C    seta        al
>0050CF4F    jmp         0050CF54
 0050CF51    setg        al
 0050CF54    and         al,byte ptr [ebp-0D]
>0050CF57    je          0050D0EF
 0050CF5D    xor         ecx,ecx
 0050CF5F    xor         edx,edx
 0050CF61    mov         eax,dword ptr [ebp-0C]
 0050CF64    mov         ebx,dword ptr [eax]
 0050CF66    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CF69    mov         eax,dword ptr [ebp-0C]
 0050CF6C    call        004CE56C
 0050CF71    mov         dword ptr [ebp-4],eax
 0050CF74    cmp         dword ptr [ebp-4],4C594F52
>0050CF7B    jne         0050CFA8
 0050CF7D    xor         ecx,ecx
 0050CF7F    mov         edx,6
 0050CF84    mov         eax,dword ptr [ebp-0C]
 0050CF87    mov         ebx,dword ptr [eax]
 0050CF89    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CF8C    mov         eax,dword ptr [ebp-0C]
 0050CF8F    call        004CE548
 0050CF94    mov         word ptr [ebp-6],ax
 0050CF98    movzx       edx,word ptr [ebp-6]
 0050CF9C    xor         ecx,ecx
 0050CF9E    mov         eax,dword ptr [ebp-0C]
 0050CFA1    mov         ebx,dword ptr [eax]
 0050CFA3    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>0050CFA6    jmp         0050CFB7
 0050CFA8    xor         ecx,ecx
 0050CFAA    mov         edx,18
 0050CFAF    mov         eax,dword ptr [ebp-0C]
 0050CFB2    mov         ebx,dword ptr [eax]
 0050CFB4    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CFB7    mov         cx,1
 0050CFBB    mov         edx,8
 0050CFC0    mov         eax,dword ptr [ebp-0C]
 0050CFC3    mov         ebx,dword ptr [eax]
 0050CFC5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050CFC8    lea         eax,[ebp-24]
 0050CFCB    mov         edx,50D140;'HDDpWD 32'
 0050CFD0    call        @LStrLAsg
 0050CFD5    push        11
 0050CFD7    call        user32.GetKeyState
 0050CFDC    test        ax,ax
>0050CFDF    jge         0050D04A
 0050CFE1    lea         edx,[ebp-16]
 0050CFE4    mov         ecx,9
 0050CFE9    mov         eax,dword ptr [ebp-0C]
 0050CFEC    call        TStream.ReadBuffer
 0050CFF1    xor         eax,eax
 0050CFF3    mov         dword ptr [ebp-20],eax
 0050CFF6    mov         eax,dword ptr [ebp-20]
 0050CFF9    mov         al,byte ptr [ebp+eax-16]
 0050CFFD    xor         al,0A5
 0050CFFF    mov         edx,dword ptr [ebp-20]
 0050D002    mov         byte ptr [ebp+edx-16],al
 0050D006    inc         dword ptr [ebp-20]
 0050D009    cmp         dword ptr [ebp-20],9
>0050D00D    jne         0050CFF6
 0050D00F    lea         eax,[ebp-1C]
 0050D012    lea         edx,[ebp-16]
 0050D015    mov         ecx,9
 0050D01A    call        @LStrFromArray
 0050D01F    mov         eax,dword ptr [ebp-1C]
 0050D022    mov         edx,dword ptr [ebp-24]
 0050D025    call        @LStrCmp
>0050D02A    je          0050D03B
 0050D02C    mov         eax,50D154;'WaterMark - BAD'
 0050D031    call        00544EB4
>0050D036    jmp         0050D0EF
 0050D03B    mov         eax,50D16C;'WaterMark - GOOD'
 0050D040    call        00544EB4
>0050D045    jmp         0050D0EF
 0050D04A    xor         eax,eax
 0050D04C    mov         dword ptr [ebp-20],eax
 0050D04F    mov         eax,dword ptr [ebp-24]
 0050D052    mov         edx,dword ptr [ebp-20]
 0050D055    mov         al,byte ptr [eax+edx]
 0050D058    xor         al,0A5
 0050D05A    mov         edx,dword ptr [ebp-20]
 0050D05D    mov         byte ptr [ebp+edx-16],al
 0050D061    inc         dword ptr [ebp-20]
 0050D064    cmp         dword ptr [ebp-20],9
>0050D068    jne         0050D04F
 0050D06A    lea         edx,[ebp-16]
 0050D06D    mov         ecx,9
 0050D072    mov         eax,dword ptr [ebp-0C]
 0050D075    call        TStream.WriteBuffer
 0050D07A    mov         cx,1
 0050D07E    mov         edx,0FFFFFFEF
 0050D083    mov         eax,dword ptr [ebp-0C]
 0050D086    mov         ebx,dword ptr [eax]
 0050D088    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0050D08B    mov         word ptr [ebp-26],0
 0050D091    xor         eax,eax
 0050D093    mov         dword ptr [ebp-20],eax
 0050D096    mov         eax,dword ptr [ebp-0C]
 0050D099    call        004CE528
 0050D09E    mov         byte ptr [ebp-7],al
 0050D0A1    xor         eax,eax
 0050D0A3    mov         al,byte ptr [ebp-7]
 0050D0A6    add         word ptr [ebp-26],ax
 0050D0AA    inc         dword ptr [ebp-20]
 0050D0AD    cmp         dword ptr [ebp-20],1E
>0050D0B1    jne         0050D096
 0050D0B3    mov         ax,word ptr [ebp-26]
 0050D0B7    not         ax
 0050D0BA    inc         eax
 0050D0BB    mov         word ptr [ebp-6],ax
 0050D0BF    lea         edx,[ebp-6]
 0050D0C2    mov         ecx,2
 0050D0C7    mov         eax,dword ptr [ebp-0C]
 0050D0CA    call        TStream.WriteBuffer
 0050D0CF    mov         dl,1
 0050D0D1    mov         eax,dword ptr [ebp-0C]
 0050D0D4    call        005014D0
 0050D0D9    mov         edx,dword ptr [ebp-0C]
 0050D0DC    mov         ax,0A
 0050D0E0    call        0050980C
 0050D0E5    mov         eax,50D188;'Write WaterMark - '
 0050D0EA    call        00544F6C
 0050D0EF    xor         eax,eax
 0050D0F1    pop         edx
 0050D0F2    pop         ecx
 0050D0F3    pop         ecx
 0050D0F4    mov         dword ptr fs:[eax],edx
 0050D0F7    push        50D10C
 0050D0FC    mov         eax,dword ptr [ebp-0C]
 0050D0FF    call        TObject.Free
 0050D104    ret
>0050D105    jmp         @HandleFinally
>0050D10A    jmp         0050D0FC
 0050D10C    xor         eax,eax
 0050D10E    pop         edx
 0050D10F    pop         ecx
 0050D110    pop         ecx
 0050D111    mov         dword ptr fs:[eax],edx
 0050D114    push        50D131
 0050D119    lea         eax,[ebp-24]
 0050D11C    call        @LStrClr
 0050D121    lea         eax,[ebp-1C]
 0050D124    call        @LStrClr
 0050D129    ret
>0050D12A    jmp         @HandleFinally
>0050D12F    jmp         0050D119
 0050D131    pop         ebx
 0050D132    mov         esp,ebp
 0050D134    pop         ebp
 0050D135    ret
*}
end;

end.