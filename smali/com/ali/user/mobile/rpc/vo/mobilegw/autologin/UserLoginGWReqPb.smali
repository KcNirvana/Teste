.class public final Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;
.super Lcom/squareup/wire/Message;
.source "UserLoginGWReqPb.java"


# static fields
.field public static final TAG_CELLID:I = 0x1b

.field public static final TAG_CHANNELS:I = 0xc

.field public static final TAG_CLIENTDIGEST:I = 0xd

.field public static final TAG_CLIENTID:I = 0x12

.field public static final TAG_DEVICETOKEN:I = 0xf

.field public static final TAG_EXTERNPARAMS:I = 0x20

.field public static final TAG_LOCATION:I = 0x1c

.field public static final TAG_LOGINCHECKCODE:I = 0x5

.field public static final TAG_LOGINID:I = 0x1

.field public static final TAG_LOGINPASSWORD:I = 0x4

.field public static final TAG_LOGINTYPE:I = 0x2

.field public static final TAG_LOGINWTHPWD:I = 0x3

.field public static final TAG_MAC:I = 0x1a

.field public static final TAG_MSPCLIENTKEY:I = 0x18

.field public static final TAG_MSPIMEI:I = 0x17

.field public static final TAG_MSPIMSI:I = 0x16

.field public static final TAG_MSPTID:I = 0x15

.field public static final TAG_OPERATORTYPE:I = 0x1f

.field public static final TAG_OSVERSION:I = 0xa

.field public static final TAG_PRODUCTID:I = 0x8

.field public static final TAG_PRODUCTVERSION:I = 0x9

.field public static final TAG_SCREENHIGH:I = 0x11

.field public static final TAG_SCREENWIDTH:I = 0x10

.field public static final TAG_SECTS:I = 0xe

.field public static final TAG_SOURCEID:I = 0x19

.field public static final TAG_TBCHECKCODE:I = 0x7

.field public static final TAG_TBCHECKCODEID:I = 0x6

.field public static final TAG_USERAGENT:I = 0xb

.field public static final TAG_VIMEI:I = 0x1e

.field public static final TAG_VIMSI:I = 0x1d

.field public static final TAG_WALLETCLIENTKEY:I = 0x14

.field public static final TAG_WALLETTID:I = 0x13


# instance fields
.field public cellId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channels:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientDigest:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public deviceToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public externParams:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x20
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginCheckCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginPassword:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mspClientKey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mspImei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mspImsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mspTid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public operatorType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public screenHigh:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public screenWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public secTS:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tbCheckCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tbCheckCodeId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userAgent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public vimei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public vimsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public walletClientKey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public walletTid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    goto/16 :goto_0
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
    instance-of v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1f
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

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
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->hashCode:I

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

    goto/16 :goto_17

    :cond_1a
    move v0, v1

    goto/16 :goto_18

    :cond_1b
    move v0, v1

    goto/16 :goto_19

    :cond_1c
    move v0, v1

    goto/16 :goto_1a

    :cond_1d
    move v0, v1

    goto/16 :goto_1b

    :cond_1e
    move v0, v1

    goto :goto_1c

    :cond_1f
    move v0, v1

    goto :goto_1d

    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method
