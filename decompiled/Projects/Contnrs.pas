//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Contnrs;

interface

uses
  SysUtils, Classes;

type
  TObjectList = class(TList)
  public
    .FOwnsObjects:Boolean;//f10
    //procedure v4(?:?; ?:?); virtual;//v4//00437744
    constructor Create;//004376B4
  end;
  TOrderedList = class(TObject)
  public
    .........FList:TList;//f4
    destructor Destroy; virtual;//0043782C
    procedure v0; virtual; abstract;//v0//00403328
    //function v4:?; virtual;//v4//00437890
    //function v8:?; virtual;//v8//00437868
    constructor Create;//004377D8
  end;
  TStack = class(TOrderedList)
  public
    //procedure v0(?:?); virtual;//v0//004378C0
  end;
    //function sub_004376FC(?:?; ?:?):?;//004376FC
    //procedure sub_00437720(?:?; ?:?; ?:THelpViewerNode);//00437720
    //procedure sub_00437744(?:?; ?:?);//00437744
    //function sub_0043777C(?:TMenuItemStack):?;//0043777C
    //function sub_00437798(?:TMenuItemStack; ?:TMenuItem):?;//00437798
    //function sub_004377BC(?:TMenuStack):?;//004377BC
    destructor Destroy;//0043782C
    //function sub_00437868:?;//00437868
    //function sub_00437890:?;//00437890
    //procedure sub_004378C0(?:?);//004378C0

implementation

//004376B4
constructor TObjectList.Create;
begin
{*
 004376B4    push        ebp
 004376B5    mov         ebp,esp
 004376B7    add         esp,0FFFFFFF8
 004376BA    test        dl,dl
>004376BC    je          004376C6
 004376BE    add         esp,0FFFFFFF0
 004376C1    call        @ClassCreate
 004376C6    mov         byte ptr [ebp-5],dl
 004376C9    mov         dword ptr [ebp-4],eax
 004376CC    xor         edx,edx
 004376CE    mov         eax,dword ptr [ebp-4]
 004376D1    call        TObject.Create
 004376D6    mov         eax,dword ptr [ebp-4]
 004376D9    mov         byte ptr [eax+10],1
 004376DD    mov         eax,dword ptr [ebp-4]
 004376E0    cmp         byte ptr [ebp-5],0
>004376E4    je          004376F5
 004376E6    call        @AfterConstruction
 004376EB    pop         dword ptr fs:[0]
 004376F2    add         esp,0C
 004376F5    mov         eax,dword ptr [ebp-4]
 004376F8    pop         ecx
 004376F9    pop         ecx
 004376FA    pop         ebp
 004376FB    ret
*}
end;

//004376FC
{*function sub_004376FC(?:?; ?:?):?;
begin
 004376FC    push        ebp
 004376FD    mov         ebp,esp
 004376FF    add         esp,0FFFFFFF4
 00437702    mov         dword ptr [ebp-8],edx
 00437705    mov         dword ptr [ebp-4],eax
 00437708    mov         edx,dword ptr [ebp-8]
 0043770B    mov         eax,dword ptr [ebp-4]
 0043770E    call        TList.Get
 00437713    mov         dword ptr [ebp-0C],eax
 00437716    mov         eax,dword ptr [ebp-0C]
 00437719    mov         esp,ebp
 0043771B    pop         ebp
 0043771C    ret
end;*}

//00437720
{*procedure sub_00437720(?:?; ?:?; ?:THelpViewerNode);
begin
 00437720    push        ebp
 00437721    mov         ebp,esp
 00437723    add         esp,0FFFFFFF4
 00437726    mov         dword ptr [ebp-0C],ecx
 00437729    mov         dword ptr [ebp-8],edx
 0043772C    mov         dword ptr [ebp-4],eax
 0043772F    mov         ecx,dword ptr [ebp-0C]
 00437732    mov         edx,dword ptr [ebp-8]
 00437735    mov         eax,dword ptr [ebp-4]
 00437738    call        00420308
 0043773D    mov         esp,ebp
 0043773F    pop         ebp
 00437740    ret
end;*}

