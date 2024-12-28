//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uDefectsEditor;

interface

uses
  SysUtils, Classes, CheckLst, ExtCtrls, ComCtrls, Menus;

type
  TfmDefectsEditor = class(TForm)
  published
    clHeads:TCheckListBox;//f2F8
    Splitter1:TSplitter;//f2FC
    lvDefects:TListView;//f300
    sbDefects:TStatusBar;//f304
    pmEditor:TPopupMenu;//f308
    miReadPList:TMenuItem;//f30C
    miWrite:TMenuItem;//f310
    miKillHead:TMenuItem;//f314
    miReadGList:TMenuItem;//f318
    miDelete:TMenuItem;//f31C
    miReadSAList:TMenuItem;//f320
    miN1:TMenuItem;//f324
    miN2:TMenuItem;//f328
    miN3:TMenuItem;//f32C
    miImportfromINI:TMenuItem;//f330
    miExporttoINI:TMenuItem;//f334
    miClear:TMenuItem;//f338
    miEdit:TMenuItem;//f33C
    miReadTList:TMenuItem;//f340
    procedure miExporttoINIClick(Sender:TObject);//004F9C4C
    procedure miImportfromINIClick(Sender:TObject);//004F9FA8
    procedure FormPaint(Sender:TObject);//004F9C14
    procedure miReadSAListClick(Sender:TObject);//004F9158
    procedure miEditClick(Sender:TObject);//004FA58C
    procedure miReadTListClick(Sender:TObject);//004F91A0
    procedure FormDestroy(Sender:TObject);//004FA478
    procedure miClearClick(Sender:TObject);//004FA498
    procedure clHeadsClick(Sender:TObject);//004F9B5C
    procedure miReadPListClick(Sender:TObject);//004F90C8
    procedure miReadGListClick(Sender:TObject);//004F9110
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004F8F08
    procedure FormShow(Sender:TObject);//004F8F28
    procedure miWriteClick(Sender:TObject);//004F96AC
    procedure lvDefectsDblClick(Sender:TObject);//004F9B4C
    procedure miKillHeadClick(Sender:TObject);//004F94F0
    procedure miDeleteClick(Sender:TObject);//004F95D8
  public
    f344:word;//f344
    f348:TMemoryStream;//f348
    //f34C:?;//f34C
    //f36C:?;//f36C
    f38C:dword;//f38C
    f390:dword;//f390
    f394:dword;//f394
  end;
    //procedure sub_004F84F0(?:TfmDefectsEditor; ?:?; ?:TfmHDD);//004F84F0
    //procedure sub_004F85A0(?:?; ?:?; ?:?; ?:?);//004F85A0
    procedure sub_004F87D0(?:TMemoryStream);//004F87D0
    procedure sub_004F91E8;//004F91E8
    //procedure sub_004F9370(?:?);//004F9370

implementation

{$R *.DFM}

//004F84F0
{*procedure sub_004F84F0(?:TfmDefectsEditor; ?:?; ?:TfmHDD);
begin
 004F84F0    push        ebp
 004F84F1    mov         ebp,esp
 004F84F3    add         esp,0FFFFFFF4
 004F84F6    mov         dword ptr [ebp-0C],ecx
 004F84F9    mov         word ptr [ebp-6],dx
 004F84FD    mov         dword ptr [ebp-4],eax
 004F8500    cmp         dword ptr ds:[56D3E8],0;gvar_0056D3E8:TfmDefectsEditor
>004F8507    jne         004F8573
 004F8509    mov         ecx,dword ptr [ebp-0C]
 004F850C    mov         dl,1
 004F850E    mov         eax,[004F80C0];TfmDefectsEditor
 004F8513    call        TfmProgress.Create;TfmDefectsEditor.Create
 004F8518    mov         [0056D3E8],eax;gvar_0056D3E8:TfmDefectsEditor
 004F851D    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8522    mov         dx,word ptr [ebp-6]
 004F8526    mov         word ptr [eax+344],dx;TfmDefectsEditor.?f344:word
 004F852D    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8532    add         eax,34C;TfmDefectsEditor.?f34C:?
 004F8537    xor         ecx,ecx
 004F8539    mov         edx,20
 004F853E    call        @FillChar
 004F8543    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8548    add         eax,36C;TfmDefectsEditor.?f36C:?
 004F854D    xor         ecx,ecx
 004F854F    mov         edx,20
 004F8554    call        @FillChar
 004F8559    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F855E    xor         edx,edx
 004F8560    mov         dword ptr [eax+38C],edx;TfmDefectsEditor.?f38C:dword
 004F8566    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F856B    xor         edx,edx
 004F856D    mov         dword ptr [eax+390],edx;TfmDefectsEditor.?f390:dword
 004F8573    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8578    cmp         byte ptr [eax+1A6],0;TfmDefectsEditor.FShowing:Boolean
>004F857F    je          004F8590
 004F8581    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8586    mov         edx,dword ptr [eax]
 004F8588    call        dword ptr [edx+0C4];TfmDefectsEditor.sub_004A746C
>004F858E    jmp         004F859A
 004F8590    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8595    call        004A7450
 004F859A    mov         esp,ebp
 004F859C    pop         ebp
 004F859D    ret
end;*}

//004F85A0
{*procedure sub_004F85A0(?:?; ?:?; ?:?; ?:?);
begin
 004F85A0    push        ebp
 004F85A1    mov         ebp,esp
 004F85A3    add         esp,0FFFFFFD0
 004F85A6    push        ebx
 004F85A7    xor         ebx,ebx
 004F85A9    mov         dword ptr [ebp-30],ebx
 004F85AC    mov         dword ptr [ebp-2C],ebx
 004F85AF    mov         dword ptr [ebp-28],ebx
 004F85B2    mov         dword ptr [ebp-24],ebx
 004F85B5    mov         dword ptr [ebp-20],ebx
 004F85B8    mov         dword ptr [ebp-14],ebx
 004F85BB    mov         word ptr [ebp-8],cx
 004F85BF    mov         byte ptr [ebp-5],dl
 004F85C2    mov         dword ptr [ebp-4],eax
 004F85C5    xor         eax,eax
 004F85C7    push        ebp
 004F85C8    push        4F87A5
 004F85CD    push        dword ptr fs:[eax]
 004F85D0    mov         dword ptr fs:[eax],esp
 004F85D3    mov         eax,dword ptr [ebp-4]
 004F85D6    and         eax,0FFFFFF
 004F85DB    mov         dword ptr [ebp-0C],eax
 004F85DE    xor         eax,eax
 004F85E0    mov         al,byte ptr [ebp-5]
 004F85E3    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F85E9    inc         dword ptr [edx+eax*4+34C]
 004F85F0    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F85F5    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F85FB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F8601    call        0045AE78
 004F8606    mov         dword ptr [ebp-10],eax
 004F8609    xor         edx,edx
 004F860B    mov         eax,dword ptr [ebp-10]
 004F860E    call        0045A750
 004F8613    cmp         word ptr [ebp-8],0FFFF
>004F8619    jne         004F86C2
 004F861F    cmp         word ptr [ebp+8],0FFFF
>004F8625    jne         004F86C2
 004F862B    lea         eax,[ebp-14]
 004F862E    push        eax
 004F862F    mov         eax,dword ptr [ebp-0C]
 004F8632    mov         dword ptr [ebp-1C],eax
 004F8635    mov         byte ptr [ebp-18],0
 004F8639    lea         edx,[ebp-1C]
 004F863C    xor         ecx,ecx
 004F863E    mov         eax,4F87BC;'%x'
 004F8643    call        0040D630
 004F8648    mov         edx,dword ptr [ebp-14]
 004F864B    mov         eax,dword ptr [ebp-10]
 004F864E    mov         eax,dword ptr [eax+8]
 004F8651    mov         ecx,dword ptr [eax]
 004F8653    call        dword ptr [ecx+38]
 004F8656    lea         eax,[ebp-20]
 004F8659    push        eax
 004F865A    xor         eax,eax
 004F865C    mov         al,byte ptr [ebp-5]
 004F865F    mov         dword ptr [ebp-1C],eax
 004F8662    mov         byte ptr [ebp-18],0
 004F8666    lea         edx,[ebp-1C]
 004F8669    xor         ecx,ecx
 004F866B    mov         eax,4F87BC;'%x'
 004F8670    call        0040D630
 004F8675    mov         edx,dword ptr [ebp-20]
 004F8678    mov         eax,dword ptr [ebp-10]
 004F867B    mov         eax,dword ptr [eax+8]
 004F867E    mov         ecx,dword ptr [eax]
 004F8680    call        dword ptr [ecx+38]
 004F8683    mov         edx,4F87C8;'Track'
 004F8688    mov         eax,dword ptr [ebp-10]
 004F868B    mov         eax,dword ptr [eax+8]
 004F868E    mov         ecx,dword ptr [eax]
 004F8690    call        dword ptr [ecx+38]
 004F8693    xor         edx,edx
 004F8695    mov         eax,dword ptr [ebp-10]
 004F8698    mov         eax,dword ptr [eax+8]
 004F869B    mov         ecx,dword ptr [eax]
 004F869D    call        dword ptr [ecx+38]
 004F86A0    xor         eax,eax
 004F86A2    mov         al,byte ptr [ebp-5]
 004F86A5    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F86AB    inc         dword ptr [edx+eax*4+36C]
 004F86B2    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F86B7    inc         dword ptr [eax+390];TfmDefectsEditor.?f390:dword
>004F86BD    jmp         004F877D
 004F86C2    lea         eax,[ebp-24]
 004F86C5    push        eax
 004F86C6    mov         eax,dword ptr [ebp-0C]
 004F86C9    mov         dword ptr [ebp-1C],eax
 004F86CC    mov         byte ptr [ebp-18],0
 004F86D0    lea         edx,[ebp-1C]
 004F86D3    xor         ecx,ecx
 004F86D5    mov         eax,4F87BC;'%x'
 004F86DA    call        0040D630
 004F86DF    mov         edx,dword ptr [ebp-24]
 004F86E2    mov         eax,dword ptr [ebp-10]
 004F86E5    mov         eax,dword ptr [eax+8]
 004F86E8    mov         ecx,dword ptr [eax]
 004F86EA    call        dword ptr [ecx+38]
 004F86ED    lea         eax,[ebp-28]
 004F86F0    push        eax
 004F86F1    xor         eax,eax
 004F86F3    mov         al,byte ptr [ebp-5]
 004F86F6    mov         dword ptr [ebp-1C],eax
 004F86F9    mov         byte ptr [ebp-18],0
 004F86FD    lea         edx,[ebp-1C]
 004F8700    xor         ecx,ecx
 004F8702    mov         eax,4F87BC;'%x'
 004F8707    call        0040D630
 004F870C    mov         edx,dword ptr [ebp-28]
 004F870F    mov         eax,dword ptr [ebp-10]
 004F8712    mov         eax,dword ptr [eax+8]
 004F8715    mov         ecx,dword ptr [eax]
 004F8717    call        dword ptr [ecx+38]
 004F871A    lea         eax,[ebp-2C]
 004F871D    push        eax
 004F871E    movzx       eax,word ptr [ebp-8]
 004F8722    mov         dword ptr [ebp-1C],eax
 004F8725    mov         byte ptr [ebp-18],0
 004F8729    lea         edx,[ebp-1C]
 004F872C    xor         ecx,ecx
 004F872E    mov         eax,4F87BC;'%x'
 004F8733    call        0040D630
 004F8738    mov         edx,dword ptr [ebp-2C]
 004F873B    mov         eax,dword ptr [ebp-10]
 004F873E    mov         eax,dword ptr [eax+8]
 004F8741    mov         ecx,dword ptr [eax]
 004F8743    call        dword ptr [ecx+38]
 004F8746    lea         eax,[ebp-30]
 004F8749    push        eax
 004F874A    movzx       eax,word ptr [ebp+8]
 004F874E    mov         dword ptr [ebp-1C],eax
 004F8751    mov         byte ptr [ebp-18],0
 004F8755    lea         edx,[ebp-1C]
 004F8758    xor         ecx,ecx
 004F875A    mov         eax,4F87BC;'%x'
 004F875F    call        0040D630
 004F8764    mov         edx,dword ptr [ebp-30]
 004F8767    mov         eax,dword ptr [ebp-10]
 004F876A    mov         eax,dword ptr [eax+8]
 004F876D    mov         ecx,dword ptr [eax]
 004F876F    call        dword ptr [ecx+38]
 004F8772    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8777    inc         dword ptr [eax+38C];TfmDefectsEditor.?f38C:dword
 004F877D    call        004F91E8
 004F8782    xor         eax,eax
 004F8784    pop         edx
 004F8785    pop         ecx
 004F8786    pop         ecx
 004F8787    mov         dword ptr fs:[eax],edx
 004F878A    push        4F87AC
 004F878F    lea         eax,[ebp-30]
 004F8792    mov         edx,5
 004F8797    call        @LStrArrayClr
 004F879C    lea         eax,[ebp-14]
 004F879F    call        @LStrClr
 004F87A4    ret
>004F87A5    jmp         @HandleFinally
>004F87AA    jmp         004F878F
 004F87AC    pop         ebx
 004F87AD    mov         esp,ebp
 004F87AF    pop         ebp
 004F87B0    ret         4
end;*}

