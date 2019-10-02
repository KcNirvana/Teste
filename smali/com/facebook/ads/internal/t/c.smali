.class public Lcom/facebook/ads/internal/t/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/t/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/i/c/g;

.field private final c:Lcom/facebook/ads/internal/x/a;

.field private final d:Lcom/facebook/ads/internal/x/a$a;

.field private final e:Landroid/view/View;

.field private final f:Lcom/facebook/ads/internal/view/i/d$a;

.field private g:Lcom/facebook/ads/internal/view/p;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/ads/internal/t/c$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Lcom/facebook/ads/internal/t/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/t/c$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/t/c$1;-><init>(Lcom/facebook/ads/internal/t/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/c;->f:Lcom/facebook/ads/internal/view/i/d$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/facebook/ads/internal/t/l;->a:Lcom/facebook/ads/internal/t/l;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/c;->o:Lcom/facebook/ads/internal/t/l;

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    new-instance p2, Lcom/facebook/ads/internal/view/i/c/g;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/i/c/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/c;->b:Lcom/facebook/ads/internal/view/i/c/g;

    new-instance p1, Lcom/facebook/ads/internal/t/c$4;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/t/c$4;-><init>(Lcom/facebook/ads/internal/t/c;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c;->d:Lcom/facebook/ads/internal/x/a$a;

    new-instance p1, Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->d:Lcom/facebook/ads/internal/x/a$a;

    const/16 v1, 0x32

    const/4 v2, 0x1

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/x/a$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/c;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/c;Lcom/facebook/ads/internal/view/i/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/p;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/facebook/ads/internal/t/c;->a:Ljava/lang/String;

    const-string p1, "MediaViewVideo is null; unable to find it."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/c;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/t/c$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->h:Lcom/facebook/ads/internal/t/c$a;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/t/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/c;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/t/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/view/p;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/t/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/c;->l:Z

    return p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/t/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/c;->k:Z

    return p0
.end method

.method private g()V
    .locals 5

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    new-instance v2, Lcom/facebook/ads/internal/view/i/c/h;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/c;->i:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/i/c/h;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/facebook/ads/internal/view/i/c/h;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/i/c/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/facebook/ads/internal/view/p;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/facebook/ads/internal/view/p;

    iput-object v3, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/facebook/ads/internal/t/c;->a:Ljava/lang/String;

    const-string v2, "Unable to find MediaViewVideo child."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/c;->b:Lcom/facebook/ads/internal/view/i/c/g;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/p;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/p;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/x/a;->b(I)V

    return-void
.end method

.method static synthetic g(Lcom/facebook/ads/internal/t/c;)Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/p;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    sget-object v2, Lcom/facebook/ads/internal/view/i/d/d;->g:Lcom/facebook/ads/internal/view/i/d/d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/facebook/ads/internal/t/c;->o:Lcom/facebook/ads/internal/t/l;

    sget-object v0, Lcom/facebook/ads/internal/t/l;->b:Lcom/facebook/ads/internal/t/l;

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/p;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/d/d;->e:Lcom/facebook/ads/internal/view/i/d/d;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->l:Z

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/t/l;->a:Lcom/facebook/ads/internal/t/l;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/c;->o:Lcom/facebook/ads/internal/t/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/p;->getVideoView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/i/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/d;->setViewImplInflationListener(Lcom/facebook/ads/internal/view/i/d$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/t/c;->a(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/c$a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/c$a;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/internal/t/c$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->k:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->l:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/t/c;->h:Lcom/facebook/ads/internal/t/c$a;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/view/p;->getVideoView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/view/i/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->f:Lcom/facebook/ads/internal/view/i/d$a;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/d;->setViewImplInflationListener(Lcom/facebook/ads/internal/view/i/d$a;)V

    :cond_0
    iget-object p2, p0, Lcom/facebook/ads/internal/t/c;->b:Lcom/facebook/ads/internal/view/i/c/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/facebook/ads/internal/t/c$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/t/c$2;-><init>(Lcom/facebook/ads/internal/t/c;)V

    invoke-virtual {p2, v0, v1}, Lcom/facebook/ads/internal/view/i/c/g;->a(Ljava/lang/String;Lcom/facebook/ads/internal/view/c/e;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/t/e;->t()Lcom/facebook/ads/internal/t/l;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c;->o:Lcom/facebook/ads/internal/t/l;

    iget-object p1, p0, Lcom/facebook/ads/internal/t/c;->c:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c;->g:Lcom/facebook/ads/internal/view/p;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/p;->getVideoView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/t/c$3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/t/c$3;-><init>(Lcom/facebook/ads/internal/t/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->j:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/c;->h()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/c;->j:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/c;->h()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/c;->h()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/c;->h()V

    return-void
.end method
