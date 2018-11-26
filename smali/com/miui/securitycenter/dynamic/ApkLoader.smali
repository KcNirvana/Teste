.class Lcom/miui/securitycenter/dynamic/ApkLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final DYNAMIC_APK:Ljava/lang/String; = "dynamic.apk"

.field private static final KEY_DYNAMIC_APK_MD5:Ljava/lang/String; = "dynamic_apk_md5"

.field private static final KEY_DYNAMIC_CURRENT_PATH:Ljava/lang/String; = "dynamic_current_path"

.field private static final KEY_DYNAMIC_FIRST_UPDATE:Ljava/lang/String; = "dynamic_first_update"

.field private static final KEY_DYNAMIC_LAST_ONCE_LOG:Ljava/lang/String; = "dynamic_last_once_log"

.field private static final ONCE_APK:Ljava/lang/String; = "once.apk"

.field private static final PKG:Ljava/lang/String; = "com.miui.securitycenter.dynamic"

.field private static final PKG_1:Ljava/lang/String; = "com.miui.securitycenter.dynamic-1"

.field private static final PKG_2:Ljava/lang/String; = "com.miui.securitycenter.dynamic-2"

.field private static final PKG_ONCE:Ljava/lang/String; = "com.miui.securitycenter.once"

.field public static final PLATFORM_SHA256:Ljava/lang/String; = "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

.field private static final SALT:Ljava/lang/String; = "21da76da-224c-2313-ac60-abcd70139283"

.field private static final STATUS_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApkLoader"

.field private static final URL:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicContext:Landroid/content/Context;

.field private mEagerUpdate:Z

.field private mIgnoreCta:Z

.field private mLastUpdateTime:J

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mService:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