//004F87D0
procedure sub_004F87D0(?:TMemoryStream);
begin
{*
 004F87D0    push        ebp
 004F87D1    mov         ebp,esp
 004F87D3    mov         ecx,13
 004F87D8    push        0
 004F87DA    push        0
 004F87DC    dec         ecx
>004F87DD    jne         004F87D8
 004F87DF    push        ecx
 004F87E0    push        ebx
 004F87E1    mov         dword ptr [ebp-4],eax
 004F87E4    xor         eax,eax
 004F87E6    push        ebp
 004F87E7    push        4F8E35
 004F87EC    push        dword ptr fs:[eax]
 004F87EF    mov         dword ptr fs:[eax],esp
 004F87F2    mov         eax,[0056E5A4];^gvar_0056DF04
 004F87F7    mov         byte ptr [eax],0
 004F87FA    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F87FF    add         eax,34C;TfmDefectsEditor.?f34C:?
 004F8804    xor         ecx,ecx
 004F8806    mov         edx,20
 004F880B    call        @FillChar
 004F8810    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8815    add         eax,36C;TfmDefectsEditor.?f36C:?
 004F881A    xor         ecx,ecx
 004F881C    mov         edx,20
 004F8821    call        @FillChar
 004F8826    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F882B    xor         edx,edx
 004F882D    mov         dword ptr [eax+38C],edx;TfmDefectsEditor.?f38C:dword
 004F8833    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8838    xor         edx,edx
 004F883A    mov         dword ptr [eax+390],edx;TfmDefectsEditor.?f390:dword
 004F8840    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8845    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F884B    mov         edx,dword ptr [eax]
 004F884D    call        dword ptr [edx+0D8];TCustomListBox.Clear
 004F8853    xor         ecx,ecx
 004F8855    xor         edx,edx
 004F8857    mov         eax,dword ptr [ebp-4]
 004F885A    mov         ebx,dword ptr [eax]
 004F885C    call        dword ptr [ebx+14]
 004F885F    mov         eax,dword ptr [ebp-4]
 004F8862    call        004CE56C
 004F8867    mov         dword ptr [ebp-18],eax
 004F886A    cmp         dword ptr [ebp-18],4C594F52
>004F8871    jne         004F889E
 004F8873    xor         ecx,ecx
 004F8875    mov         edx,6
 004F887A    mov         eax,dword ptr [ebp-4]
 004F887D    mov         ebx,dword ptr [eax]
 004F887F    call        dword ptr [ebx+14]
 004F8882    mov         eax,dword ptr [ebp-4]
 004F8885    call        004CE548
 004F888A    mov         word ptr [ebp-14],ax
 004F888E    movzx       edx,word ptr [ebp-14]
 004F8892    xor         ecx,ecx
 004F8894    mov         eax,dword ptr [ebp-4]
 004F8897    mov         ebx,dword ptr [eax]
 004F8899    call        dword ptr [ebx+14]
>004F889C    jmp         004F88AD
 004F889E    xor         ecx,ecx
 004F88A0    mov         edx,18
 004F88A5    mov         eax,dword ptr [ebp-4]
 004F88A8    mov         ebx,dword ptr [eax]
 004F88AA    call        dword ptr [ebx+14]
 004F88AD    mov         eax,dword ptr [ebp-4]
 004F88B0    call        004CE56C
 004F88B5    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F88BB    mov         dword ptr [edx+394],eax;TfmDefectsEditor.?f394:dword
 004F88C1    push        11
 004F88C3    call        user32.GetKeyState
 004F88C8    test        ax,ax
>004F88CB    jge         004F890F
 004F88CD    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F88D2    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F88D8    xor         edx,edx
 004F88DA    push        edx
 004F88DB    push        eax
 004F88DC    lea         eax,[ebp-24]
 004F88DF    call        IntToStr
 004F88E4    mov         ecx,dword ptr [ebp-24]
 004F88E7    lea         eax,[ebp-20]
 004F88EA    mov         edx,4F8E4C;'Amaunt Defects: '
 004F88EF    call        @LStrCat3
 004F88F4    mov         edx,dword ptr [ebp-20]
 004F88F7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F88FC    mov         eax,dword ptr [eax]
 004F88FE    mov         eax,dword ptr [eax+2F8]
 004F8904    mov         eax,dword ptr [eax+248]
 004F890A    mov         ecx,dword ptr [eax]
 004F890C    call        dword ptr [ecx+38]
 004F890F    mov         word ptr [ebp-6],0
 004F8915    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F891A    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F8920    xor         edx,edx
 004F8922    push        edx
 004F8923    push        eax
 004F8924    lea         eax,[ebp-2C]
 004F8927    call        IntToStr
 004F892C    mov         ecx,dword ptr [ebp-2C]
 004F892F    lea         eax,[ebp-28]
 004F8932    mov         edx,4F8E4C;'Amaunt Defects: '
 004F8937    call        @LStrCat3
 004F893C    mov         eax,dword ptr [ebp-28]
 004F893F    push        eax
 004F8940    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8945    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004F894B    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004F8951    xor         edx,edx
 004F8953    call        TStatusPanels.GetItem
 004F8958    pop         edx
 004F8959    call        TStatusPanel.SetText
 004F895E    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8963    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F8969    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F896F    call        TListItems.BeginUpdate
 004F8974    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8979    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F897F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F8985    call        TListItems.Clear
 004F898A    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F898F    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F8995    push        eax
 004F8996    xor         ecx,ecx
 004F8998    mov         edx,4F8E68;'Build Defects List'
 004F899D    mov         eax,[004F7B20];TfmProgres
 004F89A2    call        004F7D0C
>004F89A7    jmp         004F8CFC
 004F89AC    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F89B1    cmp         word ptr [eax+344],36;TfmDefectsEditor.?f344:word
>004F89B9    jne         004F89FC
 004F89BB    mov         eax,dword ptr [ebp-4]
 004F89BE    call        004CE528
 004F89C3    mov         byte ptr [ebp-0D],al
 004F89C6    mov         cx,1
 004F89CA    mov         edx,3
 004F89CF    mov         eax,dword ptr [ebp-4]
 004F89D2    mov         ebx,dword ptr [eax]
 004F89D4    call        dword ptr [ebx+14]
 004F89D7    mov         eax,dword ptr [ebp-4]
 004F89DA    call        004CE548
 004F89DF    mov         word ptr [ebp-10],ax
 004F89E3    mov         eax,dword ptr [ebp-4]
 004F89E6    call        004CE548
 004F89EB    mov         word ptr [ebp-12],ax
 004F89EF    mov         eax,dword ptr [ebp-4]
 004F89F2    call        004CE56C
 004F89F7    mov         dword ptr [ebp-0C],eax
>004F89FA    jmp         004F8A33
 004F89FC    mov         eax,dword ptr [ebp-4]
 004F89FF    call        004CE56C
 004F8A04    mov         dword ptr [ebp-18],eax
 004F8A07    mov         eax,dword ptr [ebp-18]
 004F8A0A    shr         eax,18
 004F8A0D    mov         byte ptr [ebp-0D],al
 004F8A10    mov         eax,dword ptr [ebp-18]
 004F8A13    and         eax,0FFFFFF
 004F8A18    mov         dword ptr [ebp-0C],eax
 004F8A1B    mov         eax,dword ptr [ebp-4]
 004F8A1E    call        004CE548
 004F8A23    mov         word ptr [ebp-10],ax
 004F8A27    mov         eax,dword ptr [ebp-4]
 004F8A2A    call        004CE548
 004F8A2F    mov         word ptr [ebp-12],ax
 004F8A33    xor         eax,eax
 004F8A35    mov         al,byte ptr [ebp-0D]
 004F8A38    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8A3E    inc         dword ptr [edx+eax*4+34C]
 004F8A45    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8A4A    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F8A50    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F8A56    call        0045AE78
 004F8A5B    mov         dword ptr [ebp-1C],eax
 004F8A5E    lea         eax,[ebp-30]
 004F8A61    push        eax
 004F8A62    movzx       eax,word ptr [ebp-6]
 004F8A66    mov         dword ptr [ebp-38],eax
 004F8A69    mov         byte ptr [ebp-34],0
 004F8A6D    lea         edx,[ebp-38]
 004F8A70    xor         ecx,ecx
 004F8A72    mov         eax,4F8E84;'%d'
 004F8A77    call        0040D630
 004F8A7C    mov         edx,dword ptr [ebp-30]
 004F8A7F    mov         eax,dword ptr [ebp-1C]
 004F8A82    call        0045A750
 004F8A87    cmp         word ptr [ebp-10],0FFFF
>004F8A8D    jne         004F8B98
 004F8A93    cmp         word ptr [ebp-12],0FFFF
>004F8A99    jne         004F8B98
 004F8A9F    lea         eax,[ebp-3C]
 004F8AA2    push        eax
 004F8AA3    mov         eax,dword ptr [ebp-0C]
 004F8AA6    mov         dword ptr [ebp-38],eax
 004F8AA9    mov         byte ptr [ebp-34],0
 004F8AAD    lea         edx,[ebp-38]
 004F8AB0    xor         ecx,ecx
 004F8AB2    mov         eax,4F8E90;'%x'
 004F8AB7    call        0040D630
 004F8ABC    mov         edx,dword ptr [ebp-3C]
 004F8ABF    mov         eax,dword ptr [ebp-1C]
 004F8AC2    mov         eax,dword ptr [eax+8]
 004F8AC5    mov         ecx,dword ptr [eax]
 004F8AC7    call        dword ptr [ecx+38]
 004F8ACA    lea         eax,[ebp-40]
 004F8ACD    push        eax
 004F8ACE    xor         eax,eax
 004F8AD0    mov         al,byte ptr [ebp-0D]
 004F8AD3    mov         dword ptr [ebp-38],eax
 004F8AD6    mov         byte ptr [ebp-34],0
 004F8ADA    lea         edx,[ebp-38]
 004F8ADD    xor         ecx,ecx
 004F8ADF    mov         eax,4F8E90;'%x'
 004F8AE4    call        0040D630
 004F8AE9    mov         edx,dword ptr [ebp-40]
 004F8AEC    mov         eax,dword ptr [ebp-1C]
 004F8AEF    mov         eax,dword ptr [eax+8]
 004F8AF2    mov         ecx,dword ptr [eax]
 004F8AF4    call        dword ptr [ecx+38]
 004F8AF7    mov         edx,4F8E9C;'Track'
 004F8AFC    mov         eax,dword ptr [ebp-1C]
 004F8AFF    mov         eax,dword ptr [eax+8]
 004F8B02    mov         ecx,dword ptr [eax]
 004F8B04    call        dword ptr [ecx+38]
 004F8B07    xor         edx,edx
 004F8B09    mov         eax,dword ptr [ebp-1C]
 004F8B0C    mov         eax,dword ptr [eax+8]
 004F8B0F    mov         ecx,dword ptr [eax]
 004F8B11    call        dword ptr [ecx+38]
 004F8B14    xor         eax,eax
 004F8B16    mov         al,byte ptr [ebp-0D]
 004F8B19    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8B1F    inc         dword ptr [edx+eax*4+36C]
 004F8B26    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8B2B    inc         dword ptr [eax+390];TfmDefectsEditor.?f390:dword
 004F8B31    push        11
 004F8B33    call        user32.GetKeyState
 004F8B38    test        ax,ax
>004F8B3B    jge         004F8CDC
 004F8B41    lea         eax,[ebp-44]
 004F8B44    push        eax
 004F8B45    movzx       eax,word ptr [ebp-6]
 004F8B49    mov         dword ptr [ebp-5C],eax
 004F8B4C    mov         byte ptr [ebp-58],0
 004F8B50    mov         eax,dword ptr [ebp-0C]
 004F8B53    mov         dword ptr [ebp-54],eax
 004F8B56    mov         byte ptr [ebp-50],0
 004F8B5A    xor         eax,eax
 004F8B5C    mov         al,byte ptr [ebp-0D]
 004F8B5F    mov         dword ptr [ebp-4C],eax
 004F8B62    mov         byte ptr [ebp-48],0
 004F8B66    lea         edx,[ebp-5C]
 004F8B69    mov         ecx,2
 004F8B6E    mov         eax,4F8EAC;'%5d  %6x %2x Track'
 004F8B73    call        0040D630
 004F8B78    mov         edx,dword ptr [ebp-44]
 004F8B7B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F8B80    mov         eax,dword ptr [eax]
 004F8B82    mov         eax,dword ptr [eax+2F8]
 004F8B88    mov         eax,dword ptr [eax+248]
 004F8B8E    mov         ecx,dword ptr [eax]
 004F8B90    call        dword ptr [ecx+38]
>004F8B93    jmp         004F8CDC
 004F8B98    lea         eax,[ebp-60]
 004F8B9B    push        eax
 004F8B9C    mov         eax,dword ptr [ebp-0C]
 004F8B9F    mov         dword ptr [ebp-38],eax
 004F8BA2    mov         byte ptr [ebp-34],0
 004F8BA6    lea         edx,[ebp-38]
 004F8BA9    xor         ecx,ecx
 004F8BAB    mov         eax,4F8E90;'%x'
 004F8BB0    call        0040D630
 004F8BB5    mov         edx,dword ptr [ebp-60]
 004F8BB8    mov         eax,dword ptr [ebp-1C]
 004F8BBB    mov         eax,dword ptr [eax+8]
 004F8BBE    mov         ecx,dword ptr [eax]
 004F8BC0    call        dword ptr [ecx+38]
 004F8BC3    lea         eax,[ebp-64]
 004F8BC6    push        eax
 004F8BC7    xor         eax,eax
 004F8BC9    mov         al,byte ptr [ebp-0D]
 004F8BCC    mov         dword ptr [ebp-38],eax
 004F8BCF    mov         byte ptr [ebp-34],0
 004F8BD3    lea         edx,[ebp-38]
 004F8BD6    xor         ecx,ecx
 004F8BD8    mov         eax,4F8E90;'%x'
 004F8BDD    call        0040D630
 004F8BE2    mov         edx,dword ptr [ebp-64]
 004F8BE5    mov         eax,dword ptr [ebp-1C]
 004F8BE8    mov         eax,dword ptr [eax+8]
 004F8BEB    mov         ecx,dword ptr [eax]
 004F8BED    call        dword ptr [ecx+38]
 004F8BF0    lea         eax,[ebp-68]
 004F8BF3    push        eax
 004F8BF4    movzx       eax,word ptr [ebp-10]
 004F8BF8    mov         dword ptr [ebp-38],eax
 004F8BFB    mov         byte ptr [ebp-34],0
 004F8BFF    lea         edx,[ebp-38]
 004F8C02    xor         ecx,ecx
 004F8C04    mov         eax,4F8E90;'%x'
 004F8C09    call        0040D630
 004F8C0E    mov         edx,dword ptr [ebp-68]
 004F8C11    mov         eax,dword ptr [ebp-1C]
 004F8C14    mov         eax,dword ptr [eax+8]
 004F8C17    mov         ecx,dword ptr [eax]
 004F8C19    call        dword ptr [ecx+38]
 004F8C1C    lea         eax,[ebp-6C]
 004F8C1F    push        eax
 004F8C20    movzx       eax,word ptr [ebp-12]
 004F8C24    mov         dword ptr [ebp-38],eax
 004F8C27    mov         byte ptr [ebp-34],0
 004F8C2B    lea         edx,[ebp-38]
 004F8C2E    xor         ecx,ecx
 004F8C30    mov         eax,4F8E90;'%x'
 004F8C35    call        0040D630
 004F8C3A    mov         edx,dword ptr [ebp-6C]
 004F8C3D    mov         eax,dword ptr [ebp-1C]
 004F8C40    mov         eax,dword ptr [eax+8]
 004F8C43    mov         ecx,dword ptr [eax]
 004F8C45    call        dword ptr [ecx+38]
 004F8C48    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8C4D    inc         dword ptr [eax+38C];TfmDefectsEditor.?f38C:dword
 004F8C53    push        11
 004F8C55    call        user32.GetKeyState
 004F8C5A    test        ax,ax
>004F8C5D    jge         004F8CDC
 004F8C5F    lea         eax,[ebp-70]
 004F8C62    push        eax
 004F8C63    movzx       eax,word ptr [ebp-6]
 004F8C67    mov         dword ptr [ebp-98],eax
 004F8C6D    mov         byte ptr [ebp-94],0
 004F8C74    mov         eax,dword ptr [ebp-0C]
 004F8C77    mov         dword ptr [ebp-90],eax
 004F8C7D    mov         byte ptr [ebp-8C],0
 004F8C84    xor         eax,eax
 004F8C86    mov         al,byte ptr [ebp-0D]
 004F8C89    mov         dword ptr [ebp-88],eax
 004F8C8F    mov         byte ptr [ebp-84],0
 004F8C96    movzx       eax,word ptr [ebp-10]
 004F8C9A    mov         dword ptr [ebp-80],eax
 004F8C9D    mov         byte ptr [ebp-7C],0
 004F8CA1    movzx       eax,word ptr [ebp-12]
 004F8CA5    mov         dword ptr [ebp-78],eax
 004F8CA8    mov         byte ptr [ebp-74],0
 004F8CAC    lea         edx,[ebp-98]
 004F8CB2    mov         ecx,4
 004F8CB7    mov         eax,4F8EC8;'%5d  %6x %2x  %4x %4x'
 004F8CBC    call        0040D630
 004F8CC1    mov         edx,dword ptr [ebp-70]
 004F8CC4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F8CC9    mov         eax,dword ptr [eax]
 004F8CCB    mov         eax,dword ptr [eax+2F8]
 004F8CD1    mov         eax,dword ptr [eax+248]
 004F8CD7    mov         ecx,dword ptr [eax]
 004F8CD9    call        dword ptr [ecx+38]
 004F8CDC    inc         word ptr [ebp-6]
 004F8CE0    mov         eax,[0056E3C0];^Application:TApplication
 004F8CE5    mov         eax,dword ptr [eax]
 004F8CE7    call        004AB51C
 004F8CEC    movzx       edx,word ptr [ebp-6]
 004F8CF0    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F8CF5    mov         eax,dword ptr [eax]
 004F8CF7    call        004F7E2C
 004F8CFC    movzx       eax,word ptr [ebp-6]
 004F8D00    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8D06    cmp         eax,dword ptr [edx+394];TfmDefectsEditor.?f394:dword
>004F8D0C    jae         004F8D46
 004F8D0E    mov         eax,dword ptr [ebp-4]
 004F8D11    mov         edx,dword ptr [eax]
 004F8D13    call        dword ptr [edx]
 004F8D15    sub         eax,8
 004F8D18    sbb         edx,0
 004F8D1B    push        edx
 004F8D1C    push        eax
 004F8D1D    mov         eax,dword ptr [ebp-4]
 004F8D20    call        TStream.GetPosition
 004F8D25    cmp         edx,dword ptr [esp+4]
>004F8D29    jne         004F8D34
 004F8D2B    cmp         eax,dword ptr [esp]
 004F8D2E    pop         edx
 004F8D2F    pop         eax
>004F8D30    jae         004F8D46
>004F8D32    jmp         004F8D38
 004F8D34    pop         edx
 004F8D35    pop         eax
>004F8D36    jge         004F8D46
 004F8D38    mov         eax,[0056E5A4];^gvar_0056DF04
 004F8D3D    cmp         byte ptr [eax],0
>004F8D40    je          004F89AC
 004F8D46    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8D4B    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F8D51    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F8D57    call        TListItems.EndUpdate
 004F8D5C    call        004F91E8
 004F8D61    lea         eax,[ebp-9C]
 004F8D67    push        eax
 004F8D68    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8D6D    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F8D73    mov         dword ptr [ebp-5C],eax
 004F8D76    mov         byte ptr [ebp-58],0
 004F8D7A    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8D7F    mov         eax,dword ptr [eax+390];TfmDefectsEditor.?f390:dword
 004F8D85    mov         dword ptr [ebp-54],eax
 004F8D88    mov         byte ptr [ebp-50],0
 004F8D8C    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8D91    mov         eax,dword ptr [eax+38C];TfmDefectsEditor.?f38C:dword
 004F8D97    mov         dword ptr [ebp-4C],eax
 004F8D9A    mov         byte ptr [ebp-48],0
 004F8D9E    lea         edx,[ebp-5C]
 004F8DA1    mov         ecx,2
 004F8DA6    mov         eax,4F8EE8;'All: %d, Tracks %d, Sectors %d'
 004F8DAB    call        0040D630
 004F8DB0    mov         eax,dword ptr [ebp-9C]
 004F8DB6    push        eax
 004F8DB7    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F8DBC    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004F8DC2    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004F8DC8    xor         edx,edx
 004F8DCA    call        TStatusPanels.GetItem
 004F8DCF    pop         edx
 004F8DD0    call        TStatusPanel.SetText
 004F8DD5    mov         eax,[0056E5A4];^gvar_0056DF04
 004F8DDA    cmp         byte ptr [eax],0
>004F8DDD    jne         004F8DF5
 004F8DDF    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F8DE4    cmp         dword ptr [eax],0
>004F8DE7    je          004F8DF5
 004F8DE9    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F8DEE    mov         eax,dword ptr [eax]
 004F8DF0    call        004A7264
 004F8DF5    xor         eax,eax
 004F8DF7    pop         edx
 004F8DF8    pop         ecx
 004F8DF9    pop         ecx
 004F8DFA    mov         dword ptr fs:[eax],edx
 004F8DFD    push        4F8E3C
 004F8E02    lea         eax,[ebp-9C]
 004F8E08    call        @LStrClr
 004F8E0D    lea         eax,[ebp-70]
 004F8E10    mov         edx,5
 004F8E15    call        @LStrArrayClr
 004F8E1A    lea         eax,[ebp-44]
 004F8E1D    mov         edx,3
 004F8E22    call        @LStrArrayClr
 004F8E27    lea         eax,[ebp-30]
 004F8E2A    mov         edx,5
 004F8E2F    call        @LStrArrayClr
 004F8E34    ret
>004F8E35    jmp         @HandleFinally
>004F8E3A    jmp         004F8E02
 004F8E3C    pop         ebx
 004F8E3D    mov         esp,ebp
 004F8E3F    pop         ebp
 004F8E40    ret
*}
end;

