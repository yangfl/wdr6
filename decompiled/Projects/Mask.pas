//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Mask;

interface

uses
  SysUtils, Classes;

type
  EDBEditError = class(Exception)
  end;
  TCustomMaskEdit = class(TCustomEdit)
  public
    FEditMask:TEditMask;//f220
    FMaskBlank:Char;//f224
    FMaxChars:Integer;//f228
    FMaskSave:Boolean;//f22C
    FMaskState:TMaskedState;//f22D
    FCaretPos:Integer;//f230
    FBtnDownX:Integer;//f234
    FOldValue:String;//f238
    FSettingCursor:Boolean;//f23C
    constructor v2C; virtual;//v2C//004D4520
    procedure vE0; virtual;//vE0//004D51A8
    //function vE8:?; virtual;//vE8//004D51BC
    procedure vEC; virtual;//vEC//004D51D0
    //function vF0(?:?; ?:?):?; virtual;//vF0//004D63C8
    procedure vF4; virtual;//vF4//004D5BE4
    procedure vF8; virtual;//vF8//004D5B38
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//004D4808
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004D476C
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//004D4798
    //procedure WMCut(?:?); message WM_CUT;//004D4AE8
    //procedure WMPaste(?:?); message WM_PASTE;//004D4B28
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004D5A08
    //procedure CMEnter(?:?); message CM_ENTER;//004D5960
    //procedure CMExit(?:?); message CM_EXIT;//004D5AF4
    //procedure CMWantSpecialKey(?:?); message CM_WANTSPECIALKEY;//004D5AAC
    //procedure sub_0048AAD0(?:?); dynamic;//004D4718
    //procedure sub_0048A9B4(?:?; ?:?); dynamic;//004D46B4
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//004D458C
  end;
    constructor sub_004D4520;//004D4520
    procedure KeyDown(var Key:Word; Shift:TShiftState);//004D458C
    //procedure sub_0048A9B4(?:?; ?:?);//004D46B4
    //procedure sub_0048AAD0(?:?);//004D4718
    //procedure WMLButtonDown(?:?);//004D476C
    //procedure WMLButtonUp(?:?);//004D4798
    //procedure WMSetFocus(?:?);//004D4808
    procedure sub_004D4838(?:TCustomMaskEdit; ?:AnsiString);//004D4838
    //procedure sub_004D48AC(?:TCustomMaskEdit; ?:?);//004D48AC
    //function sub_004D48C8(?:TInplaceEdit):?;//004D48C8
    //procedure sub_004D4920(?:?; ?:?);//004D4920
    //procedure sub_004D49C4(?:TCustomMaskEdit; ?:?);//004D49C4
    //procedure WMCut(?:?);//004D4AE8
    //procedure WMPaste(?:?);//004D4B28
    //function sub_004D4C20(?:TCustomMaskEdit):?;//004D4C20
    //procedure sub_004D4C40(?:?; ?:?);//004D4C40
    //procedure sub_004D4D18(?:TInplaceEdit; ?:?);//004D4D18
    //function sub_004D4E10(?:?):?;//004D4E10
    //procedure sub_004D4E2C(?:TInplaceEdit; ?:?);//004D4E2C
    //procedure sub_004D4E68(?:TCustomMaskEdit; ?:?; ?:?);//004D4E68
    procedure sub_004D4E98(?:TCustomMaskEdit; ?:Integer; ?:Integer);//004D4E98
    //procedure sub_004D4EC8(?:TCustomMaskEdit; ?:?);//004D4EC8
    procedure sub_004D5160(?:TCustomMaskEdit);//004D5160
    procedure sub_004D51A8;//004D51A8
    //function sub_004D51BC:?;//004D51BC
    procedure sub_004D51D0;//004D51D0
    //function sub_004D5204(?:TCustomMaskEdit; ?:?):?;//004D5204
    //procedure sub_004D5400(?:?; ?:?; ?:?);//004D5400
    //procedure sub_004D562C(?:TCustomMaskEdit; ?:?; ?:?);//004D562C
    //procedure sub_004D567C(?:TCustomMaskEdit; ?:?);//004D567C
    //function sub_004D56B0(?:TCustomMaskEdit; ?:?):?;//004D56B0
    //function sub_004D56F4(?:?; ?:?):?;//004D56F4
    //procedure sub_004D5744(?:?; ?:?; ?:?);//004D5744
    //procedure sub_004D5824(?:TCustomMaskEdit; ?:?);//004D5824
    //procedure CMEnter(?:?);//004D5960
    //procedure CMTextChanged(?:?);//004D5A08
    //procedure CMWantSpecialKey(?:?);//004D5AAC
    //procedure CMExit(?:?);//004D5AF4
    procedure sub_004D5B38;//004D5B38
    procedure sub_004D5BE4;//004D5BE4
    //procedure sub_004D5C28(?:?; ?:AnsiString; ?:?; ?:?);//004D5C28
    //procedure sub_004D5C7C(?:?; ?:?; ?:?);//004D5C7C
    //function sub_004D5EB0(?:TCustomMaskEdit; ?:?; ?:?):?;//004D5EB0
    //function sub_004D5F7C(?:?):?;//004D5F7C
    //function sub_004D5FA8(?:?; ?:?):?;//004D5FA8
    //function sub_004D60A4(?:TCustomMaskEdit; ?:?; ?:?):?;//004D60A4
    //function sub_004D63C8(?:?; ?:?):?;//004D63C8
    //function sub_004D648C(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;//004D648C
    //function sub_004D6550(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;//004D6550
    //function sub_004D6878(?:TCustomMaskEdit; ?:?; ?:?):?;//004D6878

implementation

//004D4520
constructor sub_004D4520;
begin
{*
 004D4520    push        ebp
 004D4521    mov         ebp,esp
 004D4523    add         esp,0FFFFFFF4
 004D4526    test        dl,dl
>004D4528    je          004D4532
 004D452A    add         esp,0FFFFFFF0
 004D452D    call        @ClassCreate
 004D4532    mov         dword ptr [ebp-0C],ecx
 004D4535    mov         byte ptr [ebp-5],dl
 004D4538    mov         dword ptr [ebp-4],eax
 004D453B    mov         ecx,dword ptr [ebp-0C]
 004D453E    xor         edx,edx
 004D4540    mov         eax,dword ptr [ebp-4]
 004D4543    call        00473DC0
 004D4548    mov         eax,dword ptr [ebp-4]
 004D454B    mov         dl,byte ptr ds:[4D4588];0x0 gvar_004D4588
 004D4551    mov         byte ptr [eax+22D],dl;TCustomMaskEdit.FMaskState:TMaskedState
 004D4557    mov         eax,[0056E608];^gvar_0056CC44
 004D455C    mov         al,byte ptr [eax]
 004D455E    mov         edx,dword ptr [ebp-4]
 004D4561    mov         byte ptr [edx+224],al;TCustomMaskEdit.FMaskBlank:Char
 004D4567    mov         eax,dword ptr [ebp-4]
 004D456A    cmp         byte ptr [ebp-5],0
>004D456E    je          004D457F
 004D4570    call        @AfterConstruction
 004D4575    pop         dword ptr fs:[0]
 004D457C    add         esp,0C
 004D457F    mov         eax,dword ptr [ebp-4]
 004D4582    mov         esp,ebp
 004D4584    pop         ebp
 004D4585    ret
*}
end;

//004D458C
procedure TCustomMaskEdit.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 004D458C    push        ebp
 004D458D    mov         ebp,esp
 004D458F    add         esp,0FFFFFFF4
 004D4592    mov         byte ptr [ebp-9],cl
 004D4595    mov         dword ptr [ebp-8],edx
 004D4598    mov         dword ptr [ebp-4],eax
 004D459B    mov         eax,dword ptr [ebp-4]
 004D459E    cmp         byte ptr [eax+23C],0
>004D45A5    jne         004D45B5
 004D45A7    mov         edx,dword ptr [ebp-8]
 004D45AA    mov         cl,byte ptr [ebp-9]
 004D45AD    mov         eax,dword ptr [ebp-4]
 004D45B0    call        TWinControl.sub_0048A878
 004D45B5    mov         eax,dword ptr [ebp-4]
 004D45B8    call        004D4C20
 004D45BD    test        al,al
>004D45BF    je          004D46B0
 004D45C5    mov         eax,dword ptr [ebp-8]
 004D45C8    cmp         word ptr [eax],0
>004D45CC    je          004D46B0
 004D45D2    test        byte ptr [ebp-9],2
>004D45D6    jne         004D46B0
 004D45DC    mov         eax,dword ptr [ebp-8]
 004D45DF    cmp         word ptr [eax],25
>004D45E3    je          004D45EE
 004D45E5    mov         eax,dword ptr [ebp-8]
 004D45E8    cmp         word ptr [eax],27
>004D45EC    jne         004D4620
 004D45EE    mov         edx,dword ptr [ebp-8]
 004D45F1    mov         dx,word ptr [edx]
 004D45F4    mov         cl,byte ptr [ebp-9]
 004D45F7    mov         eax,dword ptr [ebp-4]
 004D45FA    call        004D5400
 004D45FF    test        byte ptr [ebp-9],1
>004D4603    jne         004D46B0
 004D4609    test        byte ptr [ebp-9],4
>004D460D    jne         004D46B0
 004D4613    mov         eax,dword ptr [ebp-8]
 004D4616    mov         word ptr [eax],0
>004D461B    jmp         004D46B0
 004D4620    mov         eax,dword ptr [ebp-8]
 004D4623    cmp         word ptr [eax],26
>004D4627    je          004D4632
 004D4629    mov         eax,dword ptr [ebp-8]
 004D462C    cmp         word ptr [eax],28
>004D4630    jne         004D463C
 004D4632    mov         eax,dword ptr [ebp-8]
 004D4635    mov         word ptr [eax],0
>004D463A    jmp         004D46B0
 004D463C    mov         eax,dword ptr [ebp-8]
 004D463F    cmp         word ptr [eax],24
>004D4643    je          004D464E
 004D4645    mov         eax,dword ptr [ebp-8]
 004D4648    cmp         word ptr [eax],23
>004D464C    jne         004D4669
 004D464E    mov         edx,dword ptr [ebp-8]
 004D4651    mov         dx,word ptr [edx]
 004D4654    mov         cl,byte ptr [ebp-9]
 004D4657    mov         eax,dword ptr [ebp-4]
 004D465A    call        004D5744
 004D465F    mov         eax,dword ptr [ebp-8]
 004D4662    mov         word ptr [eax],0
>004D4667    jmp         004D46B0
 004D4669    mov         eax,dword ptr [ebp-8]
 004D466C    cmp         word ptr [eax],2E
>004D4670    jne         004D4678
 004D4672    test        byte ptr [ebp-9],1
>004D4676    je          004D4681
 004D4678    mov         eax,dword ptr [ebp-8]
 004D467B    cmp         word ptr [eax],8
>004D467F    jne         004D46A8
 004D4681    mov         eax,dword ptr [ebp-4]
 004D4684    mov         edx,dword ptr [eax]
 004D4686    call        dword ptr [edx+0E8]
 004D468C    test        al,al
>004D468E    je          004D469E
 004D4690    mov         edx,dword ptr [ebp-8]
 004D4693    mov         dx,word ptr [edx]
 004D4696    mov         eax,dword ptr [ebp-4]
 004D4699    call        004D5824
 004D469E    mov         eax,dword ptr [ebp-8]
 004D46A1    mov         word ptr [eax],0
>004D46A6    jmp         004D46B0
 004D46A8    mov         eax,dword ptr [ebp-4]
 004D46AB    call        004D5160
 004D46B0    mov         esp,ebp
 004D46B2    pop         ebp
 004D46B3    ret
*}
end;

//004D46B4
{*procedure TCustomMaskEdit.sub_0048A9B4(?:?; ?:?);
begin
 004D46B4    push        ebp
 004D46B5    mov         ebp,esp
 004D46B7    add         esp,0FFFFFFF4
 004D46BA    mov         byte ptr [ebp-9],cl
 004D46BD    mov         dword ptr [ebp-8],edx
 004D46C0    mov         dword ptr [ebp-4],eax
 004D46C3    mov         eax,dword ptr [ebp-4]
 004D46C6    cmp         byte ptr [eax+23C],0;TCustomMaskEdit.FSettingCursor:Boolean
>004D46CD    jne         004D46DD
 004D46CF    mov         edx,dword ptr [ebp-8]
 004D46D2    mov         cl,byte ptr [ebp-9]
 004D46D5    mov         eax,dword ptr [ebp-4]
 004D46D8    call        TWinControl.sub_0048A9B4
 004D46DD    mov         eax,dword ptr [ebp-4]
 004D46E0    call        004D4C20
 004D46E5    test        al,al
>004D46E7    je          004D4712
 004D46E9    mov         eax,dword ptr [ebp-8]
 004D46EC    cmp         word ptr [eax],0
>004D46F0    je          004D4712
 004D46F2    mov         eax,dword ptr [ebp-8]
 004D46F5    cmp         word ptr [eax],25
>004D46F9    je          004D4704
 004D46FB    mov         eax,dword ptr [ebp-8]
 004D46FE    cmp         word ptr [eax],27
>004D4702    jne         004D4712
 004D4704    test        byte ptr [ebp-9],4
>004D4708    je          004D4712
 004D470A    mov         eax,dword ptr [ebp-4]
 004D470D    call        004D5160
 004D4712    mov         esp,ebp
 004D4714    pop         ebp
 004D4715    ret
end;*}

//004D4718
{*procedure TCustomMaskEdit.sub_0048AAD0(?:?);
begin
 004D4718    push        ebp
 004D4719    mov         ebp,esp
 004D471B    add         esp,0FFFFFFF8
 004D471E    mov         dword ptr [ebp-8],edx
 004D4721    mov         dword ptr [ebp-4],eax
 004D4724    mov         edx,dword ptr [ebp-8]
 004D4727    mov         eax,dword ptr [ebp-4]
 004D472A    call        TWinControl.sub_0048AAD0
 004D472F    mov         eax,dword ptr [ebp-4]
 004D4732    call        004D4C20
 004D4737    test        al,al
>004D4739    je          004D4765
 004D473B    mov         eax,dword ptr [ebp-8]
 004D473E    cmp         byte ptr [eax],0
>004D4741    je          004D4765
 004D4743    mov         eax,dword ptr [ebp-8]
 004D4746    mov         al,byte ptr [eax]
 004D4748    sub         al,3
>004D474A    je          004D4765
 004D474C    sub         al,13
>004D474E    je          004D4765
 004D4750    sub         al,2
>004D4752    je          004D4765
 004D4754    mov         edx,dword ptr [ebp-8]
 004D4757    mov         eax,dword ptr [ebp-4]
 004D475A    call        004D5204
 004D475F    mov         eax,dword ptr [ebp-8]
 004D4762    mov         byte ptr [eax],0
 004D4765    pop         ecx
 004D4766    pop         ecx
 004D4767    pop         ebp
 004D4768    ret
end;*}

//004D476C
{*procedure TCustomMaskEdit.WMLButtonDown(?:?);
begin
 004D476C    push        ebp
 004D476D    mov         ebp,esp
 004D476F    add         esp,0FFFFFFF8
 004D4772    mov         dword ptr [ebp-8],edx
 004D4775    mov         dword ptr [ebp-4],eax
 004D4778    mov         edx,dword ptr [ebp-8]
 004D477B    mov         eax,dword ptr [ebp-4]
 004D477E    call        TControl.WMLButtonDown
 004D4783    mov         eax,dword ptr [ebp-8]
 004D4786    movsx       eax,word ptr [eax+8]
 004D478A    mov         edx,dword ptr [ebp-4]
 004D478D    mov         dword ptr [edx+234],eax;TCustomMaskEdit.FBtnDownX:Integer
 004D4793    pop         ecx
 004D4794    pop         ecx
 004D4795    pop         ebp
 004D4796    ret
end;*}

//004D4798
{*procedure TCustomMaskEdit.WMLButtonUp(?:?);
begin
 004D4798    push        ebp
 004D4799    mov         ebp,esp
 004D479B    add         esp,0FFFFFFF0
 004D479E    mov         dword ptr [ebp-8],edx
 004D47A1    mov         dword ptr [ebp-4],eax
 004D47A4    mov         edx,dword ptr [ebp-8]
 004D47A7    mov         eax,dword ptr [ebp-4]
 004D47AA    call        TControl.WMLButtonUp
 004D47AF    mov         eax,dword ptr [ebp-4]
 004D47B2    call        004D4C20
 004D47B7    test        al,al
>004D47B9    je          004D4803
 004D47BB    lea         ecx,[ebp-10]
 004D47BE    lea         edx,[ebp-0C]
 004D47C1    mov         eax,dword ptr [ebp-4]
 004D47C4    call        004D4E68
 004D47C9    mov         eax,dword ptr [ebp-0C]
 004D47CC    mov         edx,dword ptr [ebp-4]
 004D47CF    mov         dword ptr [edx+230],eax;TCustomMaskEdit.FCaretPos:Integer
 004D47D5    mov         eax,dword ptr [ebp-0C]
 004D47D8    cmp         eax,dword ptr [ebp-10]
>004D47DB    je          004D47FB
 004D47DD    mov         eax,dword ptr [ebp-8]
 004D47E0    movsx       eax,word ptr [eax+8]
 004D47E4    mov         edx,dword ptr [ebp-4]
 004D47E7    cmp         eax,dword ptr [edx+234];TCustomMaskEdit.FBtnDownX:Integer
>004D47ED    jle         004D47FB
 004D47EF    mov         eax,dword ptr [ebp-10]
 004D47F2    mov         edx,dword ptr [ebp-4]
 004D47F5    mov         dword ptr [edx+230],eax;TCustomMaskEdit.FCaretPos:Integer
 004D47FB    mov         eax,dword ptr [ebp-4]
 004D47FE    call        004D5160
 004D4803    mov         esp,ebp
 004D4805    pop         ebp
 004D4806    ret
end;*}

//004D4808
{*procedure TCustomMaskEdit.WMSetFocus(?:?);
begin
 004D4808    push        ebp
 004D4809    mov         ebp,esp
 004D480B    add         esp,0FFFFFFF8
 004D480E    mov         dword ptr [ebp-8],edx
 004D4811    mov         dword ptr [ebp-4],eax
 004D4814    mov         edx,dword ptr [ebp-8]
 004D4817    mov         eax,dword ptr [ebp-4]
 004D481A    call        TWinControl.WMSetFocus
 004D481F    mov         eax,dword ptr [ebp-4]
 004D4822    call        004D4C20
 004D4827    test        al,al
>004D4829    je          004D4833
 004D482B    mov         eax,dword ptr [ebp-4]
 004D482E    call        004D5160
 004D4833    pop         ecx
 004D4834    pop         ecx
 004D4835    pop         ebp
 004D4836    ret
end;*}

