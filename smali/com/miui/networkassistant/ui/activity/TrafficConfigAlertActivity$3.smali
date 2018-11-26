.class final Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConnected:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConnected:Z

    return-void
.end method
