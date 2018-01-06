.class public Lcom/xiaomi/push/service/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/be;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tiny_data.data"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TinyData no ready file to get data."

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/be;->b(Landroid/content/Context;)[B

    move-result-object v1

    sget-object v5, Lcom/xiaomi/push/service/be;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v6, "tiny_data.lock"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/File;)Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    invoke-static {v4, v1}, Lcom/xiaomi/push/service/be;->a(Ljava/io/File;[B)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_3
    :try_start_9
    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    :goto_5
    :try_start_c
    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/io/File;[B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/f;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v6, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    return-object v3

    :cond_0
    if-eq v2, v6, :cond_1

    :try_start_2
    const-string v0, "TinyData read from cache file failed cause lengthBuffer error"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/b/a/d/b;->a([B)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7800

    if-le v2, v4, :cond_3

    :cond_2
    const-string v0, "TinyData read from cache file failed cause lengthBuffer < 1 || too big"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array v4, v2, [B

    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v2, :cond_4

    const-string v0, "TinyData read from cache file failed cause buffer size not equal length"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v4}, Lcom/xiaomi/b/a/a/c;->a([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v4, v2

    if-nez v4, :cond_6

    :cond_5
    const-string v2, "TinyData read from cache file failed cause decrypt fail"

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v4, Lcom/xiaomi/j/a/f;

    invoke-direct {v4}, Lcom/xiaomi/j/a/f;-><init>()V

    invoke-static {v4, v2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData cache data to file begin itemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/bf;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/service/bf;-><init>(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/b/a/h/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/be;->c(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/b/a/a/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/a/h;

    move-result-object v0

    const-string v1, "mipush"

    const-string v2, "td_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/b/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/xiaomi/b/a/h/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/b/a/a/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/a/h;

    move-result-object v1

    const-string v2, "mipush"

    const-string v3, "td_key"

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/b/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/push/service/be;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/xiaomi/push/service/be;->b(Landroid/content/Context;)[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/b/a/a/c;->b([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData write to cache file failed case encryption fail item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    :goto_0
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    array-length v1, v0

    const/16 v3, 0x7800

    if-le v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData write to cache file failed case too much data content item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "tiny_data.data"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    array-length v3, v0

    invoke-static {v3}, Lcom/xiaomi/b/a/d/b;->a(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    const-string v3, "TinyData write to cache file failed cause io exception"

    invoke-static {v3, v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string v3, "TinyData write to cache file  failed"

    invoke-static {v3, v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/Writer;)V

    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3
.end method
