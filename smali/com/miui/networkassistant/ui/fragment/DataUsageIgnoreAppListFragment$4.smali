.class final Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNetworkAccessedAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$4;Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Lcom/miui/common/a/b/b;)V

    :cond_0
    return-void
.end method
