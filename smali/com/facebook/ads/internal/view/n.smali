.class public Lcom/facebook/ads/internal/view/n;
.super Lcom/facebook/ads/internal/view/o;


# instance fields
.field private A:Z

.field private B:Z

.field private final d:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

.field private final e:Lcom/facebook/ads/internal/view/i/b/f;

.field private final f:Lcom/facebook/ads/internal/view/i/b/l;

.field private final g:Lcom/facebook/ads/internal/view/i/b/j;

.field private final h:Lcom/facebook/ads/internal/view/i/b/d;

.field private final i:Lcom/facebook/ads/internal/view/i/b/n;

.field private final j:Lcom/facebook/ads/internal/view/i/a;

.field private final k:Lcom/facebook/ads/internal/view/i/c/o;

.field private final l:Lcom/facebook/ads/internal/view/i/c/f;

.field private final m:Lcom/facebook/ads/internal/adapters/b/k;

.field private final n:Lcom/facebook/ads/internal/adapters/b/l;

.field private final o:Lcom/facebook/ads/internal/x/a;

.field private final p:Lcom/facebook/ads/internal/x/a$a;

.field private final q:Lcom/facebook/ads/internal/w/b/w;

.field private final r:Lcom/facebook/ads/internal/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u:Lcom/facebook/ads/internal/view/i/c;

