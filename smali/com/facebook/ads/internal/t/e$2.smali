.class Lcom/facebook/ads/internal/t/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/adapters/i;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/ads/internal/t/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/adapters/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e$2;->a:Lcom/facebook/ads/internal/adapters/i;

    iput-boolean p3, p0, Lcom/facebook/ads/internal/t/e$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$2;->a:Lcom/facebook/ads/internal/adapters/i;

    iput-object v1, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->c(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->d(Lcom/facebook/ads/internal/t/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/t/h;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/t/e$2;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/t/h;->b()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    iget-object v0, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    iget-object v0, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$2;->c:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, "Failed to download a media."

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_1
    return-void
.end method
