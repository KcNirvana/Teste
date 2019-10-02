.class public Lcom/facebook/ads/internal/view/component/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/component/a/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/internal/s/c;

.field private final c:Lcom/facebook/ads/internal/view/a$a;

.field private final d:Lcom/facebook/ads/internal/adapters/b/k;

.field private final e:Landroid/view/View;

.field private final f:Lcom/facebook/ads/internal/x/a;

.field private final g:Lcom/facebook/ads/internal/w/b/w;

.field private final h:I

.field private final i:I

.field private final j:Lcom/facebook/ads/internal/view/i/c/o;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final k:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/component/a/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->a(Lcom/facebook/ads/internal/view/component/a/e$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->b(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/s/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->b:Lcom/facebook/ads/internal/s/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->c(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->c:Lcom/facebook/ads/internal/view/a$a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->d(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->d:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->e(Lcom/facebook/ads/internal/view/component/a/e$a;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->e:Landroid/view/View;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->f(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->f:Lcom/facebook/ads/internal/x/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->g(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->g:Lcom/facebook/ads/internal/w/b/w;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->h(Lcom/facebook/ads/internal/view/component/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->h:I

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->i(Lcom/facebook/ads/internal/view/component/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->i:I

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->j(Lcom/facebook/ads/internal/view/component/a/e$a;)Lcom/facebook/ads/internal/view/i/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->j:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->k(Lcom/facebook/ads/internal/view/component/a/e$a;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/e;->k:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/component/a/e$a;Lcom/facebook/ads/internal/view/component/a/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/e;-><init>(Lcom/facebook/ads/internal/view/component/a/e$a;)V

    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method b()Lcom/facebook/ads/internal/s/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->b:Lcom/facebook/ads/internal/s/c;

    return-object v0
.end method

.method c()Lcom/facebook/ads/internal/view/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->c:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->e:Landroid/view/View;

    return-object v0
.end method

.method e()Lcom/facebook/ads/internal/x/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->f:Lcom/facebook/ads/internal/x/a;

    return-object v0
.end method

.method f()Lcom/facebook/ads/internal/w/b/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->g:Lcom/facebook/ads/internal/w/b/w;

    return-object v0
.end method

.method g()Lcom/facebook/ads/internal/adapters/b/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->d:Lcom/facebook/ads/internal/adapters/b/k;

    return-object v0
.end method

.method h()Lcom/facebook/ads/internal/view/i/c/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->j:Lcom/facebook/ads/internal/view/i/c/o;

    return-object v0
.end method

.method i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->k:Landroid/view/View;

    return-object v0
.end method

.method j()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->h:I

    return v0
.end method

.method k()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/a/e;->i:I

    return v0
.end method
