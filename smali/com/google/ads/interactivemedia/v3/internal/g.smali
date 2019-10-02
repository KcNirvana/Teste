.class public Lcom/google/ads/interactivemedia/v3/internal/g;
.super Lcom/google/ads/interactivemedia/v3/internal/c;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/e;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ar;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ar;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/y;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/d;Lcom/google/ads/interactivemedia/v3/internal/e;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->b:Lcom/google/ads/interactivemedia/v3/internal/d;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->a:Lcom/google/ads/interactivemedia/v3/internal/e;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/g;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/e;->f()Lcom/google/ads/interactivemedia/v3/internal/f;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/f;->a:Lcom/google/ads/interactivemedia/v3/internal/f;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/z;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/e;->c()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/z;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aa;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/e;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/y;->a()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->a(Lcom/google/ads/interactivemedia/v3/internal/g;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Lcom/google/ads/interactivemedia/v3/internal/d;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ar;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ar;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->d:Lcom/google/ads/interactivemedia/v3/internal/ar;

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/p;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/g;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/g;->g()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/g;->d:Lcom/google/ads/interactivemedia/v3/internal/ar;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ar;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->f:Z

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->b(Lcom/google/ads/interactivemedia/v3/internal/g;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/t;->a()Lcom/google/ads/interactivemedia/v3/internal/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/t;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(F)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->a:Lcom/google/ads/interactivemedia/v3/internal/e;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Lcom/google/ads/interactivemedia/v3/internal/g;Lcom/google/ads/interactivemedia/v3/internal/e;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g;->g()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/g;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g;->e()Lcom/google/ads/interactivemedia/v3/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/y;->f()V

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/g;->c(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->d:Lcom/google/ads/interactivemedia/v3/internal/ar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ar;->clear()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g;->e()Lcom/google/ads/interactivemedia/v3/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/y;->e()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->c(Lcom/google/ads/interactivemedia/v3/internal/g;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g;->e()Lcom/google/ads/interactivemedia/v3/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/y;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/google/ads/interactivemedia/v3/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->e:Lcom/google/ads/interactivemedia/v3/internal/y;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->d:Lcom/google/ads/interactivemedia/v3/internal/ar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
