.class Lcom/android/camera/SensorStateManager$3;
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
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/SensorStateManager;->-wrap7(Lcom/android/camera/SensorStateManager;J[F)V

    return-void
.end method
