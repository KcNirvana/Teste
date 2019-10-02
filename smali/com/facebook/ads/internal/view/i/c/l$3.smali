.class Lcom/facebook/ads/internal/view/i/c/l$3;
.super Lcom/facebook/ads/internal/view/i/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$3;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/l$3;->a(Lcom/facebook/ads/internal/view/i/b/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/c;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$3;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/l;->a(Lcom/facebook/ads/internal/view/i/c/l;)Lcom/facebook/ads/internal/view/i/c/m;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/c/m;->setChecked(Z)V

    return-void
.end method
