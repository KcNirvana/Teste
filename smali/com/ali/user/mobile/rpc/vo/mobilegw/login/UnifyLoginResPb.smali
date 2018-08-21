.class public final Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;
.super Lcom/squareup/wire/Message;
.source "UnifyLoginResPb.java"


# static fields
.field public static final DEFAULT_ALIPAYLOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_CHECKCODEID:Ljava/lang/String; = ""

.field public static final DEFAULT_CHECKCODEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTMAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_H5URL:Ljava/lang/String; = ""

.field public static final DEFAULT_HEADIMG:Ljava/lang/String; = ""

.field public static final DEFAULT_HID:Ljava/lang/Long;

.field public static final DEFAULT_MOBILENO:Ljava/lang/String; = ""

.field public static final DEFAULT_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTDATA:Ljava/lang/String; = ""

.field public static final DEFAULT_SCENE:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSIONID:Ljava/lang/String; = ""

.field public static final DEFAULT_SIGNDATA:Ljava/lang/String; = ""

.field public static final DEFAULT_SSOTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_TAOBAONICK:Ljava/lang/String; = ""

.field public static final DEFAULT_TAOBAOUSERID:Ljava/lang/Long;

.field public static final DEFAULT_TBLOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final TAG_ALIPAYLOGINID:I = 0xe

.field public static final TAG_CHECKCODEID:I = 0x12

.field public static final TAG_CHECKCODEURL:I = 0x13

.field public static final TAG_CODE:I = 0x2

.field public static final TAG_EXTMAP:I = 0x14

.field public static final TAG_H5URL:I = 0x11

.field public static final TAG_HEADIMG:I = 0xd

.field public static final TAG_HID:I = 0x9

.field public static final TAG_MOBILENO:I = 0x15

.field public static final TAG_MSG:I = 0x4

.field public static final TAG_RESULTDATA:I = 0x10

.field public static final TAG_SCENE:I = 0x8

.field public static final TAG_SESSIONID:I = 0x3

.field public static final TAG_SIGNDATA:I = 0x6

.field public static final TAG_SSOTOKEN:I = 0x7

.field public static final TAG_SUCCESS:I = 0x1

.field public static final TAG_TAOBAONICK:I = 0xc

.field public static final TAG_TAOBAOUSERID:I = 0xb

.field public static final TAG_TBLOGINID:I = 0xf

.field public static final TAG_TOKEN:I = 0x5

.field public static final TAG_USERID:I = 0xa


# instance fields
.field public alipayLoginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public checkCodeId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public checkCodeUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extMap:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x14
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

.field public h5Url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public headImg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public hid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileNo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public scene:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public signData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ssoToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public taobaoNick:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public taobaoUserId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tbLoginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->DEFAULT_HID:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->DEFAULT_TAOBAOUSERID:Ljava/lang/Long;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->DEFAULT_EXTMAP:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    goto :goto_0

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hashCode:I

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

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_f

    :cond_12
    move v0, v1

    goto :goto_10

    :cond_13
    move v0, v1

    goto :goto_11

    :cond_14
    move v0, v1

    goto :goto_12

    :cond_15
    const/4 v0, 0x1

    goto :goto_13
.end method
