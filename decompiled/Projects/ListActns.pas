//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ListActns;

interface

uses
  SysUtils, Classes, ListActns, ImgList;

type
  TListControlItem = class(TCollectionItem)
  public
    FListControlItems:TListControlItems;//fC
    Caption:String;//f10
    FData:Pointer;//f14
    ImageIndex:TImageIndex;//f18
    //procedure v8(?:?); virtual;//v8//0044B5EC
    //procedure vC(?:?); virtual;//vC//0044B6FC
    constructor v1C; virtual;//v1C//0044B6A8
    procedure SetCaption(Value:String); virtual;//v20//0044B738
    //procedure v24(?:?); virtual;//v24//0044B760
    procedure SetImageIndex(Value:TImageIndex); virtual;//v28//0044B784
  end;
  TListItemsSortType = (stNone, stData, stText, stBoth);
  TListCompareEvent = function(List:TListControlItems; Item1:TListControlItem; Item2:TListControlItem):Integer of object;;
  TListControlItems = class(TOwnedCollection)
  public
    CaseSensitive:Boolean;//f1C
    SortType:TListItemsSortType;//f1D
    OnCompare:TListCompareEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    //function v28(?:?; ?:?):?; virtual;//v28//0044B84C
    procedure SetSortType(Value:TListItemsSortType);//0044BA10
  end;
  TGetItemCountEvent = procedure(Sender:TCustomListAction; var Count:Integer) of object;;
  TItemSelectedEvent = procedure(Sender:TCustomListAction; Control:TControl) of object;;
  TCustomListAction = class(TCustomAction)
  public
    FActive:Boolean;//fA0
    FActivated:Boolean;//fA1
    FImages:TCustomImageList;//fA4
    FInUpdate:Boolean;//fA8
    FLoadedImages:TCustomImageList;//fAC
    FLoading:Boolean;//fB0
    FOnGetItemCount:TGetItemCountEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnItemSelected:TItemSelectedEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FItemIndex:Integer;//fC8
    procedure vC; virtual;//vC//0044BCD8
    constructor v2C; virtual;//v2C//0044BABC
    //function v38(?:?):?; virtual;//v38//0044BCC0
    //procedure v40(?:?); virtual;//v40//0044BB2C
    //function v54:?; virtual;//v54//0044BC68
    //procedure v58(?:?; ?:?); virtual;//v58//0044BCA4
    //procedure v5C(?:?; ?:?); virtual;//v5C//0044BF4C
  end;
  TGetVirtualItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Value:String; var ImageIndex:Integer; var Data:Pointer) of object;;
  TVirtualListAction = class(TCustomListAction)
  public
    OnGetItem:TGetVirtualItemEvent;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    //procedure v58(?:?; ?:?); virtual;//v58//0044BFC0
    procedure SetActive(Value:Boolean);//0044BD24
    procedure SetImages(Value:TCustomImageList);//0044BE2C
    procedure SetItemIndex(Value:Integer);//0044BECC
  end;
  TGetItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Item:TListControlItem) of object;;
  TStaticListItems = class(TListControlItems)
  public
    ..............FStaticListAction:TStaticListAction;//f28
    //procedure v14(?:?; ?:?); virtual;//v14//0044C0B0
    //procedure v1C(?:?); virtual;//v1C//0044C2B8
    //constructor Create(?:?);//0044BA60
  end;
  TStaticListAction = class(TCustomListAction)
  public
    Items:TStaticListItems;//fD0
    OnGetItem:TGetItemEvent;//fD8
    destructor Destroy; virtual;//0044C498
    constructor v2C; virtual;//v2C//0044C420
    //function v54:?; virtual;//v54//0044C4D8
    //procedure v58(?:?; ?:?); virtual;//v58//0044C598
    //procedure v5C(?:?; ?:?); virtual;//v5C//0044C5EC
    //function v60:?; virtual;//v60//0044C580
    procedure SetItems(Value:TStaticListItems);//0044C5C8
  end;
  TListActionLink = class(TWinControlActionLink)
  public
    //procedure vC(?:?); virtual;//vC//0044C67C
    //function v7C:?; virtual;//v7C//0044C618
    //procedure v80(?:?); virtual;//v80//0044C6D8
    //function v84:?; virtual;//v84//0044C63C
    //procedure v88(?:?); virtual;//v88//0044C75C
    //procedure v8C(?:?); virtual;//v8C//0044C94C
    //procedure v90(?:?); virtual;//v90//0044C8F4
    //procedure v94(?:?; ?:?); virtual;//v94//0044C904
  end;
    //procedure sub_0044B5EC(?:?);//0044B5EC
    procedure sub_0044B684(?:TListControlItem);//0044B684
    constructor sub_0044B6A8;//0044B6A8
    //procedure sub_0044B6FC(?:?);//0044B6FC
    procedure SetCaption(Value:String);//0044B738
    //procedure sub_0044B760(?:?);//0044B760
    procedure SetImageIndex(Value:TImageIndex);//0044B784
    //function sub_0044B7A8(?:?; ?:?; ?:?):?;//0044B7A8
    //function sub_0044B7E8(?:TComboExItems):?;//0044B7E8
    //procedure sub_0044B80C(?:TListControlItems; ?:?);//0044B80C
    //function sub_0044B84C(?:?; ?:?):?;//0044B84C
    //procedure sub_0044B8BC(?:?; ?:?; ?:?);//0044B8BC
    //procedure sub_0044B928(?:?; ?:?; ?:?; ?:?);//0044B928
    //function sub_0044B9EC(?:TListControlItems; ?:Integer):?;//0044B9EC
    procedure sub_0044BA48(?:TCollection);//0044BA48
    constructor sub_0044BABC;//0044BABC
    //procedure sub_0044BB2C(?:?);//0044BB2C
    //function sub_0044BC68:?;//0044BC68
    //procedure sub_0044BCA4(?:?; ?:?);//0044BCA4
    //function sub_0044BCC0(?:?):?;//0044BCC0
    procedure sub_0044BCD8;//0044BCD8
    //procedure sub_0044BF4C(?:?; ?:?);//0044BF4C
    //function sub_0044BF60(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;//0044BF60
    //procedure sub_0044BFC0(?:?; ?:?);//0044BFC0
    //procedure sub_0044C0B0(?:?; ?:?);//0044C0B0
    //procedure sub_0044C2B8(?:?);//0044C2B8
    constructor sub_0044C420;//0044C420
    destructor Destroy;//0044C498
    //function sub_0044C4D8:?;//0044C4D8
    //function sub_0044C4FC(?:TStaticListAction; ?:?; ?:?):?;//0044C4FC
    //function sub_0044C580:?;//0044C580
    //procedure sub_0044C598(?:?; ?:?);//0044C598
    //procedure sub_0044C5EC(?:?; ?:?);//0044C5EC
    //function sub_0044C618:?;//0044C618
    //function sub_0044C63C:?;//0044C63C
    //procedure sub_0044C67C(?:?);//0044C67C
    //procedure sub_0044C6D8(?:?);//0044C6D8
    //procedure sub_0044C75C(?:?);//0044C75C
    procedure sub_0044C76C(?:TListActionLink);//0044C76C
    //procedure sub_0044C8F4(?:?);//0044C8F4
    //procedure sub_0044C904(?:?; ?:?);//0044C904
    //procedure sub_0044C94C(?:?);//0044C94C

implementation

//0044B5EC
{*procedure sub_0044B5EC(?:?);
begin
 0044B5EC    push        ebp
 0044B5ED    mov         ebp,esp
 0044B5EF    add         esp,0FFFFFFF8
 0044B5F2    mov         dword ptr [ebp-8],edx
 0044B5F5    mov         dword ptr [ebp-4],eax
 0044B5F8    mov         eax,dword ptr [ebp-8]
 0044B5FB    mov         edx,dword ptr ds:[44A8D8];TListControlItem
 0044B601    call        @IsClass
 0044B606    test        al,al
>0044B608    je          0044B67F
 0044B60A    mov         eax,dword ptr [ebp-4]
 0044B60D    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>0044B611    je          0044B61E
 0044B613    mov         eax,dword ptr [ebp-4]
 0044B616    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 0044B619    mov         edx,dword ptr [eax]
 0044B61B    call        dword ptr [edx+20];TCollection.sub_00421428
 0044B61E    xor         eax,eax
 0044B620    push        ebp
 0044B621    push        44B678
 0044B626    push        dword ptr fs:[eax]
 0044B629    mov         dword ptr fs:[eax],esp
 0044B62C    mov         eax,dword ptr [ebp-8]
 0044B62F    mov         edx,dword ptr [eax+10]
 0044B632    mov         eax,dword ptr [ebp-4]
 0044B635    mov         ecx,dword ptr [eax]
 0044B637    call        dword ptr [ecx+20];TListControlItem.SetCaption
 0044B63A    mov         eax,dword ptr [ebp-8]
 0044B63D    mov         edx,dword ptr [eax+18]
 0044B640    mov         eax,dword ptr [ebp-4]
 0044B643    mov         ecx,dword ptr [eax]
 0044B645    call        dword ptr [ecx+28];TListControlItem.SetImageIndex
 0044B648    mov         eax,dword ptr [ebp-8]
 0044B64B    mov         edx,dword ptr [eax+14]
 0044B64E    mov         eax,dword ptr [ebp-4]
 0044B651    mov         ecx,dword ptr [eax]
 0044B653    call        dword ptr [ecx+24];TListControlItem.sub_0044B760
 0044B656    xor         eax,eax
 0044B658    pop         edx
 0044B659    pop         ecx
 0044B65A    pop         ecx
 0044B65B    mov         dword ptr fs:[eax],edx
 0044B65E    push        44B67F
 0044B663    mov         eax,dword ptr [ebp-4]
 0044B666    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>0044B66A    je          0044B677
 0044B66C    mov         eax,dword ptr [ebp-4]
 0044B66F    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 0044B672    mov         edx,dword ptr [eax]
 0044B674    call        dword ptr [edx+24];TCollection.sub_004214C0
 0044B677    ret
>0044B678    jmp         @HandleFinally
>0044B67D    jmp         0044B663
 0044B67F    pop         ecx
 0044B680    pop         ecx
 0044B681    pop         ebp
 0044B682    ret
end;*}

//0044B684
procedure sub_0044B684(?:TListControlItem);
begin
{*
 0044B684    push        ebp
 0044B685    mov         ebp,esp
 0044B687    push        ecx
 0044B688    mov         dword ptr [ebp-4],eax
 0044B68B    mov         eax,dword ptr [ebp-4]
 0044B68E    cmp         dword ptr [eax+0C],0
>0044B692    je          0044B6A2
 0044B694    mov         edx,dword ptr [ebp-4]
 0044B697    mov         eax,dword ptr [ebp-4]
 0044B69A    mov         eax,dword ptr [eax+0C]
 0044B69D    mov         ecx,dword ptr [eax]
 0044B69F    call        dword ptr [ecx+1C]
 0044B6A2    pop         ecx
 0044B6A3    pop         ebp
 0044B6A4    ret
*}
end;

//0044B6A8
constructor sub_0044B6A8;
begin
{*
 0044B6A8    push        ebp
 0044B6A9    mov         ebp,esp
 0044B6AB    add         esp,0FFFFFFF4
 0044B6AE    test        dl,dl
>0044B6B0    je          0044B6BA
 0044B6B2    add         esp,0FFFFFFF0
 0044B6B5    call        @ClassCreate
 0044B6BA    mov         dword ptr [ebp-0C],ecx
 0044B6BD    mov         byte ptr [ebp-5],dl
 0044B6C0    mov         dword ptr [ebp-4],eax
 0044B6C3    mov         ecx,dword ptr [ebp-0C]
 0044B6C6    xor         edx,edx
 0044B6C8    mov         eax,dword ptr [ebp-4]
 0044B6CB    call        00420FD4
 0044B6D0    mov         eax,dword ptr [ebp-4]
 0044B6D3    mov         dword ptr [eax+18],0FFFFFFFF;TListControlItem.ImageIndex:TImageIndex
 0044B6DA    mov         eax,dword ptr [ebp-4]
 0044B6DD    cmp         byte ptr [ebp-5],0
>0044B6E1    je          0044B6F2
 0044B6E3    call        @AfterConstruction
 0044B6E8    pop         dword ptr fs:[0]
 0044B6EF    add         esp,0C
 0044B6F2    mov         eax,dword ptr [ebp-4]
 0044B6F5    mov         esp,ebp
 0044B6F7    pop         ebp
 0044B6F8    ret
*}
end;

