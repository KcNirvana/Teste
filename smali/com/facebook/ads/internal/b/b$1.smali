.class Lcom/facebook/ads/internal/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/e;

.field final synthetic b:Lcom/facebook/ads/internal/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/b;Lcom/facebook/ads/internal/adapters/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/b$1;->b:Lcom/facebook/ads/internal/b/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/b$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$1;->b:Lcom/facebook/ads/internal/b/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b$1;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b$1;->b:Lcom/facebook/ads/internal/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/b;->i()V

    return-void
.end method
