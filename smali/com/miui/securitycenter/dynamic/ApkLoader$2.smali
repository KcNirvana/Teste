.class final Lcom/miui/securitycenter/dynamic/ApkLoader$2;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

.field final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/dynamic/ApkLoader;Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    iput-object p2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;
    .locals 6

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap3(Lcom/miui/securitycenter/dynamic/ApkLoader;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter.dynamic-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.miui.securitycenter.dynamic-2"

    :goto_0
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap2(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v2, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap0(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/io/File;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap2(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "dynamic.apk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    iget-object v3, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v4, "com.miui.securitycenter.dynamic"

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v2, v5}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap1(Lcom/miui/securitycenter/dynamic/ApkLoader;ILjava/lang/String;Ljava/io/File;Z)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;->path:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap5(Lcom/miui/securitycenter/dynamic/ApkLoader;)V

    return-object v1

    :cond_2
    const-string/jumbo v0, "com.miui.securitycenter.dynamic-1"

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->doInBackground([Ljava/lang/Void;)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-get0(Lcom/miui/securitycenter/dynamic/ApkLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader$2;Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->onPostExecute(Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V

    return-void
.end method