.field private mUpdating:Z

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/miui/securitycenter/dynamic/ApkLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/securitycenter/dynamic/ApkLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/securitycenter/dynamic/ApkLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mUpdating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/securitycenter/dynamic/ApkLoader;ILjava/lang/String;Ljava/io/File;Z)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/securitycenter/dynamic/ApkLoader;->downloadPackage(ILjava/lang/String;Ljava/io/File;Z)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createApkFileDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/miui/securitycenter/dynamic/ApkLoader;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/miui/securitycenter/dynamic/ApkLoader;Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->applayConfig(Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/securitycenter/dynamic/ApkLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->checkOnceUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/securitycenter/dynamic/ApkLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->onConnectivityChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://api.sec.intl.miui.com/common/whiteList/packageList/"

    :goto_0
    sput-object v0, Lcom/miui/securitycenter/dynamic/ApkLoader;->URL:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://api.sec.miui.com/common/whiteList/packageList/"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mService:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    iput-object p3, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method private applayConfig(Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "dynamic_apk_md5"

    iget-object v1, p1, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dynamic_current_path"

    iget-object v1, p1, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mService:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->onDynamicContextChangeWT()V

    return-void
.end method

.method private checkOnceUpdate()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "once.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string/jumbo v0, "com.miui.securitycenter.once"

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->downloadPackage(ILjava/lang/String;Ljava/io/File;Z)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " md5 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "dynamic_last_once_log"

    invoke-static {v2, v0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/app/ContextCompat;->createApplicationContext(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.miui.securitycenter.once.God"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "run"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "loadonce error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/EventTrack;->track(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private copyApkFile(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "dynamic.apk"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string/jumbo v4, "ApkLoader"

    const-string/jumbo v5, "copyApkFile"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "copyApkFile fail"

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :cond_1
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p2

    :cond_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private createApkFileDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dynamic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private deleteFile(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private downloadPackage(ILjava/lang/String;Ljava/io/File;Z)Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;
    .locals 10

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "versionCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "androidVersion"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/securitycenter/dynamic/ApkLoader;->URL:Ljava/lang/String;

    const-string/jumbo v5, "21da76da-224c-2313-ac60-abcd70139283"

    iget-boolean v6, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mIgnoreCta:Z

    invoke-static {v1, v4, v5, v6}, Lcom/miui/securityscan/utils/k;->Jt(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "dynamic_first_update"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    if-eq v1, v3, :cond_1

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    :cond_0
    return-object v2

    :cond_1
    const-string/jumbo v1, "data"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "md5"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0x1000

    :try_start_2
    new-array v6, v6, [B

    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v9, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string/jumbo v3, "ApkLoader"

    const-string/jumbo v5, " donwload error "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v2

    :cond_3
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-direct {p0, p3, v5}, Lcom/miui/securitycenter/dynamic/ApkLoader;->verifyMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->verifySignature(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move v1, v3

    :goto_2
    if-eqz v1, :cond_7

    if-eqz p4, :cond_4

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/EventTrack;->trackVersion(I)V

    :cond_4
    new-instance v0, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V

    iput-object v5, v0, Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;->md5:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v3, "update error "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-object v2

    :cond_6
    move v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_7
    :try_start_5
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_8
    move v1, v0

    move-object v0, v2

    goto :goto_2
.end method

.method private getCurrentPath()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "dynamic_current_path"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lcom/miui/common/b/b;->aHg(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method private getLocalApkFile()Ljava/io/File;
    .locals 4

    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "com.miui.securitycenter.dynamic"

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createApkFileDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "dynamic.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->needCopy(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->copyApkFile(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->needCopy(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->copyApkFile(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    :cond_0
    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "copy apk fail file is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private getRealApkPath()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getLocalApkFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "localInfo create fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createApkFileDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "dynamic.apk"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "dynamic_apk_md5"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/miui/securitycenter/dynamic/ApkLoader;->verifyMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->verifySignature(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, v4, :cond_2

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->deleteFile(Ljava/io/File;)Z

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getSignaturesSHA256([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, " getSignaturesSHA256 error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private internalUpdate()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "start update "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mIgnoreCta:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mUpdating:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mLastUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getRealApkPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "update error packageInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "getRealApkPath error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mUpdating:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mLastUpdateTime:J

    new-instance v1, Lcom/miui/securitycenter/dynamic/ApkLoader$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader$2;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader;Landroid/content/pm/PackageInfo;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private needCopy(Landroid/content/Context;Ljava/io/File;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return v4

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/miui/common/b/b;->aHg(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_3
    const-string/jumbo v2, "ApkLoader"

    const-string/jumbo v3, "needCopy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return v4

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private onConnectivityChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->internalUpdate()V

    :cond_0
    return-void
.end method

.method private verifyMd5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, " verifyMd5 error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private verifySignature(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-direct {p0, v2, v3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getSignaturesSHA256([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getSignaturesSHA256([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "ApkLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verifySignature fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SHA256 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ApkLoader"

    const-string/jumbo v3, "getPackageInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "ApkLoader dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/securitycenter/dynamic/ApkLoader$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader$3;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x2

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mPackageInfo is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disk path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , md5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dynamic_apk_md5"

    invoke-static {v1, v4}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Updating : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mUpdating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , EagerUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , LastUpdateTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mLastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "olog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dynamic_last_once_log"

    invoke-static {v1, v4}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current versionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " versionName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public getDynamicContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getRealApkPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createPackageInfo fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/app/ContextCompat;->createApplicationContext(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createApplicationContext fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mDynamicContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public init()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "com.miui.securitycenter.dynamic-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.miui.securitycenter.dynamic-2"

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createApkFileDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->deleteFile(Ljava/io/File;)Z

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->createApkFileDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "dynamic.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "dynamic_apk_md5"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;->verifyMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->deleteFile(Ljava/io/File;)Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/securitycenter/dynamic/ApkLoader$1;

    invoke-direct {v2, p0}, Lcom/miui/securitycenter/dynamic/ApkLoader$1;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_2
    const-string/jumbo v0, "com.miui.securitycenter.dynamic-1"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "dynamic_first_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    goto :goto_1
.end method

.method public track()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/EventTrack;->trackVersion(I)V

    :cond_0
    return-void
.end method

.method public update(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mIgnoreCta:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader;->mEagerUpdate:Z

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->internalUpdate()V

    return-void
.end method
