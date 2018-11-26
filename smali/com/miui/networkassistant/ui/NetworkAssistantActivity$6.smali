.class final Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-set1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get9(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get12(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get10(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get7(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get9(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get12(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get10(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get11(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get6(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NAMainActivity"

    const-string/jumbo v2, "register traffic corn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-set1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method
