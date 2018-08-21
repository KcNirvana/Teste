.class public final Lcom/alipay/mobile/common/common/a/h;
.super Ljava/lang/Object;
.source "ProcessLock.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final f:Lcom/alipay/mobile/common/common/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/a/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/common/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/text/DecimalFormat;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/nio/channels/FileLock;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/Closeable;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/common/a/b;

    invoke-direct {v0}, Lcom/alipay/mobile/common/common/a/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "process_lock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.##################"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/common/a/h;->g:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/common/a/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/common/a/h;->b:Ljava/nio/channels/FileLock;

    iput-object p2, p0, Lcom/alipay/mobile/common/common/a/h;->c:Ljava/io/File;

    iput-object p4, p0, Lcom/alipay/mobile/common/common/a/h;->d:Ljava/io/Closeable;

    iput-boolean p5, p0, Lcom/alipay/mobile/common/common/a/h;->e:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/common/common/a/h;
    .locals 11

    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-object v10, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/common/a/b;->a(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/common/a/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/a/h;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    monitor-exit v10

    move-object v2, v8

    :goto_1
    return-object v2

    :cond_2
    iget-boolean v0, v0, Lcom/alipay/mobile/common/common/a/h;->e:Z

    if-eqz v0, :cond_0

    monitor-exit v10

    move-object v2, v8

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "process_lock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    if-eqz p2, :cond_7

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_a

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-nez p2, :cond_6

    const/4 v6, 0x1

    :cond_6
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/nio/channels/FileLock;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/alipay/mobile/common/common/a/h;

    move-object v3, p0

    move-object v4, v0

    move-object v6, v9

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/common/a/h;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V

    sget-object v0, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, v3, v2}, Lcom/alipay/mobile/common/common/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_5
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_2

    :cond_8
    :try_start_6
    invoke-static {p0, v5, v0, v9}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    :goto_3
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v2, v8

    goto :goto_1

    :cond_a
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not get file channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v9

    :goto_4
    :try_start_9
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "ProcessLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tryLock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Z)Lcom/alipay/mobile/common/common/a/h;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/common/common/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZJ)Lcom/alipay/mobile/common/common/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {p0}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    invoke-static {p0, v1, p1}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/common/common/a/h;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    aget-byte v4, v1, v0

    int-to-double v4, v4

    add-double/2addr v2, v4

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/common/a/h;->g:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    .locals 4

    sget-object v1, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    monitor-enter v1

    if-eqz p1, :cond_3

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/common/common/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/alipay/mobile/common/common/a/h;->f:Lcom/alipay/mobile/common/common/a/b;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/common/a/b;->a(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/File;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    :cond_3
    :goto_0
    invoke-static {p3}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ProcessLock"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static a(Ljava/nio/channels/FileLock;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/common/a/h;->b:Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/nio/channels/FileLock;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/common/a/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/common/a/h;->b:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lcom/alipay/mobile/common/common/a/h;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/common/a/h;->d:Ljava/io/Closeable;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/common/a/h;->a(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/a/h;->b()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/common/a/h;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/common/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/common/a/h;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
