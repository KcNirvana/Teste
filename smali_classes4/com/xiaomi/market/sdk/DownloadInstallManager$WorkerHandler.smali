.class public Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;
.super Landroid/os/Handler;
.source "DownloadInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/DownloadInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/market/sdk/DownloadInstallManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->verify(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->launchPackageInstaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->generateApkSaveFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->getDownloadUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->downloadApk(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->getPatchedApk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private downloadApk(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string p1, "application/apk-ota"

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/xiaomi/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$400()Landroid/app/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$802(Lcom/xiaomi/market/sdk/DownloadInstallManager;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "download_id"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$800(Lcom/xiaomi/market/sdk/DownloadInstallManager;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "version_code"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "apk_url"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apk_hash"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "diff_url"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "diff_hash"

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apk_path"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/xiaomi/market/sdk/SDKDatabaseHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->insertOrUpdateUpdate(Landroid/content/ContentValues;)J

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MarketUpdateDownload"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-static {p1}, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;->notifyResult(I)V

    return-void
.end method

.method private generateApkSaveFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$200(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/xiaomi_update_sdk"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDownloadUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPatchedApk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/xiaomi/market/sdk/Patcher;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2

    :cond_1
    return-object v1
.end method

.method private launchPackageInstaller(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0, p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$1200(Lcom/xiaomi/market/sdk/DownloadInstallManager;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/PkgUtils;->queryDefaultPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "MarketUpdateDownload"

    const-string v0, "no activity found to install apk"

    invoke-static {p1, v0}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v2}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$200(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$200(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private verify(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public arrange()V
    .locals 1

    new-instance v0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;-><init>(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public install(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$2;-><init>(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reloadDownloadTasks()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$200(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$002(Lcom/xiaomi/market/sdk/DownloadInstallManager;Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$300(Lcom/xiaomi/market/sdk/DownloadInstallManager;)V

    :cond_2
    return-void
.end method