//0044B6FC
{*procedure sub_0044B6FC(?:?);
begin
 0044B6FC    push        ebp
 0044B6FD    mov         ebp,esp
 0044B6FF    add         esp,0FFFFFFF8
 0044B702    mov         dword ptr [ebp-8],edx
 0044B705    mov         dword ptr [ebp-4],eax
 0044B708    mov         eax,dword ptr [ebp-4]
 0044B70B    mov         eax,dword ptr [eax+10];TListControlItem.Caption:String
 0044B70E    call        @LStrLen
 0044B713    test        eax,eax
>0044B715    jle         0044B727
 0044B717    mov         eax,dword ptr [ebp-8]
 0044B71A    mov         edx,dword ptr [ebp-4]
 0044B71D    mov         edx,dword ptr [edx+10];TListControlItem.Caption:String
 0044B720    call        @LStrAsg
>0044B725    jmp         0044B732
 0044B727    mov         edx,dword ptr [ebp-8]
 0044B72A    mov         eax,dword ptr [ebp-4]
 0044B72D    call        004210D8
 0044B732    pop         ecx
 0044B733    pop         ecx
 0044B734    pop         ebp
 0044B735    ret
end;*}

//0044B738
procedure TListControlItem.SetCaption(Value:String);
begin
{*
 0044B738    push        ebp
 0044B739    mov         ebp,esp
 0044B73B    add         esp,0FFFFFFF8
 0044B73E    mov         dword ptr [ebp-8],edx
 0044B741    mov         dword ptr [ebp-4],eax
 0044B744    mov         eax,dword ptr [ebp-4]
 0044B747    add         eax,10;TListControlItem.Caption:String
 0044B74A    mov         edx,dword ptr [ebp-8]
 0044B74D    call        @LStrAsg
 0044B752    mov         eax,dword ptr [ebp-4]
 0044B755    call        0044B684
 0044B75A    pop         ecx
 0044B75B    pop         ecx
 0044B75C    pop         ebp
 0044B75D    ret
*}
end;

//0044B760
{*procedure sub_0044B760(?:?);
begin
 0044B760    push        ebp
 0044B761    mov         ebp,esp
 0044B763    add         esp,0FFFFFFF8
 0044B766    mov         dword ptr [ebp-8],edx
 0044B769    mov         dword ptr [ebp-4],eax
 0044B76C    mov         eax,dword ptr [ebp-8]
 0044B76F    mov         edx,dword ptr [ebp-4]
 0044B772    mov         dword ptr [edx+14],eax;TListControlItem.FData:Pointer
 0044B775    mov         eax,dword ptr [ebp-4]
 0044B778    call        0044B684
 0044B77D    pop         ecx
 0044B77E    pop         ecx
 0044B77F    pop         ebp
 0044B780    ret
end;*}

//0044B784
procedure TListControlItem.SetImageIndex(Value:TImageIndex);
begin
{*
 0044B784    push        ebp
 0044B785    mov         ebp,esp
 0044B787    add         esp,0FFFFFFF8
 0044B78A    mov         dword ptr [ebp-8],edx
 0044B78D    mov         dword ptr [ebp-4],eax
 0044B790    mov         eax,dword ptr [ebp-8]
 0044B793    mov         edx,dword ptr [ebp-4]
 0044B796    mov         dword ptr [edx+18],eax;TListControlItem.ImageIndex:TImageIndex
 0044B799    mov         eax,dword ptr [ebp-4]
 0044B79C    call        0044B684
 0044B7A1    pop         ecx
 0044B7A2    pop         ecx
 0044B7A3    pop         ebp
 0044B7A4    ret
*}
end;

//0044B7A8
{*function sub_0044B7A8(?:?; ?:?; ?:?):?;
begin
 0044B7A8    push        ebp
 0044B7A9    mov         ebp,esp
 0044B7AB    add         esp,0FFFFFFF0
 0044B7AE    push        ebx
 0044B7AF    mov         dword ptr [ebp-0C],ecx
 0044B7B2    mov         dword ptr [ebp-8],edx
 0044B7B5    mov         dword ptr [ebp-4],eax
 0044B7B8    mov         edx,dword ptr [ebp-0C]
 0044B7BB    mov         eax,dword ptr [ebp-4]
 0044B7BE    call        0044B9EC
 0044B7C3    push        eax
 0044B7C4    mov         edx,dword ptr [ebp-8]
 0044B7C7    mov         eax,dword ptr [ebp-4]
 0044B7CA    call        0044B9EC
 0044B7CF    mov         edx,eax
 0044B7D1    mov         eax,dword ptr [ebp-4]
 0044B7D4    pop         ecx
 0044B7D5    mov         ebx,dword ptr [eax]
 0044B7D7    call        dword ptr [ebx+28]
 0044B7DA    mov         dword ptr [ebp-10],eax
 0044B7DD    mov         eax,dword ptr [ebp-10]
 0044B7E0    pop         ebx
 0044B7E1    mov         esp,ebp
 0044B7E3    pop         ebp
 0044B7E4    ret
end;*}

//0044B7E8
{*function sub_0044B7E8(?:TComboExItems):?;
begin
 0044B7E8    push        ebp
 0044B7E9    mov         ebp,esp
 0044B7EB    add         esp,0FFFFFFF8
 0044B7EE    mov         dword ptr [ebp-4],eax
 0044B7F1    mov         eax,dword ptr [ebp-4]
 0044B7F4    call        00421358
 0044B7F9    mov         dword ptr [ebp-8],eax
 0044B7FC    mov         eax,dword ptr [ebp-8]
 0044B7FF    mov         edx,dword ptr [ebp-4]
 0044B802    mov         dword ptr [eax+0C],edx
 0044B805    mov         eax,dword ptr [ebp-8]
 0044B808    pop         ecx
 0044B809    pop         ecx
 0044B80A    pop         ebp
 0044B80B    ret
end;*}

//0044B80C
{*procedure sub_0044B80C(?:TListControlItems; ?:?);
begin
 0044B80C    push        ebp
 0044B80D    mov         ebp,esp
 0044B80F    add         esp,0FFFFFFF8
 0044B812    mov         dword ptr [ebp-8],edx
 0044B815    mov         dword ptr [ebp-4],eax
 0044B818    mov         eax,dword ptr [ebp-4]
 0044B81B    cmp         byte ptr [eax+1D],0
>0044B81F    je          0044B845
 0044B821    mov         eax,dword ptr [ebp-4]
 0044B824    call        0042158C
 0044B829    dec         eax
>0044B82A    jle         0044B845
 0044B82C    mov         eax,dword ptr [ebp-8]
 0044B82F    push        eax
 0044B830    mov         eax,dword ptr [ebp-4]
 0044B833    call        0042158C
 0044B838    mov         ecx,eax
 0044B83A    dec         ecx
 0044B83B    xor         edx,edx
 0044B83D    mov         eax,dword ptr [ebp-4]
 0044B840    call        0044B928
 0044B845    pop         ecx
 0044B846    pop         ecx
 0044B847    pop         ebp
 0044B848    ret
end;*}

//0044B84C
{*function sub_0044B84C(?:?; ?:?):?;
begin
 0044B84C    push        ebp
 0044B84D    mov         ebp,esp
 0044B84F    add         esp,0FFFFFFF0
 0044B852    push        ebx
 0044B853    mov         dword ptr [ebp-0C],ecx
 0044B856    mov         dword ptr [ebp-8],edx
 0044B859    mov         dword ptr [ebp-4],eax
 0044B85C    mov         eax,dword ptr [ebp-4]
 0044B85F    cmp         word ptr [eax+22],0;TListControlItems.?f22:word
>0044B864    je          0044B87E
 0044B866    mov         eax,dword ptr [ebp-0C]
 0044B869    push        eax
 0044B86A    mov         ebx,dword ptr [ebp-4]
 0044B86D    mov         ecx,dword ptr [ebp-8]
 0044B870    mov         edx,dword ptr [ebp-4]
 0044B873    mov         eax,dword ptr [ebx+24];TListControlItems.?f24:dword
 0044B876    call        dword ptr [ebx+20];TListControlItems.OnCompare
 0044B879    mov         dword ptr [ebp-10],eax
>0044B87C    jmp         0044B8B1
 0044B87E    mov         eax,dword ptr [ebp-4]
 0044B881    cmp         byte ptr [eax+1C],0;TListControlItems.CaseSensitive:Boolean
>0044B885    je          0044B89D
 0044B887    mov         eax,dword ptr [ebp-0C]
 0044B88A    mov         edx,dword ptr [eax+10]
 0044B88D    mov         eax,dword ptr [ebp-8]
 0044B890    mov         eax,dword ptr [eax+10]
 0044B893    call        0040BEF8
 0044B898    mov         dword ptr [ebp-10],eax
>0044B89B    jmp         0044B8B1
 0044B89D    mov         eax,dword ptr [ebp-0C]
 0044B8A0    mov         edx,dword ptr [eax+10]
 0044B8A3    mov         eax,dword ptr [ebp-8]
 0044B8A6    mov         eax,dword ptr [eax+10]
 0044B8A9    call        0040BF44
 0044B8AE    mov         dword ptr [ebp-10],eax
 0044B8B1    mov         eax,dword ptr [ebp-10]
 0044B8B4    pop         ebx
 0044B8B5    mov         esp,ebp
 0044B8B7    pop         ebp
 0044B8B8    ret
end;*}

//0044B8BC
{*procedure sub_0044B8BC(?:?; ?:?; ?:?);
begin
 0044B8BC    push        ebp
 0044B8BD    mov         ebp,esp
 0044B8BF    add         esp,0FFFFFFE4
 0044B8C2    mov         dword ptr [ebp-0C],ecx
 0044B8C5    mov         dword ptr [ebp-8],edx
 0044B8C8    mov         dword ptr [ebp-4],eax
 0044B8CB    mov         edx,dword ptr [ebp-8]
 0044B8CE    mov         eax,dword ptr [ebp-4]
 0044B8D1    call        0044B9EC
 0044B8D6    mov         dword ptr [ebp-10],eax
 0044B8D9    mov         edx,dword ptr [ebp-0C]
 0044B8DC    mov         eax,dword ptr [ebp-4]
 0044B8DF    call        0044B9EC
 0044B8E4    mov         dword ptr [ebp-14],eax
 0044B8E7    mov         edx,dword ptr [ebp-8]
 0044B8EA    mov         eax,dword ptr [ebp-4]
 0044B8ED    call        0044B9EC
 0044B8F2    call        TCollectionItem.GetIndex
 0044B8F7    mov         dword ptr [ebp-18],eax
 0044B8FA    mov         edx,dword ptr [ebp-0C]
 0044B8FD    mov         eax,dword ptr [ebp-4]
 0044B900    call        0044B9EC
 0044B905    call        TCollectionItem.GetIndex
 0044B90A    mov         dword ptr [ebp-1C],eax
 0044B90D    mov         edx,dword ptr [ebp-1C]
 0044B910    mov         eax,dword ptr [ebp-10]
 0044B913    mov         ecx,dword ptr [eax]
 0044B915    call        dword ptr [ecx+14]
 0044B918    mov         edx,dword ptr [ebp-18]
 0044B91B    mov         eax,dword ptr [ebp-14]
 0044B91E    mov         ecx,dword ptr [eax]
 0044B920    call        dword ptr [ecx+14]
 0044B923    mov         esp,ebp
 0044B925    pop         ebp
 0044B926    ret
end;*}

