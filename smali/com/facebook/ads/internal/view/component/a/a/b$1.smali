.class Lcom/facebook/ads/internal/view/component/a/a/b$1;
.super Lcom/facebook/ads/internal/view/i/b/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/component/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/component/a/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b$1;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/w;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b$1;->a(Lcom/facebook/ads/internal/view/i/b/w;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/w;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b$1;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Lcom/facebook/ads/internal/view/component/a/a/b;)Lcom/facebook/ads/internal/view/e/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/a;->c()Lcom/facebook/ads/internal/view/component/a/a/b$e;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b$1;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getVideoView()Lcom/facebook/ads/internal/view/e/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/d;->getVolume()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/view/component/a/a/b$e;->a(F)V

    return-void
.end method
