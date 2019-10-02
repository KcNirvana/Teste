.class Lcom/facebook/ads/internal/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/ads/internal/m/a;

.field final synthetic d:Lcom/facebook/ads/internal/b/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/g;Lcom/facebook/ads/internal/adapters/i;JLcom/facebook/ads/internal/m/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/g$1;->d:Lcom/facebook/ads/internal/b/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/g$1;->a:Lcom/facebook/ads/internal/adapters/i;

    iput-wide p3, p0, Lcom/facebook/ads/internal/b/g$1;->b:J

    iput-object p5, p0, Lcom/facebook/ads/internal/b/g$1;->c:Lcom/facebook/ads/internal/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$1;->d:Lcom/facebook/ads/internal/b/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g$1;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$1;->d:Lcom/facebook/ads/internal/b/g;

    iget-wide v1, p0, Lcom/facebook/ads/internal/b/g$1;->b:J

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    const-string v2, "timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g$1;->d:Lcom/facebook/ads/internal/b/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/g$1;->c:Lcom/facebook/ads/internal/m/a;

    sget-object v3, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/m/a;->a(Lcom/facebook/ads/internal/m/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$1;->d:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/g;->i()V

    return-void
.end method
