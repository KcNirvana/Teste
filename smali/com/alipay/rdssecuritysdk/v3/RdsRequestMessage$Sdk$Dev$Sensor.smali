.class public final Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;
.super Lcom/squareup/wire/Message;
.source "RdsRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;
    }
.end annotation


# static fields
.field public static final DEFAULT_T:Ljava/lang/Long;

.field public static final TAG_DATA:I = 0x1

.field public static final TAG_T:I = 0x2


# instance fields
.field public data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public t:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->DEFAULT_T:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    iget-object v0, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

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
    instance-of v2, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->data:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor$Data;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->t:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Dev$Sensor;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