//004D4838
procedure sub_004D4838(?:TCustomMaskEdit; ?:AnsiString);
begin
{*
 004D4838    push        ebp
 004D4839    mov         ebp,esp
 004D483B    add         esp,0FFFFFFF4
 004D483E    xor         ecx,ecx
 004D4840    mov         dword ptr [ebp-0C],ecx
 004D4843    mov         dword ptr [ebp-8],edx
 004D4846    mov         dword ptr [ebp-4],eax
 004D4849    xor         eax,eax
 004D484B    push        ebp
 004D484C    push        4D489F
 004D4851    push        dword ptr fs:[eax]
 004D4854    mov         dword ptr fs:[eax],esp
 004D4857    lea         edx,[ebp-0C]
 004D485A    mov         eax,dword ptr [ebp-4]
 004D485D    call        004D48AC
 004D4862    mov         eax,dword ptr [ebp-0C]
 004D4865    mov         edx,dword ptr [ebp-8]
 004D4868    call        @LStrCmp
>004D486D    je          004D4889
 004D486F    mov         eax,dword ptr [ebp-8]
 004D4872    call        @LStrToPChar
 004D4877    mov         edx,eax
 004D4879    mov         eax,dword ptr [ebp-4]
 004D487C    call        00483788
 004D4881    mov         eax,dword ptr [ebp-4]
 004D4884    call        004D5160
 004D4889    xor         eax,eax
 004D488B    pop         edx
 004D488C    pop         ecx
 004D488D    pop         ecx
 004D488E    mov         dword ptr fs:[eax],edx
 004D4891    push        4D48A6
 004D4896    lea         eax,[ebp-0C]
 004D4899    call        @LStrClr
 004D489E    ret
>004D489F    jmp         @HandleFinally
>004D48A4    jmp         004D4896
 004D48A6    mov         esp,ebp
 004D48A8    pop         ebp
 004D48A9    ret
*}
end;

//004D48AC
{*procedure sub_004D48AC(?:TCustomMaskEdit; ?:?);
begin
 004D48AC    push        ebp
 004D48AD    mov         ebp,esp
 004D48AF    add         esp,0FFFFFFF8
 004D48B2    mov         dword ptr [ebp-8],edx
 004D48B5    mov         dword ptr [ebp-4],eax
 004D48B8    mov         edx,dword ptr [ebp-8]
 004D48BB    mov         eax,dword ptr [ebp-4]
 004D48BE    call        TPanel.GetCaption
 004D48C3    pop         ecx
 004D48C4    pop         ecx
 004D48C5    pop         ebp
 004D48C6    ret
end;*}

//004D48C8
{*function sub_004D48C8(?:TInplaceEdit):?;
begin
 004D48C8    push        ebp
 004D48C9    mov         ebp,esp
 004D48CB    add         esp,0FFFFFFF4
 004D48CE    xor         edx,edx
 004D48D0    mov         dword ptr [ebp-0C],edx
 004D48D3    mov         dword ptr [ebp-4],eax
 004D48D6    xor         eax,eax
 004D48D8    push        ebp
 004D48D9    push        4D4910
 004D48DE    push        dword ptr fs:[eax]
 004D48E1    mov         dword ptr fs:[eax],esp
 004D48E4    lea         edx,[ebp-0C]
 004D48E7    mov         eax,dword ptr [ebp-4]
 004D48EA    call        004D4920
 004D48EF    mov         eax,dword ptr [ebp-0C]
 004D48F2    call        @LStrLen
 004D48F7    mov         dword ptr [ebp-8],eax
 004D48FA    xor         eax,eax
 004D48FC    pop         edx
 004D48FD    pop         ecx
 004D48FE    pop         ecx
 004D48FF    mov         dword ptr fs:[eax],edx
 004D4902    push        4D4917
 004D4907    lea         eax,[ebp-0C]
 004D490A    call        @LStrClr
 004D490F    ret
>004D4910    jmp         @HandleFinally
>004D4915    jmp         004D4907
 004D4917    mov         eax,dword ptr [ebp-8]
 004D491A    mov         esp,ebp
 004D491C    pop         ebp
 004D491D    ret
end;*}

//004D4920
{*procedure sub_004D4920(?:?; ?:?);
begin
 004D4920    push        ebp
 004D4921    mov         ebp,esp
 004D4923    add         esp,0FFFFFFF0
 004D4926    xor         ecx,ecx
 004D4928    mov         dword ptr [ebp-10],ecx
 004D492B    mov         dword ptr [ebp-0C],ecx
 004D492E    mov         dword ptr [ebp-8],edx
 004D4931    mov         dword ptr [ebp-4],eax
 004D4934    xor         eax,eax
 004D4936    push        ebp
 004D4937    push        4D49B9
 004D493C    push        dword ptr fs:[eax]
 004D493F    mov         dword ptr fs:[eax],esp
 004D4942    mov         eax,dword ptr [ebp-4]
 004D4945    call        004D4C20
 004D494A    test        al,al
>004D494C    jne         004D495B
 004D494E    mov         edx,dword ptr [ebp-8]
 004D4951    mov         eax,dword ptr [ebp-4]
 004D4954    call        TPanel.GetCaption
>004D4959    jmp         004D499E
 004D495B    lea         edx,[ebp-0C]
 004D495E    mov         eax,dword ptr [ebp-4]
 004D4961    call        004D48AC
 004D4966    mov         edx,dword ptr [ebp-0C]
 004D4969    mov         ecx,dword ptr [ebp-8]
 004D496C    mov         eax,dword ptr [ebp-4]
 004D496F    call        004D5C7C
 004D4974    mov         eax,dword ptr [ebp-4]
 004D4977    cmp         byte ptr [eax+22C],0
>004D497E    je          004D499E
 004D4980    lea         eax,[ebp-10]
 004D4983    push        eax
 004D4984    mov         edx,dword ptr [ebp-8]
 004D4987    mov         edx,dword ptr [edx]
 004D4989    xor         ecx,ecx
 004D498B    mov         eax,dword ptr [ebp-4]
 004D498E    call        004D5C28
 004D4993    mov         edx,dword ptr [ebp-10]
 004D4996    mov         eax,dword ptr [ebp-8]
 004D4999    call        @LStrAsg
 004D499E    xor         eax,eax
 004D49A0    pop         edx
 004D49A1    pop         ecx
 004D49A2    pop         ecx
 004D49A3    mov         dword ptr fs:[eax],edx
 004D49A6    push        4D49C0
 004D49AB    lea         eax,[ebp-10]
 004D49AE    mov         edx,2
 004D49B3    call        @LStrArrayClr
 004D49B8    ret
>004D49B9    jmp         @HandleFinally
>004D49BE    jmp         004D49AB
 004D49C0    mov         esp,ebp
 004D49C2    pop         ebp
 004D49C3    ret
end;*}

//004D49C4
{*procedure sub_004D49C4(?:TCustomMaskEdit; ?:?);
begin
 004D49C4    push        ebp
 004D49C5    mov         ebp,esp
 004D49C7    add         esp,0FFFFFFE8
 004D49CA    push        ebx
 004D49CB    xor         ecx,ecx
 004D49CD    mov         dword ptr [ebp-18],ecx
 004D49D0    mov         dword ptr [ebp-14],ecx
 004D49D3    mov         dword ptr [ebp-0C],ecx
 004D49D6    mov         dword ptr [ebp-8],edx
 004D49D9    mov         dword ptr [ebp-4],eax
 004D49DC    xor         eax,eax
 004D49DE    push        ebp
 004D49DF    push        4D4ADC
 004D49E4    push        dword ptr fs:[eax]
 004D49E7    mov         dword ptr fs:[eax],esp
 004D49EA    mov         eax,dword ptr [ebp-4]
 004D49ED    call        004D4C20
 004D49F2    test        al,al
>004D49F4    jne         004D4A06
 004D49F6    mov         edx,dword ptr [ebp-8]
 004D49F9    mov         eax,dword ptr [ebp-4]
 004D49FC    call        TPanel.SetCaption
>004D4A01    jmp         004D4AB9
 004D4A06    lea         eax,[ebp-0C]
 004D4A09    mov         edx,dword ptr [ebp-8]
 004D4A0C    call        @LStrLAsg
 004D4A11    mov         eax,dword ptr [ebp-4]
 004D4A14    cmp         byte ptr [eax+22C],0
>004D4A1B    je          004D4A48
 004D4A1D    lea         eax,[ebp-14]
 004D4A20    push        eax
 004D4A21    mov         eax,dword ptr [ebp-4]
 004D4A24    mov         cl,byte ptr [eax+224]
 004D4A2A    mov         edx,dword ptr [ebp-0C]
 004D4A2D    mov         eax,dword ptr [ebp-4]
 004D4A30    mov         eax,dword ptr [eax+220]
 004D4A36    call        004D4088
 004D4A3B    mov         edx,dword ptr [ebp-14]
 004D4A3E    lea         eax,[ebp-0C]
 004D4A41    call        @LStrLAsg
>004D4A46    jmp         004D4A64
 004D4A48    lea         eax,[ebp-18]
 004D4A4B    push        eax
 004D4A4C    mov         cl,1
 004D4A4E    mov         edx,dword ptr [ebp-0C]
 004D4A51    mov         eax,dword ptr [ebp-4]
 004D4A54    call        004D5C28
 004D4A59    mov         edx,dword ptr [ebp-18]
 004D4A5C    lea         eax,[ebp-0C]
 004D4A5F    call        @LStrLAsg
 004D4A64    mov         eax,dword ptr [ebp-4]
 004D4A67    test        byte ptr [eax+22D],4
>004D4A6E    jne         004D4AAE
 004D4A70    mov         eax,dword ptr [ebp-4]
 004D4A73    test        byte ptr [eax+1C],10
>004D4A77    je          004D4AAE
 004D4A79    mov         eax,dword ptr [ebp-4]
 004D4A7C    test        byte ptr [eax+1C],1
>004D4A80    jne         004D4AAE
 004D4A82    lea         ecx,[ebp-10]
 004D4A85    mov         edx,dword ptr [ebp-0C]
 004D4A88    mov         eax,dword ptr [ebp-4]
 004D4A8B    mov         ebx,dword ptr [eax]
 004D4A8D    call        dword ptr [ebx+0F0]
 004D4A93    test        al,al
>004D4A95    jne         004D4AAE
 004D4A97    mov         ecx,dword ptr ds:[56E058];^SMaskErr:TResStringRec
 004D4A9D    mov         dl,1
 004D4A9F    mov         eax,[004D42E0];EDBEditError
 004D4AA4    call        Exception.Create;EDBEditError.Create
 004D4AA9    call        @RaiseExcept
 004D4AAE    mov         edx,dword ptr [ebp-0C]
 004D4AB1    mov         eax,dword ptr [ebp-4]
 004D4AB4    call        004D4838
 004D4AB9    xor         eax,eax
 004D4ABB    pop         edx
 004D4ABC    pop         ecx
 004D4ABD    pop         ecx
 004D4ABE    mov         dword ptr fs:[eax],edx
 004D4AC1    push        4D4AE3
 004D4AC6    lea         eax,[ebp-18]
 004D4AC9    mov         edx,2
 004D4ACE    call        @LStrArrayClr
 004D4AD3    lea         eax,[ebp-0C]
 004D4AD6    call        @LStrClr
 004D4ADB    ret
>004D4ADC    jmp         @HandleFinally
>004D4AE1    jmp         004D4AC6
 004D4AE3    pop         ebx
 004D4AE4    mov         esp,ebp
 004D4AE6    pop         ebp
 004D4AE7    ret
end;*}

//004D4AE8
{*procedure TCustomMaskEdit.WMCut(?:?);
begin
 004D4AE8    push        ebp
 004D4AE9    mov         ebp,esp
 004D4AEB    add         esp,0FFFFFFF8
 004D4AEE    mov         dword ptr [ebp-8],edx
 004D4AF1    mov         dword ptr [ebp-4],eax
 004D4AF4    mov         eax,dword ptr [ebp-4]
 004D4AF7    call        004D4C20
 004D4AFC    test        al,al
>004D4AFE    jne         004D4B0D
 004D4B00    mov         edx,dword ptr [ebp-8]
 004D4B03    mov         eax,dword ptr [ebp-4]
 004D4B06    mov         ecx,dword ptr [eax]
 004D4B08    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>004D4B0B    jmp         004D4B21
 004D4B0D    mov         eax,dword ptr [ebp-4]
 004D4B10    call        004742B0
 004D4B15    mov         dx,2E
 004D4B19    mov         eax,dword ptr [ebp-4]
 004D4B1C    call        004D5824
 004D4B21    pop         ecx
 004D4B22    pop         ecx
 004D4B23    pop         ebp
 004D4B24    ret
end;*}

//004D4B28
{*procedure TCustomMaskEdit.WMPaste(?:?);
begin
 004D4B28    push        ebp
 004D4B29    mov         ebp,esp
 004D4B2B    add         esp,0FFFFFFE8
 004D4B2E    xor         ecx,ecx
 004D4B30    mov         dword ptr [ebp-0C],ecx
 004D4B33    mov         dword ptr [ebp-10],ecx
 004D4B36    mov         dword ptr [ebp-8],edx
 004D4B39    mov         dword ptr [ebp-4],eax
 004D4B3C    xor         eax,eax
 004D4B3E    push        ebp
 004D4B3F    push        4D4C12
 004D4B44    push        dword ptr fs:[eax]
 004D4B47    mov         dword ptr fs:[eax],esp
 004D4B4A    mov         eax,dword ptr [ebp-4]
 004D4B4D    call        004D4C20
 004D4B52    test        al,al
>004D4B54    je          004D4B62
 004D4B56    mov         eax,dword ptr [ebp-4]
 004D4B59    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>004D4B60    je          004D4B72
 004D4B62    mov         edx,dword ptr [ebp-8]
 004D4B65    mov         eax,dword ptr [ebp-4]
 004D4B68    mov         ecx,dword ptr [eax]
 004D4B6A    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>004D4B6D    jmp         004D4BF7
 004D4B72    call        004466B8
 004D4B77    mov         edx,dword ptr [eax]
 004D4B79    call        dword ptr [edx+18]
 004D4B7C    call        004466B8
 004D4B81    lea         edx,[ebp-0C]
 004D4B84    call        00446290
 004D4B89    call        004466B8
 004D4B8E    mov         edx,dword ptr [eax]
 004D4B90    call        dword ptr [edx+14]
 004D4B93    lea         ecx,[ebp-18]
 004D4B96    lea         edx,[ebp-14]
 004D4B99    mov         eax,dword ptr [ebp-4]
 004D4B9C    call        004D4E68
 004D4BA1    lea         edx,[ebp-10]
 004D4BA4    mov         eax,dword ptr [ebp-4]
 004D4BA7    call        004D48AC
 004D4BAC    mov         eax,dword ptr [ebp-18]
 004D4BAF    sub         eax,dword ptr [ebp-14]
 004D4BB2    push        eax
 004D4BB3    lea         edx,[ebp-10]
 004D4BB6    mov         ecx,dword ptr [ebp-14]
 004D4BB9    mov         eax,dword ptr [ebp-4]
 004D4BBC    call        004D648C
 004D4BC1    mov         edx,dword ptr [ebp-10]
 004D4BC4    mov         eax,dword ptr [ebp-4]
 004D4BC7    call        004D4838
 004D4BCC    mov         eax,dword ptr [ebp-14]
 004D4BCF    push        eax
 004D4BD0    lea         edx,[ebp-10]
 004D4BD3    mov         ecx,dword ptr [ebp-0C]
 004D4BD6    mov         eax,dword ptr [ebp-4]
 004D4BD9    call        004D6550
 004D4BDE    mov         dword ptr [ebp-14],eax
 004D4BE1    mov         edx,dword ptr [ebp-10]
 004D4BE4    mov         eax,dword ptr [ebp-4]
 004D4BE7    call        004D4838
 004D4BEC    mov         edx,dword ptr [ebp-14]
 004D4BEF    mov         eax,dword ptr [ebp-4]
 004D4BF2    call        004D4EC8
 004D4BF7    xor         eax,eax
 004D4BF9    pop         edx
 004D4BFA    pop         ecx
 004D4BFB    pop         ecx
 004D4BFC    mov         dword ptr fs:[eax],edx
 004D4BFF    push        4D4C19
 004D4C04    lea         eax,[ebp-10]
 004D4C07    mov         edx,2
 004D4C0C    call        @LStrArrayClr
 004D4C11    ret
>004D4C12    jmp         @HandleFinally
>004D4C17    jmp         004D4C04
 004D4C19    mov         esp,ebp
 004D4C1B    pop         ebp
 004D4C1C    ret
end;*}

//004D4C20
{*function sub_004D4C20(?:TCustomMaskEdit):?;
begin
 004D4C20    push        ebp
 004D4C21    mov         ebp,esp
 004D4C23    add         esp,0FFFFFFF8
 004D4C26    mov         dword ptr [ebp-4],eax
 004D4C29    mov         eax,dword ptr [ebp-4]
 004D4C2C    cmp         dword ptr [eax+220],0;TCustomMaskEdit.FEditMask:TEditMask
 004D4C33    setne       byte ptr [ebp-5]
 004D4C37    mov         al,byte ptr [ebp-5]
 004D4C3A    pop         ecx
 004D4C3B    pop         ecx
 004D4C3C    pop         ebp
 004D4C3D    ret
end;*}

//004D4C40
{*procedure sub_004D4C40(?:?; ?:?);
begin
 004D4C40    push        ebp
 004D4C41    mov         ebp,esp
 004D4C43    xor         ecx,ecx
 004D4C45    push        ecx
 004D4C46    push        ecx
 004D4C47    push        ecx
 004D4C48    push        ecx
 004D4C49    push        ecx
 004D4C4A    mov         dword ptr [ebp-8],edx
 004D4C4D    mov         dword ptr [ebp-4],eax
 004D4C50    xor         eax,eax
 004D4C52    push        ebp
 004D4C53    push        4D4D0C
 004D4C58    push        dword ptr fs:[eax]
 004D4C5B    mov         dword ptr fs:[eax],esp
 004D4C5E    lea         edx,[ebp-10]
 004D4C61    mov         eax,dword ptr [ebp-4]
 004D4C64    call        004D48AC
 004D4C69    mov         edx,dword ptr [ebp-10]
 004D4C6C    lea         ecx,[ebp-0C]
 004D4C6F    mov         eax,dword ptr [ebp-4]
 004D4C72    call        004D5C7C
 004D4C77    mov         eax,dword ptr [ebp-4]
 004D4C7A    add         eax,220
 004D4C7F    mov         edx,dword ptr [ebp-8]
 004D4C82    call        @LStrAsg
 004D4C87    mov         eax,dword ptr [ebp-8]
 004D4C8A    call        @LStrLen
 004D4C8F    mov         edx,eax
 004D4C91    mov         eax,dword ptr [ebp-4]
 004D4C94    mov         eax,dword ptr [eax+220]
 004D4C9A    call        004D3DA4
 004D4C9F    mov         edx,dword ptr [ebp-4]
 004D4CA2    mov         dword ptr [edx+228],eax
 004D4CA8    mov         eax,dword ptr [ebp-8]
 004D4CAB    call        004D3BC4
 004D4CB0    mov         edx,dword ptr [ebp-4]
 004D4CB3    mov         byte ptr [edx+22C],al
 004D4CB9    mov         eax,dword ptr [ebp-8]
 004D4CBC    call        004D3C80
 004D4CC1    mov         edx,dword ptr [ebp-4]
 004D4CC4    mov         byte ptr [edx+224],al
 004D4CCA    lea         eax,[ebp-14]
 004D4CCD    push        eax
 004D4CCE    mov         cl,1
 004D4CD0    mov         edx,dword ptr [ebp-0C]
 004D4CD3    mov         eax,dword ptr [ebp-4]
 004D4CD6    call        004D5C28
 004D4CDB    mov         edx,dword ptr [ebp-14]
 004D4CDE    lea         eax,[ebp-0C]
 004D4CE1    call        @LStrLAsg
 004D4CE6    mov         edx,dword ptr [ebp-0C]
 004D4CE9    mov         eax,dword ptr [ebp-4]
 004D4CEC    call        004D4838
 004D4CF1    xor         eax,eax
 004D4CF3    pop         edx
 004D4CF4    pop         ecx
 004D4CF5    pop         ecx
 004D4CF6    mov         dword ptr fs:[eax],edx
 004D4CF9    push        4D4D13
 004D4CFE    lea         eax,[ebp-14]
 004D4D01    mov         edx,3
 004D4D06    call        @LStrArrayClr
 004D4D0B    ret
>004D4D0C    jmp         @HandleFinally
>004D4D11    jmp         004D4CFE
 004D4D13    mov         esp,ebp
 004D4D15    pop         ebp
 004D4D16    ret
end;*}

