.class final Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-set2(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-get2(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-set0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-get0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-get1(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->registerLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-set2(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->-set0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-void
.end method
