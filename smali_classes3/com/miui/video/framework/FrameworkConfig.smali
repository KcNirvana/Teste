.class public Lcom/miui/video/framework/FrameworkConfig;
.super Ljava/lang/Object;
.source "FrameworkConfig.java"


# static fields
.field public static final APPDIRLEVEL_PHONE_DATA:I = 0x2

.field public static final APPDIRLEVEL_SDCARD:I = 0x0

.field public static final APPDIRLEVEL_SDCARD_ANDROID:I = 0x1

.field public static final APP_NAME:Ljava/lang/String; = "com.miui.videoplayer"

.field public static final CONNECT_BUFFER:I = 0x1000

.field public static final CONNECT_RETRYCOUNT:I = 0x0

.field public static final CONNECT_TIMEOUT:I = 0x4e20

.field public static final DATABASE_DEFALUT:Ljava/lang/String; = "db"

.field public static final LOGLEVEL_CLOSE:I = 0x0

.field public static final LOGLEVEL_OPEN_ALL:I = 0x1

.field public static final LOGLEVEL_OPEN_LIST:I = 0x2

.field public static final LOGTAG_CATCH:Ljava/lang/String; = "catch"

.field public static final LOGTAG_DEFALUT:Ljava/lang/String; = "com.miui.videoplayer"

.field public static final PATH_APKS:Ljava/lang/String; = "apks"

.field public static final PATH_APP:Ljava/lang/String; = "com.miui.videoplayer"

.field public static final PATH_CACHE:Ljava/lang/String; = "cache"

.field public static final PATH_IMAGES:Ljava/lang/String; = "images"

.field public static final PATH_LOGS:Ljava/lang/String; = "logs"

.field public static final TASKLEVEL_CORE_CPU:I = 0x0

.field public static final TASKLEVEL_MAX_CPU:I = 0x1

.field public static final TASKLEVEL_SERIAL:I = 0x2

.field private static volatile mInstance:Lcom/miui/video/framework/FrameworkConfig;


# instance fields
.field private apkPath:Ljava/lang/String;

.field private appContext:Landroid/content/Context;

.field private appDirLevel:I

.field private appDirName:Ljava/lang/String;

.field private appPath:Ljava/lang/String;

.field private cachePath:Ljava/lang/String;

.field private connectBuffer:I

.field private connectRetryCount:I

.field private connectTimeout:I

.field private databaseName:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private isAssetsData:Z

.field private isConnectUseProxyRetry:Z

.field private isLog:Z

.field private isLogAll:Z

.field private isStrictMode:Z

.field private logLevel:I

.field private logPtah:Ljava/lang/String;

.field private logTag:Ljava/lang/String;

.field private taskLevel:I

.field private themeId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirLevel:I

    const-string v1, "com.miui.videoplayer"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isAssetsData:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->themeId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isStrictMode:Z

    const-string v1, "com.miui.videoplayer"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->appPath:Ljava/lang/String;

    const-string v1, "logs"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->logPtah:Ljava/lang/String;

    const-string v1, "cache"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->cachePath:Ljava/lang/String;

    const-string v1, "images"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->imagePath:Ljava/lang/String;

    const-string v1, "apks"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->apkPath:Ljava/lang/String;

    const-string v1, "com.miui.videoplayer"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->logTag:Ljava/lang/String;

    iput v0, p0, Lcom/miui/video/framework/FrameworkConfig;->logLevel:I

    iput-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isLog:Z

    iput-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isLogAll:Z

    const-string v1, "db"

    iput-object v1, p0, Lcom/miui/video/framework/FrameworkConfig;->databaseName:Ljava/lang/String;

    iput v0, p0, Lcom/miui/video/framework/FrameworkConfig;->taskLevel:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectTimeout:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectBuffer:I

    iput v0, p0, Lcom/miui/video/framework/FrameworkConfig;->connectRetryCount:I

    iput-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isConnectUseProxyRetry:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/video/framework/FrameworkConfig;
    .locals 2

    sget-object v0, Lcom/miui/video/framework/FrameworkConfig;->mInstance:Lcom/miui/video/framework/FrameworkConfig;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/framework/FrameworkConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/FrameworkConfig;->mInstance:Lcom/miui/video/framework/FrameworkConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/framework/FrameworkConfig;

    invoke-direct {v1}, Lcom/miui/video/framework/FrameworkConfig;-><init>()V

    sput-object v1, Lcom/miui/video/framework/FrameworkConfig;->mInstance:Lcom/miui/video/framework/FrameworkConfig;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/framework/FrameworkConfig;->mInstance:Lcom/miui/video/framework/FrameworkConfig;

    return-object v0
.end method

.method private runStrictMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isStrictMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_9_GINGERBREAD()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_11_HONEYCOMB()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    return-void
.end method

.method private setApkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->apkPath:Ljava/lang/String;

    return-void
.end method

.method private setAppContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->appContext:Landroid/content/Context;

    return-void
.end method

.method private setAppDirLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirLevel:I

    return-void
.end method

.method private setAppDirName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirName:Ljava/lang/String;

    return-void