//004D4D18
{*procedure sub_004D4D18(?:TInplaceEdit; ?:?);
begin
 004D4D18    push        ebp
 004D4D19    mov         ebp,esp
 004D4D1B    add         esp,0FFFFFFF0
 004D4D1E    push        ebx
 004D4D1F    mov         dword ptr [ebp-8],edx
 004D4D22    mov         dword ptr [ebp-4],eax
 004D4D25    mov         eax,dword ptr [ebp-8]
 004D4D28    mov         edx,dword ptr [ebp-4]
 004D4D2B    mov         edx,dword ptr [edx+220]
 004D4D31    call        @LStrCmp
>004D4D36    je          004D4E09
 004D4D3C    mov         eax,dword ptr [ebp-4]
 004D4D3F    test        byte ptr [eax+1C],10
>004D4D43    je          004D4D5E
 004D4D45    cmp         dword ptr [ebp-8],0
>004D4D49    je          004D4D5E
 004D4D4B    mov         eax,dword ptr [ebp-4]
 004D4D4E    test        byte ptr [eax+1C],1
>004D4D52    jne         004D4D5E
 004D4D54    xor         edx,edx
 004D4D56    mov         eax,dword ptr [ebp-4]
 004D4D59    call        004D4838
 004D4D5E    mov         eax,dword ptr [ebp-4]
 004D4D61    call        TWinControl.HandleAllocated
 004D4D66    test        al,al
>004D4D68    je          004D4D78
 004D4D6A    lea         ecx,[ebp-10]
 004D4D6D    lea         edx,[ebp-0C]
 004D4D70    mov         eax,dword ptr [ebp-4]
 004D4D73    call        004D4E68
 004D4D78    mov         edx,dword ptr [ebp-8]
 004D4D7B    mov         eax,dword ptr [ebp-4]
 004D4D7E    call        004D4C40
 004D4D83    mov         eax,dword ptr [ebp-4]
 004D4D86    and         byte ptr [eax+22D],0FE
 004D4D8D    mov         eax,dword ptr [ebp-4]
 004D4D90    cmp         dword ptr [eax+220],0
>004D4D97    je          004D4DA3
 004D4D99    mov         eax,dword ptr [ebp-4]
 004D4D9C    or          byte ptr [eax+22D],1
 004D4DA3    xor         edx,edx
 004D4DA5    mov         eax,dword ptr [ebp-4]
 004D4DA8    call        TLabeledEdit.SetMaxLength
 004D4DAD    mov         eax,dword ptr [ebp-4]
 004D4DB0    call        004D4C20
 004D4DB5    test        al,al
>004D4DB7    je          004D4DD6
 004D4DB9    mov         eax,dword ptr [ebp-4]
 004D4DBC    cmp         dword ptr [eax+228],0
>004D4DC3    jle         004D4DD6
 004D4DC5    mov         eax,dword ptr [ebp-4]
 004D4DC8    mov         edx,dword ptr [eax+228]
 004D4DCE    mov         eax,dword ptr [ebp-4]
 004D4DD1    call        TLabeledEdit.SetMaxLength
 004D4DD6    mov         eax,dword ptr [ebp-4]
 004D4DD9    call        TWinControl.HandleAllocated
 004D4DDE    test        al,al
>004D4DE0    je          004D4E09
 004D4DE2    mov         eax,dword ptr [ebp-4]
 004D4DE5    call        TWinControl.GetHandle
 004D4DEA    mov         ebx,eax
 004D4DEC    call        user32.GetFocus
 004D4DF1    cmp         ebx,eax
>004D4DF3    jne         004D4E09
 004D4DF5    mov         eax,dword ptr [ebp-4]
 004D4DF8    test        byte ptr [eax+1C],10
>004D4DFC    jne         004D4E09
 004D4DFE    mov         edx,dword ptr [ebp-0C]
 004D4E01    mov         eax,dword ptr [ebp-4]
 004D4E04    call        004D4EC8
 004D4E09    pop         ebx
 004D4E0A    mov         esp,ebp
 004D4E0C    pop         ebp
 004D4E0D    ret
end;*}

//004D4E10
{*function sub_004D4E10(?:?):?;
begin
 004D4E10    push        ebp
 004D4E11    mov         ebp,esp
 004D4E13    add         esp,0FFFFFFF8
 004D4E16    mov         dword ptr [ebp-4],eax
 004D4E19    mov         eax,dword ptr [ebp-4]
 004D4E1C    mov         eax,dword ptr [eax+208]
 004D4E22    mov         dword ptr [ebp-8],eax
 004D4E25    mov         eax,dword ptr [ebp-8]
 004D4E28    pop         ecx
 004D4E29    pop         ecx
 004D4E2A    pop         ebp
 004D4E2B    ret
end;*}

//004D4E2C
{*procedure sub_004D4E2C(?:TInplaceEdit; ?:?);
begin
 004D4E2C    push        ebp
 004D4E2D    mov         ebp,esp
 004D4E2F    add         esp,0FFFFFFF8
 004D4E32    mov         dword ptr [ebp-8],edx
 004D4E35    mov         dword ptr [ebp-4],eax
 004D4E38    mov         eax,dword ptr [ebp-4]
 004D4E3B    call        004D4C20
 004D4E40    test        al,al
>004D4E42    jne         004D4E51
 004D4E44    mov         edx,dword ptr [ebp-8]
 004D4E47    mov         eax,dword ptr [ebp-4]
 004D4E4A    call        TLabeledEdit.SetMaxLength
>004D4E4F    jmp         004D4E62
 004D4E51    mov         eax,dword ptr [ebp-4]
 004D4E54    mov         edx,dword ptr [eax+228]
 004D4E5A    mov         eax,dword ptr [ebp-4]
 004D4E5D    call        TLabeledEdit.SetMaxLength
 004D4E62    pop         ecx
 004D4E63    pop         ecx
 004D4E64    pop         ebp
 004D4E65    ret
end;*}

//004D4E68
{*procedure sub_004D4E68(?:TCustomMaskEdit; ?:?; ?:?);
begin
 004D4E68    push        ebp
 004D4E69    mov         ebp,esp
 004D4E6B    add         esp,0FFFFFFF4
 004D4E6E    mov         dword ptr [ebp-0C],ecx
 004D4E71    mov         dword ptr [ebp-8],edx
 004D4E74    mov         dword ptr [ebp-4],eax
 004D4E77    mov         eax,dword ptr [ebp-0C]
 004D4E7A    push        eax
 004D4E7B    mov         eax,dword ptr [ebp-8]
 004D4E7E    push        eax
 004D4E7F    push        0B0
 004D4E84    mov         eax,dword ptr [ebp-4]
 004D4E87    call        TWinControl.GetHandle
 004D4E8C    push        eax
 004D4E8D    call        user32.SendMessageA
 004D4E92    mov         esp,ebp
 004D4E94    pop         ebp
 004D4E95    ret
end;*}

//004D4E98
procedure sub_004D4E98(?:TCustomMaskEdit; ?:Integer; ?:Integer);
begin
{*
 004D4E98    push        ebp
 004D4E99    mov         ebp,esp
 004D4E9B    add         esp,0FFFFFFF4
 004D4E9E    mov         dword ptr [ebp-0C],ecx
 004D4EA1    mov         dword ptr [ebp-8],edx
 004D4EA4    mov         dword ptr [ebp-4],eax
 004D4EA7    mov         eax,dword ptr [ebp-0C]
 004D4EAA    push        eax
 004D4EAB    mov         eax,dword ptr [ebp-8]
 004D4EAE    push        eax
 004D4EAF    push        0B1
 004D4EB4    mov         eax,dword ptr [ebp-4]
 004D4EB7    call        TWinControl.GetHandle
 004D4EBC    push        eax
 004D4EBD    call        user32.SendMessageA
 004D4EC2    mov         esp,ebp
 004D4EC4    pop         ebp
 004D4EC5    ret
*}
end;

//004D4EC8
{*procedure sub_004D4EC8(?:TCustomMaskEdit; ?:?);
begin
 004D4EC8    push        ebp
 004D4EC9    mov         ebp,esp
 004D4ECB    add         esp,0FFFFFDD8
 004D4ED1    push        esi
 004D4ED2    xor         ecx,ecx
 004D4ED4    mov         dword ptr [ebp-228],ecx
 004D4EDA    mov         dword ptr [ebp-224],ecx
 004D4EE0    mov         dword ptr [ebp-220],ecx
 004D4EE6    mov         dword ptr [ebp-21C],ecx
 004D4EEC    mov         dword ptr [ebp-218],ecx
 004D4EF2    mov         dword ptr [ebp-8],edx
 004D4EF5    mov         dword ptr [ebp-4],eax
 004D4EF8    xor         eax,eax
 004D4EFA    push        ebp
 004D4EFB    push        4D5153
 004D4F00    push        dword ptr fs:[eax]
 004D4F03    mov         dword ptr fs:[eax],esp
 004D4F06    cmp         dword ptr [ebp-8],1
>004D4F0A    jl          004D4F2F
 004D4F0C    lea         edx,[ebp-218]
 004D4F12    mov         eax,dword ptr [ebp-4]
 004D4F15    call        004D48AC
 004D4F1A    mov         eax,dword ptr [ebp-218]
 004D4F20    mov         edx,dword ptr [ebp-8]
 004D4F23    call        00411160
 004D4F28    cmp         al,1
>004D4F2A    jne         004D4F2F
 004D4F2C    dec         dword ptr [ebp-8]
 004D4F2F    mov         eax,dword ptr [ebp-8]
 004D4F32    mov         dword ptr [ebp-0C],eax
 004D4F35    mov         eax,dword ptr [ebp-4]
 004D4F38    call        004D4C20
 004D4F3D    test        al,al
>004D4F3F    je          004D50E2
 004D4F45    cmp         dword ptr [ebp-0C],0
>004D4F49    jge         004D4F50
 004D4F4B    xor         eax,eax
 004D4F4D    mov         dword ptr [ebp-0C],eax
 004D4F50    mov         eax,dword ptr [ebp-0C]
 004D4F53    inc         eax
 004D4F54    mov         dword ptr [ebp-10],eax
 004D4F57    lea         edx,[ebp-21C]
 004D4F5D    mov         eax,dword ptr [ebp-4]
 004D4F60    call        004D48AC
 004D4F65    mov         eax,dword ptr [ebp-21C]
 004D4F6B    call        @LStrLen
 004D4F70    cmp         eax,dword ptr [ebp-10]
>004D4F73    jle         004D4FA3
 004D4F75    lea         edx,[ebp-220]
 004D4F7B    mov         eax,dword ptr [ebp-4]
 004D4F7E    call        004D48AC
 004D4F83    mov         eax,dword ptr [ebp-220]
 004D4F89    mov         edx,dword ptr [ebp-10]
 004D4F8C    mov         al,byte ptr [eax+edx-1]
 004D4F90    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D4F96    and         eax,0FF
 004D4F9B    bt          dword ptr [edx],eax
>004D4F9E    jae         004D4FA3
 004D4FA0    inc         dword ptr [ebp-10]
 004D4FA3    mov         eax,dword ptr [ebp-4]
 004D4FA6    mov         eax,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 004D4FAC    cmp         eax,dword ptr [ebp-0C]
>004D4FAF    jg          004D4FC3
 004D4FB1    mov         eax,dword ptr [ebp-4]
 004D4FB4    mov         eax,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 004D4FBA    mov         dword ptr [ebp-0C],eax
 004D4FBD    mov         eax,dword ptr [ebp-0C]
 004D4FC0    mov         dword ptr [ebp-10],eax
 004D4FC3    mov         ecx,dword ptr [ebp-10]
 004D4FC6    mov         edx,dword ptr [ebp-10]
 004D4FC9    mov         eax,dword ptr [ebp-4]
 004D4FCC    call        004D4E98
 004D4FD1    mov         eax,dword ptr [ebp-0C]
 004D4FD4    cmp         eax,dword ptr [ebp-10]
>004D4FD7    je          004D50D4
 004D4FDD    lea         eax,[ebp-114]
 004D4FE3    push        eax
 004D4FE4    call        user32.GetKeyboardState
 004D4FE9    xor         eax,eax
 004D4FEB    mov         dword ptr [ebp-14],eax
 004D4FEE    mov         eax,dword ptr [ebp-14]
 004D4FF1    mov         byte ptr [ebp+eax-214],0
 004D4FF9    inc         dword ptr [ebp-14]
 004D4FFC    cmp         dword ptr [ebp-14],100
>004D5003    jne         004D4FEE
 004D5005    mov         byte ptr [ebp-204],81
 004D500C    mov         eax,dword ptr [ebp-4]
 004D500F    mov         si,0FFC8
 004D5013    call        @CallDynaInst;TControl.sub_0048415C
 004D5018    and         eax,7F
 004D501B    movzx       eax,word ptr [eax*2+56CC50]
 004D5023    mov         byte ptr [ebp+eax-214],81
 004D502B    lea         eax,[ebp-214]
 004D5031    push        eax
 004D5032    call        user32.SetKeyboardState
 004D5037    mov         eax,dword ptr [ebp-4]
 004D503A    mov         byte ptr [eax+23C],1;TCustomMaskEdit.FSettingCursor:Boolean
 004D5041    xor         eax,eax
 004D5043    push        ebp
 004D5044    push        4D50C1
 004D5049    push        dword ptr fs:[eax]
 004D504C    mov         dword ptr fs:[eax],esp
 004D504F    push        1
 004D5051    mov         eax,dword ptr [ebp-4]
 004D5054    mov         si,0FFC8
 004D5058    call        @CallDynaInst;TControl.sub_0048415C
 004D505D    and         eax,7F
 004D5060    movzx       eax,word ptr [eax*2+56CC50]
 004D5068    push        eax
 004D5069    push        100
 004D506E    mov         eax,dword ptr [ebp-4]
 004D5071    call        TWinControl.GetHandle
 004D5076    push        eax
 004D5077    call        user32.SendMessageA
 004D507C    push        1
 004D507E    mov         eax,dword ptr [ebp-4]
 004D5081    mov         si,0FFC8
 004D5085    call        @CallDynaInst;TControl.sub_0048415C
 004D508A    and         eax,7F
 004D508D    movzx       eax,word ptr [eax*2+56CC50]
 004D5095    push        eax
 004D5096    push        101
 004D509B    mov         eax,dword ptr [ebp-4]
 004D509E    call        TWinControl.GetHandle
 004D50A3    push        eax
 004D50A4    call        user32.SendMessageA
 004D50A9    xor         eax,eax
 004D50AB    pop         edx
 004D50AC    pop         ecx
 004D50AD    pop         ecx
 004D50AE    mov         dword ptr fs:[eax],edx
 004D50B1    push        4D50C8
 004D50B6    mov         eax,dword ptr [ebp-4]
 004D50B9    mov         byte ptr [eax+23C],0;TCustomMaskEdit.FSettingCursor:Boolean
 004D50C0    ret
>004D50C1    jmp         @HandleFinally
>004D50C6    jmp         004D50B6
 004D50C8    lea         eax,[ebp-114]
 004D50CE    push        eax
 004D50CF    call        user32.SetKeyboardState
 004D50D4    mov         eax,dword ptr [ebp-4]
 004D50D7    mov         edx,dword ptr [ebp-0C]
 004D50DA    mov         dword ptr [eax+230],edx;TCustomMaskEdit.FCaretPos:Integer
>004D50E0    jmp         004D5135
 004D50E2    cmp         dword ptr [ebp-0C],0
>004D50E6    jge         004D50ED
 004D50E8    xor         eax,eax
 004D50EA    mov         dword ptr [ebp-0C],eax
 004D50ED    lea         edx,[ebp-224]
 004D50F3    mov         eax,dword ptr [ebp-4]
 004D50F6    call        004D48AC
 004D50FB    mov         eax,dword ptr [ebp-224]
 004D5101    call        @LStrLen
 004D5106    cmp         eax,dword ptr [ebp-0C]
>004D5109    jg          004D5127
 004D510B    lea         edx,[ebp-228]
 004D5111    mov         eax,dword ptr [ebp-4]
 004D5114    call        004D48AC
 004D5119    mov         eax,dword ptr [ebp-228]
 004D511F    call        @LStrLen
 004D5124    mov         dword ptr [ebp-0C],eax
 004D5127    mov         ecx,dword ptr [ebp-0C]
 004D512A    mov         edx,dword ptr [ebp-0C]
 004D512D    mov         eax,dword ptr [ebp-4]
 004D5130    call        004D4E98
 004D5135    xor         eax,eax
 004D5137    pop         edx
 004D5138    pop         ecx
 004D5139    pop         ecx
 004D513A    mov         dword ptr fs:[eax],edx
 004D513D    push        4D515A
 004D5142    lea         eax,[ebp-228]
 004D5148    mov         edx,5
 004D514D    call        @LStrArrayClr
 004D5152    ret
>004D5153    jmp         @HandleFinally
>004D5158    jmp         004D5142
 004D515A    pop         esi
 004D515B    mov         esp,ebp
 004D515D    pop         ebp
 004D515E    ret
end;*}

