.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sdk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;,
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;,
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;,
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;
    }
.end annotation


# static fields
.field public static final TAG_DEV:I = 0x1

.field public static final TAG_ENV:I = 0x2

.field public static final TAG_LOC:I = 0x3

.field public static final TAG_USR:I = 0x4


# instance fields
.field public dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

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
    instance-of v2, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->dev:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Env;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->loc:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Loc;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->usr:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;

    invoke-virtual {v1}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk;->hashCode:I

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
.end method
