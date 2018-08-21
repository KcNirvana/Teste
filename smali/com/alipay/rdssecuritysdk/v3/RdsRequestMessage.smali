.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;,
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;,
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXTRA1:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA2:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA3:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA4:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA5:Ljava/lang/String; = ""

.field public static final TAG_EXTRA1:I = 0x4

.field public static final TAG_EXTRA2:I = 0x5

.field public static final TAG_EXTRA3:I = 0x6

.field public static final TAG_EXTRA4:I = 0x7

.field public static final TAG_EXTRA5:I = 0x8

.field public static final TAG_NATIVE:I = 0x1

.field public static final TAG_SDK:I = 0x2

.field public static final TAG_TAOBAO:I = 0x3


# instance fields
.field public _native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public extra1:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extra2:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extra3:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extra4:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extra5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->_native:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->sdk:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->taobao:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Taobao;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra4:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->extra5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

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
.end method
