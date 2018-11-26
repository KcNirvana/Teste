.class final Lcom/miui/networkassistant/service/FirewallService$7;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "FireWallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAllowFirewallReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "networkType"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, 0x0

    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v3}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get4(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/FirewallService;->-get0(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const v2, 0x7f070218

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2, v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->-wrap12(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v3}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get4(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const v2, 0x7f070214

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
