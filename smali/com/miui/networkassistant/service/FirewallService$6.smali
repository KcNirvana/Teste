.class final Lcom/miui/networkassistant/service/FirewallService$6;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "mina mPackageReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/FirewallService;->-wrap3(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->-get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0, v5}, Lcom/miui/networkassistant/service/FirewallService;->-wrap10(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/service/FirewallService;->-wrap10(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap11(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V

    goto :goto_0
.end method
