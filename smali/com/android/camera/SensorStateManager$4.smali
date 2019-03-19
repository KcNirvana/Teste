.class Lcom/android/camera/SensorStateManager$4;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 2

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    const-string/jumbo v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get5(Lcom/android/camera/SensorStateManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-wrap0(Lcom/android/camera/SensorStateManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v7, v10}, Lcom/android/camera/SensorStateManager;->-wrap1(Lcom/android/camera/SensorStateManager;[F)[F

    move-result-object v7

    invoke-static {v6, v8, v9, v7}, Lcom/android/camera/SensorStateManager;->-wrap7(Lcom/android/camera/SensorStateManager;J[F)V

    :cond_1
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const v9, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const v9, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    const v9, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x2

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x2

    aput v7, v6, v8

    const-string/jumbo v6, "SensorStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "finalFilter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " event.values="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    neg-float v0, v6

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-float v1, v6

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    neg-float v2, v6

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v4, v6, v7

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    mul-float v7, v2, v2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    neg-float v6, v1

    float-to-double v6, v6

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x42652ee1

    mul-float v3, v6, v7

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float v5, v6, v3

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6, v5}, Lcom/android/camera/SensorStateManager;->-wrap2(Lcom/android/camera/SensorStateManager;F)F

    move-result v5

    :cond_2
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$4;->clearFilter()V

    :cond_3
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6, v5}, Lcom/android/camera/SensorStateManager;->-set5(Lcom/android/camera/SensorStateManager;F)F

    const-string/jumbo v6, "SensorStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mIsLying="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_4
    return-void
.end method
