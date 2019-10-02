.class Lcom/facebook/ads/internal/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/d;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iput-object p1, v0, Lcom/facebook/ads/internal/b/d;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/internal/b/d;->a:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d$1;->a:Lcom/facebook/ads/internal/b/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->c()V

    return-void
.end method
