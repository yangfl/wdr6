//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uViewDef;

interface

uses
  SysUtils, Classes, GR32_Image, ExtCtrls, StdCtrls, Menus;

type
  TfmViewDef = class(TForm)
  published
    Im32:TImage32;//f2F8
    Panel2:TPanel;//f2FC
    Button1:TButton;//f300
    Button2:TButton;//f304
    cbShowZones:TCheckBox;//f308
    cbShowDefects:TCheckBox;//f30C
    cbOptimized:TCheckBox;//f310
    cbTracks:TCheckBox;//f314
    pmExportToFile:TPopupMenu;//f318
    SelectAll3:TMenuItem;//f31C
    Copy1:TMenuItem;//f320
    PictureToFile1:TMenuItem;//f324
    pmImage32:TPopupMenu;//f328
    MenuItem3:TMenuItem;//f32C
    procedure Button2Click(Sender:TObject);//00532DB8
    procedure MenuItem3Click(Sender:TObject);//00532E8C
    procedure FormShow(Sender:TObject);//00532F3C
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00532E40
    procedure Button1Click(Sender:TObject);//00532524
    procedure FormCreate(Sender:TObject);//00532C68
    procedure FormCanResize(Sender:TObject; var NewWidth:Integer; var NewHeight:Integer; var Resize:Boolean);//00532CEC
  end;
  _DynArr_120_3 = array of ?;
//elSize = 9;
    procedure sub_005311B4(?:TfmViewDef; ?:TfmHDD);//005311B4
    //procedure sub_00531208(?:?);//00531208
    //procedure sub_00531248(?:?);//00531248
    //function sub_00531288(?:TfmViewDef; ?:?):?;//00531288
    //procedure sub_005312F0(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);//005312F0
    //procedure sub_005315F4(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);//005315F4
    //procedure sub_005316EC(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);//005316EC
    //function sub_00531FBC:?;//00531FBC
    //function sub_00532368:?;//00532368

implementation

{$R *.DFM}

//005311B4
procedure sub_005311B4(?:TfmViewDef; ?:TfmHDD);
begin
{*
 005311B4    push        ebp
 005311B5    mov         ebp,esp
 005311B7    add         esp,0FFFFFFF8
 005311BA    mov         dword ptr [ebp-8],edx
 005311BD    mov         dword ptr [ebp-4],eax
 005311C0    cmp         dword ptr ds:[56D500],0;gvar_0056D500:TfmViewDef
>005311C7    jne         005311DD
 005311C9    mov         ecx,dword ptr [ebp-8]
 005311CC    mov         dl,1
 005311CE    mov         eax,[00530E98];TfmViewDef
 005311D3    call        TfmProgress.Create;TfmViewDef.Create
 005311D8    mov         [0056D500],eax;gvar_0056D500:TfmViewDef
 005311DD    mov         eax,[0056D500];0x0 gvar_0056D500:TfmViewDef
 005311E2    cmp         byte ptr [eax+1A6],0;TfmViewDef.FShowing:Boolean
>005311E9    je          005311FA
 005311EB    mov         eax,[0056D500];0x0 gvar_0056D500:TfmViewDef
 005311F0    mov         edx,dword ptr [eax]
 005311F2    call        dword ptr [edx+0C4];TfmViewDef.sub_004A746C
>005311F8    jmp         00531204
 005311FA    mov         eax,[0056D500];0x0 gvar_0056D500:TfmViewDef
 005311FF    call        004A7450
 00531204    pop         ecx
 00531205    pop         ecx
 00531206    pop         ebp
 00531207    ret
*}
end;

//00531208
{*procedure sub_00531208(?:?);
begin
 00531208    push        ebp
 00531209    mov         ebp,esp
 0053120B    push        ecx
 0053120C    fld         tbyte ptr ds:[531238];0.159154943091895:Extended
 00531212    fmul        dword ptr [ebp+8]
 00531215    call        @FRAC
 0053121A    fmul        dword ptr ds:[531244];2048:Single
 00531220    call        @ROUND
 00531225    mov         eax,dword ptr [eax*4+597E90]
 0053122C    mov         dword ptr [ebp-4],eax
 0053122F    fld         dword ptr [ebp-4]
 00531232    pop         ecx
 00531233    pop         ebp
 00531234    ret         4
end;*}

//00531248
{*procedure sub_00531248(?:?);
begin
 00531248    push        ebp
 00531249    mov         ebp,esp
 0053124B    push        ecx
 0053124C    fld         tbyte ptr ds:[531278];0.159154943091895:Extended
 00531252    fmul        dword ptr [ebp+8]
 00531255    call        @FRAC
 0053125A    fmul        dword ptr ds:[531284];2048:Single
 00531260    call        @ROUND
 00531265    mov         eax,dword ptr [eax*4+599E94]
 0053126C    mov         dword ptr [ebp-4],eax
 0053126F    fld         dword ptr [ebp-4]
 00531272    pop         ecx
 00531273    pop         ebp
 00531274    ret         4
end;*}

//00531288
{*function sub_00531288(?:TfmViewDef; ?:?):?;
begin
 00531288    push        ebp
 00531289    mov         ebp,esp
 0053128B    add         esp,0FFFFFFEC
 0053128E    mov         dword ptr [ebp-8],edx
 00531291    mov         dword ptr [ebp-4],eax
 00531294    xor         eax,eax
 00531296    mov         dword ptr [ebp-10],eax
 00531299    mov         byte ptr [ebp-11],0
 0053129D    xor         eax,eax
 0053129F    mov         dword ptr [ebp-0C],eax
>005312A2    jmp         005312D6
 005312A4    mov         eax,dword ptr [ebp-10]
 005312A7    lea         eax,[eax+eax*2]
 005312AA    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 005312B0    mov         eax,dword ptr [edx+eax*4+4]
 005312B4    cmp         eax,dword ptr [ebp-8]
>005312B7    jae         005312BE
 005312B9    inc         dword ptr [ebp-10]
>005312BC    jmp         005312D6
 005312BE    mov         byte ptr [ebp-11],1
 005312C2    mov         eax,dword ptr [ebp-10]
 005312C5    lea         eax,[eax+eax*2]
 005312C8    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 005312CE    movzx       eax,word ptr [edx+eax*4+8]
 005312D3    mov         dword ptr [ebp-0C],eax
 005312D6    mov         eax,dword ptr [ebp-10]
 005312D9    cmp         eax,dword ptr ds:[597E88];0x0 gvar_00597E88
>005312DF    jge         005312E7
 005312E1    cmp         byte ptr [ebp-11],0
>005312E5    je          005312A4
 005312E7    mov         eax,dword ptr [ebp-0C]
 005312EA    mov         esp,ebp
 005312EC    pop         ebp
 005312ED    ret
end;*}