//004D5160
procedure sub_004D5160(?:TCustomMaskEdit);
begin
{*
 004D5160    push        ebp
 004D5161    mov         ebp,esp
 004D5163    add         esp,0FFFFFFF4
 004D5166    mov         dword ptr [ebp-4],eax
 004D5169    mov         eax,dword ptr [ebp-4]
 004D516C    call        TWinControl.HandleAllocated
 004D5171    test        al,al
>004D5173    je          004D51A2
 004D5175    mov         eax,dword ptr [ebp-4]
 004D5178    call        004D4C20
 004D517D    test        al,al
>004D517F    je          004D51A2
 004D5181    lea         ecx,[ebp-0C]
 004D5184    lea         edx,[ebp-8]
 004D5187    mov         eax,dword ptr [ebp-4]
 004D518A    call        004D4E68
 004D518F    mov         eax,dword ptr [ebp-8]
 004D5192    cmp         eax,dword ptr [ebp-0C]
>004D5195    jne         004D51A2
 004D5197    mov         edx,dword ptr [ebp-8]
 004D519A    mov         eax,dword ptr [ebp-4]
 004D519D    call        004D4EC8
 004D51A2    mov         esp,ebp
 004D51A4    pop         ebp
 004D51A5    ret
*}
end;

//004D51A8
procedure sub_004D51A8;
begin
{*
 004D51A8    push        ebp
 004D51A9    mov         ebp,esp
 004D51AB    push        ecx
 004D51AC    mov         dword ptr [ebp-4],eax
 004D51AF    xor         edx,edx
 004D51B1    mov         eax,dword ptr [ebp-4]
 004D51B4    call        004D49C4
 004D51B9    pop         ecx
 004D51BA    pop         ebp
 004D51BB    ret
*}
end;

//004D51BC
{*function sub_004D51BC:?;
begin
 004D51BC    push        ebp
 004D51BD    mov         ebp,esp
 004D51BF    add         esp,0FFFFFFF8
 004D51C2    mov         dword ptr [ebp-4],eax
 004D51C5    mov         byte ptr [ebp-5],1
 004D51C9    mov         al,byte ptr [ebp-5]
 004D51CC    pop         ecx
 004D51CD    pop         ecx
 004D51CE    pop         ebp
 004D51CF    ret
end;*}

//004D51D0
procedure sub_004D51D0;
begin
{*
 004D51D0    push        ebp
 004D51D1    mov         ebp,esp
 004D51D3    push        ecx
 004D51D4    mov         dword ptr [ebp-4],eax
 004D51D7    mov         eax,dword ptr [ebp-4]
 004D51DA    call        TCustomEdit.GetModified
 004D51DF    test        al,al
>004D51E1    je          004D51FE
 004D51E3    mov         eax,dword ptr [ebp-4]
 004D51E6    mov         edx,dword ptr [eax+238];TCustomMaskEdit.FOldValue:String
 004D51EC    mov         eax,dword ptr [ebp-4]
 004D51EF    call        004D4838
 004D51F4    xor         edx,edx
 004D51F6    mov         eax,dword ptr [ebp-4]
 004D51F9    call        TCustomEdit.SetModified
 004D51FE    pop         ecx
 004D51FF    pop         ebp
 004D5200    ret
*}
end;

//004D5204
{*function sub_004D5204(?:TCustomMaskEdit; ?:?):?;
begin
 004D5204    push        ebp
 004D5205    mov         ebp,esp
 004D5207    add         esp,0FFFFFFC0
 004D520A    xor         ecx,ecx
 004D520C    mov         dword ptr [ebp-18],ecx
 004D520F    mov         dword ptr [ebp-8],edx
 004D5212    mov         dword ptr [ebp-4],eax
 004D5215    xor         eax,eax
 004D5217    push        ebp
 004D5218    push        4D53F0
 004D521D    push        dword ptr fs:[eax]
 004D5220    mov         dword ptr fs:[eax],esp
 004D5223    mov         byte ptr [ebp-9],0
 004D5227    mov         eax,dword ptr [ebp-8]
 004D522A    movzx       eax,byte ptr [eax]
 004D522D    cmp         ax,1B
>004D5231    jne         004D5243
 004D5233    mov         eax,dword ptr [ebp-4]
 004D5236    mov         edx,dword ptr [eax]
 004D5238    call        dword ptr [edx+0EC];TCustomMaskEdit.sub_004D51D0
>004D523E    jmp         004D53DA
 004D5243    mov         eax,dword ptr [ebp-4]
 004D5246    mov         edx,dword ptr [eax]
 004D5248    call        dword ptr [edx+0E8];TCustomMaskEdit.sub_004D51BC
 004D524E    test        al,al
>004D5250    je          004D53DA
 004D5256    mov         eax,dword ptr [ebp-4]
 004D5259    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>004D5260    jne         004D53DA
 004D5266    mov         eax,dword ptr [ebp-8]
 004D5269    movzx       eax,byte ptr [eax]
 004D526C    cmp         ax,8
>004D5270    je          004D53DA
 004D5276    mov         eax,dword ptr [ebp-8]
 004D5279    movzx       eax,byte ptr [eax]
 004D527C    cmp         ax,0D
>004D5280    jne         004D5292
 004D5282    mov         eax,dword ptr [ebp-4]
 004D5285    mov         edx,dword ptr [eax]
 004D5287    call        dword ptr [edx+0F8];TCustomMaskEdit.sub_004D5B38
>004D528D    jmp         004D53DA
 004D5292    lea         ecx,[ebp-14]
 004D5295    lea         edx,[ebp-10]
 004D5298    mov         eax,dword ptr [ebp-4]
 004D529B    call        004D4E68
 004D52A0    mov         eax,dword ptr [ebp-14]
 004D52A3    sub         eax,dword ptr [ebp-10]
 004D52A6    dec         eax
>004D52A7    jle         004D52CE
 004D52A9    mov         dx,2E
 004D52AD    mov         eax,dword ptr [ebp-4]
 004D52B0    call        004D5824
 004D52B5    mov         edx,dword ptr [ebp-10]
 004D52B8    mov         eax,dword ptr [ebp-4]
 004D52BB    call        004D56B0
 004D52C0    mov         dword ptr [ebp-10],eax
 004D52C3    mov         edx,dword ptr [ebp-10]
 004D52C6    mov         eax,dword ptr [ebp-4]
 004D52C9    call        004D4EC8
 004D52CE    mov         eax,dword ptr [ebp-8]
 004D52D1    mov         al,byte ptr [eax]
 004D52D3    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D52D9    and         eax,0FF
 004D52DE    bt          dword ptr [edx],eax
>004D52E1    jae         004D5314
 004D52E3    push        1
 004D52E5    push        102
 004D52EA    push        102
 004D52EF    mov         eax,dword ptr [ebp-4]
 004D52F2    call        TWinControl.GetHandle
 004D52F7    push        eax
 004D52F8    lea         eax,[ebp-34]
 004D52FB    push        eax
 004D52FC    call        user32.PeekMessageA
 004D5301    test        eax,eax
>004D5303    je          004D5314
 004D5305    cmp         dword ptr [ebp-30],12
>004D5309    jne         004D5314
 004D530B    mov         eax,dword ptr [ebp-2C]
 004D530E    push        eax
 004D530F    call        user32.PostQuitMessage
 004D5314    mov         edx,dword ptr [ebp-8]
 004D5317    mov         ecx,dword ptr [ebp-10]
 004D531A    mov         eax,dword ptr [ebp-4]
 004D531D    call        004D5EB0
 004D5322    mov         byte ptr [ebp-9],al
 004D5325    cmp         byte ptr [ebp-9],0
>004D5329    je          004D53DA
 004D532F    mov         eax,dword ptr [ebp-8]
 004D5332    mov         al,byte ptr [eax]
 004D5334    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D533A    and         eax,0FF
 004D533F    bt          dword ptr [edx],eax
>004D5342    jae         004D5394
 004D5344    lea         eax,[ebp-38]
 004D5347    mov         edx,dword ptr [ebp-8]
 004D534A    mov         dl,byte ptr [edx]
 004D534C    mov         byte ptr [eax+1],dl
 004D534F    mov         byte ptr [eax],1
 004D5352    lea         edx,[ebp-38]
 004D5355    lea         eax,[ebp-3C]
 004D5358    call        @PStrCpy
 004D535D    lea         eax,[ebp-40]
 004D5360    mov         dl,byte ptr [ebp-2C]
 004D5363    mov         byte ptr [eax+1],dl
 004D5366    mov         byte ptr [eax],1
 004D5369    lea         edx,[ebp-40]
 004D536C    lea         eax,[ebp-3C]
 004D536F    mov         cl,2
 004D5371    call        @PStrNCat
 004D5376    lea         edx,[ebp-3C]
 004D5379    lea         eax,[ebp-18]
 004D537C    call        @LStrFromString
 004D5381    mov         ecx,dword ptr [ebp-10]
 004D5384    add         ecx,2
 004D5387    mov         edx,dword ptr [ebp-10]
 004D538A    mov         eax,dword ptr [ebp-4]
 004D538D    call        004D4E98
>004D5392    jmp         004D53A1
 004D5394    lea         eax,[ebp-18]
 004D5397    mov         edx,dword ptr [ebp-8]
 004D539A    mov         dl,byte ptr [edx]
 004D539C    call        @LStrFromChar
 004D53A1    mov         eax,dword ptr [ebp-18]
 004D53A4    call        @LStrToPChar
 004D53A9    push        eax
 004D53AA    push        0
 004D53AC    push        0C2
 004D53B1    mov         eax,dword ptr [ebp-4]
 004D53B4    call        TWinControl.GetHandle
 004D53B9    push        eax
 004D53BA    call        user32.SendMessageA
 004D53BF    lea         ecx,[ebp-14]
 004D53C2    lea         edx,[ebp-10]
 004D53C5    mov         eax,dword ptr [ebp-4]
 004D53C8    call        004D4E68
 004D53CD    xor         ecx,ecx
 004D53CF    mov         edx,dword ptr [ebp-10]
 004D53D2    mov         eax,dword ptr [ebp-4]
 004D53D5    call        004D562C
 004D53DA    xor         eax,eax
 004D53DC    pop         edx
 004D53DD    pop         ecx
 004D53DE    pop         ecx
 004D53DF    mov         dword ptr fs:[eax],edx
 004D53E2    push        4D53F7
 004D53E7    lea         eax,[ebp-18]
 004D53EA    call        @LStrClr
 004D53EF    ret
>004D53F0    jmp         @HandleFinally
>004D53F5    jmp         004D53E7
 004D53F7    mov         al,byte ptr [ebp-9]
 004D53FA    mov         esp,ebp
 004D53FC    pop         ebp
 004D53FD    ret
end;*}

//004D5400
{*procedure sub_004D5400(?:?; ?:?; ?:?);
begin
 004D5400    push        ebp
 004D5401    mov         ebp,esp
 004D5403    add         esp,0FFFFFFE8
 004D5406    push        ebx
 004D5407    xor         ebx,ebx
 004D5409    mov         dword ptr [ebp-18],ebx
 004D540C    mov         dword ptr [ebp-14],ebx
 004D540F    mov         byte ptr [ebp-7],cl
 004D5412    mov         word ptr [ebp-6],dx
 004D5416    mov         dword ptr [ebp-4],eax
 004D5419    xor         eax,eax
 004D541B    push        ebp
 004D541C    push        4D561F
 004D5421    push        dword ptr fs:[eax]
 004D5424    mov         dword ptr fs:[eax],esp
 004D5427    test        byte ptr [ebp-7],4
>004D542B    jne         004D5604
 004D5431    lea         ecx,[ebp-10]
 004D5434    lea         edx,[ebp-0C]
 004D5437    mov         eax,dword ptr [ebp-4]
 004D543A    call        004D4E68
 004D543F    test        byte ptr [ebp-7],1
>004D5443    je          004D5503
 004D5449    cmp         word ptr [ebp-6],27
>004D544E    jne         004D54A8
 004D5450    mov         eax,dword ptr [ebp-4]
 004D5453    inc         dword ptr [eax+230]
 004D5459    mov         eax,dword ptr [ebp-0C]
 004D545C    inc         eax
 004D545D    cmp         eax,dword ptr [ebp-10]
>004D5460    jne         004D5479
 004D5462    mov         ecx,dword ptr [ebp-10]
 004D5465    mov         edx,dword ptr [ebp-0C]
 004D5468    mov         eax,dword ptr [ebp-4]
 004D546B    call        004D4E98
 004D5470    mov         eax,dword ptr [ebp-4]
 004D5473    inc         dword ptr [eax+230]
 004D5479    mov         eax,dword ptr [ebp-4]
 004D547C    mov         eax,dword ptr [eax+230]
 004D5482    mov         edx,dword ptr [ebp-4]
 004D5485    cmp         eax,dword ptr [edx+228]
>004D548B    jle         004D5604
 004D5491    mov         eax,dword ptr [ebp-4]
 004D5494    mov         eax,dword ptr [eax+228]
 004D549A    mov         edx,dword ptr [ebp-4]
 004D549D    mov         dword ptr [edx+230],eax
>004D54A3    jmp         004D5604
 004D54A8    mov         eax,dword ptr [ebp-4]
 004D54AB    dec         dword ptr [eax+230]
 004D54B1    mov         eax,dword ptr [ebp-0C]
 004D54B4    add         eax,2
 004D54B7    cmp         eax,dword ptr [ebp-10]
>004D54BA    jne         004D54E3
 004D54BC    mov         eax,dword ptr [ebp-4]
 004D54BF    mov         eax,dword ptr [eax+230]
 004D54C5    cmp         eax,dword ptr [ebp-0C]
>004D54C8    jle         004D54E3
 004D54CA    mov         ecx,dword ptr [ebp-0C]
 004D54CD    inc         ecx
 004D54CE    mov         edx,dword ptr [ebp-0C]
 004D54D1    inc         edx
 004D54D2    mov         eax,dword ptr [ebp-4]
 004D54D5    call        004D4E98
 004D54DA    mov         eax,dword ptr [ebp-4]
 004D54DD    dec         dword ptr [eax+230]
 004D54E3    mov         eax,dword ptr [ebp-4]
 004D54E6    cmp         dword ptr [eax+230],0
>004D54ED    jge         004D5604
 004D54F3    mov         eax,dword ptr [ebp-4]
 004D54F6    xor         edx,edx
 004D54F8    mov         dword ptr [eax+230],edx
>004D54FE    jmp         004D5604
 004D5503    mov         eax,dword ptr [ebp-10]
 004D5506    sub         eax,dword ptr [ebp-0C]
 004D5509    dec         eax
>004D550A    jle         004D5595
 004D5510    mov         eax,dword ptr [ebp-10]
 004D5513    sub         eax,dword ptr [ebp-0C]
 004D5516    cmp         eax,2
>004D5519    jne         004D556B
 004D551B    lea         edx,[ebp-14]
 004D551E    mov         eax,dword ptr [ebp-4]
 004D5521    call        004D48AC
 004D5526    mov         eax,dword ptr [ebp-14]
 004D5529    mov         edx,dword ptr [ebp-0C]
 004D552C    mov         al,byte ptr [eax+edx]
 004D552F    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D5535    and         eax,0FF
 004D553A    bt          dword ptr [edx],eax
>004D553D    jae         004D556B
 004D553F    cmp         word ptr [ebp-6],25
>004D5544    jne         004D5556
 004D5546    mov         edx,dword ptr [ebp-0C]
 004D5549    mov         eax,dword ptr [ebp-4]
 004D554C    call        004D567C
>004D5551    jmp         004D5604
 004D5556    mov         ecx,2
 004D555B    mov         edx,dword ptr [ebp-0C]
 004D555E    mov         eax,dword ptr [ebp-4]
 004D5561    call        004D562C
>004D5566    jmp         004D5604
 004D556B    mov         eax,dword ptr [ebp-10]
 004D556E    mov         edx,dword ptr [ebp-4]
 004D5571    cmp         eax,dword ptr [edx+230]
>004D5577    jne         004D5582
 004D5579    mov         eax,dword ptr [ebp-4]
 004D557C    dec         dword ptr [eax+230]
 004D5582    mov         eax,dword ptr [ebp-4]
 004D5585    mov         edx,dword ptr [eax+230]
 004D558B    mov         eax,dword ptr [ebp-4]
 004D558E    call        004D4EC8
>004D5593    jmp         004D5604
 004D5595    cmp         word ptr [ebp-6],25
>004D559A    jne         004D55A9
 004D559C    mov         edx,dword ptr [ebp-0C]
 004D559F    mov         eax,dword ptr [ebp-4]
 004D55A2    call        004D567C
>004D55A7    jmp         004D5604
 004D55A9    mov         eax,dword ptr [ebp-10]
 004D55AC    cmp         eax,dword ptr [ebp-0C]
>004D55AF    jne         004D55BE
 004D55B1    mov         edx,dword ptr [ebp-0C]
 004D55B4    mov         eax,dword ptr [ebp-4]
 004D55B7    call        004D4EC8
>004D55BC    jmp         004D5604
 004D55BE    lea         edx,[ebp-18]
 004D55C1    mov         eax,dword ptr [ebp-4]
 004D55C4    call        004D48AC
 004D55C9    mov         eax,dword ptr [ebp-18]
 004D55CC    mov         edx,dword ptr [ebp-0C]
 004D55CF    mov         al,byte ptr [eax+edx]
 004D55D2    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D55D8    and         eax,0FF
 004D55DD    bt          dword ptr [edx],eax
>004D55E0    jae         004D55F4
 004D55E2    mov         ecx,2
 004D55E7    mov         edx,dword ptr [ebp-0C]
 004D55EA    mov         eax,dword ptr [ebp-4]
 004D55ED    call        004D562C
>004D55F2    jmp         004D5604
 004D55F4    mov         ecx,1
 004D55F9    mov         edx,dword ptr [ebp-0C]
 004D55FC    mov         eax,dword ptr [ebp-4]
 004D55FF    call        004D562C
 004D5604    xor         eax,eax
 004D5606    pop         edx
 004D5607    pop         ecx
 004D5608    pop         ecx
 004D5609    mov         dword ptr fs:[eax],edx
 004D560C    push        4D5626
 004D5611    lea         eax,[ebp-18]
 004D5614    mov         edx,2
 004D5619    call        @LStrArrayClr
 004D561E    ret
>004D561F    jmp         @HandleFinally
>004D5624    jmp         004D5611
 004D5626    pop         ebx
 004D5627    mov         esp,ebp
 004D5629    pop         ebp
 004D562A    ret
end;*}

//004D562C
{*procedure sub_004D562C(?:TCustomMaskEdit; ?:?; ?:?);
begin
 004D562C    push        ebp
 004D562D    mov         ebp,esp
 004D562F    add         esp,0FFFFFFF0
 004D5632    mov         dword ptr [ebp-0C],ecx
 004D5635    mov         dword ptr [ebp-8],edx
 004D5638    mov         dword ptr [ebp-4],eax
 004D563B    mov         eax,dword ptr [ebp-8]
 004D563E    add         eax,dword ptr [ebp-0C]
 004D5641    mov         dword ptr [ebp-10],eax
 004D5644    mov         edx,dword ptr [ebp-10]
 004D5647    mov         eax,dword ptr [ebp-4]
 004D564A    call        004D56B0
 004D564F    mov         dword ptr [ebp-10],eax
 004D5652    mov         edx,dword ptr [ebp-10]
 004D5655    mov         eax,dword ptr [ebp-4]
 004D5658    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D565E    call        004D3E80
 004D5663    test        al,al
>004D5665    je          004D566D
 004D5667    mov         eax,dword ptr [ebp-8]
 004D566A    mov         dword ptr [ebp-10],eax
 004D566D    mov         edx,dword ptr [ebp-10]
 004D5670    mov         eax,dword ptr [ebp-4]
 004D5673    call        004D4EC8
 004D5678    mov         esp,ebp
 004D567A    pop         ebp
 004D567B    ret
end;*}

