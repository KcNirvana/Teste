.class Lcom/facebook/ads/internal/view/i/b$3;
.super Lcom/facebook/ads/internal/view/i/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/b$3;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/b$3;->a(Lcom/facebook/ads/internal/view/i/b/m;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/m;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/b$3;->a:Lcom/facebook/ads/internal/view/i/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/b$3;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/b;->b(Lcom/facebook/ads/internal/view/i/b;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getDuration()I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/internal/view/i/b;->a:I

    return-void
.end method
