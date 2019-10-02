.class public Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;
.super Ljava/lang/Object;
.source "SubtitleVideDelegate.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleSettingListener;


# static fields
.field private static final MSG_SUBTITLE_GONE:I = 0x0

.field private static final MSG_SUBTITLE_VISIBLE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SubtitleVideDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHolderView:Landroid/widget/FrameLayout;

.field private mImageSubSurface:Landroid/view/SurfaceView;

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

.field private mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mHolderView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initSubtitleSetting()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    if-eqz v0, :cond_1

    const/16 v0, -0x64

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$array;->subtitle_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v3, "subtitle_font_size"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    array-length v3, v1

    if-le v3, v2, :cond_0

    aget v1, v1, v2

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41f00000    # 30.0f

    :goto_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v3, "subtitle_font_color"

    const v4, 0xffffff

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v2, v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextColor(II)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextAlpha(I)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v2, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextSize(F)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitlePadding(I)V

    :cond_1
    return-void
.end method

.method private restoreSubtitleTracks()V
    .locals 2

    const-string v0, "SubtitleVideDelegate"

    const-string v1, "restoreSubtitleTracks: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->selectSubtitleTrack(I)V

    return-void
.end method


# virtual methods
.method public clearMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->closeSubtitle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    :cond_0
    return-void
.end method

.method public clearText()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->clear()V

    :cond_0
    return-void
.end method

.method public closeSubtitle(Z)V
    .locals 3

    const-string v0, "SubtitleVideDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSubtitle close:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mHandler:Landroid/os/Handler;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public getImageSubSurface()Landroid/view/SurfaceView;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    if-nez v0, :cond_0

    const-string v0, "SubtitleVideDelegate"

    const-string v1, "create SubtitleView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->initSubtitleSetting()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setVisibility(I)V

    const-string v0, "SubtitleVideDelegate"

    const-string v1, "create SubtitleView done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    return-object v0
.end method

.method public onDetachView(Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mHolderView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mImageSubSurface:Landroid/view/SurfaceView;

    :cond_1
    return-void
.end method

.method public onSubTrackClose(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->closeSubtitle(Z)V

    return-void
.end method

.method public onSubTrackLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SubtitleVideDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubTrackLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPlayingState()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->restoreSubtitleTracks()V

    :cond_1
    return-void
.end method

.method public onSubtitleAlphaChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextAlpha(I)V

    return-void
.end method

.method public onSubtitleColorChanged(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextColor(II)V

    return-void
.end method

.method public onSubtitleDelayed(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setSubtitleTimeOffset(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mSubtitleView:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->showOffsetToast(I)V

    return-void
.end method

.method public onSubtitlePaddingChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitlePadding(I)V

    return-void
.end method

.method public onSubtitleSizeChanged(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextSize(F)V

    return-void
.end method

.method public onSubtitleStyleDone()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->stopSettingStyleMode()V

    return-void
.end method

.method public onSubtitleStyleStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->startSettingStyleMode()V

    return-void
.end method

.method public onSubtitleTimeDone()V
    .locals 0

    return-void
.end method

.method public onSubtitleTimeStart()V
    .locals 0

    return-void
.end method

.method public onSubtitleTypefaceChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setSubtitleTextTypefacePath(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPrepared(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->initSub(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSeeked()V
    .locals 0

    return-void
.end method

.method public setMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setOnSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setOnSubtitleTrackListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;)V

    return-void
.end method
