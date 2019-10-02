.class public Lcom/facebook/ads/internal/view/s;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# static fields
.field static final synthetic a:Z

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field private A:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/facebook/ads/internal/view/i/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private C:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private D:Lcom/facebook/ads/internal/view/g/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private E:Lcom/facebook/ads/internal/view/i/c/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private F:Lcom/facebook/ads/internal/view/i/c/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private G:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private H:Lcom/facebook/ads/internal/view/i/c/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private I:Lcom/facebook/ads/internal/view/i;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private J:Lcom/facebook/ads/internal/view/i/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private K:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private L:Lcom/facebook/ads/internal/view/g/c;

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/AudienceNetworkActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

.field private final l:Lcom/facebook/ads/internal/view/i/b/d;

.field private final m:Lcom/facebook/ads/internal/view/i/b/f;

.field private final n:Lcom/facebook/ads/internal/view/i/b/n;

.field private final o:Lcom/facebook/ads/internal/view/i/b/p;

.field private final p:Lcom/facebook/ads/internal/adapters/b/q;

.field private final q:Lcom/facebook/ads/internal/s/c;

.field private final r:Lcom/facebook/ads/internal/x/a;

.field private final s:Lcom/facebook/ads/internal/x/a$a;

.field private final t:Lcom/facebook/ads/internal/w/b/w;

.field private final u:Lcom/facebook/ads/internal/view/i/c/o;

.field private final v:Lcom/facebook/ads/internal/view/i/b;

.field private final w:Landroid/widget/RelativeLayout;

.field private final x:Lcom/facebook/ads/internal/view/i/c/f;

.field private final y:Lcom/facebook/ads/internal/adapters/b/h;

