.class Lcom/facebook/ads/MediaViewVideoRenderer$2;
.super Lcom/facebook/ads/internal/view/i/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/k;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a(Lcom/facebook/ads/internal/view/i/b/k;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/k;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object p1, p1, Lcom/facebook/ads/MediaViewVideoRenderer;->a:Lcom/facebook/ads/NativeAd;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object p1, p1, Lcom/facebook/ads/MediaViewVideoRenderer;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/facebook/ads/internal/t/e;->a(ZZ)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    return-void
.end method
