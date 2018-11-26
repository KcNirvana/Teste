.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get0(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "VisibleItemIndex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$6;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
