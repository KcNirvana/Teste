.class public final Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;
.super Lcom/squareup/wire/Message;
.source "MspReqV2.java"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NM:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NSP:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_DECAY:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTERNAL_INFO:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_HASALIPAY:Ljava/lang/Integer;

.field public static final DEFAULT_LOCLOGINONCE:Ljava/lang/Integer;

.field public static final DEFAULT_SECDATA:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBUA1:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBUA2:Ljava/lang/String; = ""

.field public static final DEFAULT_SUBUA3:Ljava/lang/String; = ""

.field public static final DEFAULT_SYNCH:Ljava/lang/String; = ""

.field public static final DEFAULT_TRDFROM:Ljava/lang/Integer;

.field public static final DEFAULT_TRID:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field public static final TAG_ACTION:I = 0x3

.field public static final TAG_API_NM:I = 0x2

.field public static final TAG_API_NSP:I = 0x1

.field public static final TAG_APP_KEY:I = 0xe

.field public static final TAG_DECAY:I = 0x5

.field public static final TAG_EXTERNAL_INFO:I = 0x6

.field public static final TAG_EXTINFO:I = 0x12

.field public static final TAG_HASALIPAY:I = 0xd

.field public static final TAG_LOCLOGINONCE:I = 0xc

.field public static final TAG_SECDATA:I = 0x7

.field public static final TAG_SESSION:I = 0x9

.field public static final TAG_SUBUA1:I = 0xf

.field public static final TAG_SUBUA2:I = 0x10

.field public static final TAG_SUBUA3:I = 0x11

.field public static final TAG_SYNCH:I = 0x4

.field public static final TAG_TRDFROM:I = 0xb

.field public static final TAG_TRID:I = 0xa

.field public static final TAG_USER_ID:I = 0x8


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public api_nm:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public api_nsp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public app_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public decay:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public external_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extinfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public hasAlipay:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public locLoginOnce:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public secData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public subua1:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public subua2:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public subua3:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public synch:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public trdfrom:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public trid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->DEFAULT_TRDFROM:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->DEFAULT_LOCLOGINONCE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->DEFAULT_HASALIPAY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    goto :goto_0

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->api_nm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->synch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->decay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->external_info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->secData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->session:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->trdfrom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->locLoginOnce:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hasAlipay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->app_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->subua3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->extinfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/pb/rpc/v2/MspReqV2;->hashCode:I

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

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_b

    :cond_e
    move v0, v1

    goto :goto_c

    :cond_f
    move v0, v1

    goto :goto_d

    :cond_10
    move v0, v1

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_f

    :cond_12
    move v0, v1

    goto :goto_10
.end method
