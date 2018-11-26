.class Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source ""


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method
