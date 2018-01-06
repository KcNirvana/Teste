.class public Lcom/amap/api/col/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Landroid/hardware/SensorManager;

.field b:Landroid/hardware/Sensor;

.field c:Landroid/hardware/Sensor;

.field d:Landroid/hardware/Sensor;

.field public e:Z

.field public f:D

.field public g:F

.field h:D

.field i:D

.field j:D

.field k:D

.field l:[D

.field volatile m:D

.field n:J

.field o:J

.field private p:Landroid/content/Context;

.field private q:F

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gt;->p:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gt;->e:Z

    iput-wide v2, p0, Lcom/amap/api/col/gt;->f:D

    iput v1, p0, Lcom/amap/api/col/gt;->g:F

    const v0, 0x447d5000    # 1013.25f

    iput v0, p0, Lcom/amap/api/col/gt;->q:F

    iput v1, p0, Lcom/amap/api/col/gt;->r:F

    iput-wide v2, p0, Lcom/amap/api/col/gt;->h:D

    iput-wide v2, p0, Lcom/amap/api/col/gt;->i:D

    iput-wide v2, p0, Lcom/amap/api/col/gt;->j:D

    iput-wide v2, p0, Lcom/amap/api/col/gt;->k:D

    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/amap/api/col/gt;->l:[D

    iput-wide v2, p0, Lcom/amap/api/col/gt;->m:D

    iput-wide v4, p0, Lcom/amap/api/col/gt;->n:J

    iput-wide v4, p0, Lcom/amap/api/col/gt;->o:J

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/gt;->p:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gt;->p:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private a([F)V
    .locals 12

    const v9, 0x3e4ccccc    # 0.19999999f

    const-wide v10, 0x3fe99999a0000000L    # 0.800000011920929

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/col/gt;->l:[D

    iget-object v1, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v1, v6

    mul-double/2addr v2, v10

    aget v1, p1, v6

    mul-float/2addr v1, v9

    float-to-double v4, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v6

    iget-object v0, p0, Lcom/amap/api/col/gt;->l:[D

    iget-object v1, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v1, v7

    mul-double/2addr v2, v10

    aget v1, p1, v7

    mul-float/2addr v1, v9

    float-to-double v4, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Lcom/amap/api/col/gt;->l:[D

    iget-object v1, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v1, v8

    mul-double/2addr v2, v10

    aget v1, p1, v8

    mul-float/2addr v1, v9

    float-to-double v4, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v8

    aget v0, p1, v6

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v2, v6

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/gt;->h:D

    aget v0, p1, v7

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v2, v7

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/gt;->i:D

    aget v0, p1, v8

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/gt;->l:[D

    aget-wide v2, v2, v8

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/gt;->j:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/gt;->n:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/amap/api/col/gt;->h:D

    iget-wide v4, p0, Lcom/amap/api/col/gt;->h:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/amap/api/col/gt;->i:D

    iget-wide v6, p0, Lcom/amap/api/col/gt;->i:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/amap/api/col/gt;->j:D

    iget-wide v6, p0, Lcom/amap/api/col/gt;->j:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/gt;->o:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/col/gt;->o:J

    iput-wide v0, p0, Lcom/amap/api/col/gt;->n:J

    iget-wide v0, p0, Lcom/amap/api/col/gt;->m:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/gt;->m:D

    iget-wide v0, p0, Lcom/amap/api/col/gt;->o:J

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/gt;->m:D

    iget-wide v2, p0, Lcom/amap/api/col/gt;->o:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/gt;->k:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gt;->m:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gt;->o:J

    goto :goto_0
.end method

.method private b([F)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amap/api/col/gt;->q:F

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/col/gt;->f:D

    :cond_0
    return-void
.end method

.method private c([F)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/gt;->r:F

    iget v0, p0, Lcom/amap/api/col/gt;->r:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/gt;->r:F

    float-to-double v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/gt;->r:F

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/gt;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(D)D
    .locals 3

    iget-wide v0, p0, Lcom/amap/api/col/gt;->f:D

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public a()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/gt;->e:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/gt;->e:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "registerListener mPressure"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "registerListener mRotationVector"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "registerListener mAcceleroMeterVector"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x447d5000    # 1013.25f

    iput v0, p0, Lcom/amap/api/col/gt;->q:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/gt;->q:F

    goto :goto_0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gt;->g:F

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/gt;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gt;->e:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gt;->r:F

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/gt;->k:D

    return-wide v0
.end method

.method public f()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/gt;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gt;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gt;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gt;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {p0, v0}, Lcom/amap/api/col/gt;->a([F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "accelerometer"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gt;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/amap/api/col/gt;->g:F

    :cond_2
    invoke-direct {p0, v0}, Lcom/amap/api/col/gt;->b([F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "doComputeAltitude"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gt;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-direct {p0, v0}, Lcom/amap/api/col/gt;->c([F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AMapSensorManager"

    const-string v2, "doComputeBearing"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
