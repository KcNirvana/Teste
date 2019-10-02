.class public Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;
.super Ljava/lang/Object;
.source "DrainTimedText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

.field private mSubtitleTextListener:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-void
.end method

.method private handleTimedText()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->setType(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->getSubData()Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;

    invoke-interface {v1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;->onSubtitleData(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public clearTimedText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->handleTimedText()V

    return-void
.end method

.method public drainTimedText(Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {p1, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->handleTimedText()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->handleTimedText()V

    return-void
.end method

.method public setSubtitleTextListener(Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;

    return-void
.end method