.field private v:Lcom/facebook/ads/AudienceNetworkActivity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/facebook/ads/internal/view/i/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/facebook/ads/internal/view/component/a/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/k;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 1
    .param p4    # Lcom/facebook/ads/internal/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p5}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V

    new-instance p2, Lcom/facebook/ads/internal/view/n$1;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$1;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    new-instance p2, Lcom/facebook/ads/internal/view/n$2;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$2;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/i/b/f;

    new-instance p2, Lcom/facebook/ads/internal/view/n$3;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$3;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance p2, Lcom/facebook/ads/internal/view/n$4;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$4;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->g:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance p2, Lcom/facebook/ads/internal/view/n$5;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$5;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance p2, Lcom/facebook/ads/internal/view/n$6;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/n$6;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->i:Lcom/facebook/ads/internal/view/i/b/n;

    new-instance p2, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {p2}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->q:Lcom/facebook/ads/internal/w/b/w;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p5, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    iput-boolean p5, p0, Lcom/facebook/ads/internal/view/n;->z:Z

    iput-boolean p5, p0, Lcom/facebook/ads/internal/view/n;->A:Z

    iput-boolean p5, p0, Lcom/facebook/ads/internal/view/n;->B:Z

    new-instance p2, Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/facebook/ads/internal/view/i/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/a;->setVideoProgressReportIntervalMs(I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {p2, p5}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/adapters/b/l;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/adapters/b/l;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/n;->r:Lcom/facebook/ads/internal/h/b;

    new-instance p2, Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/facebook/ads/internal/view/i/c/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->k:Lcom/facebook/ads/internal/view/i/c/o;

    new-instance p2, Lcom/facebook/ads/internal/view/i/c/f;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/i/c/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->l:Lcom/facebook/ads/internal/view/i/c/f;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object p1

    const/4 p2, 0x5

    new-array p2, p2, [Lcom/facebook/ads/internal/o/f;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/view/i/b/l;

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->g:Lcom/facebook/ads/internal/view/i/b/j;

    const/4 p5, 0x1

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/i/b/d;

    const/4 v0, 0x2

    aput-object p4, p2, v0

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/i/b/f;

    const/4 v0, 0x3

    aput-object p4, p2, v0

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->i:Lcom/facebook/ads/internal/view/i/b/n;

    const/4 v0, 0x4

    aput-object p4, p2, v0

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/o/e;->a([Lcom/facebook/ads/internal/o/f;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/adapters/b/l;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/n;->setupPlugins(Lcom/facebook/ads/internal/adapters/b/l;)V

    new-instance p1, Lcom/facebook/ads/internal/view/n$7;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/n$7;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->p:Lcom/facebook/ads/internal/x/a$a;

    new-instance p1, Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->p:Lcom/facebook/ads/internal/x/a$a;

    invoke-direct {p1, p0, p5, p2}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/x/a;->a(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/x/a;->b(I)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/ads/internal/view/n;->a:Lcom/facebook/ads/internal/s/c;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object p5, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p5}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/facebook/ads/internal/view/i/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->u:Lcom/facebook/ads/internal/view/i/c;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    iget-object p4, p0, Lcom/facebook/ads/internal/view/n;->r:Lcom/facebook/ads/internal/h/b;

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/facebook/ads/internal/view/n;->r:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {p3, p2}, Lcom/facebook/ads/internal/h/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/i/a;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/component/a/l;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->l:Lcom/facebook/ads/internal/view/i/c/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/c/f;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/n;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->v:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->a()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->q:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/adapters/b/k;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/view/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/n;->B:Z

    return p0
.end method

.method private setUpContent(I)V
    .locals 9

    new-instance v8, Lcom/facebook/ads/internal/view/component/a/e$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/n;->a:Lcom/facebook/ads/internal/s/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/n;->q:Lcom/facebook/ads/internal/w/b/w;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/view/component/a/e$a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/b/k;Landroid/view/View;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    sget v0, Lcom/facebook/ads/internal/view/i;->a:I

    invoke-virtual {v8, v0}, Lcom/facebook/ads/internal/view/component/a/e$a;->a(I)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->b(I)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->k:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/e$a;->a(Lcom/facebook/ads/internal/view/i/c/o;)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->l:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/e$a;->a(Landroid/view/View;)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/e$a;->a()Lcom/facebook/ads/internal/view/component/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/view/component/a/d;->a(Lcom/facebook/ads/internal/view/component/a/e;)Lcom/facebook/ads/internal/view/component/a/c;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->a()V

    sget-object v1, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaHeightIfAvailable()I

    move-result v3

    sub-int/2addr v1, v3

    sget-object v3, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaWidthIfAvailable()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/n;->A:Z

    invoke-static {v0, v1, v3, v4}, Lcom/facebook/ads/internal/view/component/a/g;->a(Lcom/facebook/ads/internal/view/component/a/e;IIZ)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/n$9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$9;-><init>(Lcom/facebook/ads/internal/view/n;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaHeightIfAvailable()I

    move-result v5

    sget-object v0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaWidthIfAvailable()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->a()Z

    move-result v7

    move-object v1, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/component/a/c;Lcom/facebook/ads/internal/view/component/a/l;Lcom/facebook/ads/internal/view/u$a;IIZI)V

    return-void
.end method

.method private setupPlugins(Lcom/facebook/ads/internal/adapters/b/l;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->k:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->l:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/g;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/i/c/g;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/c/g;->setImage(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/view/i/c/l;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/i/c/l;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/facebook/ads/internal/view/i/c/d$a;->c:Lcom/facebook/ads/internal/view/i/c/d$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/facebook/ads/internal/view/i/c/d$a;->a:Lcom/facebook/ads/internal/view/i/c/d$a;

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    new-instance v3, Lcom/facebook/ads/internal/view/i/c/d;

    invoke-direct {v3, v0, p1, v2}, Lcom/facebook/ads/internal/view/i/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/i/c/d$a;Z)V

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/k;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/i/c/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-super {p0, p3, p1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/b/k;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/n;->v:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/n;->setUpContent(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->v:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/adapters/b/l;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/d;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/i/a;->setVolume(F)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    sget-object p3, Lcom/facebook/ads/internal/view/i/a/a;->c:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Lcom/facebook/ads/internal/view/n$8;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/n$8;-><init>(Lcom/facebook/ads/internal/view/n;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/ads/internal/r/a;->ad(Landroid/content/Context;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/n;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->e()V

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getVideoStartReason()Lcom/facebook/ads/internal/view/i/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->w:Lcom/facebook/ads/internal/view/i/a/a;

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/n;->z:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->f()V

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->n()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/d/d;->c:Lcom/facebook/ads/internal/view/i/d/d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getVideoStartReason()Lcom/facebook/ads/internal/view/i/a/a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/a/a;->a:Lcom/facebook/ads/internal/view/i/a/a;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/d/d;->g:Lcom/facebook/ads/internal/view/i/d/d;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->w:Lcom/facebook/ads/internal/view/i/a/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->z:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->w:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->k:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->l:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->A:Z

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/n;->setUpContent(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->f()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/n;->q:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/n;->m:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->g()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/n;->y:Z

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->x:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->g()V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->v:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-super {p0}, Lcom/facebook/ads/internal/view/o;->onDestroy()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->q:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
