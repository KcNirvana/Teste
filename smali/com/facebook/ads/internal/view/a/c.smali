.class public abstract Lcom/facebook/ads/internal/view/a/c;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Z

.field protected final b:Lcom/facebook/ads/internal/view/a/e;

.field private final c:Lcom/facebook/ads/internal/s/c;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/ads/internal/view/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/view/a/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Lcom/facebook/ads/internal/f/b;

.field private j:Lcom/facebook/ads/internal/f/b$a;

.field private k:Lcom/facebook/ads/internal/f/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/a/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/internal/view/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/internal/view/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    sget-object p1, Lcom/facebook/ads/internal/f/b$a;->c:Lcom/facebook/ads/internal/f/b$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->k:Lcom/facebook/ads/internal/f/c;

    new-instance p1, Lcom/facebook/ads/internal/view/a/c$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/a/c$1;-><init>(Lcom/facebook/ads/internal/view/a/c;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->b:Lcom/facebook/ads/internal/view/a/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a/c;->c:Lcom/facebook/ads/internal/s/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/a/c;->e:Lcom/facebook/ads/internal/view/a;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/a/c;->f:Lcom/facebook/ads/internal/view/a$a;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/b$a;)Lcom/facebook/ads/internal/f/b$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->k:Lcom/facebook/ads/internal/f/c;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V
    .locals 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->k:Lcom/facebook/ads/internal/f/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    iget v2, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/f/b;->a(Lcom/facebook/ads/internal/f/b$a;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/a/c;)I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/b;->a(Lcom/facebook/ads/internal/f/b$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/a/c;->b(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->f()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->g()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/a/c;)I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/a/c;->h:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->j:Lcom/facebook/ads/internal/f/b$a;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->c:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/f/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->n(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->f()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->g:Lcom/facebook/ads/internal/view/a/b;

    return-object p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->k:Lcom/facebook/ads/internal/f/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/c;->d()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->e:Lcom/facebook/ads/internal/view/a;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/view/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->f()V

    return-void
.end method

.method static synthetic j(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->f:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/view/a/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/facebook/ads/internal/f/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/f/b;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->i:Lcom/facebook/ads/internal/f/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->e:Lcom/facebook/ads/internal/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->e:Lcom/facebook/ads/internal/view/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a;->a_(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->g()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->g:Lcom/facebook/ads/internal/view/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c;->g:Lcom/facebook/ads/internal/view/a/b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/a/b;->a()V

    :cond_1
    return-void
.end method

.method abstract a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/a/c;->a:Z

    return-void
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/c;->f()V

    return-void
.end method

.method abstract b(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
.end method

.method abstract c()V
.end method

.method abstract d()V
.end method

.method abstract e()Z
.end method

.method public setAdReportingFlowListener(Lcom/facebook/ads/internal/view/a/b;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/internal/view/a/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->g:Lcom/facebook/ads/internal/view/a/b;

    return-void
.end method
