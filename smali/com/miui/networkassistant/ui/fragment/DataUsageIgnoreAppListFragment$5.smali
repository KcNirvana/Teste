.class final Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iput-boolean v2, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, v3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v1

    iput v1, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->resetTitle()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    return-void
.end method
