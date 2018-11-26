.class final Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "NetdFirewall"

    const-string/jumbo v1, "mFirewallReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "pkg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->-get1(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/networkassistant/firewall/IFirewallListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->-get0(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/miui/networkassistant/firewall/IFirewallListener;->onAppNetworkRestrict(Ljava/lang/String;Lcom/miui/common/network/NetworkUtils$NetworkState;)V

    return-void
.end method
