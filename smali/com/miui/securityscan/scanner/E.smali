.class final Lcom/miui/securityscan/scanner/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic Em:Lcom/miui/securityscan/scanner/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/E;->Em:Lcom/miui/securityscan/scanner/a;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/E;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/E;->Em:Lcom/miui/securityscan/scanner/a;

    invoke-static {p2}, Lcom/xiaomi/rcs/aidl/IRcsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/rcs/aidl/IRcsManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/scanner/a;->DG(Lcom/miui/securityscan/scanner/a;Lcom/xiaomi/rcs/aidl/IRcsManager;)Lcom/xiaomi/rcs/aidl/IRcsManager;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/E;->Em:Lcom/miui/securityscan/scanner/a;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/a;->DF(Lcom/miui/securityscan/scanner/a;)Lcom/xiaomi/rcs/aidl/IRcsManager;

    move-result-object v0

    const-string/jumbo v1, "SecurityCenter"

    invoke-interface {v0, v1}, Lcom/xiaomi/rcs/aidl/IRcsManager;->bKm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/miui/securityscan/scanner/a;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openRcsSwitch unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/E;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/scanner/a;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "openRcsSwitch service connected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/miui/securityscan/scanner/a;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openRcsSwitch unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/E;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/miui/securityscan/scanner/a;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "openRcsSwitch unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/scanner/E;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/E;->Em:Lcom/miui/securityscan/scanner/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/scanner/a;->DG(Lcom/miui/securityscan/scanner/a;Lcom/xiaomi/rcs/aidl/IRcsManager;)Lcom/xiaomi/rcs/aidl/IRcsManager;

    return-void
.end method
