.class public abstract Landroid/support/a/a/r$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field h:Landroid/support/a/a/b;

.field i:Landroid/support/a/a/r;

.field j:Landroid/support/a/a/r$s;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/support/a/a/r$i;->a:Z

    iput-boolean v0, p0, Landroid/support/a/a/r$i;->b:Z

    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p3, :cond_2

    if-ltz p2, :cond_1

    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    goto :goto_0

    :cond_2
    if-gez p2, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/b;->d(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/a/a/r$i;Landroid/support/a/a/r$s;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$s;)V

    return-void
.end method

.method private a(Landroid/support/a/a/r$o;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/a/a/r$w;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v1}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Landroid/support/a/a/r$i;->c(I)V

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$o;->b(Landroid/support/a/a/r$w;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/a/a/r$i;->d(I)V

    invoke-virtual {p1, p3}, Landroid/support/a/a/r$o;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/support/a/a/r$s;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$t;->b(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->j()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-virtual {v1}, Landroid/support/a/a/r$w;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->i()V

    :goto_1
    iget-object v2, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/a/a/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/a/a/r$j;->d:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, v0, Landroid/support/a/a/r$j;->d:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r$t;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/support/a/a/r$w;->k()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v2, p1}, Landroid/support/a/a/b;->b(Landroid/view/View;)I

    move-result v2

    if-ne p2, v5, :cond_7

    iget-object v3, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v3}, Landroid/support/a/a/b;->b()I

    move-result p2

    :cond_7
    if-ne v2, v5, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v2, p1}, Landroid/support/a/a/r;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eq v2, p2, :cond_2

    iget-object v3, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v3}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/support/a/a/r$i;->a(II)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/a/a/b;->a(Landroid/view/View;IZ)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/a/a/r$j;->c:Z

    iget-object v2, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    invoke-virtual {v2}, Landroid/support/a/a/r$s;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    invoke-virtual {v2, p1}, Landroid/support/a/a/r$s;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/a/a/r$i;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$i;->a:Z

    return v0
.end method

.method static synthetic a(Landroid/support/a/a/r$i;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/r$i;->a:Z

    return p1
.end method


# virtual methods
.method public a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Landroid/support/a/a/r$j;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/a/a/r$j;
    .locals 1

    new-instance v0, Landroid/support/a/a/r$j;

    invoke-direct {v0, p1, p2}, Landroid/support/a/a/r$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/a/a/r$j;
    .locals 1

    instance-of v0, p1, Landroid/support/a/a/r$j;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/a/a/r$j;

    check-cast p1, Landroid/support/a/a/r$j;

    invoke-direct {v0, p1}, Landroid/support/a/a/r$j;-><init>(Landroid/support/a/a/r$j;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/a/a/r$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/a/a/r$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/a/a/r$j;

    invoke-direct {v0, p1}, Landroid/support/a/a/r$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->q()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/support/a/a/r$w;->d()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v4, v4, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v4}, Landroid/support/a/a/r$t;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->q()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->d(I)V

    invoke-virtual {p0, v0, p2}, Landroid/support/a/a/r$i;->c(Landroid/view/View;I)V

    return-void
.end method

.method public a(ILandroid/support/a/a/r$o;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->c(I)V

    invoke-virtual {p2, v0}, Landroid/support/a/a/r$o;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/a/a/r$a;Landroid/support/a/a/r$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/a/a/r$o;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, p3, p4}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r;II)V

    return-void
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/v4/e/a/c;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v2}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v2}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/e/a/c;->a(I)V

    invoke-virtual {p3, v1}, Landroid/support/v4/e/a/c;->a(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v1}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v1}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/e/a/c;->a(I)V

    invoke-virtual {p3, v1}, Landroid/support/v4/e/a/c;->a(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$i;->c(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$i;->d(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$i;->e(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/e/a/c$j;->a(IIZI)Landroid/support/v4/e/a/c$j;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/e/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/View;Landroid/support/v4/e/a/c;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/a/a/r$i;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/a/a/r$i;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/a/a/r$i;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/e/a/c$k;->a(IIIIZZ)Landroid/support/v4/e/a/c$k;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/e/a/c;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-static {p3}, Landroid/support/v4/e/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/e/a/o;

    move-result-object v1

    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v2, v0}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v2, v3}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v2, v3}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v2, v0}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/e/a/o;->a(Z)V

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/e/a/o;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/a/a/r;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iput-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, p1, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    iput-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    goto :goto_0
.end method

.method public a(Landroid/support/a/a/r;II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/a/a/r;III)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/a/a/r;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/a/a/r$i;->c(Landroid/support/a/a/r;II)V

    return-void
.end method

