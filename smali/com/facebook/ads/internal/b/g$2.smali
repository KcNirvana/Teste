.class Lcom/facebook/ads/internal/b/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:J

.field final synthetic f:Lcom/facebook/ads/internal/m/a;

.field final synthetic g:Lcom/facebook/ads/internal/b/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/g;Ljava/lang/Runnable;JLcom/facebook/ads/internal/m/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/g$2;->d:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/facebook/ads/internal/b/g$2;->e:J

    iput-object p5, p0, Lcom/facebook/ads/internal/b/g$2;->f:Lcom/facebook/ads/internal/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->a:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->b:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/g;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/g;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iput-object p1, v0, Lcom/facebook/ads/internal/b/g;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/g;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->a:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/g$2;->e:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;J)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g$2;->f:Lcom/facebook/ads/internal/m/a;

    sget-object v2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/m/a;->a(Lcom/facebook/ads/internal/m/e;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/g;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/g;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->a:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/g$2;->e:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;J)Ljava/util/Map;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/a;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg"

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->f:Lcom/facebook/ads/internal/m/a;

    sget-object v1, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/a;->a(Lcom/facebook/ads/internal/m/e;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/g;->i()V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 2

    iget-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->b:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->f:Lcom/facebook/ads/internal/m/a;

    sget-object v1, Lcom/facebook/ads/internal/m/e;->b:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/a;->a(Lcom/facebook/ads/internal/m/e;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 2

    iget-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/g$2;->c:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g$2;->f:Lcom/facebook/ads/internal/m/a;

    sget-object v1, Lcom/facebook/ads/internal/m/e;->c:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/a;->a(Lcom/facebook/ads/internal/m/e;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/g;->c:Lcom/facebook/ads/internal/adapters/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/b/g$2;->g:Lcom/facebook/ads/internal/b/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/g;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->a()V

    :cond_1
    return-void
.end method