.end method

.method private setAppPath(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FrameworkConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppPath appPath == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->appPath:Ljava/lang/String;

    return-void
.end method

.method private setAssetsData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/FrameworkConfig;->isAssetsData:Z

    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->cachePath:Ljava/lang/String;

    return-void
.end method

.method private setConnectBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectBuffer:I

    return-void
.end method

.method private setConnectRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectRetryCount:I

    return-void
.end method

.method private setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectTimeout:I

    return-void
.end method

.method private setConnectUseProxyRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/FrameworkConfig;->isConnectUseProxyRetry:Z

    return-void
.end method

.method private setImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->imagePath:Ljava/lang/String;

    return-void
.end method

.method private setLogAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/FrameworkConfig;->isLogAll:Z

    return-void
.end method

.method private setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->logLevel:I

    return-void
.end method

.method private setLogPtah(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->logPtah:Ljava/lang/String;

    return-void
.end method

.method private setLogTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->logTag:Ljava/lang/String;

    return-void
.end method

.method private setStrictMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/FrameworkConfig;->isStrictMode:Z

    return-void
.end method

.method private setTaskLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/FrameworkConfig;->taskLevel:I

    return-void
.end method

.method private setThemeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkConfig;->themeId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppDirLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirLevel:I

    return v0
.end method

.method public getAppDirName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->appDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectBuffer()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->connectBuffer:I

    return v0
.end method

.method public getConnectRetryCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->connectRetryCount:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->connectTimeout:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->logLevel:I

    return v0
.end method

.method public getLogPtah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->logPtah:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/FrameworkConfig;->taskLevel:I

    return v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkConfig;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public initBase(Landroid/content/Context;ILjava/lang/String;ZLjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/framework/FrameworkConfig;->setAppContext(Landroid/content/Context;)V

    const/4 p1, 0x1

    if-le p2, p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/video/framework/FrameworkConfig;->setAppDirLevel(I)V

    const-string p2, "com.miui.videoplayer"

    invoke-static {p3, p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setAppDirName(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/miui/video/framework/FrameworkConfig;->setAssetsData(Z)V

    invoke-direct {p0, p5}, Lcom/miui/video/framework/FrameworkConfig;->setThemeId(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/miui/video/framework/FrameworkConfig;->setStrictMode(Z)V

    invoke-static {}, Lcom/miui/video/framework/utils/CacheUtils;->isExistsSdcard()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppDirLevel()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setAppPath(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setAppPath(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppDirName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setAppPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setAppPath(Ljava/lang/String;)V

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "logs"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setLogPtah(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "cache"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setCachePath(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "images"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setImagePath(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "apks"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setApkPath(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/framework/FrameworkConfig;->runStrictMode()V

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initLogs(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/miui/video/framework/FrameworkConfig;->LOGTAG_DEFALUT:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/framework/FrameworkConfig;->setLogTag(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setLogLevel(I)V

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "logs"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setLogPtah(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getAppPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setLogPtah(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getLogLevel()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setLog(Z)V

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkConfig;->getLogLevel()I

    move-result p2

    if-ne p2, v0, :cond_5

    const/4 p1, 0x1

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/video/framework/FrameworkConfig;->setLogAll(Z)V

    sput-boolean p4, Lcom/miui/video/framework/log/LogUtils;->IS_DEBUG_VERSION:Z

    return-void
.end method

.method public initNetwork(IIIIZ)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/video/framework/FrameworkConfig;->setTaskLevel(I)V

    iget p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectTimeout:I

    if-ge p2, p1, :cond_2

    iget p2, p0, Lcom/miui/video/framework/FrameworkConfig;->connectTimeout:I

    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/video/framework/FrameworkConfig;->setConnectTimeout(I)V

    const/16 p1, 0x400

    if-ge p3, p1, :cond_3

    iget p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectBuffer:I

    div-int/lit8 p3, p1, 0x4

    :cond_3
    invoke-direct {p0, p3}, Lcom/miui/video/framework/FrameworkConfig;->setConnectBuffer(I)V

    iget p1, p0, Lcom/miui/video/framework/FrameworkConfig;->connectRetryCount:I

    if-ge p4, p1, :cond_4

    iget p4, p0, Lcom/miui/video/framework/FrameworkConfig;->connectRetryCount:I

    :cond_4
    invoke-direct {p0, p4}, Lcom/miui/video/framework/FrameworkConfig;->setConnectRetryCount(I)V

    invoke-direct {p0, p5}, Lcom/miui/video/framework/FrameworkConfig;->setConnectUseProxyRetry(Z)V

    return-void
.end method

.method public isAssetsData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isAssetsData:Z

    return v0
.end method

.method public isConnectUseProxyRetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isConnectUseProxyRetry:Z

    return v0
.end method

.method public isLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isLog:Z

    return v0
.end method

.method public isLogAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isLogAll:Z

    return v0
.end method

.method public isStrictMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/FrameworkConfig;->isStrictMode:Z

    return v0
.end method

.method public setLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/FrameworkConfig;->isLog:Z

    return-void
.end method