.method public a(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->d(Landroid/support/a/a/r;)V

    return-void
.end method

.method a(Landroid/support/v4/e/a/c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/support/v4/e/a/c;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/a/a/r$i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/a/a/r$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->r()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->t()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->v()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/a/a/r$j;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/a/a/r$j;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Landroid/support/a/a/r$j;->width:I

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->c()Z

    move-result v5

    invoke-static {v3, v2, v4, v5}, Landroid/support/a/a/r$i;->a(IIIZ)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->s()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->u()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->w()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/a/a/r$j;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/a/a/r$j;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v0, v0, Landroid/support/a/a/r$j;->height:I

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->d()Z

    move-result v4

    invoke-static {v3, v1, v0, v4}, Landroid/support/a/a/r$i;->a(IIIZ)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/a/a/r$j;)V
    .locals 2

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$t;->b(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/a/a/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v1, p1}, Landroid/support/a/a/r$t;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/support/a/a/r$o;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->c(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/support/a/a/r$o;->a(Landroid/view/View;)V

    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v4/e/a/c;)V
    .locals 2

    invoke-static {p1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/a/a/r$w;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/a/a/b;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/View;Landroid/support/v4/e/a/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v1, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/a/a/r$j;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v1, v0, v3}, Landroid/support/a/a/r;->scrollBy(II)V

    move v1, v2

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v4}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->u()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->w()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    :goto_2
    iget-object v3, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v3, v4}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->r()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->t()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->v()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0, v2}, Landroid/support/v4/e/w;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->u()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->w()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_3
    iget-object v3, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v3, v2}, Landroid/support/v4/e/w;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->r()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->t()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->v()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/a/a/r;Landroid/support/a/a/r$t;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/a/a/r;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->t()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->u()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->r()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->v()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->s()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->w()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int v7, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->o()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p4, :cond_5

    invoke-virtual {p1, v1, v0}, Landroid/support/a/a/r;->scrollBy(II)V

    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_1
    sub-int v0, v9, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v7, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    :cond_4
    sub-int v0, v8, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/a/a/r;->a(II)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/support/a/a/r;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/a/a/r;->j()Z

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

.method public a(Landroid/support/a/a/r;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/a/a/r;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v1, v0, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v2, v0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method b(Landroid/support/a/a/r$o;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/support/a/a/r$o;->d()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/a/a/r$o;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-virtual {v3}, Landroid/support/a/a/r$w;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v4, v2, v5}, Landroid/support/a/a/r;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v4, v4, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    iget-object v4, v4, Landroid/support/a/a/r;->d:Landroid/support/a/a/r$e;

    invoke-virtual {v4, v3}, Landroid/support/a/a/r$e;->c(Landroid/support/a/a/r$w;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/a/a/r$w;->a(Z)V

    invoke-virtual {p1, v2}, Landroid/support/a/a/r$o;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/support/a/a/r$o;->e()V

    if-lez v1, :cond_4

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->invalidate()V

    :cond_4
    return-void
.end method

.method b(Landroid/support/a/a/r;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r$i;->b:Z

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->c(Landroid/support/a/a/r;)V

    return-void
.end method

.method public b(Landroid/support/a/a/r;II)V
    .locals 0

    return-void
.end method

.method b(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a/r$i;->b:Z

    invoke-virtual {p0, p1, p2}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;Landroid/support/a/a/r$o;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/a/a/r$i;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/a/a/r$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public c(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v1}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/r$i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/b;->a(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/support/a/a/r$o;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/a/a/r$i;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/a/a/r;->b(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/a/a/r$i;->a(ILandroid/support/a/a/r$o;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/support/a/a/r;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/a/a/r;II)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/a/a/r$i;->a(Landroid/view/View;ILandroid/support/a/a/r$j;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v1}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/r$i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    invoke-virtual {v0}, Landroid/support/a/a/r$j;->c()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/a/a/r$i;->a(ILandroid/view/View;)V

    return-void
.end method

.method public d(Landroid/support/a/a/r;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/a/a/r;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/support/a/a/r$o;Landroid/support/a/a/r$t;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r;->b(I)V

    :cond_0
    return-void
.end method

.method public g(Landroid/support/a/a/r$t;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->m(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0, p1}, Landroid/support/a/a/r;->a(I)V

    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->k(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/a/a/r$i;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->requestLayout()V

    :cond_0
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/a/a/r$j;

    iget-object v0, v0, Landroid/support/a/a/r$j;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    invoke-virtual {v0}, Landroid/support/a/a/r$s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/v4/e/w;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v1}, Landroid/support/a/a/r;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/a/a/r$i;->h:Landroid/support/a/a/b;

    invoke-virtual {v2, v1}, Landroid/support/a/a/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->i:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getAdapter()Landroid/support/a/a/r$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/a/a/r$a;->a()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method z()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    invoke-virtual {v0}, Landroid/support/a/a/r$s;->a()V

    :cond_0
    return-void
.end method
