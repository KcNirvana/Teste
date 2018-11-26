.class final Lcom/miui/optimizemanage/memoryclean/o;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/memoryclean/o;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {v1, v0}, Lcom/miui/optimizemanage/memoryclean/d;->xo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/memoryclean/o;->xH(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xx(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V

    return-void
.end method

.method protected xH(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xx(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xv(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)Lcom/miui/optimizemanage/memoryclean/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/memoryclean/h;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/o;->wq:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xv(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)Lcom/miui/optimizemanage/memoryclean/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizemanage/memoryclean/h;->notifyDataSetChanged()V

    return-void
.end method
