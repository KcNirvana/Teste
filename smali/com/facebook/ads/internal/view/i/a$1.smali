.class Lcom/facebook/ads/internal/view/i/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/a;->b(Lcom/facebook/ads/internal/view/i/a;)Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/i/b/o;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/i/b/o;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/e;->a(Lcom/facebook/ads/internal/o/d;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/a;->d(Lcom/facebook/ads/internal/view/i/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/a$1;->a:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i/a;->c(Lcom/facebook/ads/internal/view/i/a;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
