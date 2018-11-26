.class final Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-set0(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-set1(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-wrap1(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    new-instance v1, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1$1;-><init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-wrap0(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-set1(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->-set0(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Z)Z

    return-void
.end method