//004F8F08
procedure TfmDefectsEditor.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004F8F08    push        ebp
 004F8F09    mov         ebp,esp
 004F8F0B    add         esp,0FFFFFFF4
 004F8F0E    mov         dword ptr [ebp-8],ecx
 004F8F11    mov         dword ptr [ebp-0C],edx
 004F8F14    mov         dword ptr [ebp-4],eax
 004F8F17    xor         eax,eax
 004F8F19    mov         [0056D3E8],eax;gvar_0056D3E8:TfmDefectsEditor
 004F8F1E    mov         eax,dword ptr [ebp-8]
 004F8F21    mov         byte ptr [eax],2
 004F8F24    mov         esp,ebp
 004F8F26    pop         ebp
 004F8F27    ret
*}
end;

//004F8F28
procedure TfmDefectsEditor.FormShow(Sender:TObject);
begin
{*
 004F8F28    push        ebp
 004F8F29    mov         ebp,esp
 004F8F2B    xor         ecx,ecx
 004F8F2D    push        ecx
 004F8F2E    push        ecx
 004F8F2F    push        ecx
 004F8F30    push        ecx
 004F8F31    push        ecx
 004F8F32    mov         dword ptr [ebp-0C],edx
 004F8F35    mov         dword ptr [ebp-4],eax
 004F8F38    xor         eax,eax
 004F8F3A    push        ebp
 004F8F3B    push        4F9064
 004F8F40    push        dword ptr fs:[eax]
 004F8F43    mov         dword ptr fs:[eax],esp
 004F8F46    mov         dl,1
 004F8F48    mov         eax,[0041DE14];TMemoryStream
 004F8F4D    call        TObject.Create;TMemoryStream.Create
 004F8F52    mov         edx,dword ptr [ebp-4]
 004F8F55    mov         dword ptr [edx+348],eax;TfmDefectsEditor.?f348:TMemoryStream
 004F8F5B    mov         eax,[0056E284];^gvar_0056DF34
 004F8F60    mov         eax,dword ptr [eax]
 004F8F62    mov         eax,dword ptr [eax+408]
 004F8F68    cmp         byte ptr [eax+38],0
>004F8F6C    je          004F8F98
 004F8F6E    mov         eax,dword ptr [ebp-4]
 004F8F71    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F8F77    mov         eax,dword ptr [ebp-4]
 004F8F7A    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F8F81    call        005095B8
 004F8F86    test        al,al
>004F8F88    je          004F8F98
 004F8F8A    mov         eax,dword ptr [ebp-4]
 004F8F8D    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F8F93    call        004F87D0
 004F8F98    mov         eax,dword ptr [ebp-4]
 004F8F9B    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F8FA2    sub         ax,33
>004F8FA6    je          004F8FB9
 004F8FA8    dec         ax
>004F8FAB    je          004F8FC8
 004F8FAD    dec         ax
>004F8FB0    je          004F8FD7
 004F8FB2    dec         ax
>004F8FB5    je          004F8FE6
>004F8FB7    jmp         004F8FF5
 004F8FB9    lea         eax,[ebp-8]
 004F8FBC    mov         edx,4F9078;'P-List'
 004F8FC1    call        @LStrLAsg
>004F8FC6    jmp         004F8FFD
 004F8FC8    lea         eax,[ebp-8]
 004F8FCB    mov         edx,4F9088;'G-List'
 004F8FD0    call        @LStrLAsg
>004F8FD5    jmp         004F8FFD
 004F8FD7    lea         eax,[ebp-8]
 004F8FDA    mov         edx,4F9098;'SA-List'
 004F8FDF    call        @LStrLAsg
>004F8FE4    jmp         004F8FFD
 004F8FE6    lea         eax,[ebp-8]
 004F8FE9    mov         edx,4F90A8;'T-List'
 004F8FEE    call        @LStrLAsg
>004F8FF3    jmp         004F8FFD
 004F8FF5    lea         eax,[ebp-8]
 004F8FF8    call        @LStrClr
 004F8FFD    lea         edx,[ebp-14]
 004F9000    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9005    call        TPanel.GetCaption
 004F900A    push        dword ptr [ebp-14]
 004F900D    push        4F90B8;' '
 004F9012    mov         eax,[0056E284];^gvar_0056DF34
 004F9017    mov         eax,dword ptr [eax]
 004F9019    push        dword ptr [eax+420]
 004F901F    push        4F90C4;' - '
 004F9024    push        dword ptr [ebp-8]
 004F9027    lea         eax,[ebp-10]
 004F902A    mov         edx,5
 004F902F    call        @LStrCatN
 004F9034    mov         edx,dword ptr [ebp-10]
 004F9037    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F903C    call        TPanel.SetCaption
 004F9041    xor         eax,eax
 004F9043    pop         edx
 004F9044    pop         ecx
 004F9045    pop         ecx
 004F9046    mov         dword ptr fs:[eax],edx
 004F9049    push        4F906B
 004F904E    lea         eax,[ebp-14]
 004F9051    mov         edx,2
 004F9056    call        @LStrArrayClr
 004F905B    lea         eax,[ebp-8]
 004F905E    call        @LStrClr
 004F9063    ret
>004F9064    jmp         @HandleFinally
>004F9069    jmp         004F904E
 004F906B    mov         esp,ebp
 004F906D    pop         ebp
 004F906E    ret
*}
end;

//004F90C8
procedure TfmDefectsEditor.miReadPListClick(Sender:TObject);
begin
{*
 004F90C8    push        ebp
 004F90C9    mov         ebp,esp
 004F90CB    add         esp,0FFFFFFF8
 004F90CE    mov         dword ptr [ebp-8],edx
 004F90D1    mov         dword ptr [ebp-4],eax
 004F90D4    mov         eax,dword ptr [ebp-4]
 004F90D7    mov         word ptr [eax+344],33;TfmDefectsEditor.?f344:word
 004F90E0    mov         eax,dword ptr [ebp-4]
 004F90E3    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F90E9    mov         eax,dword ptr [ebp-4]
 004F90EC    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F90F3    call        005095B8
 004F90F8    test        al,al
>004F90FA    je          004F910A
 004F90FC    mov         eax,dword ptr [ebp-4]
 004F90FF    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9105    call        004F87D0
 004F910A    pop         ecx
 004F910B    pop         ecx
 004F910C    pop         ebp
 004F910D    ret
*}
end;

//004F9110
procedure TfmDefectsEditor.miReadGListClick(Sender:TObject);
begin
{*
 004F9110    push        ebp
 004F9111    mov         ebp,esp
 004F9113    add         esp,0FFFFFFF8
 004F9116    mov         dword ptr [ebp-8],edx
 004F9119    mov         dword ptr [ebp-4],eax
 004F911C    mov         eax,dword ptr [ebp-4]
 004F911F    mov         word ptr [eax+344],34;TfmDefectsEditor.?f344:word
 004F9128    mov         eax,dword ptr [ebp-4]
 004F912B    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9131    mov         eax,dword ptr [ebp-4]
 004F9134    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F913B    call        005095B8
 004F9140    test        al,al
>004F9142    je          004F9152
 004F9144    mov         eax,dword ptr [ebp-4]
 004F9147    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F914D    call        004F87D0
 004F9152    pop         ecx
 004F9153    pop         ecx
 004F9154    pop         ebp
 004F9155    ret
*}
end;

//004F9158
procedure TfmDefectsEditor.miReadSAListClick(Sender:TObject);
begin
{*
 004F9158    push        ebp
 004F9159    mov         ebp,esp
 004F915B    add         esp,0FFFFFFF8
 004F915E    mov         dword ptr [ebp-8],edx
 004F9161    mov         dword ptr [ebp-4],eax
 004F9164    mov         eax,dword ptr [ebp-4]
 004F9167    mov         word ptr [eax+344],35;TfmDefectsEditor.?f344:word
 004F9170    mov         eax,dword ptr [ebp-4]
 004F9173    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9179    mov         eax,dword ptr [ebp-4]
 004F917C    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F9183    call        005095B8
 004F9188    test        al,al
>004F918A    je          004F919A
 004F918C    mov         eax,dword ptr [ebp-4]
 004F918F    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9195    call        004F87D0
 004F919A    pop         ecx
 004F919B    pop         ecx
 004F919C    pop         ebp
 004F919D    ret
*}
end;

//004F91A0
procedure TfmDefectsEditor.miReadTListClick(Sender:TObject);
begin
{*
 004F91A0    push        ebp
 004F91A1    mov         ebp,esp
 004F91A3    add         esp,0FFFFFFF8
 004F91A6    mov         dword ptr [ebp-8],edx
 004F91A9    mov         dword ptr [ebp-4],eax
 004F91AC    mov         eax,dword ptr [ebp-4]
 004F91AF    mov         word ptr [eax+344],36;TfmDefectsEditor.?f344:word
 004F91B8    mov         eax,dword ptr [ebp-4]
 004F91BB    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F91C1    mov         eax,dword ptr [ebp-4]
 004F91C4    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F91CB    call        005095B8
 004F91D0    test        al,al
>004F91D2    je          004F91E2
 004F91D4    mov         eax,dword ptr [ebp-4]
 004F91D7    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F91DD    call        004F87D0
 004F91E2    pop         ecx
 004F91E3    pop         ecx
 004F91E4    pop         ebp
 004F91E5    ret
*}
end;

