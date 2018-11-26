.class final Lcom/miui/securitycenter/f;
.super Lmiui/external/b;
.source ""


# instance fields
.field final synthetic aYi:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Lmiui/external/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/external/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/securitycenter/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/FloatWindowHelper;->removeFloatWindow(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securitycenter/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/FloatWindowHelper;->showFloatWindow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    const/16 v2, 0x17

    invoke-super {p0}, Lmiui/external/b;->onCreate()V

    invoke-virtual {p0}, Lcom/miui/securitycenter/f;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v1}, Lcom/miui/securitycenter/Application;->bsM(Lcom/miui/securitycenter/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->bsK()V

    iget-object v0, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v0, p0}, Lcom/miui/securitycenter/Application;->bsR(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.miui.securitycenter:ui"

    iget-object v1, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v1}, Lcom/miui/securitycenter/Application;->bsM(Lcom/miui/securitycenter/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/f;->setTheme(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.miui.securitycenter.remote"

    iget-object v1, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v1}, Lcom/miui/securitycenter/Application;->bsM(Lcom/miui/securitycenter/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/Application;->bsN(Lcom/miui/securitycenter/Application;Z)Z

    invoke-static {p0}, Lcom/miui/securitycenter/c;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsX(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/utils/d;->init()V

    invoke-static {p0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->aBd(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securityscan/model/ModelUpdater;->getInstance()Lcom/miui/securityscan/model/ModelUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/ModelUpdater;->init()V

    invoke-static {}, Lcom/miui/securitycenter/receiver/CleanMasterReceiver;->bqh()V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsQ(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsU(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v0, p0}, Lcom/miui/securitycenter/Application;->bsV(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsS(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/f;->aYi:Lcom/miui/securitycenter/Application;

    invoke-static {v0, p0}, Lcom/miui/securitycenter/Application;->bsP(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/miui/googlebase/GoogleBaseClientProxy;->getInstance(Landroid/content/Context;)Lcom/miui/googlebase/GoogleBaseClientProxy;

    :cond_3
    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsW(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->bra(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->aeu(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->main(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/activityutil/ActivityUtil;->setAllowNetworking(Landroid/content/Context;Z)V

    const-wide/16 v0, 0x32c8

    invoke-static {p0, v0, v1}, Lcom/miui/activityutil/ActivityUtil;->delayedUpload(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->init(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_4

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/securitycenter/receiver/ConnectivityChangeReceiver;

    invoke-direct {v1}, Lcom/miui/securitycenter/receiver/ConnectivityChangeReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_5

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_6

    invoke-static {p0}, Lcom/miui/appcompatibility/b;->getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/b;->init()V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsT(Landroid/content/Context;)V

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/appmanager/receiver/a;

    invoke-direct {v1}, Lcom/miui/appmanager/receiver/a;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/analytics/DeviceInfoManager;->handleTask(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
