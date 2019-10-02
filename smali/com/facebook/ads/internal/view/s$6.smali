.class Lcom/facebook/ads/internal/view/s$6;
.super Lcom/facebook/ads/internal/view/i/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/s;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/s;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/s$6;->a(Lcom/facebook/ads/internal/view/i/b/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/o;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->i(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/c/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getDuration()I

    move-result p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0xbb8

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->i(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$6;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->i(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/d;->b()V

    :cond_1
    :goto_0
    return-void
.end method