//0044B928
{*procedure sub_0044B928(?:?; ?:?; ?:?; ?:?);
begin
 0044B928    push        ebp
 0044B929    mov         ebp,esp
 0044B92B    add         esp,0FFFFFFE8
 0044B92E    mov         dword ptr [ebp-0C],ecx
 0044B931    mov         dword ptr [ebp-8],edx
 0044B934    mov         dword ptr [ebp-4],eax
 0044B937    mov         eax,dword ptr [ebp-8]
 0044B93A    mov         dword ptr [ebp-10],eax
 0044B93D    mov         eax,dword ptr [ebp-0C]
 0044B940    mov         dword ptr [ebp-14],eax
 0044B943    mov         eax,dword ptr [ebp-8]
 0044B946    add         eax,dword ptr [ebp-0C]
 0044B949    shr         eax,1
 0044B94B    mov         dword ptr [ebp-18],eax
>0044B94E    jmp         0044B953
 0044B950    inc         dword ptr [ebp-10]
 0044B953    mov         ecx,dword ptr [ebp-18]
 0044B956    mov         edx,dword ptr [ebp-10]
 0044B959    mov         eax,dword ptr [ebp-4]
 0044B95C    call        dword ptr [ebp+8]
 0044B95F    test        eax,eax
>0044B961    jl          0044B950
>0044B963    jmp         0044B968
 0044B965    dec         dword ptr [ebp-14]
 0044B968    mov         ecx,dword ptr [ebp-18]
 0044B96B    mov         edx,dword ptr [ebp-14]
 0044B96E    mov         eax,dword ptr [ebp-4]
 0044B971    call        dword ptr [ebp+8]
 0044B974    test        eax,eax
>0044B976    jg          0044B965
 0044B978    mov         eax,dword ptr [ebp-10]
 0044B97B    cmp         eax,dword ptr [ebp-14]
>0044B97E    jg          0044B9B2
 0044B980    mov         ecx,dword ptr [ebp-14]
 0044B983    mov         edx,dword ptr [ebp-10]
 0044B986    mov         eax,dword ptr [ebp-4]
 0044B989    call        0044B8BC
 0044B98E    mov         eax,dword ptr [ebp-18]
 0044B991    cmp         eax,dword ptr [ebp-10]
>0044B994    jne         0044B99E
 0044B996    mov         eax,dword ptr [ebp-14]
 0044B999    mov         dword ptr [ebp-18],eax
>0044B99C    jmp         0044B9AC
 0044B99E    mov         eax,dword ptr [ebp-18]
 0044B9A1    cmp         eax,dword ptr [ebp-14]
>0044B9A4    jne         0044B9AC
 0044B9A6    mov         eax,dword ptr [ebp-10]
 0044B9A9    mov         dword ptr [ebp-18],eax
 0044B9AC    inc         dword ptr [ebp-10]
 0044B9AF    dec         dword ptr [ebp-14]
 0044B9B2    mov         eax,dword ptr [ebp-10]
 0044B9B5    cmp         eax,dword ptr [ebp-14]
>0044B9B8    jle         0044B953
 0044B9BA    mov         eax,dword ptr [ebp-8]
 0044B9BD    cmp         eax,dword ptr [ebp-14]
>0044B9C0    jge         0044B9D4
 0044B9C2    mov         eax,dword ptr [ebp+8]
 0044B9C5    push        eax
 0044B9C6    mov         ecx,dword ptr [ebp-14]
 0044B9C9    mov         edx,dword ptr [ebp-8]
 0044B9CC    mov         eax,dword ptr [ebp-4]
 0044B9CF    call        0044B928
 0044B9D4    mov         eax,dword ptr [ebp-10]
 0044B9D7    mov         dword ptr [ebp-8],eax
 0044B9DA    mov         eax,dword ptr [ebp-10]
 0044B9DD    cmp         eax,dword ptr [ebp-0C]
>0044B9E0    jl          0044B937
 0044B9E6    mov         esp,ebp
 0044B9E8    pop         ebp
 0044B9E9    ret         4
end;*}

//0044B9EC
{*function sub_0044B9EC(?:TListControlItems; ?:Integer):?;
begin
 0044B9EC    push        ebp
 0044B9ED    mov         ebp,esp
 0044B9EF    add         esp,0FFFFFFF4
 0044B9F2    mov         dword ptr [ebp-8],edx
 0044B9F5    mov         dword ptr [ebp-4],eax
 0044B9F8    mov         edx,dword ptr [ebp-8]
 0044B9FB    mov         eax,dword ptr [ebp-4]
 0044B9FE    call        004215A8
 0044BA03    mov         dword ptr [ebp-0C],eax
 0044BA06    mov         eax,dword ptr [ebp-0C]
 0044BA09    mov         esp,ebp
 0044BA0B    pop         ebp
 0044BA0C    ret
end;*}

//0044BA10
procedure TListControlItems.SetSortType(Value:TListItemsSortType);
begin
{*
 0044BA10    push        ebp
 0044BA11    mov         ebp,esp
 0044BA13    add         esp,0FFFFFFF8
 0044BA16    mov         byte ptr [ebp-5],dl
 0044BA19    mov         dword ptr [ebp-4],eax
 0044BA1C    mov         eax,dword ptr [ebp-4]
 0044BA1F    mov         al,byte ptr [eax+1D];TListControlItems.SortType:TListItemsSortType
 0044BA22    cmp         al,byte ptr [ebp-5]
>0044BA25    je          0044BA43
 0044BA27    mov         al,byte ptr [ebp-5]
 0044BA2A    mov         edx,dword ptr [ebp-4]
 0044BA2D    mov         byte ptr [edx+1D],al;TListControlItems.SortType:TListItemsSortType
 0044BA30    cmp         byte ptr [ebp-5],0
>0044BA34    je          0044BA43
 0044BA36    mov         edx,44B7A8;sub_0044B7A8
 0044BA3B    mov         eax,dword ptr [ebp-4]
 0044BA3E    call        0044B80C
 0044BA43    pop         ecx
 0044BA44    pop         ecx
 0044BA45    pop         ebp
 0044BA46    ret
*}
end;

//0044BA48
procedure sub_0044BA48(?:TCollection);
begin
{*
 0044BA48    push        ebp
 0044BA49    mov         ebp,esp
 0044BA4B    push        ecx
 0044BA4C    mov         dword ptr [ebp-4],eax
 0044BA4F    mov         edx,44B7A8;sub_0044B7A8
 0044BA54    mov         eax,dword ptr [ebp-4]
 0044BA57    call        0044B80C
 0044BA5C    pop         ecx
 0044BA5D    pop         ebp
 0044BA5E    ret
*}
end;

//0044BA60
{*constructor TStaticListItems.Create(?:?);
begin
 0044BA60    push        ebp
 0044BA61    mov         ebp,esp
 0044BA63    add         esp,0FFFFFFF4
 0044BA66    test        dl,dl
>0044BA68    je          0044BA72
 0044BA6A    add         esp,0FFFFFFF0
 0044BA6D    call        @ClassCreate
 0044BA72    mov         dword ptr [ebp-0C],ecx
 0044BA75    mov         byte ptr [ebp-5],dl
 0044BA78    mov         dword ptr [ebp-4],eax
 0044BA7B    mov         eax,dword ptr [ebp+8]
 0044BA7E    push        eax
 0044BA7F    mov         ecx,dword ptr [ebp-0C]
 0044BA82    xor         edx,edx
 0044BA84    mov         eax,dword ptr [ebp-4]
 0044BA87    call        TWorkAreas.Create
 0044BA8C    mov         eax,dword ptr [ebp-4]
 0044BA8F    mov         byte ptr [eax+1C],0
 0044BA93    mov         eax,dword ptr [ebp-4]
 0044BA96    mov         byte ptr [eax+1D],0
 0044BA9A    mov         eax,dword ptr [ebp-4]
 0044BA9D    cmp         byte ptr [ebp-5],0
>0044BAA1    je          0044BAB2
 0044BAA3    call        @AfterConstruction
 0044BAA8    pop         dword ptr fs:[0]
 0044BAAF    add         esp,0C
 0044BAB2    mov         eax,dword ptr [ebp-4]
 0044BAB5    mov         esp,ebp
 0044BAB7    pop         ebp
 0044BAB8    ret         4
end;*}

//0044BABC
constructor sub_0044BABC;
begin
{*
 0044BABC    push        ebp
 0044BABD    mov         ebp,esp
 0044BABF    add         esp,0FFFFFFF4
 0044BAC2    test        dl,dl
>0044BAC4    je          0044BACE
 0044BAC6    add         esp,0FFFFFFF0
 0044BAC9    call        @ClassCreate
 0044BACE    mov         dword ptr [ebp-0C],ecx
 0044BAD1    mov         byte ptr [ebp-5],dl
 0044BAD4    mov         dword ptr [ebp-4],eax
 0044BAD7    mov         ecx,dword ptr [ebp-0C]
 0044BADA    xor         edx,edx
 0044BADC    mov         eax,dword ptr [ebp-4]
 0044BADF    call        TCustomAction.Create
 0044BAE4    mov         eax,dword ptr [ebp-4]
 0044BAE7    mov         dword ptr [eax+0C8],0FFFFFFFF;TCustomListAction.FItemIndex:Integer
 0044BAF1    mov         eax,dword ptr [ebp-4]
 0044BAF4    mov         byte ptr [eax+60],0;TCustomListAction.FDisableIfNoHandler:Boolean
 0044BAF8    mov         dl,1
 0044BAFA    mov         eax,dword ptr [ebp-4]
 0044BAFD    call        TVirtualListAction.SetEnabled
 0044BB02    mov         dl,1
 0044BB04    mov         eax,dword ptr [ebp-4]
 0044BB07    call        TVirtualListAction.SetActive
 0044BB0C    mov         eax,dword ptr [ebp-4]
 0044BB0F    cmp         byte ptr [ebp-5],0
>0044BB13    je          0044BB24
 0044BB15    call        @AfterConstruction
 0044BB1A    pop         dword ptr fs:[0]
 0044BB21    add         esp,0C
 0044BB24    mov         eax,dword ptr [ebp-4]
 0044BB27    mov         esp,ebp
 0044BB29    pop         ebp
 0044BB2A    ret
*}
end;

