.class public Landroid/support/a/a/r;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/e/q;
.implements Landroid/support/v4/e/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/a/a/r$d;,
        Landroid/support/a/a/r$h;,
        Landroid/support/a/a/r$e;,
        Landroid/support/a/a/r$f;,
        Landroid/support/a/a/r$t;,
        Landroid/support/a/a/r$r;,
        Landroid/support/a/a/r$b;,
        Landroid/support/a/a/r$s;,
        Landroid/support/a/a/r$c;,
        Landroid/support/a/a/r$j;,
        Landroid/support/a/a/r$w;,
        Landroid/support/a/a/r$k;,
        Landroid/support/a/a/r$p;,
        Landroid/support/a/a/r$m;,
        Landroid/support/a/a/r$l;,
        Landroid/support/a/a/r$g;,
        Landroid/support/a/a/r$i;,
        Landroid/support/a/a/r$a;,
        Landroid/support/a/a/r$u;,
        Landroid/support/a/a/r$o;,
        Landroid/support/a/a/r$n;,
        Landroid/support/a/a/r$q;,
        Landroid/support/a/a/r$v;
    }
.end annotation


# static fields
.field private static final an:Landroid/view/animation/Interpolator;

.field private static final h:Z

.field private static final i:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private final D:Z

.field private final E:Landroid/view/accessibility/AccessibilityManager;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/a/a/r$k;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private H:I

.field private I:Landroid/support/v4/f/a;

.field private J:Landroid/support/v4/f/a;

.field private K:Landroid/support/v4/f/a;

.field private L:Landroid/support/v4/f/a;

.field private M:I

.field private N:I

.field private O:Landroid/view/VelocityTracker;

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private final U:I

.field private final V:I

.field private W:F

.field final a:Landroid/support/a/a/r$o;

.field private final aa:Landroid/support/a/a/r$v;

.field private ab:Landroid/support/a/a/r$m;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/a/a/r$m;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Landroid/support/a/a/r$e$b;

.field private ae:Z

.field private af:Landroid/support/a/a/y;

.field private ag:Landroid/support/a/a/r$d;

