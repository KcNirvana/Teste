.class public final Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;
.super Lcom/squareup/wire/Message;
.source "SupplyLoginPwdReqPb.java"


# static fields
.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVKEYSET:Ljava/lang/String; = ""

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

.field public static final DEFAULT_LOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_QUERYPASSWORD:Ljava/lang/String; = ""

.field public static final DEFAULT_SCENE:Ljava/lang/String; = ""

.field public static final DEFAULT_SDKVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_UMIDTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final TAG_APDID:I = 0x7

.field public static final TAG_DEVKEYSET:I = 0xb

.field public static final TAG_EXTERNPARAMS:I = 0xa

.field public static final TAG_LOGINID:I = 0x1

.field public static final TAG_PRODUCTID:I = 0x4

.field public static final TAG_PRODUCTVERSION:I = 0x5

.field public static final TAG_QUERYPASSWORD:I = 0x2

.field public static final TAG_SCENE:I = 0x9

.field public static final TAG_SDKVERSION:I = 0x3

.field public static final TAG_TID:I = 0xc

.field public static final TAG_UMIDTOKEN:I = 0x6

.field public static final TAG_UTDID:I = 0x8


# instance fields
.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public devKeySet:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public externParams:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
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

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public queryPassword:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public scene:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public umidtoken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->DEFAULT_EXTERNPARAMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    invoke-static {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->hashCode:I

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

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

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
    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    move v0, v1

    goto :goto_a
.end method
