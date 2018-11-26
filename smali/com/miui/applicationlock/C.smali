.class final Lcom/miui/applicationlock/C;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected apy(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alo(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/j;

    iget-object v2, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/applicationlock/j;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;Lcom/miui/applicationlock/j;)V

    invoke-virtual {v0, v1, v4}, Lcom/miui/applicationlock/utils/a;->adJ(Lcom/miui/applicationlock/utils/i;I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aln(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alp(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    goto :goto_1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akT(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/applicationlock/utils/e;->aeB()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/C;->aji:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "cancel_fingerprint_verify_times"

    invoke-static {v2, v0}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v2, "cancel_fingerprint_guide_times"

    invoke-static {v2, v0}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/C;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/C;->apy(Ljava/lang/Integer;)V

    return-void
.end method
