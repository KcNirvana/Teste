.class final Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->-set0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->-get0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setPackageChangeUpdateTime(J)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->-wrap0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->-get0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    goto :goto_0
.end method
