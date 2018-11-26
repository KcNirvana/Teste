.class final Lcom/miui/antispam/ui/activity/w;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private Ug:Landroid/app/ProgressDialog;

.field final synthetic Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

.field private progress:I


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/activity/w;->progress:I

    return-void
.end method


# virtual methods
.method protected varargs Vc([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/w;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->Tf(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v5}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v1, v7, v7}, Lcom/miui/antispam/util/h;->XF(Landroid/content/Context;Ljava/lang/String;III)V

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v5}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v4, v1, v7, v6}, Lcom/miui/antispam/util/h;->XF(Landroid/content/Context;Ljava/lang/String;III)V

    new-array v4, v7, [Ljava/lang/Integer;

    iget v5, p0, Lcom/miui/antispam/ui/activity/w;->progress:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/miui/antispam/ui/activity/w;->progress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/miui/antispam/ui/activity/w;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "RemoveBlacklistActivity"

    const-string/jumbo v1, "Remove blacklist completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/w;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->Tf(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/w;->Uh:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/w;->Ug:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/w;->Vc([Ljava/lang/Integer;)V

    return-void
.end method
