.class public Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
.super Ljava/lang/Object;
.source "LocalMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;,
        Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;
    }
.end annotation


# static fields
.field public static final ONLY_SYNC_VIDEO:Z = true


# instance fields
.field private final TYPE_IMAGE:I

.field private final TYPE_VIDEO:I

.field private mAllType:[I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

.field private mHasStopped:Z

.field private mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

.field private mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeCount:I

.field private mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->TYPE_IMAGE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->TYPE_VIDEO:I

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHasStopped:Z

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->initSyncType()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mMedias:Ljava/util/List;

    new-instance p1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;IZLjava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->handleResult(IZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mTypeCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->loadFinished(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->reset()V

    return-void
.end method

.method private handleResult(IZLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput v0, p2, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iput v1, p2, Landroid/os/Message;->what:I

    :cond_1
    :goto_0
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "exception_msg"

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initSyncType()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    return-void
.end method

.method private loadFinished(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHasStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mTypeCount:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mMedias:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mTypeCount:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHasStopped:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->initSyncType()V

    return-void
.end method

.method private startImageTask()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$2;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/TaskFactory;->createTask(ILandroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;->start()V

    return-void
.end method

.method private startVideoTask()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/TaskFactory;->createTask(ILandroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;->start()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mImageTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mVideoTask:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setOnMediaLoadListener(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHasStopped:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mHasStopped:Z

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->startVideoTask()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->startImageTask()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public start([I)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->mAllType:[I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->start()V

    return-void
.end method