//0044BB2C
{*procedure sub_0044BB2C(?:?);
begin
 0044BB2C    push        ebp
 0044BB2D    mov         ebp,esp
 0044BB2F    add         esp,0FFFFFFEC
 0044BB32    push        ebx
 0044BB33    mov         dword ptr [ebp-8],edx
 0044BB36    mov         dword ptr [ebp-4],eax
 0044BB39    mov         eax,dword ptr [ebp-4]
 0044BB3C    cmp         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
>0044BB43    jne         0044BC61
 0044BB49    mov         eax,dword ptr [ebp-4]
 0044BB4C    mov         byte ptr [eax+0A8],1;TCustomListAction.FInUpdate:Boolean
 0044BB53    xor         eax,eax
 0044BB55    push        ebp
 0044BB56    push        44BC5A
 0044BB5B    push        dword ptr fs:[eax]
 0044BB5E    mov         dword ptr fs:[eax],esp
 0044BB61    mov         eax,dword ptr [ebp-8]
 0044BB64    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044BB6A    call        @IsClass
 0044BB6F    test        al,al
>0044BB71    je          0044BC13
 0044BB77    mov         eax,dword ptr [ebp-8]
 0044BB7A    mov         edx,dword ptr [eax]
 0044BB7C    call        dword ptr [edx+0CC]
 0044BB82    mov         edx,dword ptr [ebp-4]
 0044BB85    mov         dword ptr [edx+0C8],eax;TCustomListAction.FItemIndex:Integer
 0044BB8B    mov         eax,dword ptr [ebp-4]
 0044BB8E    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 0044BB91    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044BB94    dec         eax
 0044BB95    test        eax,eax
>0044BB97    jl          0044BC13
 0044BB99    inc         eax
 0044BB9A    mov         dword ptr [ebp-10],eax
 0044BB9D    mov         dword ptr [ebp-0C],0
 0044BBA4    mov         eax,dword ptr [ebp-4]
 0044BBA7    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 0044BBAA    mov         edx,dword ptr [ebp-0C]
 0044BBAD    call        TList.Get
 0044BBB2    mov         edx,dword ptr ds:[44B4F8];TListActionLink
 0044BBB8    call        @IsClass
 0044BBBD    test        al,al
>0044BBBF    je          0044BC0B
 0044BBC1    mov         eax,dword ptr [ebp-4]
 0044BBC4    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 0044BBC7    mov         edx,dword ptr [ebp-0C]
 0044BBCA    call        TList.Get
 0044BBCF    mov         eax,dword ptr [eax+20]
 0044BBD2    cmp         eax,dword ptr [ebp-8]
>0044BBD5    je          0044BC0B
 0044BBD7    mov         eax,dword ptr [ebp-8]
 0044BBDA    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044BBE0    call        @AsClass
 0044BBE5    mov         dword ptr [ebp-14],eax
 0044BBE8    mov         eax,dword ptr [ebp-14]
 0044BBEB    mov         edx,dword ptr [eax]
 0044BBED    call        dword ptr [edx+0CC];@AbstractError
 0044BBF3    push        eax
 0044BBF4    mov         eax,dword ptr [ebp-4]
 0044BBF7    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 0044BBFA    mov         edx,dword ptr [ebp-0C]
 0044BBFD    call        TList.Get
 0044BC02    pop         edx
 0044BC03    mov         ecx,dword ptr [eax]
 0044BC05    call        dword ptr [ecx+8C]
 0044BC0B    inc         dword ptr [ebp-0C]
 0044BC0E    dec         dword ptr [ebp-10]
>0044BC11    jne         0044BBA4
 0044BC13    mov         eax,dword ptr [ebp-4]
 0044BC16    cmp         word ptr [eax+0C2],0;TCustomListAction.?fC2:word
>0044BC1E    je          0044BC42
 0044BC20    mov         eax,dword ptr [ebp-8]
 0044BC23    mov         edx,dword ptr ds:[47DF94];TControl
 0044BC29    call        @AsClass
 0044BC2E    mov         ecx,eax
 0044BC30    mov         ebx,dword ptr [ebp-4]
 0044BC33    mov         edx,dword ptr [ebp-4]
 0044BC36    mov         eax,dword ptr [ebx+0C4];TCustomListAction.?fC4:dword
 0044BC3C    call        dword ptr [ebx+0C0];TCustomListAction.FOnItemSelected
 0044BC42    xor         eax,eax
 0044BC44    pop         edx
 0044BC45    pop         ecx
 0044BC46    pop         ecx
 0044BC47    mov         dword ptr fs:[eax],edx
 0044BC4A    push        44BC61
 0044BC4F    mov         eax,dword ptr [ebp-4]
 0044BC52    mov         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
 0044BC59    ret
>0044BC5A    jmp         @HandleFinally
>0044BC5F    jmp         0044BC4F
 0044BC61    pop         ebx
 0044BC62    mov         esp,ebp
 0044BC64    pop         ebp
 0044BC65    ret
end;*}

//0044BC68
{*function sub_0044BC68:?;
begin
 0044BC68    push        ebp
 0044BC69    mov         ebp,esp
 0044BC6B    add         esp,0FFFFFFF8
 0044BC6E    push        ebx
 0044BC6F    mov         dword ptr [ebp-4],eax
 0044BC72    mov         dword ptr [ebp-8],0FFFFFFFF
 0044BC79    mov         eax,dword ptr [ebp-4]
 0044BC7C    cmp         word ptr [eax+0BA],0;TCustomListAction.?fBA:word
>0044BC84    je          0044BC9B
 0044BC86    lea         ecx,[ebp-8]
 0044BC89    mov         ebx,dword ptr [ebp-4]
 0044BC8C    mov         edx,dword ptr [ebp-4]
 0044BC8F    mov         eax,dword ptr [ebx+0BC];TCustomListAction.?fBC:dword
 0044BC95    call        dword ptr [ebx+0B8];TCustomListAction.FOnGetItemCount
 0044BC9B    mov         eax,dword ptr [ebp-8]
 0044BC9E    pop         ebx
 0044BC9F    pop         ecx
 0044BCA0    pop         ecx
 0044BCA1    pop         ebp
 0044BCA2    ret
end;*}

//0044BCA4
{*procedure sub_0044BCA4(?:?; ?:?);
begin
 0044BCA4    push        ebp
 0044BCA5    mov         ebp,esp
 0044BCA7    add         esp,0FFFFFFF4
 0044BCAA    mov         dword ptr [ebp-8],ecx
 0044BCAD    mov         dword ptr [ebp-0C],edx
 0044BCB0    mov         dword ptr [ebp-4],eax
 0044BCB3    mov         eax,dword ptr [ebp-8]
 0044BCB6    call        @LStrClr
 0044BCBB    mov         esp,ebp
 0044BCBD    pop         ebp
 0044BCBE    ret
end;*}

//0044BCC0
{*function sub_0044BCC0(?:?):?;
begin
 0044BCC0    push        ebp
 0044BCC1    mov         ebp,esp
 0044BCC3    add         esp,0FFFFFFF4
 0044BCC6    mov         dword ptr [ebp-0C],edx
 0044BCC9    mov         dword ptr [ebp-4],eax
 0044BCCC    mov         byte ptr [ebp-5],1
 0044BCD0    mov         al,byte ptr [ebp-5]
 0044BCD3    mov         esp,ebp
 0044BCD5    pop         ebp
 0044BCD6    ret
end;*}

//0044BCD8
procedure sub_0044BCD8;
begin
{*
 0044BCD8    push        ebp
 0044BCD9    mov         ebp,esp
 0044BCDB    push        ecx
 0044BCDC    mov         dword ptr [ebp-4],eax
 0044BCDF    mov         eax,dword ptr [ebp-4]
 0044BCE2    call        0042A86C
 0044BCE7    mov         eax,dword ptr [ebp-4]
 0044BCEA    cmp         byte ptr [eax+0A1],0;TCustomListAction.FActivated:Boolean
>0044BCF1    je          0044BD04
 0044BCF3    mov         eax,dword ptr [ebp-4]
 0044BCF6    mov         dl,byte ptr [eax+0A1];TCustomListAction.FActivated:Boolean
 0044BCFC    mov         eax,dword ptr [ebp-4]
 0044BCFF    call        TVirtualListAction.SetActive
 0044BD04    mov         eax,dword ptr [ebp-4]
 0044BD07    cmp         dword ptr [eax+0AC],0;TCustomListAction.FLoadedImages:TCustomImageList
>0044BD0E    je          0044BD21
 0044BD10    mov         eax,dword ptr [ebp-4]
 0044BD13    mov         edx,dword ptr [eax+0AC];TCustomListAction.FLoadedImages:TCustomImageList
 0044BD19    mov         eax,dword ptr [ebp-4]
 0044BD1C    call        TVirtualListAction.SetImages
 0044BD21    pop         ecx
 0044BD22    pop         ebp
 0044BD23    ret
*}
end;

//0044BD24
procedure TVirtualListAction.SetActive(Value:Boolean);
begin
{*
 0044BD24    push        ebp
 0044BD25    mov         ebp,esp
 0044BD27    add         esp,0FFFFFFF0
 0044BD2A    mov         byte ptr [ebp-5],dl
 0044BD2D    mov         dword ptr [ebp-4],eax
 0044BD30    cmp         byte ptr [ebp-5],0
>0044BD34    je          0044BD50
 0044BD36    mov         eax,dword ptr [ebp-4]
 0044BD39    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>0044BD3D    je          0044BD50
 0044BD3F    mov         eax,dword ptr [ebp-4]
 0044BD42    mov         dl,byte ptr [ebp-5]
 0044BD45    mov         byte ptr [eax+0A1],dl;TVirtualListAction.FActivated:Boolean
>0044BD4B    jmp         0044BE25
 0044BD50    mov         eax,dword ptr [ebp-4]
 0044BD53    mov         al,byte ptr [eax+0A0];TVirtualListAction.FActive:Boolean
 0044BD59    cmp         al,byte ptr [ebp-5]
>0044BD5C    je          0044BE25
 0044BD62    mov         eax,dword ptr [ebp-4]
 0044BD65    mov         dl,byte ptr [ebp-5]
 0044BD68    mov         byte ptr [eax+0A0],dl;TVirtualListAction.FActive:Boolean
 0044BD6E    mov         eax,dword ptr [ebp-4]
 0044BD71    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BD74    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044BD77    dec         eax
 0044BD78    test        eax,eax
>0044BD7A    jl          0044BE00
 0044BD80    inc         eax
 0044BD81    mov         dword ptr [ebp-10],eax
 0044BD84    mov         dword ptr [ebp-0C],0
 0044BD8B    mov         eax,dword ptr [ebp-4]
 0044BD8E    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BD91    mov         edx,dword ptr [ebp-0C]
 0044BD94    call        TList.Get
 0044BD99    mov         edx,dword ptr ds:[44B4F8];TListActionLink
 0044BD9F    call        @IsClass
 0044BDA4    test        al,al
>0044BDA6    je          0044BDF8
 0044BDA8    mov         eax,dword ptr [ebp-4]
 0044BDAB    mov         byte ptr [eax+0B0],1;TVirtualListAction.FLoading:Boolean
 0044BDB2    xor         eax,eax
 0044BDB4    push        ebp
 0044BDB5    push        44BDF1
 0044BDBA    push        dword ptr fs:[eax]
 0044BDBD    mov         dword ptr fs:[eax],esp
 0044BDC0    mov         eax,dword ptr [ebp-4]
 0044BDC3    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BDC6    mov         edx,dword ptr [ebp-0C]
 0044BDC9    call        TList.Get
 0044BDCE    mov         dl,byte ptr [ebp-5]
 0044BDD1    mov         ecx,dword ptr [eax]
 0044BDD3    call        dword ptr [ecx+80]
 0044BDD9    xor         eax,eax
 0044BDDB    pop         edx
 0044BDDC    pop         ecx
 0044BDDD    pop         ecx
 0044BDDE    mov         dword ptr fs:[eax],edx
 0044BDE1    push        44BDF8
 0044BDE6    mov         eax,dword ptr [ebp-4]
 0044BDE9    mov         byte ptr [eax+0B0],0;TVirtualListAction.FLoading:Boolean
 0044BDF0    ret
>0044BDF1    jmp         @HandleFinally
>0044BDF6    jmp         0044BDE6
 0044BDF8    inc         dword ptr [ebp-0C]
 0044BDFB    dec         dword ptr [ebp-10]
>0044BDFE    jne         0044BD8B
 0044BE00    mov         eax,dword ptr [ebp-4]
 0044BE03    mov         edx,dword ptr [eax]
 0044BE05    call        dword ptr [edx+30];TVirtualListAction.sub_0042B208
 0044BE08    mov         eax,dword ptr [ebp-4]
 0044BE0B    cmp         dword ptr [eax+0C8],0FFFFFFFF;TVirtualListAction.FItemIndex:Integer
>0044BE12    je          0044BE25
 0044BE14    mov         eax,dword ptr [ebp-4]
 0044BE17    mov         edx,dword ptr [eax+0C8];TVirtualListAction.FItemIndex:Integer
 0044BE1D    mov         eax,dword ptr [ebp-4]
 0044BE20    call        TVirtualListAction.SetItemIndex
 0044BE25    mov         esp,ebp
 0044BE27    pop         ebp
 0044BE28    ret
*}
end;

