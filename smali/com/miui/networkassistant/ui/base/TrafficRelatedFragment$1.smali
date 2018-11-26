.class final Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "TrafficRelatedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->-get0(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, v4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->-get0(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iput-boolean v3, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onTrafficManageServiceConnected()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "TrafficRelatedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    return-void
.end method