//004F91E8
procedure sub_004F91E8;
begin
{*
 004F91E8    push        ebp
 004F91E9    mov         ebp,esp
 004F91EB    xor         ecx,ecx
 004F91ED    push        ecx
 004F91EE    push        ecx
 004F91EF    push        ecx
 004F91F0    push        ecx
 004F91F1    push        ecx
 004F91F2    push        ebx
 004F91F3    xor         eax,eax
 004F91F5    push        ebp
 004F91F6    push        4F9347
 004F91FB    push        dword ptr fs:[eax]
 004F91FE    mov         dword ptr fs:[eax],esp
 004F9201    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9206    mov         byte ptr [eax],0
 004F9209    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F920E    add         eax,34C;TfmDefectsEditor.?f34C:?
 004F9213    xor         ecx,ecx
 004F9215    mov         edx,20
 004F921A    call        @FillChar
 004F921F    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9224    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F922A    mov         edx,dword ptr [eax]
 004F922C    call        dword ptr [edx+0D8];TCustomListBox.Clear
 004F9232    xor         eax,eax
 004F9234    mov         dword ptr [ebp-4],eax
>004F9237    jmp         004F927C
 004F9239    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F923E    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9244    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F924A    mov         edx,dword ptr [ebp-4]
 004F924D    call        0045AF80
 004F9252    mov         eax,dword ptr [eax+8]
 004F9255    lea         ecx,[ebp-8]
 004F9258    mov         edx,1
 004F925D    mov         ebx,dword ptr [eax]
 004F925F    call        dword ptr [ebx+0C]
 004F9262    mov         eax,dword ptr [ebp-8]
 004F9265    xor         edx,edx
 004F9267    call        0040C4A8
 004F926C    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9272    inc         dword ptr [edx+eax*4+34C]
 004F9279    inc         dword ptr [ebp-4]
 004F927C    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9281    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9287    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F928D    call        0045AF28
 004F9292    cmp         eax,dword ptr [ebp-4]
>004F9295    jle         004F92A1
 004F9297    mov         eax,[0056E5A4];^gvar_0056DF04
 004F929C    cmp         byte ptr [eax],0
>004F929F    je          004F9239
 004F92A1    xor         eax,eax
 004F92A3    mov         dword ptr [ebp-4],eax
 004F92A6    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F92AB    mov         edx,dword ptr [ebp-4]
 004F92AE    cmp         dword ptr [eax+edx*4+34C],0
>004F92B6    jle         004F9310
 004F92B8    push        4F935C;'Head '
 004F92BD    lea         edx,[ebp-10]
 004F92C0    mov         eax,dword ptr [ebp-4]
 004F92C3    call        IntToStr
 004F92C8    push        dword ptr [ebp-10]
 004F92CB    push        4F936C;' = '
 004F92D0    lea         edx,[ebp-14]
 004F92D3    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F92D8    mov         ecx,dword ptr [ebp-4]
 004F92DB    mov         eax,dword ptr [eax+ecx*4+34C]
 004F92E2    call        IntToStr
 004F92E7    push        dword ptr [ebp-14]
 004F92EA    lea         eax,[ebp-0C]
 004F92ED    mov         edx,4
 004F92F2    call        @LStrCatN
 004F92F7    mov         edx,dword ptr [ebp-0C]
 004F92FA    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F92FF    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9305    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004F930B    mov         ecx,dword ptr [eax]
 004F930D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 004F9310    inc         dword ptr [ebp-4]
 004F9313    cmp         dword ptr [ebp-4],8
>004F9317    jne         004F92A6
 004F9319    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F931E    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9324    mov         edx,dword ptr [eax]
 004F9326    call        dword ptr [edx+0C4];TListView.sub_0048C028
 004F932C    xor         eax,eax
 004F932E    pop         edx
 004F932F    pop         ecx
 004F9330    pop         ecx
 004F9331    mov         dword ptr fs:[eax],edx
 004F9334    push        4F934E
 004F9339    lea         eax,[ebp-14]
 004F933C    mov         edx,4
 004F9341    call        @LStrArrayClr
 004F9346    ret
>004F9347    jmp         @HandleFinally
>004F934C    jmp         004F9339
 004F934E    pop         ebx
 004F934F    mov         esp,ebp
 004F9351    pop         ebp
 004F9352    ret
*}
end;

//004F9370
{*procedure sub_004F9370(?:?);
begin
 004F9370    push        ebp
 004F9371    mov         ebp,esp
 004F9373    xor         ecx,ecx
 004F9375    push        ecx
 004F9376    push        ecx
 004F9377    push        ecx
 004F9378    push        ecx
 004F9379    push        ecx
 004F937A    push        ecx
 004F937B    push        ebx
 004F937C    mov         dword ptr [ebp-4],eax
 004F937F    xor         eax,eax
 004F9381    push        ebp
 004F9382    push        4F94E3
 004F9387    push        dword ptr fs:[eax]
 004F938A    mov         dword ptr fs:[eax],esp
 004F938D    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9392    mov         byte ptr [eax],0
 004F9395    xor         eax,eax
 004F9397    mov         dword ptr [ebp-8],eax
>004F939A    jmp         004F949A
 004F939F    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F93A4    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F93AA    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F93B0    mov         edx,dword ptr [ebp-8]
 004F93B3    call        0045AF80
 004F93B8    mov         eax,dword ptr [eax+8]
 004F93BB    lea         ecx,[ebp-0C]
 004F93BE    mov         edx,1
 004F93C3    mov         ebx,dword ptr [eax]
 004F93C5    call        dword ptr [ebx+0C]
 004F93C8    mov         eax,dword ptr [ebp-0C]
 004F93CB    xor         edx,edx
 004F93CD    call        0040C4A8
 004F93D2    cmp         eax,dword ptr [ebp-4]
>004F93D5    jne         004F93F8
 004F93D7    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F93DC    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F93E2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F93E8    mov         edx,dword ptr [ebp-8]
 004F93EB    call        0045B9A0
 004F93F0    dec         dword ptr [ebp-8]
>004F93F3    jmp         004F9497
 004F93F8    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F93FD    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9403    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9409    mov         edx,dword ptr [ebp-8]
 004F940C    call        0045AF80
 004F9411    mov         eax,dword ptr [eax+8]
 004F9414    lea         ecx,[ebp-10]
 004F9417    mov         edx,1
 004F941C    mov         ebx,dword ptr [eax]
 004F941E    call        dword ptr [ebx+0C]
 004F9421    mov         eax,dword ptr [ebp-10]
 004F9424    xor         edx,edx
 004F9426    call        0040C4A8
 004F942B    cmp         eax,dword ptr [ebp-4]
>004F942E    jle         004F9497
 004F9430    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9435    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F943B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9441    mov         edx,dword ptr [ebp-8]
 004F9444    call        0045AF80
 004F9449    mov         eax,dword ptr [eax+8]
 004F944C    lea         ecx,[ebp-18]
 004F944F    mov         edx,1
 004F9454    mov         ebx,dword ptr [eax]
 004F9456    call        dword ptr [ebx+0C]
 004F9459    mov         eax,dword ptr [ebp-18]
 004F945C    xor         edx,edx
 004F945E    call        0040C4A8
 004F9463    dec         eax
 004F9464    lea         edx,[ebp-14]
 004F9467    call        IntToStr
 004F946C    mov         eax,dword ptr [ebp-14]
 004F946F    push        eax
 004F9470    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9475    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F947B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9481    mov         edx,dword ptr [ebp-8]
 004F9484    call        0045AF80
 004F9489    mov         eax,dword ptr [eax+8]
 004F948C    mov         edx,1
 004F9491    pop         ecx
 004F9492    mov         ebx,dword ptr [eax]
 004F9494    call        dword ptr [ebx+20]
 004F9497    inc         dword ptr [ebp-8]
 004F949A    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F949F    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F94A5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F94AB    call        0045AF28
 004F94B0    cmp         eax,dword ptr [ebp-8]
>004F94B3    jle         004F94C3
 004F94B5    mov         eax,[0056E5A4];^gvar_0056DF04
 004F94BA    cmp         byte ptr [eax],0
>004F94BD    je          004F939F
 004F94C3    call        004F91E8
 004F94C8    xor         eax,eax
 004F94CA    pop         edx
 004F94CB    pop         ecx
 004F94CC    pop         ecx
 004F94CD    mov         dword ptr fs:[eax],edx
 004F94D0    push        4F94EA
 004F94D5    lea         eax,[ebp-18]
 004F94D8    mov         edx,4
 004F94DD    call        @LStrArrayClr
 004F94E2    ret
>004F94E3    jmp         @HandleFinally
>004F94E8    jmp         004F94D5
 004F94EA    pop         ebx
 004F94EB    mov         esp,ebp
 004F94ED    pop         ebp
 004F94EE    ret
end;*}

//004F94F0
procedure TfmDefectsEditor.miKillHeadClick(Sender:TObject);
begin
{*
 004F94F0    push        ebp
 004F94F1    mov         ebp,esp
 004F94F3    add         esp,0FFFFFFEC
 004F94F6    push        ebx
 004F94F7    xor         ecx,ecx
 004F94F9    mov         dword ptr [ebp-10],ecx
 004F94FC    mov         dword ptr [ebp-14],ecx
 004F94FF    mov         dword ptr [ebp-0C],edx
 004F9502    mov         dword ptr [ebp-4],eax
 004F9505    xor         eax,eax
 004F9507    push        ebp
 004F9508    push        4F95C9
 004F950D    push        dword ptr fs:[eax]
 004F9510    mov         dword ptr fs:[eax],esp
 004F9513    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9518    mov         byte ptr [eax],0
 004F951B    xor         eax,eax
 004F951D    mov         dword ptr [ebp-8],eax
>004F9520    jmp         004F956F
 004F9522    mov         edx,dword ptr [ebp-8]
 004F9525    mov         eax,dword ptr [ebp-4]
 004F9528    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F952E    call        004D3074
 004F9533    test        al,al
>004F9535    je          004F956C
 004F9537    lea         ecx,[ebp-14]
 004F953A    mov         eax,dword ptr [ebp-4]
 004F953D    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9543    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 004F9549    mov         edx,dword ptr [ebp-8]
 004F954C    mov         ebx,dword ptr [eax]
 004F954E    call        dword ptr [ebx+0C];@AbstractError
 004F9551    mov         eax,dword ptr [ebp-14]
 004F9554    mov         dl,byte ptr [eax+5]
 004F9557    lea         eax,[ebp-10]
 004F955A    call        @LStrFromChar
 004F955F    mov         eax,dword ptr [ebp-10]
 004F9562    call        0040C468
 004F9567    call        004F9370
 004F956C    inc         dword ptr [ebp-8]
 004F956F    mov         eax,dword ptr [ebp-4]
 004F9572    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9578    mov         edx,dword ptr [eax]
 004F957A    call        dword ptr [edx+0C8];TCheckListBox.sub_004797D4
 004F9580    cmp         eax,dword ptr [ebp-8]
>004F9583    jle         004F958F
 004F9585    mov         eax,[0056E5A4];^gvar_0056DF04
 004F958A    cmp         byte ptr [eax],0
>004F958D    je          004F9522
 004F958F    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9594    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004F959A    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004F95A0    xor         edx,edx
 004F95A2    call        TStatusPanels.GetItem
 004F95A7    xor         edx,edx
 004F95A9    call        TStatusPanel.SetText
 004F95AE    xor         eax,eax
 004F95B0    pop         edx
 004F95B1    pop         ecx
 004F95B2    pop         ecx
 004F95B3    mov         dword ptr fs:[eax],edx
 004F95B6    push        4F95D0
 004F95BB    lea         eax,[ebp-14]
 004F95BE    mov         edx,2
 004F95C3    call        @LStrArrayClr
 004F95C8    ret
>004F95C9    jmp         @HandleFinally
>004F95CE    jmp         004F95BB
 004F95D0    pop         ebx
 004F95D1    mov         esp,ebp
 004F95D3    pop         ebp
 004F95D4    ret
*}
end;

//004F95D8
procedure TfmDefectsEditor.miDeleteClick(Sender:TObject);
begin
{*
 004F95D8    push        ebp
 004F95D9    mov         ebp,esp
 004F95DB    add         esp,0FFFFFFF4
 004F95DE    mov         dword ptr [ebp-0C],edx
 004F95E1    mov         dword ptr [ebp-4],eax
 004F95E4    mov         eax,dword ptr [ebp-4]
 004F95E7    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F95ED    mov         edx,dword ptr [eax]
 004F95EF    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 004F95F5    mov         dword ptr [ebp-8],eax
 004F95F8    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F95FC    jle         004F9686
 004F9602    mov         eax,dword ptr [ebp-4]
 004F9605    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F960B    mov         edx,dword ptr [eax]
 004F960D    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 004F9613    mov         edx,eax
 004F9615    mov         eax,dword ptr [ebp-4]
 004F9618    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F961E    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9624    call        0045B9A0
 004F9629    call        004F91E8
 004F962E    mov         eax,dword ptr [ebp-4]
 004F9631    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9637    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F963D    call        0045AF28
 004F9642    dec         eax
 004F9643    cmp         eax,dword ptr [ebp-8]
>004F9646    jle         004F965E
 004F9648    mov         edx,dword ptr [ebp-8]
 004F964B    mov         eax,dword ptr [ebp-4]
 004F964E    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9654    mov         ecx,dword ptr [eax]
 004F9656    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
>004F965C    jmp         004F9686
 004F965E    mov         eax,dword ptr [ebp-4]
 004F9661    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9667    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F966D    call        0045AF28
 004F9672    mov         edx,eax
 004F9674    dec         edx
 004F9675    mov         eax,dword ptr [ebp-4]
 004F9678    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F967E    mov         ecx,dword ptr [eax]
 004F9680    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 004F9686    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F968B    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004F9691    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004F9697    xor         edx,edx
 004F9699    call        TStatusPanels.GetItem
 004F969E    xor         edx,edx
 004F96A0    call        TStatusPanel.SetText
 004F96A5    mov         esp,ebp
 004F96A7    pop         ebp
 004F96A8    ret
*}
end;

