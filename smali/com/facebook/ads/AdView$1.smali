.class Lcom/facebook/ads/AdView$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    iput-object p2, p0, Lcom/facebook/ads/AdView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/facebook/ads/internal/view/c/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->d(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/protocol/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/protocol/f;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/internal/protocol/d;)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {p1, v0}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    new-instance v0, Lcom/facebook/ads/internal/view/c/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/c/c;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/view/c/c;)Lcom/facebook/ads/internal/view/c/c;

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/b;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/b;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/view/c/c;->a(J)V

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/facebook/ads/internal/view/c/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->a(Lcom/facebook/ads/internal/x/a;)V

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/facebook/ads/AdView$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AdView$1$1;-><init>(Lcom/facebook/ads/AdView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot present null view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/b;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method
