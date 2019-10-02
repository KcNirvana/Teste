.class public Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;
.super Ljava/lang/Object;
.source "VideoTask.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    return-object p0
.end method

.method private getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
