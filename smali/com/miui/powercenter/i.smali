.class final Lcom/miui/powercenter/i;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aPy:Lcom/miui/powercenter/PowerCenter;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/i;->aPy:Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.action.LOAD_OPTIMIZE_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/i;->aPy:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgo(Lcom/miui/powercenter/PowerCenter;)V

    :cond_0
    return-void
.end method
