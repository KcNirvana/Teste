.class Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;
.super Ljava/lang/Object;
.source "SensorCollectWorker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private c:I

.field private volatile d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/hardware/Sensor;

.field private g:Landroid/hardware/SensorManager;

.field private h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->g:Landroid/hardware/SensorManager;

    invoke-virtual {p2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getmSensorType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    invoke-virtual {p2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "RDSSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u6ce8\u518c\u5931\u8d25.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "RDSSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u6ce8\u518c\u6210\u529f.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->g:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    const/16 v2, 0x4e20

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "RDSSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5f00\u59cb\u91c7\u96c6\u6570\u636e.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->g:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "RDSSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u505c\u6b62\u91c7\u96c6\u6570\u636e.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->b:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "RDSSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u505c\u6b62\u91c7\u96c6\uff0c\u91c7\u96c6\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6761\u6570\u636e\u3002\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_NOT_START:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_STARTED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_1
    :try_start_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    :cond_5
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    if-lt v0, v1, :cond_6

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    :cond_6
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->c:I

    if-lt v1, v2, :cond_7

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;->COLLECT_FINISHED:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->d:Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker$CollectStatus;

    :cond_7
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/sensor/SensorCollectWorker;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
