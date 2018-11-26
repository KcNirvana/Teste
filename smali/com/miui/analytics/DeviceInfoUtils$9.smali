.class final Lcom/miui/analytics/DeviceInfoUtils$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$listener:Landroid/hardware/SensorEventListener;

.field final synthetic val$sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/analytics/DeviceInfoUtils$9;->val$sensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/miui/analytics/DeviceInfoUtils$9;->val$listener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoUtils$9;->val$sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/analytics/DeviceInfoUtils$9;->val$listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
