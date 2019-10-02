.class Lcom/facebook/ads/internal/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/h;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/b/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->h()V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iput-object p1, v0, Lcom/facebook/ads/internal/b/h;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/s;Lcom/facebook/ads/AdError;)V
    .locals 3

    iget-object p2, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p2, p2, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/b/h;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/h;->i()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->k()V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->g()V

    return-void
.end method

.method public e(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->i()V

    return-void
.end method

.method public f(Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h$1;->a:Lcom/facebook/ads/internal/b/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/h;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->j()V

    return-void
.end method