//005312F0
{*procedure sub_005312F0(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005312F0    push        ebp
 005312F1    mov         ebp,esp
 005312F3    add         esp,0FFFFFFC0
 005312F6    mov         dword ptr [ebp-0C],ecx
 005312F9    mov         dword ptr [ebp-8],edx
 005312FC    mov         dword ptr [ebp-4],eax
 005312FF    mov         eax,dword ptr [ebp-4]
 00531302    mov         eax,dword ptr [eax+310]
 00531308    mov         edx,dword ptr [eax]
 0053130A    call        dword ptr [edx+0C8]
 00531310    test        al,al
>00531312    je          005314A5
 00531318    cmp         dword ptr [ebp+8],0
>0053131C    jg          00531332
 0053131E    mov         ecx,97
 00531323    mov         edx,531590;'C:\Work\Hddutil25\CheckCom\HDDp32Lite3\uViewDef.pas'
 00531328    mov         eax,5315CC;'Negative radius!'
 0053132D    call        @Assert
 00531332    fild        dword ptr [ebp+10]
 00531335    add         esp,0FFFFFFF4
 00531338    fstp        tbyte ptr [esp]
 0053133B    wait
 0053133C    call        004371E0
 00531341    fstp        dword ptr [ebp-10]
 00531344    wait
 00531345    fild        dword ptr [ebp+0C]
 00531348    add         esp,0FFFFFFF4
 0053134B    fstp        tbyte ptr [esp]
 0053134E    wait
 0053134F    call        004371E0
 00531354    fstp        dword ptr [ebp-14]
 00531357    wait
>00531358    jmp         00531367
 0053135A    fld         tbyte ptr ds:[5315E0];6.28318530717959:Extended
 00531360    fadd        dword ptr [ebp-14]
 00531363    fstp        dword ptr [ebp-14]
 00531366    wait
 00531367    fld         dword ptr [ebp-14]
 0053136A    fcomp       dword ptr [ebp-10]
 0053136D    fnstsw      al
 0053136F    sahf
>00531370    jb          0053135A
 00531372    fild        dword ptr [ebp+8]
 00531375    fdivr       dword ptr ds:[5315EC];4:Single
 0053137B    fstp        dword ptr [ebp-18]
 0053137E    wait
 0053137F    mov         eax,dword ptr [ebp-8]
 00531382    shl         eax,10
 00531385    mov         dword ptr [ebp-40],eax
 00531388    fild        dword ptr [ebp-40]
 0053138B    fstp        qword ptr [ebp-28]
 0053138E    wait
 0053138F    mov         eax,dword ptr [ebp-0C]
 00531392    shl         eax,10
 00531395    mov         dword ptr [ebp-40],eax
 00531398    fild        dword ptr [ebp-40]
 0053139B    fstp        qword ptr [ebp-30]
 0053139E    wait
 0053139F    mov         eax,dword ptr [ebp+8]
 005313A2    shl         eax,10
 005313A5    mov         dword ptr [ebp-40],eax
 005313A8    fild        dword ptr [ebp-40]
 005313AB    fstp        qword ptr [ebp-20]
 005313AE    wait
 005313AF    mov         eax,dword ptr [ebp-4]
 005313B2    mov         eax,dword ptr [eax+2F8]
 005313B8    mov         eax,dword ptr [eax+250]
 005313BE    mov         dword ptr [ebp-3C],eax
 005313C1    push        dword ptr [ebp-10]
 005313C4    call        00531248
 005313C9    fmul        qword ptr [ebp-20]
 005313CC    fadd        qword ptr [ebp-28]
 005313CF    call        @ROUND
 005313D4    mov         dword ptr [ebp-34],eax
 005313D7    push        dword ptr [ebp-10]
 005313DA    call        00531208
 005313DF    fmul        qword ptr [ebp-20]
 005313E2    fsubr       qword ptr [ebp-30]
 005313E5    call        @ROUND
 005313EA    mov         dword ptr [ebp-38],eax
>005313ED    jmp         00531453
 005313EF    push        dword ptr [ebp-10]
 005313F2    call        00531248
 005313F7    fmul        qword ptr [ebp-20]
 005313FA    fadd        qword ptr [ebp-28]
 005313FD    call        @ROUND
 00531402    mov         dword ptr [ebp-8],eax
 00531405    push        dword ptr [ebp-10]
 00531408    call        00531208
 0053140D    fmul        qword ptr [ebp-20]
 00531410    fsubr       qword ptr [ebp-30]
 00531413    call        @ROUND
 00531418    mov         dword ptr [ebp-0C],eax
 0053141B    mov         eax,dword ptr [ebp-8]
 0053141E    push        eax
 0053141F    mov         eax,dword ptr [ebp-0C]
 00531422    push        eax
 00531423    mov         eax,dword ptr [ebp-3C]
 00531426    mov         eax,dword ptr [eax+0BC]
 0053142C    push        eax
 0053142D    push        0
 0053142F    mov         ecx,dword ptr [ebp-38]
 00531432    mov         edx,dword ptr [ebp-34]
 00531435    mov         eax,dword ptr [ebp-3C]
 00531438    call        005212A8
 0053143D    mov         eax,dword ptr [ebp-8]
 00531440    mov         dword ptr [ebp-34],eax
 00531443    mov         eax,dword ptr [ebp-0C]
 00531446    mov         dword ptr [ebp-38],eax
 00531449    fld         dword ptr [ebp-10]
 0053144C    fadd        dword ptr [ebp-18]
 0053144F    fstp        dword ptr [ebp-10]
 00531452    wait
 00531453    fld         dword ptr [ebp-10]
 00531456    fcomp       dword ptr [ebp-14]
 00531459    fnstsw      al
 0053145B    sahf
>0053145C    jbe         005313EF
 0053145E    push        dword ptr [ebp-14]
 00531461    call        00531248
 00531466    fmul        qword ptr [ebp-20]
 00531469    fadd        qword ptr [ebp-28]
 0053146C    call        @ROUND
 00531471    push        eax
 00531472    fld         dword ptr [ebp-14]
 00531475    call        @SIN
 0053147A    fmul        qword ptr [ebp-20]
 0053147D    fsubr       qword ptr [ebp-30]
 00531480    call        @ROUND
 00531485    push        eax
 00531486    mov         eax,dword ptr [ebp-3C]
 00531489    mov         eax,dword ptr [eax+0BC]
 0053148F    push        eax
 00531490    push        0
 00531492    mov         ecx,dword ptr [ebp-38]
 00531495    mov         edx,dword ptr [ebp-34]
 00531498    mov         eax,dword ptr [ebp-3C]
 0053149B    call        005212A8
>005314A0    jmp         00531582
 005314A5    fild        dword ptr [ebp+10]
 005314A8    fstp        dword ptr [ebp-10]
 005314AB    wait
 005314AC    fld         dword ptr [ebp-10]
 005314AF    add         esp,0FFFFFFF4
 005314B2    fstp        tbyte ptr [esp]
 005314B5    wait
 005314B6    call        004371E0
 005314BB    call        @COS
 005314C0    fild        dword ptr [ebp+8]
 005314C3    fmulp       st(1),st
 005314C5    fild        dword ptr [ebp-8]
 005314C8    faddp       st(1),st
 005314CA    add         esp,0FFFFFFFC
 005314CD    fstp        dword ptr [esp]
 005314D0    wait
 005314D1    fld         dword ptr [ebp-10]
 005314D4    add         esp,0FFFFFFF4
 005314D7    fstp        tbyte ptr [esp]
 005314DA    wait
 005314DB    call        004371E0
 005314E0    call        @SIN
 005314E5    fild        dword ptr [ebp+8]
 005314E8    fmulp       st(1),st
 005314EA    fild        dword ptr [ebp-0C]
 005314ED    fsubrp      st(1),st
 005314EF    add         esp,0FFFFFFFC
 005314F2    fstp        dword ptr [esp]
 005314F5    wait
 005314F6    mov         eax,dword ptr [ebp-4]
 005314F9    mov         eax,dword ptr [eax+2F8]
 005314FF    mov         eax,dword ptr [eax+250]
 00531505    call        00521F88
>0053150A    jmp         00531577
 0053150C    fld         dword ptr [ebp-10]
 0053150F    add         esp,0FFFFFFF4
 00531512    fstp        tbyte ptr [esp]
 00531515    wait
 00531516    call        004371E0
 0053151B    call        @COS
 00531520    fild        dword ptr [ebp+8]
 00531523    fmulp       st(1),st
 00531525    fild        dword ptr [ebp-8]
 00531528    faddp       st(1),st
 0053152A    add         esp,0FFFFFFFC
 0053152D    fstp        dword ptr [esp]
 00531530    wait
 00531531    fld         dword ptr [ebp-10]
 00531534    add         esp,0FFFFFFF4
 00531537    fstp        tbyte ptr [esp]
 0053153A    wait
 0053153B    call        004371E0
 00531540    call        @SIN
 00531545    fild        dword ptr [ebp+8]
 00531548    fmulp       st(1),st
 0053154A    fild        dword ptr [ebp-0C]
 0053154D    fsubrp      st(1),st
 0053154F    add         esp,0FFFFFFFC
 00531552    fstp        dword ptr [esp]
 00531555    wait
 00531556    mov         eax,dword ptr [ebp-4]
 00531559    mov         eax,dword ptr [eax+2F8]
 0053155F    mov         eax,dword ptr [eax+250]
 00531565    call        00522014
 0053156A    fld         dword ptr [ebp-10]
 0053156D    fadd        dword ptr ds:[5315F0];1:Single
 00531573    fstp        dword ptr [ebp-10]
 00531576    wait
 00531577    fild        dword ptr [ebp+0C]
 0053157A    fcomp       dword ptr [ebp-10]
 0053157D    fnstsw      al
 0053157F    sahf
>00531580    jae         0053150C
 00531582    mov         esp,ebp
 00531584    pop         ebp
 00531585    ret         0C
end;*}

//005315F4
{*procedure sub_005315F4(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005315F4    push        ebp
 005315F5    mov         ebp,esp
 005315F7    add         esp,0FFFFFFE4
 005315FA    mov         dword ptr [ebp-0C],ecx
 005315FD    mov         dword ptr [ebp-8],edx
 00531600    mov         dword ptr [ebp-4],eax
 00531603    mov         eax,dword ptr [ebp-4]
 00531606    mov         eax,dword ptr [eax+2F8]
 0053160C    mov         eax,dword ptr [eax+250]
 00531612    mov         dword ptr [ebp-1C],eax
 00531615    fild        dword ptr [ebp+10]
 00531618    add         esp,0FFFFFFF4
 0053161B    fstp        tbyte ptr [esp]
 0053161E    wait
 0053161F    call        004371E0
 00531624    call        @COS
 00531629    fild        dword ptr [ebp+8]
 0053162C    fmulp       st(1),st
 0053162E    call        @TRUNC
 00531633    add         eax,dword ptr [ebp-8]
 00531636    mov         dword ptr [ebp-14],eax
 00531639    fild        dword ptr [ebp+10]
 0053163C    add         esp,0FFFFFFF4
 0053163F    fstp        tbyte ptr [esp]
 00531642    wait
 00531643    call        004371E0
 00531648    call        @SIN
 0053164D    fild        dword ptr [ebp+8]
 00531650    fmulp       st(1),st
 00531652    call        @TRUNC
 00531657    mov         edx,dword ptr [ebp-0C]
 0053165A    sub         edx,eax
 0053165C    mov         dword ptr [ebp-18],edx
 0053165F    mov         ecx,dword ptr [ebp-18]
 00531662    mov         edx,dword ptr [ebp-14]
 00531665    mov         eax,dword ptr [ebp-1C]
 00531668    call        00521EA4
 0053166D    mov         eax,dword ptr [ebp+10]
 00531670    mov         dword ptr [ebp-10],eax
 00531673    mov         eax,dword ptr [ebp-10]
 00531676    cmp         eax,dword ptr [ebp+0C]
>00531679    jg          005316E4
 0053167B    fild        dword ptr [ebp-10]
 0053167E    add         esp,0FFFFFFF4
 00531681    fstp        tbyte ptr [esp]
 00531684    wait
 00531685    call        004371E0
 0053168A    call        @COS
 0053168F    fild        dword ptr [ebp+8]
 00531692    fmulp       st(1),st
 00531694    call        @TRUNC
 00531699    add         eax,dword ptr [ebp-8]
 0053169C    mov         dword ptr [ebp-14],eax
 0053169F    fild        dword ptr [ebp-10]
 005316A2    add         esp,0FFFFFFF4
 005316A5    fstp        tbyte ptr [esp]
 005316A8    wait
 005316A9    call        004371E0
 005316AE    call        @SIN
 005316B3    fild        dword ptr [ebp+8]
 005316B6    fmulp       st(1),st
 005316B8    call        @TRUNC
 005316BD    mov         edx,dword ptr [ebp-0C]
 005316C0    sub         edx,eax
 005316C2    mov         dword ptr [ebp-18],edx
 005316C5    mov         ecx,dword ptr [ebp-18]
 005316C8    mov         edx,dword ptr [ebp-14]
 005316CB    mov         eax,dword ptr [ebp-1C]
 005316CE    call        00521F2C
 005316D3    inc         dword ptr [ebp-10]
 005316D6    inc         dword ptr [ebp-10]
 005316D9    inc         dword ptr [ebp-10]
 005316DC    mov         eax,dword ptr [ebp-10]
 005316DF    cmp         eax,dword ptr [ebp+0C]
>005316E2    jle         0053167B
 005316E4    mov         esp,ebp
 005316E6    pop         ebp
 005316E7    ret         0C
end;*}

//005316EC
{*procedure sub_005316EC(?:TfmViewDef; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005316EC    push        ebp
 005316ED    mov         ebp,esp
 005316EF    add         esp,0FFFFFF2C
 005316F5    mov         dword ptr [ebp-0C],ecx
 005316F8    mov         dword ptr [ebp-8],edx
 005316FB    mov         dword ptr [ebp-4],eax
 005316FE    fld         qword ptr [ebp+0C]
 00531701    fsub        qword ptr [ebp+14]
 00531704    fcomp       dword ptr ds:[531F88];360:Single
 0053170A    fnstsw      al
 0053170C    sahf
>0053170D    jb          00531730
 0053170F    xor         eax,eax
 00531711    mov         dword ptr [ebp-54],eax
 00531714    mov         eax,dword ptr [ebp-54]
 00531717    lea         eax,[eax+eax*2]
 0053171A    mov         byte ptr [ebp+eax*4-0D0],1
 00531722    inc         dword ptr [ebp-54]
 00531725    cmp         dword ptr [ebp-54],8
>00531729    jne         00531714
>0053172B    jmp         00531B71
 00531730    fld         qword ptr [ebp+14]
 00531733    fdiv        dword ptr ds:[531F88];360:Single
 00531739    call        @FRAC
 0053173E    fld         tbyte ptr ds:[531F8C];6.28318530717959:Extended
 00531744    fmulp       st(1),st
 00531746    fstp        qword ptr [ebp+14]
 00531749    wait
 0053174A    fld         qword ptr [ebp+14]
 0053174D    fcomp       dword ptr ds:[531F98];0:Single
 00531753    fnstsw      al
 00531755    sahf
>00531756    jae         00531765
 00531758    fld         tbyte ptr ds:[531F8C];6.28318530717959:Extended
 0053175E    fadd        qword ptr [ebp+14]
 00531761    fstp        qword ptr [ebp+14]
 00531764    wait
 00531765    fld         qword ptr [ebp+0C]
 00531768    fdiv        dword ptr ds:[531F88];360:Single
 0053176E    call        @FRAC
 00531773    fld         tbyte ptr ds:[531F8C];6.28318530717959:Extended
 00531779    fmulp       st(1),st
 0053177B    fstp        qword ptr [ebp+0C]
 0053177E    wait
 0053177F    fld         qword ptr [ebp+0C]
 00531782    fcomp       dword ptr ds:[531F98];0:Single
 00531788    fnstsw      al
 0053178A    sahf
>0053178B    jae         0053179A
 0053178D    fld         tbyte ptr ds:[531F8C];6.28318530717959:Extended
 00531793    fadd        qword ptr [ebp+0C]
 00531796    fstp        qword ptr [ebp+0C]
 00531799    wait
 0053179A    fld         qword ptr [ebp+14]
 0053179D    call        @COS
 005317A2    fild        dword ptr [ebp+8]
 005317A5    fmulp       st(1),st
 005317A7    call        @ROUND
 005317AC    mov         dword ptr [ebp-24],eax
 005317AF    fld         qword ptr [ebp+14]
 005317B2    call        @SIN
 005317B7    mov         eax,dword ptr [ebp+8]
 005317BA    neg         eax
 005317BC    mov         dword ptr [ebp-0D4],eax
 005317C2    fild        dword ptr [ebp-0D4]
 005317C8    fmulp       st(1),st
 005317CA    call        @ROUND
 005317CF    mov         dword ptr [ebp-28],eax
 005317D2    fld         qword ptr [ebp+0C]
 005317D5    call        @COS
 005317DA    fild        dword ptr [ebp+8]
 005317DD    fmulp       st(1),st
 005317DF    call        @ROUND
 005317E4    mov         dword ptr [ebp-2C],eax
 005317E7    fld         qword ptr [ebp+0C]
 005317EA    call        @SIN
 005317EF    mov         eax,dword ptr [ebp+8]
 005317F2    neg         eax
 005317F4    mov         dword ptr [ebp-0D4],eax
 005317FA    fild        dword ptr [ebp-0D4]
 00531800    fmulp       st(1),st
 00531802    call        @ROUND
 00531807    mov         dword ptr [ebp-30],eax
 0053180A    xor         eax,eax
 0053180C    mov         dword ptr [ebp-54],eax
 0053180F    mov         eax,dword ptr [ebp-54]
 00531812    lea         eax,[eax+eax*2]
 00531815    mov         byte ptr [ebp+eax*4-0D0],0
 0053181D    inc         dword ptr [ebp-54]
 00531820    cmp         dword ptr [ebp-54],8
>00531824    jne         0053180F
 00531826    fld         dword ptr ds:[531F9C];4:Single
 0053182C    fmul        qword ptr [ebp+14]
 0053182F    fld         tbyte ptr ds:[531FA0];3.14159265358979:Extended
 00531835    fdivp       st(1),st
 00531837    call        @TRUNC
 0053183C    mov         dword ptr [ebp-54],eax
 0053183F    fld         dword ptr ds:[531F9C];4:Single
 00531845    fmul        qword ptr [ebp+0C]
 00531848    fld         tbyte ptr ds:[531FA0];3.14159265358979:Extended
 0053184E    fdivp       st(1),st
 00531850    call        @TRUNC
 00531855    mov         dword ptr [ebp-5C],eax
 00531858    mov         eax,dword ptr [ebp-54]
 0053185B    cmp         eax,dword ptr [ebp-5C]
>0053185E    jne         0053186B
 00531860    fld         qword ptr [ebp+14]
 00531863    fcomp       qword ptr [ebp+0C]
 00531866    fnstsw      al
 00531868    sahf
>00531869    ja          0053186F
 0053186B    xor         eax,eax
>0053186D    jmp         00531871
 0053186F    mov         al,1
 00531871    mov         byte ptr [ebp-5D],al
 00531874    fld         qword ptr [ebp+0C]
 00531877    fcomp       qword ptr [ebp+14]
 0053187A    fnstsw      al
 0053187C    sahf
>0053187D    jae         0053188C
 0053187F    fld         tbyte ptr ds:[531F8C];6.28318530717959:Extended
 00531885    fadd        qword ptr [ebp+0C]
 00531888    fstp        qword ptr [ebp+0C]
 0053188B    wait
 0053188C    mov         eax,dword ptr [ebp-54]
 0053188F    mov         dword ptr [ebp-58],eax
 00531892    fld         tbyte ptr ds:[531FAC];2:Extended
 00531898    fsqrt
 0053189A    fild        dword ptr [ebp+8]
 0053189D    fmulp       st(1),st
 0053189F    call        @ROUND
 005318A4    mov         dword ptr [ebp-64],eax
 005318A7    mov         eax,dword ptr [ebp-58]
 005318AA    lea         eax,[eax+eax*4]
 005318AD    lea         eax,[eax+eax*8]
 005318B0    mov         dword ptr [ebp-0D4],eax
 005318B6    fild        dword ptr [ebp-0D4]
 005318BC    fld         tbyte ptr ds:[531FA0];3.14159265358979:Extended
 005318C2    fmulp       st(1),st
 005318C4    fdiv        dword ptr ds:[531FB8];180:Single
 005318CA    fstp        qword ptr [ebp-38]
 005318CD    wait
 005318CE    mov         eax,dword ptr [ebp-58]
 005318D1    inc         eax
 005318D2    lea         eax,[eax+eax*4]
 005318D5    lea         eax,[eax+eax*8]
 005318D8    mov         dword ptr [ebp-0D4],eax
 005318DE    fild        dword ptr [ebp-0D4]
 005318E4    fld         tbyte ptr ds:[531FA0];3.14159265358979:Extended
 005318EA    fmulp       st(1),st
 005318EC    fdiv        dword ptr ds:[531FB8];180:Single
 005318F2    fstp        qword ptr [ebp-40]
 005318F5    wait
 005318F6    mov         eax,dword ptr [ebp-54]
 005318F9    lea         eax,[eax+eax*2]
 005318FC    lea         eax,[ebp+eax*4-0D0]
 00531903    mov         dword ptr [ebp-6C],eax
 00531906    fld         qword ptr [ebp-38]
 00531909    fcomp       qword ptr [ebp+14]
 0053190C    fnstsw      al
 0053190E    sahf
>0053190F    jb          00531927
 00531911    fld         qword ptr [ebp-40]
 00531914    fcomp       qword ptr [ebp+0C]
 00531917    fnstsw      al
 00531919    sahf
>0053191A    ja          00531927
 0053191C    mov         eax,dword ptr [ebp-6C]
 0053191F    mov         byte ptr [eax],1
>00531922    jmp         00531B4C
 00531927    fld         qword ptr [ebp-40]
 0053192A    fcomp       qword ptr [ebp+14]
 0053192D    fnstsw      al
 0053192F    sahf
>00531930    jb          0053193D
 00531932    fld         qword ptr [ebp-38]
 00531935    fcomp       qword ptr [ebp+0C]
 00531938    fnstsw      al
 0053193A    sahf
>0053193B    jbe         00531948
 0053193D    mov         eax,dword ptr [ebp-6C]
 00531940    mov         byte ptr [eax],0
>00531943    jmp         00531B4C
 00531948    cmp         byte ptr [ebp-5D],0
>0053194C    je          00531996
 0053194E    mov         eax,dword ptr [ebp-6C]
 00531951    mov         byte ptr [eax],3
 00531954    mov         eax,dword ptr [ebp-54]
 00531957    test        eax,eax
>00531959    je          00531968
 0053195B    add         eax,0FFFFFFFD
 0053195E    sub         eax,2
>00531961    jb          00531968
 00531963    sub         eax,2
>00531966    jne         0053197F
 00531968    mov         eax,dword ptr [ebp-6C]
 0053196B    mov         edx,dword ptr [ebp-28]
 0053196E    mov         dword ptr [eax+8],edx
 00531971    mov         eax,dword ptr [ebp-6C]
 00531974    mov         edx,dword ptr [ebp-30]
 00531977    mov         dword ptr [eax+4],edx
>0053197A    jmp         00531B20
 0053197F    mov         eax,dword ptr [ebp-6C]
 00531982    mov         edx,dword ptr [ebp-24]
 00531985    mov         dword ptr [eax+8],edx
 00531988    mov         eax,dword ptr [ebp-6C]
 0053198B    mov         edx,dword ptr [ebp-2C]
 0053198E    mov         dword ptr [eax+4],edx
>00531991    jmp         00531B20
 00531996    mov         eax,dword ptr [ebp-6C]
 00531999    mov         byte ptr [eax],2
 0053199C    fld         qword ptr [ebp-38]
 0053199F    fcomp       qword ptr [ebp+14]
 005319A2    fnstsw      al
 005319A4    sahf
>005319A5    jbe         00531A36
 005319AB    mov         eax,dword ptr [ebp-54]
 005319AE    cmp         eax,7
>005319B1    ja          00531A5E
 005319B7    jmp         dword ptr [eax*4+5319BE]
 005319B7    dd          005319DE
 005319B7    dd          005319E8
 005319B7    dd          005319F3
 005319B7    dd          005319FD
 005319B7    dd          00531A0A
 005319B7    dd          00531A14
 005319B7    dd          00531A21
 005319B7    dd          00531A2B
 005319DE    mov         eax,dword ptr [ebp-6C]
 005319E1    xor         edx,edx
 005319E3    mov         dword ptr [eax+8],edx
>005319E6    jmp         00531A5E
 005319E8    mov         eax,dword ptr [ebp-6C]
 005319EB    mov         edx,dword ptr [ebp-64]
 005319EE    mov         dword ptr [eax+8],edx
>005319F1    jmp         00531A5E
 005319F3    mov         eax,dword ptr [ebp-6C]
 005319F6    xor         edx,edx
 005319F8    mov         dword ptr [eax+8],edx
>005319FB    jmp         00531A5E
 005319FD    mov         eax,dword ptr [ebp-64]
 00531A00    neg         eax
 00531A02    mov         edx,dword ptr [ebp-6C]
 00531A05    mov         dword ptr [edx+8],eax
>00531A08    jmp         00531A5E
 00531A0A    mov         eax,dword ptr [ebp-6C]
 00531A0D    xor         edx,edx
 00531A0F    mov         dword ptr [eax+8],edx
>00531A12    jmp         00531A5E
 00531A14    mov         eax,dword ptr [ebp-64]
 00531A17    neg         eax
 00531A19    mov         edx,dword ptr [ebp-6C]
 00531A1C    mov         dword ptr [edx+8],eax
>00531A1F    jmp         00531A5E
 00531A21    mov         eax,dword ptr [ebp-6C]
 00531A24    xor         edx,edx
 00531A26    mov         dword ptr [eax+8],edx
>00531A29    jmp         00531A5E
 00531A2B    mov         eax,dword ptr [ebp-6C]
 00531A2E    mov         edx,dword ptr [ebp-64]
 00531A31    mov         dword ptr [eax+8],edx
>00531A34    jmp         00531A5E
 00531A36    mov         eax,dword ptr [ebp-54]
 00531A39    test        eax,eax
>00531A3B    je          00531A4A
 00531A3D    add         eax,0FFFFFFFD
 00531A40    sub         eax,2
>00531A43    jb          00531A4A
 00531A45    sub         eax,2
>00531A48    jne         00531A55
 00531A4A    mov         eax,dword ptr [ebp-6C]
 00531A4D    mov         edx,dword ptr [ebp-28]
 00531A50    mov         dword ptr [eax+8],edx
>00531A53    jmp         00531A5E
 00531A55    mov         eax,dword ptr [ebp-6C]
 00531A58    mov         edx,dword ptr [ebp-24]
 00531A5B    mov         dword ptr [eax+8],edx
 00531A5E    fld         qword ptr [ebp-40]
 00531A61    fcomp       qword ptr [ebp+0C]
 00531A64    fnstsw      al
 00531A66    sahf
>00531A67    jae         00531AF8
 00531A6D    mov         eax,dword ptr [ebp-54]
 00531A70    cmp         eax,7
>00531A73    ja          00531B20
 00531A79    jmp         dword ptr [eax*4+531A80]
 00531A79    dd          00531AA0
 00531A79    dd          00531AAD
 00531A79    dd          00531AB7
 00531A79    dd          00531AC4
 00531A79    dd          00531ACE
 00531A79    dd          00531AD9
 00531A79    dd          00531AE3
 00531A79    dd          00531AEE
 00531AA0    mov         eax,dword ptr [ebp-64]
 00531AA3    neg         eax
 00531AA5    mov         edx,dword ptr [ebp-6C]
 00531AA8    mov         dword ptr [edx+4],eax
>00531AAB    jmp         00531B20
 00531AAD    mov         eax,dword ptr [ebp-6C]
 00531AB0    xor         edx,edx
 00531AB2    mov         dword ptr [eax+4],edx
>00531AB5    jmp         00531B20
 00531AB7    mov         eax,dword ptr [ebp-64]
 00531ABA    neg         eax
 00531ABC    mov         edx,dword ptr [ebp-6C]
 00531ABF    mov         dword ptr [edx+4],eax
>00531AC2    jmp         00531B20
 00531AC4    mov         eax,dword ptr [ebp-6C]
 00531AC7    xor         edx,edx
 00531AC9    mov         dword ptr [eax+4],edx
>00531ACC    jmp         00531B20
 00531ACE    mov         eax,dword ptr [ebp-6C]
 00531AD1    mov         edx,dword ptr [ebp-64]
 00531AD4    mov         dword ptr [eax+4],edx
>00531AD7    jmp         00531B20
 00531AD9    mov         eax,dword ptr [ebp-6C]
 00531ADC    xor         edx,edx
 00531ADE    mov         dword ptr [eax+4],edx
>00531AE1    jmp         00531B20
 00531AE3    mov         eax,dword ptr [ebp-6C]
 00531AE6    mov         edx,dword ptr [ebp-64]
 00531AE9    mov         dword ptr [eax+4],edx
>00531AEC    jmp         00531B20
 00531AEE    mov         eax,dword ptr [ebp-6C]
 00531AF1    xor         edx,edx
 00531AF3    mov         dword ptr [eax+4],edx
>00531AF6    jmp         00531B20
 00531AF8    mov         eax,dword ptr [ebp-54]
 00531AFB    test        eax,eax
>00531AFD    je          00531B0C
 00531AFF    add         eax,0FFFFFFFD
 00531B02    sub         eax,2
>00531B05    jb          00531B0C
 00531B07    sub         eax,2
>00531B0A    jne         00531B17
 00531B0C    mov         eax,dword ptr [ebp-6C]
 00531B0F    mov         edx,dword ptr [ebp-30]
 00531B12    mov         dword ptr [eax+4],edx
>00531B15    jmp         00531B20
 00531B17    mov         eax,dword ptr [ebp-6C]
 00531B1A    mov         edx,dword ptr [ebp-2C]
 00531B1D    mov         dword ptr [eax+4],edx
 00531B20    mov         eax,dword ptr [ebp-6C]
 00531B23    mov         eax,dword ptr [eax+4]
 00531B26    mov         edx,dword ptr [ebp-6C]
 00531B29    cmp         eax,dword ptr [edx+8]
>00531B2C    jge         00531B4C
 00531B2E    mov         eax,dword ptr [ebp-6C]
 00531B31    mov         eax,dword ptr [eax+4]
 00531B34    mov         dword ptr [ebp-1C],eax
 00531B37    mov         eax,dword ptr [ebp-6C]
 00531B3A    mov         eax,dword ptr [eax+8]
 00531B3D    mov         edx,dword ptr [ebp-6C]
 00531B40    mov         dword ptr [edx+4],eax
 00531B43    mov         eax,dword ptr [ebp-6C]
 00531B46    mov         edx,dword ptr [ebp-1C]
 00531B49    mov         dword ptr [eax+8],edx
 00531B4C    fld         qword ptr [ebp-40]
 00531B4F    fcomp       qword ptr [ebp+0C]
 00531B52    fnstsw      al
 00531B54    sahf
>00531B55    ja          00531B71
 00531B57    inc         dword ptr [ebp-54]
 00531B5A    inc         dword ptr [ebp-58]
 00531B5D    cmp         dword ptr [ebp-54],8
>00531B61    jne         005318A7
 00531B67    xor         eax,eax
 00531B69    mov         dword ptr [ebp-54],eax
>00531B6C    jmp         005318A7
 00531B71    xor         eax,eax
 00531B73    mov         dword ptr [ebp-10],eax
 00531B76    mov         eax,dword ptr [ebp+8]
 00531B79    add         eax,eax
 00531B7B    inc         eax
 00531B7C    mov         dword ptr [ebp-14],eax
 00531B7F    mov         dword ptr [ebp-18],1
 00531B86    mov         eax,dword ptr [ebp+8]
 00531B89    mov         dword ptr [ebp-1C],eax
 00531B8C    xor         eax,eax
 00531B8E    mov         dword ptr [ebp-20],eax
 00531B91    fild        dword ptr [ebp-8]
 00531B94    fstp        dword ptr [ebp-4C]
 00531B97    wait
 00531B98    fild        dword ptr [ebp-0C]
 00531B9B    fstp        dword ptr [ebp-50]
 00531B9E    wait
 00531B9F    mov         eax,dword ptr [ebp-4]
 00531BA2    mov         eax,dword ptr [eax+2F8]
 00531BA8    mov         eax,dword ptr [eax+250]
 00531BAE    mov         eax,dword ptr [eax+0BC]
 00531BB4    mov         dword ptr [ebp-68],eax
 00531BB7    mov         eax,dword ptr [ebp-18]
 00531BBA    cmp         eax,dword ptr [ebp-14]
>00531BBD    jg          00531F80
 00531BC3    fild        dword ptr [ebp-10]
 00531BC6    fild        dword ptr [ebp-14]
 00531BC9    fdivp       st(1),st
 00531BCB    fild        dword ptr [ebp-1C]
 00531BCE    fsubrp      st(1),st
 00531BD0    fstp        dword ptr [ebp-44]
 00531BD3    wait
 00531BD4    fild        dword ptr [ebp-20]
 00531BD7    fstp        dword ptr [ebp-48]
 00531BDA    wait
 00531BDB    mov         eax,dword ptr [ebp-4]
 00531BDE    mov         eax,dword ptr [eax+2F8]
 00531BE4    mov         eax,dword ptr [eax+250]
 00531BEA    mov         dword ptr [ebp-70],eax
 00531BED    cmp         byte ptr [ebp-0D0],1
>00531BF4    je          00531C34
 00531BF6    cmp         byte ptr [ebp-0D0],2
>00531BFD    jne         00531C15
 00531BFF    mov         eax,dword ptr [ebp-20]
 00531C02    cmp         eax,dword ptr [ebp-0C8]
>00531C08    jl          00531C15
 00531C0A    mov         eax,dword ptr [ebp-20]
 00531C0D    cmp         eax,dword ptr [ebp-0CC]
>00531C13    jle         00531C34
 00531C15    cmp         byte ptr [ebp-0D0],3
>00531C1C    jne         00531C59
 00531C1E    mov         eax,dword ptr [ebp-20]
 00531C21    cmp         eax,dword ptr [ebp-0C8]
>00531C27    jl          00531C34
 00531C29    mov         eax,dword ptr [ebp-20]
 00531C2C    cmp         eax,dword ptr [ebp-0CC]
>00531C32    jle         00531C59
 00531C34    fld         dword ptr [ebp-4C]
 00531C37    fadd        dword ptr [ebp-44]
 00531C3A    add         esp,0FFFFFFFC
 00531C3D    fstp        dword ptr [esp]
 00531C40    wait
 00531C41    fld         dword ptr [ebp-50]
 00531C44    fadd        dword ptr [ebp-48]
 00531C47    add         esp,0FFFFFFFC
 00531C4A    fstp        dword ptr [esp]
 00531C4D    wait
 00531C4E    mov         edx,dword ptr [ebp-68]
 00531C51    mov         eax,dword ptr [ebp-70]
 00531C54    call        0051FFDC
 00531C59    cmp         byte ptr [ebp-0C4],1
>00531C60    je          00531CA8
 00531C62    cmp         byte ptr [ebp-0C4],2
>00531C69    jne         00531C85
 00531C6B    mov         eax,dword ptr [ebp-20]
 00531C6E    neg         eax
 00531C70    cmp         eax,dword ptr [ebp-0BC]
>00531C76    jl          00531C85
 00531C78    mov         eax,dword ptr [ebp-20]
 00531C7B    neg         eax
 00531C7D    cmp         eax,dword ptr [ebp-0C0]
>00531C83    jle         00531CA8
 00531C85    cmp         byte ptr [ebp-0C4],3
>00531C8C    jne         00531CCD
 00531C8E    mov         eax,dword ptr [ebp-20]
 00531C91    neg         eax
 00531C93    cmp         eax,dword ptr [ebp-0BC]
>00531C99    jl          00531CA8
 00531C9B    mov         eax,dword ptr [ebp-20]
 00531C9E    neg         eax
 00531CA0    cmp         eax,dword ptr [ebp-0C0]
>00531CA6    jle         00531CCD
 00531CA8    fld         dword ptr [ebp-4C]
 00531CAB    fsub        dword ptr [ebp-48]
 00531CAE    add         esp,0FFFFFFFC
 00531CB1    fstp        dword ptr [esp]
 00531CB4    wait
 00531CB5    fld         dword ptr [ebp-50]
 00531CB8    fsub        dword ptr [ebp-44]
 00531CBB    add         esp,0FFFFFFFC
 00531CBE    fstp        dword ptr [esp]
 00531CC1    wait
 00531CC2    mov         edx,dword ptr [ebp-68]
 00531CC5    mov         eax,dword ptr [ebp-70]
 00531CC8    call        0051FFDC
 00531CCD    cmp         byte ptr [ebp-0B8],1
>00531CD4    je          00531D14
 00531CD6    cmp         byte ptr [ebp-0B8],2
>00531CDD    jne         00531CF5
 00531CDF    mov         eax,dword ptr [ebp-20]
 00531CE2    cmp         eax,dword ptr [ebp-0B0]
>00531CE8    jl          00531CF5
 00531CEA    mov         eax,dword ptr [ebp-20]
 00531CED    cmp         eax,dword ptr [ebp-0B4]
>00531CF3    jle         00531D14
 00531CF5    cmp         byte ptr [ebp-0B8],3
>00531CFC    jne         00531D39
 00531CFE    mov         eax,dword ptr [ebp-20]
 00531D01    cmp         eax,dword ptr [ebp-0B0]
>00531D07    jl          00531D14
 00531D09    mov         eax,dword ptr [ebp-20]
 00531D0C    cmp         eax,dword ptr [ebp-0B4]
>00531D12    jle         00531D39
 00531D14    fld         dword ptr [ebp-4C]
 00531D17    fadd        dword ptr [ebp-48]
 00531D1A    add         esp,0FFFFFFFC
 00531D1D    fstp        dword ptr [esp]
 00531D20    wait
 00531D21    fld         dword ptr [ebp-50]
 00531D24    fsub        dword ptr [ebp-44]
 00531D27    add         esp,0FFFFFFFC
 00531D2A    fstp        dword ptr [esp]
 00531D2D    wait
 00531D2E    mov         edx,dword ptr [ebp-68]
 00531D31    mov         eax,dword ptr [ebp-70]
 00531D34    call        0051FFDC
 00531D39    cmp         byte ptr [ebp-0AC],1
>00531D40    je          00531D80
 00531D42    cmp         byte ptr [ebp-0AC],2
>00531D49    jne         00531D61
 00531D4B    mov         eax,dword ptr [ebp-20]
 00531D4E    cmp         eax,dword ptr [ebp-0A4]
>00531D54    jl          00531D61
 00531D56    mov         eax,dword ptr [ebp-20]
 00531D59    cmp         eax,dword ptr [ebp-0A8]
>00531D5F    jle         00531D80
 00531D61    cmp         byte ptr [ebp-0AC],3
>00531D68    jne         00531DA5
 00531D6A    mov         eax,dword ptr [ebp-20]
 00531D6D    cmp         eax,dword ptr [ebp-0A4]
>00531D73    jl          00531D80
 00531D75    mov         eax,dword ptr [ebp-20]
 00531D78    cmp         eax,dword ptr [ebp-0A8]
>00531D7E    jle         00531DA5
 00531D80    fld         dword ptr [ebp-4C]
 00531D83    fsub        dword ptr [ebp-44]
 00531D86    add         esp,0FFFFFFFC
 00531D89    fstp        dword ptr [esp]
 00531D8C    wait
 00531D8D    fld         dword ptr [ebp-50]
 00531D90    fadd        dword ptr [ebp-48]
 00531D93    add         esp,0FFFFFFFC
 00531D96    fstp        dword ptr [esp]
 00531D99    wait
 00531D9A    mov         edx,dword ptr [ebp-68]
 00531D9D    mov         eax,dword ptr [ebp-70]
 00531DA0    call        0051FFDC
 00531DA5    cmp         byte ptr [ebp-0A0],1
>00531DAC    je          00531DF4
 00531DAE    cmp         byte ptr [ebp-0A0],2
>00531DB5    jne         00531DD1
 00531DB7    mov         eax,dword ptr [ebp-20]
 00531DBA    neg         eax
 00531DBC    cmp         eax,dword ptr [ebp-98]
>00531DC2    jl          00531DD1
 00531DC4    mov         eax,dword ptr [ebp-20]
 00531DC7    neg         eax
 00531DC9    cmp         eax,dword ptr [ebp-9C]
>00531DCF    jle         00531DF4
 00531DD1    cmp         byte ptr [ebp-0A0],3
>00531DD8    jne         00531E19
 00531DDA    mov         eax,dword ptr [ebp-20]
 00531DDD    neg         eax
 00531DDF    cmp         eax,dword ptr [ebp-98]
>00531DE5    jl          00531DF4
 00531DE7    mov         eax,dword ptr [ebp-20]
 00531DEA    neg         eax
 00531DEC    cmp         eax,dword ptr [ebp-9C]
>00531DF2    jle         00531E19
 00531DF4    fld         dword ptr [ebp-4C]
 00531DF7    fsub        dword ptr [ebp-44]
 00531DFA    add         esp,0FFFFFFFC
 00531DFD    fstp        dword ptr [esp]
 00531E00    wait
 00531E01    fld         dword ptr [ebp-50]
 00531E04    fsub        dword ptr [ebp-48]
 00531E07    add         esp,0FFFFFFFC
 00531E0A    fstp        dword ptr [esp]
 00531E0D    wait
 00531E0E    mov         edx,dword ptr [ebp-68]
 00531E11    mov         eax,dword ptr [ebp-70]
 00531E14    call        0051FFDC
 00531E19    cmp         byte ptr [ebp-94],1
>00531E20    je          00531E60
 00531E22    cmp         byte ptr [ebp-94],2
>00531E29    jne         00531E41
 00531E2B    mov         eax,dword ptr [ebp-20]
 00531E2E    cmp         eax,dword ptr [ebp-8C]
>00531E34    jl          00531E41
 00531E36    mov         eax,dword ptr [ebp-20]
 00531E39    cmp         eax,dword ptr [ebp-90]
>00531E3F    jle         00531E60
 00531E41    cmp         byte ptr [ebp-94],3
>00531E48    jne         00531E85
 00531E4A    mov         eax,dword ptr [ebp-20]
 00531E4D    cmp         eax,dword ptr [ebp-8C]
>00531E53    jl          00531E60
 00531E55    mov         eax,dword ptr [ebp-20]
 00531E58    cmp         eax,dword ptr [ebp-90]
>00531E5E    jle         00531E85
 00531E60    fld         dword ptr [ebp-4C]
 00531E63    fadd        dword ptr [ebp-48]
 00531E66    add         esp,0FFFFFFFC
 00531E69    fstp        dword ptr [esp]
 00531E6C    wait
 00531E6D    fld         dword ptr [ebp-50]
 00531E70    fadd        dword ptr [ebp-44]
 00531E73    add         esp,0FFFFFFFC
 00531E76    fstp        dword ptr [esp]
 00531E79    wait
 00531E7A    mov         edx,dword ptr [ebp-68]
 00531E7D    mov         eax,dword ptr [ebp-70]
 00531E80    call        0051FFDC
 00531E85    cmp         byte ptr [ebp-88],1
>00531E8C    je          00531ECE
 00531E8E    cmp         byte ptr [ebp-88],2
>00531E95    jne         00531EAE
 00531E97    mov         eax,dword ptr [ebp-20]
 00531E9A    neg         eax
 00531E9C    cmp         eax,dword ptr [ebp-80]
>00531E9F    jl          00531EAE
 00531EA1    mov         eax,dword ptr [ebp-20]
 00531EA4    neg         eax
 00531EA6    cmp         eax,dword ptr [ebp-84]
>00531EAC    jle         00531ECE
 00531EAE    cmp         byte ptr [ebp-88],3
>00531EB5    jne         00531EF3
 00531EB7    mov         eax,dword ptr [ebp-20]
 00531EBA    neg         eax
 00531EBC    cmp         eax,dword ptr [ebp-80]
>00531EBF    jl          00531ECE
 00531EC1    mov         eax,dword ptr [ebp-20]
 00531EC4    neg         eax
 00531EC6    cmp         eax,dword ptr [ebp-84]
>00531ECC    jle         00531EF3
 00531ECE    fld         dword ptr [ebp-4C]
 00531ED1    fsub        dword ptr [ebp-48]
 00531ED4    add         esp,0FFFFFFFC
 00531ED7    fstp        dword ptr [esp]
 00531EDA    wait
 00531EDB    fld         dword ptr [ebp-50]
 00531EDE    fadd        dword ptr [ebp-44]
 00531EE1    add         esp,0FFFFFFFC
 00531EE4    fstp        dword ptr [esp]
 00531EE7    wait
 00531EE8    mov         edx,dword ptr [ebp-68]
 00531EEB    mov         eax,dword ptr [ebp-70]
 00531EEE    call        0051FFDC
 00531EF3    cmp         byte ptr [ebp-7C],1
>00531EF7    je          00531F2D
 00531EF9    cmp         byte ptr [ebp-7C],2
>00531EFD    jne         00531F13
 00531EFF    mov         eax,dword ptr [ebp-20]
 00531F02    neg         eax
 00531F04    cmp         eax,dword ptr [ebp-74]
>00531F07    jl          00531F13
 00531F09    mov         eax,dword ptr [ebp-20]
 00531F0C    neg         eax
 00531F0E    cmp         eax,dword ptr [ebp-78]
>00531F11    jle         00531F2D
 00531F13    cmp         byte ptr [ebp-7C],3
>00531F17    jne         00531F52
 00531F19    mov         eax,dword ptr [ebp-20]
 00531F1C    neg         eax
 00531F1E    cmp         eax,dword ptr [ebp-74]
>00531F21    jl          00531F2D
 00531F23    mov         eax,dword ptr [ebp-20]
 00531F26    neg         eax
 00531F28    cmp         eax,dword ptr [ebp-78]
>00531F2B    jle         00531F52
 00531F2D    fld         dword ptr [ebp-4C]
 00531F30    fadd        dword ptr [ebp-44]
 00531F33    add         esp,0FFFFFFFC
 00531F36    fstp        dword ptr [esp]
 00531F39    wait
 00531F3A    fld         dword ptr [ebp-50]
 00531F3D    fsub        dword ptr [ebp-48]
 00531F40    add         esp,0FFFFFFFC
 00531F43    fstp        dword ptr [esp]
 00531F46    wait
 00531F47    mov         edx,dword ptr [ebp-68]
 00531F4A    mov         eax,dword ptr [ebp-70]
 00531F4D    call        0051FFDC
 00531F52    dec         dword ptr [ebp-20]
 00531F55    mov         eax,dword ptr [ebp-18]
 00531F58    add         dword ptr [ebp-10],eax
 00531F5B    add         dword ptr [ebp-18],2
 00531F5F    mov         eax,dword ptr [ebp-10]
 00531F62    cmp         eax,dword ptr [ebp-14]
>00531F65    jl          00531F74
 00531F67    dec         dword ptr [ebp-1C]
 00531F6A    mov         eax,dword ptr [ebp-14]
 00531F6D    sub         dword ptr [ebp-10],eax
 00531F70    sub         dword ptr [ebp-14],2
 00531F74    mov         eax,dword ptr [ebp-18]
 00531F77    cmp         eax,dword ptr [ebp-14]
>00531F7A    jle         00531BC3
 00531F80    mov         esp,ebp
 00531F82    pop         ebp
 00531F83    ret         14
end;*}

//00531FBC
{*function sub_00531FBC:?;
begin
 00531FBC    push        ebp
 00531FBD    mov         ebp,esp
 00531FBF    add         esp,0FFFFFFC0
 00531FC2    push        ebx
 00531FC3    xor         eax,eax
 00531FC5    mov         dword ptr [ebp-38],eax
 00531FC8    mov         dword ptr [ebp-34],eax
 00531FCB    mov         dword ptr [ebp-30],eax
 00531FCE    mov         dword ptr [ebp-2C],eax
 00531FD1    mov         dword ptr [ebp-28],eax
 00531FD4    mov         dword ptr [ebp-24],eax
 00531FD7    mov         dword ptr [ebp-8],eax
 00531FDA    xor         eax,eax
 00531FDC    push        ebp
 00531FDD    push        532309
 00531FE2    push        dword ptr fs:[eax]
 00531FE5    mov         dword ptr fs:[eax],esp
 00531FE8    mov         byte ptr [ebp-1D],0
 00531FEC    xor         eax,eax
 00531FEE    mov         dword ptr [ebp-10],eax
 00531FF1    mov         dl,1
 00531FF3    mov         eax,[0041DE14];TMemoryStream
 00531FF8    call        TObject.Create;TMemoryStream.Create
 00531FFD    mov         dword ptr [ebp-1C],eax
 00532000    xor         eax,eax
 00532002    push        ebp
 00532003    push        5322C4
 00532008    push        dword ptr fs:[eax]
 0053200B    mov         dword ptr fs:[eax],esp
 0053200E    push        10
 00532010    call        user32.GetKeyState
 00532015    test        ax,ax
>00532018    jge         00532125
 0053201E    mov         eax,[0056E040];^gvar_005720C0
 00532023    cmp         byte ptr [eax],0
>00532026    je          00532056
 00532028    push        532320;'   '
 0053202D    lea         ecx,[ebp-24]
 00532030    mov         edx,4
 00532035    mov         eax,33
 0053203A    call        IntToHex
 0053203F    push        dword ptr [ebp-24]
 00532042    push        53232C;'.rpm'
 00532047    lea         eax,[ebp-8]
 0053204A    mov         edx,3
 0053204F    call        @LStrCatN
>00532054    jmp         00532082
 00532056    push        532320;'   '
 0053205B    lea         ecx,[ebp-28]
 0053205E    mov         edx,2
 00532063    mov         eax,33
 00532068    call        IntToHex
 0053206D    push        dword ptr [ebp-28]
 00532070    push        53232C;'.rpm'
 00532075    lea         eax,[ebp-8]
 00532078    mov         edx,3
 0053207D    call        @LStrCatN
 00532082    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 00532088    mov         edx,dword ptr [edx]
 0053208A    lea         eax,[ebp-2C]
 0053208D    mov         ecx,53233C;'Modules\'
 00532092    call        @LStrCat3
 00532097    mov         edx,dword ptr [ebp-2C]
 0053209A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053209F    mov         eax,dword ptr [eax]
 005320A1    mov         eax,dword ptr [eax+35C]
 005320A7    call        TOpenDialog.SetInitialDir
 005320AC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005320B1    mov         eax,dword ptr [eax]
 005320B3    mov         eax,dword ptr [eax+35C]
 005320B9    add         eax,78
 005320BC    mov         edx,dword ptr [ebp-8]
 005320BF    call        @LStrAsg
 005320C4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005320C9    mov         eax,dword ptr [eax]
 005320CB    mov         eax,dword ptr [eax+35C]
 005320D1    mov         edx,dword ptr [eax]
 005320D3    call        dword ptr [edx+3C]
 005320D6    test        al,al
>005320D8    je          00532174
 005320DE    lea         edx,[ebp-30]
 005320E1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005320E6    mov         eax,dword ptr [eax]
 005320E8    mov         eax,dword ptr [eax+35C]
 005320EE    call        TOpenDialog.GetFileName
 005320F3    mov         eax,dword ptr [ebp-30]
 005320F6    call        0040C94C
 005320FB    test        al,al
>005320FD    je          00532174
 005320FF    lea         edx,[ebp-34]
 00532102    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532107    mov         eax,dword ptr [eax]
 00532109    mov         eax,dword ptr [eax+35C]
 0053210F    call        TOpenDialog.GetFileName
 00532114    mov         edx,dword ptr [ebp-34]
 00532117    mov         eax,dword ptr [ebp-1C]
 0053211A    call        00423F8C
 0053211F    mov         byte ptr [ebp-1D],1
>00532123    jmp         00532174
 00532125    mov         edx,dword ptr [ebp-1C]
 00532128    mov         ax,33
 0053212C    call        004CF5C8
 00532131    test        al,al
>00532133    je          0053213B
 00532135    mov         byte ptr [ebp-1D],1
>00532139    jmp         00532174
 0053213B    lea         eax,[ebp-38]
 0053213E    push        eax
 0053213F    mov         dword ptr [ebp-40],33
 00532146    mov         byte ptr [ebp-3C],0
 0053214A    lea         edx,[ebp-40]
 0053214D    xor         ecx,ecx
 0053214F    mov         eax,532350;'Error Read Module: %x'
 00532154    call        0040D630
 00532159    mov         edx,dword ptr [ebp-38]
 0053215C    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532161    mov         eax,dword ptr [eax]
 00532163    mov         eax,dword ptr [eax+2F8]
 00532169    mov         eax,dword ptr [eax+248]
 0053216F    mov         ecx,dword ptr [eax]
 00532171    call        dword ptr [ecx+38]
 00532174    cmp         byte ptr [ebp-1D],0
>00532178    je          005322AE
 0053217E    xor         ecx,ecx
 00532180    xor         edx,edx
 00532182    mov         eax,dword ptr [ebp-1C]
 00532185    mov         ebx,dword ptr [eax]
 00532187    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053218A    mov         eax,dword ptr [ebp-1C]
 0053218D    call        004CE56C
 00532192    mov         dword ptr [ebp-14],eax
 00532195    cmp         dword ptr [ebp-14],4C594F52
>0053219C    jne         005321C9
 0053219E    xor         ecx,ecx
 005321A0    mov         edx,6
 005321A5    mov         eax,dword ptr [ebp-1C]
 005321A8    mov         ebx,dword ptr [eax]
 005321AA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005321AD    mov         eax,dword ptr [ebp-1C]
 005321B0    call        004CE548
 005321B5    mov         word ptr [ebp-16],ax
 005321B9    movzx       edx,word ptr [ebp-16]
 005321BD    xor         ecx,ecx
 005321BF    mov         eax,dword ptr [ebp-1C]
 005321C2    mov         ebx,dword ptr [eax]
 005321C4    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>005321C7    jmp         005321D8
 005321C9    xor         ecx,ecx
 005321CB    mov         edx,18
 005321D0    mov         eax,dword ptr [ebp-1C]
 005321D3    mov         ebx,dword ptr [eax]
 005321D5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005321D8    mov         eax,dword ptr [ebp-1C]
 005321DB    call        004CE56C
 005321E0    mov         dword ptr [ebp-10],eax
 005321E3    mov         eax,dword ptr [ebp-10]
 005321E6    push        eax
 005321E7    mov         eax,597E84;gvar_00597E84:?
 005321EC    mov         ecx,1
 005321F1    mov         edx,dword ptr ds:[531190];_DynArr_120_3
 005321F7    call        @DynArraySetLength
 005321FC    add         esp,4
 005321FF    xor         eax,eax
 00532201    mov         dword ptr [ebp-0C],eax
>00532204    jmp         00532274
 00532206    mov         eax,dword ptr [ebp-1C]
 00532209    call        004CE56C
 0053220E    mov         dword ptr [ebp-14],eax
 00532211    mov         eax,dword ptr [ebp-0C]
 00532214    lea         eax,[eax+eax*8]
 00532217    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 0053221D    mov         ecx,dword ptr [ebp-14]
 00532220    shr         ecx,18
 00532223    mov         byte ptr [edx+eax+4],cl
 00532227    mov         eax,dword ptr [ebp-0C]
 0053222A    lea         eax,[eax+eax*8]
 0053222D    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532233    mov         ecx,dword ptr [ebp-14]
 00532236    and         ecx,0FFFFFF
 0053223C    mov         dword ptr [edx+eax],ecx
 0053223F    mov         eax,dword ptr [ebp-1C]
 00532242    call        004CE548
 00532247    mov         edx,dword ptr [ebp-0C]
 0053224A    lea         edx,[edx+edx*8]
 0053224D    mov         ecx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532253    mov         word ptr [ecx+edx+5],ax
 00532258    mov         eax,dword ptr [ebp-1C]
 0053225B    call        004CE548
 00532260    mov         edx,dword ptr [ebp-0C]
 00532263    lea         edx,[edx+edx*8]
 00532266    mov         ecx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 0053226C    mov         word ptr [ecx+edx+7],ax
 00532271    inc         dword ptr [ebp-0C]
 00532274    mov         eax,dword ptr [ebp-0C]
 00532277    cmp         eax,dword ptr [ebp-10]
>0053227A    jge         005322AE
 0053227C    mov         eax,dword ptr [ebp-1C]
 0053227F    mov         edx,dword ptr [eax]
 00532281    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00532283    push        edx
 00532284    push        eax
 00532285    mov         eax,dword ptr [ebp-1C]
 00532288    call        TStream.GetPosition
 0053228D    cmp         edx,dword ptr [esp+4]
>00532291    jne         0053229C
 00532293    cmp         eax,dword ptr [esp]
 00532296    pop         edx
 00532297    pop         eax
>00532298    jae         005322AE
>0053229A    jmp         005322A0
 0053229C    pop         edx
 0053229D    pop         eax
>0053229E    jge         005322AE
 005322A0    mov         eax,[0056E5A4];^gvar_0056DF04
 005322A5    cmp         byte ptr [eax],0
>005322A8    je          00532206
 005322AE    xor         eax,eax
 005322B0    pop         edx
 005322B1    pop         ecx
 005322B2    pop         ecx
 005322B3    mov         dword ptr fs:[eax],edx
 005322B6    push        5322CB
 005322BB    mov         eax,dword ptr [ebp-1C]
 005322BE    call        TObject.Free
 005322C3    ret
>005322C4    jmp         @HandleFinally
>005322C9    jmp         005322BB
 005322CB    mov         eax,dword ptr [ebp-10]
 005322CE    mov         dword ptr [ebp-4],eax
 005322D1    xor         eax,eax
 005322D3    pop         edx
 005322D4    pop         ecx
 005322D5    pop         ecx
 005322D6    mov         dword ptr fs:[eax],edx
 005322D9    push        532310
 005322DE    lea         eax,[ebp-38]
 005322E1    call        @LStrClr
 005322E6    lea         eax,[ebp-34]
 005322E9    mov         edx,2
 005322EE    call        @LStrArrayClr
 005322F3    lea         eax,[ebp-2C]
 005322F6    mov         edx,3
 005322FB    call        @LStrArrayClr
 00532300    lea         eax,[ebp-8]
 00532303    call        @LStrClr
 00532308    ret
>00532309    jmp         @HandleFinally
>0053230E    jmp         005322DE
 00532310    mov         eax,dword ptr [ebp-4]
 00532313    pop         ebx
 00532314    mov         esp,ebp
 00532316    pop         ebp
 00532317    ret
end;*}

//00532368
{*function sub_00532368:?;
begin
 00532368    push        ebp
 00532369    mov         ebp,esp
 0053236B    xor         ecx,ecx
 0053236D    push        ecx
 0053236E    push        ecx
 0053236F    push        ecx
 00532370    push        ecx
 00532371    push        ecx
 00532372    xor         eax,eax
 00532374    push        ebp
 00532375    push        532505
 0053237A    push        dword ptr fs:[eax]
 0053237D    mov         dword ptr fs:[eax],esp
 00532380    mov         dl,1
 00532382    mov         eax,[0041DE14];TMemoryStream
 00532387    call        TObject.Create;TMemoryStream.Create
 0053238C    mov         dword ptr [ebp-8],eax
 0053238F    xor         eax,eax
 00532391    mov         dword ptr [ebp-4],eax
 00532394    xor         eax,eax
 00532396    push        ebp
 00532397    push        5324DB
 0053239C    push        dword ptr fs:[eax]
 0053239F    mov         dword ptr fs:[eax],esp
 005323A2    push        10
 005323A4    call        user32.GetKeyState
 005323A9    test        ax,ax
>005323AC    jge         0053245F
 005323B2    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005323B8    mov         edx,dword ptr [edx]
 005323BA    lea         eax,[ebp-0C]
 005323BD    mov         ecx,53251C;'CPs\'
 005323C2    call        @LStrCat3
 005323C7    mov         edx,dword ptr [ebp-0C]
 005323CA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005323CF    mov         eax,dword ptr [eax]
 005323D1    mov         eax,dword ptr [eax+35C]
 005323D7    call        TOpenDialog.SetInitialDir
 005323DC    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005323E1    mov         eax,dword ptr [eax]
 005323E3    mov         eax,dword ptr [eax+35C]
 005323E9    add         eax,78
 005323EC    call        @LStrClr
 005323F1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005323F6    mov         eax,dword ptr [eax]
 005323F8    mov         eax,dword ptr [eax+35C]
 005323FE    mov         edx,dword ptr [eax]
 00532400    call        dword ptr [edx+3C]
 00532403    test        al,al
>00532405    je          005324C5
 0053240B    lea         edx,[ebp-10]
 0053240E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532413    mov         eax,dword ptr [eax]
 00532415    mov         eax,dword ptr [eax+35C]
 0053241B    call        TOpenDialog.GetFileName
 00532420    mov         eax,dword ptr [ebp-10]
 00532423    call        0040C94C
 00532428    test        al,al
>0053242A    je          005324C5
 00532430    lea         edx,[ebp-14]
 00532433    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532438    mov         eax,dword ptr [eax]
 0053243A    mov         eax,dword ptr [eax+35C]
 00532440    call        TOpenDialog.GetFileName
 00532445    mov         edx,dword ptr [ebp-14]
 00532448    mov         eax,dword ptr [ebp-8]
 0053244B    call        00423F8C
 00532450    mov         eax,dword ptr [ebp-8]
 00532453    call        0054DA18
 00532458    mov         [00597E88],eax;gvar_00597E88
>0053245D    jmp         005324C5
 0053245F    mov         eax,[0056E040];^gvar_005720C0
 00532464    cmp         byte ptr [eax],0
>00532467    jne         00532489
 00532469    mov         eax,[0056E304];^gvar_0056DF54
 0053246E    cmp         word ptr [eax],65
>00532472    je          00532489
 00532474    mov         eax,[0056E304];^gvar_0056DF54
 00532479    cmp         word ptr [eax],73
>0053247D    je          00532489
 0053247F    mov         eax,[0056E01C];^gvar_005720C1
 00532484    cmp         byte ptr [eax],0
>00532487    je          005324A8
 00532489    mov         ecx,dword ptr [ebp-8]
 0053248C    xor         edx,edx
 0053248E    mov         ax,0D
 00532492    call        004CFEC8
 00532497    test        al,al
>00532499    je          005324C5
 0053249B    mov         eax,dword ptr [ebp-8]
 0053249E    call        0054DA18
 005324A3    mov         dword ptr [ebp-4],eax
>005324A6    jmp         005324C5
 005324A8    mov         ecx,dword ptr [ebp-8]
 005324AB    xor         edx,edx
 005324AD    mov         ax,5
 005324B1    call        004CFEC8
 005324B6    test        al,al
>005324B8    je          005324C5
 005324BA    mov         eax,dword ptr [ebp-8]
 005324BD    call        0054DA18
 005324C2    mov         dword ptr [ebp-4],eax
 005324C5    xor         eax,eax
 005324C7    pop         edx
 005324C8    pop         ecx
 005324C9    pop         ecx
 005324CA    mov         dword ptr fs:[eax],edx
 005324CD    push        5324E2
 005324D2    mov         eax,dword ptr [ebp-8]
 005324D5    call        TObject.Free
 005324DA    ret
>005324DB    jmp         @HandleFinally
>005324E0    jmp         005324D2
 005324E2    xor         eax,eax
 005324E4    pop         edx
 005324E5    pop         ecx
 005324E6    pop         ecx
 005324E7    mov         dword ptr fs:[eax],edx
 005324EA    push        53250C
 005324EF    lea         eax,[ebp-14]
 005324F2    mov         edx,2
 005324F7    call        @LStrArrayClr
 005324FC    lea         eax,[ebp-0C]
 005324FF    call        @LStrClr
 00532504    ret
>00532505    jmp         @HandleFinally
>0053250A    jmp         005324EF
 0053250C    mov         eax,dword ptr [ebp-4]
 0053250F    mov         esp,ebp
 00532511    pop         ebp
 00532512    ret
end;*}

//00532524
procedure TfmViewDef.Button1Click(Sender:TObject);
begin
{*
 00532524    push        ebp
 00532525    mov         ebp,esp
 00532527    add         esp,0FFFFFF84
 0053252A    push        ebx
 0053252B    xor         ecx,ecx
 0053252D    mov         dword ptr [ebp-68],ecx
 00532530    mov         dword ptr [ebp-6C],ecx
 00532533    mov         dword ptr [ebp-58],edx
 00532536    mov         dword ptr [ebp-4],eax
 00532539    xor         eax,eax
 0053253B    push        ebp
 0053253C    push        532BFC
 00532541    push        dword ptr fs:[eax]
 00532544    mov         dword ptr fs:[eax],esp
 00532547    call        00532368
 0053254C    mov         [00597E88],eax;gvar_00597E88
 00532551    call        00531FBC
 00532556    mov         [00597E8C],eax;gvar_00597E8C
 0053255B    xor         eax,eax
 0053255D    mov         dword ptr [ebp-40],eax
 00532560    xor         eax,eax
 00532562    mov         dword ptr [ebp-44],eax
 00532565    xor         eax,eax
 00532567    mov         dword ptr [ebp-48],eax
 0053256A    mov         eax,dword ptr [ebp-4]
 0053256D    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532573    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532579    mov         dword ptr [ebp-50],eax
 0053257C    mov         eax,dword ptr [ebp-50]
 0053257F    mov         edx,dword ptr [eax]
 00532581    call        dword ptr [edx+10];TBitmap32.sub_0051E1E4
 00532584    mov         edx,0FF000000
 00532589    mov         eax,dword ptr [ebp-50]
 0053258C    call        0051E97C
 00532591    mov         eax,dword ptr [ebp-4]
 00532594    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 0053259A    mov         eax,dword ptr [eax+48];TImage32.Width:Integer
 0053259D    push        eax
 0053259E    mov         eax,dword ptr [ebp-4]
 005325A1    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 005325A7    mov         eax,dword ptr [eax+4C];TImage32.Height:Integer
 005325AA    push        eax
 005325AB    push        0FF000000
 005325B0    xor         ecx,ecx
 005325B2    xor         edx,edx
 005325B4    mov         eax,dword ptr [ebp-50]
 005325B7    call        0052203C
 005325BC    mov         eax,dword ptr [ebp-50]
 005325BF    mov         dword ptr [eax+0BC],0FF007F00;TBitmap32.?fBC:dword
 005325C9    mov         eax,dword ptr [ebp-4]
 005325CC    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 005325D2    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 005325D8    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005325DB    mov         dword ptr [ebp-8],eax
 005325DE    mov         eax,dword ptr [ebp-4]
 005325E1    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 005325E7    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 005325ED    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 005325F0    mov         dword ptr [ebp-0C],eax
 005325F3    xor         eax,eax
 005325F5    mov         dword ptr [ebp-10],eax
 005325F8    lea         edx,[ebp-6C]
 005325FB    mov         eax,dword ptr [ebp-10]
 005325FE    call        IntToStr
 00532603    mov         ecx,dword ptr [ebp-6C]
 00532606    lea         eax,[ebp-68]
 00532609    mov         edx,532C10;'Head '
 0053260E    call        @LStrCat3
 00532613    mov         eax,dword ptr [ebp-68]
 00532616    push        eax
 00532617    push        0
 00532619    mov         eax,dword ptr [ebp-10]
 0053261C    mov         eax,dword ptr [eax*4+56D504]
 00532623    push        eax
 00532624    mov         ecx,dword ptr [ebp-10]
 00532627    mov         eax,ecx
 00532629    shl         ecx,4
 0053262C    sub         ecx,eax
 0053262E    add         ecx,0A
 00532631    mov         edx,0A
 00532636    mov         eax,dword ptr [ebp-50]
 00532639    call        00522C30
 0053263E    inc         dword ptr [ebp-10]
 00532641    cmp         dword ptr [ebp-10],8
>00532645    jne         005325F8
 00532647    mov         eax,dword ptr [ebp-4]
 0053264A    mov         eax,dword ptr [eax+308];TfmViewDef.cbShowZones:TCheckBox
 00532650    mov         edx,dword ptr [eax]
 00532652    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00532658    test        al,al
>0053265A    je          005327F6
 00532660    mov         ax,[00597E88];0x0 gvar_00597E88
 00532666    mov         word ptr [ebp-16],ax
 0053266A    mov         edx,dword ptr [ebp-8]
 0053266D    mov         eax,dword ptr [ebp-0C]
 00532670    call        004373CC
 00532675    mov         word ptr [ebp-1A],ax
 00532679    movzx       eax,word ptr [ebp-1A]
 0053267D    mov         ecx,0A
 00532682    xor         edx,edx
 00532684    div         eax,ecx
 00532686    movzx       edx,word ptr [ebp-1A]
 0053268A    shr         edx,1
 0053268C    sub         dx,ax
 0053268F    mov         word ptr [ebp-18],dx
 00532693    movzx       eax,word ptr [ebp-16]
 00532697    lea         eax,[eax+eax*2]
 0053269A    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 005326A0    mov         eax,dword ptr [edx+eax*4-8]
 005326A4    mov         dword ptr [ebp-28],eax
 005326A7    movzx       eax,word ptr [ebp-18]
 005326AB    push        eax
 005326AC    mov         eax,dword ptr [ebp-28]
 005326AF    pop         edx
 005326B0    mov         ecx,edx
 005326B2    xor         edx,edx
 005326B4    div         eax,ecx
 005326B6    mov         dword ptr [ebp-74],eax
 005326B9    xor         eax,eax
 005326BB    mov         dword ptr [ebp-70],eax
 005326BE    fild        qword ptr [ebp-74]
 005326C1    call        @ROUND
 005326C6    mov         word ptr [ebp-24],ax
 005326CA    mov         eax,dword ptr [ebp-0C]
 005326CD    sar         eax,1
>005326CF    jns         005326D4
 005326D1    adc         eax,0
 005326D4    mov         dword ptr [ebp-34],eax
 005326D7    mov         eax,dword ptr [ebp-8]
 005326DA    sar         eax,1
>005326DC    jns         005326E1
 005326DE    adc         eax,0
 005326E1    mov         dword ptr [ebp-30],eax
 005326E4    mov         eax,dword ptr [ebp-4]
 005326E7    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 005326ED    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 005326F3    mov         dword ptr [eax+0BC],0FF7F7F7F;TBitmap32.?fBC:dword
 005326FD    mov         edx,dword ptr [ebp-30]
 00532700    mov         eax,dword ptr [ebp-34]
 00532703    call        004373CC
 00532708    mov         dword ptr [ebp-38],eax
 0053270B    mov         eax,dword ptr [ebp-4]
 0053270E    mov         eax,dword ptr [eax+310];TfmViewDef.cbOptimized:TCheckBox
 00532714    mov         edx,dword ptr [eax]
 00532716    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053271C    test        al,al
>0053271E    je          0053273F
 00532720    push        0
 00532722    push        0
 00532724    push        40768000
 00532729    push        0
 0053272B    mov         eax,dword ptr [ebp-38]
 0053272E    push        eax
 0053272F    mov         ecx,dword ptr [ebp-34]
 00532732    mov         edx,dword ptr [ebp-30]
 00532735    mov         eax,dword ptr [ebp-4]
 00532738    call        005316EC
>0053273D    jmp         00532758
 0053273F    push        0
 00532741    push        168
 00532746    mov         eax,dword ptr [ebp-38]
 00532749    push        eax
 0053274A    mov         ecx,dword ptr [ebp-34]
 0053274D    mov         edx,dword ptr [ebp-30]
 00532750    mov         eax,dword ptr [ebp-4]
 00532753    call        005315F4
 00532758    mov         eax,[00597E88];0x0 gvar_00597E88
 0053275D    dec         eax
 0053275E    test        eax,eax
>00532760    jl          005327F6
 00532766    inc         eax
 00532767    mov         dword ptr [ebp-54],eax
 0053276A    mov         dword ptr [ebp-14],0
 00532771    mov         edx,dword ptr [ebp-30]
 00532774    mov         eax,dword ptr [ebp-34]
 00532777    call        004373CC
 0053277C    mov         ecx,eax
 0053277E    mov         eax,dword ptr [ebp-14]
 00532781    lea         eax,[eax+eax*2]
 00532784    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0053278A    mov         eax,dword ptr [edx+eax*4+4]
 0053278E    movzx       edx,word ptr [ebp-24]
 00532792    mov         ebx,edx
 00532794    xor         edx,edx
 00532796    div         eax,ebx
 00532798    sub         ecx,eax
 0053279A    mov         dword ptr [ebp-38],ecx
 0053279D    mov         eax,dword ptr [ebp-4]
 005327A0    mov         eax,dword ptr [eax+310];TfmViewDef.cbOptimized:TCheckBox
 005327A6    mov         edx,dword ptr [eax]
 005327A8    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005327AE    test        al,al
>005327B0    je          005327D1
 005327B2    push        0
 005327B4    push        0
 005327B6    push        40768000
 005327BB    push        0
 005327BD    mov         eax,dword ptr [ebp-38]
 005327C0    push        eax
 005327C1    mov         ecx,dword ptr [ebp-34]
 005327C4    mov         edx,dword ptr [ebp-30]
 005327C7    mov         eax,dword ptr [ebp-4]
 005327CA    call        005316EC
>005327CF    jmp         005327EA
 005327D1    push        0
 005327D3    push        168
 005327D8    mov         eax,dword ptr [ebp-38]
 005327DB    push        eax
 005327DC    mov         ecx,dword ptr [ebp-34]
 005327DF    mov         edx,dword ptr [ebp-30]
 005327E2    mov         eax,dword ptr [ebp-4]
 005327E5    call        005315F4
 005327EA    inc         dword ptr [ebp-14]
 005327ED    dec         dword ptr [ebp-54]
>005327F0    jne         00532771
 005327F6    mov         eax,dword ptr [ebp-4]
 005327F9    mov         eax,dword ptr [eax+30C];TfmViewDef.cbShowDefects:TCheckBox
 005327FF    mov         edx,dword ptr [eax]
 00532801    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00532807    test        al,al
>00532809    je          00532BC8
 0053280F    mov         edx,dword ptr [ebp-8]
 00532812    mov         eax,dword ptr [ebp-0C]
 00532815    call        004373CC
 0053281A    mov         word ptr [ebp-1A],ax
 0053281E    movzx       eax,word ptr [ebp-1A]
 00532822    mov         ecx,0A
 00532827    xor         edx,edx
 00532829    div         eax,ecx
 0053282B    movzx       edx,word ptr [ebp-1A]
 0053282F    shr         edx,1
 00532831    sub         dx,ax
 00532834    mov         word ptr [ebp-18],dx
 00532838    cmp         dword ptr ds:[597E88],0;gvar_00597E88
>0053283F    jle         00532858
 00532841    mov         eax,[00597E88];0x0 gvar_00597E88
 00532846    lea         eax,[eax+eax*2]
 00532849    mov         edx,dword ptr ds:[56E214];^gvar_005720C4
 0053284F    mov         eax,dword ptr [edx+eax*4-8]
 00532853    mov         dword ptr [ebp-28],eax
>00532856    jmp         00532887
 00532858    cmp         dword ptr ds:[597E8C],0;gvar_00597E8C
>0053285F    jle         00532882
 00532861    mov         eax,[00597E8C];0x0 gvar_00597E8C
 00532866    lea         eax,[eax+eax*8]
 00532869    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 0053286F    mov         eax,dword ptr [edx+eax-9]
 00532873    mov         dword ptr [ebp-28],eax
 00532876    mov         eax,532C20;'Defects layout will not match real'+#13+if the Zone Map has not been loaded....
 0053287B    call        0043F8B4
>00532880    jmp         00532887
 00532882    xor         eax,eax
 00532884    mov         dword ptr [ebp-28],eax
 00532887    movzx       eax,word ptr [ebp-18]
 0053288B    push        eax
 0053288C    mov         eax,dword ptr [ebp-28]
 0053288F    pop         edx
 00532890    mov         ecx,edx
 00532892    xor         edx,edx
 00532894    div         eax,ecx
 00532896    mov         dword ptr [ebp-74],eax
 00532899    xor         eax,eax
 0053289B    mov         dword ptr [ebp-70],eax
 0053289E    fild        qword ptr [ebp-74]
 005328A1    call        @ROUND
 005328A6    mov         word ptr [ebp-24],ax
 005328AA    mov         eax,dword ptr [ebp-0C]
 005328AD    sar         eax,1
>005328AF    jns         005328B4
 005328B1    adc         eax,0
 005328B4    mov         dword ptr [ebp-34],eax
 005328B7    mov         eax,dword ptr [ebp-8]
 005328BA    sar         eax,1
>005328BC    jns         005328C1
 005328BE    adc         eax,0
 005328C1    mov         dword ptr [ebp-30],eax
 005328C4    mov         eax,[00597E8C];0x0 gvar_00597E8C
 005328C9    dec         eax
 005328CA    test        eax,eax
>005328CC    jl          00532BC8
 005328D2    inc         eax
 005328D3    mov         dword ptr [ebp-54],eax
 005328D6    mov         dword ptr [ebp-10],0
 005328DD    mov         edx,dword ptr [ebp-30]
 005328E0    mov         eax,dword ptr [ebp-34]
 005328E3    call        004373CC
 005328E8    mov         ecx,eax
 005328EA    mov         eax,dword ptr [ebp-10]
 005328ED    lea         eax,[eax+eax*8]
 005328F0    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 005328F6    mov         eax,dword ptr [edx+eax]
 005328F9    movzx       edx,word ptr [ebp-24]
 005328FD    mov         ebx,edx
 005328FF    xor         edx,edx
 00532901    div         eax,ebx
 00532903    sub         ecx,eax
 00532905    mov         dword ptr [ebp-38],ecx
 00532908    cmp         dword ptr ds:[597E88],0;gvar_00597E88
>0053290F    jle         0053292E
 00532911    mov         eax,dword ptr [ebp-10]
 00532914    lea         eax,[eax+eax*8]
 00532917    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 0053291D    mov         edx,dword ptr [edx+eax]
 00532920    mov         eax,dword ptr [ebp-4]
 00532923    call        00531288
 00532928    mov         word ptr [ebp-3C],ax
>0053292C    jmp         00532934
 0053292E    mov         word ptr [ebp-3C],168
 00532934    cmp         word ptr [ebp-3C],0
>00532939    jbe         005329DE
 0053293F    movzx       eax,word ptr [ebp-3C]
 00532943    mov         ecx,168
 00532948    xor         edx,edx
 0053294A    div         eax,ecx
 0053294C    mov         dword ptr [ebp-78],eax
 0053294F    fild        dword ptr [ebp-78]
 00532952    call        @ROUND
 00532957    mov         word ptr [ebp-22],ax
 0053295B    mov         eax,dword ptr [ebp-10]
 0053295E    lea         eax,[eax+eax*8]
 00532961    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532967    mov         ax,word ptr [edx+eax+5]
 0053296C    mov         word ptr [ebp-1C],ax
 00532970    mov         eax,dword ptr [ebp-10]
 00532973    lea         eax,[eax+eax*8]
 00532976    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 0053297C    mov         ax,word ptr [edx+eax+7]
 00532981    mov         word ptr [ebp-1E],ax
 00532985    cmp         word ptr [ebp-1E],0FFFF
>0053298B    jne         005329B8
 0053298D    mov         word ptr [ebp-2A],0
 00532993    mov         eax,dword ptr [ebp-4]
 00532996    mov         eax,dword ptr [eax+314];TfmViewDef.cbTracks:TCheckBox
 0053299C    mov         edx,dword ptr [eax]
 0053299E    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 005329A4    test        al,al
>005329A6    je          005329B0
 005329A8    mov         word ptr [ebp-2C],167
>005329AE    jmp         005329EE
 005329B0    mov         word ptr [ebp-2C],0
>005329B6    jmp         005329EE
 005329B8    movzx       eax,word ptr [ebp-1C]
 005329BC    movzx       edx,word ptr [ebp-22]
 005329C0    mov         ecx,edx
 005329C2    xor         edx,edx
 005329C4    div         eax,ecx
 005329C6    mov         word ptr [ebp-2A],ax
 005329CA    movzx       eax,word ptr [ebp-1E]
 005329CE    movzx       edx,word ptr [ebp-22]
 005329D2    mov         ecx,edx
 005329D4    xor         edx,edx
 005329D6    div         eax,ecx
 005329D8    mov         word ptr [ebp-2C],ax
>005329DC    jmp         005329EE
 005329DE    mov         ax,word ptr [ebp-1C]
 005329E2    mov         word ptr [ebp-2A],ax
 005329E6    mov         ax,word ptr [ebp-1E]
 005329EA    mov         word ptr [ebp-2C],ax
 005329EE    mov         eax,dword ptr [ebp-10]
 005329F1    lea         eax,[eax+eax*8]
 005329F4    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 005329FA    movzx       eax,byte ptr [edx+eax+4]
 005329FF    mov         eax,dword ptr [eax*4+56D504]
 00532A06    mov         edx,dword ptr [ebp-4]
 00532A09    mov         edx,dword ptr [edx+2F8];TfmViewDef.Im32:TImage32
 00532A0F    mov         edx,dword ptr [edx+250];TImage32.?f250:TBitmap32
 00532A15    mov         dword ptr [edx+0BC],eax;TBitmap32.?fBC:dword
 00532A1B    mov         eax,dword ptr [ebp-4]
 00532A1E    mov         eax,dword ptr [eax+310];TfmViewDef.cbOptimized:TCheckBox
 00532A24    mov         edx,dword ptr [eax]
 00532A26    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00532A2C    test        al,al
>00532A2E    je          00532AAA
 00532A30    mov         eax,dword ptr [ebp-40]
 00532A33    cmp         eax,dword ptr [ebp-38]
>00532A36    jne         00532A73
 00532A38    movzx       eax,word ptr [ebp-2A]
 00532A3C    mov         dword ptr [ebp-78],eax
 00532A3F    fild        dword ptr [ebp-78]
 00532A42    fcomp       dword ptr [ebp-44]
 00532A45    fnstsw      al
 00532A47    sahf
>00532A48    jne         00532A73
 00532A4A    movzx       eax,word ptr [ebp-2C]
 00532A4E    mov         dword ptr [ebp-7C],eax
 00532A51    fild        dword ptr [ebp-7C]
 00532A54    fcomp       dword ptr [ebp-48]
 00532A57    fnstsw      al
 00532A59    sahf
>00532A5A    jne         00532A73
 00532A5C    mov         eax,dword ptr [ebp-10]
 00532A5F    lea         eax,[eax+eax*8]
 00532A62    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532A68    movzx       eax,byte ptr [edx+eax+4]
 00532A6D    cmp         ax,word ptr [ebp-4A]
>00532A71    je          00532AD5
 00532A73    movzx       eax,word ptr [ebp-2A]
 00532A77    mov         dword ptr [ebp-78],eax
 00532A7A    fild        dword ptr [ebp-78]
 00532A7D    add         esp,0FFFFFFF8
 00532A80    fstp        qword ptr [esp]
 00532A83    wait
 00532A84    movzx       eax,word ptr [ebp-2C]
 00532A88    inc         eax
 00532A89    mov         dword ptr [ebp-7C],eax
 00532A8C    fild        dword ptr [ebp-7C]
 00532A8F    add         esp,0FFFFFFF8
 00532A92    fstp        qword ptr [esp]
 00532A95    wait
 00532A96    mov         eax,dword ptr [ebp-38]
 00532A99    push        eax
 00532A9A    mov         ecx,dword ptr [ebp-34]
 00532A9D    mov         edx,dword ptr [ebp-30]
 00532AA0    mov         eax,dword ptr [ebp-4]
 00532AA3    call        005316EC
>00532AA8    jmp         00532AD5
 00532AAA    movzx       eax,word ptr [ebp-2A]
 00532AAE    push        eax
 00532AAF    movzx       eax,word ptr [ebp-2C]
 00532AB3    inc         eax
 00532AB4    push        eax
 00532AB5    mov         eax,dword ptr [ebp-38]
 00532AB8    push        eax
 00532AB9    mov         ecx,dword ptr [ebp-34]
 00532ABC    mov         edx,dword ptr [ebp-30]
 00532ABF    mov         eax,dword ptr [ebp-4]
 00532AC2    call        005315F4
 00532AC7    mov         eax,dword ptr [ebp-40]
 00532ACA    cmp         eax,dword ptr [ebp-38]
>00532ACD    je          00532AD5
 00532ACF    mov         eax,dword ptr [ebp-38]
 00532AD2    mov         dword ptr [ebp-40],eax
 00532AD5    mov         eax,dword ptr [ebp-40]
 00532AD8    cmp         eax,dword ptr [ebp-38]
>00532ADB    jne         00532B1C
 00532ADD    movzx       eax,word ptr [ebp-2A]
 00532AE1    mov         dword ptr [ebp-78],eax
 00532AE4    fild        dword ptr [ebp-78]
 00532AE7    fcomp       dword ptr [ebp-44]
 00532AEA    fnstsw      al
 00532AEC    sahf
>00532AED    jne         00532B1C
 00532AEF    movzx       eax,word ptr [ebp-2C]
 00532AF3    mov         dword ptr [ebp-7C],eax
 00532AF6    fild        dword ptr [ebp-7C]
 00532AF9    fcomp       dword ptr [ebp-48]
 00532AFC    fnstsw      al
 00532AFE    sahf
>00532AFF    jne         00532B1C
 00532B01    mov         eax,dword ptr [ebp-10]
 00532B04    lea         eax,[eax+eax*8]
 00532B07    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532B0D    movzx       eax,byte ptr [edx+eax+4]
 00532B12    cmp         ax,word ptr [ebp-4A]
>00532B16    je          00532BBC
 00532B1C    mov         eax,dword ptr [ebp-4]
 00532B1F    mov         eax,dword ptr [eax+310];TfmViewDef.cbOptimized:TCheckBox
 00532B25    mov         edx,dword ptr [eax]
 00532B27    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00532B2D    test        al,al
>00532B2F    je          00532B68
 00532B31    movzx       eax,word ptr [ebp-2A]
 00532B35    mov         dword ptr [ebp-78],eax
 00532B38    fild        dword ptr [ebp-78]
 00532B3B    add         esp,0FFFFFFF8
 00532B3E    fstp        qword ptr [esp]
 00532B41    wait
 00532B42    movzx       eax,word ptr [ebp-2C]
 00532B46    inc         eax
 00532B47    mov         dword ptr [ebp-7C],eax
 00532B4A    fild        dword ptr [ebp-7C]
 00532B4D    add         esp,0FFFFFFF8
 00532B50    fstp        qword ptr [esp]
 00532B53    wait
 00532B54    mov         eax,dword ptr [ebp-38]
 00532B57    push        eax
 00532B58    mov         ecx,dword ptr [ebp-34]
 00532B5B    mov         edx,dword ptr [ebp-30]
 00532B5E    mov         eax,dword ptr [ebp-4]
 00532B61    call        005316EC
>00532B66    jmp         00532B85
 00532B68    movzx       eax,word ptr [ebp-2A]
 00532B6C    push        eax
 00532B6D    movzx       eax,word ptr [ebp-2C]
 00532B71    inc         eax
 00532B72    push        eax
 00532B73    mov         eax,dword ptr [ebp-38]
 00532B76    push        eax
 00532B77    mov         ecx,dword ptr [ebp-34]
 00532B7A    mov         edx,dword ptr [ebp-30]
 00532B7D    mov         eax,dword ptr [ebp-4]
 00532B80    call        005312F0
 00532B85    mov         eax,dword ptr [ebp-38]
 00532B88    mov         dword ptr [ebp-40],eax
 00532B8B    movzx       eax,word ptr [ebp-2A]
 00532B8F    mov         dword ptr [ebp-78],eax
 00532B92    fild        dword ptr [ebp-78]
 00532B95    fstp        dword ptr [ebp-44]
 00532B98    wait
 00532B99    movzx       eax,word ptr [ebp-2C]
 00532B9D    mov         dword ptr [ebp-78],eax
 00532BA0    fild        dword ptr [ebp-78]
 00532BA3    fstp        dword ptr [ebp-48]
 00532BA6    wait
 00532BA7    mov         eax,dword ptr [ebp-10]
 00532BAA    lea         eax,[eax+eax*8]
 00532BAD    mov         edx,dword ptr ds:[597E84];0x0 gvar_00597E84:?
 00532BB3    movzx       eax,byte ptr [edx+eax+4]
 00532BB8    mov         word ptr [ebp-4A],ax
 00532BBC    inc         dword ptr [ebp-10]
 00532BBF    dec         dword ptr [ebp-54]
>00532BC2    jne         005328DD
 00532BC8    mov         eax,dword ptr [ebp-50]
 00532BCB    mov         edx,dword ptr [eax]
 00532BCD    call        dword ptr [edx+14];TBitmap32.sub_0051E220
 00532BD0    mov         eax,dword ptr [ebp-4]
 00532BD3    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532BD9    mov         edx,dword ptr [eax]
 00532BDB    call        dword ptr [edx+80];TImage32.sub_0048BF68
 00532BE1    xor         eax,eax
 00532BE3    pop         edx
 00532BE4    pop         ecx
 00532BE5    pop         ecx
 00532BE6    mov         dword ptr fs:[eax],edx
 00532BE9    push        532C03
 00532BEE    lea         eax,[ebp-6C]
 00532BF1    mov         edx,2
 00532BF6    call        @LStrArrayClr
 00532BFB    ret
>00532BFC    jmp         @HandleFinally
>00532C01    jmp         00532BEE
 00532C03    pop         ebx
 00532C04    mov         esp,ebp
 00532C06    pop         ebp
 00532C07    ret
*}
end;

//00532C68
procedure TfmViewDef.FormCreate(Sender:TObject);
begin
{*
 00532C68    push        ebp
 00532C69    mov         ebp,esp
 00532C6B    add         esp,0FFFFFFF8
 00532C6E    push        ebx
 00532C6F    mov         dword ptr [ebp-8],edx
 00532C72    mov         dword ptr [ebp-4],eax
 00532C75    mov         eax,dword ptr [ebp-4]
 00532C78    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532C7E    mov         edx,dword ptr [eax+48];TImage32.Width:Integer
 00532C81    mov         eax,dword ptr [ebp-4]
 00532C84    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532C8A    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532C90    call        0051E4BC
 00532C95    mov         eax,dword ptr [ebp-4]
 00532C98    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532C9E    mov         edx,dword ptr [eax+4C];TImage32.Height:Integer
 00532CA1    mov         eax,dword ptr [ebp-4]
 00532CA4    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532CAA    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532CB0    call        0051E418
 00532CB5    mov         eax,dword ptr [ebp-4]
 00532CB8    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532CBE    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532CC4    mov         edx,0FF000000
 00532CC9    call        0051E97C
 00532CCE    mov         ecx,0FF000000
 00532CD3    xor         edx,edx
 00532CD5    mov         eax,dword ptr [ebp-4]
 00532CD8    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532CDE    mov         ebx,dword ptr [eax]
 00532CE0    call        dword ptr [ebx+154];TImage32.sub_00529628
 00532CE6    pop         ebx
 00532CE7    pop         ecx
 00532CE8    pop         ecx
 00532CE9    pop         ebp
 00532CEA    ret
*}
end;

//00532CEC
procedure TfmViewDef.FormCanResize(Sender:TObject; var NewWidth:Integer; var NewHeight:Integer; var Resize:Boolean);
begin
{*
 00532CEC    push        ebp
 00532CED    mov         ebp,esp
 00532CEF    add         esp,0FFFFFFF4
 00532CF2    mov         dword ptr [ebp-0C],ecx
 00532CF5    mov         dword ptr [ebp-8],edx
 00532CF8    mov         dword ptr [ebp-4],eax
 00532CFB    mov         eax,dword ptr [ebp-4]
 00532CFE    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D04    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532D0A    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00532D0D    mov         edx,dword ptr [ebp-4]
 00532D10    mov         edx,dword ptr [edx+2F8];TfmViewDef.Im32:TImage32
 00532D16    cmp         eax,dword ptr [edx+48];TImage32.Width:Integer
>00532D19    jne         00532D3B
 00532D1B    mov         eax,dword ptr [ebp-4]
 00532D1E    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D24    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532D2A    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00532D2D    mov         edx,dword ptr [ebp-4]
 00532D30    mov         edx,dword ptr [edx+2F8];TfmViewDef.Im32:TImage32
 00532D36    cmp         eax,dword ptr [edx+4C];TImage32.Height:Integer
>00532D39    je          00532DB2
 00532D3B    mov         eax,dword ptr [ebp-4]
 00532D3E    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D44    mov         edx,dword ptr [eax+48];TImage32.Width:Integer
 00532D47    mov         eax,dword ptr [ebp-4]
 00532D4A    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D50    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532D56    call        0051E4BC
 00532D5B    mov         eax,dword ptr [ebp-4]
 00532D5E    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D64    mov         edx,dword ptr [eax+4C];TImage32.Height:Integer
 00532D67    mov         eax,dword ptr [ebp-4]
 00532D6A    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D70    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532D76    call        0051E418
 00532D7B    mov         eax,dword ptr [ebp-4]
 00532D7E    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D84    mov         eax,dword ptr [eax+48];TImage32.Width:Integer
 00532D87    push        eax
 00532D88    mov         eax,dword ptr [ebp-4]
 00532D8B    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532D91    mov         eax,dword ptr [eax+4C];TImage32.Height:Integer
 00532D94    push        eax
 00532D95    push        0FF000000
 00532D9A    mov         eax,dword ptr [ebp-4]
 00532D9D    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532DA3    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532DA9    xor         ecx,ecx
 00532DAB    xor         edx,edx
 00532DAD    call        0052203C
 00532DB2    mov         esp,ebp
 00532DB4    pop         ebp
 00532DB5    ret         8
*}
end;

//00532DB8
procedure TfmViewDef.Button2Click(Sender:TObject);
begin
{*
 00532DB8    push        ebp
 00532DB9    mov         ebp,esp
 00532DBB    add         esp,0FFFFFFF8
 00532DBE    mov         dword ptr [ebp-8],edx
 00532DC1    mov         dword ptr [ebp-4],eax
 00532DC4    mov         eax,dword ptr [ebp-4]
 00532DC7    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532DCD    mov         edx,dword ptr [eax+48];TImage32.Width:Integer
 00532DD0    mov         eax,dword ptr [ebp-4]
 00532DD3    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532DD9    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532DDF    call        0051E4BC
 00532DE4    mov         eax,dword ptr [ebp-4]
 00532DE7    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532DED    mov         edx,dword ptr [eax+4C];TImage32.Height:Integer
 00532DF0    mov         eax,dword ptr [ebp-4]
 00532DF3    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532DF9    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532DFF    call        0051E418
 00532E04    mov         eax,dword ptr [ebp-4]
 00532E07    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532E0D    mov         eax,dword ptr [eax+48];TImage32.Width:Integer
 00532E10    push        eax
 00532E11    mov         eax,dword ptr [ebp-4]
 00532E14    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532E1A    mov         eax,dword ptr [eax+4C];TImage32.Height:Integer
 00532E1D    push        eax
 00532E1E    push        0FF000000
 00532E23    mov         eax,dword ptr [ebp-4]
 00532E26    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532E2C    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532E32    xor         ecx,ecx
 00532E34    xor         edx,edx
 00532E36    call        0052203C
 00532E3B    pop         ecx
 00532E3C    pop         ecx
 00532E3D    pop         ebp
 00532E3E    ret
*}
end;

//00532E40
procedure TfmViewDef.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00532E40    push        ebp
 00532E41    mov         ebp,esp
 00532E43    add         esp,0FFFFFFF4
 00532E46    mov         dword ptr [ebp-8],ecx
 00532E49    mov         dword ptr [ebp-0C],edx
 00532E4C    mov         dword ptr [ebp-4],eax
 00532E4F    push        0
 00532E51    mov         eax,597E84;gvar_00597E84:?
 00532E56    mov         ecx,1
 00532E5B    mov         edx,dword ptr ds:[531190];_DynArr_120_3
 00532E61    call        @DynArraySetLength
 00532E66    add         esp,4
 00532E69    mov         eax,597E84;gvar_00597E84:?
 00532E6E    mov         edx,dword ptr ds:[531190];_DynArr_120_3
 00532E74    call        @DynArrayClear
 00532E79    mov         eax,dword ptr [ebp-8]
 00532E7C    mov         byte ptr [eax],2
 00532E7F    xor         eax,eax
 00532E81    mov         [0056D500],eax;gvar_0056D500:TfmViewDef
 00532E86    mov         esp,ebp
 00532E88    pop         ebp
 00532E89    ret
*}
end;

//00532E8C
procedure TfmViewDef.MenuItem3Click(Sender:TObject);
begin
{*
 00532E8C    push        ebp
 00532E8D    mov         ebp,esp
 00532E8F    add         esp,0FFFFFFF4
 00532E92    xor         ecx,ecx
 00532E94    mov         dword ptr [ebp-0C],ecx
 00532E97    mov         dword ptr [ebp-8],edx
 00532E9A    mov         dword ptr [ebp-4],eax
 00532E9D    xor         eax,eax
 00532E9F    push        ebp
 00532EA0    push        532F1D
 00532EA5    push        dword ptr fs:[eax]
 00532EA8    mov         dword ptr fs:[eax],esp
 00532EAB    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532EB0    mov         eax,dword ptr [eax]
 00532EB2    mov         eax,dword ptr [eax+364]
 00532EB8    add         eax,78
 00532EBB    mov         edx,532F30;'Defects.bmp'
 00532EC0    call        @LStrAsg
 00532EC5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532ECA    mov         eax,dword ptr [eax]
 00532ECC    mov         eax,dword ptr [eax+364]
 00532ED2    mov         edx,dword ptr [eax]
 00532ED4    call        dword ptr [edx+3C]
 00532ED7    test        al,al
>00532ED9    je          00532F07
 00532EDB    lea         edx,[ebp-0C]
 00532EDE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00532EE3    mov         eax,dword ptr [eax]
 00532EE5    mov         eax,dword ptr [eax+364]
 00532EEB    call        TOpenDialog.GetFileName
 00532EF0    mov         edx,dword ptr [ebp-0C]
 00532EF3    mov         eax,dword ptr [ebp-4]
 00532EF6    mov         eax,dword ptr [eax+2F8];TfmViewDef.Im32:TImage32
 00532EFC    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00532F02    call        0052250C
 00532F07    xor         eax,eax
 00532F09    pop         edx
 00532F0A    pop         ecx
 00532F0B    pop         ecx
 00532F0C    mov         dword ptr fs:[eax],edx
 00532F0F    push        532F24
 00532F14    lea         eax,[ebp-0C]
 00532F17    call        @LStrClr
 00532F1C    ret
>00532F1D    jmp         @HandleFinally
>00532F22    jmp         00532F14
 00532F24    mov         esp,ebp
 00532F26    pop         ebp
 00532F27    ret
*}
end;

//00532F3C
procedure TfmViewDef.FormShow(Sender:TObject);
begin
{*
 00532F3C    push        ebp
 00532F3D    mov         ebp,esp
 00532F3F    add         esp,0FFFFFFF0
 00532F42    xor         ecx,ecx
 00532F44    mov         dword ptr [ebp-0C],ecx
 00532F47    mov         dword ptr [ebp-10],ecx
 00532F4A    mov         dword ptr [ebp-8],edx
 00532F4D    mov         dword ptr [ebp-4],eax
 00532F50    xor         eax,eax
 00532F52    push        ebp
 00532F53    push        532FB5
 00532F58    push        dword ptr fs:[eax]
 00532F5B    mov         dword ptr fs:[eax],esp
 00532F5E    lea         edx,[ebp-10]
 00532F61    mov         eax,[0056D500];0x0 gvar_0056D500:TfmViewDef
 00532F66    call        TPanel.GetCaption
 00532F6B    push        dword ptr [ebp-10]
 00532F6E    push        532FC8;' '
 00532F73    mov         eax,[0056E284];^gvar_0056DF34
 00532F78    mov         eax,dword ptr [eax]
 00532F7A    push        dword ptr [eax+420]
 00532F80    lea         eax,[ebp-0C]
 00532F83    mov         edx,3
 00532F88    call        @LStrCatN
 00532F8D    mov         edx,dword ptr [ebp-0C]
 00532F90    mov         eax,[0056D500];0x0 gvar_0056D500:TfmViewDef
 00532F95    call        TPanel.SetCaption
 00532F9A    xor         eax,eax
 00532F9C    pop         edx
 00532F9D    pop         ecx
 00532F9E    pop         ecx
 00532F9F    mov         dword ptr fs:[eax],edx
 00532FA2    push        532FBC
 00532FA7    lea         eax,[ebp-10]
 00532FAA    mov         edx,2
 00532FAF    call        @LStrArrayClr
 00532FB4    ret
>00532FB5    jmp         @HandleFinally
>00532FBA    jmp         00532FA7
 00532FBC    mov         esp,ebp
 00532FBE    pop         ebp
 00532FBF    ret
*}
end;

Initialization
Finalization
//00532FCC
{*
 00532FCC    push        ebp
 00532FCD    mov         ebp,esp
 00532FCF    xor         eax,eax
 00532FD1    push        ebp
 00532FD2    push        533003
 00532FD7    push        dword ptr fs:[eax]
 00532FDA    mov         dword ptr fs:[eax],esp
 00532FDD    inc         dword ptr ds:[597E80]
>00532FE3    jne         00532FF5
 00532FE5    mov         eax,597E84;gvar_00597E84:?
 00532FEA    mov         edx,dword ptr ds:[531190];_DynArr_120_3
 00532FF0    call        @DynArrayClear
 00532FF5    xor         eax,eax
 00532FF7    pop         edx
 00532FF8    pop         ecx
 00532FF9    pop         ecx
 00532FFA    mov         dword ptr fs:[eax],edx
 00532FFD    push        53300A
 00533002    ret
>00533003    jmp         @HandleFinally
>00533008    jmp         00533002
 0053300A    pop         ebp
 0053300B    ret
*}
end.