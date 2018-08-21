.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;
    }
.end annotation


# static fields
.field public static final TAG_ENV:I = 0x1


# instance fields
.field public env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;

    iget-object v1, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->hashCode:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->env:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native$Env;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Native;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
