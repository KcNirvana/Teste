.class public Lcom/xiaomi/market/sdk/DownloadInstallManager;
.super Ljava/lang/Object;
.source "DownloadInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;,
        Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final TAG:Ljava/lang/String; = "MarketUpdateDownload"

.field private static mDownloadManager:Landroid/app/DownloadManager;

.field public static sDownloadInstallManager:Lcom/xiaomi/market/sdk/DownloadInstallManager;


# instance fields
.field private mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

.field private mContext:Landroid/content/Context;

.field private mDownloadId:J

.field private mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private mWorkerHandler:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    invoke-static {p1}, Lcom/xiaomi/market/sdk/Client;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->initDownloadManager()V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Worker Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;-><init>(Lcom/xiaomi/market/sdk/DownloadInstallManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaomi/market/sdk/DownloadInstallManager;Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/market/sdk/DownloadInstallManager;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->generateInstallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/market/sdk/DownloadInstallManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->reloadUpdateInfoFromDB()V

    return-void
.end method

.method static synthetic access$400()Landroid/app/DownloadManager;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/market/sdk/DownloadInstallManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/xiaomi/market/sdk/DownloadInstallManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide p1
.end method

.method private generateInstallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isLaterThanN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".selfupdate.fileprovider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Lcom/xiaomi/market/sdk/DownloadInstallManager;
    .locals 2

    const-class v0, Lcom/xiaomi/market/sdk/DownloadInstallManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/xiaomi/market/sdk/DownloadInstallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initDownloadManager()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isLaterThanN()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAccessFilename"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarketUpdateDownload"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized reloadUpdateInfoFromDB()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/xiaomi/market/sdk/SDKDatabaseHelper;

    move-result-object v2

    const-string v3, "update_download"

    sget-object v4, Lcom/xiaomi/market/sdk/Constants$Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    const-string v5, "package_name=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object v7, v7, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "download_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    new-instance v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    const-string v2, "version_code"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string v2, "apk_url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v2, "apk_hash"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v2, "diff_url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v2, "diff_hash"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized arrange(Lcom/xiaomi/market/sdk/LocalAppInfo;Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->arrange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getDowloadId()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->reloadUpdateInfoFromDB()V

    iget-wide v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide v0
.end method

.method public handleDownloadComplete(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadId:J

    invoke-static {p1, p2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;->find(J)Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p1, Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;->status:I

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    iget-object p2, p1, Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;->downloadFilePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object p1, p1, Lcom/xiaomi/market/sdk/DownloadInstallManager$DownloadManagerInfo;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->install(Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public isDownloading(Lcom/xiaomi/market/sdk/LocalAppInfo;)Z
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/xiaomi/market/sdk/SDKDatabaseHelper;

    move-result-object v1

    const-string v2, "update_download"

    sget-object v3, Lcom/xiaomi/market/sdk/Constants$Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    const-string v4, "package_name=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/market/sdk/SDKDatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "download_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v9

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v1, v0, [J

    aput-wide v3, v1, v9

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    sget-object v1, Lcom/xiaomi/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_6

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    :goto_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    if-eq v1, v0, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v9

    :cond_8
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0
.end method