.field private final ah:[I

.field private final ai:Landroid/support/v4/e/r;

.field private final aj:[I

.field private final ak:[I

.field private final al:[I

.field private am:Ljava/lang/Runnable;

.field b:Landroid/support/a/a/a;

.field c:Landroid/support/a/a/b;

.field d:Landroid/support/a/a/r$e;

.field final e:Landroid/support/a/a/r$t;

.field f:Z

.field g:Z

.field private final j:Landroid/support/a/a/r$q;

.field private k:Landroid/support/a/a/r$r;

.field private l:Z

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/graphics/Rect;

.field private o:Landroid/support/a/a/r$a;

.field private p:Landroid/support/a/a/r$i;

.field private q:Landroid/support/a/a/r$p;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/a/a/r$g;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/a/a/r$l;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/support/a/a/r$l;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/a/a/r;->h:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/a/a/r;->i:[Ljava/lang/Class;

    new-instance v0, Landroid/support/a/a/u;

    invoke-direct {v0}, Landroid/support/a/a/u;-><init>()V

    sput-object v0, Landroid/support/a/a/r;->an:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/a/a/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/a/a/r$q;

    invoke-direct {v0, p0, v1}, Landroid/support/a/a/r$q;-><init>(Landroid/support/a/a/r;Landroid/support/a/a/s;)V

    iput-object v0, p0, Landroid/support/a/a/r;->j:Landroid/support/a/a/r$q;

    new-instance v0, Landroid/support/a/a/r$o;

    invoke-direct {v0, p0}, Landroid/support/a/a/r$o;-><init>(Landroid/support/a/a/r;)V

    iput-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    new-instance v0, Landroid/support/a/a/s;

    invoke-direct {v0, p0}, Landroid/support/a/a/s;-><init>(Landroid/support/a/a/r;)V

    iput-object v0, p0, Landroid/support/a/a/r;->m:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    iput-boolean v5, p0, Landroid/support/a/a/r;->G:Z

    iput v5, p0, Landroid/support/a/a/r;->H:I

    new-instance v0, Landroid/support/a/a/c;

    invoke-direct {v0}, Landroid/support/a/a/c;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iput v5, p0, Landroid/support/a/a/r;->M:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/a/a/r;->N:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/a/a/r;->W:F

    new-instance v0, Landroid/support/a/a/r$v;

    invoke-direct {v0, p0}, Landroid/support/a/a/r$v;-><init>(Landroid/support/a/a/r;)V

    iput-object v0, p0, Landroid/support/a/a/r;->aa:Landroid/support/a/a/r$v;

    new-instance v0, Landroid/support/a/a/r$t;

    invoke-direct {v0}, Landroid/support/a/a/r$t;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iput-boolean v5, p0, Landroid/support/a/a/r;->f:Z

    iput-boolean v5, p0, Landroid/support/a/a/r;->g:Z

    new-instance v0, Landroid/support/a/a/r$f;

    invoke-direct {v0, p0, v1}, Landroid/support/a/a/r$f;-><init>(Landroid/support/a/a/r;Landroid/support/a/a/s;)V

    iput-object v0, p0, Landroid/support/a/a/r;->ad:Landroid/support/a/a/r$e$b;

    iput-boolean v5, p0, Landroid/support/a/a/r;->ae:Z

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/a/a/r;->ah:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/a/a/r;->aj:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/a/a/r;->ak:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/a/a/r;->al:[I

    new-instance v0, Landroid/support/a/a/t;

    invoke-direct {v0, p0}, Landroid/support/a/a/t;-><init>(Landroid/support/a/a/r;)V

    iput-object v0, p0, Landroid/support/a/a/r;->am:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/support/a/a/r;->setScrollContainer(Z)V

    invoke-virtual {p0, v6}, Landroid/support/a/a/r;->setFocusableInTouchMode(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Landroid/support/a/a/r;->D:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/a/a/r;->T:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/a/a/r;->U:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->V:I

    invoke-static {p0}, Landroid/support/v4/e/w;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget-object v1, p0, Landroid/support/a/a/r;->ad:Landroid/support/a/a/r$e$b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$e$b;)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->a()V

    invoke-direct {p0}, Landroid/support/a/a/r;->t()V

    invoke-static {p0}, Landroid/support/v4/e/w;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v6}, Landroid/support/v4/e/w;->c(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/a/a/r;->E:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/support/a/a/y;

    invoke-direct {v0, p0}, Landroid/support/a/a/y;-><init>(Landroid/support/a/a/r;)V

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->setAccessibilityDelegateCompat(Landroid/support/a/a/y;)V

    if-eqz p2, :cond_1

    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/r;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    :cond_1
    new-instance v0, Landroid/support/v4/e/r;

    invoke-direct {v0, p0}, Landroid/support/v4/e/r;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {p0, v6}, Landroid/support/a/a/r;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method private A()V
    .locals 2

    iget v0, p0, Landroid/support/a/a/r;->H:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/a/a/r;->H:I

    iget v0, p0, Landroid/support/a/a/r;->H:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a/r;->H:I

    invoke-direct {p0}, Landroid/support/a/a/r;->B()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    iget v0, p0, Landroid/support/a/a/r;->B:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/a/a/r;->B:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, v0}, Landroid/support/v4/e/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v1}, Landroid/support/a/a/r;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private C()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0}, Landroid/support/a/a/r$e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->ae:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->am:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/e/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->ae:Z

    :cond_0
    return-void
.end method

.method private E()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/a/a/r;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->a()V

    invoke-virtual {p0}, Landroid/support/a/a/r;->p()V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$i;->e(Landroid/support/a/a/r;)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->b()V

    :goto_0
    iget-boolean v0, p0, Landroid/support/a/a/r;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/a/a/r;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/a/a/r;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/a/a/r;->g:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    :goto_1
    iget-object v4, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-boolean v3, p0, Landroid/support/a/a/r;->w:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/support/a/a/r;->G:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-static {v3}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$i;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Landroid/support/a/a/r;->G:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v3}, Landroid/support/a/a/r$a;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Landroid/support/a/a/r$t;->c(Landroid/support/a/a/r$t;Z)Z

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v4, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v4}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/a/a/r;->G:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/support/a/a/r;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    invoke-static {v3, v2}, Landroid/support/a/a/r$t;->d(Landroid/support/a/a/r$t;Z)Z

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->e()V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/a/a/r;Landroid/support/a/a/r$w;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->c(Landroid/support/a/a/r$w;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/a/a/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(FFFF)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    cmpg-float v2, p2, v5

    if-gez v2, :cond_4

    invoke-virtual {p0}, Landroid/support/a/a/r;->d()V

    iget-object v2, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    neg-float v3, p2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/f/a;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    :goto_0
    cmpg-float v2, p4, v5

    if-gez v2, :cond_5

    invoke-virtual {p0}, Landroid/support/a/a/r;->f()V

    iget-object v2, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    neg-float v3, p4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/f/a;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v0, p2, v5

    if-nez v0, :cond_2

    cmpl-float v0, p4, v5

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/e/w;->d(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    cmpl-float v2, p2, v5

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->e()V

    iget-object v2, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/f/a;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_5
    cmpl-float v2, p4, v5

    if-lez v2, :cond_6

    invoke-virtual {p0}, Landroid/support/a/a/r;->g()V

    iget-object v2, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/f/a;->a(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/support/a/a/r;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/a/a/r$i;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Landroid/support/a/a/r;->i:[Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p3, v0, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$i;

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->setLayoutManager(Landroid/support/a/a/r$i;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Landroid/support/a/a/r$a;ZZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    iget-object v1, p0, Landroid/support/a/a/r;->j:Landroid/support/a/a/r$q;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$a;->b(Landroid/support/a/a/r$c;)V

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$a;->b(Landroid/support/a/a/r;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0}, Landroid/support/a/a/r$e;->c()V

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->c(Landroid/support/a/a/r$o;)V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r$o;)V

    :cond_3
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->a()V

    :cond_4
    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->a()V

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    iput-object p1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/support/a/a/r;->j:Landroid/support/a/a/r$q;

    invoke-virtual {p1, v1}, Landroid/support/a/a/r$a;->a(Landroid/support/a/a/r$c;)V

    invoke-virtual {p1, p0}, Landroid/support/a/a/r$a;->a(Landroid/support/a/a/r;)V

    :cond_5
    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v2, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1, v0, v2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$a;Landroid/support/a/a/r$a;)V

    :cond_6
    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v2, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$a;Landroid/support/a/a/r$a;Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    invoke-virtual {p0}, Landroid/support/a/a/r;->p()V

    return-void
.end method

.method private a(Landroid/support/a/a/r$h;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    iget-object v1, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-direct {p0, v1}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r$w;)V

    iget v2, p1, Landroid/support/a/a/r$h;->b:I

    iget v3, p1, Landroid/support/a/a/r$h;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v1, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    :cond_0
    iget-object v1, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v1, v6}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget-object v1, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$w;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v6}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget-object v1, p1, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$w;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    goto :goto_0
.end method

.method private a(Landroid/support/a/a/r$w;Landroid/graphics/Rect;II)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$w;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$e;->b(Landroid/support/a/a/r$w;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    goto :goto_0
.end method

.method private a(Landroid/support/a/a/r$w;Landroid/support/a/a/r$w;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r$w;)V

    iput-object p2, p1, Landroid/support/a/a/r$w;->g:Landroid/support/a/a/r$w;

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$o;->d(Landroid/support/a/a/r$w;)V

    iget-object v0, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v0, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/a/a/r$w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v6, v4

    move v5, v3

    :goto_0
    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$w;Landroid/support/a/a/r$w;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v0, p2, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2, v1}, Landroid/support/a/a/r$w;->a(Z)V

    iput-object p1, p2, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/a/a/r;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/r;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/r;->h(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/r;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/r;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/a/a/r;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/support/v4/d/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/d/a",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v7, v0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_3

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$h;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v2}, Landroid/support/a/a/r$t;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, v5, v1}, Landroid/support/a/a/r$i;->a(Landroid/view/View;Landroid/support/a/a/r$o;)V

    :goto_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$h;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/support/a/a/r$h;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/r$h;-><init>(Landroid/support/a/a/r$w;IIII)V

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$h;)V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a([I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v5

    if-nez v5, :cond_0

    aput v4, p1, v4

    aput v4, p1, v7

    :goto_0
    return-void

    :cond_0
    const v2, 0x7fffffff

    const/high16 v0, -0x80000000

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    iget-object v1, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v1, v3}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/support/a/a/r$w;->d()I

    move-result v1

    if-ge v1, v2, :cond_2

    move v2, v1

    :cond_2
    if-le v1, v0, :cond_4

    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_3
    aput v2, p1, v4

    aput v0, p1, v7

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/a/a/r;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->w:Z

    return v0
.end method

.method static synthetic a(Landroid/support/a/a/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r;->ae:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$l;

    invoke-interface {v0, p0, p1}, Landroid/support/a/a/r$l;->a(Landroid/support/a/a/r;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_2

    iput-object v0, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static b(Landroid/view/View;)Landroid/support/a/a/r$w;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->a:Landroid/support/a/a/r$w;

    goto :goto_0
.end method

.method private b(Landroid/support/a/a/r$w;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {p0, v2}, Landroid/support/a/a/r;->a(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/a/a/r$o;->d(Landroid/support/a/a/r$w;)V

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/a/a/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v2, v1}, Landroid/support/a/a/b;->a(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v2}, Landroid/support/a/a/b;->d(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/a/a/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/a/a/r;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/r;->i(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/a/a/r;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->h(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Landroid/support/a/a/r;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->G:Z

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    iput-object v4, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$l;

    invoke-interface {v0, p0, p1}, Landroid/support/a/a/r$l;->a(Landroid/support/a/a/r;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v0, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    invoke-interface {v2, p0, p1}, Landroid/support/a/a/r$l;->b(Landroid/support/a/a/r;Landroid/view/MotionEvent;)V

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iput-object v4, p0, Landroid/support/a/a/r;->t:Landroid/support/a/a/r$l;

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private c(Landroid/support/a/a/r$w;)I
    .locals 2

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$w;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    iget v1, p1, Landroid/support/a/a/r$w;->b:I

    invoke-virtual {v0, v1}, Landroid/support/a/a/a;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/a/a/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->e(I)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/a/a/r;->N:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/a/a/r;->N:I

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/a/a/r;->R:I

    iput v1, p0, Landroid/support/a/a/r;->P:I

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->S:I

    iput v0, p0, Landroid/support/a/a/r;->Q:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/a/a/r;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->y:Z

    return v0
.end method

.method static synthetic c(Landroid/support/a/a/r;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/a/a/r;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    return-object v0
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$i;->b(I)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->awakenScrollBars()Z

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/a/a/r;->u()V

    return-void
.end method

.method static synthetic f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    return-object v0
.end method

.method static synthetic g(Landroid/support/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/a/a/r;->z()V

    return-void
.end method

.method private g(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/b;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    iget-object v2, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v2, v1}, Landroid/support/a/a/r$o;->d(Landroid/support/a/a/r$w;)V

    iget-object v2, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v2, v1}, Landroid/support/a/a/r$o;->b(Landroid/support/a/a/r$w;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/a/a/r;->a(Z)V

    return v0
.end method

.method private getScrollFactor()F
    .locals 4

    iget v0, p0, Landroid/support/a/a/r;->W:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->W:F

    :cond_0
    iget v0, p0, Landroid/support/a/a/r;->W:F

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->b()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget-object v1, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/e/w;->d(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->e(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1, v0}, Landroid/support/a/a/r$a;->d(Landroid/support/a/a/r$w;)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$k;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$k;->b(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h(Landroid/support/a/a/r;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v0

    return v0
.end method

.method private i(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v2, :sswitch_data_0

    invoke-static {p0}, Landroid/support/v4/e/w;->k(Landroid/view/View;)I

    move-result v1

    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    invoke-static {p0}, Landroid/support/v4/e/w;->l(Landroid/view/View;)I

    move-result v0

    :sswitch_1
    invoke-virtual {p0, v1, v0}, Landroid/support/a/a/r;->setMeasuredDimension(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic i(Landroid/support/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/a/a/r;->A()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->d(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1, v0}, Landroid/support/a/a/r$a;->c(Landroid/support/a/a/r$w;)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$k;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$k;->a(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic j(Landroid/support/a/a/r;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j(II)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2}, Landroid/support/a/a/b;->b()I

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v4, v2}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/a/a/r$w;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/support/a/a/r$w;->d()I

    move-result v4

    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_3

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Landroid/support/a/a/r;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/a/a/r;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Landroid/support/a/a/r;)Landroid/support/a/a/y;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->af:Landroid/support/a/a/y;

    return-object v0
.end method

.method static synthetic m(Landroid/support/a/a/r;)Landroid/support/a/a/r$p;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->q:Landroid/support/a/a/r$p;

    return-object v0
.end method

.method static synthetic n(Landroid/support/a/a/r;)Landroid/support/a/a/r$v;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->aa:Landroid/support/a/a/r$v;

    return-object v0
.end method

.method static synthetic r()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/support/a/a/r;->an:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    sget-boolean v0, Landroid/support/a/a/r;->h:Z

    return v0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->M:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/a/a/r;->M:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/a/a/r;->v()V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->d(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    new-instance v0, Landroid/support/a/a/b;

    new-instance v1, Landroid/support/a/a/v;

    invoke-direct {v1, p0}, Landroid/support/a/a/v;-><init>(Landroid/support/a/a/r;)V

    invoke-direct {v0, v1}, Landroid/support/a/a/b;-><init>(Landroid/support/a/a/b$b;)V

    iput-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->aa:Landroid/support/a/a/r$v;

    invoke-virtual {v0}, Landroid/support/a/a/r$v;->b()V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->z()V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->b()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/e/w;->d(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/r;->stopNestedScroll()V

    invoke-direct {p0}, Landroid/support/a/a/r;->w()V

    return-void
.end method

.method private y()V
    .locals 1

    invoke-direct {p0}, Landroid/support/a/a/r;->x()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->setScrollState(I)V

    return-void
.end method

.method private z()V
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/a/a/r;->H:I

    return-void
.end method


# virtual methods
.method a(Landroid/support/a/a/r$w;)J
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/a/a/r$w;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/a/a/r$w;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method a(IZ)Landroid/support/a/a/r$w;
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    iget v3, v0, Landroid/support/a/a/r$w;->b:I

    if-ne v3, p1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/support/a/a/r$w;->d()I

    move-result v3

    if-eq v3, p1, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Landroid/support/a/a/r$w;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    new-instance v0, Landroid/support/a/a/a;

    new-instance v1, Landroid/support/a/a/w;

    invoke-direct {v1, p0}, Landroid/support/a/a/w;-><init>(Landroid/support/a/a/r;)V

    invoke-direct {v0, v1}, Landroid/support/a/a/a;-><init>(Landroid/support/a/a/a$a;)V

    iput-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v1, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/a/a/r;->z:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->c()Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    :cond_2
    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->d()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    iget-object v1, p0, Landroid/support/a/a/r;->aa:Landroid/support/a/a/r$v;

    invoke-virtual {v1, p1, v0}, Landroid/support/a/a/r$v;->b(II)V

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method a(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v2

    add-int v3, p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/a/a/r$w;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v5, v4, Landroid/support/a/a/r$w;->b:I

    if-lt v5, p1, :cond_0

    iget v5, v4, Landroid/support/a/a/r$w;->b:I

    if-ge v5, v3, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/a/a/r$w;->b(I)V

    invoke-virtual {v4, p3}, Landroid/support/a/a/r$w;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/support/a/a/r$w;->b(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/a/a/r$j;->c:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r$o;->c(II)V

    return-void
.end method

.method a(IIZ)V
    .locals 7

    const/4 v6, 0x1

    add-int v1, p1, p2

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v3, v0}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/a/a/r$w;->b:I

    if-lt v4, v1, :cond_1

    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/a/a/r$w;->a(IZ)V

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v3, v6}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Landroid/support/a/a/r$w;->b:I

    if-lt v4, p1, :cond_0

    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/a/a/r$w;->a(IIZ)V

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v3, v6}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/a/a/r$o;->b(IIZ)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/a/a/r;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/a/a/r;->x:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->k()V

    :cond_0
    iput-boolean v1, p0, Landroid/support/a/a/r;->x:Z

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/a/a/r;->y:Z

    :cond_1
    return-void
.end method

.method a(IILandroid/view/MotionEvent;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/a/a/r;->u()V

    iget-object v4, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    invoke-direct {p0}, Landroid/support/a/a/r;->z()V

    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v3, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v4, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v2, p1, v3, v4}, Landroid/support/a/a/r$i;->a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v2

    sub-int v3, p1, v2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v4, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/a/a/r$i;->b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    sub-int v1, p2, v0

    :cond_1
    invoke-static {}, Landroid/support/v4/c/a;->a()V

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v4}, Landroid/support/a/a/b;->b()I

    move-result v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    iget-object v4, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v4, v5}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/a/a/r;->a(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v8, v4, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    if-eqz v8, :cond_3

    iget-object v4, v4, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v7, v9, :cond_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/support/a/a/r;->A()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/a/a/r;->a(Z)V

    :cond_6
    move v4, v1

    move v1, v2

    move v2, v0

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/a/a/r;->invalidate()V

    :cond_7
    iget-object v5, p0, Landroid/support/a/a/r;->aj:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/r;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/support/a/a/r;->R:I

    iget-object v3, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/a/a/r;->R:I

    iget v0, p0, Landroid/support/a/a/r;->S:I

    iget-object v3, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/a/a/r;->S:I

    if-eqz p3, :cond_8

    iget-object v0, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_8
    iget-object v0, p0, Landroid/support/a/a/r;->al:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    iget-object v0, p0, Landroid/support/a/a/r;->al:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/a/a/r;->aj:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    :cond_9
    :goto_2
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0, v1, v2}, Landroid/support/a/a/r;->g(II)V

    :cond_b
    invoke-virtual {p0}, Landroid/support/a/a/r;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/a/a/r;->invalidate()V

    :cond_c
    if-nez v1, :cond_d

    if-eqz v2, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_e
    invoke-static {p0}, Landroid/support/v4/e/w;->a(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_9

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/a/a/r;->a(FFFF)V

    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/support/a/a/r;->h(II)V

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method

.method a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/support/v4/e/a/a;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    iget v1, p0, Landroid/support/a/a/r;->B:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/a/a/r;->B:I

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->x:Z

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a/r;->y:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v0

    iget-object v3, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v3}, Landroid/support/a/a/r$i;->d()Z

    move-result v3

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/a/a/r;->U:I

    if-ge v4, v5, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/a/a/r;->U:I

    if-ge v4, v5, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    :cond_6
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/support/a/a/r;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    move v0, v2

    :goto_1
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4, v0}, Landroid/support/a/a/r;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/a/a/r;->V:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/a/a/r;->V:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/support/a/a/r;->V:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/a/a/r;->V:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Landroid/support/a/a/r;->aa:Landroid/support/a/a/r$v;

    invoke-virtual {v3, v0, v1}, Landroid/support/a/a/r$v;->a(II)V

    move v1, v2

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/a/a/r;->v()V

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method c(II)V
    .locals 2

    if-gez p1, :cond_4

    invoke-virtual {p0}, Landroid/support/a/a/r;->d()V

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->a(I)Z

    :cond_0
    :goto_0
    if-gez p2, :cond_5

    invoke-virtual {p0}, Landroid/support/a/a/r;->f()V

    iget-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->a(I)Z

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/e/w;->d(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->e()V

    iget-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a;->a(I)Z

    goto :goto_0

    :cond_5
    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/support/a/a/r;->g()V

    iget-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/a;->a(I)Z

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/a/a/r$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    check-cast p1, Landroid/support/a/a/r$j;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->d(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->f(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->e(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->c(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->g(Landroid/support/a/a/r$t;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$i;->h(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->c(I)V

    iget-object v0, p0, Landroid/support/a/a/r;->ab:Landroid/support/a/a/r$m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->ab:Landroid/support/a/a/r$m;

    invoke-virtual {v0, p0, p1}, Landroid/support/a/a/r$m;->a(Landroid/support/a/a/r;I)V

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$m;

    invoke-virtual {v0, p0, p1}, Landroid/support/a/a/r$m;->a(Landroid/support/a/a/r;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method d(II)V
    .locals 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v6

    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_0
    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_4

    iget-object v7, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v7, v4}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v8, v7, Landroid/support/a/a/r$w;->b:I

    if-lt v8, v3, :cond_0

    iget v8, v7, Landroid/support/a/a/r$w;->b:I

    if-le v8, v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, p1

    move v3, p2

    goto :goto_0

    :cond_2
    iget v8, v7, Landroid/support/a/a/r$w;->b:I

    if-ne v8, p1, :cond_3

    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/a/a/r$w;->a(IZ)V

    :goto_3
    iget-object v7, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v7, v1}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0, v5}, Landroid/support/a/a/r$w;->a(IZ)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r$o;->a(II)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/e/r;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/r;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/e/r;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/e/r;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$g;

    iget-object v5, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/a/a/r$g;->b(Landroid/graphics/Canvas;Landroid/support/a/a/r;Landroid/support/a/a/r$t;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_3
    iget-object v3, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {v3}, Landroid/support/v4/f/a;->a()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v3, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v3, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {v3, p1}, Landroid/support/v4/f/a;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v3, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v3}, Landroid/support/v4/f/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v5

    iget-boolean v3, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v3

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {v3, p1}, Landroid/support/v4/f/a;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v3, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v3}, Landroid/support/v4/f/a;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    iget-object v4, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {v4, p1}, Landroid/support/v4/f/a;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v1}, Landroid/support/a/a/r$e;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_8
    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/e/w;->d(Landroid/view/View;)V

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v3, v1

    goto/16 :goto_4

    :cond_a
    move v3, v1

    goto/16 :goto_5

    :cond_b
    move v3, v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/support/a/a/r;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0
.end method

.method e(II)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v3, v0}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/a/a/r$w;->b:I

    if-lt v4, p1, :cond_0

    invoke-virtual {v3, p2, v1}, Landroid/support/a/a/r$w;->a(IZ)V

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r$o;->b(II)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-boolean v1, v0, Landroid/support/a/a/r$j;->c:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/r$g;

    iget-object v6, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/a/a/r$g;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/a/a/r;Landroid/support/a/a/r$t;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    iput-boolean v4, v0, Landroid/support/a/a/r$j;->c:Z

    move-object v0, v2

    goto :goto_0
.end method

.method f()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0
.end method

.method public f(II)V
    .locals 0

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r$i;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/a/a/r;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/a/a/r;->z:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/a/a/r$i;->a(Landroid/view/View;ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/a/a/r;->a(Z)V

    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method g()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/a/a/r;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/a;->a(II)V

    goto :goto_0
.end method

.method g(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/a/a/r;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/r;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/a/a/r;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r;->f(II)V

    iget-object v0, p0, Landroid/support/a/a/r;->ab:Landroid/support/a/a/r$m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->ab:Landroid/support/a/a/r$m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/a/a/r$m;->a(Landroid/support/a/a/r;II)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->ac:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/a/a/r$m;->a(Landroid/support/a/a/r;II)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->a()Landroid/support/a/a/r$j;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/a/a/r$i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/a/a/r$j;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$i;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/a/a/r$j;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/a/a/r$a;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->p()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ag:Landroid/support/a/a/r$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->ag:Landroid/support/a/a/r$d;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a/r$d;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/a/a/y;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->af:Landroid/support/a/a/y;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/a/a/r$e;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/a/a/r$i;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->V:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->U:I

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/a/a/r$n;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->f()Landroid/support/a/a/r$n;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->M:I

    return v0
.end method

.method h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/r;->L:Landroid/support/v4/f/a;

    iput-object v0, p0, Landroid/support/a/a/r;->J:Landroid/support/v4/f/a;

    iput-object v0, p0, Landroid/support/a/a/r;->K:Landroid/support/v4/f/a;

    iput-object v0, p0, Landroid/support/a/a/r;->I:Landroid/support/v4/f/a;

    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0}, Landroid/support/v4/e/r;->b()Z

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->E:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->E:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->u:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0}, Landroid/support/v4/e/r;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Landroid/support/a/a/r;->H:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 14

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_2

    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    invoke-direct {p0}, Landroid/support/a/a/r;->z()V

    invoke-direct {p0}, Landroid/support/a/a/r;->F()V

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/a/a/r;->g:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v4/d/a;

    invoke-direct {v0}, Landroid/support/v4/d/a;-><init>()V

    :goto_1
    iput-object v0, v1, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    iput-boolean v7, p0, Landroid/support/a/a/r;->g:Z

    iput-boolean v7, p0, Landroid/support/a/a/r;->f:Z

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v1}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;Z)Z

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1}, Landroid/support/a/a/r$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/a/a/r$t;->e:I

    iget-object v0, p0, Landroid/support/a/a/r;->ah:[I

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->a([I)V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->clear()V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->clear()V

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v10

    move v8, v7

    :goto_2
    if-ge v8, v10, :cond_6

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v8}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    iget-object v5, v1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v11, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/a/a/r$h;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/r$h;-><init>(Landroid/support/a/a/r$w;IIII)V

    invoke-virtual {v11, v1, v0}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/a/a/r;->m()V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v1

    move v0, v7

    :goto_4
    if-ge v0, v1, :cond_8

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->o()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->q()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v2}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$w;)J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v3, v3, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v3, v3, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->c(Landroid/support/a/a/r$t;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v1, v7}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v2, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v1, v2, v3}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)V

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v1, v0}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    new-instance v3, Landroid/support/v4/d/a;

    invoke-direct {v3}, Landroid/support/v4/d/a;-><init>()V

    move v1, v7

    :goto_5
    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    move v2, v7

    :goto_7
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_23

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/d/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    if-ne v0, v4, :cond_b

    move v0, v9

    :goto_8
    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v5, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Landroid/support/a/a/r;->n()V

    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->c()V

    move-object v8, v3

    :goto_9
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1}, Landroid/support/a/a/r$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/a/a/r$t;->e:I

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v7}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;I)I

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v7}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;Z)Z

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1, v2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v7}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;Z)Z

    iput-object v6, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_f

    move v0, v9

    :goto_a
    invoke-static {v1, v0}, Landroid/support/a/a/r$t;->c(Landroid/support/a/a/r$t;Z)Z

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/support/v4/d/a;

    invoke-direct {v0}, Landroid/support/v4/d/a;-><init>()V

    move-object v10, v0

    :goto_b
    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v12

    move v11, v7

    :goto_c
    if-ge v11, v12, :cond_13

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v11}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_d
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_c

    :cond_d
    invoke-virtual {p0}, Landroid/support/a/a/r;->n()V

    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->e()V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v1

    move v0, v7

    :goto_e
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->o()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->q()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0, v2}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$w;)J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v3, v3, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v3, v3, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/d/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    move v0, v7

    goto/16 :goto_a

    :cond_10
    move-object v10, v6

    goto :goto_b

    :cond_11
    iget-object v5, v1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$w;)J

    move-result-wide v2

    if-eqz v10, :cond_12

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0, v1}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_12
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v13, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/a/a/r$h;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/r$h;-><init>(Landroid/support/a/a/r$w;IIII)V

    invoke-virtual {v13, v1, v0}, Landroid/support/v4/d/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_13
    invoke-direct {p0, v8}, Landroid/support/a/a/r;->a(Landroid/support/v4/d/a;)V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_15

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/d/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/d/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$h;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/d/a;->d(I)Ljava/lang/Object;

    iget-object v2, v0, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    iget-object v2, v2, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v3, v0, Landroid/support/a/a/r$h;->a:Landroid/support/a/a/r$w;

    invoke-virtual {v2, v3}, Landroid/support/a/a/r$o;->d(Landroid/support/a/a/r$w;)V

    invoke-direct {p0, v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$h;)V

    :cond_14
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    :cond_15
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->size()I

    move-result v0

    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_10
    if-ltz v3, :cond_19

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0, v3}, Landroid/support/v4/d/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, v1, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v1, v3}, Landroid/support/v4/d/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/r$h;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v2}, Landroid/support/v4/d/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/d/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v2, v2, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v2, v3}, Landroid/support/v4/d/a;->d(I)Ljava/lang/Object;

    if-eqz v8, :cond_18

    iget-object v2, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/support/v4/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :goto_11
    iget v4, v1, Landroid/support/a/a/r$h;->b:I

    iget v1, v1, Landroid/support/a/a/r$h;->c:I

    invoke-direct {p0, v0, v2, v4, v1}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$w;Landroid/graphics/Rect;II)V

    :cond_17
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_10

    :cond_18
    move-object v2, v6

    goto :goto_11

    :cond_19
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->size()I

    move-result v11

    move v8, v7

    :goto_12
    if-ge v8, v11, :cond_1c

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0, v8}, Landroid/support/v4/d/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/r$w;

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->b:Landroid/support/v4/d/a;

    invoke-virtual {v0, v8}, Landroid/support/v4/d/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/a/a/r$h;

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->a:Landroid/support/v4/d/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/a/a/r$h;

    if-eqz v3, :cond_1b

    if-eqz v5, :cond_1b

    iget v0, v3, Landroid/support/a/a/r$h;->b:I

    iget v2, v5, Landroid/support/a/a/r$h;->b:I

    if-ne v0, v2, :cond_1a

    iget v0, v3, Landroid/support/a/a/r$h;->c:I

    iget v2, v5, Landroid/support/a/a/r$h;->c:I

    if-eq v0, v2, :cond_1b

    :cond_1a
    invoke-virtual {v1, v7}, Landroid/support/a/a/r$w;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget v2, v3, Landroid/support/a/a/r$h;->b:I

    iget v3, v3, Landroid/support/a/a/r$h;->c:I

    iget v4, v5, Landroid/support/a/a/r$h;->b:I

    iget v5, v5, Landroid/support/a/a/r$h;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$w;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Landroid/support/a/a/r;->D()V

    :cond_1b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_12

    :cond_1c
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->size()I

    move-result v0

    :goto_13
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14
    if-ltz v2, :cond_20

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/d/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v0, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$w;

    iget-object v1, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    :goto_15
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_1e
    move v0, v7

    goto :goto_13

    :cond_1f
    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-static {v1}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$o;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-static {v1}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v4/d/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/r$w;

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$w;Landroid/support/a/a/r$w;)V

    goto :goto_15

    :cond_20
    invoke-virtual {p0, v7}, Landroid/support/a/a/r;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r$o;)V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget v1, v1, Landroid/support/a/a/r$t;->e:I

    invoke-static {v0, v1}, Landroid/support/a/a/r$t;->c(Landroid/support/a/a/r$t;I)I

    iput-boolean v7, p0, Landroid/support/a/a/r;->G:Z

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v7}, Landroid/support/a/a/r$t;->c(Landroid/support/a/a/r$t;Z)Z

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v7}, Landroid/support/a/a/r$t;->d(Landroid/support/a/a/r$t;Z)Z

    invoke-direct {p0}, Landroid/support/a/a/r;->A()V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-static {v0, v7}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$i;Z)Z

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-static {v0}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$o;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-static {v0}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_21
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iput-object v6, v0, Landroid/support/a/a/r$t;->c:Landroid/support/v4/d/a;

    iget-object v0, p0, Landroid/support/a/a/r;->ah:[I

    aget v0, v0, v7

    iget-object v1, p0, Landroid/support/a/a/r;->ah:[I

    aget v1, v1, v9

    invoke-direct {p0, v0, v1}, Landroid/support/a/a/r;->j(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v7, v7}, Landroid/support/a/a/r;->g(II)V

    goto/16 :goto_0

    :cond_22
    move-object v8, v6

    goto/16 :goto_9

    :cond_23
    move v0, v7

    goto/16 :goto_8
.end method

.method l()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/a/a/r$j;->c:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->i()V

    return-void
.end method

.method m()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method n()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->h()V

    return-void
.end method

.method o()V
    .locals 5

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_7

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/support/a/a/r$w;->q()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/support/a/a/r$w;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    iget v4, v2, Landroid/support/a/a/r$w;->b:I

    invoke-virtual {v3, v4}, Landroid/support/a/a/r$a;->a(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->g()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/support/a/a/r;->C()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    iget v4, v2, Landroid/support/a/a/r$w;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/a/a/r$a;->b(Landroid/support/a/a/r$w;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    :cond_7
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput v1, p0, Landroid/support/a/a/r;->H:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->u:Z

    iput-boolean v1, p0, Landroid/support/a/a/r;->w:Z

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r;)V

    :cond_0
    iput-boolean v1, p0, Landroid/support/a/a/r;->ae:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0}, Landroid/support/a/a/r$e;->c()V

    :cond_0
    iput-boolean v1, p0, Landroid/support/a/a/r;->w:Z

    invoke-virtual {p0}, Landroid/support/a/a/r;->c()V

    iput-boolean v1, p0, Landroid/support/a/a/r;->u:Z

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p0, v1}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->am:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$g;

    iget-object v3, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/a/a/r$g;->a(Landroid/graphics/Canvas;Landroid/support/a/a/r;Landroid/support/a/a/r$t;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    :goto_1
    iget-object v2, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v2}, Landroid/support/a/a/r$i;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/support/v4/e/m;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/support/a/a/r;->getScrollFactor()F

    move-result v1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/a/a/r;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v1, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/a/a/r;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/a/a/r;->y()V

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v0

    iget-object v4, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v4}, Landroid/support/a/a/r$i;->d()Z

    move-result v4

    iget-object v5, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v5, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {p1}, Landroid/support/v4/e/m;->a(Landroid/view/MotionEvent;)I

    move-result v5

    invoke-static {p1}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;)I

    move-result v6

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/a/a/r;->M:I

    if-ne v0, v2, :cond_d

    :goto_2
    move v3, v2

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Landroid/support/a/a/r;->A:Z

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Landroid/support/a/a/r;->A:Z

    :cond_5
    invoke-static {p1, v3}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/a/a/r;->N:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/a/a/r;->R:I

    iput v1, p0, Landroid/support/a/a/r;->P:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/a/a/r;->S:I

    iput v1, p0, Landroid/support/a/a/r;->Q:I

    iget v1, p0, Landroid/support/a/a/r;->M:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Landroid/support/a/a/r;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, v2}, Landroid/support/a/a/r;->setScrollState(I)V

    :cond_6
    if-eqz v0, :cond_f

    move v0, v2

    :goto_3
    if-eqz v4, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->startNestedScroll(I)Z

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->N:I

    invoke-static {p1, v6}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->R:I

    iput v0, p0, Landroid/support/a/a/r;->P:I

    invoke-static {p1, v6}, Landroid/support/v4/e/m;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->S:I

    iput v0, p0, Landroid/support/a/a/r;->Q:I

    goto :goto_1

    :pswitch_3
    iget v5, p0, Landroid/support/a/a/r;->N:I

    invoke-static {p1, v5}, Landroid/support/v4/e/m;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    if-gez v5, :cond_8

    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/a/a/r;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, v5}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {p1, v5}, Landroid/support/v4/e/m;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget v7, p0, Landroid/support/a/a/r;->M:I

    if-eq v7, v2, :cond_4

    iget v7, p0, Landroid/support/a/a/r;->P:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/a/a/r;->Q:I

    sub-int/2addr v5, v7

    if-eqz v0, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/a/a/r;->T:I

    if-le v0, v7, :cond_e

    iget v7, p0, Landroid/support/a/a/r;->P:I

    iget v8, p0, Landroid/support/a/a/r;->T:I

    if-gez v6, :cond_b

    move v0, v1

    :goto_4
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/a/a/r;->R:I

    move v0, v2

    :goto_5
    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/a/a/r;->T:I

    if-le v4, v6, :cond_9

    iget v0, p0, Landroid/support/a/a/r;->Q:I

    iget v4, p0, Landroid/support/a/a/r;->T:I

    if-gez v5, :cond_c

    :goto_6
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/a/a/r;->S:I

    move v0, v2

    :cond_9
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    invoke-direct {p0, v2}, Landroid/support/a/a/r;->setScrollState(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_6

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/a/a/r;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Landroid/support/a/a/r;->stopNestedScroll()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0}, Landroid/support/a/a/r;->y()V

    goto/16 :goto_1

    :cond_d
    move v2, v3

    goto/16 :goto_2

    :cond_e
    move v0, v3

    goto :goto_5

    :cond_f
    move v0, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->k()V

    invoke-static {}, Landroid/support/v4/c/a;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->w:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/a/a/r;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->b()V

    invoke-direct {p0}, Landroid/support/a/a/r;->F()V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;Z)Z

    :goto_0
    iput-boolean v3, p0, Landroid/support/a/a/r;->C:Z

    invoke-virtual {p0, v3}, Landroid/support/a/a/r;->a(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iget-object v1, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    invoke-virtual {v1}, Landroid/support/a/a/r$a;->a()I

    move-result v1

    iput v1, v0, Landroid/support/a/a/r$t;->e:I

    :goto_1
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/a/a/r;->i(II)V

    :goto_2
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v3}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->e()V

    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, v3}, Landroid/support/a/a/r$t;->b(Landroid/support/a/a/r$t;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    iput v3, v0, Landroid/support/a/a/r$t;->e:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/support/a/a/r$r;

    iput-object p1, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    iget-object v0, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    invoke-virtual {v0}, Landroid/support/a/a/r$r;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    iget-object v0, v0, Landroid/support/a/a/r$r;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    iget-object v1, v1, Landroid/support/a/a/r$r;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->a(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/a/a/r$r;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/a/a/r$r;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->k:Landroid/support/a/a/r$r;

    invoke-static {v0, v1}, Landroid/support/a/a/r$r;->a(Landroid/support/a/a/r$r;Landroid/support/a/a/r$r;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->b()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/a/a/r$r;->a:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/a/a/r$r;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/r;->h()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->A:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/a/a/r;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/a/a/r;->y()V

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->c()Z

    move-result v5

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0}, Landroid/support/a/a/r$i;->d()Z

    move-result v6

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {p1}, Landroid/support/v4/e/m;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v0, :cond_4

    iget-object v8, p0, Landroid/support/a/a/r;->al:[I

    iget-object v9, p0, Landroid/support/a/a/r;->al:[I

    aput v2, v9, v3

    aput v2, v8, v2

    :cond_4
    iget-object v8, p0, Landroid/support/a/a/r;->al:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/a/a/r;->al:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-nez v2, :cond_6

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->N:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->R:I

    iput v0, p0, Landroid/support/a/a/r;->P:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->S:I

    iput v0, p0, Landroid/support/a/a/r;->Q:I

    if-eqz v5, :cond_17

    move v0, v3

    :goto_2
    if-eqz v6, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->startNestedScroll(I)Z

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4}, Landroid/support/v4/e/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->N:I

    invoke-static {p1, v4}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->R:I

    iput v0, p0, Landroid/support/a/a/r;->P:I

    invoke-static {p1, v4}, Landroid/support/v4/e/m;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/a/a/r;->S:I

    iput v0, p0, Landroid/support/a/a/r;->Q:I

    goto :goto_1

    :pswitch_3
    iget v0, p0, Landroid/support/a/a/r;->N:I

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_8

    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/support/a/a/r;->N:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/e/m;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    invoke-static {p1, v0}, Landroid/support/v4/e/m;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    iget v0, p0, Landroid/support/a/a/r;->R:I

    sub-int v1, v0, v8

    iget v0, p0, Landroid/support/a/a/r;->S:I

    sub-int/2addr v0, v9

    iget-object v4, p0, Landroid/support/a/a/r;->ak:[I

    iget-object v10, p0, Landroid/support/a/a/r;->aj:[I

    invoke-virtual {p0, v1, v0, v4, v10}, Landroid/support/a/a/r;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/a/a/r;->ak:[I

    aget v4, v4, v2

    sub-int/2addr v1, v4

    iget-object v4, p0, Landroid/support/a/a/r;->ak:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroid/support/a/a/r;->aj:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v10, p0, Landroid/support/a/a/r;->aj:[I

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v4, p0, Landroid/support/a/a/r;->al:[I

    aget v10, v4, v2

    iget-object v11, p0, Landroid/support/a/a/r;->aj:[I

    aget v11, v11, v2

    add-int/2addr v10, v11

    aput v10, v4, v2

    iget-object v4, p0, Landroid/support/a/a/r;->al:[I

    aget v10, v4, v3

    iget-object v11, p0, Landroid/support/a/a/r;->aj:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v4, v3

    :cond_9
    iget v4, p0, Landroid/support/a/a/r;->M:I

    if-eq v4, v3, :cond_c

    if-eqz v5, :cond_16

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v10, p0, Landroid/support/a/a/r;->T:I

    if-le v4, v10, :cond_16

    if-lez v1, :cond_d

    iget v4, p0, Landroid/support/a/a/r;->T:I

    sub-int/2addr v1, v4

    :goto_3
    move v4, v3

    :goto_4
    if-eqz v6, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/a/a/r;->T:I

    if-le v10, v11, :cond_a

    if-lez v0, :cond_e

    iget v4, p0, Landroid/support/a/a/r;->T:I

    sub-int/2addr v0, v4

    :goto_5
    move v4, v3

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {p0}, Landroid/support/a/a/r;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    invoke-direct {p0, v3}, Landroid/support/a/a/r;->setScrollState(I)V

    :cond_c
    iget v4, p0, Landroid/support/a/a/r;->M:I

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/a/a/r;->aj:[I

    aget v4, v4, v2

    sub-int v4, v8, v4

    iput v4, p0, Landroid/support/a/a/r;->R:I

    iget-object v4, p0, Landroid/support/a/a/r;->aj:[I

    aget v4, v4, v3

    sub-int v4, v9, v4

    iput v4, p0, Landroid/support/a/a/r;->S:I

    if-eqz v5, :cond_f

    :goto_6
    if-eqz v6, :cond_10

    :goto_7
    invoke-virtual {p0, v1, v0, v7}, Landroid/support/a/a/r;->a(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/a/a/r;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Landroid/support/a/a/r;->T:I

    add-int/2addr v1, v4

    goto :goto_3

    :cond_e
    iget v4, p0, Landroid/support/a/a/r;->T:I

    add-int/2addr v0, v4

    goto :goto_5

    :cond_f
    move v1, v2

    goto :goto_6

    :cond_10
    move v0, v2

    goto :goto_7

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/a/a/r;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v8, p0, Landroid/support/a/a/r;->V:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v5, :cond_14

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/a/a/r;->N:I

    invoke-static {v0, v4}, Landroid/support/v4/e/u;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    :goto_8
    if-eqz v6, :cond_15

    iget-object v0, p0, Landroid/support/a/a/r;->O:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/a/a/r;->N:I

    invoke-static {v0, v5}, Landroid/support/v4/e/u;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    :goto_9
    cmpl-float v5, v4, v1

    if-nez v5, :cond_11

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12

    :cond_11
    float-to-int v1, v4

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/a/a/r;->b(II)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    invoke-direct {p0, v2}, Landroid/support/a/a/r;->setScrollState(I)V

    :cond_13
    invoke-direct {p0}, Landroid/support/a/a/r;->x()V

    move v2, v3

    goto/16 :goto_1

    :cond_14
    move v4, v1

    goto :goto_8

    :cond_15
    move v0, v1

    goto :goto_9

    :pswitch_6
    invoke-direct {p0}, Landroid/support/a/a/r;->y()V

    goto/16 :goto_1

    :cond_16
    move v4, v2

    goto/16 :goto_4

    :cond_17
    move v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method p()V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v2, v0}, Landroid/support/a/a/b;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/a/a/r$w;->c()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/a/a/r$w;->b(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/r;->l()V

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->g()V

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->b:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->l()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/a/a/r;->h(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/a/a/r$w;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v2, p0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Landroid/support/a/a/r$t;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/support/a/a/r$j;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-boolean v2, v0, Landroid/support/a/a/r$j;->c:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/a/a/r;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/a/a/r;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/a/a/r;->n:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/a/a/r;->w:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/a/a/r;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$l;

    invoke-interface {v0, p1}, Landroid/support/a/a/r$l;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->y:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-nez v1, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/a/a/r;->z:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v1}, Landroid/support/a/a/r$i;->c()Z

    move-result v1

    iget-object v2, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v2}, Landroid/support/a/a/r$i;->d()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/a/a/r;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/a/a/y;)V
    .locals 1

    iput-object p1, p0, Landroid/support/a/a/r;->af:Landroid/support/a/a/y;

    iget-object v0, p0, Landroid/support/a/a/r;->af:Landroid/support/a/a/y;

    invoke-static {p0, v0}, Landroid/support/v4/e/w;->a(Landroid/view/View;Landroid/support/v4/e/a;)V

    return-void
.end method

.method public setAdapter(Landroid/support/a/a/r$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/a/a/r;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r$a;ZZ)V

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/a/a/r$d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ag:Landroid/support/a/a/r$d;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/a/a/r;->ag:Landroid/support/a/a/r$d;

    iget-object v0, p0, Landroid/support/a/a/r;->ag:Landroid/support/a/a/r$d;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r;->l:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->h()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/a/a/r;->l:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, Landroid/support/a/a/r;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r;->v:Z

    return-void
.end method

.method public setItemAnimator(Landroid/support/a/a/r$e;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v0}, Landroid/support/a/a/r$e;->c()V

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$e$b;)V

    :cond_0
    iput-object p1, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    iget-object v1, p0, Landroid/support/a/a/r;->ad:Landroid/support/a/a/r$e$b;

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$e;->a(Landroid/support/a/a/r$e$b;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$o;->a(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/support/a/a/r;->z:Z

    if-eq p1, v0, :cond_1

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->a(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iput-boolean p1, p0, Landroid/support/a/a/r;->z:Z

    iget-boolean v0, p0, Landroid/support/a/a/r;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r;->o:Landroid/support/a/a/r$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    :cond_0
    iput-boolean v7, p0, Landroid/support/a/a/r;->y:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/a/a/r;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean p1, p0, Landroid/support/a/a/r;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r;->A:Z

    invoke-virtual {p0}, Landroid/support/a/a/r;->c()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/a/a/r$i;)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/a/a/r;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    iget-object v1, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p0, v1}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;)V

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0}, Landroid/support/a/a/r$o;->a()V

    iget-object v0, p0, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->a()V

    iput-object p1, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;)V

    iget-boolean v0, p0, Landroid/support/a/a/r;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/a/a/r;->p:Landroid/support/a/a/r$i;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r;)V

    :cond_4
    invoke-virtual {p0}, Landroid/support/a/a/r;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/r;->a(Z)V

    return-void
.end method

.method public setOnScrollListener(Landroid/support/a/a/r$m;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/a/a/r;->ab:Landroid/support/a/a/r$m;

    return-void
.end method

.method public setRecycledViewPool(Landroid/support/a/a/r$n;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$n;)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/a/a/r$p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/r;->q:Landroid/support/a/a/r$p;

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->T:I

    :goto_0
    return-void

    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/e/ae;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/a/a/r;->T:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/a/a/r$u;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$o;->a(Landroid/support/a/a/r$u;)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/r;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r;->ai:Landroid/support/v4/e/r;

    invoke-virtual {v0}, Landroid/support/v4/e/r;->c()V

    return-void
.end method
