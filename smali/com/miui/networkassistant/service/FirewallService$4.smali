.class final Lcom/miui/networkassistant/service/FirewallService$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/firewall/IFirewallListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$4;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppNetworkRestrict(Ljava/lang/String;Lcom/miui/common/network/NetworkUtils$NetworkState;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$4;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "network_blocked_pkgname"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "network_blocked_network_type"

    invoke-virtual {p2}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$4;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->-get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
