.class public Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;
.super Ljava/lang/Object;
.source "GalleryLifeCycle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryLifeCycle"

.field private static final sRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTaskHandlerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sTaskThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAsyncThread()V
    .locals 2

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "GalleryLifeCycle"

    const-string v1, "checkAsyncThread: must run in Thread-Gallery-Task thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDestroyInternal$46()V
    .locals 0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->releaseRetriever()V

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->releaseCache()V

    return-void
.end method

.method public static onCreate(I)V
    .locals 3

    const-string v0, "GalleryLifeCycle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onCreateInternal()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static onCreateInternal()V
    .locals 2

    const-string v0, "GalleryLifeCycle"

    const-string v1, "onCreateInternal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Thread-Gallery-Task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public static onDestroy(I)V
    .locals 3

    const-string v0, "GalleryLifeCycle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    sget-object p0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onDestroyInternal()V

    :cond_0
    return-void
.end method

.method private static onDestroyInternal()V
    .locals 2

    const-string v0, "GalleryLifeCycle"

    const-string v1, "onDestroyInternal: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->removeAllAsyncTask()V

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/-$$Lambda$GalleryLifeCycle$W9IUrJ2EkOjHE17UDSBBLf611vA;->INSTANCE:Lcom/miui/video/galleryplus/galleryvideo/-$$Lambda$GalleryLifeCycle$W9IUrJ2EkOjHE17UDSBBLf611vA;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAsyncTask(ILjava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTaskDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static postAsyncTask(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTaskDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public static postAsyncTaskDelayed(ILjava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static postAsyncTaskDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method private static removeAllAsyncTask()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeAllLifeAsyncTask(I)V
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static removeAsyncTask(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static removeAsyncTask(ILjava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->sTaskHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
