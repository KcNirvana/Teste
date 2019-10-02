.class final Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/video/VideoListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/player/ExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/ExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/kaltura/playkit/player/ExoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaltura/playkit/player/ExoPlayerView;Lcom/kaltura/playkit/player/ExoPlayerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;-><init>(Lcom/kaltura/playkit/player/ExoPlayerView;)V

    return-void
.end method

.method private applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    div-float v4, v1, v4

    int-to-float p2, p2

    invoke-virtual {v3, p2, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v2, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v0, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr v1, p2

    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$100(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$100(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$400(Lcom/kaltura/playkit/player/ExoPlayerView;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$500(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$500(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$200(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$300(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_7

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_3

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_4

    :cond_3
    div-float/2addr v0, p1

    move p1, v0

    :cond_4
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$400(Lcom/kaltura/playkit/player/ExoPlayerView;)I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$300(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2, p3}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$402(Lcom/kaltura/playkit/player/ExoPlayerView;I)I

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$400(Lcom/kaltura/playkit/player/ExoPlayerView;)I

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$300(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$300(Lcom/kaltura/playkit/player/ExoPlayerView;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p3}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$400(Lcom/kaltura/playkit/player/ExoPlayerView;)I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    :cond_7
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerView$ComponentListener;->this$0:Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-static {p2}, Lcom/kaltura/playkit/player/ExoPlayerView;->access$200(Lcom/kaltura/playkit/player/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    return-void
.end method
