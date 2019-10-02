.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;
.super Ljava/lang/Object;
.source "DrainTimedText.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrainTimedText"


# instance fields
.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

.field private mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

.field private mSubtitleTextListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;Lcom/miui/video/base/common/task/WeakHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrainTimedText  player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;

    return-void
.end method

.method private handleTimedText()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;->setType(I)V

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->TAG:Ljava/lang/String;

    const-string v2, "handleTimedText clear text"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->getSubData()Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;

    move-result-object v0

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimedText display text idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->getIdx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    invoke-interface {v3}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;

    invoke-interface {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;->onSubtitleData(Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimedText: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public clearTimedText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->handleTimedText()V

    return-void
.end method

.method public drainTimedText(Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {p1, p0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->handleTimedText()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mShowingText:Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->handleTimedText()V

    return-void
.end method

.method public setSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainTimedText;->mSubtitleTextListener:Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;

    return-void
.end method