//004F96AC
procedure TfmDefectsEditor.miWriteClick(Sender:TObject);
begin
{*
 004F96AC    push        ebp
 004F96AD    mov         ebp,esp
 004F96AF    mov         ecx,0D
 004F96B4    push        0
 004F96B6    push        0
 004F96B8    dec         ecx
>004F96B9    jne         004F96B4
 004F96BB    push        ebx
 004F96BC    mov         dword ptr [ebp-20],edx
 004F96BF    mov         dword ptr [ebp-4],eax
 004F96C2    xor         eax,eax
 004F96C4    push        ebp
 004F96C5    push        4F9B21
 004F96CA    push        dword ptr fs:[eax]
 004F96CD    mov         dword ptr fs:[eax],esp
 004F96D0    mov         eax,dword ptr [ebp-4]
 004F96D3    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F96D9    mov         edx,dword ptr [eax]
 004F96DB    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004F96DD    cmp         edx,0
>004F96E0    jne         004F96EB
 004F96E2    cmp         eax,0
>004F96E5    je          004F9B06
 004F96EB    mov         eax,dword ptr [ebp-4]
 004F96EE    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F96F4    call        00501620
 004F96F9    mov         eax,[0056E5A4];^gvar_0056DF04
 004F96FE    mov         byte ptr [eax],0
 004F9701    xor         ecx,ecx
 004F9703    xor         edx,edx
 004F9705    mov         eax,dword ptr [ebp-4]
 004F9708    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F970E    mov         ebx,dword ptr [eax]
 004F9710    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F9713    mov         eax,dword ptr [ebp-4]
 004F9716    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F971C    call        004CE56C
 004F9721    mov         dword ptr [ebp-14],eax
 004F9724    cmp         dword ptr [ebp-14],4C594F52
>004F972B    jne         004F976A
 004F972D    xor         ecx,ecx
 004F972F    mov         edx,6
 004F9734    mov         eax,dword ptr [ebp-4]
 004F9737    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F973D    mov         ebx,dword ptr [eax]
 004F973F    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F9742    mov         eax,dword ptr [ebp-4]
 004F9745    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F974B    call        004CE548
 004F9750    mov         word ptr [ebp-0E],ax
 004F9754    movzx       edx,word ptr [ebp-0E]
 004F9758    xor         ecx,ecx
 004F975A    mov         eax,dword ptr [ebp-4]
 004F975D    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9763    mov         ebx,dword ptr [eax]
 004F9765    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004F9768    jmp         004F977F
 004F976A    xor         ecx,ecx
 004F976C    mov         edx,18
 004F9771    mov         eax,dword ptr [ebp-4]
 004F9774    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F977A    mov         ebx,dword ptr [eax]
 004F977C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F977F    mov         eax,dword ptr [ebp-4]
 004F9782    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9788    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F978E    call        0045AF28
 004F9793    mov         dword ptr [ebp-8],eax
 004F9796    lea         edx,[ebp-8]
 004F9799    mov         ecx,4
 004F979E    mov         eax,dword ptr [ebp-4]
 004F97A1    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F97A7    call        TStream.WriteBuffer
 004F97AC    xor         eax,eax
 004F97AE    mov         dword ptr [ebp-1C],eax
>004F97B1    jmp         004F9AD8
 004F97B6    mov         eax,dword ptr [ebp-4]
 004F97B9    cmp         word ptr [eax+344],36;TfmDefectsEditor.?f344:word
>004F97C1    jne         004F9933
 004F97C7    mov         eax,dword ptr [ebp-4]
 004F97CA    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F97D0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F97D6    mov         edx,dword ptr [ebp-1C]
 004F97D9    call        0045AF80
 004F97DE    mov         eax,dword ptr [eax+8]
 004F97E1    lea         ecx,[ebp-2C]
 004F97E4    mov         edx,1
 004F97E9    mov         ebx,dword ptr [eax]
 004F97EB    call        dword ptr [ebx+0C]
 004F97EE    mov         ecx,dword ptr [ebp-2C]
 004F97F1    lea         eax,[ebp-28]
 004F97F4    mov         edx,4F9B38;'$'
 004F97F9    call        @LStrCat3
 004F97FE    mov         eax,dword ptr [ebp-28]
 004F9801    xor         edx,edx
 004F9803    call        0040C4A8
 004F9808    mov         dword ptr [ebp-14],eax
 004F980B    mov         eax,dword ptr [ebp-4]
 004F980E    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9814    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F981A    mov         edx,dword ptr [ebp-1C]
 004F981D    call        0045AF80
 004F9822    mov         eax,dword ptr [eax+8]
 004F9825    lea         ecx,[ebp-34]
 004F9828    xor         edx,edx
 004F982A    mov         ebx,dword ptr [eax]
 004F982C    call        dword ptr [ebx+0C]
 004F982F    mov         ecx,dword ptr [ebp-34]
 004F9832    lea         eax,[ebp-30]
 004F9835    mov         edx,4F9B38;'$'
 004F983A    call        @LStrCat3
 004F983F    mov         eax,dword ptr [ebp-30]
 004F9842    xor         edx,edx
 004F9844    call        0040C4A8
 004F9849    mov         dword ptr [ebp-0C],eax
 004F984C    mov         eax,dword ptr [ebp-4]
 004F984F    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9855    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F985B    mov         edx,dword ptr [ebp-1C]
 004F985E    call        0045AF80
 004F9863    mov         eax,dword ptr [eax+8]
 004F9866    lea         ecx,[ebp-3C]
 004F9869    mov         edx,2
 004F986E    mov         ebx,dword ptr [eax]
 004F9870    call        dword ptr [ebx+0C]
 004F9873    mov         ecx,dword ptr [ebp-3C]
 004F9876    lea         eax,[ebp-38]
 004F9879    mov         edx,4F9B38;'$'
 004F987E    call        @LStrCat3
 004F9883    mov         eax,dword ptr [ebp-38]
 004F9886    xor         edx,edx
 004F9888    call        0040C4A8
 004F988D    mov         word ptr [ebp-0E],ax
 004F9891    mov         eax,dword ptr [ebp-4]
 004F9894    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F989A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F98A0    mov         edx,dword ptr [ebp-1C]
 004F98A3    call        0045AF80
 004F98A8    mov         eax,dword ptr [eax+8]
 004F98AB    lea         ecx,[ebp-44]
 004F98AE    mov         edx,3
 004F98B3    mov         ebx,dword ptr [eax]
 004F98B5    call        dword ptr [ebx+0C]
 004F98B8    mov         ecx,dword ptr [ebp-44]
 004F98BB    lea         eax,[ebp-40]
 004F98BE    mov         edx,4F9B38;'$'
 004F98C3    call        @LStrCat3
 004F98C8    mov         eax,dword ptr [ebp-40]
 004F98CB    xor         edx,edx
 004F98CD    call        0040C4A8
 004F98D2    mov         word ptr [ebp-10],ax
 004F98D6    lea         edx,[ebp-14]
 004F98D9    mov         ecx,4
 004F98DE    mov         eax,dword ptr [ebp-4]
 004F98E1    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F98E7    call        TStream.WriteBuffer
 004F98EC    lea         edx,[ebp-0E]
 004F98EF    mov         ecx,2
 004F98F4    mov         eax,dword ptr [ebp-4]
 004F98F7    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F98FD    call        TStream.WriteBuffer
 004F9902    lea         edx,[ebp-10]
 004F9905    mov         ecx,2
 004F990A    mov         eax,dword ptr [ebp-4]
 004F990D    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9913    call        TStream.WriteBuffer
 004F9918    lea         edx,[ebp-0C]
 004F991B    mov         ecx,4
 004F9920    mov         eax,dword ptr [ebp-4]
 004F9923    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9929    call        TStream.WriteBuffer
>004F992E    jmp         004F9AD5
 004F9933    mov         eax,dword ptr [ebp-4]
 004F9936    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F993C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9942    mov         edx,dword ptr [ebp-1C]
 004F9945    call        0045AF80
 004F994A    mov         eax,dword ptr [eax+8]
 004F994D    lea         ecx,[ebp-4C]
 004F9950    mov         edx,1
 004F9955    mov         ebx,dword ptr [eax]
 004F9957    call        dword ptr [ebx+0C]
 004F995A    mov         ecx,dword ptr [ebp-4C]
 004F995D    lea         eax,[ebp-48]
 004F9960    mov         edx,4F9B38;'$'
 004F9965    call        @LStrCat3
 004F996A    mov         eax,dword ptr [ebp-48]
 004F996D    xor         edx,edx
 004F996F    call        0040C4A8
 004F9974    mov         dword ptr [ebp-14],eax
 004F9977    mov         eax,dword ptr [ebp-4]
 004F997A    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9980    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9986    mov         edx,dword ptr [ebp-1C]
 004F9989    call        0045AF80
 004F998E    mov         eax,dword ptr [eax+8]
 004F9991    lea         ecx,[ebp-54]
 004F9994    xor         edx,edx
 004F9996    mov         ebx,dword ptr [eax]
 004F9998    call        dword ptr [ebx+0C]
 004F999B    mov         ecx,dword ptr [ebp-54]
 004F999E    lea         eax,[ebp-50]
 004F99A1    mov         edx,4F9B38;'$'
 004F99A6    call        @LStrCat3
 004F99AB    mov         eax,dword ptr [ebp-50]
 004F99AE    xor         edx,edx
 004F99B0    call        0040C4A8
 004F99B5    mov         dword ptr [ebp-18],eax
 004F99B8    shl         dword ptr [ebp-14],18
 004F99BC    mov         eax,dword ptr [ebp-18]
 004F99BF    or          dword ptr [ebp-14],eax
 004F99C2    lea         edx,[ebp-14]
 004F99C5    mov         ecx,4
 004F99CA    mov         eax,dword ptr [ebp-4]
 004F99CD    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F99D3    call        TStream.WriteBuffer
 004F99D8    mov         eax,dword ptr [ebp-4]
 004F99DB    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F99E1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F99E7    mov         edx,dword ptr [ebp-1C]
 004F99EA    call        0045AF80
 004F99EF    mov         eax,dword ptr [eax+8]
 004F99F2    lea         ecx,[ebp-58]
 004F99F5    mov         edx,2
 004F99FA    mov         ebx,dword ptr [eax]
 004F99FC    call        dword ptr [ebx+0C]
 004F99FF    mov         eax,dword ptr [ebp-58]
 004F9A02    mov         edx,4F9B44;'Track'
 004F9A07    call        @LStrCmp
>004F9A0C    jne         004F9A1F
 004F9A0E    mov         word ptr [ebp-0E],0FFFF
 004F9A14    mov         word ptr [ebp-10],0FFFF
>004F9A1A    jmp         004F9AA9
 004F9A1F    mov         eax,dword ptr [ebp-4]
 004F9A22    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9A28    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9A2E    mov         edx,dword ptr [ebp-1C]
 004F9A31    call        0045AF80
 004F9A36    mov         eax,dword ptr [eax+8]
 004F9A39    lea         ecx,[ebp-60]
 004F9A3C    mov         edx,2
 004F9A41    mov         ebx,dword ptr [eax]
 004F9A43    call        dword ptr [ebx+0C]
 004F9A46    mov         ecx,dword ptr [ebp-60]
 004F9A49    lea         eax,[ebp-5C]
 004F9A4C    mov         edx,4F9B38;'$'
 004F9A51    call        @LStrCat3
 004F9A56    mov         eax,dword ptr [ebp-5C]
 004F9A59    xor         edx,edx
 004F9A5B    call        0040C4A8
 004F9A60    mov         word ptr [ebp-0E],ax
 004F9A64    mov         eax,dword ptr [ebp-4]
 004F9A67    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9A6D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9A73    mov         edx,dword ptr [ebp-1C]
 004F9A76    call        0045AF80
 004F9A7B    mov         eax,dword ptr [eax+8]
 004F9A7E    lea         ecx,[ebp-68]
 004F9A81    mov         edx,3
 004F9A86    mov         ebx,dword ptr [eax]
 004F9A88    call        dword ptr [ebx+0C]
 004F9A8B    mov         ecx,dword ptr [ebp-68]
 004F9A8E    lea         eax,[ebp-64]
 004F9A91    mov         edx,4F9B38;'$'
 004F9A96    call        @LStrCat3
 004F9A9B    mov         eax,dword ptr [ebp-64]
 004F9A9E    xor         edx,edx
 004F9AA0    call        0040C4A8
 004F9AA5    mov         word ptr [ebp-10],ax
 004F9AA9    lea         edx,[ebp-0E]
 004F9AAC    mov         ecx,2
 004F9AB1    mov         eax,dword ptr [ebp-4]
 004F9AB4    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9ABA    call        TStream.WriteBuffer
 004F9ABF    lea         edx,[ebp-10]
 004F9AC2    mov         ecx,2
 004F9AC7    mov         eax,dword ptr [ebp-4]
 004F9ACA    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9AD0    call        TStream.WriteBuffer
 004F9AD5    inc         dword ptr [ebp-1C]
 004F9AD8    mov         eax,dword ptr [ebp-1C]
 004F9ADB    cmp         eax,dword ptr [ebp-8]
>004F9ADE    jae         004F9AEE
 004F9AE0    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9AE5    cmp         byte ptr [eax],0
>004F9AE8    je          004F97B6
 004F9AEE    mov         eax,dword ptr [ebp-4]
 004F9AF1    mov         edx,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9AF7    mov         eax,dword ptr [ebp-4]
 004F9AFA    mov         ax,word ptr [eax+344];TfmDefectsEditor.?f344:word
 004F9B01    call        0050980C
 004F9B06    xor         eax,eax
 004F9B08    pop         edx
 004F9B09    pop         ecx
 004F9B0A    pop         ecx
 004F9B0B    mov         dword ptr fs:[eax],edx
 004F9B0E    push        4F9B28
 004F9B13    lea         eax,[ebp-68]
 004F9B16    mov         edx,11
 004F9B1B    call        @LStrArrayClr
 004F9B20    ret
>004F9B21    jmp         @HandleFinally
>004F9B26    jmp         004F9B13
 004F9B28    pop         ebx
 004F9B29    mov         esp,ebp
 004F9B2B    pop         ebp
 004F9B2C    ret
*}
end;

//004F9B4C
procedure TfmDefectsEditor.lvDefectsDblClick(Sender:TObject);
begin
{*
 004F9B4C    push        ebp
 004F9B4D    mov         ebp,esp
 004F9B4F    add         esp,0FFFFFFF8
 004F9B52    mov         dword ptr [ebp-8],edx
 004F9B55    mov         dword ptr [ebp-4],eax
 004F9B58    pop         ecx
 004F9B59    pop         ecx
 004F9B5A    pop         ebp
 004F9B5B    ret
*}
end;

