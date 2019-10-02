.class Lcom/facebook/ads/internal/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/g;

.field final synthetic b:Lcom/facebook/ads/internal/b/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/f;Lcom/facebook/ads/internal/adapters/g;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/f$1;->a:Lcom/facebook/ads/internal/adapters/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/f$1;->a:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/internal/b/f;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$1;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->i()V

    :goto_0
    return-void
.end method
