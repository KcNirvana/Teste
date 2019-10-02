.class public final Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;
.super Lcom/facebook/ads/MediaViewVideoRenderer;


# instance fields
.field private d:Lcom/facebook/ads/internal/t/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/t/c;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/internal/t/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->setVolume(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/facebook/ads/internal/t/c;

    invoke-direct {p2, p1, p0}, Lcom/facebook/ads/internal/t/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->setVolume(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/facebook/ads/internal/t/c;

    invoke-direct {p2, p1, p0}, Lcom/facebook/ads/internal/t/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->setVolume(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/facebook/ads/internal/t/c;

    invoke-direct {p2, p1, p0}, Lcom/facebook/ads/internal/t/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->setVolume(F)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/c;->a()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/c;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/c;->d()V

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onDetachedFromWindow()V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback$1;-><init>(Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/c;->b()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/c;->e()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/c;->f()V

    return-void
.end method

.method protected setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback;->d:Lcom/facebook/ads/internal/t/c;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/c;->a(Lcom/facebook/ads/internal/t/e;)V

    return-void
.end method

.method public shouldAllowBackgroundPlayback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
