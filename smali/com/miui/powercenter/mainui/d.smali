.class final Lcom/miui/powercenter/mainui/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aOk:Lcom/miui/powercenter/mainui/BatteryStatusView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/BatteryStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/d;->aOk:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/d;->aOk:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcP()V

    :cond_0
    return-void
.end method
