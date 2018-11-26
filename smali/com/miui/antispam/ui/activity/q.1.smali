.class final Lcom/miui/antispam/ui/activity/q;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private TU:Landroid/app/ProgressDialog;

.field final synthetic TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

.field final synthetic TW:[Ljava/lang/String;

.field final synthetic TX:I

.field final synthetic TY:[I

.field final synthetic TZ:I

.field final synthetic Ua:I

.field private progress:I


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;[Ljava/lang/String;I[III)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/q;->TW:[Ljava/lang/String;

    iput p3, p0, Lcom/miui/antispam/ui/activity/q;->TX:I

    iput-object p4, p0, Lcom/miui/antispam/ui/activity/q;->TY:[I

    iput p5, p0, Lcom/miui/antispam/ui/activity/q;->TZ:I

    iput p6, p0, Lcom/miui/antispam/ui/activity/q;->Ua:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/activity/q;->progress:I

    return-void
.end method


# virtual methods
.method protected varargs Vb([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/q;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/miui/antispam/ui/activity/q;->TX:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget v3, Lcom/miui/antispam/b;->aaG:I

    :goto_0
    move v6, v7

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TW:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/q;->TW:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/q;->TY:[I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_2
    iget v4, p0, Lcom/miui/antispam/ui/activity/q;->TZ:I

    iget v5, p0, Lcom/miui/antispam/ui/activity/q;->Ua:I

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->Tb(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Lcom/miui/antispam/ui/activity/q;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/antispam/ui/activity/q;->progress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/q;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :pswitch_1
    sget v3, Lcom/miui/antispam/b;->aaG:I

    goto :goto_0

    :pswitch_2
    sget v3, Lcom/miui/antispam/b;->aaH:I

    goto :goto_0

    :pswitch_3
    sget v3, Lcom/miui/antispam/b;->aaI:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/q;->TY:[I

    aget v2, v2, v6

    goto :goto_2

    :cond_1
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/q;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->finish()V

    :cond_0
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

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/q;->TV:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/q;->TW:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/miui/antispam/ui/activity/q;->TX:I

    if-nez v0, :cond_0

    const v0, 0x7f070056

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/q;->TU:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_0
    const v0, 0x7f070058

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/q;->Vb([Ljava/lang/Integer;)V

    return-void
.end method
