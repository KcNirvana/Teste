.class final Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;

    return-void
.end method
