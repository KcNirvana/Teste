.class Lcom/facebook/ads/internal/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/a;->d()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/i;

.field final synthetic c:Lcom/facebook/ads/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/a;Ljava/util/List;Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/a$1;->c:Lcom/facebook/ads/internal/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/internal/a$1;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/a$1;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/internal/a$1;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    return-void
.end method