.field private final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/view/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/view/s;->a:Z

    const/high16 v0, 0x41400000    # 12.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->b:I

    const/high16 v0, 0x41900000    # 18.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->c:I

    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->d:I

    const/high16 v0, 0x42900000    # 72.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->e:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/s;->f:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/s;->g:I

    const/high16 v0, 0x41e00000    # 28.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->h:I

    const/high16 v0, 0x41a00000    # 20.0f

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/s;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/a;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/s$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$1;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->k:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    new-instance v0, Lcom/facebook/ads/internal/view/s$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$3;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->l:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance v0, Lcom/facebook/ads/internal/view/s$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$4;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->m:Lcom/facebook/ads/internal/view/i/b/f;

    new-instance v0, Lcom/facebook/ads/internal/view/s$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$5;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->n:Lcom/facebook/ads/internal/view/i/b/n;

    new-instance v0, Lcom/facebook/ads/internal/view/s$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$6;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->o:Lcom/facebook/ads/internal/view/i/b/p;

    new-instance v0, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/s;->M:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/s;->N:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->i()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/view/s;->y:Lcom/facebook/ads/internal/adapters/b/h;

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/o;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/view/i/c/o;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->u:Lcom/facebook/ads/internal/view/i/c/o;

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/f;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/view/i/c/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->x:Lcom/facebook/ads/internal/view/i/c/f;

    new-instance p1, Lcom/facebook/ads/internal/view/c/d;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    sget p3, Lcom/facebook/ads/internal/view/s;->i:I

    invoke-direct {p1, p2, p3}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/d;->a()Lcom/facebook/ads/internal/view/c/d;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-static {p2}, Lcom/facebook/ads/internal/r/a;->m(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/d;->a(Z)Lcom/facebook/ads/internal/view/c/d;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/ads/internal/view/s$7;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/s$7;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->s:Lcom/facebook/ads/internal/x/a$a;

    new-instance p1, Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->s:Lcom/facebook/ads/internal/x/a$a;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3, p2}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/x/a;->a(I)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/b;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, p4, v0, v2}, Lcom/facebook/ads/internal/view/i/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->v:Lcom/facebook/ads/internal/view/i/b;

    new-instance p1, Lcom/facebook/ads/internal/view/g/c;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    iget-object v9, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/internal/view/g/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/q;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    sget-boolean p1, Lcom/facebook/ads/internal/view/s;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p5}, Lcom/facebook/ads/internal/adapters/b/q;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/i/a;->setVideoProgressReportIntervalMs(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    const/high16 p2, -0x1000000

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/facebook/ads/internal/o/f;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/s;->l:Lcom/facebook/ads/internal/view/i/b/d;

    aput-object p4, p2, v1

    iget-object p4, p0, Lcom/facebook/ads/internal/view/s;->m:Lcom/facebook/ads/internal/view/i/b/f;

    aput-object p4, p2, p3

    const/4 p3, 0x2

    iget-object p4, p0, Lcom/facebook/ads/internal/view/s;->n:Lcom/facebook/ads/internal/view/i/b/n;

    aput-object p4, p2, p3

    const/4 p3, 0x3

    iget-object p4, p0, Lcom/facebook/ads/internal/view/s;->o:Lcom/facebook/ads/internal/view/i/b/p;

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/o/e;->a([Lcom/facebook/ads/internal/o/f;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/s;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/s;->M:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/s;->M:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->x:Lcom/facebook/ads/internal/view/i/c/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method static synthetic c(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/g/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/s;)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/s;->M:Z

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, -0x5a000000

    invoke-static {v1, v3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/a;->d()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/i/a;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i;->b()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/facebook/ads/internal/view/s$10;

    invoke-direct {v4, p0}, Lcom/facebook/ads/internal/view/s$10;-><init>(Lcom/facebook/ads/internal/view/s;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/i;->a(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    sget-object v4, Lcom/facebook/ads/internal/view/i$a;->a:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/i;->setCloseButtonStyle(Lcom/facebook/ads/internal/view/i$a;)V

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i;->c()V

    :cond_3
    new-array v1, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->x:Lcom/facebook/ads/internal/view/i/c/f;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/facebook/ads/internal/view/s;->u:Lcom/facebook/ads/internal/view/i/c/o;

    aput-object v5, v1, v3

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->a([Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/g/c;->c()Landroid/util/Pair;

    move-result-object v1

    sget-object v3, Lcom/facebook/ads/internal/view/s$2;->a:[I

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/internal/view/g/c$a;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/view/g/c$a;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, -0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->O:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/AudienceNetworkActivity;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/facebook/ads/AudienceNetworkActivity;->getRequestedOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/internal/view/s;->K:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f/b;->c()V

    goto :goto_3

    :pswitch_1
    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->a([Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/facebook/ads/internal/view/s;->d:I

    sget v3, Lcom/facebook/ads/internal/view/s;->d:I

    sget v4, Lcom/facebook/ads/internal/view/s;->d:I

    sget v5, Lcom/facebook/ads/internal/view/s;->d:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/w/b/w;->a()V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/g/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/g/a;->a()V

    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/facebook/ads/internal/view/s;->g:I

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/a;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :pswitch_3
    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->a([Landroid/view/View;)V

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/s;->b()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/c/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->E:Lcom/facebook/ads/internal/view/i/c/d;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/adapters/b/q;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/c/j;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    return-object p0
.end method

.method private setUpContentLayoutForVideo(I)V
    .locals 10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    sget-object v2, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    const/16 v1, 0xc

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/g/a;->a(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    sget v4, Lcom/facebook/ads/internal/view/s;->d:I

    sget v5, Lcom/facebook/ads/internal/view/s;->d:I

    sget v6, Lcom/facebook/ads/internal/view/s;->d:I

    sget v7, Lcom/facebook/ads/internal/view/s;->d:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/facebook/ads/internal/view/g/a;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    invoke-virtual {v0, v4, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    const/16 v0, 0xb

    const/16 v4, 0xa

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/facebook/ads/internal/view/s;->f:I

    sget v6, Lcom/facebook/ads/internal/view/s;->f:I

    invoke-direct {p1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    sget v6, Lcom/facebook/ads/internal/view/s;->d:I

    sget v7, Lcom/facebook/ads/internal/view/s;->d:I

    sget v8, Lcom/facebook/ads/internal/view/s;->d:I

    sget v9, Lcom/facebook/ads/internal/view/s;->d:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/facebook/ads/internal/view/i/c/j;->setPadding(IIII)V

    iget-object v5, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-virtual {v5, v6, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/facebook/ads/internal/view/s;->h:I

    sget v6, Lcom/facebook/ads/internal/view/s;->h:I

    invoke-direct {p1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/internal/view/s;->b:I

    sget v4, Lcom/facebook/ads/internal/view/s;->b:I

    sget v5, Lcom/facebook/ads/internal/view/s;->g:I

    add-int/2addr v4, v5

    sget v5, Lcom/facebook/ads/internal/view/s;->b:I

    sget v6, Lcom/facebook/ads/internal/view/s;->c:I

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/s;->x:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {v0, v4, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/s;->b()V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->u:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->g()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->l()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 11

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->O:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->d()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/k;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/i/c/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->x:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->u:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/facebook/ads/internal/view/i/c/l;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->F:Lcom/facebook/ads/internal/view/i/c/l;

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->G:Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->G:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->G:Landroid/view/View;

    const/high16 v0, -0x5a000000

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->G:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/internal/view/i/c/d$a;->c:Lcom/facebook/ads/internal/view/i/c/d$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/facebook/ads/internal/view/i/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/i/c/d$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->F:Lcom/facebook/ads/internal/view/i/c/l;

    sget-object v1, Lcom/facebook/ads/internal/view/i/c/d$a;->c:Lcom/facebook/ads/internal/view/i/c/d$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/facebook/ads/internal/view/i/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/i/c/d$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->F:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance p1, Lcom/facebook/ads/internal/view/g/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    sget v3, Lcom/facebook/ads/internal/view/s;->e:I

    iget-object v4, p0, Lcom/facebook/ads/internal/view/s;->y:Lcom/facebook/ads/internal/adapters/b/h;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/g/c;->b()Lcom/facebook/ads/internal/view/g/c$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/g/c$a;->d:Lcom/facebook/ads/internal/view/g/c$a;

    const/4 v7, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/g/c;->b()Lcom/facebook/ads/internal/view/g/c$a;

    move-result-object v1

    sget-object v8, Lcom/facebook/ads/internal/view/g/c$a;->d:Lcom/facebook/ads/internal/view/g/c$a;

    if-ne v1, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    iget-object v10, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    move-object v1, p1

    move v7, v0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/internal/view/g/a;-><init>(Landroid/content/Context;ILcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;ZZLcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/g/a;->setInfo(Lcom/facebook/ads/internal/adapters/b/q;)V

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/c/d$a;->c:Lcom/facebook/ads/internal/view/i/c/d$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/facebook/ads/internal/view/i/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/i/c/d$a;Z)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->E:Lcom/facebook/ads/internal/view/i/c/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->E:Lcom/facebook/ads/internal/view/i/c/d;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/g/c;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Lcom/facebook/ads/internal/view/i/c/j;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result v1

    const v2, -0xbb7c04

    invoke-direct {p1, v0, v1, v2}, Lcom/facebook/ads/internal/view/i/c/j;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    sget-object v0, Lcom/facebook/ads/internal/view/i/c/j$a;->b:Lcom/facebook/ads/internal/view/i/c/j$a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/c/j;->setButtonMode(Lcom/facebook/ads/internal/view/i/c/j$a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    new-instance v0, Lcom/facebook/ads/internal/view/s$8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$8;-><init>(Lcom/facebook/ads/internal/view/s;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/c/j;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/g/c;->a()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->K(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/facebook/ads/internal/view/i$a;->b:Lcom/facebook/ads/internal/view/i$a;

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/facebook/ads/internal/view/i$a;->a:Lcom/facebook/ads/internal/view/i$a;

    :goto_3
    new-instance v0, Lcom/facebook/ads/internal/view/i;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/i$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->f()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result p1

    if-gtz p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i;->b()V

    :cond_6
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/g/c;->b()Lcom/facebook/ads/internal/view/g/c$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/view/g/c$a;->d:Lcom/facebook/ads/internal/view/g/c$a;

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i;->c()V

    :cond_7
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    new-instance v0, Lcom/facebook/ads/internal/view/s$9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$9;-><init>(Lcom/facebook/ads/internal/view/s;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i;->setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    goto :goto_2

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->k:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p3, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p1

    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/a;->setVideoURI(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/s;->setUpContentLayoutForVideo(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->w:Landroid/widget/RelativeLayout;

    sget-object p3, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/internal/view/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/s;->y:Lcom/facebook/ads/internal/adapters/b/h;

    invoke-virtual {p1, p3, p2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/h;Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/f/a;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->f()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V

    :cond_a
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    sget p3, Lcom/facebook/ads/internal/view/s;->g:I

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/view/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    sget-object p1, Lcom/facebook/ads/internal/view/s;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getVideoStartReason()Lcom/facebook/ads/internal/view/i/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->J:Lcom/facebook/ads/internal/view/i/a/a;

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/s;->N:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/d/d;->g:Lcom/facebook/ads/internal/view/i/d/d;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->J:Lcom/facebook/ads/internal/view/i/a/a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/s;->N:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->J:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/g/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/o/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->l:Lcom/facebook/ads/internal/view/i/b/d;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->m:Lcom/facebook/ads/internal/view/i/b/f;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->n:Lcom/facebook/ads/internal/view/i/b/n;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->o:Lcom/facebook/ads/internal/view/i/b/p;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/e;->b([Lcom/facebook/ads/internal/o/f;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->r:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->q:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->p:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->I:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->O:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->O:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s;->K:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->v:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b;->a()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->B:Lcom/facebook/ads/internal/view/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/g/c;->e()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->H:Lcom/facebook/ads/internal/view/i/c/j;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->D:Lcom/facebook/ads/internal/view/g/a;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->E:Lcom/facebook/ads/internal/view/i/c/d;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->C:Lcom/facebook/ads/internal/view/a$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->u:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/c/o;->a()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->t:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setEndCardController(Lcom/facebook/ads/internal/view/g/c;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->L:Lcom/facebook/ads/internal/view/g/c;

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    return-void
.end method