//004D567C
{*procedure sub_004D567C(?:TCustomMaskEdit; ?:?);
begin
 004D567C    push        ebp
 004D567D    mov         ebp,esp
 004D567F    add         esp,0FFFFFFF4
 004D5682    mov         dword ptr [ebp-8],edx
 004D5685    mov         dword ptr [ebp-4],eax
 004D5688    mov         eax,dword ptr [ebp-8]
 004D568B    mov         dword ptr [ebp-0C],eax
 004D568E    dec         dword ptr [ebp-0C]
 004D5691    mov         edx,dword ptr [ebp-0C]
 004D5694    mov         eax,dword ptr [ebp-4]
 004D5697    call        004D56F4
 004D569C    mov         dword ptr [ebp-0C],eax
 004D569F    mov         edx,dword ptr [ebp-0C]
 004D56A2    mov         eax,dword ptr [ebp-4]
 004D56A5    call        004D4EC8
 004D56AA    mov         esp,ebp
 004D56AC    pop         ebp
 004D56AD    ret
end;*}

//004D56B0
{*function sub_004D56B0(?:TCustomMaskEdit; ?:?):?;
begin
 004D56B0    push        ebp
 004D56B1    mov         ebp,esp
 004D56B3    add         esp,0FFFFFFF4
 004D56B6    mov         dword ptr [ebp-8],edx
 004D56B9    mov         dword ptr [ebp-4],eax
 004D56BC    mov         eax,dword ptr [ebp-8]
 004D56BF    mov         dword ptr [ebp-0C],eax
>004D56C2    jmp         004D56C7
 004D56C4    inc         dword ptr [ebp-0C]
 004D56C7    mov         eax,dword ptr [ebp-0C]
 004D56CA    mov         edx,dword ptr [ebp-4]
 004D56CD    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>004D56D3    jge         004D56EA
 004D56D5    mov         edx,dword ptr [ebp-0C]
 004D56D8    mov         eax,dword ptr [ebp-4]
 004D56DB    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D56E1    call        004D3E80
 004D56E6    test        al,al
>004D56E8    jne         004D56C4
 004D56EA    mov         eax,dword ptr [ebp-0C]
 004D56ED    mov         esp,ebp
 004D56EF    pop         ebp
 004D56F0    ret
end;*}

//004D56F4
{*function sub_004D56F4(?:?; ?:?):?;
begin
 004D56F4    push        ebp
 004D56F5    mov         ebp,esp
 004D56F7    add         esp,0FFFFFFF4
 004D56FA    mov         dword ptr [ebp-8],edx
 004D56FD    mov         dword ptr [ebp-4],eax
 004D5700    mov         eax,dword ptr [ebp-8]
 004D5703    mov         dword ptr [ebp-0C],eax
>004D5706    jmp         004D570B
 004D5708    dec         dword ptr [ebp-0C]
 004D570B    cmp         dword ptr [ebp-0C],0
>004D570F    jl          004D5726
 004D5711    mov         edx,dword ptr [ebp-0C]
 004D5714    mov         eax,dword ptr [ebp-4]
 004D5717    mov         eax,dword ptr [eax+220]
 004D571D    call        004D3E80
 004D5722    test        al,al
>004D5724    jne         004D5708
 004D5726    cmp         dword ptr [ebp-0C],0
>004D572A    jge         004D573A
 004D572C    mov         edx,dword ptr [ebp-0C]
 004D572F    mov         eax,dword ptr [ebp-4]
 004D5732    call        004D56B0
 004D5737    mov         dword ptr [ebp-0C],eax
 004D573A    mov         eax,dword ptr [ebp-0C]
 004D573D    mov         esp,ebp
 004D573F    pop         ebp
 004D5740    ret
end;*}

//004D5744
{*procedure sub_004D5744(?:?; ?:?; ?:?);
begin
 004D5744    push        ebp
 004D5745    mov         ebp,esp
 004D5747    add         esp,0FFFFFFF0
 004D574A    mov         byte ptr [ebp-7],cl
 004D574D    mov         word ptr [ebp-6],dx
 004D5751    mov         dword ptr [ebp-4],eax
 004D5754    lea         ecx,[ebp-10]
 004D5757    lea         edx,[ebp-0C]
 004D575A    mov         eax,dword ptr [ebp-4]
 004D575D    call        004D4E68
 004D5762    cmp         word ptr [ebp-6],24
>004D5767    jne         004D57BB
 004D5769    test        byte ptr [ebp-7],1
>004D576D    je          004D57A4
 004D576F    mov         eax,dword ptr [ebp-0C]
 004D5772    mov         edx,dword ptr [ebp-4]
 004D5775    cmp         eax,dword ptr [edx+230]
>004D577B    je          004D578D
 004D577D    mov         eax,dword ptr [ebp-0C]
 004D5780    inc         eax
 004D5781    cmp         eax,dword ptr [ebp-10]
>004D5784    je          004D578D
 004D5786    mov         eax,dword ptr [ebp-0C]
 004D5789    inc         eax
 004D578A    mov         dword ptr [ebp-10],eax
 004D578D    mov         ecx,dword ptr [ebp-10]
 004D5790    xor         edx,edx
 004D5792    mov         eax,dword ptr [ebp-4]
 004D5795    call        004D4E98
 004D579A    mov         eax,dword ptr [ebp-4]
 004D579D    call        004D5160
>004D57A2    jmp         004D57AE
 004D57A4    xor         edx,edx
 004D57A6    mov         eax,dword ptr [ebp-4]
 004D57A9    call        004D4EC8
 004D57AE    mov         eax,dword ptr [ebp-4]
 004D57B1    xor         edx,edx
 004D57B3    mov         dword ptr [eax+230],edx
>004D57B9    jmp         004D5820
 004D57BB    test        byte ptr [ebp-7],1
>004D57BF    je          004D57FD
 004D57C1    mov         eax,dword ptr [ebp-10]
 004D57C4    mov         edx,dword ptr [ebp-4]
 004D57C7    cmp         eax,dword ptr [edx+230]
>004D57CD    je          004D57DF
 004D57CF    mov         eax,dword ptr [ebp-0C]
 004D57D2    inc         eax
 004D57D3    cmp         eax,dword ptr [ebp-10]
>004D57D6    je          004D57DF
 004D57D8    mov         eax,dword ptr [ebp-10]
 004D57DB    dec         eax
 004D57DC    mov         dword ptr [ebp-0C],eax
 004D57DF    mov         eax,dword ptr [ebp-4]
 004D57E2    mov         ecx,dword ptr [eax+228]
 004D57E8    mov         edx,dword ptr [ebp-0C]
 004D57EB    mov         eax,dword ptr [ebp-4]
 004D57EE    call        004D4E98
 004D57F3    mov         eax,dword ptr [ebp-4]
 004D57F6    call        004D5160
>004D57FB    jmp         004D580E
 004D57FD    mov         eax,dword ptr [ebp-4]
 004D5800    mov         edx,dword ptr [eax+228]
 004D5806    mov         eax,dword ptr [ebp-4]
 004D5809    call        004D4EC8
 004D580E    mov         eax,dword ptr [ebp-4]
 004D5811    mov         eax,dword ptr [eax+228]
 004D5817    mov         edx,dword ptr [ebp-4]
 004D581A    mov         dword ptr [edx+230],eax
 004D5820    mov         esp,ebp
 004D5822    pop         ebp
 004D5823    ret
end;*}

//004D5824
{*procedure sub_004D5824(?:TCustomMaskEdit; ?:?);
begin
 004D5824    push        ebp
 004D5825    mov         ebp,esp
 004D5827    add         esp,0FFFFFFE8
 004D582A    xor         ecx,ecx
 004D582C    mov         dword ptr [ebp-18],ecx
 004D582F    mov         word ptr [ebp-6],dx
 004D5833    mov         dword ptr [ebp-4],eax
 004D5836    xor         eax,eax
 004D5838    push        ebp
 004D5839    push        4D5952
 004D583E    push        dword ptr fs:[eax]
 004D5841    mov         dword ptr fs:[eax],esp
 004D5844    mov         eax,dword ptr [ebp-4]
 004D5847    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>004D584E    jne         004D593C
 004D5854    lea         ecx,[ebp-10]
 004D5857    lea         edx,[ebp-0C]
 004D585A    mov         eax,dword ptr [ebp-4]
 004D585D    call        004D4E68
 004D5862    mov         eax,dword ptr [ebp-10]
 004D5865    sub         eax,dword ptr [ebp-0C]
 004D5868    dec         eax
>004D5869    jg          004D589D
 004D586B    cmp         word ptr [ebp-6],8
>004D5870    jne         004D589D
 004D5872    mov         eax,dword ptr [ebp-0C]
 004D5875    mov         dword ptr [ebp-14],eax
 004D5878    mov         edx,dword ptr [ebp-0C]
 004D587B    mov         eax,dword ptr [ebp-4]
 004D587E    call        004D567C
 004D5883    lea         ecx,[ebp-10]
 004D5886    lea         edx,[ebp-0C]
 004D5889    mov         eax,dword ptr [ebp-4]
 004D588C    call        004D4E68
 004D5891    mov         eax,dword ptr [ebp-0C]
 004D5894    cmp         eax,dword ptr [ebp-14]
>004D5897    je          004D593C
 004D589D    mov         eax,dword ptr [ebp-10]
 004D58A0    sub         eax,dword ptr [ebp-0C]
 004D58A3    dec         eax
>004D58A4    jl          004D593C
 004D58AA    lea         edx,[ebp-18]
 004D58AD    mov         eax,dword ptr [ebp-4]
 004D58B0    call        004D48AC
 004D58B5    mov         eax,dword ptr [ebp-10]
 004D58B8    sub         eax,dword ptr [ebp-0C]
 004D58BB    push        eax
 004D58BC    lea         edx,[ebp-18]
 004D58BF    mov         ecx,dword ptr [ebp-0C]
 004D58C2    mov         eax,dword ptr [ebp-4]
 004D58C5    call        004D648C
 004D58CA    lea         eax,[ebp-18]
 004D58CD    push        eax
 004D58CE    mov         ecx,dword ptr [ebp-10]
 004D58D1    sub         ecx,dword ptr [ebp-0C]
 004D58D4    mov         edx,dword ptr [ebp-0C]
 004D58D7    inc         edx
 004D58D8    mov         eax,dword ptr [ebp-18]
 004D58DB    call        @LStrCopy
 004D58E0    mov         eax,dword ptr [ebp-18]
 004D58E3    call        @LStrToPChar
 004D58E8    push        eax
 004D58E9    push        0
 004D58EB    push        0C2
 004D58F0    mov         eax,dword ptr [ebp-4]
 004D58F3    call        TWinControl.GetHandle
 004D58F8    push        eax
 004D58F9    call        user32.SendMessageA
 004D58FE    mov         eax,dword ptr [ebp-10]
 004D5901    sub         eax,dword ptr [ebp-0C]
 004D5904    dec         eax
>004D5905    je          004D5922
 004D5907    mov         edx,dword ptr [ebp-0C]
 004D590A    mov         eax,dword ptr [ebp-4]
 004D590D    call        004D56B0
 004D5912    mov         dword ptr [ebp-0C],eax
 004D5915    mov         edx,dword ptr [ebp-0C]
 004D5918    mov         eax,dword ptr [ebp-4]
 004D591B    call        004D4EC8
>004D5920    jmp         004D593C
 004D5922    lea         ecx,[ebp-10]
 004D5925    lea         edx,[ebp-0C]
 004D5928    mov         eax,dword ptr [ebp-4]
 004D592B    call        004D4E68
 004D5930    mov         edx,dword ptr [ebp-0C]
 004D5933    dec         edx
 004D5934    mov         eax,dword ptr [ebp-4]
 004D5937    call        004D4EC8
 004D593C    xor         eax,eax
 004D593E    pop         edx
 004D593F    pop         ecx
 004D5940    pop         ecx
 004D5941    mov         dword ptr fs:[eax],edx
 004D5944    push        4D5959
 004D5949    lea         eax,[ebp-18]
 004D594C    call        @LStrClr
 004D5951    ret
>004D5952    jmp         @HandleFinally
>004D5957    jmp         004D5949
 004D5959    mov         esp,ebp
 004D595B    pop         ebp
 004D595C    ret
end;*}

//004D5960
{*procedure TCustomMaskEdit.CMEnter(?:?);
begin
 004D5960    push        ebp
 004D5961    mov         ebp,esp
 004D5963    add         esp,0FFFFFFF4
 004D5966    xor         ecx,ecx
 004D5968    mov         dword ptr [ebp-0C],ecx
 004D596B    mov         dword ptr [ebp-8],edx
 004D596E    mov         dword ptr [ebp-4],eax
 004D5971    xor         eax,eax
 004D5973    push        ebp
 004D5974    push        4D59FB
 004D5979    push        dword ptr fs:[eax]
 004D597C    mov         dword ptr fs:[eax],esp
 004D597F    mov         eax,dword ptr [ebp-4]
 004D5982    call        004D4C20
 004D5987    test        al,al
>004D5989    je          004D59DA
 004D598B    mov         eax,dword ptr [ebp-4]
 004D598E    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>004D5992    jne         004D59DA
 004D5994    mov         eax,dword ptr [ebp-4]
 004D5997    test        byte ptr [eax+22D],2;TCustomMaskEdit.FMaskState:TMaskedState
>004D599E    jne         004D59C6
 004D59A0    lea         edx,[ebp-0C]
 004D59A3    mov         eax,dword ptr [ebp-4]
 004D59A6    call        004D48AC
 004D59AB    mov         edx,dword ptr [ebp-0C]
 004D59AE    mov         eax,dword ptr [ebp-4]
 004D59B1    add         eax,238;TCustomMaskEdit.FOldValue:String
 004D59B6    call        @LStrAsg
 004D59BB    mov         edx,dword ptr [ebp-8]
 004D59BE    mov         eax,dword ptr [ebp-4]
 004D59C1    call        TCustomEdit.CMEnter
 004D59C6    mov         eax,dword ptr [ebp-4]
 004D59C9    and         byte ptr [eax+22D],0FD;TCustomMaskEdit.FMaskState:TMaskedState
 004D59D0    mov         eax,dword ptr [ebp-4]
 004D59D3    call        004D5160
>004D59D8    jmp         004D59E5
 004D59DA    mov         edx,dword ptr [ebp-8]
 004D59DD    mov         eax,dword ptr [ebp-4]
 004D59E0    call        TCustomEdit.CMEnter
 004D59E5    xor         eax,eax
 004D59E7    pop         edx
 004D59E8    pop         ecx
 004D59E9    pop         ecx
 004D59EA    mov         dword ptr fs:[eax],edx
 004D59ED    push        4D5A02
 004D59F2    lea         eax,[ebp-0C]
 004D59F5    call        @LStrClr
 004D59FA    ret
>004D59FB    jmp         @HandleFinally
>004D5A00    jmp         004D59F2
 004D5A02    mov         esp,ebp
 004D5A04    pop         ebp
 004D5A05    ret
end;*}

//004D5A08
{*procedure TCustomMaskEdit.CMTextChanged(?:?);
begin
 004D5A08    push        ebp
 004D5A09    mov         ebp,esp
 004D5A0B    add         esp,0FFFFFFE8
 004D5A0E    xor         ecx,ecx
 004D5A10    mov         dword ptr [ebp-18],ecx
 004D5A13    mov         dword ptr [ebp-8],edx
 004D5A16    mov         dword ptr [ebp-4],eax
 004D5A19    xor         eax,eax
 004D5A1B    push        ebp
 004D5A1C    push        4D5A9E
 004D5A21    push        dword ptr fs:[eax]
 004D5A24    mov         dword ptr fs:[eax],esp
 004D5A27    mov         edx,dword ptr [ebp-8]
 004D5A2A    mov         eax,dword ptr [ebp-4]
 004D5A2D    call        TCustomEdit.CMTextChanged
 004D5A32    lea         edx,[ebp-18]
 004D5A35    mov         eax,dword ptr [ebp-4]
 004D5A38    call        004D48AC
 004D5A3D    mov         edx,dword ptr [ebp-18]
 004D5A40    mov         eax,dword ptr [ebp-4]
 004D5A43    add         eax,238;TCustomMaskEdit.FOldValue:String
 004D5A48    call        @LStrAsg
 004D5A4D    mov         eax,dword ptr [ebp-4]
 004D5A50    call        TWinControl.HandleAllocated
 004D5A55    test        al,al
>004D5A57    je          004D5A88
 004D5A59    lea         ecx,[ebp-10]
 004D5A5C    lea         edx,[ebp-0C]
 004D5A5F    mov         eax,dword ptr [ebp-4]
 004D5A62    call        004D4E68
 004D5A67    mov         edx,dword ptr [ebp-0C]
 004D5A6A    mov         eax,dword ptr [ebp-4]
 004D5A6D    call        004D56B0
 004D5A72    mov         dword ptr [ebp-14],eax
 004D5A75    mov         eax,dword ptr [ebp-14]
 004D5A78    cmp         eax,dword ptr [ebp-0C]
>004D5A7B    je          004D5A88
 004D5A7D    mov         edx,dword ptr [ebp-14]
 004D5A80    mov         eax,dword ptr [ebp-4]
 004D5A83    call        004D4EC8
 004D5A88    xor         eax,eax
 004D5A8A    pop         edx
 004D5A8B    pop         ecx
 004D5A8C    pop         ecx
 004D5A8D    mov         dword ptr fs:[eax],edx
 004D5A90    push        4D5AA5
 004D5A95    lea         eax,[ebp-18]
 004D5A98    call        @LStrClr
 004D5A9D    ret
>004D5A9E    jmp         @HandleFinally
>004D5AA3    jmp         004D5A95
 004D5AA5    mov         esp,ebp
 004D5AA7    pop         ebp
 004D5AA8    ret
end;*}

//004D5AAC
{*procedure TCustomMaskEdit.CMWantSpecialKey(?:?);
begin
 004D5AAC    push        ebp
 004D5AAD    mov         ebp,esp
 004D5AAF    add         esp,0FFFFFFF8
 004D5AB2    mov         dword ptr [ebp-8],edx
 004D5AB5    mov         dword ptr [ebp-4],eax
 004D5AB8    mov         edx,dword ptr [ebp-8]
 004D5ABB    mov         eax,dword ptr [ebp-4]
 004D5ABE    mov         ecx,dword ptr [eax]
 004D5AC0    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004D5AC3    mov         eax,dword ptr [ebp-8]
 004D5AC6    cmp         word ptr [eax+4],1B
>004D5ACB    jne         004D5AEF
 004D5ACD    mov         eax,dword ptr [ebp-4]
 004D5AD0    call        004D4C20
 004D5AD5    test        al,al
>004D5AD7    je          004D5AEF
 004D5AD9    mov         eax,dword ptr [ebp-4]
 004D5ADC    call        TCustomEdit.GetModified
 004D5AE1    test        al,al
>004D5AE3    je          004D5AEF
 004D5AE5    mov         eax,dword ptr [ebp-8]
 004D5AE8    mov         dword ptr [eax+0C],1
 004D5AEF    pop         ecx
 004D5AF0    pop         ecx
 004D5AF1    pop         ebp
 004D5AF2    ret
end;*}

