.class public final Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;
.super Lcom/squareup/wire/Message;
.source "UnifyLoginReqPb.java"


# static fields
.field public static final DEFAULT_ACCESSPOINT:Ljava/lang/String; = ""

.field public static final DEFAULT_ALIPAYENVJSON:Ljava/lang/String; = ""

.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_APPDATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_APPKEY:Ljava/lang/String; = ""

.field public static final DEFAULT_CELLID:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_CHECKCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_CHECKCODEID:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTPOSTION:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICEID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTERNPARAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_ISPRISONBREAK:Ljava/lang/String; = ""

.field public static final DEFAULT_LACID:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINPWD:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINTYPE:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

.field public static final DEFAULT_MOBILEBRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILEMODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SCENE:Ljava/lang/String; = ""

.field public static final DEFAULT_SCREENHIGH:Ljava/lang/Integer;

.field public static final DEFAULT_SCREENWIDTH:Ljava/lang/Integer;

.field public static final DEFAULT_SDKVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SIGNDATA:Ljava/lang/String; = ""

.field public static final DEFAULT_SSOTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEMTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEMVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TAOBAOENVJSON:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_TTID:Ljava/lang/String; = ""

.field public static final DEFAULT_UMIDTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_USERAGENT:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final DEFAULT_VALIDATETPYE:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

.field public static final DEFAULT_WIFIMAC:Ljava/lang/String; = ""

.field public static final DEFAULT_WIFINODENAME:Ljava/lang/String; = ""

.field public static final TAG_ACCESSPOINT:I = 0x1c

.field public static final TAG_ALIPAYENVJSON:I = 0x25

.field public static final TAG_APDID:I = 0xc

.field public static final TAG_APPDATA:I = 0x29

.field public static final TAG_APPID:I = 0x2

.field public static final TAG_APPKEY:I = 0x3

.field public static final TAG_CELLID:I = 0x23

.field public static final TAG_CHANNEL:I = 0x15

.field public static final TAG_CHECKCODE:I = 0xb

.field public static final TAG_CHECKCODEID:I = 0xa

.field public static final TAG_CLIENTPOSTION:I = 0x1d

.field public static final TAG_CLIENTTYPE:I = 0x16

.field public static final TAG_DEVICEID:I = 0x28

.field public static final TAG_EXTERNPARAMS:I = 0x2a

.field public static final TAG_IMEI:I = 0x14

.field public static final TAG_IMSI:I = 0x13

.field public static final TAG_ISPRISONBREAK:I = 0x24

.field public static final TAG_LACID:I = 0x22

.field public static final TAG_LOGINID:I = 0x1

.field public static final TAG_LOGINPWD:I = 0x7

.field public static final TAG_LOGINTYPE:I = 0x4

.field public static final TAG_MOBILEBRAND:I = 0x1a

.field public static final TAG_MOBILEMODEL:I = 0x1b

.field public static final TAG_PRODUCTID:I = 0x10

.field public static final TAG_PRODUCTVERSION:I = 0x11

.field public static final TAG_SCENE:I = 0x6

.field public static final TAG_SCREENHIGH:I = 0x19

.field public static final TAG_SCREENWIDTH:I = 0x18

.field public static final TAG_SDKVERSION:I = 0x2b

.field public static final TAG_SIGNDATA:I = 0x9

.field public static final TAG_SSOTOKEN:I = 0x8

.field public static final TAG_SYSTEMTYPE:I = 0x1e

.field public static final TAG_SYSTEMVERSION:I = 0x1f

.field public static final TAG_TAOBAOENVJSON:I = 0x26

.field public static final TAG_TID:I = 0xe

.field public static final TAG_TOKEN:I = 0x27

.field public static final TAG_TTID:I = 0xf

.field public static final TAG_UMIDTOKEN:I = 0x12

.field public static final TAG_USERAGENT:I = 0x17

.field public static final TAG_UTDID:I = 0xd

.field public static final TAG_VALIDATETPYE:I = 0x5

.field public static final TAG_WIFIMAC:I = 0x20

.field public static final TAG_WIFINODENAME:I = 0x21


# instance fields
.field public accessPoint:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public alipayEnvJson:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x25
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x29
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;"
        }
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appKey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cellId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x23
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public checkCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public checkCodeId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientPostion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x28
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public externParams:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isPrisonBreak:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x24
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lacId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x22
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginPwd:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileBrand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileModel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public scene:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public screenHigh:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public screenWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public signData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ssoToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public systemType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public systemVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public taobaoEnvJson:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x26
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x27
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ttid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public umidToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userAgent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiMac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiNodeName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x21
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_LOGINTYPE:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_VALIDATETPYE:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_SCREENWIDTH:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_SCREENHIGH:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_APPDATA:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->DEFAULT_EXTERNPARAMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_18
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_19
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_20
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_21
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_22
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_23
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_24
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_25
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_26
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_27
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_28
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_29
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_2a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

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
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_21
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_23
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_25
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_27
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_28
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->hashCode:I

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_7

    :cond_b
    move v0, v1

    goto/16 :goto_8

    :cond_c
    move v0, v1

    goto/16 :goto_9

    :cond_d
    move v0, v1

    goto/16 :goto_a

    :cond_e
    move v0, v1

    goto/16 :goto_b

    :cond_f
    move v0, v1

    goto/16 :goto_c

    :cond_10
    move v0, v1

    goto/16 :goto_d

    :cond_11
    move v0, v1

    goto/16 :goto_e

    :cond_12
    move v0, v1

    goto/16 :goto_f

    :cond_13
    move v0, v1

    goto/16 :goto_10

    :cond_14
    move v0, v1

    goto/16 :goto_11

    :cond_15
    move v0, v1

    goto/16 :goto_12

    :cond_16
    move v0, v1

    goto/16 :goto_13

    :cond_17
    move v0, v1

    goto/16 :goto_14

    :cond_18
    move v0, v1

    goto/16 :goto_15

    :cond_19
    move v0, v1

    goto/16 :goto_16

    :cond_1a
    move v0, v1

    goto/16 :goto_17

    :cond_1b
    move v0, v1

    goto/16 :goto_18

    :cond_1c
    move v0, v1

    goto/16 :goto_19

    :cond_1d
    move v0, v1

    goto/16 :goto_1a

    :cond_1e
    move v0, v1

    goto/16 :goto_1b

    :cond_1f
    move v0, v1

    goto/16 :goto_1c

    :cond_20
    move v0, v1

    goto/16 :goto_1d

    :cond_21
    move v0, v1

    goto/16 :goto_1e

    :cond_22
    move v0, v1

    goto/16 :goto_1f

    :cond_23
    move v0, v1

    goto/16 :goto_20

    :cond_24
    move v0, v1

    goto/16 :goto_21

    :cond_25
    move v0, v1

    goto/16 :goto_22

    :cond_26
    move v0, v1

    goto/16 :goto_23

    :cond_27
    move v0, v1

    goto/16 :goto_24

    :cond_28
    move v0, v1

    goto/16 :goto_25

    :cond_29
    move v0, v1

    goto/16 :goto_26

    :cond_2a
    move v0, v1

    goto/16 :goto_27

    :cond_2b
    move v0, v2

    goto/16 :goto_28
.end method
