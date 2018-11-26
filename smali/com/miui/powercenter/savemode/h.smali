.class final Lcom/miui/powercenter/savemode/h;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aOA:Lcom/miui/powercenter/savemode/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/h;->aOA:Lcom/miui/powercenter/savemode/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "POWER_SAVE_MODE_OPEN"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/savemode/h;->aOA:Lcom/miui/powercenter/savemode/b;

    invoke-static {v1}, Lcom/miui/powercenter/savemode/b;->bei(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
