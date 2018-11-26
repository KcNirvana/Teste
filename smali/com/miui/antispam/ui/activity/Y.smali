.class final Lcom/miui/antispam/ui/activity/Y;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field Vo:Ljava/util/ArrayList;

.field private Vp:Landroid/app/ProgressDialog;

.field final synthetic Vq:Lcom/miui/antispam/ui/activity/k;

.field private progress:I


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/activity/Y;->progress:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs Vg([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/Y;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vo:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/m;

    iget v2, v0, Lcom/miui/antispam/ui/activity/m;->To:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/miui/antispam/ui/activity/m;->To:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "sync_dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v3}, Lcom/miui/antispam/ui/activity/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget v0, v0, Lcom/miui/antispam/ui/activity/m;->Tm:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    new-array v0, v6, [Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/antispam/ui/activity/Y;->progress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/antispam/ui/activity/Y;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/Y;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v2}, Lcom/miui/antispam/ui/activity/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget v0, v0, Lcom/miui/antispam/ui/activity/m;->Tm:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/Y;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/k;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/k;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/Y;->Vo:Ljava/util/ArrayList;

    new-instance v5, Lcom/miui/antispam/ui/activity/m;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lmiui/widget/EditableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v5, v0}, Lcom/miui/antispam/ui/activity/m;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Y;->Vo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vq:Lcom/miui/antispam/ui/activity/k;

    iget-boolean v0, v0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070057

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Y;->Vp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_2
    const v0, 0x7f070059

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/Y;->Vg([Ljava/lang/Integer;)V

    return-void
.end method
