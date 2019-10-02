.class Lcom/facebook/ads/internal/view/i/c/j$1;
.super Lcom/facebook/ads/internal/view/i/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$1;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/j$1;->a(Lcom/facebook/ads/internal/view/i/b/m;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/m;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$1;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/j;->a(Lcom/facebook/ads/internal/view/i/c/j;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
