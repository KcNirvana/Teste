.class Lcom/kaltura/playkit/player/ExoPlayerView;
.super Lcom/kaltura/playkit/player/BaseExoplayerView;
.source "ExoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;
    }
.end annotation


# instance fields
.field private componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

.field private contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private shutterView:Landroid/view/View;

.field private subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private textureViewRotation:I

.field private videoSurface:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/player/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaltura/playkit/player/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/player/BaseExoplayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;-><init>(Lcom/kaltura/playkit/player/ExoPlayerView;Lcom/kaltura/playkit/player/ExoPlayerView$1;)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->initContentFrame()V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->initSubtitleLayout()V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->initPosterView()V

    return-void
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kaltura/playkit/player/ExoPlayerView;)I
    .locals 0

    iget p0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$402(Lcom/kaltura/playkit/player/ExoPlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method private addVideoSurface(ZZ)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->resetViews()V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerView;->createVideoSurface(Z)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    check-cast p2, Landroid/view/TextureView;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, p2}, Landroid/view/SurfaceView;->setSecure(Z)V

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    check-cast p2, Landroid/view/SurfaceView;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :goto_0
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_2
    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createVideoSurface(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    :goto_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initContentFrame()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initPosterView()V
    .locals 2

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initSubtitleLayout()V
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeVideoSurface()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    instance-of v2, v2, Landroid/view/TextureView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    check-cast v2, Landroid/view/TextureView;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->componentListener:Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->shutterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideVideoSubtitles()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    return-void
.end method

.method public hideVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->removeVideoSurface()V

    :cond_1
    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0, p2, p3}, Lcom/kaltura/playkit/player/ExoPlayerView;->addVideoSurface(ZZ)V

    return-void
.end method

.method public setVideoSurfaceProperties(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerView;->removeVideoSurface()V

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->addVideoSurface(ZZ)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/kaltura/playkit/player/BaseExoplayerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showVideoSubtitles()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    return-void
.end method

.method public showVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->videoSurface:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    return-void
.end method
