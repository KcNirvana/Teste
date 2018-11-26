.class final Lcom/miui/analytics/DeviceInfoManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ht:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$ht:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveGPSInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveGyroscopeInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveWifiSSIDAndBSSID(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveBatteryStatus(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveAcceleratorInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/DeviceInfoUtils;->saveMagneticInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoManager$1;->val$ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
