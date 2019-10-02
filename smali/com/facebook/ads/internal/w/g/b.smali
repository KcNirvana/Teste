.class public Lcom/facebook/ads/internal/w/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/w/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:F

.field private h:F

.field private i:F

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/internal/w/g/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->g:F

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->h:F

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->i:F

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->j:Ljava/util/Set;

    iput-object p1, p0, Lcom/facebook/ads/internal/w/g/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/w/g/b$a;)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->a:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->a:Landroid/content/Context;

    const-string v2, "Sensors not supported"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/facebook/ads/internal/w/g/b;->a:Landroid/content/Context;

    const-string v3, "Shaking not supported"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/ads/internal/w/g/b;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    if-lez v0, :cond_1

    iput v4, p0, Lcom/facebook/ads/internal/w/g/b;->c:I

    :cond_1
    iget-wide v5, p0, Lcom/facebook/ads/internal/w/g/b;->d:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x64

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    iget-wide v5, p0, Lcom/facebook/ads/internal/w/g/b;->d:J

    sub-long v5, v2, v5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v1

    add-float/2addr v0, v7

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v0, v7

    iget v7, p0, Lcom/facebook/ads/internal/w/g/b;->g:F

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/facebook/ads/internal/w/g/b;->h:F

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/facebook/ads/internal/w/g/b;->i:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    long-to-float v5, v5

    div-float/2addr v0, v5

    const v5, 0x461c4000    # 10000.0f

    mul-float v0, v0, v5

    const/high16 v5, 0x44480000    # 800.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/internal/w/g/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->c:I

    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/internal/w/g/b;->e:J

    sub-long v5, v2, v5

    const-wide/16 v9, 0x3e8

    cmp-long v0, v5, v9

    if-lez v0, :cond_2

    iput-wide v2, p0, Lcom/facebook/ads/internal/w/g/b;->e:J

    iput v4, p0, Lcom/facebook/ads/internal/w/g/b;->c:I

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/b;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/internal/w/g/b$a;

    invoke-interface {v5}, Lcom/facebook/ads/internal/w/g/b$a;->a()V

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/facebook/ads/internal/w/g/b;->f:J

    :cond_3
    iput-wide v2, p0, Lcom/facebook/ads/internal/w/g/b;->d:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->g:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/w/g/b;->h:F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v8

    iput p1, p0, Lcom/facebook/ads/internal/w/g/b;->i:F

    :cond_4
    return-void
.end method
