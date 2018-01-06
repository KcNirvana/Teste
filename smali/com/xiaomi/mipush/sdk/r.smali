.class Lcom/xiaomi/mipush/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/r;->a:Ljava/lang/Object;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.xiaomi.channel.commonutils"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.common.logger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.xiaomi.measite.smack"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.xiaomi.metoknlp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.xiaomi.mipush.sdk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.xiaomi.network"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.xiaomi.push"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.xiaomi.slim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.xiaomi.smack"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.xiaomi.stats"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.xiaomi.tinyData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.xiaomi.xmpush.thrift"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.xiaomi.clientreport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/mipush/sdk/r;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/r;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/r;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/r;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/r;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mipush/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/r;->c()V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 4

    sget-object v1, Lcom/xiaomi/mipush/sdk/r;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/b/a/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/r;->d()V

    return-void
.end method

.method private b()Z
    .locals 10

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const/16 v5, 0xe10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    const-string v3, "mipush_extra"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->d:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/h;->av:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/h;->aw:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/r;->d:Landroid/content/SharedPreferences;

    const-string v6, "last_crash_upload_time_stamp"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-float v3, v4

    int-to-float v2, v2

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/b/a/e/d;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/h;->ax:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    const/16 v4, 0x708

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/r;->d:Landroid/content/SharedPreferences;

    const-string v6, "last_crash_upload_time_stamp"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/xiaomi/mipush/sdk/r;->a(ZLjava/lang/String;)Z

    move-result v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/s;-><init>(Lcom/xiaomi/mipush/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->c:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_crash_upload_time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/bg;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/xiaomi/mipush/sdk/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/r;->a:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