//0044BE2C
procedure TVirtualListAction.SetImages(Value:TCustomImageList);
begin
{*
 0044BE2C    push        ebp
 0044BE2D    mov         ebp,esp
 0044BE2F    add         esp,0FFFFFFF0
 0044BE32    mov         dword ptr [ebp-8],edx
 0044BE35    mov         dword ptr [ebp-4],eax
 0044BE38    cmp         dword ptr [ebp-8],0
>0044BE3C    je          0044BE55
 0044BE3E    mov         eax,dword ptr [ebp-4]
 0044BE41    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>0044BE45    je          0044BE55
 0044BE47    mov         eax,dword ptr [ebp-8]
 0044BE4A    mov         edx,dword ptr [ebp-4]
 0044BE4D    mov         dword ptr [edx+0AC],eax;TVirtualListAction.FLoadedImages:TCustomImageList
>0044BE53    jmp         0044BEC6
 0044BE55    mov         eax,dword ptr [ebp-4]
 0044BE58    mov         eax,dword ptr [eax+0A4];TVirtualListAction.FImages:TCustomImageList
 0044BE5E    cmp         eax,dword ptr [ebp-8]
>0044BE61    je          0044BEC6
 0044BE63    mov         eax,dword ptr [ebp-8]
 0044BE66    mov         edx,dword ptr [ebp-4]
 0044BE69    mov         dword ptr [edx+0A4],eax;TVirtualListAction.FImages:TCustomImageList
 0044BE6F    mov         eax,dword ptr [ebp-4]
 0044BE72    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BE75    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044BE78    dec         eax
 0044BE79    test        eax,eax
>0044BE7B    jl          0044BEC6
 0044BE7D    inc         eax
 0044BE7E    mov         dword ptr [ebp-10],eax
 0044BE81    mov         dword ptr [ebp-0C],0
 0044BE88    mov         edx,dword ptr [ebp-0C]
 0044BE8B    mov         eax,dword ptr [ebp-4]
 0044BE8E    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BE91    call        TList.Get
 0044BE96    mov         edx,dword ptr ds:[44B4F8];TListActionLink
 0044BE9C    call        @IsClass
 0044BEA1    test        al,al
>0044BEA3    je          0044BEBE
 0044BEA5    mov         edx,dword ptr [ebp-0C]
 0044BEA8    mov         eax,dword ptr [ebp-4]
 0044BEAB    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BEAE    call        TList.Get
 0044BEB3    mov         edx,dword ptr [ebp-8]
 0044BEB6    mov         ecx,dword ptr [eax]
 0044BEB8    call        dword ptr [ecx+88]
 0044BEBE    inc         dword ptr [ebp-0C]
 0044BEC1    dec         dword ptr [ebp-10]
>0044BEC4    jne         0044BE88
 0044BEC6    mov         esp,ebp
 0044BEC8    pop         ebp
 0044BEC9    ret
*}
end;

//0044BECC
procedure TVirtualListAction.SetItemIndex(Value:Integer);
begin
{*
 0044BECC    push        ebp
 0044BECD    mov         ebp,esp
 0044BECF    add         esp,0FFFFFFF0
 0044BED2    mov         dword ptr [ebp-8],edx
 0044BED5    mov         dword ptr [ebp-4],eax
 0044BED8    mov         eax,dword ptr [ebp-4]
 0044BEDB    cmp         byte ptr [eax+0A0],0;TVirtualListAction.FActive:Boolean
>0044BEE2    je          0044BF47
 0044BEE4    mov         eax,dword ptr [ebp-4]
 0044BEE7    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BEEA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044BEED    dec         eax
 0044BEEE    test        eax,eax
>0044BEF0    jl          0044BF3B
 0044BEF2    inc         eax
 0044BEF3    mov         dword ptr [ebp-10],eax
 0044BEF6    mov         dword ptr [ebp-0C],0
 0044BEFD    mov         edx,dword ptr [ebp-0C]
 0044BF00    mov         eax,dword ptr [ebp-4]
 0044BF03    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BF06    call        TList.Get
 0044BF0B    mov         edx,dword ptr ds:[44B4F8];TListActionLink
 0044BF11    call        @IsClass
 0044BF16    test        al,al
>0044BF18    je          0044BF33
 0044BF1A    mov         edx,dword ptr [ebp-0C]
 0044BF1D    mov         eax,dword ptr [ebp-4]
 0044BF20    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 0044BF23    call        TList.Get
 0044BF28    mov         edx,dword ptr [ebp-8]
 0044BF2B    mov         ecx,dword ptr [eax]
 0044BF2D    call        dword ptr [ecx+8C]
 0044BF33    inc         dword ptr [ebp-0C]
 0044BF36    dec         dword ptr [ebp-10]
>0044BF39    jne         0044BEFD
 0044BF3B    mov         eax,dword ptr [ebp-8]
 0044BF3E    mov         edx,dword ptr [ebp-4]
 0044BF41    mov         dword ptr [edx+0C8],eax;TVirtualListAction.FItemIndex:Integer
 0044BF47    mov         esp,ebp
 0044BF49    pop         ebp
 0044BF4A    ret
*}
end;

//0044BF4C
{*procedure sub_0044BF4C(?:?; ?:?);
begin
 0044BF4C    push        ebp
 0044BF4D    mov         ebp,esp
 0044BF4F    add         esp,0FFFFFFF4
 0044BF52    mov         dword ptr [ebp-0C],ecx
 0044BF55    mov         dword ptr [ebp-8],edx
 0044BF58    mov         dword ptr [ebp-4],eax
 0044BF5B    mov         esp,ebp
 0044BF5D    pop         ebp
 0044BF5E    ret
end;*}

