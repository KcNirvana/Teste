.class Lcom/facebook/ads/internal/view/p$1;
.super Lcom/facebook/ads/internal/view/i/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/p;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/p;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/p$1;->a:Lcom/facebook/ads/internal/view/p;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/k;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/p$1;->a(Lcom/facebook/ads/internal/view/i/b/k;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/k;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/p$1;->a:Lcom/facebook/ads/internal/view/p;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/p;->a(Lcom/facebook/ads/internal/view/p;)Lcom/facebook/ads/internal/view/q;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/p$1;->a:Lcom/facebook/ads/internal/view/p;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/p;->a(Lcom/facebook/ads/internal/view/p;)Lcom/facebook/ads/internal/view/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/q;->c()V

    return-void
.end method
