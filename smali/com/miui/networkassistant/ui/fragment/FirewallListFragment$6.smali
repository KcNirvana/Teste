.class final Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onFirewallServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    return-void
.end method
