.class public final Lcom/alipay/mobile/common/cache/DiskCacheFile;
.super Ljava/io/File;
.source "DiskCacheFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field cacheEntity:Lcom/alipay/mobile/common/cache/a;

.field lock:Lcom/alipay/mobile/common/common/a/h;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/a;Ljava/lang/String;Lcom/alipay/mobile/common/common/a/h;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/DiskCacheFile;->cacheEntity:Lcom/alipay/mobile/common/cache/a;

    iput-object p3, p0, Lcom/alipay/mobile/common/cache/DiskCacheFile;->lock:Lcom/alipay/mobile/common/common/a/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/DiskCacheFile;->lock:Lcom/alipay/mobile/common/common/a/h;

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public commit()Lcom/alipay/mobile/common/cache/DiskCacheFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->getDiskCache()Lcom/alipay/mobile/common/cache/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/DiskCacheFile;)Lcom/alipay/mobile/common/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->close()V

    return-void
.end method

.method public getCacheEntity()Lcom/alipay/mobile/common/cache/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/DiskCacheFile;->cacheEntity:Lcom/alipay/mobile/common/cache/a;

    return-object v0
.end method

.method public getDiskCache()Lcom/alipay/mobile/common/cache/c;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/c;

    move-result-object v0

    return-object v0
.end method
