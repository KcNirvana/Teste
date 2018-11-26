.class public Lcom/miui/applicationlock/LockChooseAccessControl;
.super Lcom/miui/applicationlock/ChooseAccessControl;
.source ""


# instance fields
.field private aeu:Z

.field private aev:Lcom/miui/applicationlock/utils/e;

.field private aew:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;-><init>()V

    iput-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    iput-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aeu:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aeu:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aev:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/LockChooseAccessControl;->setResult(I)V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/LockChooseAccessControl;->setResult(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/applicationlock/ChooseAccessControl;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf990c
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aev:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {p0}, Lcom/miui/applicationlock/LockChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "forbide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aeu:Z

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aeu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aev:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf990c

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/LockChooseAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    invoke-super {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/LockChooseAccessControl;->aew:Z

    :cond_0
    invoke-super {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->onStop()V

    return-void
.end method
