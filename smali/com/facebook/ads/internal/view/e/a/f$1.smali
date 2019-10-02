.class Lcom/facebook/ads/internal/view/e/a/f$1;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/internal/view/e/a/b;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/facebook/ads/internal/w/b/w;

.field final synthetic e:Lcom/facebook/ads/internal/s/c;

.field final synthetic f:Lcom/facebook/ads/internal/view/e/a/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/a/f;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/b;Ljava/util/Map;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/s/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->b:Lcom/facebook/ads/internal/view/e/a/b;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->d:Lcom/facebook/ads/internal/w/b/w;

    iput-object p6, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->e:Lcom/facebook/ads/internal/s/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->a(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->b(Lcom/facebook/ads/internal/view/e/a/f;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->b:Lcom/facebook/ads/internal/view/e/a/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->c(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->c(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->c:Ljava/util/Map;

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->d:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->e:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->f:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->b(Lcom/facebook/ads/internal/view/e/a/f;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/f$1;->b:Lcom/facebook/ads/internal/view/e/a/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/a/b;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method
