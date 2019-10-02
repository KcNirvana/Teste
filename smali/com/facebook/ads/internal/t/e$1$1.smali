.class Lcom/facebook/ads/internal/t/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/t/e$1;->a(Lcom/facebook/ads/internal/adapters/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/e$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/e$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$1$1;->a:Lcom/facebook/ads/internal/t/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/protocol/a;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$1$1;->a:Lcom/facebook/ads/internal/t/e$1;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$1$1;->a:Lcom/facebook/ads/internal/t/e$1;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/internal/t/h;->c()V

    :cond_0
    return-void
.end method
