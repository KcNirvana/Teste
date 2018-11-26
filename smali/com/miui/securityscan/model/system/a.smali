.class final Lcom/miui/securityscan/model/system/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Bb:Lcom/miui/securityscan/model/system/CmccCheckModel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/system/CmccCheckModel;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/system/a;->Bb:Lcom/miui/securityscan/model/system/CmccCheckModel;

    iput-object p2, p0, Lcom/miui/securityscan/model/system/a;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/model/system/a;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/model/system/a;->Bb:Lcom/miui/securityscan/model/system/CmccCheckModel;

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/securityscan/model/system/a;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07070e

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07070f

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/securityscan/model/system/b;

    iget-object v3, p0, Lcom/miui/securityscan/model/system/a;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/miui/securityscan/model/system/b;-><init>(Lcom/miui/securityscan/model/system/a;Landroid/app/Activity;)V

    const v3, 0x7f070710

    invoke-virtual {v1, v3, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070711

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/system/CmccCheckModel;->BG(Lcom/miui/securityscan/model/system/CmccCheckModel;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CmccCheckModel"

    const-string/jumbo v2, "showRebootDialog error :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