//004D5AF4
{*procedure TCustomMaskEdit.CMExit(?:?);
begin
 004D5AF4    push        ebp
 004D5AF5    mov         ebp,esp
 004D5AF7    add         esp,0FFFFFFF8
 004D5AFA    mov         dword ptr [ebp-8],edx
 004D5AFD    mov         dword ptr [ebp-4],eax
 004D5B00    mov         eax,dword ptr [ebp-4]
 004D5B03    call        004D4C20
 004D5B08    test        al,al
>004D5B0A    je          004D5B28
 004D5B0C    mov         eax,dword ptr [ebp-4]
 004D5B0F    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>004D5B13    jne         004D5B28
 004D5B15    mov         eax,dword ptr [ebp-4]
 004D5B18    mov         edx,dword ptr [eax]
 004D5B1A    call        dword ptr [edx+0F8];TCustomMaskEdit.sub_004D5B38
 004D5B20    mov         eax,dword ptr [ebp-4]
 004D5B23    call        004D5160
 004D5B28    mov         edx,dword ptr [ebp-8]
 004D5B2B    mov         eax,dword ptr [ebp-4]
 004D5B2E    call        TWinControl.CMExit
 004D5B33    pop         ecx
 004D5B34    pop         ecx
 004D5B35    pop         ebp
 004D5B36    ret
end;*}

//004D5B38
procedure sub_004D5B38;
begin
{*
 004D5B38    push        ebp
 004D5B39    mov         ebp,esp
 004D5B3B    add         esp,0FFFFFFF4
 004D5B3E    push        ebx
 004D5B3F    xor         edx,edx
 004D5B41    mov         dword ptr [ebp-8],edx
 004D5B44    mov         dword ptr [ebp-4],eax
 004D5B47    xor         eax,eax
 004D5B49    push        ebp
 004D5B4A    push        4D5BD7
 004D5B4F    push        dword ptr fs:[eax]
 004D5B52    mov         dword ptr fs:[eax],esp
 004D5B55    lea         edx,[ebp-8]
 004D5B58    mov         eax,dword ptr [ebp-4]
 004D5B5B    call        004D48AC
 004D5B60    mov         eax,dword ptr [ebp-4]
 004D5B63    call        004D4C20
 004D5B68    test        al,al
>004D5B6A    je          004D5BC1
 004D5B6C    mov         eax,dword ptr [ebp-4]
 004D5B6F    call        TCustomEdit.GetModified
 004D5B74    test        al,al
>004D5B76    je          004D5BC1
 004D5B78    lea         ecx,[ebp-0C]
 004D5B7B    mov         edx,dword ptr [ebp-8]
 004D5B7E    mov         eax,dword ptr [ebp-4]
 004D5B81    mov         ebx,dword ptr [eax]
 004D5B83    call        dword ptr [ebx+0F0];TCustomMaskEdit.sub_004D63C8
 004D5B89    test        al,al
>004D5B8B    jne         004D5BC1
 004D5B8D    mov         eax,dword ptr [ebp-4]
 004D5B90    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>004D5B94    jne         004D5BAB
 004D5B96    mov         eax,dword ptr [ebp-4]
 004D5B99    or          byte ptr [eax+22D],2;TCustomMaskEdit.FMaskState:TMaskedState
 004D5BA0    mov         eax,dword ptr [ebp-4]
 004D5BA3    mov         edx,dword ptr [eax]
 004D5BA5    call        dword ptr [edx+0C4];TCustomMaskEdit.sub_0048C028
 004D5BAB    mov         edx,dword ptr [ebp-0C]
 004D5BAE    mov         eax,dword ptr [ebp-4]
 004D5BB1    call        004D4EC8
 004D5BB6    mov         eax,dword ptr [ebp-4]
 004D5BB9    mov         edx,dword ptr [eax]
 004D5BBB    call        dword ptr [edx+0F4];TCustomMaskEdit.sub_004D5BE4
 004D5BC1    xor         eax,eax
 004D5BC3    pop         edx
 004D5BC4    pop         ecx
 004D5BC5    pop         ecx
 004D5BC6    mov         dword ptr fs:[eax],edx
 004D5BC9    push        4D5BDE
 004D5BCE    lea         eax,[ebp-8]
 004D5BD1    call        @LStrClr
 004D5BD6    ret
>004D5BD7    jmp         @HandleFinally
>004D5BDC    jmp         004D5BCE
 004D5BDE    pop         ebx
 004D5BDF    mov         esp,ebp
 004D5BE1    pop         ebp
 004D5BE2    ret
*}
end;

//004D5BE4
procedure sub_004D5BE4;
begin
{*
 004D5BE4    push        ebp
 004D5BE5    mov         ebp,esp
 004D5BE7    add         esp,0FFFFFFF4
 004D5BEA    mov         dword ptr [ebp-4],eax
 004D5BED    push        0
 004D5BEF    call        user32.MessageBeep
 004D5BF4    mov         eax,dword ptr [ebp-4]
 004D5BF7    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D5BFD    mov         dword ptr [ebp-0C],eax
 004D5C00    mov         byte ptr [ebp-8],0B
 004D5C04    lea         eax,[ebp-0C]
 004D5C07    push        eax
 004D5C08    push        0
 004D5C0A    mov         ecx,dword ptr ds:[56E584];^SMaskEditErr:TResStringRec
 004D5C10    mov         dl,1
 004D5C12    mov         eax,[004D42E0];EDBEditError
 004D5C17    call        Exception.CreateResFmt;EDBEditError.Create
 004D5C1C    call        @RaiseExcept
 004D5C21    mov         esp,ebp
 004D5C23    pop         ebp
 004D5C24    ret
*}
end;

//004D5C28
{*procedure sub_004D5C28(?:?; ?:AnsiString; ?:?; ?:?);
begin
 004D5C28    push        ebp
 004D5C29    mov         ebp,esp
 004D5C2B    add         esp,0FFFFFFF4
 004D5C2E    mov         byte ptr [ebp-9],cl
 004D5C31    mov         dword ptr [ebp-8],edx
 004D5C34    mov         dword ptr [ebp-4],eax
 004D5C37    cmp         byte ptr [ebp-9],0
>004D5C3B    jne         004D5C56
 004D5C3D    mov         eax,dword ptr [ebp+8]
 004D5C40    push        eax
 004D5C41    mov         cl,20
 004D5C43    mov         edx,dword ptr [ebp-8]
 004D5C46    mov         eax,dword ptr [ebp-4]
 004D5C49    mov         eax,dword ptr [eax+220]
 004D5C4F    call        004D3964
>004D5C54    jmp         004D5C74
 004D5C56    mov         eax,dword ptr [ebp+8]
 004D5C59    push        eax
 004D5C5A    mov         eax,dword ptr [ebp-4]
 004D5C5D    mov         cl,byte ptr [eax+224]
 004D5C63    mov         edx,dword ptr [ebp-8]
 004D5C66    mov         eax,dword ptr [ebp-4]
 004D5C69    mov         eax,dword ptr [eax+220]
 004D5C6F    call        004D3964
 004D5C74    mov         esp,ebp
 004D5C76    pop         ebp
 004D5C77    ret         4
end;*}

//004D5C7C
{*procedure sub_004D5C7C(?:?; ?:?; ?:?);
begin
 004D5C7C    push        ebp
 004D5C7D    mov         ebp,esp
 004D5C7F    add         esp,0FFFFFFD4
 004D5C82    push        ebx
 004D5C83    xor         ebx,ebx
 004D5C85    mov         dword ptr [ebp-28],ebx
 004D5C88    mov         dword ptr [ebp-2C],ebx
 004D5C8B    mov         dword ptr [ebp-0C],ecx
 004D5C8E    mov         dword ptr [ebp-8],edx
 004D5C91    mov         dword ptr [ebp-4],eax
 004D5C94    xor         eax,eax
 004D5C96    push        ebp
 004D5C97    push        4D5EA2
 004D5C9C    push        dword ptr fs:[eax]
 004D5C9F    mov         dword ptr fs:[eax],esp
 004D5CA2    mov         dword ptr [ebp-18],1
 004D5CA9    mov         eax,dword ptr [ebp-0C]
 004D5CAC    mov         edx,dword ptr [ebp-8]
 004D5CAF    call        @LStrAsg
 004D5CB4    mov         eax,dword ptr [ebp-4]
 004D5CB7    mov         eax,dword ptr [eax+220]
 004D5CBD    call        @LStrLen
 004D5CC2    test        eax,eax
>004D5CC4    jle         004D5D4C
 004D5CCA    mov         dword ptr [ebp-24],eax
 004D5CCD    mov         dword ptr [ebp-1C],1
 004D5CD4    mov         eax,dword ptr [ebp-4]
 004D5CD7    mov         eax,dword ptr [eax+220]
 004D5CDD    mov         edx,dword ptr [ebp-1C]
 004D5CE0    call        004D36E4
 004D5CE5    mov         byte ptr [ebp-1D],al
 004D5CE8    mov         al,byte ptr [ebp-1D]
 004D5CEB    dec         eax
 004D5CEC    sub         al,2
>004D5CEE    jae         004D5D38
 004D5CF0    lea         eax,[ebp-28]
 004D5CF3    push        eax
 004D5CF4    mov         eax,dword ptr [ebp-0C]
 004D5CF7    mov         eax,dword ptr [eax]
 004D5CF9    call        @LStrLen
 004D5CFE    mov         ecx,eax
 004D5D00    sub         ecx,dword ptr [ebp-18]
 004D5D03    mov         edx,dword ptr [ebp-18]
 004D5D06    inc         edx
 004D5D07    mov         eax,dword ptr [ebp-0C]
 004D5D0A    mov         eax,dword ptr [eax]
 004D5D0C    call        @LStrCopy
 004D5D11    mov         eax,dword ptr [ebp-28]
 004D5D14    push        eax
 004D5D15    lea         eax,[ebp-2C]
 004D5D18    push        eax
 004D5D19    mov         ecx,dword ptr [ebp-18]
 004D5D1C    dec         ecx
 004D5D1D    mov         eax,dword ptr [ebp-0C]
 004D5D20    mov         eax,dword ptr [eax]
 004D5D22    mov         edx,1
 004D5D27    call        @LStrCopy
 004D5D2C    mov         edx,dword ptr [ebp-2C]
 004D5D2F    mov         eax,dword ptr [ebp-0C]
 004D5D32    pop         ecx
 004D5D33    call        @LStrCat3
 004D5D38    mov         al,byte ptr [ebp-1D]
 004D5D3B    add         al,0FC
 004D5D3D    sub         al,2
>004D5D3F    jae         004D5D44
 004D5D41    inc         dword ptr [ebp-18]
 004D5D44    inc         dword ptr [ebp-1C]
 004D5D47    dec         dword ptr [ebp-24]
>004D5D4A    jne         004D5CD4
 004D5D4C    mov         eax,dword ptr [ebp-4]
 004D5D4F    mov         eax,dword ptr [eax+220]
 004D5D55    mov         edx,1
 004D5D5A    call        004D3884
 004D5D5F    mov         byte ptr [ebp-1E],al
 004D5D62    test        byte ptr [ebp-1E],1
>004D5D66    je          004D5DD2
 004D5D68    mov         dword ptr [ebp-18],1
 004D5D6F    mov         eax,dword ptr [ebp-0C]
 004D5D72    mov         eax,dword ptr [eax]
 004D5D74    call        @LStrLen
 004D5D79    test        eax,eax
>004D5D7B    jle         004D5DA9
 004D5D7D    mov         dword ptr [ebp-24],eax
 004D5D80    mov         dword ptr [ebp-10],1
 004D5D87    mov         eax,dword ptr [ebp-0C]
 004D5D8A    mov         eax,dword ptr [eax]
 004D5D8C    mov         edx,dword ptr [ebp-10]
 004D5D8F    mov         al,byte ptr [eax+edx-1]
 004D5D93    mov         edx,dword ptr [ebp-4]
 004D5D96    cmp         al,byte ptr [edx+224]
>004D5D9C    jne         004D5DA9
 004D5D9E    inc         dword ptr [ebp-18]
 004D5DA1    inc         dword ptr [ebp-10]
 004D5DA4    dec         dword ptr [ebp-24]
>004D5DA7    jne         004D5D87
 004D5DA9    cmp         dword ptr [ebp-18],1
>004D5DAD    je          004D5E26
 004D5DAF    mov         eax,dword ptr [ebp-0C]
 004D5DB2    push        eax
 004D5DB3    mov         eax,dword ptr [ebp-0C]
 004D5DB6    mov         eax,dword ptr [eax]
 004D5DB8    call        @LStrLen
 004D5DBD    mov         ecx,eax
 004D5DBF    sub         ecx,dword ptr [ebp-18]
 004D5DC2    inc         ecx
 004D5DC3    mov         eax,dword ptr [ebp-0C]
 004D5DC6    mov         eax,dword ptr [eax]
 004D5DC8    mov         edx,dword ptr [ebp-18]
 004D5DCB    call        @LStrCopy
>004D5DD0    jmp         004D5E26
 004D5DD2    mov         eax,dword ptr [ebp-0C]
 004D5DD5    mov         eax,dword ptr [eax]
 004D5DD7    call        @LStrLen
 004D5DDC    mov         dword ptr [ebp-14],eax
 004D5DDF    mov         eax,dword ptr [ebp-14]
 004D5DE2    test        eax,eax
>004D5DE4    jle         004D5E26
 004D5DE6    mov         dword ptr [ebp-24],eax
 004D5DE9    mov         dword ptr [ebp-10],1
 004D5DF0    mov         eax,dword ptr [ebp-14]
 004D5DF3    sub         eax,dword ptr [ebp-10]
 004D5DF6    mov         edx,dword ptr [ebp-0C]
 004D5DF9    mov         edx,dword ptr [edx]
 004D5DFB    mov         al,byte ptr [edx+eax]
 004D5DFE    mov         edx,dword ptr [ebp-4]
 004D5E01    cmp         al,byte ptr [edx+224]
>004D5E07    jne         004D5E26
 004D5E09    mov         eax,dword ptr [ebp-0C]
 004D5E0C    mov         eax,dword ptr [eax]
 004D5E0E    call        @LStrLen
 004D5E13    mov         edx,eax
 004D5E15    dec         edx
 004D5E16    mov         eax,dword ptr [ebp-0C]
 004D5E19    call        @LStrSetLength
 004D5E1E    inc         dword ptr [ebp-10]
 004D5E21    dec         dword ptr [ebp-24]
>004D5E24    jne         004D5DF0
 004D5E26    mov         eax,dword ptr [ebp-4]
 004D5E29    cmp         byte ptr [eax+224],20
>004D5E30    je          004D5E87
 004D5E32    mov         eax,dword ptr [ebp-0C]
 004D5E35    mov         eax,dword ptr [eax]
 004D5E37    call        @LStrLen
 004D5E3C    mov         dword ptr [ebp-14],eax
 004D5E3F    mov         eax,dword ptr [ebp-14]
 004D5E42    test        eax,eax
>004D5E44    jle         004D5E87
 004D5E46    mov         dword ptr [ebp-24],eax
 004D5E49    mov         dword ptr [ebp-10],1
 004D5E50    mov         eax,dword ptr [ebp-0C]
 004D5E53    mov         eax,dword ptr [eax]
 004D5E55    mov         edx,dword ptr [ebp-10]
 004D5E58    mov         al,byte ptr [eax+edx-1]
 004D5E5C    mov         edx,dword ptr [ebp-4]
 004D5E5F    cmp         al,byte ptr [edx+224]
>004D5E65    jne         004D5E77
 004D5E67    mov         eax,dword ptr [ebp-0C]
 004D5E6A    call        00405598
 004D5E6F    mov         edx,dword ptr [ebp-10]
 004D5E72    mov         byte ptr [eax+edx-1],20
 004D5E77    mov         eax,dword ptr [ebp-10]
 004D5E7A    cmp         eax,dword ptr [ebp-14]
>004D5E7D    jg          004D5E87
 004D5E7F    inc         dword ptr [ebp-10]
 004D5E82    dec         dword ptr [ebp-24]
>004D5E85    jne         004D5E50
 004D5E87    xor         eax,eax
 004D5E89    pop         edx
 004D5E8A    pop         ecx
 004D5E8B    pop         ecx
 004D5E8C    mov         dword ptr fs:[eax],edx
 004D5E8F    push        4D5EA9
 004D5E94    lea         eax,[ebp-2C]
 004D5E97    mov         edx,2
 004D5E9C    call        @LStrArrayClr
 004D5EA1    ret
>004D5EA2    jmp         @HandleFinally
>004D5EA7    jmp         004D5E94
 004D5EA9    pop         ebx
 004D5EAA    mov         esp,ebp
 004D5EAC    pop         ebp
 004D5EAD    ret
end;*}

