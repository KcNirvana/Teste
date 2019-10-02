.class Lcom/facebook/ads/internal/adapters/e$2;
.super Lcom/facebook/ads/internal/adapters/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerLoggingImpression(Lcom/facebook/ads/internal/adapters/e;)V

    :cond_0
    return-void
.end method
