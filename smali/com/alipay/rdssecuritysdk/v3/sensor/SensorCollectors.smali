.class public Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;
.super Ljava/lang/Object;
.source "SensorCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;
    }
.end annotation


# instance fields
.field a:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->GRAVITY:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->a:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->a:[Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    new-instance v6, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;

    const/4 v7, 0x6

    invoke-direct {v6, v0, v4, v7}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;-><init>(Landroid/hardware/SensorManager;Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method
