.class public Lcom/kaltura/playkit/player/MediaPlayerView;
.super Lcom/kaltura/playkit/player/PlayerView;
.source "MediaPlayerView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Landroid/view/SurfaceHolder;

.field private posterView:Landroid/view/View;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaPlayerView"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaPlayerView;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/player/MediaPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaltura/playkit/player/MediaPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kaltura/playkit/player/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerView;->initSurfaceView()V

    return-void
.end method

.method private initPosterView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private initSurfaceView()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerView;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "initSurfaceView"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerView;->initPosterView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->posterView:Landroid/view/View;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/kaltura/playkit/player/MediaPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->posterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->holder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hideVideoSubtitles()V
    .locals 0

    return-void
.end method

.method public hideVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public showVideoSubtitles()V
    .locals 0

    return-void
.end method

.method public showVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/player/MediaPlayerView;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "surfaceCreated"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerView;->posterView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
