.class public Lcom/miui/securitycenter/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bqd()V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/a;->bsa()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x7de

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsv(J)V

    :cond_1
    return-void
.end method

.method private bqe(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/c;->aSL(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/c;->aSM(Landroid/content/Context;)V

    return-void
.end method

.method private bqf(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/autotask/f;->aVH(Landroid/content/Context;)V

    return-void
.end method

.method private bqg(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TRY_CLOSE_SAVE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/miui/gamebooster/a/D;->ie(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/securitycenter/utils/a;->bqA(Landroid/content/Context;)V

    invoke-static {v2, v3, p1}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/utils/m;->agf(Landroid/content/Context;I)V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/appcompatibility/b;->getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/b;->bwv()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Lcom/miui/powercenter/quickoptimize/p;->aPv(J)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->bqe(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->bqg(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->bqf(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/receiver/BootReceiver;->bqd()V

    invoke-static {p1}, Lcom/miui/applicationlock/utils/k;->aff(Landroid/content/Context;)V

    return-void
.end method