//004D5EB0
{*function sub_004D5EB0(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 004D5EB0    push        ebp
 004D5EB1    mov         ebp,esp
 004D5EB3    add         esp,0FFFFFFE8
 004D5EB6    mov         dword ptr [ebp-0C],ecx
 004D5EB9    mov         dword ptr [ebp-8],edx
 004D5EBC    mov         dword ptr [ebp-4],eax
 004D5EBF    mov         byte ptr [ebp-0D],1
 004D5EC3    mov         eax,dword ptr [ebp-4]
 004D5EC6    cmp         dword ptr [eax+220],0;TCustomMaskEdit.FEditMask:TEditMask
>004D5ECD    je          004D5F65
 004D5ED3    mov         byte ptr [ebp-0D],0
 004D5ED7    mov         edx,dword ptr [ebp-0C]
 004D5EDA    mov         eax,dword ptr [ebp-4]
 004D5EDD    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D5EE3    call        004D3E00
 004D5EE8    mov         dword ptr [ebp-14],eax
 004D5EEB    cmp         dword ptr [ebp-14],0
>004D5EEF    jl          004D5F65
 004D5EF1    mov         edx,dword ptr [ebp-14]
 004D5EF4    mov         eax,dword ptr [ebp-4]
 004D5EF7    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D5EFD    call        004D36E4
 004D5F02    mov         byte ptr [ebp-15],al
 004D5F05    mov         eax,dword ptr [ebp-8]
 004D5F08    mov         al,byte ptr [eax]
 004D5F0A    mov         byte ptr [ebp-16],al
 004D5F0D    mov         edx,dword ptr [ebp-8]
 004D5F10    mov         ecx,dword ptr [ebp-14]
 004D5F13    mov         eax,dword ptr [ebp-4]
 004D5F16    call        004D60A4
 004D5F1B    mov         byte ptr [ebp-0D],al
 004D5F1E    cmp         byte ptr [ebp-0D],0
>004D5F22    jne         004D5F65
 004D5F24    mov         al,byte ptr [ebp-15]
 004D5F27    add         al,0FC
 004D5F29    sub         al,2
>004D5F2B    jae         004D5F65
 004D5F2D    mov         cl,byte ptr [ebp-16]
 004D5F30    mov         edx,dword ptr [ebp-14]
 004D5F33    mov         eax,dword ptr [ebp-4]
 004D5F36    call        004D6878
 004D5F3B    mov         dword ptr [ebp-14],eax
 004D5F3E    cmp         dword ptr [ebp-14],0
>004D5F42    jle         004D5F65
 004D5F44    mov         edx,dword ptr [ebp-14]
 004D5F47    mov         eax,dword ptr [ebp-4]
 004D5F4A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D5F50    call        004D3DA4
 004D5F55    mov         dword ptr [ebp-14],eax
 004D5F58    mov         edx,dword ptr [ebp-14]
 004D5F5B    mov         eax,dword ptr [ebp-4]
 004D5F5E    call        004D4EC8
>004D5F63    jmp         004D5F72
 004D5F65    cmp         byte ptr [ebp-0D],0
>004D5F69    jne         004D5F72
 004D5F6B    push        0
 004D5F6D    call        user32.MessageBeep
 004D5F72    mov         al,byte ptr [ebp-0D]
 004D5F75    mov         esp,ebp
 004D5F77    pop         ebp
 004D5F78    ret
end;*}

//004D5F7C
{*function sub_004D5F7C(?:?):?;
begin
 004D5F7C    push        ebp
 004D5F7D    mov         ebp,esp
 004D5F7F    push        ecx
 004D5F80    mov         byte ptr [ebp-1],al
 004D5F83    mov         eax,[0056E638];^gvar_0057196C:Integer
 004D5F88    cmp         dword ptr [eax+4],11
>004D5F8C    jne         004D5F97
 004D5F8E    mov         al,byte ptr [ebp-1]
 004D5F91    add         al,5F
 004D5F93    sub         al,3F
>004D5F95    jb          004D5F9B
 004D5F97    xor         eax,eax
>004D5F99    jmp         004D5F9D
 004D5F9B    mov         al,1
 004D5F9D    mov         byte ptr [ebp-2],al
 004D5FA0    mov         al,byte ptr [ebp-2]
 004D5FA3    pop         ecx
 004D5FA4    pop         ebp
 004D5FA5    ret
end;*}

//004D5FA8
{*function sub_004D5FA8(?:?; ?:?):?;
begin
 004D5FA8    push        ebp
 004D5FA9    mov         ebp,esp
 004D5FAB    add         esp,0FFFFFFEC
 004D5FAE    push        ebx
 004D5FAF    xor         edx,edx
 004D5FB1    mov         dword ptr [ebp-14],edx
 004D5FB4    mov         dword ptr [ebp-10],edx
 004D5FB7    mov         byte ptr [ebp-9],al
 004D5FBA    xor         eax,eax
 004D5FBC    push        ebp
 004D5FBD    push        4D6095
 004D5FC2    push        dword ptr fs:[eax]
 004D5FC5    mov         dword ptr fs:[eax],esp
 004D5FC8    mov         eax,dword ptr [ebp+8]
 004D5FCB    mov         edx,dword ptr [eax-8]
 004D5FCE    mov         eax,dword ptr [ebp+8]
 004D5FD1    mov         eax,dword ptr [eax-4]
 004D5FD4    mov         eax,dword ptr [eax+220]
 004D5FDA    call        004D3DA4
 004D5FDF    mov         dword ptr [ebp-8],eax
 004D5FE2    mov         eax,dword ptr [ebp+8]
 004D5FE5    mov         eax,dword ptr [eax-4]
 004D5FE8    mov         eax,dword ptr [eax+220]
 004D5FEE    call        @LStrLen
 004D5FF3    mov         edx,dword ptr [ebp+8]
 004D5FF6    cmp         eax,dword ptr [edx-8]
>004D5FF9    jle         004D6075
 004D5FFB    mov         eax,dword ptr [ebp+8]
 004D5FFE    mov         eax,dword ptr [eax-8]
 004D6001    mov         edx,dword ptr [ebp+8]
 004D6004    mov         edx,dword ptr [edx-4]
 004D6007    mov         edx,dword ptr [edx+220]
 004D600D    mov         al,byte ptr [edx+eax-1]
 004D6011    call        UpCase
 004D6016    mov         ebx,eax
 004D6018    mov         eax,dword ptr [ebp+8]
 004D601B    mov         eax,dword ptr [eax-8]
 004D601E    mov         edx,dword ptr [ebp+8]
 004D6021    mov         edx,dword ptr [edx-4]
 004D6024    mov         edx,dword ptr [edx+220]
 004D602A    mov         al,byte ptr [edx+eax]
 004D602D    call        UpCase
 004D6032    cmp         bl,al
>004D6034    jne         004D6075
 004D6036    lea         edx,[ebp-10]
 004D6039    mov         eax,dword ptr [ebp+8]
 004D603C    mov         eax,dword ptr [eax-4]
 004D603F    call        004D48AC
 004D6044    mov         eax,dword ptr [ebp-10]
 004D6047    mov         edx,dword ptr [ebp-8]
 004D604A    call        00411160
 004D604F    cmp         al,2
>004D6051    je          004D6075
 004D6053    lea         edx,[ebp-14]
 004D6056    mov         eax,dword ptr [ebp+8]
 004D6059    mov         eax,dword ptr [eax-4]
 004D605C    call        004D48AC
 004D6061    mov         eax,dword ptr [ebp-14]
 004D6064    mov         edx,dword ptr [ebp-8]
 004D6067    inc         edx
 004D6068    call        00411160
 004D606D    cmp         al,1
>004D606F    je          004D6075
 004D6071    xor         eax,eax
>004D6073    jmp         004D6077
 004D6075    mov         al,1
 004D6077    mov         byte ptr [ebp-1],al
 004D607A    xor         eax,eax
 004D607C    pop         edx
 004D607D    pop         ecx
 004D607E    pop         ecx
 004D607F    mov         dword ptr fs:[eax],edx
 004D6082    push        4D609C
 004D6087    lea         eax,[ebp-14]
 004D608A    mov         edx,2
 004D608F    call        @LStrArrayClr
 004D6094    ret
>004D6095    jmp         @HandleFinally
>004D609A    jmp         004D6087
 004D609C    mov         al,byte ptr [ebp-1]
 004D609F    pop         ebx
 004D60A0    mov         esp,ebp
 004D60A2    pop         ebp
 004D60A3    ret
end;*}

//004D60A4
{*function sub_004D60A4(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 004D60A4    push        ebp
 004D60A5    mov         ebp,esp
 004D60A7    add         esp,0FFFFFFD8
 004D60AA    push        ebx
 004D60AB    xor         ebx,ebx
 004D60AD    mov         dword ptr [ebp-28],ebx
 004D60B0    mov         dword ptr [ebp-24],ebx
 004D60B3    mov         dword ptr [ebp-20],ebx
 004D60B6    mov         dword ptr [ebp-1C],ebx
 004D60B9    mov         dword ptr [ebp-14],ebx
 004D60BC    mov         dword ptr [ebp-8],ecx
 004D60BF    mov         dword ptr [ebp-0C],edx
 004D60C2    mov         dword ptr [ebp-4],eax
 004D60C5    xor         eax,eax
 004D60C7    push        ebp
 004D60C8    push        4D63AA
 004D60CD    push        dword ptr fs:[eax]
 004D60D0    mov         dword ptr fs:[eax],esp
 004D60D3    mov         byte ptr [ebp-0D],1
 004D60D7    mov         eax,dword ptr [ebp-4]
 004D60DA    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D60E0    mov         edx,dword ptr [ebp-8]
 004D60E3    call        004D36E4
 004D60E8    mov         byte ptr [ebp-15],al
 004D60EB    mov         al,byte ptr [ebp-15]
 004D60EE    dec         eax
 004D60EF    sub         al,2
>004D60F1    jae         004D6112
 004D60F3    mov         eax,dword ptr [ebp-4]
 004D60F6    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D60FC    mov         edx,dword ptr [ebp-8]
 004D60FF    mov         al,byte ptr [eax+edx-1]
 004D6103    call        004D3930
 004D6108    mov         edx,dword ptr [ebp-0C]
 004D610B    mov         byte ptr [edx],al
>004D610D    jmp         004D6387
 004D6112    mov         eax,dword ptr [ebp-4]
 004D6115    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D611B    mov         edx,dword ptr [ebp-8]
 004D611E    call        004D3884
 004D6123    mov         byte ptr [ebp-0E],al
 004D6126    mov         eax,dword ptr [ebp-4]
 004D6129    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D612F    mov         edx,dword ptr [ebp-8]
 004D6132    movzx       eax,byte ptr [eax+edx-1]
 004D6137    cmp         eax,43
>004D613A    jg          004D615F
>004D613C    je          004D61E2
 004D6142    sub         eax,23
>004D6145    je          004D61A1
 004D6147    sub         eax,0D
>004D614A    je          004D6184
 004D614C    sub         eax,9
>004D614F    je          004D6184
 004D6151    sub         eax,8
>004D6154    je          004D6288
>004D615A    jmp         004D6387
 004D615F    sub         eax,4C
>004D6162    je          004D6288
 004D6168    sub         eax,15
>004D616B    je          004D6288
 004D6171    sub         eax,2
>004D6174    je          004D61E2
 004D6176    sub         eax,9
>004D6179    je          004D6288
>004D617F    jmp         004D6387
 004D6184    mov         eax,dword ptr [ebp-0C]
 004D6187    cmp         byte ptr [eax],30
>004D618A    jb          004D6198
 004D618C    mov         eax,dword ptr [ebp-0C]
 004D618F    cmp         byte ptr [eax],39
>004D6192    jbe         004D6387
 004D6198    mov         byte ptr [ebp-0D],0
>004D619C    jmp         004D6387
 004D61A1    mov         eax,dword ptr [ebp-0C]
 004D61A4    cmp         byte ptr [eax],30
>004D61A7    jb          004D61B5
 004D61A9    mov         eax,dword ptr [ebp-0C]
 004D61AC    cmp         byte ptr [eax],39
>004D61AF    jbe         004D6387
 004D61B5    mov         eax,dword ptr [ebp-0C]
 004D61B8    cmp         byte ptr [eax],20
>004D61BB    je          004D6387
 004D61C1    mov         eax,dword ptr [ebp-0C]
 004D61C4    cmp         byte ptr [eax],2B
>004D61C7    je          004D6387
 004D61CD    mov         eax,dword ptr [ebp-0C]
 004D61D0    cmp         byte ptr [eax],2D
>004D61D3    je          004D6387
 004D61D9    mov         byte ptr [ebp-0D],0
>004D61DD    jmp         004D6387
 004D61E2    mov         eax,dword ptr [ebp-0C]
 004D61E5    mov         al,byte ptr [eax]
 004D61E7    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D61ED    and         eax,0FF
 004D61F2    bt          dword ptr [edx],eax
>004D61F5    jae         004D6210
 004D61F7    push        ebp
 004D61F8    mov         eax,dword ptr [ebp-0C]
 004D61FB    mov         al,byte ptr [eax]
 004D61FD    call        004D5FA8
 004D6202    pop         ecx
 004D6203    test        al,al
>004D6205    je          004D6210
 004D6207    mov         byte ptr [ebp-0D],0
>004D620B    jmp         004D6387
 004D6210    mov         eax,dword ptr [ebp-0C]
 004D6213    mov         al,byte ptr [eax]
 004D6215    push        eax
 004D6216    call        user32.IsCharAlphaA
 004D621B    test        eax,eax
>004D621D    je          004D6387
 004D6223    lea         eax,[ebp-14]
 004D6226    mov         edx,4D63C4;' '
 004D622B    call        @LStrLAsg
 004D6230    lea         eax,[ebp-14]
 004D6233    call        00405598
 004D6238    mov         edx,dword ptr [ebp-0C]
 004D623B    mov         dl,byte ptr [edx]
 004D623D    mov         byte ptr [eax],dl
 004D623F    test        byte ptr [ebp-0E],2
>004D6243    je          004D625D
 004D6245    lea         edx,[ebp-1C]
 004D6248    mov         eax,dword ptr [ebp-14]
 004D624B    call        0040BE68
 004D6250    mov         edx,dword ptr [ebp-1C]
 004D6253    lea         eax,[ebp-14]
 004D6256    call        @LStrLAsg
>004D625B    jmp         004D6279
 004D625D    test        byte ptr [ebp-0E],4
>004D6261    je          004D6279
 004D6263    lea         edx,[ebp-20]
 004D6266    mov         eax,dword ptr [ebp-14]
 004D6269    call        0040BEB0
 004D626E    mov         edx,dword ptr [ebp-20]
 004D6271    lea         eax,[ebp-14]
 004D6274    call        @LStrLAsg
 004D6279    mov         eax,dword ptr [ebp-14]
 004D627C    mov         al,byte ptr [eax]
 004D627E    mov         edx,dword ptr [ebp-0C]
 004D6281    mov         byte ptr [edx],al
>004D6283    jmp         004D6387
 004D6288    mov         eax,dword ptr [ebp-0C]
 004D628B    mov         al,byte ptr [eax]
 004D628D    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004D6293    and         eax,0FF
 004D6298    bt          dword ptr [edx],eax
>004D629B    jae         004D62BA
 004D629D    push        ebp
 004D629E    mov         eax,dword ptr [ebp-0C]
 004D62A1    mov         al,byte ptr [eax]
 004D62A3    call        004D5FA8
 004D62A8    pop         ecx
 004D62A9    test        al,al
>004D62AB    je          004D6387
 004D62B1    mov         byte ptr [ebp-0D],0
>004D62B5    jmp         004D6387
 004D62BA    lea         eax,[ebp-14]
 004D62BD    mov         edx,4D63C4;' '
 004D62C2    call        @LStrLAsg
 004D62C7    lea         eax,[ebp-14]
 004D62CA    call        00405598
 004D62CF    mov         edx,dword ptr [ebp-0C]
 004D62D2    mov         dl,byte ptr [edx]
 004D62D4    mov         byte ptr [eax],dl
 004D62D6    push        ebp
 004D62D7    mov         eax,dword ptr [ebp-0C]
 004D62DA    mov         al,byte ptr [eax]
 004D62DC    call        004D5F7C
 004D62E1    pop         ecx
 004D62E2    test        al,al
>004D62E4    je          004D62F5
 004D62E6    mov         eax,dword ptr [ebp-14]
 004D62E9    mov         al,byte ptr [eax]
 004D62EB    mov         edx,dword ptr [ebp-0C]
 004D62EE    mov         byte ptr [edx],al
>004D62F0    jmp         004D6387
 004D62F5    mov         eax,dword ptr [ebp-0C]
 004D62F8    mov         al,byte ptr [eax]
 004D62FA    push        eax
 004D62FB    call        user32.IsCharAlphaA
 004D6300    test        eax,eax
>004D6302    jne         004D6343
 004D6304    mov         byte ptr [ebp-0D],0
 004D6308    mov         eax,dword ptr [ebp-4]
 004D630B    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D6311    mov         edx,dword ptr [ebp-8]
 004D6314    cmp         byte ptr [eax+edx-1],41
>004D6319    je          004D632E
 004D631B    mov         eax,dword ptr [ebp-4]
 004D631E    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D6324    mov         edx,dword ptr [ebp-8]
 004D6327    cmp         byte ptr [eax+edx-1],61
>004D632C    jne         004D637D
 004D632E    mov         eax,dword ptr [ebp-0C]
 004D6331    mov         al,byte ptr [eax]
 004D6333    push        eax
 004D6334    call        user32.IsCharAlphaNumericA
 004D6339    test        eax,eax
>004D633B    je          004D637D
 004D633D    mov         byte ptr [ebp-0D],1
>004D6341    jmp         004D637D
 004D6343    test        byte ptr [ebp-0E],2
>004D6347    je          004D6361
 004D6349    lea         edx,[ebp-24]
 004D634C    mov         eax,dword ptr [ebp-14]
 004D634F    call        0040BE68
 004D6354    mov         edx,dword ptr [ebp-24]
 004D6357    lea         eax,[ebp-14]
 004D635A    call        @LStrLAsg
>004D635F    jmp         004D637D
 004D6361    test        byte ptr [ebp-0E],4
>004D6365    je          004D637D
 004D6367    lea         edx,[ebp-28]
 004D636A    mov         eax,dword ptr [ebp-14]
 004D636D    call        0040BEB0
 004D6372    mov         edx,dword ptr [ebp-28]
 004D6375    lea         eax,[ebp-14]
 004D6378    call        @LStrLAsg
 004D637D    mov         eax,dword ptr [ebp-14]
 004D6380    mov         al,byte ptr [eax]
 004D6382    mov         edx,dword ptr [ebp-0C]
 004D6385    mov         byte ptr [edx],al
 004D6387    xor         eax,eax
 004D6389    pop         edx
 004D638A    pop         ecx
 004D638B    pop         ecx
 004D638C    mov         dword ptr fs:[eax],edx
 004D638F    push        4D63B1
 004D6394    lea         eax,[ebp-28]
 004D6397    mov         edx,4
 004D639C    call        @LStrArrayClr
 004D63A1    lea         eax,[ebp-14]
 004D63A4    call        @LStrClr
 004D63A9    ret
>004D63AA    jmp         @HandleFinally
>004D63AF    jmp         004D6394
 004D63B1    mov         al,byte ptr [ebp-0D]
 004D63B4    pop         ebx
 004D63B5    mov         esp,ebp
 004D63B7    pop         ebp
 004D63B8    ret
end;*}

//004D63C8
{*function sub_004D63C8(?:?; ?:?):?;
begin
 004D63C8    push        ebp
 004D63C9    mov         ebp,esp
 004D63CB    add         esp,0FFFFFFE0
 004D63CE    mov         dword ptr [ebp-0C],ecx
 004D63D1    mov         dword ptr [ebp-8],edx
 004D63D4    mov         dword ptr [ebp-4],eax
 004D63D7    mov         byte ptr [ebp-0D],1
 004D63DB    mov         dword ptr [ebp-14],1
 004D63E2    mov         eax,dword ptr [ebp-4]
 004D63E5    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D63EB    call        @LStrLen
 004D63F0    test        eax,eax
>004D63F2    jle         004D6482
 004D63F8    mov         dword ptr [ebp-20],eax
 004D63FB    mov         dword ptr [ebp-18],1
 004D6402    mov         eax,dword ptr [ebp-4]
 004D6405    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D640B    mov         edx,dword ptr [ebp-18]
 004D640E    call        004D36E4
 004D6413    mov         byte ptr [ebp-19],al
 004D6416    mov         al,byte ptr [ebp-19]
 004D6419    dec         eax
 004D641A    sub         al,2
>004D641C    jb          004D6422
 004D641E    sub         al,2
>004D6420    jne         004D6427
 004D6422    inc         dword ptr [ebp-14]
>004D6425    jmp         004D647A
 004D6427    cmp         byte ptr [ebp-19],4
>004D642B    jne         004D647A
 004D642D    cmp         dword ptr [ebp-8],0
>004D6431    je          004D647A
 004D6433    mov         eax,dword ptr [ebp-8]
 004D6436    mov         edx,dword ptr [ebp-14]
 004D6439    mov         al,byte ptr [eax+edx-1]
 004D643D    mov         edx,dword ptr [ebp-4]
 004D6440    cmp         al,byte ptr [edx+224];TCustomMaskEdit.FMaskBlank:Char
>004D6446    je          004D6468
 004D6448    mov         eax,dword ptr [ebp-8]
 004D644B    mov         edx,dword ptr [ebp-14]
 004D644E    cmp         byte ptr [eax+edx-1],20
>004D6453    jne         004D6477
 004D6455    mov         eax,dword ptr [ebp-4]
 004D6458    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D645E    mov         edx,dword ptr [ebp-18]
 004D6461    cmp         byte ptr [eax+edx-1],43
>004D6466    je          004D6477
 004D6468    mov         byte ptr [ebp-0D],0
 004D646C    mov         eax,dword ptr [ebp-14]
 004D646F    dec         eax
 004D6470    mov         edx,dword ptr [ebp-0C]
 004D6473    mov         dword ptr [edx],eax
>004D6475    jmp         004D6482
 004D6477    inc         dword ptr [ebp-14]
 004D647A    inc         dword ptr [ebp-18]
 004D647D    dec         dword ptr [ebp-20]
>004D6480    jne         004D6402
 004D6482    mov         al,byte ptr [ebp-0D]
 004D6485    mov         esp,ebp
 004D6487    pop         ebp
 004D6488    ret
end;*}

//004D648C
{*function sub_004D648C(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;
begin
 004D648C    push        ebp
 004D648D    mov         ebp,esp
 004D648F    add         esp,0FFFFFFD8
 004D6492    mov         dword ptr [ebp-0C],ecx
 004D6495    mov         dword ptr [ebp-8],edx
 004D6498    mov         dword ptr [ebp-4],eax
 004D649B    mov         byte ptr [ebp-0D],1
 004D649F    cmp         dword ptr [ebp+8],0
>004D64A3    je          004D6546
 004D64A9    mov         eax,dword ptr [ebp-0C]
 004D64AC    inc         eax
 004D64AD    mov         dword ptr [ebp-18],eax
 004D64B0    mov         eax,dword ptr [ebp-18]
 004D64B3    add         eax,dword ptr [ebp+8]
 004D64B6    mov         dword ptr [ebp-14],eax
 004D64B9    mov         eax,dword ptr [ebp-4]
 004D64BC    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D64C2    mov         edx,dword ptr [ebp-0C]
 004D64C5    call        004D3E00
 004D64CA    mov         dword ptr [ebp-20],eax
 004D64CD    cmp         dword ptr [ebp-20],0
>004D64D1    jl          004D6546
 004D64D3    mov         eax,dword ptr [ebp-20]
 004D64D6    push        eax
 004D64D7    mov         eax,dword ptr [ebp-4]
 004D64DA    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D64E0    call        @LStrLen
 004D64E5    pop         edx
 004D64E6    sub         eax,edx
>004D64E8    jl          004D6546
 004D64EA    inc         eax
 004D64EB    mov         dword ptr [ebp-28],eax
 004D64EE    mov         dword ptr [ebp-1C],edx
 004D64F1    mov         eax,dword ptr [ebp-4]
 004D64F4    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D64FA    mov         edx,dword ptr [ebp-1C]
 004D64FD    call        004D36E4
 004D6502    mov         byte ptr [ebp-21],al
 004D6505    mov         al,byte ptr [ebp-21]
 004D6508    dec         eax
 004D6509    sub         al,2
>004D650B    jae         004D6512
 004D650D    inc         dword ptr [ebp-18]
>004D6510    jmp         004D6536
 004D6512    mov         al,byte ptr [ebp-21]
 004D6515    add         al,0FC
 004D6517    sub         al,2
>004D6519    jae         004D6536
 004D651B    mov         eax,dword ptr [ebp-8]
 004D651E    call        00405598
 004D6523    mov         edx,dword ptr [ebp-18]
 004D6526    mov         ecx,dword ptr [ebp-4]
 004D6529    mov         cl,byte ptr [ecx+224]
 004D652F    mov         byte ptr [eax+edx-1],cl
 004D6533    inc         dword ptr [ebp-18]
 004D6536    mov         eax,dword ptr [ebp-18]
 004D6539    cmp         eax,dword ptr [ebp-14]
>004D653C    jge         004D6546
 004D653E    inc         dword ptr [ebp-1C]
 004D6541    dec         dword ptr [ebp-28]
>004D6544    jne         004D64F1
 004D6546    mov         al,byte ptr [ebp-0D]
 004D6549    mov         esp,ebp
 004D654B    pop         ebp
 004D654C    ret         4
end;*}

//004D6550
{*function sub_004D6550(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;
begin
 004D6550    push        ebp
 004D6551    mov         ebp,esp
 004D6553    add         esp,0FFFFFFB8
 004D6556    push        ebx
 004D6557    xor         ebx,ebx
 004D6559    mov         dword ptr [ebp-44],ebx
 004D655C    mov         dword ptr [ebp-48],ebx
 004D655F    mov         dword ptr [ebp-3C],ebx
 004D6562    mov         dword ptr [ebp-40],ebx
 004D6565    mov         dword ptr [ebp-38],ebx
 004D6568    mov         dword ptr [ebp-2C],ebx
 004D656B    mov         dword ptr [ebp-30],ebx
 004D656E    mov         dword ptr [ebp-34],ebx
 004D6571    mov         dword ptr [ebp-24],ebx
 004D6574    mov         dword ptr [ebp-0C],ecx
 004D6577    mov         dword ptr [ebp-8],edx
 004D657A    mov         dword ptr [ebp-4],eax
 004D657D    xor         eax,eax
 004D657F    push        ebp
 004D6580    push        4D6866
 004D6585    push        dword ptr fs:[eax]
 004D6588    mov         dword ptr fs:[eax],esp
 004D658B    mov         eax,dword ptr [ebp+8]
 004D658E    mov         dword ptr [ebp-10],eax
 004D6591    cmp         dword ptr [ebp-0C],0
>004D6595    je          004D6843
 004D659B    mov         dword ptr [ebp-14],1
 004D65A2    lea         eax,[ebp-24]
 004D65A5    mov         edx,dword ptr [ebp-0C]
 004D65A8    call        @LStrLAsg
 004D65AD    mov         edx,dword ptr [ebp+8]
 004D65B0    mov         eax,dword ptr [ebp-4]
 004D65B3    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D65B9    call        004D3E00
 004D65BE    mov         dword ptr [ebp-1C],eax
 004D65C1    cmp         dword ptr [ebp-1C],0
>004D65C5    jl          004D6843
 004D65CB    mov         eax,dword ptr [ebp-1C]
 004D65CE    mov         dword ptr [ebp-18],eax
>004D65D1    jmp         004D6707
 004D65D6    mov         edx,dword ptr [ebp-18]
 004D65D9    mov         eax,dword ptr [ebp-4]
 004D65DC    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D65E2    call        004D36E4
 004D65E7    mov         byte ptr [ebp-1D],al
 004D65EA    mov         al,byte ptr [ebp-1D]
 004D65ED    dec         eax
 004D65EE    sub         al,2
>004D65F0    jb          004D65FB
 004D65F2    dec         eax
 004D65F3    sub         al,2
>004D65F5    jae         004D66E6
 004D65FB    mov         eax,dword ptr [ebp-24]
 004D65FE    mov         edx,dword ptr [ebp-14]
 004D6601    mov         al,byte ptr [eax+edx-1]
 004D6605    mov         byte ptr [ebp-25],al
 004D6608    lea         edx,[ebp-25]
 004D660B    mov         ecx,dword ptr [ebp-18]
 004D660E    mov         eax,dword ptr [ebp-4]
 004D6611    call        004D60A4
 004D6616    test        al,al
>004D6618    jne         004D6650
 004D661A    mov         eax,[0056E618];^gvar_0056B820
 004D661F    mov         dl,byte ptr [ebp-25]
 004D6622    and         edx,0FF
 004D6628    bt          dword ptr [eax],edx
>004D662B    jae         004D6644
 004D662D    lea         eax,[ebp-24]
 004D6630    call        00405598
 004D6635    mov         edx,dword ptr [ebp-14]
 004D6638    mov         ecx,dword ptr [ebp-4]
 004D663B    mov         cl,byte ptr [ecx+224]
 004D6641    mov         byte ptr [eax+edx],cl
 004D6644    mov         eax,dword ptr [ebp-4]
 004D6647    mov         al,byte ptr [eax+224];TCustomMaskEdit.FMaskBlank:Char
 004D664D    mov         byte ptr [ebp-25],al
 004D6650    mov         al,byte ptr [ebp-1D]
 004D6653    dec         eax
 004D6654    sub         al,2
>004D6656    jae         004D6667
 004D6658    mov         eax,dword ptr [ebp-24]
 004D665B    mov         edx,dword ptr [ebp-14]
 004D665E    mov         al,byte ptr [eax+edx-1]
 004D6662    cmp         al,byte ptr [ebp-25]
>004D6665    jne         004D6694
 004D6667    lea         eax,[ebp-24]
 004D666A    call        00405598
 004D666F    mov         edx,dword ptr [ebp-14]
 004D6672    mov         cl,byte ptr [ebp-25]
 004D6675    mov         byte ptr [eax+edx-1],cl
 004D6679    mov         eax,[0056E618];^gvar_0056B820
 004D667E    mov         dl,byte ptr [ebp-25]
 004D6681    and         edx,0FF
 004D6687    bt          dword ptr [eax],edx
>004D668A    jae         004D66E3
 004D668C    inc         dword ptr [ebp-14]
 004D668F    inc         dword ptr [ebp-18]
>004D6692    jmp         004D66E3
 004D6694    lea         eax,[ebp-2C]
 004D6697    push        eax
 004D6698    mov         ecx,dword ptr [ebp-14]
 004D669B    dec         ecx
 004D669C    mov         edx,1
 004D66A1    mov         eax,dword ptr [ebp-24]
 004D66A4    call        @LStrCopy
 004D66A9    push        dword ptr [ebp-2C]
 004D66AC    lea         eax,[ebp-30]
 004D66AF    mov         dl,byte ptr [ebp-25]
 004D66B2    call        @LStrFromChar
 004D66B7    push        dword ptr [ebp-30]
 004D66BA    lea         eax,[ebp-34]
 004D66BD    push        eax
 004D66BE    mov         eax,dword ptr [ebp-24]
 004D66C1    call        @LStrLen
 004D66C6    mov         ecx,eax
 004D66C8    mov         edx,dword ptr [ebp-14]
 004D66CB    mov         eax,dword ptr [ebp-24]
 004D66CE    call        @LStrCopy
 004D66D3    push        dword ptr [ebp-34]
 004D66D6    lea         eax,[ebp-24]
 004D66D9    mov         edx,3
 004D66DE    call        @LStrCatN
 004D66E3    inc         dword ptr [ebp-14]
 004D66E6    mov         eax,dword ptr [ebp-14]
 004D66E9    add         eax,dword ptr [ebp+8]
 004D66EC    mov         edx,dword ptr [ebp-4]
 004D66EF    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>004D66F5    jg          004D671E
 004D66F7    mov         eax,dword ptr [ebp-24]
 004D66FA    call        @LStrLen
 004D66FF    cmp         eax,dword ptr [ebp-14]
>004D6702    jl          004D671E
 004D6704    inc         dword ptr [ebp-18]
 004D6707    mov         eax,dword ptr [ebp-4]
 004D670A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D6710    call        @LStrLen
 004D6715    cmp         eax,dword ptr [ebp-18]
>004D6718    jge         004D65D6
 004D671E    mov         eax,dword ptr [ebp-24]
 004D6721    call        @LStrLen
 004D6726    add         eax,dword ptr [ebp+8]
 004D6729    mov         edx,dword ptr [ebp-4]
 004D672C    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>004D6732    jge         004D67D5
 004D6738    mov         eax,dword ptr [ebp-24]
 004D673B    call        @LStrLen
 004D6740    mov         edx,eax
 004D6742    add         edx,dword ptr [ebp+8]
 004D6745    inc         edx
 004D6746    mov         eax,dword ptr [ebp-8]
 004D6749    mov         eax,dword ptr [eax]
 004D674B    call        00411160
 004D6750    cmp         al,2
>004D6752    jne         004D6773
 004D6754    lea         eax,[ebp-38]
 004D6757    mov         edx,dword ptr [ebp-4]
 004D675A    mov         dl,byte ptr [edx+224];TCustomMaskEdit.FMaskBlank:Char
 004D6760    call        @LStrFromChar
 004D6765    mov         edx,dword ptr [ebp-38]
 004D6768    lea         eax,[ebp-24]
 004D676B    call        @LStrCat
 004D6770    inc         dword ptr [ebp-14]
 004D6773    lea         eax,[ebp-3C]
 004D6776    push        eax
 004D6777    mov         eax,dword ptr [ebp-8]
 004D677A    mov         eax,dword ptr [eax]
 004D677C    mov         ecx,dword ptr [ebp+8]
 004D677F    mov         edx,1
 004D6784    call        @LStrCopy
 004D6789    push        dword ptr [ebp-3C]
 004D678C    push        dword ptr [ebp-24]
 004D678F    lea         eax,[ebp-40]
 004D6792    push        eax
 004D6793    mov         eax,dword ptr [ebp-24]
 004D6796    call        @LStrLen
 004D679B    add         eax,dword ptr [ebp+8]
 004D679E    mov         edx,dword ptr [ebp-4]
 004D67A1    mov         edx,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
 004D67A7    sub         edx,eax
 004D67A9    push        edx
 004D67AA    mov         eax,dword ptr [ebp-24]
 004D67AD    call        @LStrLen
 004D67B2    mov         edx,eax
 004D67B4    add         edx,dword ptr [ebp+8]
 004D67B7    inc         edx
 004D67B8    mov         eax,dword ptr [ebp-8]
 004D67BB    mov         eax,dword ptr [eax]
 004D67BD    pop         ecx
 004D67BE    call        @LStrCopy
 004D67C3    push        dword ptr [ebp-40]
 004D67C6    mov         eax,dword ptr [ebp-8]
 004D67C9    mov         edx,3
 004D67CE    call        @LStrCatN
>004D67D3    jmp         004D6839
 004D67D5    mov         eax,dword ptr [ebp+8]
 004D67D8    mov         dword ptr [ebp-1C],eax
 004D67DB    mov         eax,dword ptr [ebp-4]
 004D67DE    mov         edx,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 004D67E4    sub         edx,dword ptr [ebp+8]
 004D67E7    mov         eax,dword ptr [ebp-24]
 004D67EA    call        00411160
 004D67EF    cmp         al,1
>004D67F1    jne         004D67F6
 004D67F3    inc         dword ptr [ebp-1C]
 004D67F6    lea         eax,[ebp-44]
 004D67F9    push        eax
 004D67FA    mov         eax,dword ptr [ebp-4]
 004D67FD    mov         ecx,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 004D6803    sub         ecx,dword ptr [ebp-1C]
 004D6806    mov         edx,1
 004D680B    mov         eax,dword ptr [ebp-24]
 004D680E    call        @LStrCopy
 004D6813    mov         eax,dword ptr [ebp-44]
 004D6816    push        eax
 004D6817    lea         eax,[ebp-48]
 004D681A    push        eax
 004D681B    mov         eax,dword ptr [ebp-8]
 004D681E    mov         eax,dword ptr [eax]
 004D6820    mov         ecx,dword ptr [ebp+8]
 004D6823    mov         edx,1
 004D6828    call        @LStrCopy
 004D682D    mov         edx,dword ptr [ebp-48]
 004D6830    mov         eax,dword ptr [ebp-8]
 004D6833    pop         ecx
 004D6834    call        @LStrCat3
 004D6839    mov         eax,dword ptr [ebp-14]
 004D683C    add         eax,dword ptr [ebp+8]
 004D683F    dec         eax
 004D6840    mov         dword ptr [ebp-10],eax
 004D6843    xor         eax,eax
 004D6845    pop         edx
 004D6846    pop         ecx
 004D6847    pop         ecx
 004D6848    mov         dword ptr fs:[eax],edx
 004D684B    push        4D686D
 004D6850    lea         eax,[ebp-48]
 004D6853    mov         edx,8
 004D6858    call        @LStrArrayClr
 004D685D    lea         eax,[ebp-24]
 004D6860    call        @LStrClr
 004D6865    ret
>004D6866    jmp         @HandleFinally
>004D686B    jmp         004D6850
 004D686D    mov         eax,dword ptr [ebp-10]
 004D6870    pop         ebx
 004D6871    mov         esp,ebp
 004D6873    pop         ebp
 004D6874    ret         4
end;*}

//004D6878
{*function sub_004D6878(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 004D6878    push        ebp
 004D6879    mov         ebp,esp
 004D687B    add         esp,0FFFFFFEC
 004D687E    mov         byte ptr [ebp-9],cl
 004D6881    mov         dword ptr [ebp-8],edx
 004D6884    mov         dword ptr [ebp-4],eax
 004D6887    mov         dword ptr [ebp-10],0FFFFFFFF
>004D688E    jmp         004D68E3
 004D6890    inc         dword ptr [ebp-8]
 004D6893    mov         edx,dword ptr [ebp-8]
 004D6896    mov         eax,dword ptr [ebp-4]
 004D6899    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D689F    call        004D36E4
 004D68A4    mov         byte ptr [ebp-11],al
 004D68A7    mov         al,byte ptr [ebp-11]
 004D68AA    dec         eax
 004D68AB    sub         al,2
>004D68AD    jae         004D68E3
 004D68AF    mov         eax,dword ptr [ebp-4]
 004D68B2    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D68B8    mov         edx,dword ptr [ebp-8]
 004D68BB    mov         al,byte ptr [eax+edx-1]
 004D68BF    mov         byte ptr [ebp-12],al
 004D68C2    cmp         byte ptr [ebp-11],2
>004D68C6    jne         004D68D3
 004D68C8    mov         al,byte ptr [ebp-12]
 004D68CB    call        004D3930
 004D68D0    mov         byte ptr [ebp-12],al
 004D68D3    mov         al,byte ptr [ebp-12]
 004D68D6    cmp         al,byte ptr [ebp-9]
>004D68D9    jne         004D68F6
 004D68DB    mov         eax,dword ptr [ebp-8]
 004D68DE    mov         dword ptr [ebp-10],eax
>004D68E1    jmp         004D68F6
 004D68E3    mov         eax,dword ptr [ebp-4]
 004D68E6    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 004D68EC    call        @LStrLen
 004D68F1    cmp         eax,dword ptr [ebp-8]
>004D68F4    jg          004D6890
 004D68F6    mov         eax,dword ptr [ebp-10]
 004D68F9    mov         esp,ebp
 004D68FB    pop         ebp
 004D68FC    ret
end;*}

end.