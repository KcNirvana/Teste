.class Lcom/facebook/ads/InstreamVideoAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1, p2}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object p2, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p2}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot present null view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/AdError;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {p1, v0, p2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    return-void
.end method
