.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;
.super Landroid/os/AsyncTask;
.source "Shotter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenShotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/media/Image;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalFileName:Ljava/lang/String;

.field private mLocalUrl:Ljava/lang/String;

.field private mOnShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mOnShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/media/Image;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    mul-int v6, v5, v1

    sub-int/2addr v3, v6

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v3, v0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    check-cast p1, [Landroid/media/Image;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->doInBackground([Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mOnShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mOnShotListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->mLocalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
