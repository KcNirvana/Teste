.class Lcom/facebook/ads/InstreamVideoAdView$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->getController()Lcom/facebook/ads/internal/b/d;
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

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->d(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    new-instance v0, Lcom/facebook/ads/internal/view/c/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/c/c;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Lcom/facebook/ads/internal/view/c/c;)Lcom/facebook/ads/internal/view/c/c;

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->e(Lcom/facebook/ads/InstreamVideoAdView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->d(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/d;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/d;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/view/c/c;->a(J)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/facebook/ads/InstreamVideoAdView$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/InstreamVideoAdView$1$1;-><init>(Lcom/facebook/ads/InstreamVideoAdView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot present null view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/b/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {p1, v0}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    return-void
.end method
