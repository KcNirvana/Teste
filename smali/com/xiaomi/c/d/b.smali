.class public Lcom/xiaomi/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/c/d/g;


# instance fields
.field private a:Lcom/xiaomi/c/d/f;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/c/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v7, 0x4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v7, [B

    new-array v4, v7, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
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

    if-ne v2, v8, :cond_1

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    :goto_2
    return-object v3

    :cond_1
    if-eq v2, v7, :cond_2

    :try_start_2
    const-string v0, "eventData read from cache file failed because magicNumber error"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_2
    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/b/a/d/b;->a([B)I

    move-result v2

    const v5, -0x22334456

    if-eq v2, v5, :cond_3

    const-string v0, "eventData read from cache file failed because magicNumber error"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/InputStream;)V

    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_0

    if-eq v2, v7, :cond_4

    const-string v0, "eventData read from cache file failed cause lengthBuffer error"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/xiaomi/b/a/d/b;->a([B)I

    move-result v2

    const/4 v5, 0x1

    if-lt v2, v5, :cond_5

    const/16 v5, 0x1000

    if-le v2, v5, :cond_6

    :cond_5
    const-string v0, "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-array v5, v2, [B

    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v2, :cond_7

    const-string v0, "eventData read from cache file failed cause buffer size not equal length"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v5}, Lcom/xiaomi/c/d/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Lcom/xiaomi/c/a/a;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/c/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/c/d/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v3, :cond_0

    array-length v1, v0

    const/16 v3, 0x1000

    if-le v1, v3, :cond_1

    :cond_0
    const-string v0, "event data throw a invalid item "

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, -0x22334456

    :try_start_1
    invoke-static {v2}, Lcom/xiaomi/b/a/d/b;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    array-length v2, v0

    invoke-static {v2}, Lcom/xiaomi/b/a/d/b;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v2, "event data write to cache file failed cause io exception"

    invoke-static {v2, v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string v2, "event data write to cache file failed cause exception"

    invoke-static {v2, v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private b(Lcom/xiaomi/c/a/a;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    const-string v2, "event"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget v2, p1, Lcom/xiaomi/c/a/a;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/16 v0, 0x64

    if-ge v2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/c/d/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v3

    const-string v4, "sp_client_report_status"

    const-string v5, "sp_client_report_file_length_key"

    const-wide/32 v6, 0x100000

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/File;)Z

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b()[Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    const-string v1, "eventUploading"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/c/d/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/c/d/c;-><init>(Lcom/xiaomi/c/d/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->a:Lcom/xiaomi/c/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->a:Lcom/xiaomi/c/d/f;

    invoke-interface {v0, p1}, Lcom/xiaomi/c/d/f;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    const-string v2, "event"

    const-string v3, "eventUploading"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/c/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/c/d/b;->b()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v7, v6

    const/4 v0, 0x0

    move v5, v0

    move-object v3, v1

    move-object v4, v1

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ".lock"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    :try_start_3
    iget-object v3, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    invoke-direct {p0, v3, v8}, Lcom/xiaomi/c/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/xiaomi/c/d/b;->a(Landroid/content/Context;Ljava/util/List;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_4
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-static {v3}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v3

    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_6
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catch_4
    move-exception v3

    invoke-static {v3}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v3

    move-object v4, v2

    move-object v10, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v10

    :goto_7
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_8
    invoke-static {v4}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    throw v0

    :catch_5
    move-exception v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v4, v2

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v2, v4

    move-object v10, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v4

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v2, v4

    move-object v10, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_3

    :catch_a
    move-exception v1

    move-object v2, v4

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_3

    :catch_b
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto/16 :goto_3
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/xiaomi/c/e/a;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/xiaomi/c/a/a;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/c/d/b;->b(Lcom/xiaomi/c/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".lock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/c/d/b;->b:Landroid/content/Context;

    invoke-direct {p0, v3, p1, v0}, Lcom/xiaomi/c/d/b;->a(Landroid/content/Context;Lcom/xiaomi/c/a/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    invoke-static {v2}, Lcom/xiaomi/b/a/b/a;->a(Ljava/io/RandomAccessFile;)V

    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public a(Lcom/xiaomi/c/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/d/b;->a:Lcom/xiaomi/c/d/f;

    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->a:Lcom/xiaomi/c/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/d/b;->a:Lcom/xiaomi/c/d/f;

    invoke-interface {v0, p1}, Lcom/xiaomi/c/d/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
