.class public Lcom/miui/video/localvideoplayer/VideoFrameService;
.super Landroid/app/Service;
.source "VideoFrameService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFrameService"

.field private static final TOKEN_PREPARE:Ljava/lang/String; = "TOKEN_PREPARE"

.field private static final TOKEN_PREVIEW:Ljava/lang/String; = "TOKEN_PREVIEW"

.field private static final TOKEN_RELEASE:Ljava/lang/String; = "TOKEN_RELEASE"

.field private static final TOKEN_SET_SURFACE:Ljava/lang/String; = "TOKEN_SET_SURFACE"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private stub:Lcom/miui/video/localvideoplayer/VideoFrameInterface$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/video/localvideoplayer/VideoFrameService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;

    invoke-direct {v0, p0}, Lcom/miui/video/localvideoplayer/VideoFrameService$1;-><init>(Lcom/miui/video/localvideoplayer/VideoFrameService;)V

    iput-object v0, p0, Lcom/miui/video/localvideoplayer/VideoFrameService;->stub:Lcom/miui/video/localvideoplayer/VideoFrameInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/localvideoplayer/VideoFrameService;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/localvideoplayer/VideoFrameService;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/localvideoplayer/VideoFrameService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/localvideoplayer/VideoFrameService;->waitReturn()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/localvideoplayer/VideoFrameService;Landroid/graphics/Bitmap;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/localvideoplayer/VideoFrameService;->getData(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method private getData(Landroid/graphics/Bitmap;)[B
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length p1, v8

    mul-int/lit8 v0, p1, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget v3, v8, v2

    mul-int/lit8 v4, v2, 0x4

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x3

    shr-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$postAsyncTask$51(Ljava/lang/Runnable;)V
    .locals 1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lcom/miui/video/localvideoplayer/VideoFrameService;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/video/localvideoplayer/VideoFrameService;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$4zkljrY8akE8ctobzrGlX1k-wNI;

    invoke-direct {v0, p1}, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$4zkljrY8akE8ctobzrGlX1k-wNI;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1, v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTask(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private waitReturn()V
    .locals 4

    sget-object v0, Lcom/miui/video/localvideoplayer/VideoFrameService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/localvideoplayer/VideoFrameService;->sLock:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/video/localvideoplayer/VideoFrameService;->stub:Lcom/miui/video/localvideoplayer/VideoFrameInterface$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onCreate(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "VideoFrameService"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->removeAllLifeAsyncTask(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onDestroy(I)V

    return-void
.end method