//004F9B5C
procedure TfmDefectsEditor.clHeadsClick(Sender:TObject);
begin
{*
 004F9B5C    push        ebp
 004F9B5D    mov         ebp,esp
 004F9B5F    add         esp,0FFFFFFF0
 004F9B62    mov         dword ptr [ebp-10],edx
 004F9B65    mov         dword ptr [ebp-4],eax
 004F9B68    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9B6D    mov         byte ptr [eax],0
 004F9B70    mov         eax,dword ptr [ebp-4]
 004F9B73    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9B79    mov         edx,dword ptr [eax]
 004F9B7B    call        dword ptr [edx+0CC];TCheckListBox.sub_00479780
 004F9B81    inc         eax
>004F9B82    je          004F9C0D
 004F9B88    mov         eax,dword ptr [ebp-4]
 004F9B8B    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9B91    mov         edx,dword ptr [eax]
 004F9B93    call        dword ptr [edx+0CC];TCheckListBox.sub_00479780
 004F9B99    mov         edx,eax
 004F9B9B    mov         eax,dword ptr [ebp-4]
 004F9B9E    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9BA4    call        004D3074
 004F9BA9    mov         byte ptr [ebp-9],al
 004F9BAC    xor         eax,eax
 004F9BAE    mov         dword ptr [ebp-8],eax
>004F9BB1    jmp         004F9BC9
 004F9BB3    xor         ecx,ecx
 004F9BB5    mov         edx,dword ptr [ebp-8]
 004F9BB8    mov         eax,dword ptr [ebp-4]
 004F9BBB    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9BC1    call        004D2F60
 004F9BC6    inc         dword ptr [ebp-8]
 004F9BC9    mov         eax,dword ptr [ebp-4]
 004F9BCC    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9BD2    mov         edx,dword ptr [eax]
 004F9BD4    call        dword ptr [edx+0C8];TCheckListBox.sub_004797D4
 004F9BDA    cmp         eax,dword ptr [ebp-8]
>004F9BDD    jle         004F9BE9
 004F9BDF    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9BE4    cmp         byte ptr [eax],0
>004F9BE7    je          004F9BB3
 004F9BE9    mov         eax,dword ptr [ebp-4]
 004F9BEC    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9BF2    mov         edx,dword ptr [eax]
 004F9BF4    call        dword ptr [edx+0CC];TCheckListBox.sub_00479780
 004F9BFA    mov         edx,eax
 004F9BFC    mov         cl,byte ptr [ebp-9]
 004F9BFF    mov         eax,dword ptr [ebp-4]
 004F9C02    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004F9C08    call        004D2F60
 004F9C0D    mov         esp,ebp
 004F9C0F    pop         ebp
 004F9C10    ret
*}
end;

//004F9C14
procedure TfmDefectsEditor.FormPaint(Sender:TObject);
begin
{*
 004F9C14    push        ebp
 004F9C15    mov         ebp,esp
 004F9C17    add         esp,0FFFFFFF8
 004F9C1A    mov         dword ptr [ebp-8],edx
 004F9C1D    mov         dword ptr [ebp-4],eax
 004F9C20    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9C25    mov         edx,dword ptr [eax+48];TfmDefectsEditor.Width:Integer
 004F9C28    inc         edx
 004F9C29    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9C2E    call        TSplitter.SetWidth
 004F9C33    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9C38    mov         edx,dword ptr [eax+48];TfmDefectsEditor.Width:Integer
 004F9C3B    dec         edx
 004F9C3C    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004F9C41    call        TSplitter.SetWidth
 004F9C46    pop         ecx
 004F9C47    pop         ecx
 004F9C48    pop         ebp
 004F9C49    ret
*}
end;

//004F9C4C
procedure TfmDefectsEditor.miExporttoINIClick(Sender:TObject);
begin
{*
 004F9C4C    push        ebp
 004F9C4D    mov         ebp,esp
 004F9C4F    mov         ecx,6
 004F9C54    push        0
 004F9C56    push        0
 004F9C58    dec         ecx
>004F9C59    jne         004F9C54
 004F9C5B    push        ecx
 004F9C5C    push        ebx
 004F9C5D    mov         dword ptr [ebp-1C],edx
 004F9C60    mov         dword ptr [ebp-4],eax
 004F9C63    xor         eax,eax
 004F9C65    push        ebp
 004F9C66    push        4F9F3B
 004F9C6B    push        dword ptr fs:[eax]
 004F9C6E    mov         dword ptr fs:[eax],esp
 004F9C71    mov         eax,dword ptr [ebp-4]
 004F9C74    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9C7A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9C80    call        0045AF28
 004F9C85    test        eax,eax
>004F9C87    je          004F9F10
 004F9C8D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F9C92    mov         eax,dword ptr [eax]
 004F9C94    mov         eax,dword ptr [eax+364]
 004F9C9A    mov         dword ptr [ebp-14],eax
 004F9C9D    mov         eax,dword ptr [ebp-14]
 004F9CA0    add         eax,78
 004F9CA3    mov         edx,4F9F50;'Defects.ini'
 004F9CA8    call        @LStrAsg
 004F9CAD    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004F9CB3    mov         edx,dword ptr [edx]
 004F9CB5    mov         eax,dword ptr [ebp-14]
 004F9CB8    call        TOpenDialog.SetInitialDir
 004F9CBD    mov         eax,dword ptr [ebp-14]
 004F9CC0    add         eax,60
 004F9CC3    mov         edx,4F9F64;'ini|*.ini'
 004F9CC8    call        @LStrAsg
 004F9CCD    mov         eax,dword ptr [ebp-14]
 004F9CD0    mov         edx,dword ptr [eax]
 004F9CD2    call        dword ptr [edx+3C]
 004F9CD5    test        al,al
>004F9CD7    je          004F9F10
 004F9CDD    lea         edx,[ebp-20]
 004F9CE0    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F9CE5    mov         eax,dword ptr [eax]
 004F9CE7    mov         eax,dword ptr [eax+364]
 004F9CED    call        TOpenDialog.GetFileName
 004F9CF2    mov         ecx,dword ptr [ebp-20]
 004F9CF5    mov         dl,1
 004F9CF7    mov         eax,[004497F8];TIniFile
 004F9CFC    call        TIniFile.Create;TIniFile.Create
 004F9D01    mov         dword ptr [ebp-10],eax
 004F9D04    xor         eax,eax
 004F9D06    push        ebp
 004F9D07    push        4F9EE3
 004F9D0C    push        dword ptr fs:[eax]
 004F9D0F    mov         dword ptr fs:[eax],esp
 004F9D12    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9D17    mov         byte ptr [eax],0
 004F9D1A    mov         eax,dword ptr [ebp-4]
 004F9D1D    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9D23    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9D29    call        0045AF28
 004F9D2E    mov         edx,dword ptr [ebp-4]
 004F9D31    mov         dword ptr [edx+394],eax;TfmDefectsEditor.?f394:dword
 004F9D37    mov         eax,dword ptr [ebp-4]
 004F9D3A    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F9D40    push        eax
 004F9D41    xor         ecx,ecx
 004F9D43    mov         edx,4F9F78;'Export Defects List'
 004F9D48    mov         eax,[004F7B20];TfmProgres
 004F9D4D    call        004F7D0C
 004F9D52    xor         eax,eax
 004F9D54    mov         dword ptr [ebp-8],eax
>004F9D57    jmp         004F9E91
 004F9D5C    lea         eax,[ebp-0C]
 004F9D5F    call        @LStrClr
 004F9D64    push        dword ptr [ebp-0C]
 004F9D67    mov         eax,dword ptr [ebp-4]
 004F9D6A    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9D70    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9D76    mov         edx,dword ptr [ebp-8]
 004F9D79    call        0045AF80
 004F9D7E    mov         eax,dword ptr [eax+8]
 004F9D81    lea         ecx,[ebp-24]
 004F9D84    xor         edx,edx
 004F9D86    mov         ebx,dword ptr [eax]
 004F9D88    call        dword ptr [ebx+0C]
 004F9D8B    push        dword ptr [ebp-24]
 004F9D8E    push        4F9F94;' '
 004F9D93    lea         eax,[ebp-0C]
 004F9D96    mov         edx,3
 004F9D9B    call        @LStrCatN
 004F9DA0    push        dword ptr [ebp-0C]
 004F9DA3    mov         eax,dword ptr [ebp-4]
 004F9DA6    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9DAC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9DB2    mov         edx,dword ptr [ebp-8]
 004F9DB5    call        0045AF80
 004F9DBA    mov         eax,dword ptr [eax+8]
 004F9DBD    lea         ecx,[ebp-28]
 004F9DC0    mov         edx,1
 004F9DC5    mov         ebx,dword ptr [eax]
 004F9DC7    call        dword ptr [ebx+0C]
 004F9DCA    push        dword ptr [ebp-28]
 004F9DCD    push        4F9F94;' '
 004F9DD2    lea         eax,[ebp-0C]
 004F9DD5    mov         edx,3
 004F9DDA    call        @LStrCatN
 004F9DDF    push        dword ptr [ebp-0C]
 004F9DE2    mov         eax,dword ptr [ebp-4]
 004F9DE5    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9DEB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9DF1    mov         edx,dword ptr [ebp-8]
 004F9DF4    call        0045AF80
 004F9DF9    mov         eax,dword ptr [eax+8]
 004F9DFC    lea         ecx,[ebp-2C]
 004F9DFF    mov         edx,2
 004F9E04    mov         ebx,dword ptr [eax]
 004F9E06    call        dword ptr [ebx+0C]
 004F9E09    push        dword ptr [ebp-2C]
 004F9E0C    push        4F9F94;' '
 004F9E11    lea         eax,[ebp-0C]
 004F9E14    mov         edx,3
 004F9E19    call        @LStrCatN
 004F9E1E    mov         eax,dword ptr [ebp-4]
 004F9E21    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004F9E27    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004F9E2D    mov         edx,dword ptr [ebp-8]
 004F9E30    call        0045AF80
 004F9E35    mov         eax,dword ptr [eax+8]
 004F9E38    lea         ecx,[ebp-30]
 004F9E3B    mov         edx,3
 004F9E40    mov         ebx,dword ptr [eax]
 004F9E42    call        dword ptr [ebx+0C]
 004F9E45    mov         edx,dword ptr [ebp-30]
 004F9E48    lea         eax,[ebp-0C]
 004F9E4B    call        @LStrCat
 004F9E50    mov         eax,dword ptr [ebp-0C]
 004F9E53    push        eax
 004F9E54    mov         eax,dword ptr [ebp-8]
 004F9E57    xor         edx,edx
 004F9E59    push        edx
 004F9E5A    push        eax
 004F9E5B    lea         eax,[ebp-34]
 004F9E5E    call        IntToStr
 004F9E63    mov         ecx,dword ptr [ebp-34]
 004F9E66    mov         edx,4F9FA0;'DEFECTS'
 004F9E6B    mov         eax,dword ptr [ebp-10]
 004F9E6E    mov         ebx,dword ptr [eax]
 004F9E70    call        dword ptr [ebx+4];TIniFile.sub_0044A2B4
 004F9E73    inc         dword ptr [ebp-8]
 004F9E76    mov         eax,[0056E3C0];^Application:TApplication
 004F9E7B    mov         eax,dword ptr [eax]
 004F9E7D    call        004AB51C
 004F9E82    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F9E87    mov         eax,dword ptr [eax]
 004F9E89    mov         edx,dword ptr [ebp-8]
 004F9E8C    call        004F7E2C
 004F9E91    mov         eax,dword ptr [ebp-4]
 004F9E94    mov         eax,dword ptr [eax+394];TfmDefectsEditor.?f394:dword
 004F9E9A    cmp         eax,dword ptr [ebp-8]
>004F9E9D    jbe         004F9EAD
 004F9E9F    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9EA4    cmp         byte ptr [eax],0
>004F9EA7    je          004F9D5C
 004F9EAD    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9EB2    cmp         byte ptr [eax],0
>004F9EB5    jne         004F9ECD
 004F9EB7    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F9EBC    cmp         dword ptr [eax],0
>004F9EBF    je          004F9ECD
 004F9EC1    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004F9EC6    mov         eax,dword ptr [eax]
 004F9EC8    call        004A7264
 004F9ECD    xor         eax,eax
 004F9ECF    pop         edx
 004F9ED0    pop         ecx
 004F9ED1    pop         ecx
 004F9ED2    mov         dword ptr fs:[eax],edx
 004F9ED5    push        4F9EEA
 004F9EDA    mov         eax,dword ptr [ebp-10]
 004F9EDD    call        TObject.Free
 004F9EE2    ret
>004F9EE3    jmp         @HandleFinally
>004F9EE8    jmp         004F9EDA
 004F9EEA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F9EEF    mov         eax,dword ptr [eax]
 004F9EF1    mov         eax,dword ptr [eax+364]
 004F9EF7    mov         dword ptr [ebp-18],eax
 004F9EFA    mov         eax,dword ptr [ebp-18]
 004F9EFD    add         eax,78
 004F9F00    call        @LStrClr
 004F9F05    mov         eax,dword ptr [ebp-18]
 004F9F08    add         eax,60
 004F9F0B    call        @LStrClr
 004F9F10    xor         eax,eax
 004F9F12    pop         edx
 004F9F13    pop         ecx
 004F9F14    pop         ecx
 004F9F15    mov         dword ptr fs:[eax],edx
 004F9F18    push        4F9F42
 004F9F1D    lea         eax,[ebp-34]
 004F9F20    mov         edx,5
 004F9F25    call        @LStrArrayClr
 004F9F2A    lea         eax,[ebp-20]
 004F9F2D    call        @LStrClr
 004F9F32    lea         eax,[ebp-0C]
 004F9F35    call        @LStrClr
 004F9F3A    ret
>004F9F3B    jmp         @HandleFinally
>004F9F40    jmp         004F9F1D
 004F9F42    pop         ebx
 004F9F43    mov         esp,ebp
 004F9F45    pop         ebp
 004F9F46    ret
*}
end;

