.class public Lcom/miui/applicationlock/ResetChooseAccessControl;
.super Lcom/miui/applicationlock/ChooseAccessControl;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/applicationlock/ChooseAccessControl;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ResetChooseAccessControl;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->onStop()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ResetChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forgot_password_reset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "home_cancel_current_pwd_page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/miui/applicationlock/ResetChooseAccessControl;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ResetChooseAccessControl;->finish()V

    :cond_0
    return-void
.end method
