.class final Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "network stats exception,reboot by security center"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->rebootPhone(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->finish()V

    return-void
.end method