//0044BF60
{*function sub_0044BF60(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;
begin
 0044BF60    push        ebp
 0044BF61    mov         ebp,esp
 0044BF63    add         esp,0FFFFFFF0
 0044BF66    push        ebx
 0044BF67    mov         dword ptr [ebp-0C],ecx
 0044BF6A    mov         dword ptr [ebp-8],edx
 0044BF6D    mov         dword ptr [ebp-4],eax
 0044BF70    mov         byte ptr [ebp-0D],0
 0044BF74    mov         eax,dword ptr [ebp-4]
 0044BF77    mov         edx,dword ptr [eax]
 0044BF79    call        dword ptr [edx+54]
 0044BF7C    test        eax,eax
>0044BF7E    jle         0044BFB6
 0044BF80    mov         eax,dword ptr [ebp-4]
 0044BF83    cmp         word ptr [eax+0D2],0
 0044BF8B    setne       byte ptr [ebp-0D]
 0044BF8F    cmp         byte ptr [ebp-0D],0
>0044BF93    je          0044BFB6
 0044BF95    mov         eax,dword ptr [ebp-0C]
 0044BF98    push        eax
 0044BF99    mov         eax,dword ptr [ebp+0C]
 0044BF9C    push        eax
 0044BF9D    mov         eax,dword ptr [ebp+8]
 0044BFA0    push        eax
 0044BFA1    mov         ebx,dword ptr [ebp-4]
 0044BFA4    mov         ecx,dword ptr [ebp-8]
 0044BFA7    mov         edx,dword ptr [ebp-4]
 0044BFAA    mov         eax,dword ptr [ebx+0D4]
 0044BFB0    call        dword ptr [ebx+0D0]
 0044BFB6    mov         al,byte ptr [ebp-0D]
 0044BFB9    pop         ebx
 0044BFBA    mov         esp,ebp
 0044BFBC    pop         ebp
 0044BFBD    ret         8
end;*}

//0044BFC0
{*procedure sub_0044BFC0(?:?; ?:?);
begin
 0044BFC0    push        ebp
 0044BFC1    mov         ebp,esp
 0044BFC3    add         esp,0FFFFFFDC
 0044BFC6    push        ebx
 0044BFC7    xor         ebx,ebx
 0044BFC9    mov         dword ptr [ebp-24],ebx
 0044BFCC    mov         dword ptr [ebp-18],ebx
 0044BFCF    mov         dword ptr [ebp-0C],ecx
 0044BFD2    mov         dword ptr [ebp-8],edx
 0044BFD5    mov         dword ptr [ebp-4],eax
 0044BFD8    xor         eax,eax
 0044BFDA    push        ebp
 0044BFDB    push        44C0A1
 0044BFE0    push        dword ptr fs:[eax]
 0044BFE3    mov         dword ptr fs:[eax],esp
 0044BFE6    mov         eax,dword ptr [ebp-4]
 0044BFE9    mov         edx,dword ptr [eax]
 0044BFEB    call        dword ptr [edx+54];TVirtualListAction.sub_0044BC68
 0044BFEE    cmp         eax,dword ptr [ebp-8]
>0044BFF1    jle         0044C052
 0044BFF3    mov         eax,dword ptr [ebp-4]
 0044BFF6    mov         edx,dword ptr [eax]
 0044BFF8    call        dword ptr [edx+54];TVirtualListAction.sub_0044BC68
 0044BFFB    test        eax,eax
>0044BFFD    jle         0044C052
 0044BFFF    mov         eax,dword ptr [ebp-4]
 0044C002    cmp         word ptr [eax+0D2],0;TVirtualListAction.?fD2:word
>0044C00A    je          0044C02F
 0044C00C    mov         eax,dword ptr [ebp-0C]
 0044C00F    push        eax
 0044C010    lea         eax,[ebp-10]
 0044C013    push        eax
 0044C014    lea         eax,[ebp-14]
 0044C017    push        eax
 0044C018    mov         ebx,dword ptr [ebp-4]
 0044C01B    mov         ecx,dword ptr [ebp-8]
 0044C01E    mov         edx,dword ptr [ebp-4]
 0044C021    mov         eax,dword ptr [ebx+0D4];TVirtualListAction.?fD4:dword
 0044C027    call        dword ptr [ebx+0D0];TVirtualListAction.OnGetItem
>0044C02D    jmp         0044C083
 0044C02F    lea         edx,[ebp-18]
 0044C032    mov         eax,[0056E44C];^SNoGetItemEventHandler:TResStringRec
 0044C037    call        LoadResString
 0044C03C    mov         ecx,dword ptr [ebp-18]
 0044C03F    mov         dl,1
 0044C041    mov         eax,[0040B004];Exception
 0044C046    call        Exception.Create;Exception.Create
 0044C04B    call        @RaiseExcept
>0044C050    jmp         0044C083
 0044C052    mov         eax,dword ptr [ebp-8]
 0044C055    mov         dword ptr [ebp-20],eax
 0044C058    mov         byte ptr [ebp-1C],0
 0044C05C    lea         eax,[ebp-20]
 0044C05F    push        eax
 0044C060    push        0
 0044C062    lea         edx,[ebp-24]
 0044C065    mov         eax,[0056E4A8];^SListIndexError:TResStringRec
 0044C06A    call        LoadResString
 0044C06F    mov         ecx,dword ptr [ebp-24]
 0044C072    mov         dl,1
 0044C074    mov         eax,[0040B004];Exception
 0044C079    call        Exception.CreateFmt;Exception.Create
 0044C07E    call        @RaiseExcept
 0044C083    xor         eax,eax
 0044C085    pop         edx
 0044C086    pop         ecx
 0044C087    pop         ecx
 0044C088    mov         dword ptr fs:[eax],edx
 0044C08B    push        44C0A8
 0044C090    lea         eax,[ebp-24]
 0044C093    call        @LStrClr
 0044C098    lea         eax,[ebp-18]
 0044C09B    call        @LStrClr
 0044C0A0    ret
>0044C0A1    jmp         @HandleFinally
>0044C0A6    jmp         0044C090
 0044C0A8    pop         ebx
 0044C0A9    mov         esp,ebp
 0044C0AB    pop         ebp
 0044C0AC    ret
end;*}

//0044C0B0
{*procedure sub_0044C0B0(?:?; ?:?);
begin
 0044C0B0    push        ebp
 0044C0B1    mov         ebp,esp
 0044C0B3    add         esp,0FFFFFFD8
 0044C0B6    mov         byte ptr [ebp-9],cl
 0044C0B9    mov         dword ptr [ebp-8],edx
 0044C0BC    mov         dword ptr [ebp-4],eax
 0044C0BF    mov         al,byte ptr [ebp-9]
 0044C0C2    sub         al,1
>0044C0C4    jb          0044C0D3
 0044C0C6    dec         al
>0044C0C8    je          0044C1F3
>0044C0CE    jmp         0044C2B1
 0044C0D3    mov         eax,dword ptr [ebp-4]
 0044C0D6    cmp         dword ptr [eax+28],0;TStaticListItems................FStaticListAction:TStaticListAction
>0044C0DA    je          0044C2B1
 0044C0E0    mov         eax,dword ptr [ebp-4]
 0044C0E3    mov         eax,dword ptr [eax+28];TStaticListItems.................FStaticListAction:TStaticListAct...
 0044C0E6    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>0044C0ED    je          0044C2B1
 0044C0F3    mov         eax,dword ptr [ebp-4]
 0044C0F6    mov         eax,dword ptr [eax+28];TStaticListItems..................FStaticListAction:TStaticListAc...
 0044C0F9    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C0FC    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044C0FF    dec         eax
 0044C100    test        eax,eax
>0044C102    jl          0044C2B1
 0044C108    inc         eax
 0044C109    mov         dword ptr [ebp-14],eax
 0044C10C    mov         dword ptr [ebp-10],0
 0044C113    mov         eax,dword ptr [ebp-4]
 0044C116    mov         eax,dword ptr [eax+28];TStaticListItems...................FStaticListAction:TStaticListA...
 0044C119    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C11C    mov         edx,dword ptr [ebp-10]
 0044C11F    call        TList.Get
 0044C124    mov         dword ptr [ebp-18],eax
 0044C127    mov         eax,dword ptr [ebp-18]
 0044C12A    mov         eax,dword ptr [eax+20]
 0044C12D    mov         edx,dword ptr ds:[454218];TCustomComboBoxEx
 0044C133    call        @IsClass
 0044C138    test        al,al
>0044C13A    je          0044C18D
 0044C13C    mov         eax,dword ptr [ebp-18]
 0044C13F    mov         eax,dword ptr [eax+20]
 0044C142    mov         edx,dword ptr ds:[454218];TCustomComboBoxEx
 0044C148    call        @AsClass
 0044C14D    mov         dword ptr [ebp-1C],eax
 0044C150    mov         eax,dword ptr [ebp-1C]
 0044C153    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 0044C159    call        0046A22C
 0044C15E    mov         dword ptr [ebp-20],eax
 0044C161    mov         eax,dword ptr [ebp-8]
 0044C164    mov         edx,dword ptr [eax+10]
 0044C167    mov         eax,dword ptr [ebp-20]
 0044C16A    mov         ecx,dword ptr [eax]
 0044C16C    call        dword ptr [ecx+20]
 0044C16F    mov         eax,dword ptr [ebp-8]
 0044C172    mov         edx,dword ptr [eax+18]
 0044C175    mov         eax,dword ptr [ebp-20]
 0044C178    mov         ecx,dword ptr [eax]
 0044C17A    call        dword ptr [ecx+28]
 0044C17D    mov         eax,dword ptr [ebp-8]
 0044C180    mov         edx,dword ptr [eax+14]
 0044C183    mov         eax,dword ptr [ebp-20]
 0044C186    mov         ecx,dword ptr [eax]
 0044C188    call        dword ptr [ecx+24]
>0044C18B    jmp         0044C1E2
 0044C18D    mov         eax,dword ptr [ebp-18]
 0044C190    mov         eax,dword ptr [eax+20]
 0044C193    mov         edx,dword ptr ds:[4507E0];TCustomListView
 0044C199    call        @IsClass
 0044C19E    test        al,al
>0044C1A0    je          0044C1E2
 0044C1A2    mov         eax,dword ptr [ebp-18]
 0044C1A5    mov         eax,dword ptr [eax+20]
 0044C1A8    mov         eax,dword ptr [eax+22C]
 0044C1AE    call        0045AE78
 0044C1B3    mov         dword ptr [ebp-24],eax
 0044C1B6    mov         eax,dword ptr [ebp-8]
 0044C1B9    mov         edx,dword ptr [eax+10]
 0044C1BC    mov         eax,dword ptr [ebp-24]
 0044C1BF    call        0045A750
 0044C1C4    mov         eax,dword ptr [ebp-8]
 0044C1C7    mov         ecx,dword ptr [eax+18]
 0044C1CA    xor         edx,edx
 0044C1CC    mov         eax,dword ptr [ebp-24]
 0044C1CF    call        0045A98C
 0044C1D4    mov         eax,dword ptr [ebp-8]
 0044C1D7    mov         edx,dword ptr [eax+14]
 0044C1DA    mov         eax,dword ptr [ebp-24]
 0044C1DD    call        0045A81C
 0044C1E2    inc         dword ptr [ebp-10]
 0044C1E5    dec         dword ptr [ebp-14]
>0044C1E8    jne         0044C113
>0044C1EE    jmp         0044C2B1
 0044C1F3    mov         eax,dword ptr [ebp-4]
 0044C1F6    cmp         dword ptr [eax+28],0;TStaticListItems....................FStaticListAction:TStaticListAc...
>0044C1FA    je          0044C2B1
 0044C200    mov         eax,dword ptr [ebp-4]
 0044C203    mov         eax,dword ptr [eax+28];TStaticListItems.....................FStaticListAction:TStaticLis...
 0044C206    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>0044C20D    je          0044C2B1
 0044C213    mov         eax,dword ptr [ebp-4]
 0044C216    mov         eax,dword ptr [eax+28];TStaticListItems......................FStaticListAction:TStaticLi...
 0044C219    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C21C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044C21F    dec         eax
 0044C220    test        eax,eax
>0044C222    jl          0044C2B1
 0044C228    inc         eax
 0044C229    mov         dword ptr [ebp-14],eax
 0044C22C    mov         dword ptr [ebp-10],0
 0044C233    mov         eax,dword ptr [ebp-4]
 0044C236    mov         eax,dword ptr [eax+28];TStaticListItems.......................FStaticListAction:TStaticL...
 0044C239    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C23C    mov         edx,dword ptr [ebp-10]
 0044C23F    call        TList.Get
 0044C244    mov         dword ptr [ebp-28],eax
 0044C247    mov         eax,dword ptr [ebp-28]
 0044C24A    mov         eax,dword ptr [eax+20]
 0044C24D    mov         edx,dword ptr ds:[454218];TCustomComboBoxEx
 0044C253    call        @IsClass
 0044C258    test        al,al
>0044C25A    je          0044C279
 0044C25C    mov         eax,dword ptr [ebp-8]
 0044C25F    call        TCollectionItem.GetIndex
 0044C264    mov         edx,eax
 0044C266    mov         eax,dword ptr [ebp-28]
 0044C269    mov         eax,dword ptr [eax+20]
 0044C26C    mov         eax,dword ptr [eax+23C]
 0044C272    mov         ecx,dword ptr [eax]
 0044C274    call        dword ptr [ecx+48]
>0044C277    jmp         0044C2A9
 0044C279    mov         eax,dword ptr [ebp-28]
 0044C27C    mov         eax,dword ptr [eax+20]
 0044C27F    mov         edx,dword ptr ds:[4507E0];TCustomListView
 0044C285    call        @IsClass
 0044C28A    test        al,al
>0044C28C    je          0044C2A9
 0044C28E    mov         eax,dword ptr [ebp-8]
 0044C291    call        TCollectionItem.GetIndex
 0044C296    mov         edx,eax
 0044C298    mov         eax,dword ptr [ebp-28]
 0044C29B    mov         eax,dword ptr [eax+20]
 0044C29E    mov         eax,dword ptr [eax+22C]
 0044C2A4    call        0045B9A0
 0044C2A9    inc         dword ptr [ebp-10]
 0044C2AC    dec         dword ptr [ebp-14]
>0044C2AF    jne         0044C233
 0044C2B1    mov         esp,ebp
 0044C2B3    pop         ebp
 0044C2B4    ret
end;*}

//0044C2B8
{*procedure sub_0044C2B8(?:?);
begin
 0044C2B8    push        ebp
 0044C2B9    mov         ebp,esp
 0044C2BB    add         esp,0FFFFFFE0
 0044C2BE    mov         dword ptr [ebp-8],edx
 0044C2C1    mov         dword ptr [ebp-4],eax
 0044C2C4    mov         edx,dword ptr [ebp-8]
 0044C2C7    mov         eax,dword ptr [ebp-4]
 0044C2CA    call        00421914
 0044C2CF    mov         eax,dword ptr [ebp-4]
 0044C2D2    cmp         dword ptr [eax+28],0;TStaticListItems........................FStaticListAction:TStaticLi...
>0044C2D6    je          0044C41B
 0044C2DC    cmp         dword ptr [ebp-8],0
>0044C2E0    je          0044C41B
 0044C2E6    mov         eax,dword ptr [ebp-4]
 0044C2E9    mov         eax,dword ptr [eax+28];TStaticListItems.........................FStaticListAction:TStati...
 0044C2EC    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>0044C2F3    je          0044C41B
 0044C2F9    mov         eax,dword ptr [ebp-4]
 0044C2FC    mov         eax,dword ptr [eax+28];TStaticListItems..........................FStaticListAction:TStat...
 0044C2FF    cmp         byte ptr [eax+0B0],0;TStaticListAction.FLoading:Boolean
>0044C306    jne         0044C41B
 0044C30C    mov         eax,dword ptr [ebp-4]
 0044C30F    mov         eax,dword ptr [eax+28];TStaticListItems...........................FStaticListAction:TSta...
 0044C312    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C315    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0044C318    dec         eax
 0044C319    test        eax,eax
>0044C31B    jl          0044C41B
 0044C321    inc         eax
 0044C322    mov         dword ptr [ebp-10],eax
 0044C325    mov         dword ptr [ebp-0C],0
 0044C32C    mov         eax,dword ptr [ebp-4]
 0044C32F    mov         eax,dword ptr [eax+28];TStaticListItems............................FStaticListAction:TSt...
 0044C332    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 0044C335    mov         edx,dword ptr [ebp-0C]
 0044C338    call        TList.Get
 0044C33D    mov         dword ptr [ebp-14],eax
 0044C340    mov         eax,dword ptr [ebp-14]
 0044C343    mov         eax,dword ptr [eax+20]
 0044C346    mov         edx,dword ptr ds:[454218];TCustomComboBoxEx
 0044C34C    call        @IsClass
 0044C351    test        al,al
>0044C353    je          0044C3B0
 0044C355    mov         eax,dword ptr [ebp-14]
 0044C358    mov         eax,dword ptr [eax+20]
 0044C35B    mov         edx,dword ptr ds:[454218];TCustomComboBoxEx
 0044C361    call        @AsClass
 0044C366    mov         dword ptr [ebp-18],eax
 0044C369    mov         eax,dword ptr [ebp-8]
 0044C36C    call        TCollectionItem.GetIndex
 0044C371    mov         edx,eax
 0044C373    mov         eax,dword ptr [ebp-18]
 0044C376    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 0044C37C    call        0044B9EC
 0044C381    mov         dword ptr [ebp-1C],eax
 0044C384    mov         eax,dword ptr [ebp-8]
 0044C387    mov         edx,dword ptr [eax+10]
 0044C38A    mov         eax,dword ptr [ebp-1C]
 0044C38D    mov         ecx,dword ptr [eax]
 0044C38F    call        dword ptr [ecx+20]
 0044C392    mov         eax,dword ptr [ebp-8]
 0044C395    mov         edx,dword ptr [eax+18]
 0044C398    mov         eax,dword ptr [ebp-1C]
 0044C39B    mov         ecx,dword ptr [eax]
 0044C39D    call        dword ptr [ecx+28]
 0044C3A0    mov         eax,dword ptr [ebp-8]
 0044C3A3    mov         edx,dword ptr [eax+14]
 0044C3A6    mov         eax,dword ptr [ebp-1C]
 0044C3A9    mov         ecx,dword ptr [eax]
 0044C3AB    call        dword ptr [ecx+24]
>0044C3AE    jmp         0044C40F
 0044C3B0    mov         eax,dword ptr [ebp-14]
 0044C3B3    mov         eax,dword ptr [eax+20]
 0044C3B6    mov         edx,dword ptr ds:[4507E0];TCustomListView
 0044C3BC    call        @IsClass
 0044C3C1    test        al,al
>0044C3C3    je          0044C40F
 0044C3C5    mov         eax,dword ptr [ebp-8]
 0044C3C8    call        TCollectionItem.GetIndex
 0044C3CD    mov         edx,eax
 0044C3CF    mov         eax,dword ptr [ebp-14]
 0044C3D2    mov         eax,dword ptr [eax+20]
 0044C3D5    mov         eax,dword ptr [eax+22C]
 0044C3DB    call        0045AF80
 0044C3E0    mov         dword ptr [ebp-20],eax
 0044C3E3    mov         eax,dword ptr [ebp-8]
 0044C3E6    mov         edx,dword ptr [eax+10]
 0044C3E9    mov         eax,dword ptr [ebp-20]
 0044C3EC    call        0045A750
 0044C3F1    mov         eax,dword ptr [ebp-8]
 0044C3F4    mov         ecx,dword ptr [eax+18]
 0044C3F7    xor         edx,edx
 0044C3F9    mov         eax,dword ptr [ebp-20]
 0044C3FC    call        0045A98C
 0044C401    mov         eax,dword ptr [ebp-8]
 0044C404    mov         edx,dword ptr [eax+14]
 0044C407    mov         eax,dword ptr [ebp-20]
 0044C40A    call        0045A81C
 0044C40F    inc         dword ptr [ebp-0C]
 0044C412    dec         dword ptr [ebp-10]
>0044C415    jne         0044C32C
 0044C41B    mov         esp,ebp
 0044C41D    pop         ebp
 0044C41E    ret
end;*}

//0044C420
constructor sub_0044C420;
begin
{*
 0044C420    push        ebp
 0044C421    mov         ebp,esp
 0044C423    add         esp,0FFFFFFF4
 0044C426    test        dl,dl
>0044C428    je          0044C432
 0044C42A    add         esp,0FFFFFFF0
 0044C42D    call        @ClassCreate
 0044C432    mov         dword ptr [ebp-0C],ecx
 0044C435    mov         byte ptr [ebp-5],dl
 0044C438    mov         dword ptr [ebp-4],eax
 0044C43B    mov         ecx,dword ptr [ebp-0C]
 0044C43E    xor         edx,edx
 0044C440    mov         eax,dword ptr [ebp-4]
 0044C443    call        0044BABC
 0044C448    mov         eax,dword ptr [ebp-4]
 0044C44B    mov         edx,dword ptr [eax]
 0044C44D    call        dword ptr [edx+60];TStaticListAction.sub_0044C580
 0044C450    push        eax
 0044C451    mov         ecx,dword ptr [ebp-4]
 0044C454    mov         dl,1
 0044C456    mov         eax,[0044B13C];TStaticListItems
 0044C45B    call        TStaticListItems.Create;TStaticListItems.Create
 0044C460    mov         edx,dword ptr [ebp-4]
 0044C463    mov         dword ptr [edx+0D0],eax;TStaticListAction.Items:TStaticListItems
 0044C469    mov         eax,dword ptr [ebp-4]
 0044C46C    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C472    mov         edx,dword ptr [ebp-4]
 0044C475    mov         dword ptr [eax+28],edx;TStaticListItems.............................FStaticListAction:TS...
 0044C478    mov         eax,dword ptr [ebp-4]
 0044C47B    cmp         byte ptr [ebp-5],0
>0044C47F    je          0044C490
 0044C481    call        @AfterConstruction
 0044C486    pop         dword ptr fs:[0]
 0044C48D    add         esp,0C
 0044C490    mov         eax,dword ptr [ebp-4]
 0044C493    mov         esp,ebp
 0044C495    pop         ebp
 0044C496    ret
*}
end;

//0044C498
destructor TStaticListAction.Destroy;
begin
{*
 0044C498    push        ebp
 0044C499    mov         ebp,esp
 0044C49B    add         esp,0FFFFFFF8
 0044C49E    call        @BeforeDestruction
 0044C4A3    mov         byte ptr [ebp-5],dl
 0044C4A6    mov         dword ptr [ebp-4],eax
 0044C4A9    mov         eax,dword ptr [ebp-4]
 0044C4AC    add         eax,0D0
 0044C4B1    call        FreeAndNil
 0044C4B6    mov         dl,byte ptr [ebp-5]
 0044C4B9    and         dl,0FC
 0044C4BC    mov         eax,dword ptr [ebp-4]
 0044C4BF    call        TCustomAction.Destroy
 0044C4C4    cmp         byte ptr [ebp-5],0
>0044C4C8    jle         0044C4D2
 0044C4CA    mov         eax,dword ptr [ebp-4]
 0044C4CD    call        @ClassDestroy
 0044C4D2    pop         ecx
 0044C4D3    pop         ecx
 0044C4D4    pop         ebp
 0044C4D5    ret
*}
end;

//0044C4D8
{*function sub_0044C4D8:?;
begin
 0044C4D8    push        ebp
 0044C4D9    mov         ebp,esp
 0044C4DB    add         esp,0FFFFFFF8
 0044C4DE    mov         dword ptr [ebp-4],eax
 0044C4E1    mov         eax,dword ptr [ebp-4]
 0044C4E4    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C4EA    call        0042158C
 0044C4EF    mov         dword ptr [ebp-8],eax
 0044C4F2    mov         eax,dword ptr [ebp-8]
 0044C4F5    pop         ecx
 0044C4F6    pop         ecx
 0044C4F7    pop         ebp
 0044C4F8    ret
end;*}

//0044C4FC
{*function sub_0044C4FC(?:TStaticListAction; ?:?; ?:?):?;
begin
 0044C4FC    push        ebp
 0044C4FD    mov         ebp,esp
 0044C4FF    add         esp,0FFFFFFF0
 0044C502    push        ebx
 0044C503    mov         dword ptr [ebp-0C],ecx
 0044C506    mov         dword ptr [ebp-8],edx
 0044C509    mov         dword ptr [ebp-4],eax
 0044C50C    cmp         dword ptr [ebp-8],0
>0044C510    jl          0044C525
 0044C512    mov         eax,dword ptr [ebp-4]
 0044C515    mov         eax,dword ptr [eax+0D0]
 0044C51B    call        0042158C
 0044C520    cmp         eax,dword ptr [ebp-8]
>0044C523    jg          0044C529
 0044C525    xor         eax,eax
>0044C527    jmp         0044C52B
 0044C529    mov         al,1
 0044C52B    mov         byte ptr [ebp-0D],al
 0044C52E    cmp         byte ptr [ebp-0D],0
>0044C532    je          0044C575
 0044C534    mov         edx,dword ptr [ebp-8]
 0044C537    mov         eax,dword ptr [ebp-4]
 0044C53A    mov         eax,dword ptr [eax+0D0]
 0044C540    call        0044B9EC
 0044C545    mov         edx,eax
 0044C547    mov         eax,dword ptr [ebp-0C]
 0044C54A    mov         ecx,dword ptr [eax]
 0044C54C    call        dword ptr [ecx+8]
 0044C54F    mov         eax,dword ptr [ebp-4]
 0044C552    cmp         word ptr [eax+0DA],0
>0044C55A    je          0044C575
 0044C55C    lea         eax,[ebp-0C]
 0044C55F    push        eax
 0044C560    mov         ebx,dword ptr [ebp-4]
 0044C563    mov         ecx,dword ptr [ebp-8]
 0044C566    mov         edx,dword ptr [ebp-4]
 0044C569    mov         eax,dword ptr [ebx+0DC]
 0044C56F    call        dword ptr [ebx+0D8]
 0044C575    mov         al,byte ptr [ebp-0D]
 0044C578    pop         ebx
 0044C579    mov         esp,ebp
 0044C57B    pop         ebp
 0044C57C    ret
end;*}

//0044C580
{*function sub_0044C580:?;
begin
 0044C580    push        ebp
 0044C581    mov         ebp,esp
 0044C583    add         esp,0FFFFFFF8
 0044C586    mov         dword ptr [ebp-4],eax
 0044C589    mov         eax,[0044A8D8];TListControlItem
 0044C58E    mov         dword ptr [ebp-8],eax
 0044C591    mov         eax,dword ptr [ebp-8]
 0044C594    pop         ecx
 0044C595    pop         ecx
 0044C596    pop         ebp
 0044C597    ret
end;*}

//0044C598
{*procedure sub_0044C598(?:?; ?:?);
begin
 0044C598    push        ebp
 0044C599    mov         ebp,esp
 0044C59B    add         esp,0FFFFFFF4
 0044C59E    mov         dword ptr [ebp-0C],ecx
 0044C5A1    mov         dword ptr [ebp-8],edx
 0044C5A4    mov         dword ptr [ebp-4],eax
 0044C5A7    mov         edx,dword ptr [ebp-8]
 0044C5AA    mov         eax,dword ptr [ebp-4]
 0044C5AD    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C5B3    call        0044B9EC
 0044C5B8    mov         edx,dword ptr [eax+10]
 0044C5BB    mov         eax,dword ptr [ebp-0C]
 0044C5BE    call        @LStrAsg
 0044C5C3    mov         esp,ebp
 0044C5C5    pop         ebp
 0044C5C6    ret
end;*}

//0044C5C8
procedure TStaticListAction.SetItems(Value:TStaticListItems);
begin
{*
 0044C5C8    push        ebp
 0044C5C9    mov         ebp,esp
 0044C5CB    add         esp,0FFFFFFF8
 0044C5CE    mov         dword ptr [ebp-8],edx
 0044C5D1    mov         dword ptr [ebp-4],eax
 0044C5D4    mov         edx,dword ptr [ebp-8]
 0044C5D7    mov         eax,dword ptr [ebp-4]
 0044C5DA    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C5E0    mov         ecx,dword ptr [eax]
 0044C5E2    call        dword ptr [ecx+8];TStaticListItems.sub_00421384
 0044C5E5    pop         ecx
 0044C5E6    pop         ecx
 0044C5E7    pop         ebp
 0044C5E8    ret
*}
end;

//0044C5EC
{*procedure sub_0044C5EC(?:?; ?:?);
begin
 0044C5EC    push        ebp
 0044C5ED    mov         ebp,esp
 0044C5EF    add         esp,0FFFFFFF4
 0044C5F2    mov         dword ptr [ebp-0C],ecx
 0044C5F5    mov         dword ptr [ebp-8],edx
 0044C5F8    mov         dword ptr [ebp-4],eax
 0044C5FB    mov         edx,dword ptr [ebp-8]
 0044C5FE    mov         eax,dword ptr [ebp-4]
 0044C601    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C607    call        0044B9EC
 0044C60C    mov         edx,dword ptr [ebp-0C]
 0044C60F    mov         ecx,dword ptr [eax]
 0044C611    call        dword ptr [ecx+20]
 0044C614    mov         esp,ebp
 0044C616    pop         ebp
 0044C617    ret
end;*}

//0044C618
{*function sub_0044C618:?;
begin
 0044C618    push        ebp
 0044C619    mov         ebp,esp
 0044C61B    add         esp,0FFFFFFF8
 0044C61E    mov         dword ptr [ebp-4],eax
 0044C621    mov         eax,dword ptr [ebp-4]
 0044C624    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C627    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C62D    call        @IsClass
 0044C632    mov         byte ptr [ebp-5],al
 0044C635    mov         al,byte ptr [ebp-5]
 0044C638    pop         ecx
 0044C639    pop         ecx
 0044C63A    pop         ebp
 0044C63B    ret
end;*}

//0044C63C
{*function sub_0044C63C:?;
begin
 0044C63C    push        ebp
 0044C63D    mov         ebp,esp
 0044C63F    add         esp,0FFFFFFF8
 0044C642    mov         dword ptr [ebp-4],eax
 0044C645    mov         eax,dword ptr [ebp-4]
 0044C648    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C64B    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C651    call        @IsClass
 0044C656    test        al,al
>0044C658    je          0044C669
 0044C65A    mov         eax,dword ptr [ebp-4]
 0044C65D    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C660    cmp         dword ptr [eax+0A4],0
>0044C667    jne         0044C66D
 0044C669    xor         eax,eax
>0044C66B    jmp         0044C66F
 0044C66D    mov         al,1
 0044C66F    mov         byte ptr [ebp-5],al
 0044C672    mov         al,byte ptr [ebp-5]
 0044C675    pop         ecx
 0044C676    pop         ecx
 0044C677    pop         ebp
 0044C678    ret
end;*}

//0044C67C
{*procedure sub_0044C67C(?:?);
begin
 0044C67C    push        ebp
 0044C67D    mov         ebp,esp
 0044C67F    add         esp,0FFFFFFF8
 0044C682    mov         dword ptr [ebp-8],edx
 0044C685    mov         dword ptr [ebp-4],eax
 0044C688    mov         edx,dword ptr [ebp-8]
 0044C68B    mov         eax,dword ptr [ebp-4]
 0044C68E    call        0042AF54
 0044C693    mov         eax,dword ptr [ebp-4]
 0044C696    mov         eax,dword ptr [eax+20];TListActionLink................FClient:TWinControl
 0044C699    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044C69F    call        @IsClass
 0044C6A4    test        al,al
>0044C6A6    je          0044C6D4
 0044C6A8    mov         eax,dword ptr [ebp-4]
 0044C6AB    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C6AE    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C6B4    call        @IsClass
 0044C6B9    test        al,al
>0044C6BB    je          0044C6D4
 0044C6BD    mov         eax,dword ptr [ebp-4]
 0044C6C0    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C6C3    cmp         byte ptr [eax+0A0],0
>0044C6CA    je          0044C6D4
 0044C6CC    mov         eax,dword ptr [ebp-4]
 0044C6CF    call        0044C76C
 0044C6D4    pop         ecx
 0044C6D5    pop         ecx
 0044C6D6    pop         ebp
 0044C6D7    ret
end;*}

//0044C6D8
{*procedure sub_0044C6D8(?:?);
begin
 0044C6D8    push        ebp
 0044C6D9    mov         ebp,esp
 0044C6DB    add         esp,0FFFFFFF8
 0044C6DE    mov         byte ptr [ebp-5],dl
 0044C6E1    mov         dword ptr [ebp-4],eax
 0044C6E4    cmp         byte ptr [ebp-5],0
>0044C6E8    jne         0044C70F
 0044C6EA    mov         eax,dword ptr [ebp-4]
 0044C6ED    mov         eax,dword ptr [eax+20];TListActionLink.................FClient:TWinControl
 0044C6F0    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044C6F6    call        @IsClass
 0044C6FB    test        al,al
>0044C6FD    je          0044C756
 0044C6FF    mov         eax,dword ptr [ebp-4]
 0044C702    mov         eax,dword ptr [eax+20];TListActionLink..................FClient:TWinControl
 0044C705    mov         edx,dword ptr [eax]
 0044C707    call        dword ptr [edx+0D8]
>0044C70D    jmp         0044C756
 0044C70F    cmp         byte ptr [ebp-5],0
>0044C713    je          0044C739
 0044C715    mov         eax,dword ptr [ebp-4]
 0044C718    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C71B    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C721    call        @IsClass
 0044C726    test        al,al
>0044C728    je          0044C739
 0044C72A    mov         eax,dword ptr [ebp-4]
 0044C72D    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C730    cmp         byte ptr [eax+0A0],0
>0044C737    je          0044C756
 0044C739    mov         eax,dword ptr [ebp-4]
 0044C73C    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C73F    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C745    call        @IsClass
 0044C74A    test        al,al
>0044C74C    je          0044C756
 0044C74E    mov         eax,dword ptr [ebp-4]
 0044C751    call        0044C76C
 0044C756    pop         ecx
 0044C757    pop         ecx
 0044C758    pop         ebp
 0044C759    ret
end;*}

//0044C75C
{*procedure sub_0044C75C(?:?);
begin
 0044C75C    push        ebp
 0044C75D    mov         ebp,esp
 0044C75F    add         esp,0FFFFFFF8
 0044C762    mov         dword ptr [ebp-8],edx
 0044C765    mov         dword ptr [ebp-4],eax
 0044C768    pop         ecx
 0044C769    pop         ecx
 0044C76A    pop         ebp
 0044C76B    ret
end;*}

//0044C76C
procedure sub_0044C76C(?:TListActionLink);
begin
{*
 0044C76C    push        ebp
 0044C76D    mov         ebp,esp
 0044C76F    add         esp,0FFFFFFE0
 0044C772    push        ebx
 0044C773    xor         edx,edx
 0044C775    mov         dword ptr [ebp-0C],edx
 0044C778    mov         dword ptr [ebp-4],eax
 0044C77B    xor         eax,eax
 0044C77D    push        ebp
 0044C77E    push        44C8E5
 0044C783    push        dword ptr fs:[eax]
 0044C786    mov         dword ptr fs:[eax],esp
 0044C789    mov         eax,dword ptr [ebp-4]
 0044C78C    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C78F    mov         edx,dword ptr ds:[44AC74];TCustomListAction
 0044C795    call        @IsClass
 0044C79A    test        al,al
>0044C79C    je          0044C8CF
 0044C7A2    mov         eax,dword ptr [ebp-4]
 0044C7A5    mov         eax,dword ptr [eax+20];TListActionLink...................FClient:TWinControl
 0044C7A8    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044C7AE    call        @IsClass
 0044C7B3    test        al,al
>0044C7B5    je          0044C7C5
 0044C7B7    mov         eax,dword ptr [ebp-4]
 0044C7BA    mov         eax,dword ptr [eax+20];TListActionLink....................FClient:TWinControl
 0044C7BD    mov         edx,dword ptr [eax]
 0044C7BF    call        dword ptr [edx+0D8]
 0044C7C5    mov         eax,dword ptr [ebp-4]
 0044C7C8    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C7CB    mov         edx,dword ptr ds:[44B1F4];TStaticListAction
 0044C7D1    call        @IsClass
 0044C7D6    test        al,al
>0044C7D8    je          0044C854
 0044C7DA    mov         eax,dword ptr [ebp-4]
 0044C7DD    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C7E0    mov         edx,dword ptr ds:[44B1F4];TStaticListAction
 0044C7E6    call        @AsClass
 0044C7EB    mov         dword ptr [ebp-18],eax
 0044C7EE    mov         eax,dword ptr [ebp-18]
 0044C7F1    mov         edx,dword ptr [eax]
 0044C7F3    call        dword ptr [edx+54];TStaticListAction.sub_0044C4D8
 0044C7F6    dec         eax
 0044C7F7    test        eax,eax
>0044C7F9    jl          0044C8CF
 0044C7FF    inc         eax
 0044C800    mov         dword ptr [ebp-1C],eax
 0044C803    mov         dword ptr [ebp-8],0
 0044C80A    mov         eax,dword ptr [ebp-18]
 0044C80D    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C813    mov         edx,dword ptr [ebp-8]
 0044C816    call        0044B9EC
 0044C81B    mov         ecx,eax
 0044C81D    mov         edx,dword ptr [ebp-8]
 0044C820    mov         eax,dword ptr [ebp-18]
 0044C823    call        0044C4FC
 0044C828    test        al,al
>0044C82A    je          0044C84A
 0044C82C    mov         eax,dword ptr [ebp-18]
 0044C82F    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 0044C835    mov         edx,dword ptr [ebp-8]
 0044C838    call        0044B9EC
 0044C83D    mov         edx,eax
 0044C83F    mov         eax,dword ptr [ebp-4]
 0044C842    mov         ecx,dword ptr [eax]
 0044C844    call        dword ptr [ecx+90];TListActionLink.sub_0044C8F4
 0044C84A    inc         dword ptr [ebp-8]
 0044C84D    dec         dword ptr [ebp-1C]
>0044C850    jne         0044C80A
>0044C852    jmp         0044C8CF
 0044C854    mov         eax,dword ptr [ebp-4]
 0044C857    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C85A    mov         edx,dword ptr ds:[44ADF0];TVirtualListAction
 0044C860    call        @IsClass
 0044C865    test        al,al
>0044C867    je          0044C8CF
 0044C869    mov         eax,dword ptr [ebp-4]
 0044C86C    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C86F    mov         edx,dword ptr [eax]
 0044C871    call        dword ptr [edx+54]
 0044C874    dec         eax
 0044C875    test        eax,eax
>0044C877    jl          0044C8CF
 0044C879    inc         eax
 0044C87A    mov         dword ptr [ebp-1C],eax
 0044C87D    mov         dword ptr [ebp-8],0
 0044C884    mov         eax,dword ptr [ebp-4]
 0044C887    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 0044C88A    mov         edx,dword ptr ds:[44ADF0];TVirtualListAction
 0044C890    call        @AsClass
 0044C895    mov         dword ptr [ebp-20],eax
 0044C898    lea         eax,[ebp-10]
 0044C89B    push        eax
 0044C89C    lea         eax,[ebp-14]
 0044C89F    push        eax
 0044C8A0    lea         ecx,[ebp-0C]
 0044C8A3    mov         edx,dword ptr [ebp-8]
 0044C8A6    mov         eax,dword ptr [ebp-20]
 0044C8A9    call        0044BF60
 0044C8AE    test        al,al
>0044C8B0    je          0044C8C7
 0044C8B2    mov         eax,dword ptr [ebp-14]
 0044C8B5    push        eax
 0044C8B6    mov         ecx,dword ptr [ebp-10]
 0044C8B9    mov         edx,dword ptr [ebp-0C]
 0044C8BC    mov         eax,dword ptr [ebp-4]
 0044C8BF    mov         ebx,dword ptr [eax]
 0044C8C1    call        dword ptr [ebx+94];TListActionLink.sub_0044C904
 0044C8C7    inc         dword ptr [ebp-8]
 0044C8CA    dec         dword ptr [ebp-1C]
>0044C8CD    jne         0044C884
 0044C8CF    xor         eax,eax
 0044C8D1    pop         edx
 0044C8D2    pop         ecx
 0044C8D3    pop         ecx
 0044C8D4    mov         dword ptr fs:[eax],edx
 0044C8D7    push        44C8EC
 0044C8DC    lea         eax,[ebp-0C]
 0044C8DF    call        @LStrClr
 0044C8E4    ret
>0044C8E5    jmp         @HandleFinally
>0044C8EA    jmp         0044C8DC
 0044C8EC    pop         ebx
 0044C8ED    mov         esp,ebp
 0044C8EF    pop         ebp
 0044C8F0    ret
*}
end;

//0044C8F4
{*procedure sub_0044C8F4(?:?);
begin
 0044C8F4    push        ebp
 0044C8F5    mov         ebp,esp
 0044C8F7    add         esp,0FFFFFFF8
 0044C8FA    mov         dword ptr [ebp-8],edx
 0044C8FD    mov         dword ptr [ebp-4],eax
 0044C900    pop         ecx
 0044C901    pop         ecx
 0044C902    pop         ebp
 0044C903    ret
end;*}

//0044C904
{*procedure sub_0044C904(?:?; ?:?);
begin
 0044C904    push        ebp
 0044C905    mov         ebp,esp
 0044C907    add         esp,0FFFFFFF4
 0044C90A    mov         dword ptr [ebp-0C],ecx
 0044C90D    mov         dword ptr [ebp-8],edx
 0044C910    mov         dword ptr [ebp-4],eax
 0044C913    mov         eax,dword ptr [ebp-8]
 0044C916    call        @LStrAddRef
 0044C91B    xor         eax,eax
 0044C91D    push        ebp
 0044C91E    push        44C93F
 0044C923    push        dword ptr fs:[eax]
 0044C926    mov         dword ptr fs:[eax],esp
 0044C929    xor         eax,eax
 0044C92B    pop         edx
 0044C92C    pop         ecx
 0044C92D    pop         ecx
 0044C92E    mov         dword ptr fs:[eax],edx
 0044C931    push        44C946
 0044C936    lea         eax,[ebp-8]
 0044C939    call        @LStrClr
 0044C93E    ret
>0044C93F    jmp         @HandleFinally
>0044C944    jmp         0044C936
 0044C946    mov         esp,ebp
 0044C948    pop         ebp
 0044C949    ret         4
end;*}

//0044C94C
{*procedure sub_0044C94C(?:?);
begin
 0044C94C    push        ebp
 0044C94D    mov         ebp,esp
 0044C94F    add         esp,0FFFFFFF4
 0044C952    mov         dword ptr [ebp-8],edx
 0044C955    mov         dword ptr [ebp-4],eax
 0044C958    mov         eax,dword ptr [ebp-4]
 0044C95B    mov         eax,dword ptr [eax+20];TListActionLink.....................FClient:TWinControl
 0044C95E    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044C964    call        @IsClass
 0044C969    test        al,al
>0044C96B    je          0044C98F
 0044C96D    mov         eax,dword ptr [ebp-4]
 0044C970    mov         eax,dword ptr [eax+20];TListActionLink......................FClient:TWinControl
 0044C973    mov         edx,dword ptr ds:[47F35C];TCustomListControl
 0044C979    call        @AsClass
 0044C97E    mov         dword ptr [ebp-0C],eax
 0044C981    mov         edx,dword ptr [ebp-8]
 0044C984    mov         eax,dword ptr [ebp-0C]
 0044C987    mov         ecx,dword ptr [eax]
 0044C989    call        dword ptr [ecx+0D0];@AbstractError
 0044C98F    mov         esp,ebp
 0044C991    pop         ebp
 0044C992    ret
end;*}

end.