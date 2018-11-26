.class final Lcom/miui/applicationlock/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic aiT:Lcom/miui/applicationlock/ConfirmAccountActivity;

.field final synthetic aiU:Lcom/miui/applicationlock/utils/e;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/utils/e;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/p;->aiT:Lcom/miui/applicationlock/ConfirmAccountActivity;

    iput-object p2, p0, Lcom/miui/applicationlock/p;->aiU:Lcom/miui/applicationlock/utils/e;

    iput-object p3, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/p;->aiT:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->ako(Lcom/miui/applicationlock/ConfirmAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_binding_result"

    :goto_0
    const-string/jumbo v1, "not_logged_binding"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajs(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/p;->aiU:Lcom/miui/applicationlock/utils/e;

    iget-object v1, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070864

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIY(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/p;->aiT:Lcom/miui/applicationlock/ConfirmAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/applicationlock/p;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "binding_result"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/p;->aiU:Lcom/miui/applicationlock/utils/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ConfirmAccountActivity"

    const-string/jumbo v1, "applicationlock error,e"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/p;->aiT:Lcom/miui/applicationlock/ConfirmAccountActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akr(Lcom/miui/applicationlock/ConfirmAccountActivity;Z)Z

    goto :goto_1
.end method
