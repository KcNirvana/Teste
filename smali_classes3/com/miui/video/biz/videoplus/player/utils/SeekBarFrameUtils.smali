.class public Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;,
        Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;,
        Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;,
        Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarFrameUtils"

.field private static volatile mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

.field private static volatile mIsCancleLastRequest:Z

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCacheTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDuration:J

.field private volatile mIsCodecDecodingBitmap:Z

.field private mLastUrl:Ljava/lang/String;

.field private mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

.field private mRotation:Ljava/lang/String;

.field private mSeekBarBitmapListCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

.field private mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/util/concurrent/ExecutorService;

.field private volatile mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mLastUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z

    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapListCache:Landroid/util/LruCache;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mCacheTemp:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapListCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->ensureRetrieverLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$700(JI)[J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getTimeList(JI)[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lorg/videolan/libvlc/MediaMetadataRetriever;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static cancleLastRequestBitmapList()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    return-void
.end method

.method private ensureRetrieverLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->releaseRetrieverLocked()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setFrameParam(ILandroid/graphics/Bitmap$Config;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRotation:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "SeekBarFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRetriever: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rotation="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRotation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " duration="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;-><init>()V

    sput-object v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    return-object v0
.end method

.method private static getTimeList(JI)[J
    .locals 6

    new-array v0, p2, [J

    int-to-long v1, p2

    div-long/2addr p0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    int-to-long v2, v1

    mul-long v2, v2, p0

    const-wide/16 v4, 0x0

    add-long/2addr v4, v2

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reTrimBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float v0, v4

    div-float/2addr p2, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private releaseRetrieverLocked()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    :cond_0
    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRotation:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    return-void
.end method


# virtual methods
.method public evictSeekBarBitmapListCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public execTask(Ljava/lang/String;[JIII)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;[JIIILjava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 p2, 0x2710

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "SeekBarFrameUtils"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getSeekBarFrameAtTime:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SeekBarFrameUtils"

    const-string p3, "getSeekBarFrameAtTime Fail "

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->releaseRetrieverLocked()V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "SeekBarFrameUtils"

    const-string p3, "getSeekBarFrameAtTime time out "

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->releaseRetrieverLocked()V

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public getDuration(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const-string p1, "SeekBarFrameUtils"

    const-string v0, "getDuration: cache"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    return-wide v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    new-instance v0, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    return-wide v1
.end method

.method public getFrameCount(I)I
    .locals 4

    div-int/lit16 p1, p1, 0x3e8

    if-gez p1, :cond_0

    const-string p1, "SeekBarFrameUtils"

    const-string v0, "the duration must more than 0"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x7

    int-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    :goto_0
    const/16 v0, 0x1e

    if-le p1, v0, :cond_3

    const/16 p1, 0x1e

    :cond_3
    return p1
.end method

.method public getSeekBarBitmapList(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "SeekBarFrameUtils"

    const-string p2, "pushBackTask execute"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getSeekBarBitmapListImpl(Ljava/lang/String;II)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v3, "SeekBarFrameUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSeekBarBitmapList: url\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "SeekBarFrameUtils"

    const-string v3, "getSeekBarBitmapList: useCache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "SeekBarFrameUtils"

    const-string v5, "getSeekBarBitmapList: wait lock"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SeekBarFrameUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSeekBarBitmapList: width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    const-string v7, "SeekBarFrameUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSeekBarBitmapList: get lock "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct/range {p0 .. p1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->ensureRetrieverLocked(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    iget-wide v9, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mDuration:J

    long-to-int v9, v9

    invoke-virtual {v1, v9}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getFrameCount(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getTimeList(JI)[J

    move-result-object v14

    array-length v15, v14

    const-string v7, "SeekBarFrameUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSeekBarBitmapList: count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v14

    :goto_0
    const/16 v16, 0x0

    if-ge v0, v11, :cond_3

    aget-wide v7, v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v7

    move-object v7, v9

    move-wide/from16 v8, v17

    move/from16 v10, p2

    move/from16 v17, v11

    move/from16 v11, p3

    move-object v6, v12

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getSeekBarFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v7, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCancleLastRequest:Z

    if-eqz v7, :cond_2

    const-string v0, "SeekBarFrameUtils"

    const-string v2, " CancleLastRequest"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-object v16

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object v12, v6

    move/from16 v11, v17

    move/from16 v6, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SeekBarFrameUtils"

    const-string v7, "getSeekBarFrameAtTime Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v6, v16

    goto :goto_1

    :cond_3
    move-object v6, v12

    :goto_1
    const-string v0, "SeekBarFrameUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSeekBarBitmapList: real cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    iget-object v0, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapListCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public pauseDecoder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "SeekBarFrameUtils"

    const-string v0, "pauseDecoder: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->pauseDecoder()I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public registerSeekBarBitmapsObserver(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;)V
    .locals 3

    const-string v0, "SeekBarFrameUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerSeekBarBitmapsObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_4
    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    sput-object v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mInstance:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    return-void
.end method

.method public releaseRetriever()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "SeekBarFrameUtils"

    const-string v3, "releaseRetriever: wait lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "SeekBarFrameUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseRetriever: get lock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->releaseRetrieverLocked()V

    const-string v3, "SeekBarFrameUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseRetriever: real cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameSurface(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->ensureRetrieverLocked(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setSurface(Landroid/view/Surface;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showPreviewFrameAtTime(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mTaskContainerShowPreview:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mThread:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "SeekBarFrameUtils"

    const-string p2, "pushBackTask execute"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startDecoder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "SeekBarFrameUtils"

    const-string v0, "startDecoder: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->startDecoder()I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mIsCodecDecodingBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public unRegisterSeekBarBitmapsObserver()V
    .locals 2

    const-string v0, "SeekBarFrameUtils"

    const-string v1, " unRegisterSeekBarBitmapsObserver "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->mSeekBarBitmapsObserver:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    return-void
.end method