//00437744
{*procedure sub_00437744(?:?; ?:?);
begin
 00437744    push        ebp
 00437745    mov         ebp,esp
 00437747    add         esp,0FFFFFFF4
 0043774A    mov         byte ptr [ebp-9],cl
 0043774D    mov         dword ptr [ebp-8],edx
 00437750    mov         dword ptr [ebp-4],eax
 00437753    mov         eax,dword ptr [ebp-4]
 00437756    cmp         byte ptr [eax+10],0;TObjectList...FOwnsObjects:Boolean
>0043775A    je          0043776A
 0043775C    cmp         byte ptr [ebp-9],2
>00437760    jne         0043776A
 00437762    mov         eax,dword ptr [ebp-8]
 00437765    call        TObject.Free
 0043776A    mov         cl,byte ptr [ebp-9]
 0043776D    mov         edx,dword ptr [ebp-8]
 00437770    mov         eax,dword ptr [ebp-4]
 00437773    call        00420628
 00437778    mov         esp,ebp
 0043777A    pop         ebp
 0043777B    ret
end;*}

//0043777C
{*function sub_0043777C(?:TMenuItemStack):?;
begin
 0043777C    push        ebp
 0043777D    mov         ebp,esp
 0043777F    add         esp,0FFFFFFF8
 00437782    mov         dword ptr [ebp-4],eax
 00437785    mov         eax,dword ptr [ebp-4]
 00437788    mov         edx,dword ptr [eax]
 0043778A    call        dword ptr [edx+4]
 0043778D    mov         dword ptr [ebp-8],eax
 00437790    mov         eax,dword ptr [ebp-8]
 00437793    pop         ecx
 00437794    pop         ecx
 00437795    pop         ebp
 00437796    ret
end;*}

//00437798
{*function sub_00437798(?:TMenuItemStack; ?:TMenuItem):?;
begin
 00437798    push        ebp
 00437799    mov         ebp,esp
 0043779B    add         esp,0FFFFFFF4
 0043779E    mov         dword ptr [ebp-8],edx
 004377A1    mov         dword ptr [ebp-4],eax
 004377A4    mov         edx,dword ptr [ebp-8]
 004377A7    mov         eax,dword ptr [ebp-4]
 004377AA    mov         ecx,dword ptr [eax]
 004377AC    call        dword ptr [ecx]
 004377AE    mov         eax,dword ptr [ebp-8]
 004377B1    mov         dword ptr [ebp-0C],eax
 004377B4    mov         eax,dword ptr [ebp-0C]
 004377B7    mov         esp,ebp
 004377B9    pop         ebp
 004377BA    ret
end;*}

//004377BC
{*function sub_004377BC(?:TMenuStack):?;
begin
 004377BC    push        ebp
 004377BD    mov         ebp,esp
 004377BF    add         esp,0FFFFFFF8
 004377C2    mov         dword ptr [ebp-4],eax
 004377C5    mov         eax,dword ptr [ebp-4]
 004377C8    mov         eax,dword ptr [eax+4]
 004377CB    mov         eax,dword ptr [eax+8]
 004377CE    mov         dword ptr [ebp-8],eax
 004377D1    mov         eax,dword ptr [ebp-8]
 004377D4    pop         ecx
 004377D5    pop         ecx
 004377D6    pop         ebp
 004377D7    ret
end;*}

//004377D8
constructor TOrderedList.Create;
begin
{*
 004377D8    push        ebp
 004377D9    mov         ebp,esp
 004377DB    add         esp,0FFFFFFF8
 004377DE    test        dl,dl
>004377E0    je          004377EA
 004377E2    add         esp,0FFFFFFF0
 004377E5    call        @ClassCreate
 004377EA    mov         byte ptr [ebp-5],dl
 004377ED    mov         dword ptr [ebp-4],eax
 004377F0    xor         edx,edx
 004377F2    mov         eax,dword ptr [ebp-4]
 004377F5    call        TObject.Create
 004377FA    mov         dl,1
 004377FC    mov         eax,[0041D46C];TList
 00437801    call        TObject.Create
 00437806    mov         edx,dword ptr [ebp-4]
 00437809    mov         dword ptr [edx+4],eax
 0043780C    mov         eax,dword ptr [ebp-4]
 0043780F    cmp         byte ptr [ebp-5],0
>00437813    je          00437824
 00437815    call        @AfterConstruction
 0043781A    pop         dword ptr fs:[0]
 00437821    add         esp,0C
 00437824    mov         eax,dword ptr [ebp-4]
 00437827    pop         ecx
 00437828    pop         ecx
 00437829    pop         ebp
 0043782A    ret
*}
end;

