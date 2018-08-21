.class public final Lcom/alipay/edge/rpc/gen/EdgeRequest;
.super Lcom/squareup/wire/Message;
.source "EdgeRequest.java"


# static fields
.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_APDIDTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_APPNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_APPVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_BRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_CREDIBLETIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_EDGESTATUS:Lcom/alipay/edge/rpc/gen/EdgeStatus;

.field public static final DEFAULT_EXTDATA:Ljava/lang/String; = ""

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_OSTYPE:Lcom/alipay/edge/rpc/gen/OsType;

.field public static final DEFAULT_OSVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_POLICYPACKVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SDKVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SECUREDATA:Lokio/ByteString;

.field public static final TAG_APDID:I = 0x9

.field public static final TAG_APDIDTOKEN:I = 0xa

.field public static final TAG_APPNAME:I = 0x1

.field public static final TAG_APPVERSION:I = 0x2

.field public static final TAG_BRAND:I = 0x6

.field public static final TAG_CREDIBLETIMESTAMP:I = 0xb

.field public static final TAG_EDGESTATUS:I = 0x8

.field public static final TAG_EXTDATA:I = 0xe

.field public static final TAG_MODEL:I = 0x7

.field public static final TAG_OSTYPE:I = 0x4

.field public static final TAG_OSVERSION:I = 0x5

.field public static final TAG_POLICYPACKVERSION:I = 0xc

.field public static final TAG_SDKVERSION:I = 0x3

.field public static final TAG_SECUREDATA:I = 0xd


# instance fields
.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public apdidToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public credibleTimestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osType:Lcom/alipay/edge/rpc/gen/OsType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public policyPackVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public secureData:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alipay/edge/rpc/gen/OsType;->ANDROID:Lcom/alipay/edge/rpc/gen/OsType;

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->DEFAULT_OSTYPE:Lcom/alipay/edge/rpc/gen/OsType;

    sget-object v0, Lcom/alipay/edge/rpc/gen/EdgeStatus;->DISABLED:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->DEFAULT_EDGESTATUS:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->DEFAULT_CREDIBLETIMESTAMP:Ljava/lang/Integer;

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->DEFAULT_SECUREDATA:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/edge/rpc/gen/EdgeRequest;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    iget-object v0, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/edge/rpc/gen/EdgeRequest;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/edge/rpc/gen/EdgeRequest;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/alipay/edge/rpc/gen/OsType;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Lcom/alipay/edge/rpc/gen/EdgeStatus;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Lokio/ByteString;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osType:Lcom/alipay/edge/rpc/gen/OsType;

    invoke-virtual {v0}, Lcom/alipay/edge/rpc/gen/OsType;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->edgeStatus:Lcom/alipay/edge/rpc/gen/EdgeStatus;

    invoke-virtual {v0}, Lcom/alipay/edge/rpc/gen/EdgeStatus;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->apdidToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->credibleTimestamp:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->policyPackVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->secureData:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->extData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/edge/rpc/gen/EdgeRequest;->hashCode:I

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

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_9

    :cond_c
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_b

    :cond_e
    move v0, v1

    goto :goto_c
.end method
