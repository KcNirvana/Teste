.class final Lcom/miui/appmanager/G;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/G;->aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bpi(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/G;->aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/app/ActivityManager$TaskDescription;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/G;->aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.android.settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/G;->aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjZ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/q;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/G;->aWj:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    const v2, 0x7f0708d4

    invoke-virtual {v1, v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2, v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ApplicationsDetailActivity"

    const-string/jumbo v3, "setTaskDescrition getApplicationInfo error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/G;->doInBackground([Ljava/lang/Void;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/G;->bpi(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
