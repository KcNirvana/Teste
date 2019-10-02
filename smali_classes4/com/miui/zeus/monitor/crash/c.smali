.class Lcom/miui/zeus/monitor/crash/c;
.super Ljava/lang/Object;
.source "CrashMonitorRecorder.java"


# static fields
.field private static a:Lcom/miui/zeus/monitor/crash/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/text/DateFormat;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->f:Ljava/text/DateFormat;

    invoke-static {}, Lcom/miui/zeus/utils/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/miui/zeus/monitor/crash/c;
    .locals 2

    sget-object v0, Lcom/miui/zeus/monitor/crash/c;->a:Lcom/miui/zeus/monitor/crash/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/zeus/monitor/crash/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/zeus/monitor/crash/c;->a:Lcom/miui/zeus/monitor/crash/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/zeus/monitor/crash/c;

    invoke-direct {v1}, Lcom/miui/zeus/monitor/crash/c;-><init>()V

    sput-object v1, Lcom/miui/zeus/monitor/crash/c;->a:Lcom/miui/zeus/monitor/crash/c;

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
    sget-object v0, Lcom/miui/zeus/monitor/crash/c;->a:Lcom/miui/zeus/monitor/crash/c;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/miui/zeus/monitor/crash/c$1;

    invoke-direct {v0, p0}, Lcom/miui/zeus/monitor/crash/c$1;-><init>(Lcom/miui/zeus/monitor/crash/c;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    array-length v0, p1

    if-gt v1, v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    new-instance v0, Lcom/miui/zeus/monitor/crash/c$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/zeus/monitor/crash/c$2;-><init>(Lcom/miui/zeus/monitor/crash/c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/utils/a;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@1"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v4, :cond_1

    aget-object v4, v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "zeus/monitor/crash/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "zeus/monitor/crash/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-static {v0}, Lcom/miui/zeus/utils/b/a;->a(Ljava/io/File;)V

    iput-boolean v1, p0, Lcom/miui/zeus/monitor/crash/c;->e:Z

    :goto_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/zeus/monitor/crash/c;->c:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/zeus/monitor/crash/c;->b()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/c;->f:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/io/File;)V

    iget-boolean v0, p0, Lcom/miui/zeus/monitor/crash/c;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/miui/zeus/utils/b/a;->b(Ljava/io/File;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "exception"

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "version"

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/zeus/utils/a/a;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "package_name"

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "sha1"

    invoke-direct {p0}, Lcom/miui/zeus/monitor/crash/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "miui_name"

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "module_name"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "debug"

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->c()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/zeus/monitor/crash/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "----------------------------------------------\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, v2, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CrashMonitorRecorder"

    const-string v0, "saveCrash"

    invoke-static {p2, v0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x80000

    :try_start_1
    new-array v1, v1, [B

    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2

    invoke-virtual {v4, v1, v7, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_1
    array-length v5, v1

    if-ge v7, v5, :cond_3

    aget-byte v5, v1, v7

    and-int/lit16 v6, v5, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/zeus/monitor/crash/c;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/miui/zeus/utils/b/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_2
    :try_start_2
    const-string v1, "CrashMonitorRecorder"

    const-string v4, "getApkSHA1"

    invoke-static {v1, v4, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lcom/miui/zeus/utils/b/b;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcom/miui/zeus/utils/b/b;->a(Ljava/io/Closeable;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->a()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;

    move-result-object v0

    const-string v1, "exception"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "version"

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/zeus/utils/a/a;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    const-string v1, "sha1"

    invoke-direct {p0}, Lcom/miui/zeus/monitor/crash/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "miui_name"

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "module_name"

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/zeus/utils/a/a;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/CustomAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    iget-object v1, p0, Lcom/miui/zeus/monitor/crash/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/zeus/monitor/crash/c;->c:Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/analytics/Analytics;->setDebugOn(Z)V

    const-string v2, "systemadsolution_crash"

    invoke-virtual {v1, v2}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    const-string v2, "com.miui.systemAdSolution"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/monitor/crash/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/zeus/monitor/crash/c;->c:Z

    return-void
.end method
