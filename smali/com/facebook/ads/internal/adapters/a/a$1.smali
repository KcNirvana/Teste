.class Lcom/facebook/ads/internal/adapters/a/a$1;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/a/a$1;->a:Lcom/facebook/ads/internal/adapters/a/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a$1;->a:Lcom/facebook/ads/internal/adapters/a/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/adapters/a/a;)Lcom/facebook/ads/internal/adapters/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a$1;->a:Lcom/facebook/ads/internal/adapters/a/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/adapters/a/a;)Lcom/facebook/ads/internal/adapters/a/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/a/a$a;->a()V

    :cond_0
    return-void
.end method