//0043782C
destructor TOrderedList.Destroy;
begin
{*
 0043782C    push        ebp
 0043782D    mov         ebp,esp
 0043782F    add         esp,0FFFFFFF8
 00437832    call        @BeforeDestruction
 00437837    mov         byte ptr [ebp-5],dl
 0043783A    mov         dword ptr [ebp-4],eax
 0043783D    mov         eax,dword ptr [ebp-4]
 00437840    mov         eax,dword ptr [eax+4]
 00437843    call        TObject.Free
 00437848    mov         dl,byte ptr [ebp-5]
 0043784B    and         dl,0FC
 0043784E    mov         eax,dword ptr [ebp-4]
 00437851    call        TObject.Destroy
 00437856    cmp         byte ptr [ebp-5],0
>0043785A    jle         00437864
 0043785C    mov         eax,dword ptr [ebp-4]
 0043785F    call        @ClassDestroy
 00437864    pop         ecx
 00437865    pop         ecx
 00437866    pop         ebp
 00437867    ret
*}
end;

//00437868
{*function sub_00437868:?;
begin
 00437868    push        ebp
 00437869    mov         ebp,esp
 0043786B    add         esp,0FFFFFFF8
 0043786E    mov         dword ptr [ebp-4],eax
 00437871    mov         eax,dword ptr [ebp-4]
 00437874    mov         eax,dword ptr [eax+4];TOrderedList...........FList:TList
 00437877    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 0043787A    dec         edx
 0043787B    mov         eax,dword ptr [ebp-4]
 0043787E    mov         eax,dword ptr [eax+4];TOrderedList............FList:TList
 00437881    call        TList.Get
 00437886    mov         dword ptr [ebp-8],eax
 00437889    mov         eax,dword ptr [ebp-8]
 0043788C    pop         ecx
 0043788D    pop         ecx
 0043788E    pop         ebp
 0043788F    ret
end;*}

//00437890
{*function sub_00437890:?;
begin
 00437890    push        ebp
 00437891    mov         ebp,esp
 00437893    add         esp,0FFFFFFF8
 00437896    mov         dword ptr [ebp-4],eax
 00437899    mov         eax,dword ptr [ebp-4]
 0043789C    mov         edx,dword ptr [eax]
 0043789E    call        dword ptr [edx+8];TOrderedList.sub_00437868
 004378A1    mov         dword ptr [ebp-8],eax
 004378A4    mov         eax,dword ptr [ebp-4]
 004378A7    mov         eax,dword ptr [eax+4];TOrderedList.............FList:TList
 004378AA    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 004378AD    dec         edx
 004378AE    mov         eax,dword ptr [ebp-4]
 004378B1    mov         eax,dword ptr [eax+4];TOrderedList..............FList:TList
 004378B4    call        00420094
 004378B9    mov         eax,dword ptr [ebp-8]
 004378BC    pop         ecx
 004378BD    pop         ecx
 004378BE    pop         ebp
 004378BF    ret
end;*}

//004378C0
{*procedure sub_004378C0(?:?);
begin
 004378C0    push        ebp
 004378C1    mov         ebp,esp
 004378C3    add         esp,0FFFFFFF8
 004378C6    mov         dword ptr [ebp-8],edx
 004378C9    mov         dword ptr [ebp-4],eax
 004378CC    mov         edx,dword ptr [ebp-8]
 004378CF    mov         eax,dword ptr [ebp-4]
 004378D2    mov         eax,dword ptr [eax+4];TStack...............FList:TList
 004378D5    call        TList.Add
 004378DA    pop         ecx
 004378DB    pop         ecx
 004378DC    pop         ebp
 004378DD    ret
end;*}

end.