//004F9FA8
procedure TfmDefectsEditor.miImportfromINIClick(Sender:TObject);
begin
{*
 004F9FA8    push        ebp
 004F9FA9    mov         ebp,esp
 004F9FAB    mov         ecx,0B
 004F9FB0    push        0
 004F9FB2    push        0
 004F9FB4    dec         ecx
>004F9FB5    jne         004F9FB0
 004F9FB7    mov         dword ptr [ebp-3C],edx
 004F9FBA    mov         dword ptr [ebp-4],eax
 004F9FBD    xor         eax,eax
 004F9FBF    push        ebp
 004F9FC0    push        4FA3FF
 004F9FC5    push        dword ptr fs:[eax]
 004F9FC8    mov         dword ptr fs:[eax],esp
 004F9FCB    mov         eax,dword ptr [ebp-4]
 004F9FCE    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004F9FD4    mov         edx,dword ptr [eax]
 004F9FD6    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004F9FD8    cmp         edx,0
>004F9FDB    jne         004F9FE6
 004F9FDD    cmp         eax,0
>004F9FE0    je          004FA3CF
 004F9FE6    mov         eax,[0056E5A4];^gvar_0056DF04
 004F9FEB    mov         byte ptr [eax],0
 004F9FEE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004F9FF3    mov         eax,dword ptr [eax]
 004F9FF5    mov         eax,dword ptr [eax+35C]
 004F9FFB    mov         dword ptr [ebp-38],eax
 004F9FFE    mov         eax,dword ptr [ebp-38]
 004FA001    add         eax,78
 004FA004    mov         edx,4FA414;'Defects.ini'
 004FA009    call        @LStrAsg
 004FA00E    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FA014    mov         edx,dword ptr [edx]
 004FA016    mov         eax,dword ptr [ebp-38]
 004FA019    call        TOpenDialog.SetInitialDir
 004FA01E    mov         eax,dword ptr [ebp-38]
 004FA021    add         eax,60
 004FA024    mov         edx,4FA428;'ini|*.ini'
 004FA029    call        @LStrAsg
 004FA02E    mov         eax,dword ptr [ebp-38]
 004FA031    mov         edx,dword ptr [eax]
 004FA033    call        dword ptr [edx+3C]
 004FA036    test        al,al
>004FA038    je          004FA3CF
 004FA03E    mov         eax,dword ptr [ebp-4]
 004FA041    add         eax,34C;TfmDefectsEditor.?f34C:?
 004FA046    xor         ecx,ecx
 004FA048    mov         edx,20
 004FA04D    call        @FillChar
 004FA052    mov         eax,dword ptr [ebp-4]
 004FA055    add         eax,36C;TfmDefectsEditor.?f36C:?
 004FA05A    xor         ecx,ecx
 004FA05C    mov         edx,20
 004FA061    call        @FillChar
 004FA066    mov         eax,dword ptr [ebp-4]
 004FA069    xor         edx,edx
 004FA06B    mov         dword ptr [eax+38C],edx;TfmDefectsEditor.?f38C:dword
 004FA071    mov         eax,dword ptr [ebp-4]
 004FA074    xor         edx,edx
 004FA076    mov         dword ptr [eax+390],edx;TfmDefectsEditor.?f390:dword
 004FA07C    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA081    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004FA087    mov         edx,dword ptr [eax]
 004FA089    call        dword ptr [edx+0D8];TCustomListBox.Clear
 004FA08F    mov         dl,1
 004FA091    mov         eax,[0041DB24];TStringList
 004FA096    call        TObject.Create;TStringList.Create
 004FA09B    mov         dword ptr [ebp-2C],eax
 004FA09E    xor         eax,eax
 004FA0A0    push        ebp
 004FA0A1    push        4FA3C8
 004FA0A6    push        dword ptr fs:[eax]
 004FA0A9    mov         dword ptr fs:[eax],esp
 004FA0AC    mov         eax,dword ptr [ebp-2C]
 004FA0AF    call        TStrings.BeginUpdate
 004FA0B4    lea         edx,[ebp-40]
 004FA0B7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FA0BC    mov         eax,dword ptr [eax]
 004FA0BE    mov         eax,dword ptr [eax+35C]
 004FA0C4    call        TOpenDialog.GetFileName
 004FA0C9    mov         edx,dword ptr [ebp-40]
 004FA0CC    mov         eax,dword ptr [ebp-2C]
 004FA0CF    mov         ecx,dword ptr [eax]
 004FA0D1    call        dword ptr [ecx+68];TStringList.sub_004224D8
 004FA0D4    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA0D9    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA0DF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA0E5    call        TListItems.BeginUpdate
 004FA0EA    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA0EF    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA0F5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA0FB    call        TListItems.Clear
 004FA100    mov         eax,dword ptr [ebp-2C]
 004FA103    mov         edx,dword ptr [eax]
 004FA105    call        dword ptr [edx+14];TStringList.sub_00423008
 004FA108    push        eax
 004FA109    xor         ecx,ecx
 004FA10B    mov         edx,4FA43C;'Import Defects List'
 004FA110    mov         eax,[004F7B20];TfmProgres
 004FA115    call        004F7D0C
 004FA11A    mov         dword ptr [ebp-8],1
>004FA121    jmp         004FA302
 004FA126    lea         ecx,[ebp-48]
 004FA129    mov         edx,dword ptr [ebp-8]
 004FA12C    mov         eax,dword ptr [ebp-2C]
 004FA12F    call        0042203C
 004FA134    mov         edx,dword ptr [ebp-48]
 004FA137    lea         ecx,[ebp-44]
 004FA13A    mov         eax,dword ptr [ebp-2C]
 004FA13D    call        0042225C
 004FA142    mov         eax,dword ptr [ebp-44]
 004FA145    lea         edx,[ebp-0C]
 004FA148    call        0040BFEC
 004FA14D    cmp         dword ptr [ebp-0C],0
>004FA151    je          004FA2E4
 004FA157    mov         edx,dword ptr [ebp-0C]
 004FA15A    mov         eax,4FA458;' '
 004FA15F    call        @LStrPos
 004FA164    mov         dword ptr [ebp-34],eax
 004FA167    cmp         dword ptr [ebp-34],0
>004FA16B    je          004FA31D
 004FA171    lea         eax,[ebp-1C]
 004FA174    push        eax
 004FA175    mov         ecx,dword ptr [ebp-34]
 004FA178    dec         ecx
 004FA179    mov         edx,1
 004FA17E    mov         eax,dword ptr [ebp-0C]
 004FA181    call        @LStrCopy
 004FA186    lea         eax,[ebp-10]
 004FA189    push        eax
 004FA18A    mov         eax,dword ptr [ebp-0C]
 004FA18D    call        @LStrLen
 004FA192    mov         ecx,eax
 004FA194    sub         ecx,dword ptr [ebp-34]
 004FA197    mov         edx,dword ptr [ebp-34]
 004FA19A    inc         edx
 004FA19B    mov         eax,dword ptr [ebp-0C]
 004FA19E    call        @LStrCopy
 004FA1A3    mov         edx,dword ptr [ebp-10]
 004FA1A6    mov         eax,4FA458;' '
 004FA1AB    call        @LStrPos
 004FA1B0    mov         dword ptr [ebp-34],eax
 004FA1B3    cmp         dword ptr [ebp-34],0
>004FA1B7    je          004FA31D
 004FA1BD    lea         eax,[ebp-20]
 004FA1C0    push        eax
 004FA1C1    mov         ecx,dword ptr [ebp-34]
 004FA1C4    dec         ecx
 004FA1C5    mov         edx,1
 004FA1CA    mov         eax,dword ptr [ebp-10]
 004FA1CD    call        @LStrCopy
 004FA1D2    lea         eax,[ebp-14]
 004FA1D5    push        eax
 004FA1D6    mov         eax,dword ptr [ebp-10]
 004FA1D9    call        @LStrLen
 004FA1DE    mov         ecx,eax
 004FA1E0    sub         ecx,dword ptr [ebp-34]
 004FA1E3    mov         edx,dword ptr [ebp-34]
 004FA1E6    inc         edx
 004FA1E7    mov         eax,dword ptr [ebp-10]
 004FA1EA    call        @LStrCopy
 004FA1EF    mov         edx,dword ptr [ebp-14]
 004FA1F2    mov         eax,4FA458;' '
 004FA1F7    call        @LStrPos
 004FA1FC    mov         dword ptr [ebp-34],eax
 004FA1FF    cmp         dword ptr [ebp-34],0
>004FA203    jne         004FA21A
 004FA205    lea         eax,[ebp-24]
 004FA208    mov         edx,dword ptr [ebp-14]
 004FA20B    call        @LStrLAsg
 004FA210    lea         eax,[ebp-28]
 004FA213    call        @LStrClr
>004FA218    jmp         004FA257
 004FA21A    lea         eax,[ebp-24]
 004FA21D    push        eax
 004FA21E    mov         ecx,dword ptr [ebp-34]
 004FA221    dec         ecx
 004FA222    mov         edx,1
 004FA227    mov         eax,dword ptr [ebp-14]
 004FA22A    call        @LStrCopy
 004FA22F    lea         eax,[ebp-18]
 004FA232    push        eax
 004FA233    mov         eax,dword ptr [ebp-14]
 004FA236    call        @LStrLen
 004FA23B    mov         ecx,eax
 004FA23D    sub         ecx,dword ptr [ebp-34]
 004FA240    mov         edx,dword ptr [ebp-34]
 004FA243    inc         edx
 004FA244    mov         eax,dword ptr [ebp-14]
 004FA247    call        @LStrCopy
 004FA24C    lea         eax,[ebp-28]
 004FA24F    mov         edx,dword ptr [ebp-18]
 004FA252    call        @LStrLAsg
 004FA257    lea         eax,[ebp-4C]
 004FA25A    mov         ecx,dword ptr [ebp-20]
 004FA25D    mov         edx,4FA464;'$'
 004FA262    call        @LStrCat3
 004FA267    mov         eax,dword ptr [ebp-4C]
 004FA26A    xor         edx,edx
 004FA26C    call        0040C4A8
 004FA271    mov         edx,dword ptr ds:[56D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA277    inc         dword ptr [edx+eax*4+34C]
 004FA27E    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA283    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA289    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA28F    call        0045AE78
 004FA294    mov         dword ptr [ebp-30],eax
 004FA297    xor         edx,edx
 004FA299    mov         eax,dword ptr [ebp-30]
 004FA29C    call        0045A750
 004FA2A1    mov         eax,dword ptr [ebp-30]
 004FA2A4    mov         eax,dword ptr [eax+8]
 004FA2A7    mov         edx,dword ptr [ebp-1C]
 004FA2AA    mov         ecx,dword ptr [eax]
 004FA2AC    call        dword ptr [ecx+38]
 004FA2AF    mov         eax,dword ptr [ebp-30]
 004FA2B2    mov         eax,dword ptr [eax+8]
 004FA2B5    mov         edx,dword ptr [ebp-20]
 004FA2B8    mov         ecx,dword ptr [eax]
 004FA2BA    call        dword ptr [ecx+38]
 004FA2BD    mov         eax,dword ptr [ebp-30]
 004FA2C0    mov         eax,dword ptr [eax+8]
 004FA2C3    mov         edx,dword ptr [ebp-24]
 004FA2C6    mov         ecx,dword ptr [eax]
 004FA2C8    call        dword ptr [ecx+38]
 004FA2CB    mov         eax,dword ptr [ebp-30]
 004FA2CE    mov         eax,dword ptr [eax+8]
 004FA2D1    mov         edx,dword ptr [ebp-28]
 004FA2D4    mov         ecx,dword ptr [eax]
 004FA2D6    call        dword ptr [ecx+38]
 004FA2D9    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA2DE    inc         dword ptr [eax+38C];TfmDefectsEditor.?f38C:dword
 004FA2E4    inc         dword ptr [ebp-8]
 004FA2E7    mov         eax,[0056E3C0];^Application:TApplication
 004FA2EC    mov         eax,dword ptr [eax]
 004FA2EE    call        004AB51C
 004FA2F3    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004FA2F8    mov         eax,dword ptr [eax]
 004FA2FA    mov         edx,dword ptr [ebp-8]
 004FA2FD    call        004F7E2C
 004FA302    mov         eax,dword ptr [ebp-2C]
 004FA305    mov         edx,dword ptr [eax]
 004FA307    call        dword ptr [edx+14];TStringList.sub_00423008
 004FA30A    cmp         eax,dword ptr [ebp-8]
>004FA30D    jle         004FA31D
 004FA30F    mov         eax,[0056E5A4];^gvar_0056DF04
 004FA314    cmp         byte ptr [eax],0
>004FA317    je          004FA126
 004FA31D    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA322    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA328    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA32E    call        TListItems.EndUpdate
 004FA333    call        004F91E8
 004FA338    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA33D    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA343    mov         edx,dword ptr [eax]
 004FA345    call        dword ptr [edx+0C4];TListView.sub_0048C028
 004FA34B    lea         eax,[ebp-50]
 004FA34E    push        eax
 004FA34F    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA354    mov         eax,dword ptr [eax+38C];TfmDefectsEditor.?f38C:dword
 004FA35A    mov         dword ptr [ebp-58],eax
 004FA35D    mov         byte ptr [ebp-54],0
 004FA361    lea         edx,[ebp-58]
 004FA364    xor         ecx,ecx
 004FA366    mov         eax,4FA470;'All: %d'
 004FA36B    call        0040D630
 004FA370    mov         eax,dword ptr [ebp-50]
 004FA373    push        eax
 004FA374    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA379    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004FA37F    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004FA385    xor         edx,edx
 004FA387    call        TStatusPanels.GetItem
 004FA38C    pop         edx
 004FA38D    call        TStatusPanel.SetText
 004FA392    mov         eax,[0056E5A4];^gvar_0056DF04
 004FA397    cmp         byte ptr [eax],0
>004FA39A    jne         004FA3B2
 004FA39C    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004FA3A1    cmp         dword ptr [eax],0
>004FA3A4    je          004FA3B2
 004FA3A6    mov         eax,[0056E004];^gvar_0056D3DC:TfmProgres
 004FA3AB    mov         eax,dword ptr [eax]
 004FA3AD    call        004A7264
 004FA3B2    xor         eax,eax
 004FA3B4    pop         edx
 004FA3B5    pop         ecx
 004FA3B6    pop         ecx
 004FA3B7    mov         dword ptr fs:[eax],edx
 004FA3BA    push        4FA3CF
 004FA3BF    mov         eax,dword ptr [ebp-2C]
 004FA3C2    call        TObject.Free
 004FA3C7    ret
>004FA3C8    jmp         @HandleFinally
>004FA3CD    jmp         004FA3BF
 004FA3CF    xor         eax,eax
 004FA3D1    pop         edx
 004FA3D2    pop         ecx
 004FA3D3    pop         ecx
 004FA3D4    mov         dword ptr fs:[eax],edx
 004FA3D7    push        4FA406
 004FA3DC    lea         eax,[ebp-50]
 004FA3DF    mov         edx,4
 004FA3E4    call        @LStrArrayClr
 004FA3E9    lea         eax,[ebp-40]
 004FA3EC    call        @LStrClr
 004FA3F1    lea         eax,[ebp-28]
 004FA3F4    mov         edx,8
 004FA3F9    call        @LStrArrayClr
 004FA3FE    ret
>004FA3FF    jmp         @HandleFinally
>004FA404    jmp         004FA3DC
 004FA406    mov         esp,ebp
 004FA408    pop         ebp
 004FA409    ret
*}
end;

//004FA478
procedure TfmDefectsEditor.FormDestroy(Sender:TObject);
begin
{*
 004FA478    push        ebp
 004FA479    mov         ebp,esp
 004FA47B    add         esp,0FFFFFFF8
 004FA47E    mov         dword ptr [ebp-8],edx
 004FA481    mov         dword ptr [ebp-4],eax
 004FA484    mov         eax,dword ptr [ebp-4]
 004FA487    mov         eax,dword ptr [eax+348];TfmDefectsEditor.?f348:TMemoryStream
 004FA48D    call        TObject.Free
 004FA492    pop         ecx
 004FA493    pop         ecx
 004FA494    pop         ebp
 004FA495    ret
*}
end;

//004FA498
procedure TfmDefectsEditor.miClearClick(Sender:TObject);
begin
{*
 004FA498    push        ebp
 004FA499    mov         ebp,esp
 004FA49B    add         esp,0FFFFFFEC
 004FA49E    xor         ecx,ecx
 004FA4A0    mov         dword ptr [ebp-0C],ecx
 004FA4A3    mov         dword ptr [ebp-8],edx
 004FA4A6    mov         dword ptr [ebp-4],eax
 004FA4A9    xor         eax,eax
 004FA4AB    push        ebp
 004FA4AC    push        4FA56A
 004FA4B1    push        dword ptr fs:[eax]
 004FA4B4    mov         dword ptr fs:[eax],esp
 004FA4B7    mov         eax,dword ptr [ebp-4]
 004FA4BA    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA4C0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA4C6    call        TListItems.BeginUpdate
 004FA4CB    mov         eax,dword ptr [ebp-4]
 004FA4CE    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA4D4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA4DA    call        TListItems.Clear
 004FA4DF    mov         eax,dword ptr [ebp-4]
 004FA4E2    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA4E8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA4EE    call        TListItems.EndUpdate
 004FA4F3    mov         eax,dword ptr [ebp-4]
 004FA4F6    mov         eax,dword ptr [eax+2F8];TfmDefectsEditor.clHeads:TCheckListBox
 004FA4FC    mov         edx,dword ptr [eax]
 004FA4FE    call        dword ptr [edx+0D8];TCustomListBox.Clear
 004FA504    lea         eax,[ebp-0C]
 004FA507    push        eax
 004FA508    mov         eax,dword ptr [ebp-4]
 004FA50B    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA511    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA517    call        0045AF28
 004FA51C    mov         dword ptr [ebp-14],eax
 004FA51F    mov         byte ptr [ebp-10],0
 004FA523    lea         edx,[ebp-14]
 004FA526    xor         ecx,ecx
 004FA528    mov         eax,4FA580;'Defects: %d'
 004FA52D    call        0040D630
 004FA532    mov         eax,dword ptr [ebp-0C]
 004FA535    push        eax
 004FA536    mov         eax,[0056D3E8];0x0 gvar_0056D3E8:TfmDefectsEditor
 004FA53B    mov         eax,dword ptr [eax+304];TfmDefectsEditor.sbDefects:TStatusBar
 004FA541    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004FA547    xor         edx,edx
 004FA549    call        TStatusPanels.GetItem
 004FA54E    pop         edx
 004FA54F    call        TStatusPanel.SetText
 004FA554    xor         eax,eax
 004FA556    pop         edx
 004FA557    pop         ecx
 004FA558    pop         ecx
 004FA559    mov         dword ptr fs:[eax],edx
 004FA55C    push        4FA571
 004FA561    lea         eax,[ebp-0C]
 004FA564    call        @LStrClr
 004FA569    ret
>004FA56A    jmp         @HandleFinally
>004FA56F    jmp         004FA561
 004FA571    mov         esp,ebp
 004FA573    pop         ebp
 004FA574    ret
*}
end;

//004FA58C
procedure TfmDefectsEditor.miEditClick(Sender:TObject);
begin
{*
 004FA58C    push        ebp
 004FA58D    mov         ebp,esp
 004FA58F    mov         ecx,6
 004FA594    push        0
 004FA596    push        0
 004FA598    dec         ecx
>004FA599    jne         004FA594
 004FA59B    push        ebx
 004FA59C    mov         dword ptr [ebp-20],edx
 004FA59F    mov         dword ptr [ebp-4],eax
 004FA5A2    xor         eax,eax
 004FA5A4    push        ebp
 004FA5A5    push        4FA8C1
 004FA5AA    push        dword ptr fs:[eax]
 004FA5AD    mov         dword ptr fs:[eax],esp
 004FA5B0    mov         eax,dword ptr [ebp-4]
 004FA5B3    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA5B9    mov         edx,dword ptr [eax]
 004FA5BB    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 004FA5C1    mov         dword ptr [ebp-8],eax
 004FA5C4    cmp         dword ptr [ebp-8],0FFFFFFFF
>004FA5C8    jle         004FA899
 004FA5CE    mov         eax,dword ptr [ebp-4]
 004FA5D1    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA5D7    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA5DD    mov         edx,dword ptr [ebp-8]
 004FA5E0    call        0045AF80
 004FA5E5    mov         eax,dword ptr [eax+8]
 004FA5E8    lea         ecx,[ebp-24]
 004FA5EB    xor         edx,edx
 004FA5ED    mov         ebx,dword ptr [eax]
 004FA5EF    call        dword ptr [ebx+0C]
 004FA5F2    push        dword ptr [ebp-24]
 004FA5F5    push        4FA8D8;' '
 004FA5FA    mov         eax,dword ptr [ebp-4]
 004FA5FD    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA603    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA609    mov         edx,dword ptr [ebp-8]
 004FA60C    call        0045AF80
 004FA611    mov         eax,dword ptr [eax+8]
 004FA614    lea         ecx,[ebp-28]
 004FA617    mov         edx,1
 004FA61C    mov         ebx,dword ptr [eax]
 004FA61E    call        dword ptr [ebx+0C]
 004FA621    push        dword ptr [ebp-28]
 004FA624    push        4FA8D8;' '
 004FA629    mov         eax,dword ptr [ebp-4]
 004FA62C    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA632    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA638    mov         edx,dword ptr [ebp-8]
 004FA63B    call        0045AF80
 004FA640    mov         eax,dword ptr [eax+8]
 004FA643    lea         ecx,[ebp-2C]
 004FA646    mov         edx,2
 004FA64B    mov         ebx,dword ptr [eax]
 004FA64D    call        dword ptr [ebx+0C]
 004FA650    push        dword ptr [ebp-2C]
 004FA653    push        4FA8D8;' '
 004FA658    mov         eax,dword ptr [ebp-4]
 004FA65B    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA661    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA667    mov         edx,dword ptr [ebp-8]
 004FA66A    call        0045AF80
 004FA66F    mov         eax,dword ptr [eax+8]
 004FA672    lea         ecx,[ebp-30]
 004FA675    mov         edx,3
 004FA67A    mov         ebx,dword ptr [eax]
 004FA67C    call        dword ptr [ebx+0C]
 004FA67F    push        dword ptr [ebp-30]
 004FA682    lea         eax,[ebp-0C]
 004FA685    mov         edx,7
 004FA68A    call        @LStrCatN
 004FA68F    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 004FA694    cmp         dword ptr [eax],0
>004FA697    jne         004FA6B5
 004FA699    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 004FA69F    mov         ecx,dword ptr [ecx]
 004FA6A1    mov         dl,1
 004FA6A3    mov         eax,[004F7EE0];TfmString
 004FA6A8    call        TfmProgress.Create;TfmString.Create
 004FA6AD    mov         edx,dword ptr ds:[56E4BC];^gvar_00572650:TfmString
 004FA6B3    mov         dword ptr [edx],eax
 004FA6B5    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 004FA6BA    mov         eax,dword ptr [eax]
 004FA6BC    mov         edx,4FA8E4;'Edit Record'
 004FA6C1    call        TPanel.SetCaption
 004FA6C6    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 004FA6CB    mov         eax,dword ptr [eax]
 004FA6CD    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 004FA6D3    mov         edx,dword ptr [ebp-0C]
 004FA6D6    call        TPanel.SetCaption
 004FA6DB    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 004FA6E0    mov         eax,dword ptr [eax]
 004FA6E2    mov         edx,dword ptr [eax]
 004FA6E4    call        dword ptr [edx+0EC]
 004FA6EA    dec         eax
>004FA6EB    jne         004FA899
 004FA6F1    lea         edx,[ebp-0C]
 004FA6F4    mov         eax,[0056E4BC];^gvar_00572650:TfmString
 004FA6F9    mov         eax,dword ptr [eax]
 004FA6FB    mov         eax,dword ptr [eax+2F8];TfmString.edString:TLabeledEdit
 004FA701    call        TPanel.GetCaption
 004FA706    mov         edx,dword ptr [ebp-0C]
 004FA709    mov         eax,4FA8D8;' '
 004FA70E    call        @LStrPos
 004FA713    mov         dword ptr [ebp-1C],eax
 004FA716    cmp         dword ptr [ebp-1C],0
>004FA71A    je          004FA899
 004FA720    lea         eax,[ebp-10]
 004FA723    push        eax
 004FA724    mov         ecx,dword ptr [ebp-1C]
 004FA727    dec         ecx
 004FA728    mov         edx,1
 004FA72D    mov         eax,dword ptr [ebp-0C]
 004FA730    call        @LStrCopy
 004FA735    lea         eax,[ebp-14]
 004FA738    push        eax
 004FA739    mov         eax,dword ptr [ebp-0C]
 004FA73C    call        @LStrLen
 004FA741    mov         ecx,eax
 004FA743    sub         ecx,dword ptr [ebp-1C]
 004FA746    mov         edx,dword ptr [ebp-1C]
 004FA749    inc         edx
 004FA74A    mov         eax,dword ptr [ebp-0C]
 004FA74D    call        @LStrCopy
 004FA752    lea         edx,[ebp-18]
 004FA755    mov         eax,dword ptr [ebp-14]
 004FA758    call        0040BFEC
 004FA75D    mov         eax,dword ptr [ebp-4]
 004FA760    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA766    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA76C    mov         edx,dword ptr [ebp-8]
 004FA76F    call        0045AF80
 004FA774    mov         eax,dword ptr [eax+8]
 004FA777    mov         ecx,dword ptr [ebp-10]
 004FA77A    xor         edx,edx
 004FA77C    mov         ebx,dword ptr [eax]
 004FA77E    call        dword ptr [ebx+20]
 004FA781    mov         edx,dword ptr [ebp-14]
 004FA784    mov         eax,4FA8D8;' '
 004FA789    call        @LStrPos
 004FA78E    mov         dword ptr [ebp-1C],eax
 004FA791    cmp         dword ptr [ebp-1C],0
>004FA795    je          004FA899
 004FA79B    lea         eax,[ebp-18]
 004FA79E    push        eax
 004FA79F    mov         ecx,dword ptr [ebp-1C]
 004FA7A2    dec         ecx
 004FA7A3    mov         edx,1
 004FA7A8    mov         eax,dword ptr [ebp-14]
 004FA7AB    call        @LStrCopy
 004FA7B0    lea         eax,[ebp-10]
 004FA7B3    push        eax
 004FA7B4    mov         eax,dword ptr [ebp-14]
 004FA7B7    call        @LStrLen
 004FA7BC    mov         ecx,eax
 004FA7BE    sub         ecx,dword ptr [ebp-1C]
 004FA7C1    mov         edx,dword ptr [ebp-1C]
 004FA7C4    inc         edx
 004FA7C5    mov         eax,dword ptr [ebp-14]
 004FA7C8    call        @LStrCopy
 004FA7CD    mov         eax,dword ptr [ebp-4]
 004FA7D0    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA7D6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA7DC    mov         edx,dword ptr [ebp-8]
 004FA7DF    call        0045AF80
 004FA7E4    mov         eax,dword ptr [eax+8]
 004FA7E7    mov         ecx,dword ptr [ebp-18]
 004FA7EA    mov         edx,1
 004FA7EF    mov         ebx,dword ptr [eax]
 004FA7F1    call        dword ptr [ebx+20]
 004FA7F4    mov         edx,dword ptr [ebp-10]
 004FA7F7    mov         eax,4FA8D8;' '
 004FA7FC    call        @LStrPos
 004FA801    mov         dword ptr [ebp-1C],eax
 004FA804    cmp         dword ptr [ebp-1C],0
>004FA808    je          004FA899
 004FA80E    lea         eax,[ebp-18]
 004FA811    push        eax
 004FA812    mov         ecx,dword ptr [ebp-1C]
 004FA815    dec         ecx
 004FA816    mov         edx,1
 004FA81B    mov         eax,dword ptr [ebp-10]
 004FA81E    call        @LStrCopy
 004FA823    lea         eax,[ebp-14]
 004FA826    push        eax
 004FA827    mov         eax,dword ptr [ebp-10]
 004FA82A    call        @LStrLen
 004FA82F    mov         ecx,eax
 004FA831    sub         ecx,dword ptr [ebp-1C]
 004FA834    mov         edx,dword ptr [ebp-1C]
 004FA837    inc         edx
 004FA838    mov         eax,dword ptr [ebp-10]
 004FA83B    call        @LStrCopy
 004FA840    mov         eax,dword ptr [ebp-4]
 004FA843    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA849    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA84F    mov         edx,dword ptr [ebp-8]
 004FA852    call        0045AF80
 004FA857    mov         eax,dword ptr [eax+8]
 004FA85A    mov         ecx,dword ptr [ebp-18]
 004FA85D    mov         edx,2
 004FA862    mov         ebx,dword ptr [eax]
 004FA864    call        dword ptr [ebx+20]
 004FA867    lea         edx,[ebp-18]
 004FA86A    mov         eax,dword ptr [ebp-14]
 004FA86D    call        0040BFEC
 004FA872    mov         eax,dword ptr [ebp-4]
 004FA875    mov         eax,dword ptr [eax+300];TfmDefectsEditor.lvDefects:TListView
 004FA87B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004FA881    mov         edx,dword ptr [ebp-8]
 004FA884    call        0045AF80
 004FA889    mov         eax,dword ptr [eax+8]
 004FA88C    mov         ecx,dword ptr [ebp-18]
 004FA88F    mov         edx,3
 004FA894    mov         ebx,dword ptr [eax]
 004FA896    call        dword ptr [ebx+20]
 004FA899    xor         eax,eax
 004FA89B    pop         edx
 004FA89C    pop         ecx
 004FA89D    pop         ecx
 004FA89E    mov         dword ptr fs:[eax],edx
 004FA8A1    push        4FA8C8
 004FA8A6    lea         eax,[ebp-30]
 004FA8A9    mov         edx,4
 004FA8AE    call        @LStrArrayClr
 004FA8B3    lea         eax,[ebp-18]
 004FA8B6    mov         edx,4
 004FA8BB    call        @LStrArrayClr
 004FA8C0    ret
>004FA8C1    jmp         @HandleFinally
>004FA8C6    jmp         004FA8A6
 004FA8C8    pop         ebx
 004FA8C9    mov         esp,ebp
 004FA8CB    pop         ebp
 004FA8CC    ret
*}
end;

end.