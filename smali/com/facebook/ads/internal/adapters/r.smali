.class public Lcom/facebook/ads/internal/adapters/r;
.super Lcom/facebook/ads/internal/adapters/b;


# instance fields
.field private final c:Lcom/facebook/ads/internal/s/c;

.field private final d:Lcom/facebook/ads/internal/w/b/w;

.field private e:Lcom/facebook/ads/internal/adapters/b/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/adapters/c;)V
    .locals 0

    invoke-direct {p0, p1, p5, p3}, Lcom/facebook/ads/internal/adapters/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/x/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/r;->c:Lcom/facebook/ads/internal/s/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/r;->d:Lcom/facebook/ads/internal/w/b/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/r;->e:Lcom/facebook/ads/internal/adapters/b/q;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/r;->e:Lcom/facebook/ads/internal/adapters/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/r;->e:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "touch"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/r;->d:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/r;->c:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/r;->e:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
