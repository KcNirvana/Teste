.class final Lcom/miui/applicationlock/ad;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic ajL:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aex()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->amM(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/applicationlock/utils/b;->adQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ad;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070862

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ad;->ajL:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070863

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7148

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->anU(Lcom/miui/applicationlock/ConfirmAccessControl;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ad;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
