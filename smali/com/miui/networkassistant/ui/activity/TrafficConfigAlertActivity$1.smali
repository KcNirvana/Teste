.class final Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->-get0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    return-void
.end method
