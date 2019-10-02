.class public Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/utils/ThumbnailTaskPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoThumbnailAsyncTask"
.end annotation


# instance fields
.field public mDefaultRes:I

.field protected mFilePath:Ljava/lang/String;

.field public mVideoUri:Ljava/lang/String;

.field public mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;


# direct methods
.method public constructor <init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    iput-object p2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mView:Landroid/widget/ImageView;

    iput p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    iput-object p2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mView:Landroid/widget/ImageView;

    iput p4, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    return-void
.end method

.method private getFrameAt(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v2, 0x3e8

    mul-long p2, p2, v2

    const/4 p1, 0x2

    invoke-virtual {v1, p2, p3, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_0
    move-object p1, v0

    :goto_1
    return-object p1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_1
    throw p1
.end method

.method private getThumbCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/thumb/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/video/service/utils/MediaMetaMgr;->getInstance()Lcom/miui/video/service/utils/MediaMetaMgr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/video/service/utils/MediaMetaMgr;->getThumbValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getThumbCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".thumb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getFrameAt(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->saveToFileImp(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    const-string v0, "ThumbnailTaskStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/service/utils/MediaMetaMgr;->getInstance()Lcom/miui/video/service/utils/MediaMetaMgr;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/miui/video/service/utils/MediaMetaMgr;->putThumbItem(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private saveToFileImp(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public load(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public postResult(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/task/AsyncTaskUtils;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;-><init>(Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
