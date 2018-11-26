.class final Lcom/miui/applicationlock/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic ajK:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ac;->ajK:Lcom/miui/applicationlock/ConfirmAccessControl;

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

    iget-object v1, p0, Lcom/miui/applicationlock/ac;->ajK:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v2, p0, Lcom/miui/applicationlock/ac;->ajK:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->anN(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->aob(Lcom/miui/applicationlock/ConfirmAccessControl;ZLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfirmAccessControl"

    const-string/jumbo v2, "Fail to varify"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
