.class public Lcom/miui/networkassistant/monitor/impl/BootMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/monitor/IMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "BootMonitor"

    const-string/jumbo v1, "invoked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public register()V
    .locals 1

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, p0}, Lcom/miui/networkassistant/monitor/GolbalReceiver;->addMonitor(Ljava/lang/String;Lcom/miui/networkassistant/monitor/IMonitor;)V

    return-void
.end method
