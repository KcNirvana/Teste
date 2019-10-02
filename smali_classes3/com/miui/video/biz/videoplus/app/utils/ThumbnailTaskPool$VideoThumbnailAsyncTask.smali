.class public Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoThumbnailAsyncTask"
.end annotation


# instance fields
.field public mDefaultRes:I

.field protected mFilePath:Ljava/lang/String;

.field public mKey:I

.field public mVideoUri:Ljava/lang/String;

.field public mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mKey:I

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mViewRef:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    iput p5, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mKey:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mKey:I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
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
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailUtils;->saveThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveToFileImp(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, p1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const-string p1, "ThumbnailTaskStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToFileImp: during = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
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
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
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

    instance-of v0, p1, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public load(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public postResult(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;-><init>(Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
