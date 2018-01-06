.class public Lcom/xiaomi/ad/internal/common/io/FileLock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mFileLock:Ljava/nio/channels/FileLock;

.field mOs:Ljava/io/FileOutputStream;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/io/FileLock;->release()V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/IOUtils;->closeSafely(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mOs:Ljava/io/FileOutputStream;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/io/FileLock;->mFileLock:Ljava/nio/channels/FileLock;

    throw v0
.end method
