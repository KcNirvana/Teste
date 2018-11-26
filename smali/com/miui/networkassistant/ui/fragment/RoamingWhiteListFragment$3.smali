.class final Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNetworkAccessedAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
