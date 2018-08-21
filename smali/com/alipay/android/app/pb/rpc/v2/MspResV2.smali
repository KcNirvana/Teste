.class public final Lcom/alipay/android/app/pb/rpc/v2/MspResV2;
.super Lcom/squareup/wire/Message;
.source "MspResV2.java"


# static fields
.field public static final DEFAULT_AJAX:Ljava/lang/Integer;

.field public static final DEFAULT_CLIENT_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_DG:Ljava/lang/Integer;

.field public static final DEFAULT_END_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_ERR_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_IAJAX:Ljava/lang/Integer;

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_NOBACK:Ljava/lang/Integer;

.field public static final DEFAULT_ONLOAD:Ljava/lang/String; = ""

.field public static final DEFAULT_PAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_PKEY:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULT:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SYNCH:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_TPL:Ljava/lang/String; = ""

.field public static final DEFAULT_TPLID:Ljava/lang/String; = ""

.field public static final DEFAULT_TRADE_NO:Ljava/lang/String; = ""

.field public static final DEFAULT_UAC:Ljava/lang/Integer;

.field public static final DEFAULT_UNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_UURL:Ljava/lang/String; = ""

.field public static final DEFAULT_WND:Ljava/lang/String; = ""

.field public static final DEFAULT_WPAGE:Ljava/lang/Integer;

.field public static final TAG_AJAX:I = 0x17

.field public static final TAG_CLIENT_KEY:I = 0x16

.field public static final TAG_CODE:I = 0x1

.field public static final TAG_DATA:I = 0xe

.field public static final TAG_DG:I = 0x11

.field public static final TAG_END_CODE:I = 0x5

.field public static final TAG_ERR_MSG:I = 0x2

.field public static final TAG_EXTINFO:I = 0x1c

.field public static final TAG_IAJAX:I = 0x18

.field public static final TAG_MEMO:I = 0x3

.field public static final TAG_NOBACK:I = 0x9

.field public static final TAG_ONLOAD:I = 0x19

.field public static final TAG_PAGE:I = 0x13

.field public static final TAG_PKEY:I = 0x1b

.field public static final TAG_RESULT:I = 0x4

.field public static final TAG_SESSION:I = 0x14

.field public static final TAG_SYNCH:I = 0x6

.field public static final TAG_TID:I = 0x15

.field public static final TAG_TIME:I = 0xf

.field public static final TAG_TPL:I = 0xd

.field public static final TAG_TPLID:I = 0xc

.field public static final TAG_TRADE_NO:I = 0x7

.field public static final TAG_UAC:I = 0x10

.field public static final TAG_UNAME:I = 0xa

.field public static final TAG_USER_ID:I = 0x1a

.field public static final TAG_UURL:I = 0xb

.field public static final TAG_WND:I = 0x12

.field public static final TAG_WPAGE:I = 0x8


# instance fields
.field public ajax:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public client_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public dg:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public end_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public err_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public iajax:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public noBack:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public onload:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public page:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pkey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public result:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public synch:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tpl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tplid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public trade_no:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public uac:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public uname:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public uurl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wnd:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wpage:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_WPAGE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_NOBACK:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_TIME:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_UAC:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_DG:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_AJAX:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->DEFAULT_IAJAX:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v2/MspResV2;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v2/MspResV2;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_17
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_18
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->err_msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->end_code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->synch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->trade_no:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->noBack:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uurl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tplid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tpl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->uac:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->dg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->wnd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->page:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->session:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->tid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->client_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->ajax:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->iajax:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->onload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->pkey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspResV2;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_a

    :cond_d
    move v0, v1

    goto/16 :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_c

    :cond_f
    move v0, v1

    goto/16 :goto_d

    :cond_10
    move v0, v1

    goto/16 :goto_e

    :cond_11
    move v0, v1

    goto/16 :goto_f

    :cond_12
    move v0, v1

    goto/16 :goto_10

    :cond_13
    move v0, v1

    goto/16 :goto_11

    :cond_14
    move v0, v1

    goto/16 :goto_12

    :cond_15
    move v0, v1

    goto/16 :goto_13

    :cond_16
    move v0, v1

    goto/16 :goto_14

    :cond_17
    move v0, v1

    goto/16 :goto_15

    :cond_18
    move v0, v1

    goto/16 :goto_16

    :cond_19
    move v0, v1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_19

    :cond_1c
    move v0, v1

    goto :goto_1a
.end method
