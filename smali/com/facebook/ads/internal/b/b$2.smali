.class Lcom/facebook/ads/internal/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/BannerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/ads/internal/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/b$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked(Lcom/facebook/ads/internal/adapters/e;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/b;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/e;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/b;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/b;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/b;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iput-object p1, v1, Lcom/facebook/ads/internal/b/b;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iput-object p2, v1, Lcom/facebook/ads/internal/b/b;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-boolean v1, v1, Lcom/facebook/ads/internal/b/b;->a:Z

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object p2, p2, Lcom/facebook/ads/internal/b/b;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/b;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    :goto_0
    return-void
.end method

.method public onBannerError(Lcom/facebook/ads/internal/adapters/e;Lcom/facebook/ads/AdError;)V
    .locals 1

    iget-object p2, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object p2, p2, Lcom/facebook/ads/internal/b/b;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/b/b;->j()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$2;->a:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/b;->i()V

    return-void
.end method

.method public onBannerLoggingImpression(Lcom/facebook/ads/internal/adapters/e;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/b$2;->b:Lcom/facebook/ads/internal/b/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/b;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method
