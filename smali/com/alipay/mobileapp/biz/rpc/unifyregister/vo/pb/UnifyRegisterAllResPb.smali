.class public final Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;
.super Lcom/squareup/wire/Message;
.source "UnifyRegisterAllResPb.java"


# static fields
.field public static final DEFAULT_DIRECTLOGIN:Ljava/lang/Boolean;

.field public static final DEFAULT_EXISTUSERHASQUERYPASSWORD:Ljava/lang/Boolean;

.field public static final DEFAULT_EXTINFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LOGINTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILENO:Ljava/lang/String; = ""

.field public static final DEFAULT_NEWUSERHASQUERYPASSWORD:Ljava/lang/Boolean;

.field public static final DEFAULT_REMOVEPAYMENTPASS:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULTSTATUS:Ljava/lang/Long;

.field public static final DEFAULT_SECURITYID:Ljava/lang/String; = ""

.field public static final DEFAULT_SIMPLEPASSWORD:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final TAG_DIRECTLOGIN:I = 0x7

.field public static final TAG_EXISTUSERHASQUERYPASSWORD:I = 0xb

.field public static final TAG_EXISTUSERINFO:I = 0x8

.field public static final TAG_EXTINFOS:I = 0xd

.field public static final TAG_LOGINTOKEN:I = 0x9

.field public static final TAG_MEMO:I = 0x4

.field public static final TAG_MOBILENO:I = 0x3

.field public static final TAG_NEWUSERHASQUERYPASSWORD:I = 0xc

.field public static final TAG_REMOVEPAYMENTPASS:I = 0xa

.field public static final TAG_RESULTSTATUS:I = 0x1

.field public static final TAG_SECURITYID:I = 0x6

.field public static final TAG_SIMPLEPASSWORD:I = 0x5

.field public static final TAG_TOKEN:I = 0x2


# instance fields
.field public directLogin:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public existUserHasQueryPassword:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public extInfos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;",
            ">;"
        }
    .end annotation
.end field

.field public loginToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileNo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public newUserHasQueryPassword:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public removePaymentPass:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultStatus:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public securityId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public simplePassword:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_RESULTSTATUS:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_DIRECTLOGIN:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_REMOVEPAYMENTPASS:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_EXISTUSERHASQUERYPASSWORD:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_NEWUSERHASQUERYPASSWORD:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->DEFAULT_EXTINFOS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_7
    check-cast p2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->simplePassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->securityId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->directLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->extInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->hashCode:I

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

    goto :goto_4

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
    const/4 v0, 0x1

    goto :goto_b
.end method
